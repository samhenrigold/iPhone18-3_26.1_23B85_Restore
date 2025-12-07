uint64_t sub_268671F4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v9);
  v34[3] = &type metadata for Google_Protobuf_SourceCodeInfo;
  v34[0] = a1;
  v34[1] = a2;
  v34[4] = sub_268617A3C();
  v34[2] = a3;
  v10 = *v4;
  v11 = v4[1];
  v23 = *(v5 + 64);
  sub_2685B1724(v34, &v26);

  sub_2685BA80C(a2, a3);
  v40 = v10;

  v25 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v31, &v35);
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    swift_getDynamicType();
    (*(v37 + 8))(&v26);
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v21 = v27;
    v22 = v26;
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v22 = 0u;
    sub_2685B2E64(&v31, &qword_28028D3C8, &unk_2686902F0);
    v21 = 0u;
  }

  sub_2685B1724(v34, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v13 = *(&v32 + 1);
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    (*(v12 + 16))(&v26, v13, v12);
    v14 = v26;
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    sub_2685B2E64(&v31, &qword_28028D3F8, &unk_268690680);
    v14 = 0;
  }

  v15 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v35 = v40;
  *(&v35 + 1) = v25;
  v36 = v22;
  v37 = v21;
  *&v38 = v15;
  *(&v38 + 1) = v14;
  v39 = v23;
  if (!*(a1 + 16) || (sub_268676250(a1, 1), !v24))
  {
    v16 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v16 != 2 || *(a2 + 16) == *(a2 + 24))
      {
        goto LABEL_19;
      }
    }

    else if (v16)
    {
      if (a2 == a2 >> 32)
      {
LABEL_19:
        v17 = v35;

        *v5 = v17;
        sub_2685B4D0C(*(*(&v17 + 1) + 16) - 1);
        sub_2685B4D0C(*(v5[1] + 16) - 1);

        sub_2685B3560(v18);
        sub_2685B403C("}\n", 2, v19);
        v28 = v37;
        v29 = v38;
        v30 = v39;
        v26 = v35;
        v27 = v36;
        return sub_2685B4DEC(&v26);
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_26863B108(a2, a3, &v35);
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672328(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  sub_2685B301C(a5);
  sub_2686636FC(v13);
  v41[3] = &type metadata for Google_Protobuf_FileOptions;
  v41[4] = sub_2686151BC();
  v14 = swift_allocObject();
  v41[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = *v5;
  v16 = v5[1];
  v31 = *(v8 + 64);
  sub_2685B1724(v41, &v33);
  sub_2685BA80C(a1, a2);
  v32 = a3;

  v47 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v38, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    swift_getDynamicType();
    (*(v44 + 8))(&v33);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v29 = v34;
    v30 = v33;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v30 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3C8, &unk_2686902F0);
    v29 = 0u;
  }

  sub_2685B1724(v41, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v17 = v15;
    v18 = *(&v39 + 1);
    v19 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v20 = *(v19 + 16);
    v21 = v19;
    v15 = v17;
    v7 = v6;
    v20(&v33, v18, v21);
    v22 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3F8, &unk_268690680);
    v22 = 0;
  }

  v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v42 = v15;
  *(&v42 + 1) = v47;
  v43 = v30;
  v44 = v29;
  *&v45 = v23;
  *(&v45 + 1) = v22;
  v46 = v31;
  sub_2686030E8(a4, &v42, a1, a2, v32);
  if (!v7)
  {
    v24 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v24 != 2 || *(a1 + 16) == *(a1 + 24))
      {
        goto LABEL_18;
      }
    }

    else if (v24)
    {
      if (a1 == a1 >> 32)
      {
LABEL_18:
        v25 = v42;

        *v8 = v25;
        sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
        sub_2685B4D0C(*(v8[1] + 16) - 1);

        sub_2685B3560(v26);
        sub_2685B403C("}\n", 2, v27);
        v35 = v44;
        v36 = v45;
        v37 = v46;
        v33 = v42;
        v34 = v43;
        return sub_2685B4DEC(&v33);
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }

    if (v46 == 1)
    {
      sub_26863B108(a1, a2, &v42);
    }

    goto LABEL_18;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v30[3] = &type metadata for Google_Protobuf_FieldOptions;
  v30[4] = sub_268614998();
  v6 = swift_allocObject();
  v30[0] = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 46) = *(a1 + 30);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v30, &v22);
  sub_268601D9C(a1, &v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v27, &v31);
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    swift_getDynamicType();
    (*(v33 + 8))(&v22);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v21 = 0u;
    sub_2685B2E64(&v27, &qword_28028D3C8, &unk_2686902F0);
    v20 = 0u;
  }

  sub_2685B1724(v30, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = *(&v28 + 1);
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (*(v12 + 16))(&v22, v11, v12);
    v13 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_2685B2E64(&v27, &qword_28028D3F8, &unk_268690680);
    v13 = 0;
  }

  v14 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v31 = v8;
  *(&v31 + 1) = v9;
  v32 = v21;
  v33 = v20;
  *&v34 = v14;
  *(&v34 + 1) = v13;
  v35 = v10;
  v15 = v36;
  sub_2686060E0(&v31);
  if (v15)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v16 = v31;

    *v3 = v16;
    sub_2685B4D0C(*(*(&v16 + 1) + 16) - 1);
    sub_2685B4D0C(*(v3[1] + 16) - 1);

    sub_2685B3560(v17);
    sub_2685B403C("}\n", 2, v18);
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v22 = v31;
    v23 = v32;
    return sub_2685B4DEC(&v22);
  }

  return result;
}

uint64_t sub_268672ACC(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v39[3] = &type metadata for Google_Protobuf_ServiceOptions;
  v39[4] = sub_268614B90();
  v6 = swift_allocObject();
  v39[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v39, &v31);
  sub_268682C80(a1, &v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v36, &v40);
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    swift_getDynamicType();
    (*(v42 + 8))(&v31);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v29 = v32;
    v30 = v31;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v30 = 0u;
    sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
    v29 = 0u;
  }

  sub_2685B1724(v39, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v37 + 1);
    v15 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v31, v14, v17);
    v18 = v31;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v40 = v8;
  *(&v40 + 1) = v9;
  v41 = v30;
  v42 = v29;
  *&v43 = v19;
  *(&v43 + 1) = v18;
  v44 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v45;
  }

  else
  {
    v21 = v45;
    sub_2685B33F4(v20 & 1, 33);
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
  {
    sub_2685DBFC4(&v40, 1000, 0x20000000, a1[3]);
    if (!v21)
    {
      v22 = a1[1];
      v23 = a1[2];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2 || *(v22 + 16) == *(v22 + 24))
        {
          goto LABEL_23;
        }
      }

      else if (v24)
      {
        if (v22 == v22 >> 32)
        {
LABEL_23:
          v25 = v40;

          *v3 = v25;
          sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
          sub_2685B4D0C(*(v3[1] + 16) - 1);

          sub_2685B3560(v26);
          sub_2685B403C("}\n", 2, v27);
          v33 = v42;
          v34 = v43;
          v35 = v44;
          v31 = v40;
          v32 = v41;
          return sub_2685B4DEC(&v31);
        }
      }

      else if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      if (v44 == 1)
      {
        sub_26863B108(v22, v23, &v40);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v30[3] = &type metadata for Google_Protobuf_MethodOptions;
  v30[4] = sub_268614BE4();
  v6 = swift_allocObject();
  v30[0] = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v30, &v22);
  sub_268682C24(a1, &v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v27, &v31);
    __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
    swift_getDynamicType();
    (*(v33 + 8))(&v22);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v20 = v23;
    v21 = v22;
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v21 = 0u;
    sub_2685B2E64(&v27, &qword_28028D3C8, &unk_2686902F0);
    v20 = 0u;
  }

  sub_2685B1724(v30, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = *(&v28 + 1);
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (*(v12 + 16))(&v22, v11, v12);
    v13 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_2685B2E64(&v27, &qword_28028D3F8, &unk_268690680);
    v13 = 0;
  }

  v14 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v31 = v8;
  *(&v31 + 1) = v9;
  v32 = v21;
  v33 = v20;
  *&v34 = v14;
  *(&v34 + 1) = v13;
  v35 = v10;
  v15 = v36;
  sub_268608B7C(&v31);
  if (v15)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v16 = v31;

    *v3 = v16;
    sub_2685B4D0C(*(*(&v16 + 1) + 16) - 1);
    sub_2685B4D0C(*(v3[1] + 16) - 1);

    sub_2685B3560(v17);
    sub_2685B403C("}\n", 2, v18);
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v22 = v31;
    v23 = v32;
    return sub_2685B4DEC(&v22);
  }

  return result;
}

uint64_t sub_26867326C(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v40[3] = &type metadata for Google_Protobuf_EnumOptions;
  v40[4] = sub_268614AE8();
  v6 = swift_allocObject();
  v40[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 16);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v40, &v32);
  sub_268682D38(a1, &v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v37, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    swift_getDynamicType();
    (*(v43 + 8))(&v32);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v30 = v33;
    v31 = v32;
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v31 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
    v30 = 0u;
  }

  sub_2685B1724(v40, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v38 + 1);
    v15 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v32, v14, v17);
    v18 = v32;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v41 = v8;
  *(&v41 + 1) = v9;
  v42 = v31;
  v43 = v30;
  *&v44 = v19;
  *(&v44 + 1) = v18;
  v45 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v46;
  }

  else
  {
    v21 = v46;
    sub_2685B33F4(v20 & 1, 2);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  v22 = *(a1 + 33);
  if (v22 == 2 || (sub_2685B33F4(v22 & 1, 3), !v21))
  {
    if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
    {
      sub_2685DBFC4(&v41, 1000, 0x20000000, a1[3]);
      if (!v21)
      {
        v23 = a1[1];
        v24 = a1[2];
        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2 || *(v23 + 16) == *(v23 + 24))
          {
            goto LABEL_25;
          }
        }

        else if (v25)
        {
          if (v23 == v23 >> 32)
          {
LABEL_25:
            v26 = v41;

            *v3 = v26;
            sub_2685B4D0C(*(*(&v26 + 1) + 16) - 1);
            sub_2685B4D0C(*(v3[1] + 16) - 1);

            sub_2685B3560(v27);
            sub_2685B403C("}\n", 2, v28);
            v34 = v43;
            v35 = v44;
            v36 = v45;
            v32 = v41;
            v33 = v42;
            return sub_2685B4DEC(&v32);
          }
        }

        else if ((v24 & 0xFF000000000000) == 0)
        {
          goto LABEL_25;
        }

        if (v45 == 1)
        {
          sub_26863B108(v23, v24, &v41);
        }

        goto LABEL_25;
      }
    }
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2686736C0(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v39[3] = &type metadata for Google_Protobuf_EnumValueOptions;
  v39[4] = sub_268614B3C();
  v6 = swift_allocObject();
  v39[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v39, &v31);
  sub_268682CDC(a1, &v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v36, &v40);
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    swift_getDynamicType();
    (*(v42 + 8))(&v31);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v29 = v32;
    v30 = v31;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v30 = 0u;
    sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
    v29 = 0u;
  }

  sub_2685B1724(v39, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v37 + 1);
    v15 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v31, v14, v17);
    v18 = v31;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v40 = v8;
  *(&v40 + 1) = v9;
  v41 = v30;
  v42 = v29;
  *&v43 = v19;
  *(&v43 + 1) = v18;
  v44 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v45;
  }

  else
  {
    v21 = v45;
    sub_2685B33F4(v20 & 1, 1);
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
  {
    sub_2685DBFC4(&v40, 1000, 0x20000000, a1[3]);
    if (!v21)
    {
      v22 = a1[1];
      v23 = a1[2];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2 || *(v22 + 16) == *(v22 + 24))
        {
          goto LABEL_23;
        }
      }

      else if (v24)
      {
        if (v22 == v22 >> 32)
        {
LABEL_23:
          v25 = v40;

          *v3 = v25;
          sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
          sub_2685B4D0C(*(v3[1] + 16) - 1);

          sub_2685B3560(v26);
          sub_2685B403C("}\n", 2, v27);
          v33 = v42;
          v34 = v43;
          v35 = v44;
          v31 = v40;
          v32 = v41;
          return sub_2685B4DEC(&v31);
        }
      }

      else if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      if (v44 == 1)
      {
        sub_26863B108(v22, v23, &v40);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268673B30(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v41[3] = &type metadata for Google_Protobuf_MessageOptions;
  v41[4] = sub_268614944();
  v6 = swift_allocObject();
  v41[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 8);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v41, &v33);
  sub_268601CEC(a1, &v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v38, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    swift_getDynamicType();
    (*(v44 + 8))(&v33);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v31 = v34;
    v32 = v33;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v32 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3C8, &unk_2686902F0);
    v31 = 0u;
  }

  sub_2685B1724(v41, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v10;
    v12 = v8;
    v13 = *(&v39 + 1);
    v14 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v15 = *(v14 + 16);
    v16 = v14;
    v8 = v12;
    v10 = v11;
    v15(&v33, v13, v16);
    v17 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3F8, &unk_268690680);
    v17 = 0;
  }

  v18 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v42 = v8;
  *(&v42 + 1) = v9;
  v43 = v32;
  v44 = v31;
  *&v45 = v18;
  *(&v45 + 1) = v17;
  v46 = v10;
  v19 = *(a1 + 32);
  if (v19 == 2)
  {
    v20 = v47;
  }

  else
  {
    v20 = v47;
    sub_2685B33F4(v19 & 1, 1);
    if (v20)
    {
      goto LABEL_30;
    }
  }

  v21 = *(a1 + 33);
  if (v21 == 2 || (sub_2685B33F4(v21 & 1, 2), !v20))
  {
    v22 = *(a1 + 34);
    if (v22 == 2 || (sub_2685B33F4(v22 & 1, 3), !v20))
    {
      v23 = *(a1 + 35);
      if (v23 == 2 || (sub_2685B33F4(v23 & 1, 7), !v20))
      {
        if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v20))
        {
          sub_2685DBFC4(&v42, 1000, 0x20000000, a1[3]);
          if (!v20)
          {
            v24 = a1[1];
            v25 = a1[2];
            v26 = v25 >> 62;
            if ((v25 >> 62) > 1)
            {
              if (v26 != 2 || *(v24 + 16) == *(v24 + 24))
              {
                goto LABEL_29;
              }
            }

            else if (v26)
            {
              if (v24 == v24 >> 32)
              {
LABEL_29:
                v27 = v42;

                *v3 = v27;
                sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
                sub_2685B4D0C(*(v3[1] + 16) - 1);

                sub_2685B3560(v28);
                sub_2685B403C("}\n", 2, v29);
                v35 = v44;
                v36 = v45;
                v37 = v46;
                v33 = v42;
                v34 = v43;
                return sub_2685B4DEC(&v33);
              }
            }

            else if ((v25 & 0xFF000000000000) == 0)
            {
              goto LABEL_29;
            }

            if (v46 == 1)
            {
              sub_26863B108(v24, v25, &v42);
            }

            goto LABEL_29;
          }
        }
      }
    }
  }

LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268673FBC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *), uint64_t a8)
{
  v11 = v8;
  sub_2685B301C(a5);
  v17 = sub_2686636FC(v16);
  v49[3] = a6;
  v49[4] = a7(v17);
  v18 = swift_allocObject();
  v49[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v19 = *v8;
  v20 = v11[1];
  v39 = *(v11 + 64);
  sub_2685B1724(v49, &v41);
  v40 = a1;

  sub_2685BA80C(a2, a3);

  v21 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v46, &v50);
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    swift_getDynamicType();
    (*(v52 + 8))(&v41);
    __swift_destroy_boxed_opaque_existential_1(&v50);
    v37 = v42;
    v38 = v41;
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v46, &qword_28028D3C8, &unk_2686902F0);
    v37 = 0u;
  }

  sub_2685B1724(v49, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v22 = a2;
    v23 = a3;
    v24 = v20;
    v25 = *(&v47 + 1);
    v26 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    v27 = *(v26 + 16);
    v28 = v26;
    v20 = v24;
    a3 = v23;
    a2 = v22;
    v27(&v41, v25, v28);
    v29 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_2685B2E64(&v46, &qword_28028D3F8, &unk_268690680);
    v29 = 0;
  }

  v30 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v50 = v21;
  *(&v50 + 1) = v20;
  v51 = v38;
  v52 = v37;
  *&v53 = v30;
  *(&v53 + 1) = v29;
  v54 = v39;
  if (*(v40 + 16))
  {
    v31 = v55;
    sub_2686766D4(v40, 999);
    if (v31)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v31 = v55;
  }

  sub_2685DBFC4(&v50, 1000, 0x20000000, a4);
  if (!v31)
  {
    v32 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v32 != 2 || *(a2 + 16) == *(a2 + 24))
      {
        goto LABEL_22;
      }
    }

    else if (v32)
    {
      if (a2 == a2 >> 32)
      {
LABEL_22:
        v33 = v50;

        *v11 = v33;
        sub_2685B4D0C(*(*(&v33 + 1) + 16) - 1);
        sub_2685B4D0C(*(v11[1] + 16) - 1);

        sub_2685B3560(v34);
        sub_2685B403C("}\n", 2, v35);
        v43 = v52;
        v44 = v53;
        v45 = v54;
        v41 = v50;
        v42 = v51;
        return sub_2685B4DEC(&v41);
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_22;
    }

    if (v54 == 1)
    {
      sub_26863B108(a2, a3, &v50);
    }

    goto LABEL_22;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26867440C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *), void (*a7)(__int128 *, uint64_t, uint64_t, unint64_t))
{
  v46 = a7;
  v10 = v7;
  sub_2685B301C(a4);
  v15 = sub_2686636FC(v14);
  v40[3] = a5;
  v40[0] = a1;
  v40[1] = a2;
  v40[4] = a6(v15);
  v40[2] = a3;
  v16 = *v7;
  v17 = v10[1];
  v28 = *(v10 + 64);
  sub_2685B1724(v40, &v32);

  v29 = a3;
  sub_2685BA80C(a2, a3);
  v31 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v37, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    swift_getDynamicType();
    (*(v43 + 8))(&v32);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v26 = v33;
    v27 = v32;
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v27 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
    v26 = 0u;
  }

  sub_2685B1724(v40, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v19 = *(&v38 + 1);
    v18 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    (*(v18 + 16))(&v32, v19, v18);
    v20 = v32;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
    v20 = 0;
  }

  v21 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v41 = v31;
  *(&v41 + 1) = v17;
  v42 = v27;
  v43 = v26;
  *&v44 = v21;
  *(&v44 + 1) = v20;
  v45 = v28;
  v46(&v41, a1, a2, v29);
  if (v30)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = v41;

    *v10 = v22;
    sub_2685B4D0C(*(*(&v22 + 1) + 16) - 1);
    sub_2685B4D0C(*(v10[1] + 16) - 1);

    sub_2685B3560(v23);
    sub_2685B403C("}\n", 2, v24);
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v32 = v41;
    v33 = v42;
    return sub_2685B4DEC(&v32);
  }

  return result;
}

uint64_t sub_268674784(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v11);
  v36[3] = &type metadata for Google_Protobuf_Value;
  v36[0] = a1;
  v36[1] = a2;
  v36[4] = sub_268653CEC();
  v36[2] = a3;
  v12 = *v4;
  v13 = v7[1];
  v26 = *(v7 + 64);
  sub_2685B1724(v36, &v28);
  v27 = a1;
  sub_2685BA80C(a1, a2);

  v42 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v33, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    swift_getDynamicType();
    (*(v39 + 8))(&v28);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v24 = v29;
    v25 = v28;
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v25 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3C8, &unk_2686902F0);
    v24 = 0u;
  }

  sub_2685B1724(v36, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v14 = *(&v34 + 1);
    v15 = v35;
    __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v6 = v5;
    v16(&v28, v14, v17);
    v18 = v28;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_2685B2E64(&v33, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v37 = v42;
  *(&v37 + 1) = v13;
  v38 = v25;
  v39 = v24;
  *&v40 = v19;
  *(&v40 + 1) = v18;
  v41 = v26;
  sub_26867FF28(&v37, v27, a2, a3);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v37;

    *v7 = v20;
    sub_2685B4D0C(*(*(&v20 + 1) + 16) - 1);
    sub_2685B4D0C(*(v7[1] + 16) - 1);

    sub_2685B3560(v21);
    sub_2685B403C("}\n", 2, v22);
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v28 = v37;
    v29 = v38;
    return sub_2685B4DEC(&v28);
  }

  return result;
}

uint64_t sub_268674B48(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v8 = (result + 32);
    v64 = *(v2 + 64);
    while (1)
    {
      v9 = v8[5];
      v60 = v8[4];
      v61 = v9;
      v10 = v8[7];
      v62 = v8[6];
      v63 = v10;
      v11 = v8[1];
      v56 = *v8;
      v57 = v11;
      v12 = v8[3];
      v58 = v8[2];
      v59 = v12;
      sub_268618EC0(&v56, &v51);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v13);
      v14 = v6[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6[1] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
        v6[1] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      v14[v17 + 32] = 32;
      v6[1] = v14;
      v19 = *(v14 + 3);
      v20 = v17 + 2;
      if (v20 > (v19 >> 1))
      {
        v14 = sub_2685B3F48((v19 > 1), v20, 1, v14);
      }

      *(v14 + 2) = v20;
      v14[v18 + 32] = 32;
      v6[1] = v14;
      v50[3] = &type metadata for Google_Protobuf_Field;
      v50[4] = sub_2685CF3E4();
      v21 = swift_allocObject();
      v50[0] = v21;
      v22 = v61;
      v21[5] = v60;
      v21[6] = v22;
      v23 = v63;
      v21[7] = v62;
      v21[8] = v23;
      v24 = v57;
      v21[1] = v56;
      v21[2] = v24;
      v25 = v59;
      v21[3] = v58;
      v21[4] = v25;
      v26 = *v6;
      sub_2685B1724(v50, &v42);
      sub_268618EC0(&v56, &v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v47, &v51);
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        swift_getDynamicType();
        (*(v53 + 8))(&v42);
        __swift_destroy_boxed_opaque_existential_1(&v51);
        v40 = v43;
        v41 = v42;
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        sub_2685B2E64(&v47, &qword_28028D3C8, &unk_2686902F0);
        v40 = 0u;
        v41 = 0u;
      }

      sub_2685B1724(v50, &v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v39 = v26;
        v27 = v5;
        v28 = v4;
        v29 = a2;
        v30 = *(&v48 + 1);
        v31 = v49;
        __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        v32 = *(v31 + 16);
        v33 = v31;
        a2 = v29;
        v4 = v28;
        v5 = v27;
        v26 = v39;
        v32(&v42, v30, v33);
        v34 = v42;
        __swift_destroy_boxed_opaque_existential_1(&v47);
      }

      else
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
        sub_2685B2E64(&v47, &qword_28028D3F8, &unk_268690680);
        v34 = 0;
      }

      v35 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v50);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v51 = v26;
      *(&v51 + 1) = v14;
      v52 = v41;
      v53 = v40;
      *&v54 = v35;
      *(&v54 + 1) = v34;
      v55 = v64;
      sub_2685CA330(&v51);
      if (v4)
      {
        break;
      }

      v36 = v51;

      *v6 = v36;
      sub_2685B4D0C(*(*(&v36 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);

      sub_2685B3560(v37);
      sub_2685B403C("}\n", 2, v38);
      sub_268618F1C(&v56);
      v44 = v53;
      v45 = v54;
      v46 = v55;
      v42 = v51;
      v43 = v52;
      result = sub_2685B4DEC(&v42);
      v8 += 8;
      if (!--v5)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268674FF0(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v27 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v45 = *v6;
      v46 = v7;
      v47 = v6[2];
      sub_268682F18(&v45, &v40);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v39[3] = &type metadata for Google_Protobuf_EnumValue;
      v39[4] = sub_2685CF734();
      v16 = swift_allocObject();
      v39[0] = v16;
      v17 = v46;
      v16[1] = v45;
      v16[2] = v17;
      v16[3] = v47;
      v18 = *v5;
      sub_2685B1724(v39, &v31);
      sub_268682F18(&v45, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v48 = v18;
      if (v19)
      {
        sub_2685B17CC(&v36, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        swift_getDynamicType();
        (*(v42 + 8))(&v31);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v29 = v32;
        v30 = v31;
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
        v29 = 0u;
        v30 = 0u;
      }

      sub_2685B1724(v39, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v37 + 1);
        v21 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v21 + 16))(&v31, v20, v21);
        v22 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v40 = v48;
      *(&v40 + 1) = v9;
      v41 = v30;
      v42 = v29;
      *&v43 = v23;
      *(&v43 + 1) = v22;
      v44 = v27;
      sub_2685CC9E4(&v40);
      if (v3)
      {
        break;
      }

      v24 = v40;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);

      sub_2685B3560(v25);
      sub_2685B403C("}\n", 2, v26);
      sub_268682F74(&v45);
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v31 = v40;
      v32 = v41;
      result = sub_2685B4DEC(&v31);
      v6 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268675464(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v27 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v45 = *v6;
      v46 = v7;
      v47 = v6[2];
      sub_268682E20(&v45, &v40);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v39[3] = &type metadata for Google_Protobuf_Mixin;
      v39[4] = sub_2685D7420();
      v16 = swift_allocObject();
      v39[0] = v16;
      v17 = v46;
      v16[1] = v45;
      v16[2] = v17;
      v16[3] = v47;
      v18 = *v5;
      sub_2685B1724(v39, &v31);
      sub_268682E20(&v45, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v48 = v18;
      if (v19)
      {
        sub_2685B17CC(&v36, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        swift_getDynamicType();
        (*(v42 + 8))(&v31);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v29 = v32;
        v30 = v31;
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
        v29 = 0u;
        v30 = 0u;
      }

      sub_2685B1724(v39, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v37 + 1);
        v21 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v21 + 16))(&v31, v20, v21);
        v22 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v40 = v48;
      *(&v40 + 1) = v9;
      v41 = v30;
      v42 = v29;
      *&v43 = v23;
      *(&v43 + 1) = v22;
      v44 = v27;
      sub_2685D6294(&v40);
      if (v3)
      {
        break;
      }

      v24 = v40;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);

      sub_2685B3560(v25);
      sub_2685B403C("}\n", 2, v26);
      sub_268682E7C(&v45);
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v31 = v40;
      v32 = v41;
      result = sub_2685B4DEC(&v31);
      v6 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686758D8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = (result + 32);
    v30 = *(v2 + 64);
    while (1)
    {
      v6 = v5[5];
      v52 = v5[4];
      v53 = v6;
      v54 = *(v5 + 12);
      v7 = v5[1];
      v48 = *v5;
      v49 = v7;
      v8 = v5[3];
      v50 = v5[2];
      v51 = v8;
      sub_268618E10(&v48, &v43);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v4[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v4[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v4[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v4[1] = v10;
      v42[3] = &type metadata for Google_Protobuf_Method;
      v42[4] = sub_2685D723C();
      v17 = swift_allocObject();
      v42[0] = v17;
      v18 = v53;
      *(v17 + 80) = v52;
      *(v17 + 96) = v18;
      *(v17 + 112) = v54;
      v19 = v49;
      *(v17 + 16) = v48;
      *(v17 + 32) = v19;
      v20 = v51;
      *(v17 + 48) = v50;
      *(v17 + 64) = v20;
      v21 = *v4;
      sub_2685B1724(v42, &v34);
      sub_268618E10(&v48, &v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v39, &v43);
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        swift_getDynamicType();
        (*(v45 + 8))(&v34);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v32 = v35;
        v33 = v34;
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3C8, &unk_2686902F0);
        v32 = 0u;
        v33 = 0u;
      }

      sub_2685B1724(v42, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v40 + 1);
        v23 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
        (*(v23 + 16))(&v34, v22, v23);
        v24 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v39);
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v43 = v21;
      *(&v43 + 1) = v10;
      v44 = v33;
      v45 = v32;
      *&v46 = v25;
      *(&v46 + 1) = v24;
      v47 = v30;
      v26 = v55;
      sub_2685D5560(&v43);
      v55 = v26;
      if (v26)
      {
        break;
      }

      v27 = v43;

      *v4 = v27;
      sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
      sub_2685B4D0C(*(v4[1] + 16) - 1);

      sub_2685B3560(v28);
      sub_2685B403C("}\n", 2, v29);
      sub_268618E6C(&v48);
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v34 = v43;
      v35 = v44;
      result = sub_2685B4DEC(&v34);
      v5 = (v5 + 104);
      if (!--v3)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268675D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void, void))
{
  v6 = *(result + 16);
  if (v6)
  {
    v8 = v5;
    v9 = (result + 48);
    v39 = *(v5 + 64);
    while (1)
    {
      v42 = v6;
      v14 = *(v9 - 2);
      v13 = *(v9 - 1);
      v15 = *v9;
      sub_2685BA80C(v14, v13);
      v59 = v15;

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v16);
      v17 = v8[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[1] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
        v8[1] = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v21;
      v17[v20 + 32] = 32;
      v8[1] = v17;
      v22 = *(v17 + 3);
      v23 = v20 + 2;
      if (v23 > (v22 >> 1))
      {
        v17 = sub_2685B3F48((v22 > 1), v23, 1, v17);
      }

      *(v17 + 2) = v23;
      v17[v21 + 32] = 32;
      v8[1] = v17;
      v53[3] = a3;
      v24 = a4();
      v53[0] = v14;
      v53[1] = v13;
      v53[4] = v24;
      v53[2] = v59;
      v25 = *v8;
      sub_2685B1724(v53, &v45);
      sub_2685BA80C(v14, v13);

      v44 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v50, &v54);
        __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
        swift_getDynamicType();
        (*(v56 + 8))(&v45);
        __swift_destroy_boxed_opaque_existential_1(&v54);
        v40 = v46;
        v41 = v45;
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        sub_2685B2E64(&v50, &qword_28028D3C8, &unk_2686902F0);
        v40 = 0u;
        v41 = 0u;
      }

      sub_2685B1724(v53, &v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v26 = a5;
        v27 = *(&v51 + 1);
        v28 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v29 = *(v28 + 16);
        v30 = v28;
        a5 = v26;
        v29(&v45, v27, v30);
        v31 = v45;
        __swift_destroy_boxed_opaque_existential_1(&v50);
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        sub_2685B2E64(&v50, &qword_28028D3F8, &unk_268690680);
        v31 = 0;
      }

      v32 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v54 = v44;
      *(&v54 + 1) = v17;
      v55 = v41;
      v56 = v40;
      *&v57 = v32;
      *(&v57 + 1) = v31;
      v58 = v39;
      a5(v59, &v54);
      if (v43)
      {
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v33 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        break;
      }

      if (v33)
      {
        v34 = v14;
        v35 = v14 >> 32;
LABEL_25:
        if (v34 == v35)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }

      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_26:
      if (v39)
      {
        sub_26863B108(v14, v13, &v54);
        v43 = 0;
        goto LABEL_4;
      }

LABEL_3:
      v43 = 0;
LABEL_4:
      v10 = v54;

      *v8 = v10;
      sub_2685B4D0C(*(*(&v10 + 1) + 16) - 1);
      sub_2685B4D0C(*(v8[1] + 16) - 1);

      sub_2685B3560(v11);
      sub_2685B403C("}\n", 2, v12);
      sub_2685B593C(v14, v13);

      v47 = v56;
      v48 = v57;
      v49 = v58;
      v45 = v54;
      v46 = v55;
      result = sub_2685B4DEC(&v45);
      v9 += 3;
      v6 = v42 - 1;
      if (v42 == 1)
      {
        return result;
      }
    }

    if (v33 != 2)
    {
      goto LABEL_3;
    }

    v34 = *(v14 + 16);
    v35 = *(v14 + 24);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_268676250(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v29 = *(v2 + 64);
    while (1)
    {
      v7 = v6[3];
      v49 = v6[2];
      v50 = v7;
      v51 = *(v6 + 8);
      v8 = v6[1];
      v47 = *v6;
      v48 = v8;
      sub_268618FD8(&v47, &v42);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v5[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v5[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v5[1] = v10;
      v41[3] = &type metadata for Google_Protobuf_SourceCodeInfo.Location;
      v41[4] = sub_268614CE0();
      v17 = swift_allocObject();
      v41[0] = v17;
      v18 = v50;
      *(v17 + 48) = v49;
      *(v17 + 64) = v18;
      *(v17 + 80) = v51;
      v19 = v48;
      *(v17 + 16) = v47;
      *(v17 + 32) = v19;
      v20 = *v5;
      sub_2685B1724(v41, &v33);
      sub_268618FD8(&v47, &v42);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v21 = swift_dynamicCast();
      v52 = v20;
      if (v21)
      {
        sub_2685B17CC(&v38, &v42);
        __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        swift_getDynamicType();
        (*(v44 + 8))(&v33);
        __swift_destroy_boxed_opaque_existential_1(&v42);
        v31 = v34;
        v32 = v33;
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_2685B2E64(&v38, &qword_28028D3C8, &unk_2686902F0);
        v31 = 0u;
        v32 = 0u;
      }

      sub_2685B1724(v41, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v39 + 1);
        v23 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
        (*(v23 + 16))(&v33, v22, v23);
        v24 = v33;
        __swift_destroy_boxed_opaque_existential_1(&v38);
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        sub_2685B2E64(&v38, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v42 = v52;
      *(&v42 + 1) = v10;
      v43 = v32;
      v44 = v31;
      *&v45 = v25;
      *(&v45 + 1) = v24;
      v46 = v29;
      sub_26860B8A0(&v42);
      if (v3)
      {
        break;
      }

      v26 = v42;

      *v5 = v26;
      sub_2685B4D0C(*(*(&v26 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);

      sub_2685B3560(v27);
      sub_2685B403C("}\n", 2, v28);
      sub_268619010(&v47);
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v33 = v42;
      v34 = v43;
      result = sub_2685B4DEC(&v33);
      v6 = (v6 + 72);
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686766D4(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = (result + 32);
    v30 = *(v2 + 64);
    while (1)
    {
      v6 = v5[5];
      v52 = v5[4];
      v53 = v6;
      v54 = v5[6];
      v55 = *(v5 + 14);
      v7 = v5[1];
      v48 = *v5;
      v49 = v7;
      v8 = v5[3];
      v50 = v5[2];
      v51 = v8;
      sub_268619040(&v48, &v43);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v4[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v4[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v4[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v4[1] = v10;
      v42[3] = &type metadata for Google_Protobuf_UninterpretedOption;
      v42[4] = sub_2686148F0();
      v17 = swift_allocObject();
      v42[0] = v17;
      v18 = v53;
      *(v17 + 80) = v52;
      *(v17 + 96) = v18;
      *(v17 + 112) = v54;
      *(v17 + 128) = v55;
      v19 = v49;
      *(v17 + 16) = v48;
      *(v17 + 32) = v19;
      v20 = v51;
      *(v17 + 48) = v50;
      *(v17 + 64) = v20;
      v21 = *v4;
      sub_2685B1724(v42, &v34);
      sub_268619040(&v48, &v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v39, &v43);
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        swift_getDynamicType();
        (*(v45 + 8))(&v34);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v32 = v35;
        v33 = v34;
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3C8, &unk_2686902F0);
        v32 = 0u;
        v33 = 0u;
      }

      sub_2685B1724(v42, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v40 + 1);
        v23 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
        (*(v23 + 16))(&v34, v22, v23);
        v24 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v39);
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v43 = v21;
      *(&v43 + 1) = v10;
      v44 = v33;
      v45 = v32;
      *&v46 = v25;
      *(&v46 + 1) = v24;
      v47 = v30;
      v26 = v56;
      sub_2686099AC(&v43);
      v56 = v26;
      if (v26)
      {
        break;
      }

      v27 = v43;

      *v4 = v27;
      sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
      sub_2685B4D0C(*(v4[1] + 16) - 1);

      sub_2685B3560(v28);
      sub_2685B403C("}\n", 2, v29);
      sub_268619078(&v48);
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v34 = v43;
      v35 = v44;
      result = sub_2685B4DEC(&v34);
      v5 = (v5 + 120);
      if (!--v3)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268676B70(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v27 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v45 = *v6;
      v46 = v7;
      v47 = *(v6 + 32);
      sub_268682B74(&v45, &v40);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v39[3] = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
      v39[4] = sub_268614C8C();
      v16 = swift_allocObject();
      v39[0] = v16;
      v17 = v46;
      *(v16 + 16) = v45;
      *(v16 + 32) = v17;
      *(v16 + 48) = v47;
      v18 = *v5;
      sub_2685B1724(v39, &v31);
      sub_268682B74(&v45, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v48 = v18;
      if (v19)
      {
        sub_2685B17CC(&v36, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        swift_getDynamicType();
        (*(v42 + 8))(&v31);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v29 = v32;
        v30 = v31;
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
        v29 = 0u;
        v30 = 0u;
      }

      sub_2685B1724(v39, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v37 + 1);
        v21 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v21 + 16))(&v31, v20, v21);
        v22 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v40 = v48;
      *(&v40 + 1) = v9;
      v41 = v30;
      v42 = v29;
      *&v43 = v23;
      *(&v43 + 1) = v22;
      v44 = v27;
      sub_26860A938(&v40);
      if (v3)
      {
        break;
      }

      v24 = v40;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);

      sub_2685B3560(v25);
      sub_2685B403C("}\n", 2, v26);
      sub_268682BD0(&v45);
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v31 = v40;
      v32 = v41;
      result = sub_2685B4DEC(&v31);
      v6 = (v6 + 40);
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268677234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(__int128 *, uint64_t, unint64_t, unint64_t, unint64_t))
{
  v7 = *(result + 16);
  if (v7)
  {
    v8 = v6;
    v9 = (result + 60);
    v32 = *(v6 + 64);
    while (1)
    {
      v40 = v7;
      v10 = *(v9 - 20);
      v44 = *(v9 - 3);
      v11 = *(v9 - 1);
      v42 = *v9;
      v43 = *(v9 - 8);
      v60 = *(v9 - 28);
      sub_2685BA80C(v60, v10);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v12);
      v13 = v8[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[1] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
        v8[1] = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v13 = sub_2685B3F48((v15 > 1), v16 + 1, 1, v13);
      }

      *(v13 + 2) = v17;
      v13[v16 + 32] = 32;
      v8[1] = v13;
      v18 = *(v13 + 3);
      v19 = v16 + 2;
      if (v19 > (v18 >> 1))
      {
        v13 = sub_2685B3F48((v18 > 1), v19, 1, v13);
      }

      *(v13 + 2) = v19;
      v13[v17 + 32] = 32;
      v8[1] = v13;
      v54[3] = a3;
      v54[4] = a4();
      v20 = swift_allocObject();
      v54[0] = v20;
      v21 = v60;
      *(v20 + 16) = v60;
      *(v20 + 24) = v10;
      *(v20 + 32) = v44;
      *(v20 + 36) = v43;
      *(v20 + 40) = v11;
      *(v20 + 44) = v42;
      v22 = *v8;
      sub_2685B1724(v54, &v45);
      sub_2685BA80C(v21, v10);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v39 = v11;
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v51, &v55);
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        swift_getDynamicType();
        (*(v57 + 8))(&v45);
        __swift_destroy_boxed_opaque_existential_1(&v55);
        v37 = v46;
        v38 = v45;
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3C8, &unk_2686902F0);
        v37 = 0u;
        v38 = 0u;
      }

      v23 = v10;
      sub_2685B1724(v54, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v24 = *(&v52 + 1);
        v25 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        (*(v25 + 16))(&v45, v24, v25);
        v26 = v45;
        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3F8, &unk_268690680);
        v26 = 0;
      }

      v27 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v55 = v22;
      *(&v55 + 1) = v13;
      v56 = v38;
      v57 = v37;
      *&v58 = v27;
      *(&v58 + 1) = v26;
      v59 = v32;
      LOBYTE(v45) = v43;
      v50 = v42;
      v28 = v60;
      a6(&v55, v60, v23, v44 | (v43 << 32), v39 | (v42 << 32));
      if (v41)
      {
        break;
      }

      v29 = v55;

      *v8 = v29;
      sub_2685B4D0C(*(*(&v29 + 1) + 16) - 1);
      sub_2685B4D0C(*(v8[1] + 16) - 1);

      sub_2685B3560(v30);
      sub_2685B403C("}\n", 2, v31);
      sub_2685B593C(v28, v23);
      v47 = v57;
      v48 = v58;
      v49 = v59;
      v45 = v55;
      v46 = v56;
      result = sub_2685B4DEC(&v45);
      v9 += 32;
      v7 = v40 - 1;
      if (v40 == 1)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867775C(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v7 = (result + 48);
    v40 = *(v2 + 64);
    do
    {
      v11 = *(v7 - 2);
      v44 = v7;
      v12 = *v7;
      v60 = *(v7 - 1);
      sub_2685BA80C(v11, v60);

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v13);
      v14 = v6[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6[1] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
        v6[1] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      v14[v17 + 32] = 32;
      v6[1] = v14;
      v19 = *(v14 + 3);
      v20 = v17 + 2;
      if (v20 > (v19 >> 1))
      {
        v14 = sub_2685B3F48((v19 > 1), v20, 1, v14);
      }

      *(v14 + 2) = v20;
      v14[v18 + 32] = 32;
      v6[1] = v14;
      v54[3] = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
      v21 = sub_268615CB8();
      v22 = v60;
      v54[0] = v11;
      v54[1] = v60;
      v54[4] = v21;
      v54[2] = v12;
      v23 = *v6;
      sub_2685B1724(v54, &v46);
      sub_2685BA80C(v11, v22);

      v45 = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v51, &v55);
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        swift_getDynamicType();
        (*(v57 + 8))(&v46);
        __swift_destroy_boxed_opaque_existential_1(&v55);
        v41 = v47;
        v42 = v46;
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3C8, &unk_2686902F0);
        v41 = 0u;
        v42 = 0u;
      }

      sub_2685B1724(v54, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v24 = v11;
        v25 = *(&v52 + 1);
        v26 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        v27 = *(v26 + 16);
        v28 = v26;
        v11 = v24;
        v6 = v39;
        v27(&v46, v25, v28);
        v29 = v46;
        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3F8, &unk_268690680);
        v29 = 0;
      }

      v30 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v55 = v45;
      *(&v55 + 1) = v14;
      v56 = v42;
      v57 = v41;
      *&v58 = v30;
      *(&v58 + 1) = v29;
      v59 = v40;
      swift_beginAccess();
      if ((*(v12 + 20) & 1) == 0 && (sub_2686440C0(*(v12 + 16), 1), v4) || (swift_beginAccess(), (*(v12 + 28) & 1) == 0) && (sub_2686440C0(*(v12 + 24), 2), v4))
      {
LABEL_37:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      swift_beginAccess();
      v31 = *(v12 + 32);
      if (v31)
      {
        v32 = v11;
        v43 = v4;
        v33 = v5;
        v35 = *(v12 + 40);
        v34 = *(v12 + 48);
        v36 = *(v12 + 56);

        sub_2685BA80C(v35, v34);

        sub_268673FBC(v31, v35, v34, v36, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C, &unk_287930B40);
        if (v43)
        {
          sub_268601C90(v31, v35, v34, v36);
          goto LABEL_37;
        }

        sub_268601C90(v31, v35, v34, v36);
        v5 = v33;
        v4 = 0;
        v11 = v32;
        v6 = v39;
      }

      v37 = v60 >> 62;
      if ((v60 >> 62) > 1)
      {
        if (v37 != 2 || *(v11 + 16) == *(v11 + 24))
        {
          goto LABEL_3;
        }
      }

      else if (v37)
      {
        if (v11 == v11 >> 32)
        {
          goto LABEL_3;
        }
      }

      else if ((v60 & 0xFF000000000000) == 0)
      {
        goto LABEL_3;
      }

      if (v40)
      {
        sub_26863B108(v11, v60, &v55);
        if (v4)
        {
          goto LABEL_37;
        }
      }

LABEL_3:
      v8 = v55;

      *v6 = v8;
      sub_2685B4D0C(*(*(&v8 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);

      sub_2685B3560(v9);
      sub_2685B403C("}\n", 2, v10);
      sub_2685B593C(v11, v60);

      v48 = v57;
      v49 = v58;
      v50 = v59;
      v46 = v55;
      v47 = v56;
      result = sub_2685B4DEC(&v46);
      v7 = v44 + 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_268677D78(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v27 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v45 = *v6;
      v46 = v7;
      v47[0] = v6[2];
      *(v47 + 13) = *(v6 + 45);
      sub_268618F70(&v45, &v40);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v39[3] = &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation;
      v39[4] = sub_268614D34();
      v16 = swift_allocObject();
      v39[0] = v16;
      v17 = v46;
      *(v16 + 16) = v45;
      *(v16 + 32) = v17;
      *(v16 + 48) = v47[0];
      *(v16 + 61) = *(v47 + 13);
      v18 = *v5;
      sub_2685B1724(v39, &v31);
      sub_268618F70(&v45, &v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v48 = v18;
      if (v19)
      {
        sub_2685B17CC(&v36, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        swift_getDynamicType();
        (*(v42 + 8))(&v31);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v29 = v32;
        v30 = v31;
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3C8, &unk_2686902F0);
        v29 = 0u;
        v30 = 0u;
      }

      sub_2685B1724(v39, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v37 + 1);
        v21 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v21 + 16))(&v31, v20, v21);
        v22 = v31;
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
        sub_2685B2E64(&v36, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v40 = v48;
      *(&v40 + 1) = v9;
      v41 = v30;
      v42 = v29;
      *&v43 = v23;
      *(&v43 + 1) = v22;
      v44 = v27;
      sub_26860CAE4(&v40);
      if (v3)
      {
        break;
      }

      v24 = v40;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);

      sub_2685B3560(v25);
      sub_2685B403C("}\n", 2, v26);
      sub_268618FA8(&v45);
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v31 = v40;
      v32 = v41;
      result = sub_2685B4DEC(&v31);
      v6 = (v6 + 56);
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678204(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(__int128 *, uint64_t, unint64_t, uint64_t))
{
  v7 = v6;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = (result + 48);
    v33 = *(v5 + 64);
    while (1)
    {
      v40 = v9;
      v41 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      v57 = *(v9 - 2);
      v12 = v10;
      sub_2685BA80C(v57, v10);

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v13);
      v14 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
        v5[1] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      v14[v17 + 32] = 32;
      v5[1] = v14;
      v19 = *(v14 + 3);
      v42 = v7;
      if ((v17 + 2) > (v19 >> 1))
      {
        v14 = sub_2685B3F48((v19 > 1), v17 + 2, 1, v14);
      }

      *(v14 + 2) = v17 + 2;
      v14[v18 + 32] = 32;
      v5[1] = v14;
      v51[3] = a3;
      v20 = a4();
      v21 = v57;
      v51[0] = v57;
      v51[1] = v12;
      v51[4] = v20;
      v51[2] = v11;
      v22 = *v5;
      sub_2685B1724(v51, &v43);
      sub_2685BA80C(v21, v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v48, &v52);
        __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        swift_getDynamicType();
        (*(v54 + 8))(&v43);
        __swift_destroy_boxed_opaque_existential_1(&v52);
        v38 = v44;
        v39 = v43;
      }

      else
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2685B2E64(&v48, &qword_28028D3C8, &unk_2686902F0);
        v38 = 0u;
        v39 = 0u;
      }

      sub_2685B1724(v51, &v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v24 = *(&v49 + 1);
        v23 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
        (*(v23 + 16))(&v43, v24, v23);
        v25 = v43;
        __swift_destroy_boxed_opaque_existential_1(&v48);
      }

      else
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2685B2E64(&v48, &qword_28028D3F8, &unk_268690680);
        v25 = 0;
      }

      v7 = v42;
      v26 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_2685B2FBC(0, 0, 0, 0);

      *&v52 = v22;
      *(&v52 + 1) = v14;
      v53 = v39;
      v54 = v38;
      *&v55 = v26;
      *(&v55 + 1) = v25;
      v56 = v33;
      v27 = v57;
      a5(&v52, v57, v12, v11);
      if (v42)
      {
        break;
      }

      v29 = *(&v52 + 1);
      v28 = v52;

      *v32 = __PAIR128__(v29, v28);
      sub_2685B4D0C(*(v29 + 16) - 1);
      sub_2685B4D0C(*(v32[1] + 16) - 1);

      v5 = v32;
      sub_2685B3560(v30);
      sub_2685B403C("}\n", 2, v31);
      sub_2685B593C(v27, v12);

      v45 = v54;
      v46 = v55;
      v47 = v56;
      v43 = v52;
      v44 = v53;
      result = sub_2685B4DEC(&v43);
      v9 = v40 + 3;
      v8 = v41 - 1;
      if (v41 == 1)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678690(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v14 + 1) = &type metadata for Google_Protobuf_Field;
  *&v15 = sub_2685CF3E4();
  v4 = swift_allocObject();
  *&v13 = v4;
  v5 = v1[5];
  v4[5] = v1[4];
  v4[6] = v5;
  v6 = v1[7];
  v4[7] = v1[6];
  v4[8] = v6;
  v7 = v1[1];
  v4[1] = *v1;
  v4[2] = v7;
  v8 = v1[3];
  v4[3] = v1[2];
  v4[4] = v8;
  v20 = a1;
  sub_268618EC0(v1, v18);
  sub_2685B14F0(&v13, &v20, v18);
  sub_2685CA330(v18);
  *&v13 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v18[2];
    v16 = v18[3];
    v17 = v19;
    v14 = v18[1];
    v13 = v18[0];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678874(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, _OWORD *, __n128))
{
  v14 = sub_2686899A4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *(&v23 + 1) = a5;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v24 = a6(v15);
  *&v23 = a4;
  v27 = a1;
  sub_2685BA80C(a2, a3);

  v16 = sub_2685B14F0(&v22, &v27, v28);
  a7(a4, v28, v16);
  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v29 == 1)
  {
    sub_26863B108(a2, a3, v28);
  }

LABEL_11:
  *&v22 = *&v28[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v18 = sub_268689974();
  if (v19)
  {
    v20 = v18;
    v24 = v28[2];
    v25 = v28[3];
    v26 = v29;
    v22 = v28[0];
    v23 = v28[1];
    sub_2685B4DEC(&v22);

    return v20;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678AA8(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_EnumValue;
  *&v12 = sub_2685CF734();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  v15 = a1;
  sub_268682F18(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_2685CC9E4(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678C6C(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v13 + 1) = &type metadata for Google_Protobuf_Method;
  *&v14 = sub_2685D723C();
  v4 = swift_allocObject();
  *&v12 = v4;
  v5 = *(v1 + 80);
  *(v4 + 80) = *(v1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(v1 + 96);
  v6 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v6;
  v7 = *(v1 + 48);
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = v7;
  v19 = a1;
  sub_268618E10(v1, v17);
  sub_2685B14F0(&v12, &v19, v17);
  sub_2685D5560(v17);
  *&v12 = *&v17[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v17[2];
    v15 = v17[3];
    v16 = v18;
    v12 = v17[0];
    v13 = v17[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678E38(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_Mixin;
  *&v12 = sub_2685D7420();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v4[3] = v1[2];
  v15 = a1;
  sub_268682E20(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_2685D6294(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678FFC(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v15 + 1) = &type metadata for Google_Protobuf_FileDescriptorSet;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v16 = sub_268615814();
  *&v15 = a4;
  v19 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v14, &v19, v20);
  if (*(a2 + 16))
  {
    sub_268675D64(a2, 1, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848, sub_2685F2AE4);
  }

  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v21 == 1)
  {
    sub_26863B108(a3, a4, v20);
  }

LABEL_13:
  *&v14 = *&v20[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v10 = sub_268689974();
  if (v11)
  {
    v12 = v10;
    v16 = v20[2];
    v17 = v20[3];
    v18 = v21;
    v14 = v20[0];
    v15 = v20[1];
    sub_2685B4DEC(&v14);

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679258(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v19 + 1) = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v20 = sub_268615CB8();
  *&v19 = a4;
  v23[0] = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v18, v23, v24);
  swift_beginAccess();
  if ((*(a4 + 20) & 1) == 0)
  {
    sub_2686440C0(*(a4 + 16), 1);
  }

  swift_beginAccess();
  if ((*(a4 + 28) & 1) == 0)
  {
    sub_2686440C0(*(a4 + 24), 2);
  }

  swift_beginAccess();
  v9 = *(a4 + 32);
  if (v9)
  {
    v11 = *(a4 + 48);
    v10 = *(a4 + 56);
    v12 = *(a4 + 40);

    sub_2685BA80C(v12, v11);

    sub_268673FBC(v9, v12, v11, v10, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C, &unk_287930B40);
    sub_268601C90(v9, v12, v11, v10);
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_17;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if (v25 == 1)
  {
    sub_26863B108(a2, a3, v24);
  }

LABEL_17:
  *&v18 = *&v24[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v14 = sub_268689974();
  if (v15)
  {
    v16 = v14;
    v20 = v24[2];
    v21 = v24[3];
    v22 = v25;
    v19 = v24[1];
    v18 = v24[0];
    sub_2685B4DEC(&v18);

    return v16;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686795A0(char a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void (*a9)(_OWORD *, uint64_t, unint64_t, unint64_t, unint64_t, __n128))
{
  v11 = a5;
  v12 = a4;
  v15 = HIDWORD(a4) & 1;
  v16 = HIDWORD(a5) & 1;
  v17 = sub_2686899A4();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  *(&v27 + 1) = a6;
  *&v28 = a7(v18);
  v19 = swift_allocObject();
  *&v26 = v19;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = v12;
  *(v19 + 36) = v15;
  *(v19 + 40) = v11;
  *(v19 + 44) = v16;
  v31[0] = a1;
  sub_2685BA80C(a2, a3);
  v20 = sub_2685B14F0(&v26, v31, v32);
  LOBYTE(v26) = v15;
  v31[0] = v16;
  a9(v32, a2, a3, v12 | (v15 << 32), v11 | (v16 << 32), v20);
  *&v26 = *&v32[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v21 = sub_268689974();
  if (v22)
  {
    v23 = v21;
    v28 = v32[2];
    v29 = v32[3];
    v30 = v33;
    v26 = v32[0];
    v27 = v32[1];
    sub_2685B4DEC(&v26);

    return v23;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686797D8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2686899A4();
  MEMORY[0x28223BE20](v10 - 8);
  *(&v18 + 1) = &type metadata for Google_Protobuf_FileOptions;
  *&v19 = sub_2686151BC();
  v11 = swift_allocObject();
  *&v17 = v11;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v22 = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v17, &v22, v23);
  sub_2686030E8(a5, v23, a2, a3, a4);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v12)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v24 == 1)
  {
    sub_26863B108(a2, a3, v23);
  }

LABEL_11:
  *&v17 = *&v23[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v13 = sub_268689974();
  if (v14)
  {
    v15 = v13;
    v19 = v23[2];
    v20 = v23[3];
    v21 = v24;
    v17 = v23[0];
    v18 = v23[1];
    sub_2685B4DEC(&v17);

    return v15;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679A2C(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  *(&v19 + 1) = &type metadata for Google_Protobuf_MessageOptions;
  *&v20 = sub_268614944();
  v5 = swift_allocObject();
  *&v18 = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v23 = a1;
  sub_268601CEC(v2, v24);
  sub_2685B14F0(&v18, &v23, v24);
  v7 = *(v2 + 32);
  if (v7 != 2)
  {
    sub_2685B33F4(v7 & 1, 1);
  }

  v8 = *(v2 + 33);
  if (v8 != 2)
  {
    sub_2685B33F4(v8 & 1, 2);
  }

  v9 = *(v2 + 34);
  if (v9 != 2)
  {
    sub_2685B33F4(v9 & 1, 3);
  }

  v10 = *(v2 + 35);
  if (v10 != 2)
  {
    sub_2685B33F4(v10 & 1, 7);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v24, 1000, 0x20000000, *(v2 + 24));
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_21;
    }
  }

  else if (v13)
  {
    if (v11 == v11 >> 32)
    {
      goto LABEL_21;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_21;
  }

  if (v25 == 1)
  {
    sub_26863B108(v11, v12, v24);
  }

LABEL_21:
  *&v18 = *&v24[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v14 = sub_268689974();
  if (v15)
  {
    v16 = v14;
    v20 = v24[2];
    v21 = v24[3];
    v22 = v25;
    v18 = v24[0];
    v19 = v24[1];
    sub_2685B4DEC(&v18);

    return v16;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679CFC(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_FieldOptions;
  *&v12 = sub_268614998();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 46) = *(v1 + 30);
  v15 = a1;
  sub_268601D9C(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_2686060E0(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679EC0(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v15 = sub_2686899A4();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  *(&v24 + 1) = a6;
  *&v25 = a7(v16);
  v17 = swift_allocObject();
  *&v23 = v17;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v28 = a1;

  sub_2685BA80C(a3, a4);

  sub_2685B14F0(&v23, &v28, v29);
  if (*(a2 + 16))
  {
    sub_2686766D4(a2, 999);
  }

  sub_2685DBFC4(v29, 1000, 0x20000000, a5);
  v18 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v18 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v18)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v30 == 1)
  {
    sub_26863B108(a3, a4, v29);
  }

LABEL_13:
  *&v23 = *&v29[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v19 = sub_268689974();
  if (v20)
  {
    v21 = v19;
    v25 = v29[2];
    v26 = v29[3];
    v27 = v30;
    v23 = v29[0];
    v24 = v29[1];
    sub_2685B4DEC(&v23);

    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A134(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  *(&v17 + 1) = &type metadata for Google_Protobuf_EnumOptions;
  *&v18 = sub_268614AE8();
  v5 = swift_allocObject();
  *&v16 = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v21 = a1;
  sub_268682D38(v2, v22);
  sub_2685B14F0(&v16, &v21, v22);
  v7 = *(v2 + 32);
  if (v7 != 2)
  {
    sub_2685B33F4(v7 & 1, 2);
  }

  v8 = *(v2 + 33);
  if (v8 != 2)
  {
    sub_2685B33F4(v8 & 1, 3);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v22, 1000, 0x20000000, *(v2 + 24));
  v9 = *(v2 + 8);
  v10 = *(v2 + 16);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    if (v9 == v9 >> 32)
    {
      goto LABEL_17;
    }
  }

  else if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if (v23 == 1)
  {
    sub_26863B108(v9, v10, v22);
  }

LABEL_17:
  *&v16 = *&v22[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v12 = sub_268689974();
  if (v13)
  {
    v14 = v12;
    v18 = v22[2];
    v19 = v22[3];
    v20 = v23;
    v16 = v22[0];
    v17 = v22[1];
    sub_2685B4DEC(&v16);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A3C4(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  *(&v16 + 1) = &type metadata for Google_Protobuf_EnumValueOptions;
  *&v17 = sub_268614B3C();
  v5 = swift_allocObject();
  *&v15 = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v20 = a1;
  sub_268682CDC(v2, v21);
  sub_2685B14F0(&v15, &v20, v21);
  v7 = *(v2 + 32);
  if (v7 != 2)
  {
    sub_2685B33F4(v7 & 1, 1);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v21, 1000, 0x20000000, *(v2 + 24));
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    sub_26863B108(v8, v9, v21);
  }

LABEL_15:
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A634(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  *(&v16 + 1) = &type metadata for Google_Protobuf_ServiceOptions;
  *&v17 = sub_268614B90();
  v5 = swift_allocObject();
  *&v15 = v5;
  v6 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v2 + 32);
  v20 = a1;
  sub_268682C80(v2, v21);
  sub_2685B14F0(&v15, &v20, v21);
  v7 = *(v2 + 32);
  if (v7 != 2)
  {
    sub_2685B33F4(v7 & 1, 33);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v21, 1000, 0x20000000, *(v2 + 24));
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    sub_26863B108(v8, v9, v21);
  }

LABEL_15:
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A8A4(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_MethodOptions;
  *&v12 = sub_268614BE4();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  v15 = a1;
  sub_268682C24(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_268608B7C(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AA68(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v13 + 1) = &type metadata for Google_Protobuf_UninterpretedOption;
  *&v14 = sub_2686148F0();
  v4 = swift_allocObject();
  *&v12 = v4;
  v5 = *(v1 + 80);
  *(v4 + 80) = *(v1 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(v1 + 96);
  *(v4 + 128) = *(v1 + 112);
  v6 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v6;
  v7 = *(v1 + 48);
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = v7;
  v19 = a1;
  sub_268619040(v1, v17);
  sub_2685B14F0(&v12, &v19, v17);
  sub_2686099AC(v17);
  *&v12 = *&v17[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v17[2];
    v15 = v17[3];
    v16 = v18;
    v12 = v17[0];
    v13 = v17[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AC3C(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
  *&v12 = sub_268614C8C();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  v15 = a1;
  sub_268682B74(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_26860A938(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AE00(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v12 + 1) = &type metadata for Google_Protobuf_SourceCodeInfo.Location;
  *&v13 = sub_268614CE0();
  v4 = swift_allocObject();
  *&v11 = v4;
  v5 = *(v1 + 48);
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v1 + 64);
  v6 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v6;
  v18 = a1;
  sub_268618FD8(v1, v16);
  sub_2685B14F0(&v11, &v18, v16);
  sub_26860B8A0(v16);
  *&v11 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v7 = sub_268689974();
  if (v8)
  {
    v9 = v7;
    v13 = v16[2];
    v14 = v16[3];
    v15 = v17;
    v11 = v16[0];
    v12 = v16[1];
    sub_2685B4DEC(&v11);

    return v9;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AFC4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, uint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *(&v23 + 1) = a5;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v24 = a6(v15);
  *&v23 = a4;
  v27 = a1;

  sub_2685BA80C(a3, a4);
  v16 = sub_2685B14F0(&v22, &v27, v28);
  if (*(a2 + 16))
  {
    a7(a2, 1, v16);
  }

  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v17)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v29 == 1)
  {
    sub_26863B108(a3, a4, v28);
  }

LABEL_13:
  *&v22 = *&v28[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v18 = sub_268689974();
  if (v19)
  {
    v20 = v18;
    v24 = v28[2];
    v25 = v28[3];
    v26 = v29;
    v22 = v28[0];
    v23 = v28[1];
    sub_2685B4DEC(&v22);

    return v20;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B20C(char a1)
{
  v3 = sub_2686899A4();
  MEMORY[0x28223BE20](v3 - 8);
  *(&v11 + 1) = &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation;
  *&v12 = sub_268614D34();
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 32);
  *(v4 + 61) = *(v1 + 45);
  v15 = a1;
  sub_268618F70(v1, v16);
  sub_2685B14F0(&v10, &v15, v16);
  sub_26860CAE4(v16);
  *&v10 = *&v16[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v6 = sub_268689974();
  if (v7)
  {
    v8 = v6;
    v12 = v16[2];
    v13 = v16[3];
    v14 = v17;
    v10 = v16[0];
    v11 = v16[1];
    sub_2685B4DEC(&v10);

    return v8;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B3D8(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v14 + 1) = &type metadata for Google_Protobuf_BoolValue;
  *&v15 = sub_268651A34();
  LOBYTE(v13) = a2;
  *(&v13 + 1) = a3;
  *&v14 = a4;
  v18 = a1;
  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v13, &v18, v19);
  sub_26864FC5C(v19, a2, a3, a4);
  *&v13 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v19[2];
    v16 = v19[3];
    v17 = v20;
    v13 = v19[0];
    v14 = v19[1];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B594(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v23 + 1) = &type metadata for Google_Protobuf_FieldMask;
  *&v22 = a2;
  *(&v22 + 1) = a3;
  *&v24 = sub_268652A68();
  *&v23 = a4;
  v27 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v22, &v27, v28);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_2685B301C(1);
      sub_2685B403C(": ", 2, v13);
      sub_2685B43A4(v11, v12);

      v14 = *&v28[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_2685B3F48((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v14[v16 + 32] = 10;
      *&v28[0] = v14;
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v17)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_18;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  if (v29 == 1)
  {
    sub_26863B108(a3, a4, v28);
  }

LABEL_18:
  *&v22 = *&v28[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v18 = sub_268689974();
  if (v19)
  {
    v20 = v18;
    v24 = v28[2];
    v25 = v28[3];
    v26 = v29;
    v22 = v28[0];
    v23 = v28[1];
    sub_2685B4DEC(&v22);

    return v20;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B87C(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v15 + 1) = &type metadata for Google_Protobuf_ListValue;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v16 = sub_268653C44();
  *&v15 = a4;
  v19 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v14, &v19, v20);
  if (*(a2 + 16))
  {
    sub_268678204(a2, 1, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28);
  }

  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v9)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v21 == 1)
  {
    sub_26863B108(a3, a4, v20);
  }

LABEL_13:
  *&v14 = *&v20[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v10 = sub_268689974();
  if (v11)
  {
    v12 = v10;
    v16 = v20[2];
    v17 = v20[3];
    v18 = v21;
    v14 = v20[0];
    v15 = v20[1];
    sub_2685B4DEC(&v14);

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BAD8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_2686899A4();
  MEMORY[0x28223BE20](v10 - 8);
  *(&v17 + 1) = &type metadata for Google_Protobuf_BytesValue;
  *&v18 = sub_268651DC0();
  v11 = swift_allocObject();
  *&v16 = v11;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v21 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685BA80C(a4, a5);
  sub_2685B14F0(&v16, &v21, v22);
  sub_26865089C(v22, a2, a3, a4, a5);
  *&v16 = *&v22[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v12 = sub_268689974();
  if (v13)
  {
    v14 = v12;
    v18 = v22[2];
    v19 = v22[3];
    v20 = v23;
    v16 = v22[0];
    v17 = v22[1];
    sub_2685B4DEC(&v16);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BCC0(char a1, uint64_t a2, unint64_t a3, float a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v14 + 1) = &type metadata for Google_Protobuf_FloatValue;
  *&v15 = sub_2686511EC();
  *&v13 = a4;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  v18 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v13, &v18, v19);
  sub_26864DBD0(v19, a2, a3, a4);
  *&v13 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v19[2];
    v16 = v19[3];
    v17 = v20;
    v13 = v19[0];
    v14 = v19[1];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BE84(char a1, uint64_t a2, unint64_t a3, double a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v14 + 1) = &type metadata for Google_Protobuf_DoubleValue;
  *&v15 = sub_268651044();
  *&v13 = a4;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  v18 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v13, &v18, v19);
  sub_26864D354(v19, a2, a3, a4);
  *&v13 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v19[2];
    v16 = v19[3];
    v17 = v20;
    v13 = v19[0];
    v14 = v19[1];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C048(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, uint64_t, unint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *(&v22 + 1) = a5;
  *&v23 = a6(v15);
  LODWORD(v21) = a2;
  *(&v21 + 1) = a3;
  *&v22 = a4;
  v26 = a1;
  sub_2685BA80C(a3, a4);
  v16 = sub_2685B14F0(&v21, &v26, v27);
  a7(v27, a2, a3, a4, v16);
  *&v21 = *&v27[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v17 = sub_268689974();
  if (v18)
  {
    v19 = v17;
    v23 = v27[2];
    v24 = v27[3];
    v25 = v28;
    v21 = v27[0];
    v22 = v27[1];
    sub_2685B4DEC(&v21);

    return v19;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C218(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, uint64_t, unint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *(&v22 + 1) = a5;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  *&v23 = a6(v15);
  *&v22 = a4;
  v26 = a1;
  sub_2685BA80C(a3, a4);
  v16 = sub_2685B14F0(&v21, &v26, v27);
  a7(v27, a2, a3, a4, v16);
  *&v21 = *&v27[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v17 = sub_268689974();
  if (v18)
  {
    v19 = v17;
    v23 = v27[2];
    v24 = v27[3];
    v25 = v28;
    v21 = v27[0];
    v22 = v27[1];
    sub_2685B4DEC(&v21);

    return v19;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C3E8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v15 = sub_2686899A4();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  *(&v23 + 1) = a6;
  *&v24 = a7(v16);
  v17 = swift_allocObject();
  *&v22 = v17;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v27 = a1;

  sub_2685BA80C(a4, a5);
  sub_2685B14F0(&v22, &v27, v28);
  sub_26867CF00(v28, a2, a3, a4, a5);
  *&v22 = *&v28[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v18 = sub_268689974();
  if (v19)
  {
    v20 = v18;
    v24 = v28[2];
    v25 = v28[3];
    v26 = v29;
    v22 = v28[0];
    v23 = v28[1];
    sub_2685B4DEC(&v22);

    return v20;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C5E0(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v13 + 1) = &type metadata for Google_Protobuf_Any;
  *&v12 = a2;
  *(&v12 + 1) = a3;
  *&v14 = sub_2685CFD4C();
  *&v13 = a4;
  v17 = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v12, &v17, v18);
  sub_26866A568(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  result = sub_268689974();
  if (v10)
  {
    v11 = result;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C770(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2686899A4();
  MEMORY[0x28223BE20](v6 - 8);
  *(&v13 + 1) = &type metadata for Google_Protobuf_Empty;
  *&v14 = sub_268648498();
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v17 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v12, &v17, v18);
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v19 == 1)
  {
    sub_26863B108(a2, a3, v18);
  }

LABEL_11:
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C970(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, unint64_t, uint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *(&v22 + 1) = a5;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  *&v23 = a6(v15);
  *&v22 = a4;
  v26 = a1;
  sub_2685BA80C(a2, a3);

  v16 = sub_2685B14F0(&v21, &v26, v27);
  a7(v27, a2, a3, a4, v16);
  *&v21 = *&v27[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v17 = sub_268689974();
  if (v18)
  {
    v19 = v17;
    v23 = v27[2];
    v24 = v27[3];
    v25 = v28;
    v21 = v27[0];
    v22 = v27[1];
    sub_2685B4DEC(&v21);

    return v19;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CB48(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  MEMORY[0x28223BE20](v8 - 8);
  *(&v14 + 1) = &type metadata for Google_Protobuf_Struct;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  *&v15 = sub_268653C98();
  *&v14 = a4;
  v18 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v13, &v18, v19);
  sub_26867F274(v19, a2, a3, a4);
  *&v13 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v19[2];
    v16 = v19[3];
    v17 = v20;
    v13 = v19[0];
    v14 = v19[1];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CD0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void (*a9)(_OWORD *, uint64_t, uint64_t, uint64_t, unint64_t, __n128))
{
  v16 = sub_2686899A4();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  *(&v25 + 1) = a6;
  *&v26 = a7(v17);
  v18 = swift_allocObject();
  *&v24 = v18;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v29 = a1;
  sub_2685BA80C(a4, a5);
  v19 = sub_2685B14F0(&v24, &v29, v30);
  a9(v30, a2, a3, a4, a5, v19);
  *&v24 = *&v30[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0, MEMORY[0x277D83970]);
  v20 = sub_268689974();
  if (v21)
  {
    v22 = v20;
    v26 = v30[2];
    v27 = v30[3];
    v28 = v31;
    v24 = v30[0];
    v25 = v30[1];
    sub_2685B4DEC(&v24);

    return v22;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CF00(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v11);
    sub_2685B43A4(a2, a3);
    v12 = *v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v12;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
      *v7 = result;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v14 + 1;
    *(v12 + v14 + 32) = 10;
    *v7 = v12;
  }

  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = *(a4 + 16);
    v17 = *(a4 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a5 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    v16 = a4;
    v17 = a4 >> 32;
  }

  if (v16 == v17)
  {
    return result;
  }

LABEL_17:
  if (*(v7 + 64) == 1)
  {
    return sub_26863B108(a4, a5, v7);
  }

  return result;
}

void Google_Protobuf_Value.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v13 = v5;
    v12 = swift_allocObject();
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v12;
    v7 = v12;
    v5 = v13;
  }

  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;

  sub_2685D1170(v8, v9, v10, v11);
}

void Google_Protobuf_Value.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 40);
  *(a1 + 24) = v6;
  sub_2685D10A0(v3, v4, v5, v6);
}

uint64_t Google_Protobuf_NullValue.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Google_Protobuf_NullValue.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26867D1CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26867D1E4()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26867D1FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26867D218(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_26867D234()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D61D8F0](v3);
  return sub_268689EF4();
}

uint64_t sub_26867D284()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  return MEMORY[0x26D61D8F0](v1);
}

uint64_t sub_26867D2C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_268689E94();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x26D61D8F0](v4);
  return sub_268689EF4();
}

BOOL sub_26867D30C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

uint64_t static Google_Protobuf_NullValue.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_28028D9E0 = a1;
}

uint64_t sub_26867D42C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_28028D9E0;
}

void sub_26867D4BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v5 = v3;
  sub_2685D10A0(v4[0], v1, v2, v3);
  Google_Protobuf_Value.kind.setter(v4);
}

void (*Google_Protobuf_Value.kind.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  *(v4 + 24) = v9;
  sub_2685D10A0(v6, v7, v8, v9);
  return sub_26867D59C;
}

void sub_26867D59C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[4];
  v27 = *(*a1 + 24);
  if (a2)
  {
    sub_2685D10A0(v4, v3, v5, *(*a1 + 24));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
    }

    else
    {
      v25 = v2[4];
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v19 = swift_allocObject();
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      *(v19 + 16) = v9;
      *(v19 + 24) = v10;
      *(v19 + 32) = v11;
      *(v19 + 40) = v12;
      sub_2685D10A0(v9, v10, v11, v12);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v25 + 16) = v19;
      v8 = v19;
    }

    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
    *(v8 + 40) = v27;
    sub_2685D1170(v9, v10, v11, v12);
    v20 = *v2;
    v21 = v2[1];
    v22 = v2[2];
    v23 = *(v2 + 24);
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + 16);
    if (v13)
    {
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *(v14 + 40);
    }

    else
    {
      v26 = v2[4];
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v24 = swift_allocObject();
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *(v14 + 40);
      *(v24 + 16) = v15;
      *(v24 + 24) = v16;
      *(v24 + 32) = v17;
      *(v24 + 40) = v18;
      sub_2685D10A0(v15, v16, v17, v18);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v26 + 16) = v24;
      v14 = v24;
    }

    *(v14 + 16) = v4;
    *(v14 + 24) = v3;
    *(v14 + 32) = v5;
    *(v14 + 40) = v27;
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
  }

  sub_2685D1170(v20, v21, v22, v23);

  free(v2);
}

void Google_Protobuf_Value.nullValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255 || (v5 >> 60) & 3 | (4 * (v6 & 1u)))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
  }
}

void sub_26867D7F4(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255 || (v5 >> 60) & 3 | (4 * (v6 & 1u)))
  {
    v3 = 0;
    LOBYTE(v4) = 1;
  }

  else
  {
    v7 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v7;
  }

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void Google_Protobuf_Value.nullValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v10 = swift_allocObject();
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    sub_2685D10A0(v6, v7, v8, v9);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v10;
    v5 = v10;
  }

  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;

  sub_2685D1170(v6, v7, v8, v9);
}

void (*Google_Protobuf_Value.nullValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if ((~v6 & 0x3000000000000000) == 0 && v7 == 255 || (v6 >> 60) & 3 | (4 * (v7 & 1u)))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v5 & 1;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  return sub_26867DA04;
}

void sub_26867DA04(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v10 = swift_allocObject();
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    sub_2685D10A0(v6, v7, v8, v9);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v10;
    v5 = v10;
  }

  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;

  sub_2685D1170(v6, v7, v8, v9);
}

void Google_Protobuf_Value.numberValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 1)
  {
    sub_2685D10C8(v2, v3, v4, v5 & 1);
  }
}

void sub_26867DB68(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = 0;
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 1)
  {
    v7 = v3;
    v8 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v8;
  }

  *a2 = v7;
}

void Google_Protobuf_Value.numberValue.setter(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v9 = swift_allocObject();
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    sub_2685D10A0(v5, v6, v7, v8);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v9;
    v4 = v9;
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = xmmword_268692580;
  *(v4 + 40) = 0;

  sub_2685D1170(v5, v6, v7, v8);
}

void (*Google_Protobuf_Value.numberValue.modify(uint64_t *a1))(double *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = 0;
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 1)
  {
    v8 = v4;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  *a1 = v8;
  return sub_26867DD68;
}

uint64_t Google_Protobuf_Value.stringValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if ((~v4 & 0x3000000000000000) == 0 && v5 == 255 || ((v4 >> 60) & 3 | (4 * (v5 & 1u))) != 2)
  {
    return 0;
  }

  sub_2685D10C8(v2, v3, v4, v5 & 1);
  return v2;
}

void sub_26867DE04(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 2)
  {
    v7 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v7;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
}

void Google_Protobuf_Value.stringValue.setter(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    sub_2685D10A0(v7, v8, v9, v10);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v2 + 16) = v11;
    v6 = v11;
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0x2000000000000000;
  *(v6 + 40) = 0;

  sub_2685D1170(v7, v8, v9, v10);
}

void (*Google_Protobuf_Value.stringValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 2)
  {
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_26867E01C;
}

void sub_26867E01C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    Google_Protobuf_Value.stringValue.setter(v3, v2);
  }

  else
  {
    Google_Protobuf_Value.stringValue.setter(*a1, v2);
  }
}

uint64_t Google_Protobuf_Value.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 3)
  {
    sub_2685D10C8(v3, v2, v4, v5 & 1);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void sub_26867E0F8(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 3)
  {
    v7 = a2;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a2 = v7;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4 & 1;
}

void Google_Protobuf_Value.BOOLValue.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v9 = swift_allocObject();
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    *(v9 + 32) = v7;
    *(v9 + 40) = v8;
    sub_2685D10A0(v5, v6, v7, v8);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v9;
    v4 = v9;
  }

  *(v4 + 16) = a1 & 1;
  *(v4 + 24) = xmmword_268692590;
  *(v4 + 40) = 0;

  sub_2685D1170(v5, v6, v7, v8);
}

void (*Google_Protobuf_Value.BOOLValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 3)
  {
    v7 = a1;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a1 = v7;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_26867E30C;
}

double Google_Protobuf_Value.structValue.getter@<D0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;

    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
    result = 0.0;
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return result;
}

unint64_t sub_26867E3CC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    sub_2685D10C8(v5, v4, v6, v7 & 1);
    result = v5;
  }

  else
  {
    result = sub_2686892D4(MEMORY[0x277D84F90]);
    v4 = 0;
    v6 = 0xC000000000000000;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v6;
  return result;
}

void Google_Protobuf_Value.structValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    sub_2685D10A0(v7, v8, v9, v10);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v11;
    v6 = v11;
  }

  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = 1;

  sub_2685D1170(v7, v8, v9, v10);
}

void (*Google_Protobuf_Value.structValue.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return sub_26867E600;
}

void sub_26867E600(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    sub_2685BA80C(v2, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v18 = swift_allocObject();
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
      *(v18 + 16) = v8;
      *(v18 + 24) = v9;
      *(v18 + 32) = v10;
      *(v18 + 40) = v11;
      sub_2685D10A0(v8, v9, v10, v11);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v18;
      v7 = v18;
    }

    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v4;
    *(v7 + 40) = 1;
    sub_2685D1170(v8, v9, v10, v11);

    sub_2685B593C(v2, v4);
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 16);
    if (v12)
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v19 = swift_allocObject();
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      *(v19 + 16) = v14;
      *(v19 + 24) = v15;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      sub_2685D10A0(v14, v15, v16, v17);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v19;
      v13 = v19;
    }

    *(v13 + 16) = v3;
    *(v13 + 24) = v2;
    *(v13 + 32) = v4;
    *(v13 + 40) = 1;

    sub_2685D1170(v14, v15, v16, v17);
  }
}

double Google_Protobuf_Value.listValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 5)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
  }

  else
  {
    *a1 = MEMORY[0x277D84F90];
    result = 0.0;
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return result;
}

void sub_26867E860(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 5)
  {
    v7 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a2 = v8;
  }

  else
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    v7 = 0xC000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v7;
}

uint64_t sub_26867E8F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;

  sub_2685BA80C(v6, v7);
  return a5(v9);
}

void Google_Protobuf_Value.listValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    sub_2685D10A0(v7, v8, v9, v10);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v11;
    v6 = v11;
  }

  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4 | 0x1000000000000000;
  *(v6 + 40) = 1;

  sub_2685D1170(v7, v8, v9, v10);
}

void (*Google_Protobuf_Value.listValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 5)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return sub_26867EAF8;
}

void sub_26867EAF8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    sub_2685BA80C(v2, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v18 = swift_allocObject();
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v11 = *(v7 + 40);
      *(v18 + 16) = v8;
      *(v18 + 24) = v9;
      *(v18 + 32) = v10;
      *(v18 + 40) = v11;
      sub_2685D10A0(v8, v9, v10, v11);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v18;
      v7 = v18;
    }

    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v4 | 0x1000000000000000;
    *(v7 + 40) = 1;
    sub_2685D1170(v8, v9, v10, v11);

    sub_2685B593C(v2, v4);
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + 16);
    if (v12)
    {
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v19 = swift_allocObject();
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      *(v19 + 16) = v14;
      *(v19 + 24) = v15;
      *(v19 + 32) = v16;
      *(v19 + 40) = v17;
      sub_2685D10A0(v14, v15, v16, v17);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v19;
      v13 = v19;
    }

    *(v13 + 16) = v3;
    *(v13 + 24) = v2;
    *(v13 + 32) = v4 | 0x1000000000000000;
    *(v13 + 40) = 1;

    sub_2685D1170(v14, v15, v16, v17);
  }
}

uint64_t Google_Protobuf_Value.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Value.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

BOOL sub_26867ED90(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v5, v6);
  v7 = sub_2686131DC(v3, v4, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v3, v4);
  return v7;
}

uint64_t Google_Protobuf_ListValue.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_ListValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t static Google_Protobuf_NullValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028D9F0;
  v2 = qword_28028D9F8;
  v3 = unk_28028DA00;
  *a1 = qword_28028D9E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26867EF6C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028D9F0;
  v2 = qword_28028D9F8;
  v3 = unk_28028DA00;
  *a1 = qword_28028D9E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Struct._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA10;
  v2 = qword_28028DA18;
  v3 = unk_28028DA20;
  *a1 = qword_28028DA08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Struct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        v10 = *(a3 + 456);
        v11 = sub_268653CEC();
        v12 = sub_268682404();
        v10(v3, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v11, v12, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26867F1C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (*(a2 + 16))
  {
    MEMORY[0x26D61D8F0](1);
    result = sub_268612CF4(v6, a2);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t *sub_26867F274(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!*(a2 + 16) || (result = sub_268639B80(a2, 1, result), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4, v7);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Struct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (!*(*v3 + 16) || (v11 = *(a3 + 424), v12 = sub_268653CEC(), v13 = sub_268682404(), result = v11(v9, 1, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v12, v13, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v10);
  }

  return result;
}

uint64_t Google_Protobuf_Struct.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26867F1C8(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

double sub_26867F4C4@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26867F54C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA10;
  v2 = qword_28028DA18;
  v3 = unk_28028DA20;
  *a1 = qword_28028DA08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA30;
  v2 = qword_28028DA38;
  v3 = unk_28028DA40;
  *a1 = qword_28028DA28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26867F760()
{
  sub_2685D1170(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void Google_Protobuf_Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 16);
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v10 = swift_allocObject();
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = v13;
    *(v10 + 40) = v14;
    sub_2685D10A0(v11, v12, v13, v14);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v3 + 16) = v10;
    v8 = v10;
  }

  sub_26867F860(v8, a1, a2, a3);
}

void sub_26867F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = v8(a3, a4);
  if (!v4)
  {
    v45 = a4 + 8;
    v42 = v8;
    while (1)
    {
      if (v10)
      {
        return;
      }

      if (v9 > 3)
      {
        switch(v9)
        {
          case 4:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            LOBYTE(v43) = 2;
            (*(a4 + 320))(&v43, a3, a4);
            if (v43 != 2)
            {
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43 & 1;
              v24 = xmmword_268692590;
              goto LABEL_39;
            }

            break;
          case 5:
            v43 = 0;
            v44 = 0uLL;
            v25 = *(a1 + 32);
            v26 = *(a1 + 40);
            if ((~v25 & 0x3000000000000000) != 0 || v26 != 255)
            {
              v41 = *(a4 + 8);
              v27 = *(a1 + 16);
              v28 = *(a1 + 24);
              sub_2685D10C8(v27, v28, v25, v26 & 1);
              v41(a3, a4);
              if (((v25 >> 60) & 3 | (4 * (v26 & 1u))) == 4)
              {
                sub_268601BC8(v43, v44, *(&v44 + 1));
                v43 = v27;
                *&v44 = v28;
                *(&v44 + 1) = v25;
              }

              else
              {
                sub_2685D1170(v27, v28, v25, v26);
              }
            }

            v37 = *(a4 + 408);
            v38 = sub_268653C98();
            v37(&v43, &type metadata for Google_Protobuf_Struct, v38, a3, a4);
            if (v43)
            {
              v39 = *(a1 + 16);
              v34 = *(a1 + 24);
              v35 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v44;
              v36 = *(a1 + 40);
              *(a1 + 40) = 1;
              v33 = v39;
LABEL_4:
              sub_2685D1170(v33, v34, v35, v36);
            }

LABEL_5:
            v8 = v42;
            break;
          case 6:
            v43 = 0;
            v44 = 0uLL;
            v17 = *(a1 + 32);
            v18 = *(a1 + 40);
            if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
            {
              v40 = *(a4 + 8);
              v19 = *(a1 + 16);
              v20 = *(a1 + 24);
              sub_2685D10C8(v19, v20, v17, v18 & 1);
              v40(a3, a4);
              if (((v17 >> 60) & 3 | (4 * (v18 & 1u))) == 5)
              {
                sub_268601BC8(v43, v44, *(&v44 + 1));
                v43 = v19;
                *&v44 = v20;
                *(&v44 + 1) = v17 & 0xCFFFFFFFFFFFFFFFLL;
              }

              else
              {
                sub_2685D1170(v19, v20, v17, v18);
              }
            }

            v29 = *(a4 + 408);
            v30 = sub_268653C44();
            v29(&v43, &type metadata for Google_Protobuf_ListValue, v30, a3, a4);
            if (v43)
            {
              v31 = v44;
              v32 = *(&v44 + 1) | 0x1000000000000000;
              v33 = *(a1 + 16);
              v34 = *(a1 + 24);
              v35 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v31;
              *(a1 + 32) = v32;
              v36 = *(a1 + 40);
              *(a1 + 40) = 1;
              goto LABEL_4;
            }

            goto LABEL_5;
        }
      }

      else
      {
        switch(v9)
        {
          case 1:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            LOWORD(v44) = 256;
            v21 = *(a4 + 392);
            v22 = sub_268682FC8();
            v21(&v43, &type metadata for Google_Protobuf_NullValue, v22, a3, a4);
            if ((BYTE1(v44) & 1) == 0)
            {
              v23 = v44 & 1;
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v23;
              *(a1 + 32) = 0;
              goto LABEL_40;
            }

            break;
          case 2:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            LOBYTE(v44) = 1;
            (*(a4 + 56))(&v43, a3, a4);
            if ((v44 & 1) == 0)
            {
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              v24 = xmmword_268692580;
LABEL_39:
              *(a1 + 24) = v24;
LABEL_40:
              v15 = *(a1 + 40);
              *(a1 + 40) = 0;
LABEL_41:
              sub_2685D1170(v16, v12, v14, v15);
            }

            break;
          case 3:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            *&v44 = 0;
            (*(a4 + 344))(&v43, a3, a4);
            v11 = v44;
            if (v44)
            {
              v13 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v11;
              *(a1 + 32) = 0x2000000000000000;
              v15 = *(a1 + 40);
              *(a1 + 40) = 0;
              v16 = v13;
              goto LABEL_41;
            }

            break;
        }
      }

      v9 = v8(a3, a4);
    }
  }
}

void sub_26867FE90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_26868005C(a4, a1);
  if (!v4)
  {
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 != 2)
      {
        return;
      }

      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      if (!v7)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_11:
        sub_268689844();
        return;
      }

      v8 = a2;
      v9 = a2 >> 32;
    }

    if (v8 == v9)
    {
      return;
    }

    goto LABEL_11;
  }
}

void sub_26867FF28(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_268680248(a4, a1);
  if (!v4)
  {
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return;
      }

      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

        goto LABEL_11;
      }

      v9 = a2;
      v10 = a2 >> 32;
    }

    if (v9 == v10)
    {
      return;
    }

LABEL_11:
    if (*(a1 + 64) == 1)
    {
      sub_26863B108(a2, a3, a1);
    }
  }
}

void Google_Protobuf_Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  sub_268680548(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_2685B593C(v9, v8);
  }
}

void sub_26868005C(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 40);
  if ((~v6 & 0x3000000000000000) == 0 && v7 == 255)
  {
    return;
  }

  v8 = (v6 >> 60) & 3 | (4 * (v7 & 1));
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      MEMORY[0x26D61D8F0](4);
      sub_268689EB4();
      return;
    }

    if (v8 != 4)
    {
      MEMORY[0x26D61D8F0](6);
      sub_2685D10C8(v4, v5, v6, v7 & 1);
      sub_2685DCAD0(a2, v4, v5, v6 & 0xCFFFFFFFFFFFFFFFLL);
      goto LABEL_21;
    }

    MEMORY[0x26D61D8F0](5);
    v10 = *(a2 + 48);
    v17 = *(a2 + 32);
    v18 = v10;
    v19 = *(a2 + 64);
    v11 = *(a2 + 16);
    v15 = *a2;
    v16 = v11;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
    sub_26867F1C8(&v15, v4, v5, v6);
    if (v2)
    {
      MEMORY[0x26D61DC90](v2);
    }

    sub_2685D1170(v4, v5, v6, v7);
    v13 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v13;
    *(a2 + 64) = v19;
    v14 = v16;
    *a2 = v15;
    *(a2 + 16) = v14;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        MEMORY[0x26D61D8F0](2);
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        MEMORY[0x26D61D920](v9);
        return;
      }

      MEMORY[0x26D61D8F0](3);
      sub_2685D10C8(v4, v5, v6, v7 & 1);
      sub_268689A24();
LABEL_21:
      sub_2685D1170(v4, v5, v6, v7);
      return;
    }

    MEMORY[0x26D61D8F0](1);
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4;
    }

    MEMORY[0x26D61D8F0](v12);
  }
}

void sub_268680248(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 40);
  if ((~v5 & 0x3000000000000000) != 0 || v6 != 255)
  {
    v7 = (v5 >> 60) & 3 | (4 * (v6 & 1));
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        sub_2685B33F4(v3 & 1, 4);
      }

      else
      {
        v10 = v6 & 1;
        v11 = *(result + 16);
        if (v7 == 4)
        {
          sub_2685D10C8(v11, v4, v5, v10);
          v12 = &type metadata for Google_Protobuf_Struct;
          v13 = sub_268653C98;
          v14 = sub_26867F274;
          v15 = v3;
          v16 = v4;
          v17 = v5;
          v18 = 5;
        }

        else
        {
          sub_2685D10C8(v11, v4, v5, v10);
          v12 = &type metadata for Google_Protobuf_ListValue;
          v13 = sub_268653C44;
          v14 = sub_268680F8C;
          v17 = v5 & 0xCFFFFFFFFFFFFFFFLL;
          v15 = v3;
          v16 = v4;
          v18 = 6;
        }

        sub_26867440C(v15, v16, v17, v18, v12, v13, v14);
        sub_2685D1170(v3, v4, v5, v6);
      }
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          sub_2685B301C(2);
          v9 = sub_2685B403C(": ", 2, v8);
          sub_2686639C4(v9, *&v3);
        }

        else
        {
          sub_2685D10C8(*(result + 16), v4, v5, v6 & 1);
          sub_2685B301C(3);
          sub_2685B403C(": ", 2, v25);
          sub_2685B43A4(v3, v4);
          sub_2685D1170(v3, v4, v5, v6);
        }

        v26 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
          *a2 = v26;
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v26);
          *a2 = v26;
        }

        *(v26 + 2) = v29 + 1;
        v24 = &v26[v29];
      }

      else
      {
        sub_2685B301C(1);
        sub_2685B403C(": ", 2, v19);
        sub_2686716A8(v3, v4 & 1);
        v20 = *a2;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v20;
        if ((v21 & 1) == 0)
        {
          v20 = sub_2685B3F48(0, *(v20 + 2) + 1, 1, v20);
          *a2 = v20;
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_2685B3F48((v22 > 1), v23 + 1, 1, v20);
          *a2 = v20;
        }

        *(v20 + 2) = v23 + 1;
        v24 = &v20[v23];
      }

      v24[32] = 10;
    }
  }
}

void sub_268680548(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v7 = *(result + 40);
  if ((~v6 & 0x3000000000000000) != 0 || v7 != 255)
  {
    v8 = (v6 >> 60) & 3 | (4 * (v7 & 1));
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        (*(a4 + 104))(*(result + 16) & 1, 4, a3);
      }

      else if (v8 == 4)
      {
        v22 = *(result + 16);
        v23 = v5;
        v24 = v6;
        v10 = *(a4 + 136);
        v12 = sub_268653C98();
        v10(&v22, 5, &type metadata for Google_Protobuf_Struct, v12, a3, a4);
      }

      else
      {
        v22 = *(result + 16);
        v23 = v5;
        v24 = v6 & 0xCFFFFFFFFFFFFFFFLL;
        v19 = *(a4 + 136);
        v21 = sub_268653C44();
        v19(&v22, 6, &type metadata for Google_Protobuf_ListValue, v21, a3, a4);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        (*(a4 + 16))(2, a3, a4, *(result + 16));
      }

      else
      {
        v25 = *(a4 + 112);
        sub_2685D10C8(v4, v5, v6, v7 & 1);
        v25(v4, v5, 3, a3, a4);
        sub_2685D1170(v4, v5, v6, v7);
      }
    }

    else
    {
      v22 = *(result + 16);
      LOBYTE(v23) = v5 & 1;
      v13 = *(a4 + 128);
      v16 = sub_268682FC8();
      v13(&v22, 1, &type metadata for Google_Protobuf_NullValue, v16, a3, a4);
    }
  }
}

BOOL sub_268680770(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((~v4 & 0x3000000000000000) == 0 && v5 == 255)
  {
    sub_2685D10A0(*(a1 + 16), v2, v4, 255);
    if ((~v8 & 0x3000000000000000) == 0 && v9 == 255)
    {
      sub_2685D10A0(v7, v6, v8, 255);
      sub_2685D1170(v3, v2, v4, 255);
      return 1;
    }

    sub_2685D10A0(v7, v6, v8, v9);
    goto LABEL_12;
  }

  v16 = *(a1 + 16);
  v17 = v2;
  v18 = v4;
  v19 = v5;
  if ((~v8 & 0x3000000000000000) == 0 && v9 == 255)
  {
    sub_2685D10A0(v3, v2, v4, v5);
    sub_2685D10A0(v7, v6, v8, 255);
    sub_2685D10A0(v3, v2, v4, v5);
    sub_2685D1198(v3, v2, v4, v5 & 1);
LABEL_12:
    sub_2685D1170(v3, v2, v4, v5);
    sub_2685D1170(v7, v6, v8, v9);
    return 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = v8;
  v15 = v9 & 1;
  sub_2685D10A0(v3, v2, v4, v5);
  sub_2685D10A0(v7, v6, v8, v9);
  sub_2685D10A0(v3, v2, v4, v5);
  v10 = _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(&v16, &v12);
  sub_2685D1198(v12, v13, v14, v15);
  sub_2685D1198(v16, v17, v18, v19);
  sub_2685D1170(v3, v2, v4, v5);
  return (v10 & 1) != 0;
}

uint64_t Google_Protobuf_Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_26868005C(v3, &v8);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_2;
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v6 = v1;
    v7 = v1 >> 32;
  }

  if (v6 != v7)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v16 = v11;
  v17 = v12;
  v14 = v9;
  v15 = v10;
  v13 = v8;
  return sub_268689EF4();
}

uint64_t sub_268680A74@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268680B04@<X0>(void *a1@<X8>)
{
  if (qword_28028BE70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA30;
  v2 = qword_28028DA38;
  v3 = unk_28028DA40;
  *a1 = qword_28028DA28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268680BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v6, v7);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_268680C94(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_268680D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v7, v8);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_ListValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA50;
  v2 = qword_28028DA58;
  v3 = unk_28028DA60;
  *a1 = qword_28028DA48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_ListValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        v10 = *(a3 + 416);
        v11 = sub_268653CEC();
        v10(v3, &type metadata for Google_Protobuf_Value, v11, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268680F8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!*(a2 + 16) || (result = sub_268678204(a2, 1, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4, v7);
    }
  }

  return result;
}

uint64_t Google_Protobuf_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (*(*v3 + 16))
  {
    v12 = *(a3 + 280);
    v13 = sub_268653CEC();
    result = v12(v9, 1, &type metadata for Google_Protobuf_Value, v13, a2, a3);
    if (v4)
    {
      return result;
    }

    v7 = a1;
  }

  sub_2685BA80C(v8, v10);
  UnknownStorage.traverse<A>(visitor:)(v7, a2, a3);
  return sub_2685B593C(v8, v10);
}

uint64_t Google_Protobuf_ListValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  sub_2685DCAD0(v5, v1, v2, v3);
  return sub_268689EF4();
}

uint64_t sub_2686811F0@<X0>(void *a1@<X8>)
{
  if (qword_28028BE78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA50;
  v2 = qword_28028DA58;
  v3 = unk_28028DA60;
  *a1 = qword_28028DA48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686812D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  sub_2685DCAD0(v5, v1, v2, v3);
  return sub_268689EF4();
}

uint64_t sub_268681334(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_268689E94();
  sub_2685DCAD0(v6, v2, v3, v4);
  return sub_268689EF4();
}

BOOL sub_2686813A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v7, v8);
  v9 = sub_2686131DC(v5, v6, v7, v8);
  sub_2685B593C(v7, v8);
  sub_2685B593C(v5, v6);
  return v9;
}

BOOL sub_268681448(uint64_t a1, uint64_t a2)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v78 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v79 = v8;
  while (1)
  {
    while (1)
    {
LABEL_6:
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v86 = (v7 - 1) & v7;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v4 >= v8)
        {
          return 1;
        }

        v11 = *(v78 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v86 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v3 + 56) + 24 * v12);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];

      v87 = v17;
      v88 = v18;
      sub_2685BA80C(v18, v17);
      v20 = v14 == 0;

      if (!v14)
      {
        return v20;
      }

      v21 = sub_2685C3084(v15, v14);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_90;
      }

      v24 = (*(v2 + 56) + 24 * v21);
      v25 = *v24;
      v89 = v24[1];
      v26 = v24[2];
      if (v26 == v19)
      {
        sub_2685BA80C(v25, v89);

        v40 = v87;
        goto LABEL_26;
      }

      v27 = *(v26 + 24);
      v28 = *(v26 + 32);
      LODWORD(v29) = *(v26 + 40);
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      v32 = *(v19 + 32);
      v33 = *(v19 + 40);
      v84 = *v24;
      v82 = v33;
      if ((~v28 & 0x3000000000000000) == 0 && v29 == 255)
      {
        v34 = v31;
        v35 = *(v26 + 24);
        v36 = v32;
        v77 = ~v32 & 0x3000000000000000;
        v37 = *(v26 + 16);
        sub_2685BA80C(v25, v89);
        swift_retain_n();

        v38 = v35;
        v39 = v35;
        v29 = v28;
        sub_2685D10A0(v37, v39, v28, 255);
        if (!v77 && v82 == 255)
        {
          sub_2685D10A0(v34, v30, v36, 255);
          sub_2685D1170(v37, v38, v28, 255);
          v3 = a1;
          v2 = a2;
          goto LABEL_25;
        }

        v69 = v34;
        v70 = v34;
        v71 = v36;
        v72 = v82;
        sub_2685D10A0(v70, v30, v36, v82);
        v73 = v38;
        v74 = v37;
        v31 = v69;
        v28 = v29;
        LOBYTE(v29) = -1;
LABEL_88:
        sub_2685D1170(v74, v73, v28, v29);
        sub_2685D1170(v31, v30, v71, v72);
        goto LABEL_89;
      }

      v41 = *(v26 + 16);
      *&v94 = v41;
      *(&v94 + 1) = v27;
      v42 = v27;
      v95 = v28;
      v96 = v29;
      if ((~v32 & 0x3000000000000000) == 0 && v33 == 255)
      {
        v71 = v32;
        sub_2685BA80C(v25, v89);
        swift_retain_n();

        v75 = v42;
        sub_2685D10A0(v41, v42, v28, v29);
        v72 = -1;
        sub_2685D10A0(v31, v30, v71, 255);
        sub_2685D10A0(v41, v75, v28, v29);
        sub_2685D1198(v41, v75, v28, v29 & 1);
        v74 = v41;
        v73 = v75;
        goto LABEL_88;
      }

      v90 = v31;
      v91 = v30;
      v92 = v32;
      v93 = v33 & 1;
      v43 = v25;
      v44 = v32;
      sub_2685BA80C(v43, v89);
      swift_retain_n();

      sub_2685D10A0(v41, v42, v28, v29);
      sub_2685D10A0(v31, v30, v44, v33);
      sub_2685D10A0(v41, v42, v28, v29);
      LOBYTE(v44) = _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(&v94, &v90);
      sub_2685D1198(v90, v91, v92, v93);
      sub_2685D1198(v94, *(&v94 + 1), v95, v96);
      sub_2685D1170(v41, v42, v28, v29);
      v3 = a1;
      v2 = a2;
      if ((v44 & 1) == 0)
      {
LABEL_89:

        sub_2685B593C(v84, v89);

LABEL_90:
        v68 = v87;
        v67 = v88;
        goto LABEL_91;
      }

LABEL_25:

      v8 = v79;
      v40 = v87;
      v25 = v84;
LABEL_26:
      v45 = v89 >> 62;
      v46 = v40 >> 62;
      if (v89 >> 62 != 3)
      {
        break;
      }

      if (v25)
      {
        v47 = 0;
      }

      else
      {
        v47 = v89 == 0xC000000000000000;
      }

      v48 = v47 && v40 >> 62 == 3;
      if (!v48 || (!v88 ? (v49 = v40 == 0xC000000000000000) : (v49 = 0), !v49))
      {
LABEL_50:
        v52 = 0;
        if (v46 > 1)
        {
          goto LABEL_51;
        }

LABEL_48:
        if (!v46)
        {
          v56 = BYTE6(v40);
          goto LABEL_57;
        }

        LODWORD(v56) = HIDWORD(v88) - v88;
        if (!__OFSUB__(HIDWORD(v88), v88))
        {
          v56 = v56;
          goto LABEL_57;
        }

LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      sub_2685B593C(0, 0xC000000000000000);

      v50 = 0;
      v51 = 0xC000000000000000;
LABEL_64:
      sub_2685B593C(v50, v51);

      v7 = v86;
    }

    if (v45 > 1)
    {
      if (v45 != 2)
      {
        goto LABEL_50;
      }

      v54 = *(v25 + 16);
      v53 = *(v25 + 24);
      v55 = __OFSUB__(v53, v54);
      v52 = v53 - v54;
      if (!v55)
      {
        if (v46 > 1)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      goto LABEL_97;
    }

    if (v45)
    {
      LODWORD(v52) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_98;
      }

      v52 = v52;
      if (v46 <= 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v52 = BYTE6(v89);
      if (v46 <= 1)
      {
        goto LABEL_48;
      }
    }

LABEL_51:
    if (v46 != 2)
    {
      if (!v52)
      {
LABEL_63:
        sub_2685B593C(v25, v89);

        v50 = v88;
        v51 = v40;
        goto LABEL_64;
      }

LABEL_85:
      sub_2685B593C(v25, v89);

      v67 = v88;
      v68 = v40;
LABEL_91:
      sub_2685B593C(v67, v68);

      return 0;
    }

    v58 = *(v88 + 16);
    v57 = *(v88 + 24);
    v55 = __OFSUB__(v57, v58);
    v56 = v57 - v58;
    if (v55)
    {
      goto LABEL_95;
    }

LABEL_57:
    if (v52 != v56)
    {
      goto LABEL_85;
    }

    if (v52 < 1)
    {
      goto LABEL_63;
    }

    if (v45 <= 1)
    {
      break;
    }

    if (v45 != 2)
    {
      *(&v94 + 6) = 0;
      *&v94 = 0;
      sub_2685BA80C(v25, v89);
      sub_2685BA80C(v88, v40);
      sub_268612934(&v94, v88, v40, &v90);
      sub_2685B593C(v88, v40);
      sub_2685B593C(v25, v89);
      sub_2685B593C(v25, v89);

      v59 = v88;
LABEL_81:
      sub_2685B593C(v59, v40);

      v66 = v90;
      goto LABEL_82;
    }

    v60 = v25;
    v61 = *(v25 + 16);
    v83 = *(v60 + 24);
    v85 = v60;
    sub_2685BA80C(v60, v89);
    sub_2685BA80C(v88, v40);
    v62 = sub_268689764();
    if (v62)
    {
      v63 = sub_268689794();
      if (__OFSUB__(v61, v63))
      {
        goto LABEL_101;
      }

      v62 += v61 - v63;
    }

    if (__OFSUB__(v83, v61))
    {
      goto LABEL_100;
    }

    sub_268689784();
    sub_268612934(v62, v88, v87, &v94);
    sub_2685B593C(v88, v87);
    sub_2685B593C(v85, v89);
    sub_2685B593C(v85, v89);

    sub_2685B593C(v88, v87);

    v7 = v86;
    v20 = 0;
    if ((v94 & 1) == 0)
    {
      return v20;
    }
  }

  if (!v45)
  {
    *&v94 = v25;
    DWORD2(v94) = v89;
    WORD6(v94) = WORD2(v89);
    sub_2685BA80C(v25, v89);
    sub_2685BA80C(v88, v40);
    sub_268612934(&v94, v88, v40, &v90);
    sub_2685B593C(v88, v40);
    sub_2685B593C(v25, v89);
    sub_2685B593C(v25, v89);

    v59 = v88;
    goto LABEL_81;
  }

  if (v25 >> 32 < v25)
  {
    goto LABEL_99;
  }

  sub_2685BA80C(v25, v89);
  sub_2685BA80C(v88, v40);
  v64 = sub_268689764();
  if (v64)
  {
    v65 = sub_268689794();
    if (__OFSUB__(v25, v65))
    {
      goto LABEL_102;
    }

    v64 += v25 - v65;
  }

  sub_268689784();
  sub_268612934(v64, v88, v87, &v94);
  sub_2685B593C(v88, v87);
  sub_2685B593C(v25, v89);
  sub_2685B593C(v25, v89);

  sub_2685B593C(v88, v87);

  v66 = v94;
LABEL_82:
  v7 = v86;
  v20 = 0;
  if (v66)
  {
    goto LABEL_6;
  }

  return v20;
}

uint64_t _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v27[0] = *a1;
  v27[1] = v3;
  v27[2] = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  if (v5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v4 >> 60) & 3 | v10;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (v9)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (((v8 >> 60) & 3 | v19) == 3)
      {
        sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
        v20 = v6 ^ v2 ^ 1;
        return v20 & 1;
      }

LABEL_55:
      sub_2685D10C8(v6, v7, v8, v9);
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      goto LABEL_56;
    }

    if (v11 == 4)
    {
      if (v9)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (((v8 >> 60) & 3 | v13) == 4)
      {
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        if (sub_268681448(v2, v6))
        {
          sub_2685BA80C(v3, v4);
          sub_2685BA80C(v7, v8);
          v14 = sub_2686131DC(v3, v4, v7, v8);
          sub_2685B593C(v7, v8);
          v15 = v3;
          v16 = v4;
          goto LABEL_49;
        }

        goto LABEL_58;
      }

      v23 = v3;
      v24 = v4;
    }

    else
    {
      if (v9)
      {
        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      if (((v8 >> 60) & 3 | v22) == 5)
      {
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        if (sub_26860EC6C(v2, v6))
        {
          sub_2685BA80C(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
          sub_2685BA80C(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          v14 = sub_2686131DC(v3, v4 & 0xCFFFFFFFFFFFFFFFLL, v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          sub_2685B593C(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          v16 = v4 & 0xCFFFFFFFFFFFFFFFLL;
          v15 = v3;
LABEL_49:
          sub_2685B593C(v15, v16);
          sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
          sub_2685D1198(v6, v7, v8, v9);
          sub_2685D1198(v2, v3, v4, v5);
          if (!v14)
          {
            goto LABEL_56;
          }

          goto LABEL_61;
        }

LABEL_58:
        sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
        sub_2685D1198(v6, v7, v8, v9);
        sub_2685D1198(v2, v3, v4, v5);
        goto LABEL_56;
      }

      v24 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v23 = v3;
    }

    sub_2685BA80C(v23, v24);
    goto LABEL_55;
  }

  if (!v11)
  {
    if (v9)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    if (!((v8 >> 60) & 3 | v17))
    {
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      if (v3)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2;
      }

      if (v7)
      {
        if (!v18)
        {
          goto LABEL_61;
        }
      }

      else if (v18 == v6)
      {
        goto LABEL_61;
      }

LABEL_56:
      v20 = 0;
      return v20 & 1;
    }

    goto LABEL_55;
  }

  if (v11 == 1)
  {
    if (v9)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    if (((v8 >> 60) & 3 | v12) == 1)
    {
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      if (*&v2 != *&v6)
      {
        goto LABEL_56;
      }

LABEL_61:
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_55;
  }

  if (v9)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  if (((v8 >> 60) & 3 | v21) != 2)
  {

    goto LABEL_55;
  }

  if (v2 == v6 && v3 == v7)
  {
    sub_2685D10C8(v2, v3, v8, v9);
    sub_2685D10C8(v2, v3, v4, v5);
    sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
    v20 = 1;
    return v20 & 1;
  }

  v26 = sub_268689E14();
  sub_2685D10C8(v6, v7, v8, v9);
  sub_2685D10C8(v2, v3, v4, v5);
  sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
  return v26 & 1;
}

BOOL _s20SiriOntologyProtobuf07Google_C6_ValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 != v7)
  {

    v8 = sub_268680770(v4, v7);

    if (!v8)
    {
      return 0;
    }
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v5, v6);
  v9 = sub_2686131DC(v2, v3, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v2, v3);
  return v9;
}

unint64_t sub_268682404()
{
  result = qword_28028DA68;
  if (!qword_28028DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA68);
  }

  return result;
}

unint64_t sub_268682484()
{
  result = qword_28028DA70;
  if (!qword_28028DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA70);
  }

  return result;
}

unint64_t sub_2686824D8()
{
  result = qword_28028DA78;
  if (!qword_28028DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA78);
  }

  return result;
}

unint64_t sub_268682530()
{
  result = qword_28028DA80;
  if (!qword_28028DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA80);
  }

  return result;
}

unint64_t sub_2686825C8(uint64_t a1)
{
  result = sub_2686825F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686825F0()
{
  result = qword_28028DA98;
  if (!qword_28028DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA98);
  }

  return result;
}

unint64_t sub_268682670()
{
  result = qword_28028DAA0;
  if (!qword_28028DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAA0);
  }

  return result;
}

unint64_t sub_2686826C8()
{
  result = qword_28028DAA8;
  if (!qword_28028DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAA8);
  }

  return result;
}

unint64_t sub_26868271C(uint64_t a1)
{
  result = sub_268682744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268682744()
{
  result = qword_28028DAB0;
  if (!qword_28028DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAB0);
  }

  return result;
}

unint64_t sub_2686827C8()
{
  result = qword_28028DAB8;
  if (!qword_28028DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAB8);
  }

  return result;
}

unint64_t sub_26868281C(uint64_t a1)
{
  result = sub_268682844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268682844()
{
  result = qword_28028DAC0;
  if (!qword_28028DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAC0);
  }

  return result;
}

uint64_t sub_2686828C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268682900()
{
  result = qword_28028DAC8;
  if (!qword_28028DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAC8);
  }

  return result;
}

unint64_t sub_268682958()
{
  result = qword_28028DAD0;
  if (!qword_28028DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAD0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_268682A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 25))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_268682A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_268682AC0(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 24) = (a2 & 4) != 0;
  return result;
}

uint64_t objectdestroyTm()
{
  sub_2685B593C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_48Tm()
{

  sub_2685B593C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_72Tm(uint64_t a1)
{

  sub_2685B593C(*(v1 + 24), *(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_100Tm()
{
  sub_2685B593C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 45, 7);
}

uint64_t objectdestroy_117Tm()
{

  sub_2685B593C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_268682FC8()
{
  result = qword_28028DC80;
  if (!qword_28028DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC80);
  }

  return result;
}

double Google_Protobuf_DoubleValue.init(floatLiteral:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26868305C()
{
  v1 = sub_2686899A4();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  sub_26863183C(v2, *v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v3 = sub_268689974();
  v5 = v4;

  if (v5)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_268683164@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

void sub_268683194()
{
  v2 = sub_2685BD964();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_2685BD298(), !v1))
  {
    *v0 = v3;
  }
}

double Google_Protobuf_FloatValue.init(floatLiteral:)@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_268683208()
{
  v1 = sub_2686899A4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2686317B0(*v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v2 = sub_268689974();
  v4 = v3;

  if (v4)
  {

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_268683310@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

void sub_268683340()
{
  v2 = sub_2685BD964();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_2685BCCA0(), !v1))
  {
    *v0 = v3;
  }
}

double Google_Protobuf_Int64Value.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Int64Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2686833B4()
{
  v1 = sub_2686899A4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_268631A50(*v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v2 = sub_268689974();
  v4 = v3;

  if (v4)
  {

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683500()
{
  v1 = sub_2686899A4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = *v0;
  v3 = sub_2685B3F48(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2685B3F48((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 34;
  v13 = v3;
  sub_2686328AC(v2);
  v6 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v6[v8 + 32] = 34;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v9 = sub_268689974();
  v11 = v10;

  if (v11)
  {

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_2685BD964())
  {
    result = 0;
  }

  else
  {
    result = a4();
    if (v5)
    {
      return result;
    }
  }

  *v4 = result;
  return result;
}

double Google_Protobuf_Int32Value.init(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Int32Value.init(integerLiteral:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

_OWORD *sub_2686837E8()
{
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_2685BC8CC();
  if (!v1)
  {
    if (result == result)
    {
      goto LABEL_3;
    }

    sub_2685BD910();
    swift_allocError();
    *v3 = xmmword_26868A590;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2686838C8()
{
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_2685BC45C();
  if (!v1)
  {
    if (!HIDWORD(result))
    {
      goto LABEL_3;
    }

    sub_2685BD910();
    swift_allocError();
    *v3 = xmmword_26868A590;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_BoolValue.init(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_BoolValue.init(BOOLeanLiteral:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double sub_268683984@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26868399C()
{
  if (*v0)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_2686839CC(uint64_t a1)
{
  v3 = v1;
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v3 = result & 1;
    return result;
  }

  if (*(a1 + 80))
  {
    result = sub_2685BDAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = sub_2685BD9D4();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return result;
}

double Google_Protobuf_StringValue.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

double Google_Protobuf_StringValue.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  return result;
}

void sub_268683AF8()
{
  v2 = v0;
  v3 = sub_2685BD964();
  if (v3)
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    sub_2685BC49C(v3);
    if (v1)
    {
      return;
    }

    v4 = v6;
    v5 = v7;
  }

  *v2 = v4;
  v2[1] = v5;
}

uint64_t Google_Protobuf_BytesValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = xmmword_26868A5E0;
  result = sub_2685B593C(0, 0xC000000000000000);
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_268683C44()
{
  result = qword_28028DC90;
  if (!qword_28028DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC90);
  }

  return result;
}

unint64_t sub_268683C9C()
{
  result = qword_28028DC98;
  if (!qword_28028DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC98);
  }

  return result;
}

uint64_t sub_268683CF4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_2686899A4();
  MEMORY[0x28223BE20](v4 - 8);
  a2(*v2, v2[1]);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v5 = sub_268689974();
  v7 = v6;

  if (v7)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683E04(uint64_t *a1)
{
  v3 = v1;
  v6 = a1 + 2;
  v5 = a1[2];
  v7 = a1[1];
  if (v5 != v7)
  {
    v8 = *a1;
    while (1)
    {
      v9 = *(v8 + v5);
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100002600;
      if (v10 || v11 == 0)
      {
        break;
      }

      *v6 = ++v5;
      if (v7 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v7 != v5 && *(*a1 + v5) == 110 && (sub_2685BD87C(&unk_287928360) & 1) != 0)
    {
      v16 = 0;
      v17 = 0xC000000000000000;
      goto LABEL_12;
    }
  }

LABEL_8:
  sub_2685BBB94();
  if (a1[2] == v7)
  {
    sub_2685BD910();
    swift_allocError();
    *v13 = xmmword_26868A580;
    return swift_willThrow();
  }

  result = sub_2685BA9B8(*a1, v7, v6, v7);
  if (!v2)
  {
    v16 = result;
    v17 = v15;
LABEL_12:
    result = sub_2685B593C(*v3, *(v3 + 8));
    *v3 = v16;
    *(v3 + 8) = v17;
  }

  return result;
}

uint64_t sub_26868413C(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_268684180(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    return 10;
  }

  if (a1 >> 35)
  {
    if (!(a1 >> 49))
    {
      result = 6;
      if (a1 >> 42)
      {
        return ++result;
      }

      return result;
    }

    v2 = a1 >> 28;
    result = 8;
  }

  else
  {
    v2 = a1;
    if (a1 < 0x200000)
    {
      result = 2;
      if (v2 < 0x4000)
      {
        return result;
      }

      return ++result;
    }

    result = 4;
  }

  if (v2 >> 28)
  {
    return ++result;
  }

  return result;
}

uint64_t BinaryDelimited.Error.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

uint64_t static BinaryDelimited.serialize(message:to:partial:)(void *a1, void *a2, char a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = Message.serializedData(partial:)(a3, v6, v7);
  if (!v3)
  {
    v10 = result;
    v11 = v9;
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_16;
      }

      v16 = *(result + 16);
      v15 = *(result + 24);
      v17 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
LABEL_11:
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = sub_268684180(v17);
        if (v12 != 2)
        {
          if (__OFSUB__(HIDWORD(v10), v10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v13 = HIDWORD(v10) - v10;
LABEL_19:
          v20 = (v14 + v13);
          if (!__OFADD__(v14, v13))
          {
            v48 = sub_2685B5DAC(v14 + v13);
            v49 = v21;
            sub_2685BA80C(v10, v11);
            sub_26865D790(&v48, v10, v11);
            v22 = v48;
            v23 = v49;
            v24 = v49 >> 62;
            if ((v49 >> 62) > 1)
            {
              if (v24 != 2)
              {
                goto LABEL_46;
              }

              v44 = a2;
              v27 = *(v48 + 16);
              v26 = *(v48 + 24);
              v28 = sub_268689764();
              if (v28)
              {
                v29 = sub_268689794();
                if (__OFSUB__(v27, v29))
                {
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v28 += v27 - v29;
              }

              v30 = __OFSUB__(v26, v27);
              v31 = v26 - v27;
              if (!v30)
              {
                v32 = sub_268689784();
                if (v28)
                {
                  v33 = v32 >= v31 ? v31 : v32;
                  if (v33 >= 1)
                  {
                    a2 = v44;
LABEL_43:
                    v25 = [a2 write:v28 maxLength:v20];
LABEL_44:
                    if (v25 == v20)
                    {
                      goto LABEL_56;
                    }

LABEL_49:
                    if (v25 == -1)
                    {
                      if ([a2 streamError])
                      {
                        swift_willThrow();
                        sub_2685B593C(v10, v11);
                        v40 = v22;
                        v41 = v23;
                        return sub_2685B593C(v40, v41);
                      }

                      sub_26868503C();
                      swift_allocError();
                      *v43 = 0;
LABEL_54:
                      swift_willThrow();
                      sub_2685B593C(v10, v11);
                      v40 = v48;
                      v41 = v49;
                      return sub_2685B593C(v40, v41);
                    }

LABEL_53:
                    sub_26868503C();
                    swift_allocError();
                    *v42 = 1;
                    goto LABEL_54;
                  }
                }

LABEL_46:
                if (!v20)
                {
                  goto LABEL_56;
                }

                goto LABEL_53;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (!v24)
            {
              v45 = v48;
              v46 = v49;
              v47 = WORD2(v49);
              if ((v49 & 0xFF000000000000) != 0)
              {
                v25 = [a2 write:&v45 maxLength:v20];
                goto LABEL_44;
              }

              v25 = 0;
              if (v20)
              {
                goto LABEL_49;
              }

LABEL_56:
              sub_2685B593C(v10, v11);
              return sub_2685B593C(v22, v23);
            }

            v34 = (v48 >> 32) - v48;
            if (v48 >> 32 >= v48)
            {
              v35 = sub_268689764();
              if (!v35)
              {
                sub_268689784();
                if (v20)
                {
                  goto LABEL_53;
                }

                goto LABEL_56;
              }

              v36 = v35;
              v37 = sub_268689794();
              if (!__OFSUB__(v22, v37))
              {
                v28 = v22 - v37 + v36;
                v38 = sub_268689784();
                if (v28)
                {
                  v39 = v38 >= v34 ? (v22 >> 32) - v22 : v38;
                  if (v39 >= 1)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_46;
              }

LABEL_66:
              __break(1u);
            }

            goto LABEL_62;
          }

          goto LABEL_60;
        }

        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        v13 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_16:
        v14 = sub_268684180(0);
        v13 = 0;
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v9);
      v14 = sub_268684180(BYTE6(v9));
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v17 = HIDWORD(v10) - v10;
    goto LABEL_11;
  }

  return result;
}

uint64_t static BinaryDelimited.parse<A>(messageType:from:extensions:partial:options:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = a3;
  v14 = *a4;
  v15 = *(a4 + 8);
  (*(a6 + 16))(a5, a6);
  v17 = v14;
  v18 = v15;
  result = static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(a7, a1, a2, v10, &v17, a5, a6);
  if (v7)
  {
    return (*(*(a5 - 8) + 8))(a7, a5);
  }

  return result;
}

uint64_t static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = *(a5 + 8);
  result = sub_268684910(a2);
  if (!v7)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v16 = result;
      v27 = sub_2685B5DAC(result);
      v28 = v17;
      v29 = 0;
      v18 = a2;
      sub_268684C30(&v27, &v29, v18, v16);
      if (v29 == v16)
      {
        v19 = v27;
        v20 = v28;
        v25 = v13;
        v26 = v14;
        Message.merge(serializedData:extensions:partial:options:)(v27, v28, a3, a4 & 1, &v25, a6, a7);
        v21 = v19;
        v22 = v20;
      }

      else
      {
        if (v29 == -1)
        {
          if (![v18 streamError])
          {
            sub_26868503C();
            swift_allocError();
            *v24 = 0;
          }
        }

        else
        {
          sub_26868503C();
          swift_allocError();
          *v23 = 1;
        }

        swift_willThrow();
        v21 = v27;
        v22 = v28;
      }

      return sub_2685B593C(v21, v22);
    }
  }

  return result;
}

uint64_t sub_268684910(void *a1)
{
  v3 = 1;
  v4 = swift_slowAlloc();
  v5 = [a1 read:v4 maxLength:1];
  if (v5 == -1)
  {
    goto LABEL_33;
  }

  if (v5 != 1)
  {
    goto LABEL_35;
  }

  v1 = *v4 & 0x7F;
  if ((*v4 & 0x80) != 0)
  {
    v3 = 1;
    v6 = [a1 read:v4 maxLength:1];
    if (v6 != -1)
    {
      if (v6 != 1)
      {
        goto LABEL_35;
      }

      v7 = *v4;
      v1 |= (v7 & 0x7F) << 7;
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      v3 = 1;
      v8 = [a1 read:v4 maxLength:1];
      if (v8 != -1)
      {
        if (v8 != 1)
        {
          goto LABEL_35;
        }

        v9 = *v4;
        v1 |= (v9 & 0x7F) << 14;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        v3 = 1;
        v10 = [a1 read:v4 maxLength:1];
        if (v10 != -1)
        {
          if (v10 != 1)
          {
            goto LABEL_35;
          }

          v11 = *v4;
          v1 |= (v11 & 0x7F) << 21;
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

          v3 = 1;
          v12 = [a1 read:v4 maxLength:1];
          if (v12 != -1)
          {
            if (v12 != 1)
            {
              goto LABEL_35;
            }

            v13 = *v4;
            v1 |= (v13 & 0x7F) << 28;
            if ((v13 & 0x80000000) == 0)
            {
              goto LABEL_4;
            }

            v3 = 1;
            v14 = [a1 read:v4 maxLength:1];
            if (v14 != -1)
            {
              if (v14 != 1)
              {
                goto LABEL_35;
              }

              v15 = *v4;
              v1 |= (v15 & 0x7F) << 35;
              if ((v15 & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              v3 = 1;
              v16 = [a1 read:v4 maxLength:1];
              if (v16 != -1)
              {
                if (v16 != 1)
                {
                  goto LABEL_35;
                }

                v17 = *v4;
                v1 |= (v17 & 0x7F) << 42;
                if ((v17 & 0x80000000) == 0)
                {
                  goto LABEL_4;
                }

                v3 = 1;
                v18 = [a1 read:v4 maxLength:1];
                if (v18 != -1)
                {
                  if (v18 != 1)
                  {
                    goto LABEL_35;
                  }

                  v19 = *v4;
                  v1 |= (v19 & 0x7F) << 49;
                  if ((v19 & 0x80000000) == 0)
                  {
                    goto LABEL_4;
                  }

                  v3 = 1;
                  v20 = [a1 read:v4 maxLength:1];
                  if (v20 != -1)
                  {
                    if (v20 != 1)
                    {
                      goto LABEL_35;
                    }

                    v21 = *v4;
                    v1 |= (v21 & 0x7F) << 56;
                    if ((v21 & 0x80000000) == 0)
                    {
                      goto LABEL_4;
                    }

                    v3 = 1;
                    v22 = [a1 read:v4 maxLength:1];
                    if (v22 != -1)
                    {
                      if (v22 == 1)
                      {
                        v23 = *v4;
                        if ((v23 & 0x80) == 0)
                        {
                          v1 |= v23 << 63;
                          goto LABEL_4;
                        }

                        sub_26861C77C();
                        swift_allocError();
                        *v26 = 3;
LABEL_36:
                        swift_willThrow();
                        MEMORY[0x26D61DE30](v4, -1, -1);
                        return v1;
                      }

LABEL_35:
                      sub_26868503C();
                      swift_allocError();
                      *v24 = v3;
                      goto LABEL_36;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_33:
    if ([a1 streamError])
    {
      goto LABEL_36;
    }

    v3 = 0;
    goto LABEL_35;
  }

LABEL_4:
  MEMORY[0x26D61DE30](v4, -1, -1);
  return v1;
}

void sub_268684C30(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v38 = a3;
      sub_2685B593C(v6, v5);
      v43 = v6;
      LOWORD(v44) = v5;
      BYTE2(v44) = BYTE2(v5);
      BYTE3(v44) = BYTE3(v5);
      BYTE4(v44) = BYTE4(v5);
      BYTE5(v44) = BYTE5(v5);
      BYTE6(v44) = BYTE6(v5);
      if ((v5 & 0xFF000000000000) != 0)
      {
        v8 = v38;
        v9 = [v38 read:&v43 maxLength:a4];
        v10 = v43;
        *a2 = v9;
        v11 = v44 | ((WORD2(v44) | (BYTE6(v44) << 16)) << 32);
      }

      else
      {
        v10 = v43;
        v11 = v44 | ((WORD2(v44) | (BYTE6(v44) << 16)) << 32);
        v8 = v38;
      }

      *a1 = v10;
      a1[1] = v11;
      return;
    }

    v25 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v26 = a3;
    sub_2685BA80C(v6, v5);
    sub_2685B593C(v6, v5);
    *a1 = xmmword_26868A5E0;
    sub_2685B593C(0, 0xC000000000000000);
    v27 = v26;
    v28 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v28 < v6)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (sub_268689764() && __OFSUB__(v6, sub_268689794()))
      {
LABEL_38:
        __break(1u);
      }

      sub_2686897B4();
      swift_allocObject();
      v29 = sub_268689744();

      v25 = v29;
    }

    v30 = v28 < v6;
    v31 = v28 - v6;
    if (!v30)
    {

      v32 = sub_268689764();
      if (v32)
      {
        v33 = v32;
        v34 = sub_268689794();
        v35 = v6 - v34;
        if (!__OFSUB__(v6, v34))
        {
          v36 = sub_268689784();
          if (v36 >= v31)
          {
            v37 = v31;
          }

          else
          {
            v37 = v36;
          }

          if (v37 >= 1)
          {
            *a2 = [v27 read:v33 + v35 maxLength:a4];
          }

          *a1 = v6;
          a1[1] = v25 | 0x4000000000000000;
          return;
        }

        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return;
    }

    goto LABEL_34;
  }

  if (v7 != 2)
  {

    return;
  }

  v12 = a3;

  sub_2685B593C(v6, v5);
  v43 = v6;
  v44 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  sub_2686897D4();
  v14 = v43;
  v13 = v44;
  v15 = *(v43 + 16);
  v16 = *(v43 + 24);
  v17 = sub_268689764();
  if (!v17)
  {

    __break(1u);
    goto LABEL_40;
  }

  v18 = v17;
  v19 = sub_268689794();
  v20 = v15 - v19;
  if (__OFSUB__(v15, v19))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v21 = __OFSUB__(v16, v15);
  v22 = v16 - v15;
  if (v21)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = sub_268689784();
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (v24 > 0)
  {
    *a2 = [v12 read:v18 + v20 maxLength:a4];
  }

  *a1 = v14;
  a1[1] = v13 | 0x8000000000000000;
}

unint64_t sub_26868503C()
{
  result = qword_28028DCA0;
  if (!qword_28028DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DCA0);
  }

  return result;
}

unint64_t sub_268685094()
{
  result = qword_28028DCA8;
  if (!qword_28028DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DCA8);
  }

  return result;
}

SiriOntologyProtobuf::JSONDecodingOptions __swiftcall JSONDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

uint64_t _NameMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InternPool();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v233 = v3;
  *(v3 + 16) = MEMORY[0x277D84F90];
  v239 = sub_268688CB0(v4);
  v5 = sub_268688E38(v4);
  v6 = sub_268688E38(v4);
  v235 = *(a1 + 16);
  if (!v235)
  {
LABEL_158:

    *a2 = v233;
    a2[1] = v239;
    a2[2] = v5;
    a2[3] = v6;
    return result;
  }

  v7 = 0;
  v234 = a1 + 32;
  v231 = a1;
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      goto LABEL_166;
    }

    v8 = v234 + 56 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 24);
    v12 = v11 >> 62;
    v243 = *v8;
    v244 = v10;
    v238 = v7;
    if ((v11 >> 62) <= 1)
    {
      if (v12)
      {
        if (v11)
        {
          goto LABEL_169;
        }

        if (!v10)
        {
          goto LABEL_174;
        }

        v256[0] = *(v8 + 8);
        v256[1] = v10;
        v257 = v11;
        v258 = 1;
        v35 = sub_268689D04();
        v37 = sub_2686864A8(v35, v36);
        v38 = v11;
        v40 = v39;

        v41 = sub_2686865D4(v37, v40);
        v43 = v42;

        v254[0] = v41;
        v254[1] = v43;
        v254[2] = v37;
        v254[3] = v40;
        v255 = 0;
        LOBYTE(v252) = 1;
        *&v259 = v41;
        *(&v259 + 1) = v43;
        v260 = v37;
        v261 = v40;
        v262 = 0;
        v263 = v250;
        v264 = WORD2(v250);
        v265 = v244;
        v266 = v244;
        v267 = v38;
        v268 = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v246 = v239;
        sub_268687BF4(&v259, v9, isUniquelyReferenced_nonNull_native);
        v239 = v246;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *&v246 = v5;
        sub_268687A84(v9, v256, v45);
        v5 = v246;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *&v246 = v6;
        sub_268687A84(v9, v256, v46);
        v47 = v246;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v246 = v47;
        sub_268687A84(v9, v254, v48);

        v6 = v246;
        goto LABEL_4;
      }

      if (v11)
      {
        goto LABEL_170;
      }

      v13 = *(v8 + 24);
      v14 = v10;
      if (!v10)
      {
        goto LABEL_172;
      }

      v251 = 1;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v250 = v239;
      v16 = sub_2685B351C(v9);
      v18 = *(v239 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_176;
      }

      v22 = v17;
      if (*(v239 + 24) >= v21)
      {
        if ((v15 & 1) == 0)
        {
          v201 = v16;
          sub_268688518();
          v16 = v201;
        }
      }

      else
      {
        sub_268686CE0(v21, v15);
        v16 = sub_2685B351C(v9);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_197;
        }
      }

      v58 = v13 | 0x100;
      if (v22)
      {
        v59 = a1;
        v239 = v250;
        v60 = v250[7] + 80 * v16;
        v246 = *v60;
        v62 = *(v60 + 32);
        v61 = *(v60 + 48);
        v63 = *(v60 + 16);
        *&v249[10] = *(v60 + 58);
        v248 = v62;
        *v249 = v61;
        v247 = v63;
        *v60 = v244;
        *(v60 + 16) = v244;
        *(v60 + 32) = v58;
        *(v60 + 38) = v253;
        *(v60 + 34) = v252;
        *(v60 + 40) = v244;
        *(v60 + 56) = v244;
        *(v60 + 72) = v13;
        *(v60 + 73) = v251;
        sub_268688FC4(&v246);
      }

      else
      {
        v69 = v250;
        v250[(v16 >> 6) + 8] |= 1 << v16;
        *(v69[6] + 8 * v16) = v9;
        v70 = v69[7] + 80 * v16;
        *v70 = v244;
        *(v70 + 16) = v244;
        *(v70 + 32) = v58;
        *(v70 + 34) = v252;
        *(v70 + 38) = v253;
        *(v70 + 40) = v244;
        *(v70 + 56) = v244;
        *(v70 + 72) = v13;
        *(v70 + 73) = v251;
        v71 = v69[2];
        v20 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v20)
        {
          goto LABEL_186;
        }

        v59 = a1;
        v239 = v69;
        v69[2] = v72;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      *&v246 = v5;
      v74 = sub_2685C32C0(v14, *(&v244 + 1));
      v76 = *(v5 + 16);
      v77 = (v75 & 1) == 0;
      v20 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v20)
      {
        goto LABEL_179;
      }

      v79 = v75;
      if (*(v5 + 24) >= v78)
      {
        v82 = v244;
        if ((v73 & 1) == 0)
        {
          v205 = v74;
          sub_268688394();
          v82 = v244;
          v74 = v205;
          a1 = v231;
          v81 = v243;
          v124 = v246;
          if (v79)
          {
            goto LABEL_68;
          }

          goto LABEL_136;
        }

        v81 = v243;
      }

      else
      {
        sub_2686869B4(v78, v73);
        v74 = sub_2685C32C0(v14, *(&v244 + 1));
        if ((v79 & 1) != (v80 & 1))
        {
          goto LABEL_196;
        }

        v81 = v243;
        v82 = v244;
      }

      a1 = v59;
      v124 = v246;
      if (v79)
      {
LABEL_68:
        v5 = v124;
        *(v124[7] + 8 * v74) = v81;
LABEL_138:
        v209 = swift_isUniquelyReferenced_nonNull_native();
        *&v246 = v6;
        v210 = sub_2685C32C0(v14, *(&v244 + 1));
        v212 = v6[2];
        v213 = (v211 & 1) == 0;
        v20 = __OFADD__(v212, v213);
        v214 = v212 + v213;
        if (v20)
        {
          goto LABEL_183;
        }

        v215 = v211;
        if (v6[3] >= v214)
        {
          v218 = v244;
          if ((v209 & 1) == 0)
          {
            v226 = v210;
            sub_268688394();
            v218 = v244;
            v210 = v226;
          }

          v217 = v13;
          v6 = v246;
          if ((v215 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          sub_2686869B4(v214, v209);
          v210 = sub_2685C32C0(v14, *(&v244 + 1));
          if ((v215 & 1) != (v216 & 1))
          {
            goto LABEL_196;
          }

          v217 = v13;
          v218 = v244;
          v6 = v246;
          if ((v215 & 1) == 0)
          {
LABEL_146:
            v6[(v210 >> 6) + 8] |= 1 << v210;
            v219 = v6[6] + 40 * v210;
            *v219 = v218;
            *(v219 + 16) = v218;
            *(v219 + 32) = v217;
            *(v219 + 33) = 1;
            *(v6[7] + 8 * v210) = v81;
            v220 = v6[2];
            v20 = __OFADD__(v220, 1);
            v200 = v220 + 1;
            if (v20)
            {
              goto LABEL_193;
            }

LABEL_147:
            v6[2] = v200;
            goto LABEL_4;
          }
        }

        *(v6[7] + 8 * v210) = v81;
        goto LABEL_4;
      }

LABEL_136:
      v124[(v74 >> 6) + 8] |= 1 << v74;
      v206 = v124[6] + 40 * v74;
      *v206 = v82;
      *(v206 + 16) = v82;
      *(v206 + 32) = v13;
      *(v206 + 33) = 1;
      *(v124[7] + 8 * v74) = v81;
      v207 = v124[2];
      v20 = __OFADD__(v207, 1);
      v208 = v207 + 1;
      if (v20)
      {
        goto LABEL_189;
      }

      v5 = v124;
      v124[2] = v208;
      goto LABEL_138;
    }

    v24 = *(v8 + 32);
    v237 = *(v8 + 48);
    if (v12 != 2)
    {
      break;
    }

    v25 = *(v8 + 32);
    if (!v24)
    {
      goto LABEL_168;
    }

    if ((v237 | v11))
    {
      goto LABEL_173;
    }

    v26 = v10;
    if (!v10)
    {
      goto LABEL_177;
    }

    v241 = *(v8 + 32);
    v251 = 1;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v250 = v239;
    v28 = sub_2685B351C(v9);
    v30 = *(v239 + 16);
    v31 = (v29 & 1) == 0;
    v20 = __OFADD__(v30, v31);
    v32 = v30 + v31;
    if (v20)
    {
      goto LABEL_178;
    }

    v33 = v29;
    if (*(v239 + 24) >= v32)
    {
      if ((v27 & 1) == 0)
      {
        v204 = v28;
        sub_268688518();
        v28 = v204;
        a1 = v231;
      }
    }

    else
    {
      sub_268686CE0(v32, v27);
      v28 = sub_2685B351C(v9);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_197;
      }
    }

    v100 = v237 | 0x100;
    if (v33)
    {
      v101 = a1;
      v239 = v250;
      v102 = v250[7] + 80 * v28;
      v246 = *v102;
      v104 = *(v102 + 32);
      v103 = *(v102 + 48);
      v105 = *(v102 + 16);
      *&v249[10] = *(v102 + 58);
      v248 = v104;
      *v249 = v103;
      v247 = v105;
      *v102 = v241;
      *(v102 + 16) = v241;
      *(v102 + 32) = v100;
      *(v102 + 38) = v253;
      *(v102 + 34) = v252;
      *(v102 + 40) = v244;
      *(v102 + 56) = v244;
      *(v102 + 72) = v11;
      *(v102 + 73) = v251;
      sub_268688FC4(&v246);
    }

    else
    {
      v106 = v250;
      v250[(v28 >> 6) + 8] |= 1 << v28;
      *(v106[6] + 8 * v28) = v9;
      v107 = v106[7] + 80 * v28;
      *v107 = v241;
      *(v107 + 16) = v241;
      *(v107 + 32) = v100;
      *(v107 + 34) = v252;
      *(v107 + 38) = v253;
      *(v107 + 40) = v244;
      *(v107 + 56) = v244;
      *(v107 + 72) = v11;
      *(v107 + 73) = v251;
      v108 = v106[2];
      v20 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (v20)
      {
        goto LABEL_188;
      }

      v101 = a1;
      v239 = v106;
      v106[2] = v109;
    }

    v110 = v5;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = v110;
    v112 = sub_2685C32C0(v26, *(&v244 + 1));
    v114 = *(v110 + 16);
    v115 = (v113 & 1) == 0;
    v20 = __OFADD__(v114, v115);
    v116 = v114 + v115;
    if (v20)
    {
      goto LABEL_181;
    }

    v117 = v113;
    if (*(v110 + 24) >= v116)
    {
      v119 = v244;
      if (v111)
      {
        v120 = v246;
        if (v113)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v223 = v112;
        sub_268688394();
        v119 = v244;
        v112 = v223;
        v101 = v231;
        v120 = v246;
        if (v117)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      sub_2686869B4(v116, v111);
      v112 = sub_2685C32C0(v26, *(&v244 + 1));
      if ((v117 & 1) != (v118 & 1))
      {
        goto LABEL_196;
      }

      v119 = v244;
      v120 = v246;
      if (v117)
      {
LABEL_80:
        v5 = v120;
        *(v120[7] + 8 * v112) = v243;
        goto LABEL_81;
      }
    }

    v120[(v112 >> 6) + 8] |= 1 << v112;
    v121 = v120[6] + 40 * v112;
    *v121 = v119;
    *(v121 + 16) = v119;
    *(v121 + 32) = v11;
    *(v121 + 33) = 1;
    *(v120[7] + 8 * v112) = v243;
    v122 = v120[2];
    v20 = __OFADD__(v122, 1);
    v123 = v122 + 1;
    if (v20)
    {
      goto LABEL_191;
    }

    v5 = v120;
    v120[2] = v123;
LABEL_81:
    v137 = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = v6;
    v138 = sub_2685C32C0(v26, *(&v244 + 1));
    v140 = v6[2];
    v141 = (v139 & 1) == 0;
    v20 = __OFADD__(v140, v141);
    v142 = v140 + v141;
    if (v20)
    {
      goto LABEL_184;
    }

    v143 = v139;
    if (v6[3] >= v142)
    {
      v145 = v244;
      if (v137)
      {
        v146 = v246;
        if ((v139 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v227 = v138;
        sub_268688394();
        v145 = v244;
        v138 = v227;
        v146 = v246;
        if ((v143 & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      sub_2686869B4(v142, v137);
      v138 = sub_2685C32C0(v26, *(&v244 + 1));
      if ((v143 & 1) != (v144 & 1))
      {
        goto LABEL_196;
      }

      v145 = v244;
      v146 = v246;
      if ((v143 & 1) == 0)
      {
LABEL_85:
        v146[(v138 >> 6) + 8] |= 1 << v138;
        v147 = v146[6] + 40 * v138;
        *v147 = v145;
        *(v147 + 16) = v145;
        *(v147 + 32) = v11;
        *(v147 + 33) = 1;
        v148 = v243;
        *(v146[7] + 8 * v138) = v243;
        v149 = v146[2];
        v20 = __OFADD__(v149, 1);
        v150 = v149 + 1;
        if (v20)
        {
          goto LABEL_194;
        }

        v146[2] = v150;
        goto LABEL_123;
      }
    }

    v148 = v243;
    *(v146[7] + 8 * v138) = v243;
LABEL_123:
    v189 = swift_isUniquelyReferenced_nonNull_native();
    *&v246 = v146;
    v190 = sub_2685C32C0(v25, v241.n128_u64[1]);
    v192 = v146[2];
    v193 = (v191 & 1) == 0;
    v20 = __OFADD__(v192, v193);
    v194 = v192 + v193;
    if (v20)
    {
      goto LABEL_185;
    }

    v195 = v191;
    a1 = v101;
    if (v146[3] >= v194)
    {
      v197 = v241;
      if (v189)
      {
        v6 = v246;
        if ((v191 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v228 = v190;
        sub_268688394();
        v197 = v241;
        v190 = v228;
        v6 = v246;
        if ((v195 & 1) == 0)
        {
          goto LABEL_127;
        }
      }
    }

    else
    {
      sub_2686869B4(v194, v189);
      v190 = sub_2685C32C0(v25, v241.n128_u64[1]);
      if ((v195 & 1) != (v196 & 1))
      {
        goto LABEL_196;
      }

      v197 = v241;
      v6 = v246;
      if ((v195 & 1) == 0)
      {
LABEL_127:
        v6[(v190 >> 6) + 8] |= 1 << v190;
        v198 = v6[6] + 40 * v190;
        *v198 = v197;
        *(v198 + 16) = v197;
        *(v198 + 32) = v237;
        *(v198 + 33) = 1;
        *(v6[7] + 8 * v190) = v148;
        v199 = v6[2];
        v20 = __OFADD__(v199, 1);
        v200 = v199 + 1;
        if (v20)
        {
          goto LABEL_195;
        }

        goto LABEL_147;
      }
    }

    *(v6[7] + 8 * v190) = v148;
LABEL_4:
    v7 = v238 + 1;
    if (v238 + 1 == v235)
    {
      goto LABEL_158;
    }
  }

  if (v11)
  {
    goto LABEL_167;
  }

  if (!v10)
  {
    goto LABEL_171;
  }

  v49 = *(v8 + 32);
  v251 = 1;
  v236 = v10;
  sub_268688F94(v10, *(&v10 + 1), v11, v24);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v250 = v239;
  v51 = sub_2685B351C(v9);
  v53 = *(v239 + 16);
  v54 = (v52 & 1) == 0;
  v20 = __OFADD__(v53, v54);
  v55 = v53 + v54;
  if (v20)
  {
    goto LABEL_175;
  }

  v56 = v52;
  if (*(v239 + 24) >= v55)
  {
    if ((v50 & 1) == 0)
    {
      v202 = v11;
      v203 = v51;
      sub_268688518();
      v51 = v203;
      v11 = v202;
    }
  }

  else
  {
    sub_268686CE0(v55, v50);
    v51 = sub_2685B351C(v9);
    if ((v56 & 1) != (v57 & 1))
    {
      goto LABEL_197;
    }
  }

  v64 = v11 | 0x100;
  if (v56)
  {
    v239 = v250;
    v65 = v250[7] + 80 * v51;
    v246 = *v65;
    v67 = *(v65 + 32);
    v66 = *(v65 + 48);
    v68 = *(v65 + 16);
    *&v249[10] = *(v65 + 58);
    v248 = v67;
    *v249 = v66;
    v247 = v68;
    *v65 = v244;
    *(v65 + 16) = v244;
    *(v65 + 32) = v64;
    *(v65 + 38) = v253;
    *(v65 + 34) = v252;
    *(v65 + 40) = v244;
    *(v65 + 56) = v244;
    *(v65 + 72) = v11;
    *(v65 + 73) = v251;
    sub_268688FC4(&v246);
  }

  else
  {
    v83 = v250;
    v250[(v51 >> 6) + 8] |= 1 << v51;
    *(v83[6] + 8 * v51) = v9;
    v84 = v83[7] + 80 * v51;
    *v84 = v244;
    *(v84 + 16) = v244;
    *(v84 + 32) = v64;
    *(v84 + 34) = v252;
    *(v84 + 38) = v253;
    *(v84 + 40) = v244;
    *(v84 + 56) = v244;
    *(v84 + 72) = v11;
    *(v84 + 73) = v251;
    v85 = v83[2];
    v20 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v20)
    {
      goto LABEL_187;
    }

    v239 = v83;
    v83[2] = v86;
  }

  v87 = swift_isUniquelyReferenced_nonNull_native();
  *&v246 = v5;
  v88 = sub_2685C32C0(v236, *(&v236 + 1));
  v90 = *(v5 + 16);
  v91 = (v89 & 1) == 0;
  v20 = __OFADD__(v90, v91);
  v92 = v90 + v91;
  if (v20)
  {
    goto LABEL_180;
  }

  v93 = v89;
  if (*(v5 + 24) >= v92)
  {
    v95 = v244;
    if (v87)
    {
      v96 = v246;
      if ((v89 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v221 = v11;
      v222 = v88;
      sub_268688394();
      v95 = v244;
      v88 = v222;
      v11 = v221;
      v96 = v246;
      if ((v93 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_71;
  }

  sub_2686869B4(v92, v87);
  v88 = sub_2685C32C0(v236, *(&v236 + 1));
  if ((v93 & 1) != (v94 & 1))
  {
    goto LABEL_196;
  }

  v95 = v244;
  v96 = v246;
  if (v93)
  {
LABEL_71:
    v5 = v96;
    *(v96[7] + 8 * v88) = v9;
    goto LABEL_72;
  }

LABEL_51:
  v96[(v88 >> 6) + 8] |= 1 << v88;
  v97 = v96[6] + 40 * v88;
  *v97 = v95;
  *(v97 + 16) = v95;
  *(v97 + 32) = v11;
  *(v97 + 33) = 1;
  *(v96[7] + 8 * v88) = v9;
  v98 = v96[2];
  v20 = __OFADD__(v98, 1);
  v99 = v98 + 1;
  if (v20)
  {
    goto LABEL_190;
  }

  v5 = v96;
  v96[2] = v99;
LABEL_72:
  v125 = swift_isUniquelyReferenced_nonNull_native();
  *&v246 = v6;
  v126 = sub_2685C32C0(v236, *(&v236 + 1));
  v128 = v6[2];
  v129 = (v127 & 1) == 0;
  v20 = __OFADD__(v128, v129);
  v130 = v128 + v129;
  if (v20)
  {
    goto LABEL_182;
  }

  v131 = v127;
  if (v6[3] >= v130)
  {
    v133 = v244;
    if (v125)
    {
      v6 = v246;
      if ((v127 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v224 = v11;
      v225 = v126;
      sub_268688394();
      v133 = v244;
      v126 = v225;
      v11 = v224;
      v6 = v246;
      if ((v131 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_89;
  }

  sub_2686869B4(v130, v125);
  v126 = sub_2685C32C0(v236, *(&v236 + 1));
  if ((v131 & 1) != (v132 & 1))
  {
    goto LABEL_196;
  }

  v133 = v244;
  v6 = v246;
  if (v131)
  {
LABEL_89:
    *(v6[7] + 8 * v126) = v9;
    goto LABEL_90;
  }

LABEL_76:
  v6[(v126 >> 6) + 8] |= 1 << v126;
  v134 = v6[6] + 40 * v126;
  *v134 = v133;
  *(v134 + 16) = v133;
  *(v134 + 32) = v11;
  *(v134 + 33) = 1;
  *(v6[7] + 8 * v126) = v9;
  v135 = v6[2];
  v20 = __OFADD__(v135, 1);
  v136 = v135 + 1;
  if (v20)
  {
    goto LABEL_192;
  }

  v6[2] = v136;
LABEL_90:
  v242 = *(v49 + 16);
  if (!v242)
  {
    v186 = *(&v236 + 1);
    v185 = v236;
    v187 = v11;
    v188 = v49;
LABEL_134:
    sub_268688FAC(v185, v186, v187, v188);
    a1 = v231;
    goto LABEL_4;
  }

  v232 = v11;
  v151 = 0;
  v152 = (v49 + 48);
  v240 = v49;
  while (2)
  {
    if (v151 < *(v49 + 16))
    {
      v153 = *v152;
      if (*v152)
      {
        goto LABEL_160;
      }

      v154 = *(v152 - 2);
      if (!v154)
      {
        goto LABEL_161;
      }

      v245 = *(v152 - 1);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      *&v246 = v5;
      v157 = sub_2685C32C0(v154, *(&v245 + 1));
      v158 = *(v5 + 16);
      v159 = (v156 & 1) == 0;
      v160 = v158 + v159;
      if (__OFADD__(v158, v159))
      {
        goto LABEL_162;
      }

      v161 = v156;
      if (*(v5 + 24) >= v160)
      {
        v164 = v245;
        if ((v155 & 1) == 0)
        {
          sub_268688394();
          goto LABEL_101;
        }
      }

      else
      {
        sub_2686869B4(v160, v155);
        v162 = sub_2685C32C0(v154, *(&v245 + 1));
        if ((v161 & 1) != (v163 & 1))
        {
          goto LABEL_196;
        }

        v157 = v162;
LABEL_101:
        v164 = v245;
      }

      v165 = v246;
      if (v161)
      {
        v166 = v6;
        v167 = v246;
        v168 = v243;
        *(*(v246 + 56) + 8 * v157) = v243;
      }

      else
      {
        *(v246 + 8 * (v157 >> 6) + 64) |= 1 << v157;
        v169 = v165[6] + 40 * v157;
        *v169 = v164;
        *(v169 + 16) = v164;
        *(v169 + 32) = v153;
        *(v169 + 33) = 1;
        v168 = v243;
        *(v165[7] + 8 * v157) = v243;
        v170 = v165[2];
        v20 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v20)
        {
          goto LABEL_164;
        }

        v166 = v6;
        v167 = v165;
        v165[2] = v171;
      }

      v172 = swift_isUniquelyReferenced_nonNull_native();
      *&v246 = v166;
      v173 = sub_2685C32C0(v154, *(&v245 + 1));
      v175 = v166[2];
      v176 = (v174 & 1) == 0;
      v20 = __OFADD__(v175, v176);
      v177 = v175 + v176;
      if (v20)
      {
        goto LABEL_163;
      }

      v178 = v174;
      if (v166[3] >= v177)
      {
        v5 = v167;
        v180 = v245;
        if (v172)
        {
          v6 = v246;
          if ((v174 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v184 = v173;
          sub_268688394();
          v180 = v245;
          v173 = v184;
          v6 = v246;
          if ((v178 & 1) == 0)
          {
            goto LABEL_114;
          }
        }
      }

      else
      {
        sub_2686869B4(v177, v172);
        v173 = sub_2685C32C0(v154, *(&v245 + 1));
        if ((v178 & 1) != (v179 & 1))
        {
          goto LABEL_196;
        }

        v5 = v167;
        v180 = v245;
        v6 = v246;
        if ((v178 & 1) == 0)
        {
LABEL_114:
          v6[(v173 >> 6) + 8] |= 1 << v173;
          v181 = v6[6] + 40 * v173;
          *v181 = v180;
          *(v181 + 16) = v180;
          *(v181 + 32) = v153;
          *(v181 + 33) = 1;
          *(v6[7] + 8 * v173) = v168;
          v182 = v6[2];
          v20 = __OFADD__(v182, 1);
          v183 = v182 + 1;
          if (v20)
          {
            goto LABEL_165;
          }

          v6[2] = v183;
          goto LABEL_93;
        }
      }

      *(v6[7] + 8 * v173) = v168;
LABEL_93:
      ++v151;
      v152 += 24;
      v49 = v240;
      if (v242 == v151)
      {
        v186 = *(&v236 + 1);
        v185 = v236;
        v187 = v232;
        v188 = v240;
        goto LABEL_134;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  sub_268689E34();
  __break(1u);
LABEL_197:
  result = sub_268689E34();
  __break(1u);
  return result;
}

unint64_t _NameMap.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternPool();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  *a1 = v2;
  a1[1] = sub_268688CB0(v3);
  a1[2] = sub_268688E38(v3);
  result = sub_268688E38(v3);
  a1[3] = result;
  return result;
}

uint64_t sub_2686864A8(uint64_t a1, uint64_t a2)
{

  v2 = sub_268689A74();
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      if (v2 == 95 && v4 == 0xE100000000000000 || (v7 = v2, (sub_268689E14() & 1) != 0))
      {

        v5 = 1;
      }

      else
      {
        if (v5)
        {
          v8 = sub_2686899D4();
          v10 = v9;

          MEMORY[0x26D61D4B0](v8, v10);
        }

        else
        {
          MEMORY[0x26D61D4B0](v7, v4);
        }

        v5 = 0;
      }

      v2 = sub_268689A74();
      v4 = v6;
    }

    while (v6);
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2686865D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v4 = swift_slowAlloc();
    result = sub_268689CF4();
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  sub_268689A84();
  v4 = swift_slowAlloc();
  sub_268689A84();
  result = sub_268689CF4();
  if (v12)
  {
    goto LABEL_13;
  }

  v3 = sub_268689A84();
LABEL_6:
  swift_beginAccess();
  v7 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_268665B20(0, *(v7 + 2) + 1, 1, v7);
    *(v2 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_268665B20((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = v4;
  *(v11 + 5) = v3;
  *(v2 + 16) = v7;
  swift_endAccess();
  return v4;
}

uint64_t sub_268686738()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      v4 = *(v1 + v3);
      if (v4)
      {
        MEMORY[0x26D61DE30](v4, -1, -1);
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_2686867DC(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  if (a3)
  {
    v5 = &a3[a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[a2];
  if (a1)
  {
    v7 = &a1[a2];
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (a3)
    {
      if (a3 == v5)
      {
        v8 = 0;
        v9 = 1;
        a3 = v4;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
        v12 = *a3++;
        v8 = v12;
        if (!a1)
        {
LABEL_16:
          v10 = 0;
          v11 = 1;
          if (v9)
          {
            return v11;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    if (a1 == v7)
    {
      v10 = 0;
      v11 = 1;
      a1 = v6;
      if (v9)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
      v13 = *a1++;
      v10 = v13;
      if (v9)
      {
        return v11;
      }
    }

LABEL_19:
    if (v8 != v10)
    {
      LODWORD(v11) = 1;
    }
  }

  while (v11 != 1);
  return 0;
}

uint64_t sub_268686888()
{
  v1 = *v0;
  if (*v0)
  {
    for (i = v0[1]; i; --i)
    {
      ++v1;
      result = sub_268689EB4();
    }
  }

  return result;
}

uint64_t sub_2686868D4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_268689E94();
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    do
    {
      ++v2;
      sub_268689EB4();
      --v3;
    }

    while (v3);
  }

  return sub_268689EF4();
}

uint64_t sub_268686934()
{
  if (*(v0 + 33))
  {
    return sub_268689D04();
  }

  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268686980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == *(a2 + 8))
  {
    return sub_2686867DC(*a2, v3, *a1, v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2686869B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v43 = v4;
  result = sub_268689DC4();
  v48 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v7 = 0;
    v8 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_16:
      v22 = v19 | (v7 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 40 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      v29 = *(v24 + 32);
      v30 = *(v24 + 33);
      v46 = *(v23 + 8 * v22);
      if ((v43 & 1) == 0)
      {
        sub_2685C255C(v27, v28, v29, v30);
      }

      v44 = v30;
      v45 = v28;
      sub_268689E94();
      v31 = v25;
      v32 = v26;
      if (v25)
      {
        v33 = v26 == 0;
      }

      else
      {
        v33 = 1;
      }

      if (!v33)
      {
        v34 = v26;
        v35 = v31;
        do
        {
          ++v35;
          sub_268689EB4();
          --v34;
        }

        while (v34);
      }

      result = sub_268689EF4();
      v14 = -1 << *(v48 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v14) >> 6;
        while (++v16 != v37 || (v36 & 1) == 0)
        {
          v38 = v16 == v37;
          if (v16 == v37)
          {
            v16 = 0;
          }

          v36 |= v38;
          v39 = *(v13 + 8 * v16);
          if (v39 != -1)
          {
            v17 = __clz(__rbit64(~v39)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v48 + 48) + 40 * v17;
      *v18 = v31;
      *(v18 + 8) = v32;
      *(v18 + 16) = v27;
      *(v18 + 24) = v45;
      *(v18 + 32) = v29;
      *(v18 + 33) = v44;
      *(*(v48 + 56) + 8 * v17) = v46;
      ++*(v48 + 16);
      v5 = v42;
      v11 = v47;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v7 >= v12)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v47 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_40;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v8, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v48;
  return result;
}

uint64_t sub_268686CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v37 = v4;
  result = sub_268689DC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 80 * v20;
      if (v37)
      {
        v38 = *(v22 + 16);
        v39 = *v22;
        v23 = *(v22 + 32);
        v41 = *(v22 + 56);
        v42 = *(v22 + 40);
        v40 = *(v22 + 72);
        v24 = *(v22 + 73);
      }

      else
      {
        v25 = *(v22 + 58);
        v26 = *(v22 + 16);
        v27 = *(v22 + 48);
        *v45 = *(v22 + 32);
        *&v45[16] = v27;
        *&v45[26] = v25;
        v44[0] = *v22;
        v44[1] = v26;
        v41 = *&v45[24];
        v42 = *&v45[8];
        v40 = BYTE14(v25);
        v24 = HIBYTE(v25);
        v38 = v26;
        v39 = v44[0];
        v23 = *v45;
        sub_268689570(v44, v43);
      }

      result = sub_268689E84();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v44[0]) = v24;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 80 * v15;
      *v16 = v39;
      *(v16 + 16) = v38;
      *(v16 + 32) = v23;
      *(v16 + 40) = v42;
      *(v16 + 56) = v41;
      *(v16 + 72) = v40;
      *(v16 + 73) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_268687004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE8, &qword_268693B38);
  result = sub_268689DC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_2685B17CC(v21, v31);
      }

      else
      {
        sub_2685B1724(v21, v31);
      }

      result = sub_268689E84();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2685B17CC(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_268687284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
  v38 = v4;
  result = sub_268689DC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {

        sub_2685BA80C(v25, v26);
      }

      sub_268689E94();
      sub_268689A24();
      result = sub_268689EF4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_268687568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
  v33 = v4;
  result = sub_268689DC4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_268689E94();
      sub_268689A24();
      result = sub_268689EF4();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_268687814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCB8, &qword_268693B08);
  result = sub_268689DC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_268689E84();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_268687A84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *a2;
  v10 = *(a2 + 8);
  result = sub_2685C32C0(*a2, v10);
  v13 = *(v8 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v8 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_2686869B4(v16, a3 & 1);
      result = sub_2685C32C0(v9, v10);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_15:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_268688394();
      result = v19;
    }
  }

  v21 = *v4;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = v21[6] + 40 * result;
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  *(v21[7] + 8 * result) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21[2] = v25;
  v27 = *(a2 + 16);
  v28 = *(a2 + 32);
  return sub_268689618(&v27, v26);
}

unint64_t sub_268687BF4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2685B351C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_268686CE0(v14, a3 & 1);
      result = sub_2685B351C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_268688518();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = (v19[7] + 80 * result);
    *v21 = *a1;
    v22 = a1[1];
    v23 = a1[2];
    v24 = a1[3];
    *(v21 + 58) = *(a1 + 58);
    v21[2] = v23;
    v21[3] = v24;
    v21[1] = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 80 * result;

  return sub_268689650(a1, v20);
}

uint64_t sub_268687D88(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2685B351C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2686886D0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_268687004(v14, a3 & 1);
    v9 = sub_2685B351C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_268689E34();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_2685B17CC(a1, v20);
  }

  else
  {

    return sub_268688328(v9, a2, a1, v19);
  }
}

uint64_t sub_268687EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2685C3084(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_268687284(v20, a6 & 1);
      v15 = sub_2685C3084(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_268688850();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v27 = *v26;
    v28 = v26[1];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    sub_2685B593C(v27, v28);
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v25[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = (v25[7] + 24 * v15);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v32 = v25[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v33;
}

unint64_t sub_268688068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2685C3084(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_268687568(v18, a5 & 1);
      result = sub_2685C3084(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2686889EC();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_2686881DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2685B351C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_268687814(v14, a3 & 1);
      result = sub_2685B351C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_268688B54();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_268688328(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2685B17CC(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_268688394()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 33);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 40 * v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v24;
        *(v23 + 33) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        result = sub_2685C255C(v19, v20, v24, v21);
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

void *sub_268688518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v2 = *v0;
  v3 = sub_268689DB4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_268689570(&v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 80 * v16);
      v20 = v18[1];
      v19 = v18[2];
      v21 = v18[3];
      *(v30 + 10) = *(v18 + 58);
      v30[0] = v21;
      v27 = *v18;
      v28 = v20;
      v29 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v22 = (*(v4 + 56) + 80 * v16);
      *v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v30[0];
      *(v22 + 58) = *(v30 + 10);
      v22[2] = v24;
      v22[3] = v25;
      v22[1] = v23;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_2686886D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE8, &qword_268693B38);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2685B1724(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2685B17CC(v19, *(v4 + 56) + 40 * v17);
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

void *sub_268688850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_2685BA80C(v22, v23);
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

void *sub_2686889EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_268688B54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCB8, &qword_268693B08);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_268688CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v3 = sub_268689DD4();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = sub_2685B351C(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_2686895A8(v23, v22);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[56];
    *(v11 + 58) = *&v23[66];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_2686895A8(v23, v22);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = sub_2685B351C(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268688E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v3 = sub_268689DD4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v10 = *(a1 + 72);
  result = sub_2685C32C0(v4, v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v13 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = v3[6] + 40 * result;
    *v14 = v4;
    *(v14 + 8) = v5;
    *(v14 + 16) = v6;
    *(v14 + 24) = v7;
    *(v14 + 32) = v8;
    *(v14 + 33) = v9 & 1;
    *(v3[7] + 8 * result) = v10;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    sub_2685C255C(v6, v7, v8, v9 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v13 - 5);
    v5 = *(v13 - 4);
    v6 = *(v13 - 3);
    v7 = *(v13 - 2);
    v8 = *(v13 - 8);
    v9 = *(v13 - 7);
    v10 = *v13;
    result = sub_2685C32C0(v4, v5);
    v13 += 6;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268688F94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_268688FAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_268689010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
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

uint64_t sub_26868905C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriOntologyProtobuf8_NameMapV0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26868912C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 73);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_268689174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_2686891DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_268689224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

unint64_t sub_268689280()
{
  result = qword_280FBD000;
  if (!qword_280FBD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FBD000);
  }

  return result;
}

unint64_t sub_2686892D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
    v3 = sub_268689DD4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_2685BA80C(v7, v8);

      result = sub_2685C3084(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_2686893FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
    v3 = sub_268689DD4();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2685C3084(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_26868950C(unsigned __int8 *a1, uint64_t a2)
{
  sub_268689E94();
  if (a1 && a2)
  {
    do
    {
      ++a1;
      sub_268689EB4();
      --a2;
    }

    while (a2);
  }

  return sub_268689EF4();
}

uint64_t sub_2686895A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE0, &qword_268693B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_26868969C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2686896E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}