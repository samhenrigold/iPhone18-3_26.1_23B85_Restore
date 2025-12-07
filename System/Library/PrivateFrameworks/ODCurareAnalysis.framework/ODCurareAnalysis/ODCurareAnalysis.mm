__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25C7B8E3C(uint64_t a1, int a2)
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

uint64_t sub_25C7B8E84(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25C7B8EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25C7B8F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C7B8FA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25C7B9970(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
  if (swift_dynamicCast())
  {
    if (*(v14 + 16) && (v4 = sub_25C7BB2FC(0x6E6F6974636E7566, 0xE800000000000000), (v5 & 1) != 0) && (sub_25C7B9970(*(v14 + 56) + 32 * v4, v16), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v14 + 16) && (v6 = sub_25C7BB2FC(0x746E656D75677261, 0xE900000000000073), (v7 & 1) != 0))
      {
        sub_25C7B9970(*(v14 + 56) + 32 * v6, v16);

        if (swift_dynamicCast())
        {
          result = __swift_destroy_boxed_opaque_existential_0(a1);
          *a2 = v14;
          a2[1] = v15;
          a2[2] = v14;
          return result;
        }
      }

      else
      {
      }

      v10 = 0xD000000000000032;
      v11 = "Call arguments must be represented as a dictionary";
    }

    else
    {

      v10 = 0xD000000000000032;
      v11 = "Call function name must be represented as a string";
    }

    v9 = v11 - 32;
  }

  else
  {
    v9 = "Failed to parse test step";
    v10 = 0xD000000000000036;
  }

  v12 = v9 | 0x8000000000000000;
  sub_25C7B9A14();
  swift_allocError();
  *v13 = v10;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25C7B919C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = 0xD000000000000023;
  sub_25C7B9970(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = "Test specification must be represented as a dictionary";
LABEL_18:
    v24 = (v23 - 32);
    v5 = 0xD000000000000036;
LABEL_19:
    v25 = v24 | 0x8000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v26 = v5;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v3);
  }

  v6 = v61;
  if (!*(v61 + 16) || (v7 = sub_25C7BB2FC(0x73646C656966, 0xE600000000000000), (v8 & 1) == 0) || (sub_25C7B9970(*(v61 + 56) + 32 * v7, v65), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10), (swift_dynamicCast() & 1) == 0))
  {

    v23 = "Test fields must be represented as an array of strings";
    goto LABEL_18;
  }

  if (!*(v61 + 16) || (v9 = sub_25C7BB2FC(0xD000000000000012, 0x800000025C7CE560), (v10 & 1) == 0) || (sub_25C7B9970(*(v61 + 56) + 32 * v9, v65), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E8, &qword_25C7CDE18), (swift_dynamicCast() & 1) == 0))
  {

    v24 = "preprocessingSteps";
    goto LABEL_19;
  }

  v53 = a2;
  v57 = v61;
  v11 = v61;
  v12 = *(v61 + 16);
  if (v12)
  {
    v55 = v3;
    v67 = MEMORY[0x277D84F90];
    result = sub_25C7CC57C(0, v12, 0);
    v14 = 0;
    v15 = v67;
    v16 = v61 + 32;
    v58 = v12;
    v60 = v61;
    while (v14 < *(v11 + 16))
    {
      sub_25C7B9970(v16, v65);
      sub_25C7B9970(v65, &v61);
      sub_25C7B8FA0(&v61, &v63);
      if (v2)
      {
        MEMORY[0x25F88EF00](v2);

        __swift_destroy_boxed_opaque_existential_0(v65);

        v24 = "preprocessingSteps";
        v3 = v55;
        goto LABEL_19;
      }

      v17 = v11;
      result = __swift_destroy_boxed_opaque_existential_0(v65);
      v18 = v63;
      v19 = v64;
      v67 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v52 = v64;
        result = sub_25C7CC57C((v20 > 1), v21 + 1, 1);
        v19 = v52;
        v15 = v67;
      }

      ++v14;
      *(v15 + 16) = v21 + 1;
      v22 = v15 + 24 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += 32;
      v11 = v17;
      v6 = v60;
      if (v58 == v14)
      {

        v3 = v55;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_24:
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  v66 = v59;
  v27 = swift_allocObject();
  v28 = v27;
  v65[0] = v27;
  if (*(v6 + 16))
  {
    v29 = sub_25C7BB2FC(0x6E697474696C7073, 0xED00007065745367);
    if (v30)
    {
      sub_25C7B9970(*(v6 + 56) + 32 * v29, v28 + 16);
    }

    else
    {
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
    }
  }

  else
  {
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
  }

  sub_25C7B8FA0(v65, &v61);
  if (v2)
  {
    MEMORY[0x25F88EF00](v2);

    v24 = "preprocessing steps";
    v5 = 0xD00000000000001ELL;
    goto LABEL_19;
  }

  v31 = v62;
  if (!*(v6 + 16) || (v50 = v61, v32 = sub_25C7BB2FC(0xD000000000000013, 0x800000025C7CE5D0), (v33 & 1) == 0) || (sub_25C7B9970(*(v6 + 56) + 32 * v32, v65), (swift_dynamicCast() & 1) == 0))
  {

    v24 = "postprocessingSteps";
    v5 = 0xD000000000000024;
    goto LABEL_19;
  }

  v34 = v61;
  v35 = *(v61 + 16);
  if (v35)
  {
    v56 = v3;
    v67 = MEMORY[0x277D84F90];
    result = sub_25C7CC57C(0, v35, 0);
    v36 = 0;
    v37 = v67;
    v38 = v34 + 32;
    v54 = v34;
    v51 = v35;
    while (v36 < *(v34 + 16))
    {
      sub_25C7B9970(v38, v65);
      sub_25C7B9970(v65, &v61);
      sub_25C7B8FA0(&v61, &v63);
      result = __swift_destroy_boxed_opaque_existential_0(v65);
      v39 = v63;
      v40 = v64;
      v67 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      v43 = v37;
      if (v42 >= v41 >> 1)
      {
        v49 = v64;
        result = sub_25C7CC57C((v41 > 1), v42 + 1, 1);
        v40 = v49;
        v43 = v67;
      }

      ++v36;
      *(v43 + 16) = v42 + 1;
      v44 = v43 + 24 * v42;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v38 += 32;
      v37 = v43;
      v34 = v54;
      if (v51 == v36)
      {

        v3 = v56;
        goto LABEL_44;
      }
    }

LABEL_50:
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_44:
  v66 = v59;
  v45 = swift_allocObject();
  v65[0] = v45;
  if (*(v6 + 16) && (v46 = sub_25C7BB2FC(0x7065745374736574, 0xE800000000000000), (v47 & 1) != 0))
  {
    sub_25C7B9970(*(v6 + 56) + 32 * v46, v45 + 16);
  }

  else
  {
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
  }

  sub_25C7B8FA0(v65, &v61);
  result = __swift_destroy_boxed_opaque_existential_0(v3);
  v48 = v61;
  *v53 = v57;
  *(v53 + 8) = v15;
  *(v53 + 16) = v50;
  *(v53 + 24) = v31;
  *(v53 + 40) = v37;
  *(v53 + 48) = v48;
  *(v53 + 56) = v62;
  return result;
}

uint64_t sub_25C7B9970(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_25C7B9A14()
{
  result = qword_27FC158D8;
  if (!qword_27FC158D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC158D8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_25C7B9AB4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25C7B9AF4()
{
  result = sub_25C7C23D8(&unk_286E692B8);
  qword_27FC15A60 = result;
  return result;
}

void sub_25C7B9B1C(double a1)
{
  if (a1 != 0.0 && a1 != 1.0 && a1 >= 0.0 && a1 <= 1.0)
  {
    if (a1 >= 0.5)
    {
      v2 = a1;
    }

    else
    {
      v2 = 1.0 - a1;
    }

    if (qword_27FC158C8 != -1)
    {
      swift_once();
    }

    v3 = qword_27FC15A60;
    v4 = *(qword_27FC15A60 + 16);
    if (v4)
    {
      v5 = sub_25C7BA198(*(qword_27FC15A60 + 16), 0);
      v6 = sub_25C7BAAC8(&v22, v5 + 4, v4, v3);
      v7 = v22;
      swift_bridgeObjectRetain_n();
      sub_25C7BABC8(v7);
      if (v6 == v4)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    v5 = MEMORY[0x277D84F90];
LABEL_17:
    v22 = v5;
    v8 = 0;
    sub_25C7BA21C(&v22);

    v9 = *(v22 + 2);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      for (i = 0; i != v9; ++i)
      {
        if (*&v22[8 * i + 32] <= v2)
        {
          v10 = i + 1;
          v11 = i;
        }
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if (v11 >= v9)
    {
      __break(1u);
    }

    else
    {
      v13 = *&v22[8 * v11 + 32];
      if (v2 != v13)
      {
        if (v10 != v9)
        {
          if (v10 >= v9)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v16 = *&v22[8 * v10 + 32];
          v17 = *(v3 + 16);
          if (v2 == v16)
          {
            if (!v17)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v8 = sub_25C7BB374(v16);
            v19 = v18;

            if (v19)
            {
              return;
            }

            __break(1u);
          }

          if (!v17)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          sub_25C7BB374(v13);
          if ((v20 & 1) == 0)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v8 = *(v3 + 56);
          sub_25C7BB374(v16);
          if ((v21 & 1) == 0)
          {
LABEL_47:
            __break(1u);
            MEMORY[0x25F88EF00](v8);

            __break(1u);
            return;
          }
        }

        return;
      }

      if (*(v3 + 16))
      {
        v8 = sub_25C7BB374(v13);
        v15 = v14;

        if (v15)
        {
          return;
        }

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }
}

char *sub_25C7B9E2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F8, &qword_25C7CDE28);
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

void *sub_25C7B9F30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7BA064(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7BA198(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15900, &qword_25C7CDE30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_25C7BA21C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25C7BAAB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25C7CD404();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25C7CD284();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25C7BA350(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25C7BA350(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25C7BAAA0(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_25C7BA8AC((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C7B9E2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_25C7B9E2C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_25C7BA8AC((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_25C7BA8AC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_25C7BAAC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t *runPostprocessingSteps(_:steps:lastRun:)(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  for (i = (a2 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v8 = v6 == 0x786966667573 && v5 == 0xE600000000000000;
    if (v8 || (sub_25C7CD414() & 1) != 0)
    {
      if (!*(v7 + 16))
      {
        goto LABEL_24;
      }

      v9 = sub_25C7BB2FC(0x74676E654C78616DLL, 0xE900000000000068);
      if ((v10 & 1) == 0)
      {

LABEL_24:
        v14 = 0x800000025C7CE7A0;
        v15 = 0xD000000000000025;
        goto LABEL_27;
      }

      sub_25C7B9970(*(v7 + 56) + 32 * v9, &v17);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      result = sub_25C7BAEC0(v19, *v3);
      *v3 = result;
      goto LABEL_3;
    }

    v11 = v6 == 0xD000000000000010 && 0x800000025C7CE700 == v5;
    if (!v11 && (sub_25C7CD414() & 1) == 0)
    {
      break;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_26;
    }

    v12 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
    if ((v13 & 1) == 0)
    {

LABEL_26:
      v14 = 0x800000025C7CE760;
      v15 = 0xD000000000000037;
      goto LABEL_27;
    }

    sub_25C7B9970(*(v7 + 56) + 32 * v12, &v17);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    result = sub_25C7BB13C(v3, v19);
LABEL_3:
    if (!--v2)
    {
      return result;
    }
  }

  v17 = 0;
  v18 = 0xE000000000000000;

  sub_25C7CD314();

  v17 = 0xD00000000000001DLL;
  v18 = 0x800000025C7CE720;
  MEMORY[0x25F88E8A0](v6, v5);

  v15 = v17;
  v14 = v18;
LABEL_27:
  sub_25C7B9A14();
  swift_allocError();
  *v16 = v15;
  *(v16 + 8) = v14;
  *(v16 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_25C7BAEC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = a2;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v32 = result;
  if (*(a2 + 16) >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  result = sub_25C7CC59C(0, v3, 0);
  v4 = v34;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v2 + 56;
    v30 = *(v2 + 16);
    v31 = v2;
    v27 = v5 - 1;
    v28 = v2 + 56;
    v9 = v32;
    do
    {
      v29 = v7;
      v10 = (v8 + 32 * v6);
      while (1)
      {
        if (v6 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v11 = *(v10 - 3);
        v12 = *(v10 - 2);
        v14 = *(v10 - 1);
        v13 = *v10;
        v15 = v6 + 1;
        v16 = v4[2];
        if (v16 >= v9)
        {
          break;
        }

        v35 = v4;
        v17 = v4[3];
        v18 = v4;
        result = swift_unknownObjectRetain();
        v4 = v18;
        if (v16 >= v17 >> 1)
        {
          result = sub_25C7CC59C((v17 > 1), v16 + 1, 1);
          v4 = v35;
        }

        v4[2] = v16 + 1;
        v19 = &v4[4 * v16];
        v19[4] = v11;
        v19[5] = v12;
        v19[6] = v14;
        v19[7] = v13;
        v10 += 4;
        v6 = v15;
        v2 = v31;
        v9 = v32;
        if (v30 == v15)
        {
          v7 = v29;
          goto LABEL_23;
        }
      }

      v20 = v4;
      result = swift_unknownObjectRetain();
      if (v29 >= v16)
      {
        goto LABEL_33;
      }

      v21 = &v20[4 * v29];
      v21[4] = v11;
      v21[5] = v12;
      v21[6] = v14;
      v21[7] = v13;
      result = swift_unknownObjectRelease();
      v4 = v20;
      v2 = v31;
      v9 = v32;
      if ((v29 + 1) < v32)
      {
        v7 = v29 + 1;
      }

      else
      {
        v7 = 0;
      }

      v8 = v28;
    }

    while (v27 != v6++);
LABEL_23:
    v23 = v4;

    if (!v7)
    {
      return v23;
    }

    v24 = v23[2];
    v33 = MEMORY[0x277D84F90];
    result = sub_25C7CC59C(0, v24, 0);
    if (v24 >= v7)
    {
      if (v7 < 0)
      {
        goto LABEL_35;
      }

      v25 = v23[2];
      if (v25 >= v7 && v25 >= v24)
      {

        sub_25C7BB4E0(v26, (v23 + 4), v7, (2 * v24) | 1);

        sub_25C7BB4E0(v23, (v23 + 4), 0, (2 * v7) | 1);

        return v33;
      }

      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v23 = v34;

  return v23;
}

uint64_t sub_25C7BB13C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  v4 = *(result + 16);
  if (v4 != 1)
  {
    if (!v4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
      result = swift_allocObject();
      *(result + 16) = xmmword_25C7CDE50;
      v5 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90] + 32;
      *(result + 32) = MEMORY[0x277D84F90];
      *(result + 40) = v6;
      *(result + 48) = xmmword_25C7CDE60;
      *(result + 64) = v5;
      *(result + 72) = v6;
      *(result + 80) = xmmword_25C7CDE60;
      *a1 = result;
    }

    return result;
  }

  v8 = *(result + 32);
  v9 = *(result + 40);
  v11 = *(result + 48);
  v10 = *(result + 56);
  swift_unknownObjectRetain();

  v12 = v10 >> 1;
  v13 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = a2;
  v16 = v14 & ~(v14 >> 63);
  v17 = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
  result = swift_allocObject();
  *(result + 16) = xmmword_25C7CDE50;
  if (v17 > v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 > v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17 & ~(v17 >> 63);
  if (v18 < v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 > v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 < v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(result + 32) = v8;
  *(result + 40) = v9;
  *(result + 48) = v18;
  *(result + 56) = v10 & 1 | (2 * v16);
  if (v12 < v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  *(result + 64) = v8;
  *(result + 72) = v9;
  *(result + 80) = v16;
  *(result + 88) = v10;
  *a1 = result;

  return swift_unknownObjectRetain();
}

unint64_t sub_25C7BB2FC(uint64_t a1, uint64_t a2)
{
  sub_25C7CD4A4();
  sub_25C7CD244();
  v4 = sub_25C7CD4B4();

  return sub_25C7BB3C0(a1, a2, v4);
}

unint64_t sub_25C7BB374(double a1)
{
  v2 = sub_25C7CD494();

  return sub_25C7BB478(v2, a1);
}

unint64_t sub_25C7BB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25C7CD414())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C7BB478(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25C7BB4E0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_25C7CC59C(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ODCurareAnalysis10UsageErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25C7BB630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25C7BB678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25C7BB6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_25C7BB74C(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 != -1 && a1 != a2)
  {
    v3 = 1.0 - a3;
    if (a1)
    {
      if (__OFSUB__(a2, a1))
      {
        __break(1u);
      }

      else if (!__OFADD__(a1, 1))
      {
        sub_25C7BC1E8(v3, (a2 - a1), (a1 + 1));
        return;
      }

      __break(1u);
    }

    else
    {
      pow(v3, a2);
    }
  }
}

void sub_25C7BB7E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE400000000000000;
  v5 = 1936942412;
  if (v2 != 1)
  {
    v5 = 0x72657461657247;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65646953206F7754;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_25C7BB83C(uint64_t a1, unint64_t a2, unsigned __int8 a3, double a4)
{
  if (a1 < 0)
  {
    v5 = 0x800000025C7CE890;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD00000000000001FLL;
    goto LABEL_13;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = 0x800000025C7CE860;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD000000000000021;
    goto LABEL_13;
  }

  if (a1 < a2)
  {
    v5 = 0x800000025C7CE820;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD000000000000031;
LABEL_13:
    *v6 = v7;
    *(v6 + 8) = v5;
    *(v6 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    v5 = 0x800000025C7CE7F0;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD00000000000002FLL;
    goto LABEL_13;
  }

  v84 = a4;
  if (a3)
  {
    if (a3 == 1)
    {
      v9 = a2;

      goto LABEL_18;
    }

    v10 = a3;
    v9 = a2;
  }

  else
  {
    v10 = a3;
    v9 = a2;
  }

  v11 = sub_25C7CD414();

  if ((v11 & 1) == 0)
  {
    if (v10 > 1u)
    {
    }

    else
    {
      v12 = sub_25C7CD414();

      if ((v12 & 1) == 0)
      {
        v13 = v9;
        v14 = v84;
        __y = a1;
        v15 = a1 * v84;
        if (v15 <= v9)
        {
          if (v15 < v9)
          {
            sub_25C7BB74C(v9 - 1, a1, v84);
            if (!v4)
            {
              v18 = __y + 1.0;
              v19 = sub_25C7C89C8(__y + 1.0);
              v20 = v19 - sub_25C7C89C8(v13 + 1.0);
              v21 = v20 - sub_25C7C89C8(__y - v13 + 1.0);
              v81 = log(v84);
              __x = 1.0 - v84;
              v79 = log(1.0 - v84);
              v13 = exp(v81 * v13 + v79 * (__y - v13) + v21);
              v22 = floor(v15);
              if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }

              if (v22 <= -9.22337204e18)
              {
LABEL_104:
                __break(1u);
                goto LABEL_105;
              }

              if (v22 >= 9.22337204e18)
              {
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }

              v23 = v22;
              if (v22 < 0)
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              v24 = -1.0;
              v25 = v18 + -1.0;
              v26 = v25 * log(v18 + -1.0) - v25;
              v27 = 1.0;
              v28 = 0;
              v29 = 0;
              v77 = v26 + 0.572364943 + log(v25 * (v25 * 4.0 * (v25 + v25 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
              v30 = 3.0;
              while (1)
              {
                v31 = v77;
                if (v18 <= v30)
                {
                  v31 = sub_25C7C8A6C(v18);
                }

                v84 = v31;
                v32 = v28;
                v33 = v28 + v27;
                if (v33 <= v30)
                {
                  v37 = sub_25C7C8A6C(v33);
                }

                else
                {
                  v34 = v33 + v24;
                  v35 = v34 * log(v33 + v24) - v34;
                  v36 = v34 * (v34 * 4.0 * (v34 + v34 + v27) + v27);
                  v30 = 3.0;
                  v37 = v35 + 0.572364943 + log(v36 + 0.0333333333) * 0.166666667;
                }

                v15 = 1.0;
                v38 = __y - v32 + 1.0;
                if (v38 <= v30)
                {
                  v47 = sub_25C7C8A6C(v38);
                }

                else
                {
                  v39 = v38 + v24;
                  v40 = log(v38 + v24);
                  v41 = v13;
                  v42 = v18;
                  v43 = v39 * v40 - v39;
                  v44 = v39 * (v39 * 4.0 * (v39 + v39 + 1.0) + 1.0);
                  v30 = 3.0;
                  v45 = log(v44 + 0.0333333333);
                  v46 = v43 + 0.572364943;
                  v18 = v42;
                  v13 = v41;
                  v24 = -1.0;
                  v47 = v46 + v45 * 0.166666667;
                }

                if (exp(v81 * v32 + v79 * (__y - v32) + v84 - v37 - v47) <= v13)
                {
                  v48 = __OFADD__(v29++, 1);
                  v27 = 1.0;
                  if (v48)
                  {
                    goto LABEL_96;
                  }

                  v16 = a1;
                }

                else
                {
                  v16 = a1;
                  v27 = 1.0;
                }

                if (v23 == v28)
                {
                  break;
                }

                v48 = __OFADD__(v28++, 1);
                if (v48)
                {
                  __break(1u);
                  goto LABEL_54;
                }
              }

              if (v29)
              {
                v72 = v29 - 1;
                if (__OFSUB__(v29, 1))
                {
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }

                if (v72 != v16)
                {
                  if (v29 != 1)
                  {
                    v48 = __OFSUB__(v16, v72);
                    v73 = v16 - v72;
                    if (!v48)
                    {
                      if (!__OFADD__(v72, 1))
                      {
                        sub_25C7BC1E8(__x, v73, v29);
                        return;
                      }

                      goto LABEL_109;
                    }

LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
                    return;
                  }

                  pow(__x, __y);
                }
              }
            }
          }

          return;
        }

        v16 = a1 - v9;
        if (a1 == v9)
        {
          v17 = 1.0 - v84;
        }

        else
        {
LABEL_54:
          if (v9)
          {
            if (__OFADD__(v9, 1))
            {
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            v17 = 1.0 - v14;
            sub_25C7BC1E8(1.0 - v14, v16, (v9 + 1));
            if (v4)
            {
              return;
            }
          }

          else
          {
            v17 = 1.0 - v14;
            pow(1.0 - v14, __y);
          }
        }

        __xa = __y + 1.0;
        v49 = sub_25C7C89C8(__y + 1.0);
        v50 = v49 - sub_25C7C89C8(v13 + 1.0);
        v51 = v50 - sub_25C7C89C8(__y - v13 + 1.0);
        v82 = log(v84);
        v80 = log(v17);
        v78 = exp(v82 * v13 + v80 * (__y - v13) + v51);
        v52 = ceil(v15);
        if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v52 > -9.22337204e18)
          {
            v53 = __y + 1.0;
            if (v52 < 9.22337204e18)
            {
              v54 = v52;
              if (v52 <= a1)
              {
                v55 = __xa + -1.0;
                v56 = v55 * log(__xa + -1.0) - v55;
                v57 = 0;
                v76 = v56 + 0.572364943 + log(v55 * (v55 * 4.0 * (v55 + v55 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
                while (1)
                {
                  v58 = v76;
                  if (v53 <= 3.0)
                  {
                    v58 = sub_25C7C8A6C(v53);
                  }

                  v59 = v54;
                  v60 = v54 + 1.0;
                  if (v60 <= 3.0)
                  {
                    v63 = sub_25C7C8A6C(v60);
                  }

                  else
                  {
                    v61 = v60 + -1.0;
                    v62 = v61 * log(v60 + -1.0) - v61;
                    v63 = v62 + 0.572364943 + log(v61 * (v61 * 4.0 * (v61 + v61 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
                  }

                  v64 = __y - v59 + 1.0;
                  if (v64 <= 3.0)
                  {
                    v69 = sub_25C7C8A6C(v64);
                  }

                  else
                  {
                    v65 = v64 + -1.0;
                    v66 = v65 * log(v64 + -1.0) - v65;
                    v67 = log(v65 * (v65 * 4.0 * (v65 + v65 + 1.0) + 1.0) + 0.0333333333);
                    v68 = v66 + 0.572364943;
                    v53 = __y + 1.0;
                    v69 = v68 + v67 * 0.166666667;
                  }

                  if (exp(v82 * v59 + v80 * (__y - v59) + v58 - v63 - v69) <= v78)
                  {
                    v48 = __OFADD__(v57++, 1);
                    v71 = v84;
                    if (v48)
                    {
                      __break(1u);
                      goto LABEL_95;
                    }

                    v70 = a1;
                  }

                  else
                  {
                    v70 = a1;
                    v71 = v84;
                  }

                  if (v70 == v54)
                  {
                    break;
                  }

                  v48 = __OFADD__(v54++, 1);
                  if (v48)
                  {
                    __break(1u);
                    break;
                  }
                }

                if (!v57)
                {
                  return;
                }

                if (!__OFSUB__(v70, v57))
                {
                  sub_25C7BB74C(v70 - v57, a1, v71);
                  return;
                }

                goto LABEL_101;
              }

LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    sub_25C7BB74C(v9 - 1, a1, v84);
    return;
  }

LABEL_18:
  if (a1 != v9)
  {
    if (!v9)
    {
      pow(1.0 - v84, a1);
      return;
    }

    if (!__OFADD__(v9, 1))
    {
      sub_25C7BC1E8(1.0 - v84, (a1 - v9), (v9 + 1));
      return;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }
}

void sub_25C7BC1E8(double a1, double a2, double a3)
{
  v4 = 0xD000000000000032;
  if (a1 < 0.0 || a1 > 1.0)
  {
    v6 = "ned for the beta function.";
LABEL_6:
    v7 = v6 | 0x8000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    swift_willThrow();
    return;
  }

  v6 = "numberOfTrials was less than 0.";
  v4 = 0xD00000000000005ALL;
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    goto LABEL_6;
  }

  if (a1 != 0.0 && a1 != 1.0)
  {
    v25 = log(a1);
    v26 = a1;
    v12 = 1.0 - a1;
    v13 = log(v12);
    v14 = sub_25C7C89C8(a2);
    v15 = sub_25C7C89C8(a3);
    v16 = a2 + a3;
    v17 = sub_25C7C89C8(a2 + a3);
    v27 = a3;
    if (a2 > a3)
    {
      v18 = a2;
    }

    else
    {
      v18 = a3;
    }

    v19 = ceil(sqrt(v18));
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = v25 * a2 + v13 * a3;
        v21 = v14 + v15 - v17;
        if (v19 <= 100)
        {
          v22 = 100;
        }

        else
        {
          v22 = v19;
        }

        if ((a2 + 1.0) / (v16 + 2.0) <= v26)
        {
          sub_25C7BC434(v22, v12, v27, a2);
          if (!v3)
          {
            v24 = log(v27);
            exp(v20 - v21 - v24);
          }
        }

        else
        {
          sub_25C7BC434(v22, v26, a2, v27);
          if (!v3)
          {
            v23 = log(a2);
            exp(v20 - v21 - v23);
          }
        }

        return;
      }

LABEL_28:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_25C7BC434(uint64_t result, double a2, double a3, double a4)
{
  if (result < 1)
  {
LABEL_17:
    sub_25C7B9A14();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v4 = (a3 + a4) * a2 / (a3 + 1.0);
    if (vabdd_f64(1.0, v4) >= 1.0e-30)
    {
      v5 = 1.0 / (1.0 - v4);
    }

    else
    {
      v5 = 1.0e30;
    }

    v6 = 1;
    v7 = v5;
    v8 = 1.0;
    while (1)
    {
      v9 = v6;
      v10 = v9 + v9 + a3;
      v11 = (a4 - v6) * v6 * a2 / (v10 * (v10 + -1.0));
      v12 = v11 / v8 + 1.0;
      v13 = v7 * v11 + 1.0;
      if (fabs(v12) < 1.0e-30)
      {
        v12 = 1.0e-30;
      }

      v14 = fabs(v13);
      v15 = 1.0 / v13;
      if (v14 < 1.0e-30)
      {
        v15 = 1.0e30;
      }

      v16 = v5 * (v12 * v15);
      v17 = -((v9 + a3) * (a3 + a4 + v9)) * a2 / (v10 * (v10 + 1.0));
      v8 = v17 / v12 + 1.0;
      v18 = v17 * v15 + 1.0;
      if (fabs(v8) < 1.0e-30)
      {
        v8 = 1.0e-30;
      }

      v19 = fabs(v18);
      v7 = 1.0 / v18;
      if (v19 < 1.0e-30)
      {
        v7 = 1.0e30;
      }

      v5 = v16 * (v8 * v7);
      if (fabs(v8 * v7 + -1.0) < 0.000457247371)
      {
        break;
      }

      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      ++v6;
      if (v20 > result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

void runSplittingStep(_:step:lastRun:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = MEMORY[0x25F88EB50]();
  sub_25C7BC65C(v5, v6, v7, a1, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_25C7BC65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v12 || (sub_25C7CD414() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v16 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v17)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v16, v33);
        if (swift_dynamicCast())
        {
          v18 = v31;
          v19 = v32;
          v20 = 86400.0;
          goto LABEL_10;
        }
      }
    }

    v24 = 0x800000025C7CE9D0;
    sub_25C7B9A14();
    v22 = swift_allocError();
    v26 = 0xD000000000000023;
    goto LABEL_13;
  }

  if ((a1 != 0x736B656577 || a2 != 0xE500000000000000) && (sub_25C7CD414() & 1) == 0)
  {
    if ((a1 != 0x6E75527473616CLL || a2 != 0xE700000000000000) && (sub_25C7CD414() & 1) == 0)
    {
      sub_25C7CD314();

      v33[0] = 0xD000000000000018;
      v33[1] = 0x800000025C7CE950;
      MEMORY[0x25F88E8A0](a1, a2);
      sub_25C7B9A14();
      v22 = swift_allocError();
      *v25 = 0xD000000000000018;
      *(v25 + 8) = 0x800000025C7CE950;
      goto LABEL_14;
    }

    if (*(a3 + 16))
    {
      v29 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v30)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v29, v33);
        if (swift_dynamicCast())
        {
          v21 = sub_25C7BD320(a4, v31, v32, a5);
          v22 = v7;

          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }
      }
    }

    v24 = 0x800000025C7CE970;
    sub_25C7B9A14();
    v22 = swift_allocError();
    v26 = 0xD000000000000026;
LABEL_13:
    *v25 = v26;
    *(v25 + 8) = v24;
LABEL_14:
    *(v25 + 16) = 0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  if (!*(a3 + 16) || (v27 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v28 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v27, v33), (swift_dynamicCast() & 1) == 0))
  {
    v24 = 0x800000025C7CE9A0;
    sub_25C7B9A14();
    v22 = swift_allocError();
    v26 = 0xD000000000000024;
    goto LABEL_13;
  }

  v18 = v31;
  v19 = v32;
  v20 = 604800.0;
LABEL_10:
  v21 = sub_25C7BCA4C(a4, v18, v19, v20);
  v22 = v7;

  if (!v7)
  {
LABEL_11:
    *a7 = v21;
    return result;
  }

LABEL_15:
  *a6 = v22;
  return result;
}

void *sub_25C7BCA4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v80 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v68 - v11;
  v13 = sub_25C7CD1D4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v87 = v68 - v19;
  MEMORY[0x28223BE20](v18);
  v86 = v68 - v20;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = (v21 - 1);
  v83 = a1;
  v84 = a1 + 32;
  v23 = *(a1 + 32 + 8 * (v21 - 1));
  if (!*(v23 + 16))
  {
    goto LABEL_39;
  }

  v78 = v21;

  v24 = sub_25C7BB2FC(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_39:
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_40;
  }

  sub_25C7B9970(*(v23 + 56) + 32 * v24, &v88);

  v26 = swift_dynamicCast();
  v76 = *(v14 + 56);
  v77 = v14 + 56;
  v76(v12, v26 ^ 1u, 1, v13);
  v74 = *(v14 + 48);
  v75 = v14 + 48;
  if (v74(v12, 1, v13) == 1)
  {
LABEL_40:
    sub_25C7BDAE8(v12);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25C7CD314();

    v88 = 0xD00000000000002CLL;
    v89 = 0x800000025C7CEA00;
    MEMORY[0x25F88E8A0](a2, a3);
    v57 = v88;
    v58 = v89;
    sub_25C7B9A14();
    swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v58;
    *(v59 + 16) = 1;
    return swift_willThrow();
  }

  v71 = v22;
  v68[1] = v4;
  v72 = *(v14 + 32);
  v72(v86, v12, v13);
  v82 = 0;
  v73 = v14 + 32;
  v85 = (v14 + 8);
  v27 = MEMORY[0x277D84F90];
  v28 = v78;
  v29 = v78;
  v30 = v78;
  v31 = v78;
  v70 = a3;
  v69 = a2;
  while (1)
  {
    v32 = v82;
    if (v29 == v28)
    {
      v32 = v28;
      v30 = v28;
      v31 = v28;
    }

    v33 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      break;
    }

    v34 = v29 - 1;
    if (v34 >= v28)
    {
      goto LABEL_45;
    }

    v81 = v31;
    v35 = *(v84 + 8 * v34);
    v36 = v80;
    if (!*(v35 + 16))
    {
      goto LABEL_42;
    }

    v79 = v34;

    v37 = sub_25C7BB2FC(a2, a3);
    if ((v38 & 1) == 0)
    {

LABEL_42:
      v76(v36, 1, 1, v13);
LABEL_43:

      sub_25C7BDAE8(v36);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_25C7CD314();

      v88 = 0xD00000000000002CLL;
      v89 = 0x800000025C7CEA00;
      MEMORY[0x25F88E8A0](a2, a3);
      v60 = v88;
      v61 = v89;
      sub_25C7B9A14();
      swift_allocError();
      *v62 = v60;
      *(v62 + 8) = v61;
      *(v62 + 16) = 1;
      swift_willThrow();
      return (*v85)(v86, v13);
    }

    sub_25C7B9970(*(v35 + 56) + 32 * v37, &v88);

    v39 = swift_dynamicCast();
    v76(v36, v39 ^ 1u, 1, v13);
    if (v74(v36, 1, v13) == 1)
    {
      goto LABEL_43;
    }

    v72(v87, v36, v13);
    v82 = v33;
    v40 = (v33 + 1);
    a3 = __OFADD__(v33, 1);
    sub_25C7CD1A4();
    v41 = sub_25C7BDB50();
    v42 = sub_25C7CD214();
    v33 = *v85;
    (*v85)(v17, v13);
    if (v42)
    {
      v31 = v81;
    }

    else
    {
      if (a3)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v43 = (v71 + 1);
      a3 = v83;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_54;
      }

      if (v43 < v40)
      {
        goto LABEL_55;
      }

      if (v81 < v40)
      {
        goto LABEL_56;
      }

      if (v40 < 0)
      {
        goto LABEL_57;
      }

      if (v81 < v43)
      {
        goto LABEL_58;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
      }

      v45 = v27[2];
      v44 = v27[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v71 = (v45 + 1);
        v55 = sub_25C7B9F30((v44 > 1), v45 + 1, 1, v27);
        v46 = v71;
        v27 = v55;
      }

      v27[2] = v46;
      v47 = &v27[4 * v45];
      v48 = v84;
      v47[4] = a3;
      v47[5] = v48;
      v47[6] = v40;
      v47[7] = (2 * v43) | 1;
      sub_25C7CD1B4();
      sub_25C7CD1A4();
      v49 = sub_25C7CD214();
      (v33)(v17, v13);
      if ((v49 & 1) == 0)
      {
        do
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
          }

          v51 = v27[2];
          v50 = v27[3];
          if (v51 >= v50 >> 1)
          {
            v27 = sub_25C7B9F30((v50 > 1), v51 + 1, 1, v27);
          }

          v27[2] = v51 + 1;
          v52 = &v27[4 * v51];
          v53 = v84;
          v52[4] = v83;
          v52[5] = v53;
          v52[6] = v40;
          v52[7] = (2 * v40) | 1;
          sub_25C7CD1B4();
          sub_25C7CD1A4();
          v54 = sub_25C7CD214();
          (v33)(v17, v13);
        }

        while ((v54 & 1) == 0);
      }

      v31 = v81;
      v71 = v82;
      v30 = v81;
    }

    (v33)(v87, v13);
    a3 = v70;
    a2 = v69;
    v28 = v78;
    v29 = v79;
    if (!v79)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v41 = (v71 + 1);
  if (__OFADD__(v71, 1))
  {
    goto LABEL_59;
  }

  a3 = v83;
  if (v41 < 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v30 < v41)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_50;
  }

LABEL_62:
  v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
LABEL_50:
  v64 = v27[2];
  v63 = v27[3];
  if (v64 >= v63 >> 1)
  {
    v27 = sub_25C7B9F30((v63 > 1), v64 + 1, 1, v27);
  }

  v27[2] = v64 + 1;
  v65 = &v27[4 * v64];
  v66 = v84;
  v65[4] = a3;
  v65[5] = v66;
  v65[6] = 0;
  v65[7] = (2 * v41) | 1;
  v67 = sub_25C7BD658(v27);
  (v33)(v86, v13);
  return v67;
}

uint64_t sub_25C7BD320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = sub_25C7CD1D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C7BDBA8(a4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_25C7BDAE8(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_25C7CDFC0;
    v16 = (2 * *(a1 + 16)) | 1;
    *(a3 + 32) = a1;
    *(a3 + 40) = a1 + 32;
    *(a3 + 48) = 0;
    *(a3 + 56) = v16;

    return a3;
  }

  v17 = (*(v13 + 32))(v15, v11, v12);
  MEMORY[0x28223BE20](v17);
  v26[-4] = a2;
  v26[-3] = a3;
  v26[-2] = v15;
  v18 = sub_25C7BDA34(sub_25C7BDC18, &v26[-6], a1);
  if (v4)
  {
    (*(v13 + 8))(v15, v12);
    return a3;
  }

  if (v19)
  {
    v20 = *(a1 + 16);
  }

  else
  {
    v20 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
  if (v20 < 1)
  {
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_25C7CDFC0;
    v24 = (2 * *(a1 + 16)) | 1;
    *(a3 + 32) = a1;
    *(a3 + 40) = a1 + 32;
    *(a3 + 48) = 0;
    *(a3 + 56) = v24;
    v25 = *(v13 + 8);

    v25(v15, v12);
    return a3;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_25C7CDE50;
  v22 = *(a1 + 16);
  if (v22 >= v20)
  {
    a3 = result;
    *(result + 32) = a1;
    *(result + 40) = a1 + 32;
    *(result + 48) = 0;
    *(result + 56) = (2 * v20) | 1;
    *(result + 64) = a1;
    *(result + 72) = a1 + 32;
    *(result + 80) = v20;
    *(result + 88) = (2 * v22) | 1;
    v23 = *(v13 + 8);
    swift_bridgeObjectRetain_n();
    v23(v15, v12);
    return a3;
  }

  __break(1u);
  return result;
}

void *sub_25C7BD658(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 4 * v2; ; i -= 4)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = v1[2];
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v13 = *&v1[v3 + 6];
    v14 = *&v1[v3 + 4];
    v15 = *&v1[i];
    v10 = v1[i + 2];
    v11 = v1[i + 3];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_25C7C86B8(v1);
    }

    v12 = &v1[v3];
    *(v12 + 2) = v15;
    v12[6] = v10;
    v12[7] = v11;
    result = swift_unknownObjectRelease();
    if (v6 >= v1[2])
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *v8 = v14;
    v8[1] = v13;
    result = swift_unknownObjectRelease();
LABEL_5:
    ++v4;
    --v6;
    v3 += 4;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_25C7BD788(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_25C7CD1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*(v14 + 16) || (v15 = sub_25C7BB2FC(a2, a3), (v16 & 1) == 0))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  sub_25C7B9970(*(v14 + 56) + 32 * v15, &v22);
  v17 = swift_dynamicCast();
  (*(v11 + 56))(v9, v17 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_25C7BDAE8(v9);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_25C7CD314();

    v22 = 0xD00000000000002CLL;
    v23 = 0x800000025C7CEA00;
    MEMORY[0x25F88E8A0](a2, a3);
    v18 = v22;
    v19 = v23;
    sub_25C7B9A14();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
    swift_willThrow();
    return v18 & 1;
  }

  (*(v11 + 32))(v13, v9, v10);
  LOBYTE(v18) = sub_25C7CD194();
  (*(v11 + 8))(v13, v10);
  return v18 & 1;
}

uint64_t sub_25C7BDA34(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 8 * v6);

    v8 = a1(&v10);

    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_25C7BDAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25C7BDB50()
{
  result = qword_27FC15928;
  if (!qword_27FC15928)
  {
    sub_25C7CD1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15928);
  }

  return result;
}

uint64_t sub_25C7BDBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ODCurareAnalysis::TestSkippedReason_optional __swiftcall TestSkippedReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25C7CD3F4();

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

  *v2 = v5;
  return result;
}

unint64_t TestSkippedReason.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_25C7BDCDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000025;
  }

  if (v2)
  {
    v4 = "%@\n maxTimestamp2=%@\n";
  }

  else
  {
    v4 = "ed while running test";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000025;
  }

  if (*a2)
  {
    v7 = "ed while running test";
  }

  else
  {
    v7 = "%@\n maxTimestamp2=%@\n";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25C7CD414();
  }

  return v9 & 1;
}

unint64_t sub_25C7BDD8C()
{
  result = qword_27FC15930;
  if (!qword_27FC15930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15930);
  }

  return result;
}

uint64_t sub_25C7BDDE0()
{
  sub_25C7CD4A4();
  sub_25C7CD244();

  return sub_25C7CD4B4();
}

uint64_t sub_25C7BDE60(uint64_t a1)
{
  sub_25C7CD244();
}

uint64_t sub_25C7BDECC(uint64_t a1)
{
  sub_25C7CD4A4();
  sub_25C7CD244();

  return sub_25C7CD4B4();
}

uint64_t sub_25C7BDF48@<X0>(char *a2@<X8>)
{
  v3 = sub_25C7CD3F4();

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

void sub_25C7BDFA8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = "ed while running test";
  }

  else
  {
    v3 = "%@\n maxTimestamp2=%@\n";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_25C7BDFE8(uint64_t a1)
{
  v2 = sub_25C7CD1D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  sub_25C7B9970(a1, v18);
  sub_25C7B9970(v18, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  swift_dynamicCast();
  if (!v17)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
LABEL_5:
    v10 = v9;
    goto LABEL_10;
  }

  sub_25C7C04D8(&v15);
  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
  {
    v10 = sub_25C7CD224();

    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    (*(v3 + 32))(v6, v8, v2);
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    sub_25C7CD174();
    v10 = sub_25C7CD2B4();
    (*(v3 + 8))(v6, v2);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v9 = sub_25C7CD2D4();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v9 = sub_25C7CD2B4();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v9 = sub_25C7CD2C4();
    goto LABEL_5;
  }

  sub_25C7C0540(0, &qword_27FC159B8, 0x277D82BB8);
  if (!swift_dynamicCast())
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000002ALL, 0x800000025C7CEAF0);
    sub_25C7CD394();
    v10 = v15;
    v12 = v16;
    sub_25C7B9A14();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 16) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v18);
    return v10;
  }

  v10 = v15;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v18);
  return v10;
}

uint64_t sub_25C7BE44C()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for BinomialTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for BinomialTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v19 = v0;
  v16 = sub_25C7C069C;
  v17 = &v18;
  v13 = sub_25C7C0684;
  v14 = &v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v7 = sub_25C7CD384();
  if (v1)
  {
    v20[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = v7;

    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v10 = sub_25C7CD3E4();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v20[0] = v10;

    sub_25C7BF9D8(v11, 1, v20);
    (*(v3 + 8))(v5, v2);

    return v20[0];
  }
}

uint64_t sub_25C7BE6C0()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for ZTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for ZTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v19 = v0;
  v16 = sub_25C7C069C;
  v17 = &v18;
  v13 = sub_25C7C0684;
  v14 = &v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v7 = sub_25C7CD384();
  if (v1)
  {
    v20[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = v7;

    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v10 = sub_25C7CD3E4();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v20[0] = v10;

    sub_25C7BF9D8(v11, 1, v20);
    (*(v3 + 8))(v5, v2);

    return v20[0];
  }
}

uint64_t sub_25C7BE934()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for KSTestTwoSampleResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for KSTestTwoSampleResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v19 = v0;
  v16 = sub_25C7C05F0;
  v17 = &v18;
  v13 = sub_25C7C0684;
  v14 = &v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v7 = sub_25C7CD384();
  if (v1)
  {
    v20[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = v7;

    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v10 = sub_25C7CD3E4();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v20[0] = v10;

    sub_25C7BF9D8(v11, 1, v20);
    (*(v3 + 8))(v5, v2);

    return v20[0];
  }
}

uint64_t sub_25C7BEBA8()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = type metadata accessor for MalformedTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for MalformedTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v19 = v0;
  v16 = sub_25C7C069C;
  v17 = &v18;
  v13 = sub_25C7BF9C0;
  v14 = &v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v7 = sub_25C7CD384();
  if (v1)
  {
    v20[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = v7;

    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v10 = sub_25C7CD3E4();
    }

    else
    {
      v10 = MEMORY[0x277D84F98];
    }

    v20[0] = v10;

    sub_25C7BF9D8(v11, 1, v20);
    (*(v3 + 8))(v5, v2);

    return v20[0];
  }
}

uint64_t sub_25C7BEE1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v7 = 0xE300000000000000;
    a1 = 7104878;
    goto LABEL_5;
  }

  sub_25C7BDFE8(a3);
  if (v3)
  {
    MEMORY[0x25F88EF00](v3);

    v7 = a2;
LABEL_5:
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000001BLL, 0x800000025C7CEAA0);

    MEMORY[0x25F88E8A0](a1, v7);

    MEMORY[0x25F88E8A0](8236, 0xE200000000000000);
    sub_25C7CD394();
    MEMORY[0x25F88E8A0](0xD000000000000022, 0x800000025C7CEAC0);
    a1 = 0xE000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 1;
    swift_willThrow();
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TestSkippedReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TestSkippedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_25C7BF240(uint64_t a1)
{
  sub_25C7BF910(319, &qword_27FC15948, &type metadata for TestSkippedReason);
  if (v1 <= 0x3F)
  {
    sub_25C7BF354(319);
    if (v2 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_25C7BF910(319, &qword_27FC15960, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25C7BF354(uint64_t a1)
{
  if (!qword_27FC15950)
  {
    sub_25C7CD1D4();
    v1 = sub_25C7CD2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FC15950);
    }
  }
}

void sub_25C7BF3F4(uint64_t a1)
{
  sub_25C7BF910(319, &qword_27FC15948, &type metadata for TestSkippedReason);
  if (v1 <= 0x3F)
  {
    sub_25C7BF354(319);
    if (v2 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_25C7BF910(319, &qword_27FC15960, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25C7BF55C(uint64_t a1)
{
  sub_25C7BF910(319, &qword_27FC15948, &type metadata for TestSkippedReason);
  if (v1 <= 0x3F)
  {
    sub_25C7BF354(319);
    if (v2 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25C7BF804(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C7BF83C(uint64_t a1)
{
  sub_25C7BF910(319, &qword_27FC15948, &type metadata for TestSkippedReason);
  if (v1 <= 0x3F)
  {
    sub_25C7BF354(319);
    if (v2 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15998, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C7BF910(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25C7CD2F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25C7BF9D8(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_25C7BB2FC(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_25C7BFED4(v16, v5 & 1);
    v11 = sub_25C7BB2FC(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_25C7CD434();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_25C7BFD68();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    MEMORY[0x25F88EF10](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x25F88EF00](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000001BLL, 0x800000025C7CEA80);
    sub_25C7CD394();
    MEMORY[0x25F88E8A0](39, 0xE100000000000000);
    result = sub_25C7CD3A4();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_25C7BB2FC(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_25C7BFED4(v33, 1);
        v29 = sub_25C7BB2FC(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

id sub_25C7BFD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
  v2 = *v0;
  v3 = sub_25C7CD3C4();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_25C7BFED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
  v35 = v4;
  result = sub_25C7CD3D4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25C7CD4A4();
      sub_25C7CD244();
      result = sub_25C7CD4B4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C7C0178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v33 = v4;
  result = sub_25C7CD3D4();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25C7C0668(v24, v34);
      }

      else
      {
        sub_25C7B9970(v24, v34);
      }

      sub_25C7CD4A4();
      sub_25C7CD244();
      result = sub_25C7CD4B4();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25C7C0668(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

__n128 sub_25C7C0430@<Q0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  a2(&v8, a1, &v7);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_allocError();
    *v6 = v7;
  }

  else
  {
    result = v9;
    *a3 = v8;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_25C7C04D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C7C0540(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25C7C0588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C7C060C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, a1[1], a1 + 2);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
  }

  return result;
}

_OWORD *sub_25C7C0668(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C7C06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159D0, &qword_25C7CE1D0);
  v12[0] = a2;

  sub_25C7B919C(v12, v13);
  v10[2] = v13[2];
  v10[3] = v13[3];
  v11 = v14;
  v10[0] = v13[0];
  v10[1] = v13[1];
  sub_25C7C0C60(a1, v13, a3, v15);
  sub_25C7C25B8(v10);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v8 = (*(v7 + 40))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v8;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_25C7C0C60@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[5];
  v66 = a2[4];
  v67 = a2[3];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = sub_25C7C8D34(a1);
  if (v14)
  {
    v72[0] = v14;
    runPreprocessingSteps(_:steps:lastRun:)(v72, v7);
    v34 = v72[0];
    v35 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v9, v67, v66, v34, a3, &v70, v69);

    objc_autoreleasePoolPop(v35);
    v71 = *&v69[0];
    v47 = runPostprocessingSteps(_:steps:lastRun:)(&v71, v10);
    v48 = v71;
    v49 = MEMORY[0x25F88EB50](v47);
    sub_25C7C9480(v11, v12, v13, v48, &v70, v69);

    objc_autoreleasePoolPop(v49);
    return sub_25C7C519C(v69, a4);
  }

  v68 = v8;
  v64 = v9;
  v65 = v7;
  v15 = sub_25C7C8E5C(a1);
  if (!v15)
  {
    v40 = 0x800000025C7CED90;
    v36 = type metadata accessor for MalformedTestResult(0);
    a4[3] = v36;
    a4[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v38 = *(v36 + 28);
    v39 = sub_25C7CD1D4();
    result = (*(*(v39 - 8) + 56))(boxed_opaque_existential_0 + v38, 1, 1, v39);
    v45 = (boxed_opaque_existential_0 + *(v36 + 32));
    v46 = 0xD00000000000001FLL;
LABEL_31:
    *v45 = v46;
    v45[1] = v40;
    return result;
  }

  v16 = v15;
  v58 = v11;
  v59 = v10;
  v56 = v13;
  v57 = v12;
  v17 = v8;
  v18 = (v15 >> 62);
  v61 = a3;
  v62 = v68[2];
  if (v62)
  {
    if (v18)
    {
      goto LABEL_35;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25C7CD3B4())
    {
      v20 = 0;
      v60 = v18;
      while (v20 < v17[2])
      {
        v63 = v20 + 1;

        v21 = 0;
        while (i != v21)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x25F88E970](v21, v16);
          }

          else
          {
            if (v21 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v22 = *(v16 + 8 * v21 + 32);
          }

          v18 = v22;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v17 = [v18 respondsToSelector_];

          ++v21;
          if ((v17 & 1) == 0)
          {

            v40 = 0x800000025C7CEDB0;
            v41 = type metadata accessor for MalformedTestResult(0);
            a4[3] = v41;
            a4[4] = &off_286E69AA8;
            v42 = __swift_allocate_boxed_opaque_existential_0(a4);
            *v42 = 0x656D726F666C614DLL;
            v42[1] = 0xE900000000000064;
            *(v42 + 8) = 0;
            v43 = *(v41 + 28);
            v44 = sub_25C7CD1D4();
            result = (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
            v45 = (v42 + *(v41 + 32));
            v46 = 0xD000000000000028;
            goto LABEL_31;
          }
        }

        v20 = v63;
        v17 = v68;
        v18 = v60;
        if (v63 == v62)
        {
          goto LABEL_19;
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }
  }

LABEL_19:
  if (v18)
  {
    v23 = sub_25C7CD3B4();
    v24 = v65;
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_37:

    v26 = MEMORY[0x277D84F90];
LABEL_38:
    v72[0] = v26;
    runPreprocessingSteps(_:steps:lastRun:)(v72, v24);
    v51 = v72[0];
    v52 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v64, v67, v66, v51, v61, &v70, v69);

    objc_autoreleasePoolPop(v52);
    v71 = *&v69[0];
    v53 = runPostprocessingSteps(_:steps:lastRun:)(&v71, v59);
    v54 = v71;
    v55 = MEMORY[0x25F88EB50](v53);
    sub_25C7C9480(v58, v57, v56, v54, &v70, v69);

    objc_autoreleasePoolPop(v55);
    return sub_25C7C519C(v69, a4);
  }

  v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v65;
  if (!v23)
  {
    goto LABEL_37;
  }

LABEL_21:
  *&v69[0] = MEMORY[0x277D84F90];
  result = sub_25C7CC5BC(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = *&v69[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x25F88E970](v25, v16);
      }

      else
      {
        v27 = *(v16 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = sub_25C7CD264();
      v30 = [v28 dictionaryWithValuesForKeys_];

      v31 = sub_25C7CD204();
      *&v69[0] = v26;
      v33 = v26[2];
      v32 = v26[3];
      if (v33 >= v32 >> 1)
      {
        sub_25C7CC5BC((v32 > 1), v33 + 1, 1);
        v26 = *&v69[0];
      }

      ++v25;
      v26[2] = v33 + 1;
      v26[v33 + 4] = v31;
    }

    while (v23 != v25);

    v24 = v65;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

void sub_25C7C1448(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v81 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A30, &qword_25C7CE270);
  v6 = MEMORY[0x28223BE20](v78);
  v82 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v72 = (&v71 - v9);
  MEMORY[0x28223BE20](v8);
  v76 = (&v71 - v10);
  v73 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v11 = sub_25C7CD3B4();
LABEL_3:
    v12 = *(v81 + 16);
    if (v12 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = *(v81 + 16);
    }

    v94 = MEMORY[0x277D84F90];
    sub_25C7CC5BC(0, v13 & ~(v13 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_64:

      __break(1u);
      return;
    }

    v14 = v94;
    v77 = a1;
    v71 = v4;
    v80 = v12;
    if (!v13)
    {
      break;
    }

    v75 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v73)
    {
      v74 = sub_25C7CD3B4();
    }

    else
    {
      v74 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v79 = a1 & 0xC000000000000001;
    v83 = v13;
    while (v13 != v15)
    {
      if (v74 == v15)
      {
        goto LABEL_57;
      }

      if (v79)
      {
        v16 = MEMORY[0x25F88E970](v15, a1);
      }

      else
      {
        if (v15 >= *(v75 + 16))
        {
          goto LABEL_61;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v3 = v16;
      if (v80 == v15)
      {
        goto LABEL_64;
      }

      v17 = v14;
      v18 = sub_25C7CD1D4();
      v19 = *(v18 - 8);
      v4 = *(v19 + 16);
      v20 = v82;
      v21 = v81 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
      v22 = *(v78 + 48);
      *v82 = v3;
      (v4)(v20 + v22, v21, v18);
      v91[0] = 1635017060;
      v91[1] = 0xE400000000000000;
      v23 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
      v91[2] = v3;
      v91[5] = v23;
      v92[0] = 0x6D617473656D6974;
      v92[1] = 0xE900000000000070;
      v93[3] = v18;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v93);
      (v4)(boxed_opaque_existential_0, v20 + v22, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v25 = sub_25C7CD3E4();
      v26 = v3;

      sub_25C7C51B4(v91, &v88, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v88;
      a1 = v89;
      v27 = sub_25C7BB2FC(v88, v89);
      v14 = v17;
      if (v28)
      {
        goto LABEL_52;
      }

      v4 = (v25 + 8);
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
      v29 = (v25[6] + 16 * v27);
      *v29 = v3;
      v29[1] = a1;
      sub_25C7C0668(v90, (v25[7] + 32 * v27));
      v30 = v25[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_53;
      }

      v25[2] = v32;
      sub_25C7C51B4(v92, &v88, &qword_27FC15A10, &qword_25C7CE248);
      a1 = v88;
      v3 = v89;
      v33 = sub_25C7BB2FC(v88, v89);
      if (v34)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

      *(v4 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v35 = (v25[6] + 16 * v33);
      *v35 = a1;
      v35[1] = v3;
      sub_25C7C0668(v90, (v25[7] + 32 * v33));
      v36 = v25[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_53;
      }

      v25[2] = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
      swift_arrayDestroy();
      sub_25C7C528C(v82, &qword_27FC15A30, &qword_25C7CE270);
      v94 = v17;
      v4 = *(v17 + 16);
      v38 = *(v17 + 24);
      v3 = (v4 + 1);
      if (v4 >= v38 >> 1)
      {
        sub_25C7CC5BC((v38 > 1), v4 + 1, 1);
        v14 = v94;
      }

      ++v15;
      *(v14 + 16) = v3;
      *(v14 + 8 * v4 + 32) = v25;
      v13 = v83;
      a1 = v77;
      if (v83 == v15)
      {
        v4 = v75;
        v12 = v80;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v79 = a1 & 0xC000000000000001;
LABEL_28:
  if ((a1 & 0x8000000000000000) != 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = v4;
  }

  v82 = v39;
  v75 = v4;
  if (v73)
  {
    while (v13 != sub_25C7CD3B4())
    {
LABEL_35:
      if (v79)
      {
        v40 = MEMORY[0x25F88E970](v13, a1);
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_59;
        }

        v40 = *(a1 + 8 * v13 + 32);
      }

      v41 = v40;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_58;
      }

      if (v12 == v13)
      {

        return;
      }

      if (v13 >= v12)
      {
        goto LABEL_60;
      }

      v42 = sub_25C7CD1D4();
      v43 = *(v42 - 8);
      v44 = *(v43 + 16);
      v45 = v81 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v46 = *(v43 + 72);
      v83 = v13;
      v47 = v45 + v46 * v13;
      v48 = v78;
      v49 = *(v78 + 48);
      v50 = v72;
      *v72 = v41;
      v44(v50 + v49, v47, v42);
      v51 = v76;
      sub_25C7C521C(v50, v76);
      v52 = *v51;
      v53 = *(v48 + 48);
      v85[0] = 1635017060;
      v85[1] = 0xE400000000000000;
      v54 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
      v85[2] = v52;
      v85[5] = v54;
      v86[0] = 0x6D617473656D6974;
      v86[1] = 0xE900000000000070;
      v87[3] = v42;
      v4 = &v84;
      v55 = __swift_allocate_boxed_opaque_existential_0(v87);
      v44(v55, v51 + v53, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      a1 = sub_25C7CD3E4();
      v56 = v52;

      sub_25C7C51B4(v85, &v88, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v88;
      v57 = v89;
      v58 = sub_25C7BB2FC(v88, v89);
      if (v59)
      {
        goto LABEL_54;
      }

      *(a1 + 64 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v60 = (*(a1 + 48) + 16 * v58);
      *v60 = v3;
      v60[1] = v57;
      sub_25C7C0668(v90, (*(a1 + 56) + 32 * v58));
      v61 = *(a1 + 16);
      v31 = __OFADD__(v61, 1);
      v62 = v61 + 1;
      if (v31)
      {
        goto LABEL_55;
      }

      *(a1 + 16) = v62;
      sub_25C7C51B4(v86, &v88, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v88;
      v63 = v89;
      v64 = sub_25C7BB2FC(v88, v89);
      if (v65)
      {
        goto LABEL_54;
      }

      *(a1 + 64 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      v66 = (*(a1 + 48) + 16 * v64);
      *v66 = v3;
      v66[1] = v63;
      sub_25C7C0668(v90, (*(a1 + 56) + 32 * v64));
      v67 = *(a1 + 16);
      v31 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v31)
      {
        goto LABEL_55;
      }

      *(a1 + 16) = v68;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
      swift_arrayDestroy();
      sub_25C7C528C(v76, &qword_27FC15A30, &qword_25C7CE270);
      v94 = v14;
      v70 = *(v14 + 16);
      v69 = *(v14 + 24);
      v3 = (v70 + 1);
      if (v70 >= v69 >> 1)
      {
        sub_25C7CC5BC((v69 > 1), v70 + 1, 1);
        v14 = v94;
      }

      *(v14 + 16) = v3;
      *(v14 + 8 * v70 + 32) = a1;
      v13 = v83 + 1;
      a1 = v77;
      v12 = v80;
      v4 = v75;
      if (!v73)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    if (v13 != *(v4 + 16))
    {
      goto LABEL_35;
    }
  }
}

id Timeseries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Timeseries.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Timeseries();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Timeseries.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Timeseries();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_25C7C23D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A28, &unk_25C7CE260);
    v3 = sub_25C7CD3E4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25C7BB374(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25C7C24B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
    v3 = sub_25C7CD3E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25C7BB2FC(v5, v6);
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

unint64_t sub_25C7C260C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
    v3 = sub_25C7CD3E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7C51B4(v4, &v13, &qword_27FC15A10, &qword_25C7CE248);
      v5 = v13;
      v6 = v14;
      result = sub_25C7BB2FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25C7C0668(&v15, (v3[7] + 32 * result));
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

uint64_t sub_25C7C273C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, __CFString *a8)
{
  v142 = a8;
  v143 = a6;
  v139 = a7;
  v145 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v141 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v137 = v126 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v126 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v126 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A38, &qword_25C7CE278);
  MEMORY[0x28223BE20](v22 - 8);
  v140 = v126 - v23;
  v144 = type metadata accessor for BinomialTestResult(0);
  MEMORY[0x28223BE20](v144);
  v26 = v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v125 = v24;
    v27 = sub_25C7CD3B4();
    v24 = v125;
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 != *(a2 + 16))
  {
    v31 = 0x800000025C7CEC30;
    sub_25C7B9A14();
    swift_allocError();
    v33 = 0xD000000000000036;
LABEL_24:
    *v32 = v33;
    *(v32 + 8) = v31;
    *(v32 + 16) = 0;
LABEL_25:
    swift_willThrow();
    return v31;
  }

  v134 = v24;
  v135 = v26;
  v136 = v21;
  v28 = a3 == 0x736B6E756863 && a4 == 0xE600000000000000;
  v29 = v28;
  v30 = v145;
  if (!v28)
  {
    if ((sub_25C7CD414() & 1) == 0)
    {
      if (a3 == 1937334628 && a4 == 0xE400000000000000)
      {
LABEL_17:
        if ((sub_25C7CD414() & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if ((sub_25C7CD414() & 1) == 0)
      {
        v31 = 0x800000025C7CEC70;
        sub_25C7B9A14();
        swift_allocError();
        v33 = 0xD000000000000024;
        goto LABEL_24;
      }
    }

    if (v29)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (!v30 || [v30 integerValue] <= 0)
  {
    v31 = 0x800000025C7CED10;
    sub_25C7B9A14();
    swift_allocError();
    v33 = 0xD00000000000004CLL;
    goto LABEL_24;
  }

LABEL_20:
  v129 = v19;
  v34 = v138;
  sub_25C7C1448(a1, a2);
  v133 = v35;
  v127 = v34;
  v126[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C7CDE50;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A08, &unk_25C7CE238);
  v38 = swift_initStackObject();
  v138 = xmmword_25C7CDFC0;
  *(v38 + 16) = xmmword_25C7CDFC0;
  *(v38 + 32) = 0x73646C656966;
  *(v38 + 40) = 0xE600000000000000;
  *(v38 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
  *(v38 + 48) = &unk_286E69730;
  v39 = sub_25C7C260C(v38);
  swift_setDeallocating();
  sub_25C7C528C(v38 + 32, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 32) = 0x6148657275736E65;
  *(inited + 40) = 0xEF73646C65694673;
  *(inited + 48) = v39;
  v126[2] = v37;
  v40 = swift_initStackObject();
  *(v40 + 16) = v138;
  *(v40 + 32) = 0x646C656966;
  v41 = v40 + 32;
  *(v40 + 72) = MEMORY[0x277D837D0];
  *(v40 + 40) = 0xE500000000000000;
  *(v40 + 48) = 0x6D617473656D6974;
  *(v40 + 56) = 0xE900000000000070;
  v42 = sub_25C7C260C(v40);
  swift_setDeallocating();
  v43 = 1937334628;
  sub_25C7C528C(v41, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000025C7CECA0;
  v132 = inited;
  *(inited + 72) = v42;
  if (a3 == 1937334628 && a4 == 0xE400000000000000)
  {
    v128 = 1937334628;
    v131 = 0xE400000000000000;
  }

  else
  {
    v45 = sub_25C7CD414();
    if ((v45 & 1) == 0)
    {
      v43 = 0x6E75527473616CLL;
    }

    v128 = v43;
    if (v45)
    {
      v46 = 0xE400000000000000;
    }

    else
    {
      v46 = 0xE700000000000000;
    }

    v131 = v46;
  }

  v47 = swift_initStackObject();
  *(v47 + 32) = 0x6C656946656D6974;
  v48 = v47 + 32;
  *(v47 + 16) = v138;
  *(v47 + 72) = MEMORY[0x277D837D0];
  *(v47 + 40) = 0xE900000000000064;
  *(v47 + 48) = 0x6D617473656D6974;
  v126[0] = 0xE900000000000070;
  *(v47 + 56) = 0xE900000000000070;
  v130 = sub_25C7C260C(v47);
  swift_setDeallocating();
  sub_25C7C528C(v48, &qword_27FC15A10, &qword_25C7CE248);
  v49 = swift_initStackObject();
  *(v49 + 16) = v138;
  v50 = swift_initStackObject();
  *(v50 + 16) = v138;
  *(v50 + 32) = 0x74676E654C78616DLL;
  v51 = v50 + 32;
  *(v50 + 72) = MEMORY[0x277D83B88];
  *(v50 + 40) = 0xE900000000000068;
  *(v50 + 48) = 1;
  v52 = sub_25C7C260C(v50);
  swift_setDeallocating();
  sub_25C7C528C(v51, &qword_27FC15A10, &qword_25C7CE248);
  *(v49 + 32) = 0x786966667573;
  *(v49 + 40) = 0xE600000000000000;
  *&v138 = v49;
  *(v49 + 48) = v52;
  v53 = v145;
  if (v145)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_25C7CE190;
    *(v54 + 32) = 0x6C65694661746164;
    *(v54 + 40) = 0xE900000000000064;
    *(v54 + 48) = 1635017060;
    *(v54 + 56) = 0xE400000000000000;
    v55 = MEMORY[0x277D837D0];
    *(v54 + 72) = MEMORY[0x277D837D0];
    *(v54 + 80) = 0x6C656946656D6974;
    *(v54 + 88) = 0xE900000000000064;
    *(v54 + 96) = 0x6D617473656D6974;
    *(v54 + 104) = v126[0];
    v56 = v53;
    *(v54 + 120) = v55;
    *(v54 + 128) = 0xD000000000000011;
    *(v54 + 136) = 0x800000025C7CE740;
    v57 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    *(v54 + 144) = v53;
    *(v54 + 168) = v57;
    *(v54 + 176) = 0xD000000000000011;
    v58 = v139;
    *(v54 + 184) = 0x800000025C7CECC0;
    *(v54 + 192) = v58;
    *(v54 + 216) = v57;
    *(v54 + 224) = 0x6568746F70794870;
    *(v54 + 264) = v57;
    v59 = v142;
    *(v54 + 232) = 0xEB00000000736973;
    *(v54 + 240) = v59;
    v60 = v58;
    v61 = v59;
    v62 = v56;
    v63 = sub_25C7C260C(v54);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_25C7CE1A0;
    *(v64 + 32) = 0x6C65694661746164;
    *(v64 + 40) = 0xE900000000000064;
    *(v64 + 48) = 1635017060;
    *(v64 + 56) = 0xE400000000000000;
    v65 = MEMORY[0x277D837D0];
    *(v64 + 72) = MEMORY[0x277D837D0];
    *(v64 + 80) = 0x6C656946656D6974;
    *(v64 + 88) = 0xE900000000000064;
    *(v64 + 96) = 0x6D617473656D6974;
    *(v64 + 104) = v126[0];
    *(v64 + 120) = v65;
    *(v64 + 128) = 0xD000000000000011;
    *(v64 + 136) = 0x800000025C7CECC0;
    v66 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v67 = v139;
    *(v64 + 144) = v139;
    *(v64 + 168) = v66;
    *(v64 + 176) = 0x6568746F70794870;
    *(v64 + 216) = v66;
    v68 = v142;
    *(v64 + 184) = 0xEB00000000736973;
    *(v64 + 192) = v68;
    v69 = v67;
    v70 = v68;
    v63 = sub_25C7C260C(v64);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
  }

  v71 = v131;
  v72 = v132;
  v150[0] = &unk_286E69770;
  v150[1] = v132;
  v73 = v128;
  v150[2] = v128;
  v150[3] = v131;
  v74 = v130;
  v150[4] = v130;
  v151 = v138;
  strcpy(v152, "BinomialTest");
  BYTE5(v152[1]) = 0;
  HIWORD(v152[1]) = -5120;
  v153 = v63;
  v154 = v133;

  v145 = v63;

  v75 = v143;
  v76 = v127;
  runPreprocessingSteps(_:steps:lastRun:)(&v154, v72);
  if (v76)
  {

    swift_getErrorValue();
    v78 = sub_25C7CD444();
    v80 = v79;
    v81 = type metadata accessor for MalformedTestResult(0);
    v149[3] = v81;
    v149[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v149);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v83 = *(v81 + 28);
    v84 = sub_25C7CD1D4();
    (*(*(v84 - 8) + 56))(boxed_opaque_existential_0 + v83, 1, 1, v84);
    v85 = (boxed_opaque_existential_0 + *(v81 + 32));
    *v85 = v78;
    v85[1] = v80;
    MEMORY[0x25F88EF00](v76);
  }

  else
  {
    v77 = v154;
    v142 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v73, v71, v74, v77, v75, &v147, v146);
    v98 = v151;

    objc_autoreleasePoolPop(v142);
    v148[0] = *&v146[0];
    v99 = runPostprocessingSteps(_:steps:lastRun:)(v148, v98);
    v119 = v152[0];
    v120 = v152[1];
    v121 = v153;
    v122 = v148[0];
    v123 = MEMORY[0x25F88EB50](v99);
    sub_25C7C9480(v119, v120, v121, v122, &v147, v146);

    objc_autoreleasePoolPop(v123);
    sub_25C7C519C(v146, v149);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A18, &qword_25C7CE250);
  v86 = v140;
  v87 = v144;
  v88 = swift_dynamicCast();
  v89 = v129;
  v90 = v135;
  if ((v88 & 1) == 0)
  {

    sub_25C7C25B8(v150);

    v31 = 1;
    (*(v134 + 56))(v86, 1, 1, v87);
    sub_25C7C528C(v86, &qword_27FC15A38, &qword_25C7CE278);
    sub_25C7B9A14();
    swift_allocError();
    *v96 = 0xD000000000000027;
    *(v96 + 8) = 0x800000025C7CED60;
    *(v96 + 16) = 1;
    goto LABEL_25;
  }

  (*(v134 + 56))(v86, 0, 1, v87);
  sub_25C7C52EC(v86, v90, type metadata accessor for BinomialTestResult);
  v91 = *(v90 + 17);
  if (v91 != 2)
  {
    if (v91)
    {
      v97 = "ed while running test";
    }

    else
    {
      v97 = "%@\n maxTimestamp2=%@\n";
    }

    if (v97 | 0x8000000000000000) != 0x800000025C7CE490 || (v91)
    {
      v100 = sub_25C7CD414();

      if ((v100 & 1) == 0)
      {
        v117 = *(v90 + 17);
        if (v117 == 2)
        {
          goto LABEL_41;
        }

        sub_25C7C25B8(v150);

        if (v117)
        {
          v118 = "ed while running test";
        }

        else
        {
          v118 = "%@\n maxTimestamp2=%@\n";
        }

        if (v118 | 0x8000000000000000) == 0x800000025C7CE4C0 && (v117)
        {

          v92 = v141;
          v93 = v137;
          v95 = v143;
        }

        else
        {
          v124 = sub_25C7CD414();

          v92 = v141;
          v93 = v137;
          v95 = v143;
          if ((v124 & 1) == 0)
          {
            v142 = 0;
            goto LABEL_55;
          }
        }

        v101 = &smallSampleSize;
LABEL_54:
        v142 = *v101;
LABEL_55:
        v94 = v144;
        goto LABEL_56;
      }

      v92 = v141;
      v93 = v137;
      v95 = v143;
    }

    else
    {

      v92 = v141;
      v93 = v137;
      v95 = v143;
    }

    sub_25C7C25B8(v150);

    v101 = testError;
    goto LABEL_54;
  }

LABEL_41:

  sub_25C7C25B8(v150);

  v142 = 0;
  v92 = v141;
  v93 = v137;
  v95 = v143;
  v94 = v144;
LABEL_56:
  LODWORD(v145) = *(v90 + 16);
  if (v145 == 1)
  {
    sub_25C7C51B4(v90 + v94[12], v136, &qword_27FC15920, &qword_25C7CE220);
    v95 = v90 + v94[7];
  }

  else
  {
    v102 = sub_25C7CD1D4();
    (*(*(v102 - 8) + 56))(v136, 1, 1, v102);
  }

  sub_25C7C51B4(v95, v89, &qword_27FC15920, &qword_25C7CE220);
  if (*(v90 + v94[8] + 8))
  {
    v144 = 0;
  }

  else
  {
    v144 = sub_25C7CD2A4();
  }

  if (*(v90 + v94[9]) == 2)
  {
    v143 = 0;
  }

  else
  {
    v143 = sub_25C7CD294();
  }

  v103 = *(v90 + v94[10]);
  v139 = *(v90 + v94[11]);
  v140 = v103;
  sub_25C7C51B4(v136, v93, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v89, v92, &qword_27FC15920, &qword_25C7CE220);
  v104 = sub_25C7CD1D4();
  v105 = *(v104 - 8);
  v106 = *(v105 + 48);
  v107 = v106(v93, 1, v104);
  v142 = v142;
  v108 = 0;
  if (v107 != 1)
  {
    v108 = sub_25C7CD184();
    (*(v105 + 8))(v93, v104);
  }

  v109 = v141;
  if (v106(v141, 1, v104) == 1)
  {
    v110 = 0;
  }

  else
  {
    v110 = sub_25C7CD184();
    (*(v105 + 8))(v109, v104);
  }

  v111 = v129;
  v112 = objc_allocWithZone(TestResult);
  v114 = v142;
  v113 = v143;
  v115 = v144;
  v116 = [v112 initWithTestRan:v145 testSkippedReason:v142 pValue:v144 rejectNullHypothesis:v143 sampleSize:v140 numSuccesses:v139 minTimestamp:v108 maxTimestamp:v110];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A20, &qword_25C7CE258);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25C7CE1B0;
  *(v31 + 32) = v116;

  sub_25C7C528C(v111, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v136, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C5354(v135, type metadata accessor for BinomialTestResult);
  return v31;
}

uint64_t sub_25C7C3A20(unint64_t a1, uint64_t a2, uint64_t a3, __CFString *a4, void *a5, uint64_t a6, void *a7)
{
  v163 = a7;
  v164 = a6;
  v168 = a5;
  v169 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v162 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v158 = (&v145 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v145 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v157 = &v145 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v145 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v145 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v145 - v27;
  MEMORY[0x28223BE20](v26);
  v167 = &v145 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159F8, &qword_25C7CE228);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v145 - v31;
  v165 = type metadata accessor for ZTestResult(0);
  MEMORY[0x28223BE20](v165);
  v166 = &v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v32;
  if (a1 >> 62)
  {
    v142 = v33;
    v35 = sub_25C7CD3B4();
    v33 = v142;
  }

  else
  {
    v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35 != *(a2 + 16))
  {
    v39 = 0x800000025C7CEC30;
    sub_25C7B9A14();
    swift_allocError();
    v41 = 0xD000000000000036;
    goto LABEL_25;
  }

  v153 = v33;
  v154 = v25;
  v156 = v28;
  v36 = v168;
  v37 = a3 == 0x736B6E756863 && v169 == 0xE600000000000000;
  v38 = v37;
  if (v37)
  {
LABEL_18:
    if (v36 && [v36 integerValue] > 0)
    {
      goto LABEL_20;
    }

    v39 = 0x800000025C7CED10;
    sub_25C7B9A14();
    swift_allocError();
    v41 = 0xD00000000000004CLL;
LABEL_25:
    *v40 = v41;
    *(v40 + 8) = v39;
    *(v40 + 16) = 0;
LABEL_26:
    swift_willThrow();
    return v39;
  }

  if ((sub_25C7CD414() & 1) == 0)
  {
    if (a3 == 1937334628 && v169 == 0xE400000000000000)
    {
      goto LABEL_17;
    }

    if ((sub_25C7CD414() & 1) == 0)
    {
      v39 = 0x800000025C7CEC70;
      sub_25C7B9A14();
      swift_allocError();
      v41 = 0xD000000000000024;
      goto LABEL_25;
    }
  }

  if (v38)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (sub_25C7CD414())
  {
    goto LABEL_18;
  }

LABEL_20:
  v149 = v22;
  sub_25C7C1448(a1, a2);
  v152 = v42;
  v147 = v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
  inited = swift_initStackObject();
  v145 = xmmword_25C7CDE50;
  *(inited + 16) = xmmword_25C7CDE50;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A08, &unk_25C7CE238);
  v45 = swift_initStackObject();
  v159 = xmmword_25C7CDFC0;
  *(v45 + 16) = xmmword_25C7CDFC0;
  *(v45 + 32) = 0x73646C656966;
  *(v45 + 40) = 0xE600000000000000;
  *(v45 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
  *(v45 + 48) = &unk_286E697B0;
  v46 = sub_25C7C260C(v45);
  swift_setDeallocating();
  sub_25C7C528C(v45 + 32, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 32) = 0x6148657275736E65;
  *(inited + 40) = 0xEF73646C65694673;
  *(inited + 48) = v46;
  v150 = v44;
  v47 = swift_initStackObject();
  *(v47 + 16) = v159;
  *(v47 + 32) = 0x646C656966;
  v48 = v47 + 32;
  *(v47 + 72) = MEMORY[0x277D837D0];
  *(v47 + 40) = 0xE500000000000000;
  *(v47 + 48) = 0x6D617473656D6974;
  *(v47 + 56) = 0xE900000000000070;
  v49 = sub_25C7C260C(v47);
  swift_setDeallocating();
  sub_25C7C528C(v48, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000025C7CECA0;
  v155 = inited;
  *(inited + 72) = v49;
  v148 = 1937334628;
  if (a3 == 1937334628 && v169 == 0xE400000000000000 || (sub_25C7CD414() & 1) != 0)
  {
    v50 = swift_allocObject();
    *(v50 + 32) = 0x6C656946656D6974;
    v51 = v50 + 32;
    *(v50 + 16) = v159;
    *(v50 + 72) = MEMORY[0x277D837D0];
    *(v50 + 40) = 0xE900000000000064;
    *(v50 + 48) = 0x6D617473656D6974;
    *(v50 + 56) = 0xE900000000000070;
    v169 = sub_25C7C260C(v50);
    swift_setDeallocating();
    sub_25C7C528C(v51, &qword_27FC15A10, &qword_25C7CE248);
    swift_deallocClassInstance();
    v151 = 0xE400000000000000;
  }

  else
  {
    v53 = swift_initStackObject();
    *(v53 + 32) = 0x6C656946656D6974;
    v54 = v53 + 32;
    *(v53 + 16) = v159;
    *(v53 + 72) = MEMORY[0x277D837D0];
    *(v53 + 40) = 0xE900000000000064;
    *(v53 + 48) = 0x6D617473656D6974;
    *(v53 + 56) = 0xE900000000000070;
    v169 = sub_25C7C260C(v53);
    swift_setDeallocating();
    sub_25C7C528C(v54, &qword_27FC15A10, &qword_25C7CE248);
    v151 = 0xE700000000000000;
    v148 = 0x6E75527473616CLL;
  }

  v55 = MEMORY[0x277D83B88];
  v56 = v168;
  if (v168)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v145;
    v58 = swift_initStackObject();
    *(v58 + 32) = 0x74676E654C78616DLL;
    v59 = v58 + 32;
    *(v58 + 16) = v159;
    *(v58 + 72) = v55;
    *(v58 + 40) = 0xE900000000000068;
    *(v58 + 48) = 2;
    v60 = sub_25C7C260C(v58);
    swift_setDeallocating();
    sub_25C7C528C(v59, &qword_27FC15A10, &qword_25C7CE248);
    *(v57 + 32) = 0x786966667573;
    *(v57 + 40) = 0xE600000000000000;
    *(v57 + 48) = v60;
    v146 = 0x800000025C7CE700;
    v61 = swift_initStackObject();
    *(v61 + 16) = v159;
    *(v61 + 32) = 0xD000000000000011;
    *(v61 + 40) = 0x800000025C7CE740;
    v62 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    *(v61 + 72) = v62;
    *(v61 + 48) = v56;
    v63 = v56;
    v64 = sub_25C7C260C(v61);
    swift_setDeallocating();
    sub_25C7C528C(v61 + 32, &qword_27FC15A10, &qword_25C7CE248);
    v65 = v146;
    *(v57 + 56) = 0xD000000000000010;
    *(v57 + 64) = v65;
    *(v57 + 72) = v64;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_25C7CE1A0;
    *(v66 + 32) = 0x6C65694661746164;
    *(v66 + 40) = 0xE900000000000064;
    *(v66 + 48) = 1635017060;
    *(v66 + 56) = 0xE400000000000000;
    v67 = MEMORY[0x277D837D0];
    *(v66 + 72) = MEMORY[0x277D837D0];
    *(v66 + 80) = 0x6C656946656D6974;
    *(v66 + 88) = 0xE900000000000064;
    *(v66 + 96) = 0x6D617473656D6974;
    *(v66 + 104) = 0xE900000000000070;
    *(v66 + 120) = v67;
    *(v66 + 128) = 0xD000000000000011;
    *(v66 + 136) = 0x800000025C7CE740;
    *(v66 + 144) = v63;
    *(v66 + 168) = v62;
    *(v66 + 176) = 0xD000000000000011;
    *(v66 + 216) = v62;
    v68 = v163;
    *(v66 + 184) = 0x800000025C7CECC0;
    *(v66 + 192) = v68;
    v69 = v68;
    v70 = v63;
    v71 = sub_25C7C260C(v66);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
    v72 = v57;
    swift_deallocClassInstance();
  }

  else
  {
    v72 = swift_allocObject();
    *(v72 + 16) = v159;
    v73 = swift_initStackObject();
    *(v73 + 32) = 0x74676E654C78616DLL;
    v74 = v73 + 32;
    *(v73 + 16) = v159;
    *(v73 + 72) = v55;
    *(v73 + 40) = 0xE900000000000068;
    *(v73 + 48) = 2;
    v75 = sub_25C7C260C(v73);
    swift_setDeallocating();
    sub_25C7C528C(v74, &qword_27FC15A10, &qword_25C7CE248);
    *(v72 + 32) = 0x786966667573;
    *(v72 + 40) = 0xE600000000000000;
    *(v72 + 48) = v75;
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_25C7CE1C0;
    *(v76 + 32) = 0x6C65694661746164;
    *(v76 + 40) = 0xE900000000000064;
    *(v76 + 48) = 1635017060;
    *(v76 + 56) = 0xE400000000000000;
    v77 = MEMORY[0x277D837D0];
    *(v76 + 72) = MEMORY[0x277D837D0];
    *(v76 + 80) = 0x6C656946656D6974;
    *(v76 + 88) = 0xE900000000000064;
    *(v76 + 96) = 0x6D617473656D6974;
    *(v76 + 104) = 0xE900000000000070;
    *(v76 + 120) = v77;
    *(v76 + 128) = 0xD000000000000011;
    *(v76 + 136) = 0x800000025C7CECC0;
    *(v76 + 168) = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v78 = v163;
    *(v76 + 144) = v163;
    v79 = v78;
    v71 = sub_25C7C260C(v76);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
  }

  v80 = v160;
  v174[0] = &unk_286E697F0;
  v81 = v155;
  v174[1] = v155;
  v175 = v148;
  v176 = v151;
  v177 = v169;
  v178 = v72;
  v179 = 0x747365545ALL;
  v180 = 0xE500000000000000;
  v181 = v71;
  v182 = v152;

  v163 = v71;

  v82 = v164;
  v83 = v147;
  runPreprocessingSteps(_:steps:lastRun:)(&v182, v81);
  v168 = v72;
  if (v83)
  {

    swift_getErrorValue();
    v89 = sub_25C7CD444();
    v91 = v90;
    v92 = type metadata accessor for MalformedTestResult(0);
    v173[3] = v92;
    v173[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v173);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v94 = *(v92 + 28);
    v95 = sub_25C7CD1D4();
    (*(*(v95 - 8) + 56))(boxed_opaque_existential_0 + v94, 1, 1, v95);
    v96 = (boxed_opaque_existential_0 + *(v92 + 32));
    *v96 = v89;
    v96[1] = v91;
    MEMORY[0x25F88EF00](v83);
  }

  else
  {
    v84 = v175;
    v85 = v176;
    v86 = v177;
    v87 = v182;
    v88 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v84, v85, v86, v87, v82, &v171, v170);
    v106 = v178;

    objc_autoreleasePoolPop(v88);
    v172[0] = *&v170[0];
    v107 = runPostprocessingSteps(_:steps:lastRun:)(v172, v106);
    v136 = v179;
    v137 = v180;
    v138 = v181;
    v139 = v172[0];
    v140 = MEMORY[0x25F88EB50](v107);
    sub_25C7C9480(v136, v137, v138, v139, &v171, v170);

    objc_autoreleasePoolPop(v140);
    sub_25C7C519C(v170, v173);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A18, &qword_25C7CE250);
  v97 = v165;
  v98 = swift_dynamicCast();
  v99 = v166;
  if ((v98 & 1) == 0)
  {

    sub_25C7C25B8(v174);

    v103 = v97;
    v39 = 1;
    (*(v153 + 56))(v80, 1, 1, v103);
    sub_25C7C528C(v80, &qword_27FC159F8, &qword_25C7CE228);
    sub_25C7B9A14();
    swift_allocError();
    *v104 = 0xD000000000000020;
    *(v104 + 8) = 0x800000025C7CECE0;
    *(v104 + 16) = 1;
    goto LABEL_26;
  }

  (*(v153 + 56))(v80, 0, 1, v97);
  sub_25C7C52EC(v80, v99, type metadata accessor for ZTestResult);
  v100 = *(v99 + 17);
  if (v100 == 2)
  {
LABEL_39:

    sub_25C7C25B8(v174);

    v169 = 0;
    v101 = v154;
    v102 = v158;
    goto LABEL_50;
  }

  if (v100)
  {
    v105 = "ed while running test";
  }

  else
  {
    v105 = "%@\n maxTimestamp2=%@\n";
  }

  if ((v105 | 0x8000000000000000) == 0x800000025C7CE490 && (v100 & 1) == 0)
  {

    v101 = v154;
LABEL_49:
    v102 = v158;
    v97 = v165;

    sub_25C7C25B8(v174);

    v169 = @"Exception happened while running test";
    goto LABEL_50;
  }

  v108 = sub_25C7CD414();

  if (v108)
  {
    v101 = v154;
    goto LABEL_49;
  }

  v134 = *(v99 + 17);
  v97 = v165;
  if (v134 == 2)
  {
    goto LABEL_39;
  }

  sub_25C7C25B8(v174);

  if (v134)
  {
    v135 = "ed while running test";
  }

  else
  {
    v135 = "%@\n maxTimestamp2=%@\n";
  }

  if (v135 | 0x8000000000000000) == 0x800000025C7CE4C0 && (v134)
  {

    v101 = v154;
    v102 = v158;
  }

  else
  {
    v141 = sub_25C7CD414();

    v101 = v154;
    v102 = v158;
    if ((v141 & 1) == 0)
    {
      v169 = 0;
      v97 = v165;
      goto LABEL_50;
    }
  }

  v169 = @"Sample size is too small";
  v97 = v165;
LABEL_50:
  LODWORD(v168) = *(v99 + 16);
  if (v168 == 1)
  {
    sub_25C7C51B4(v99 + v97[12], v167, &qword_27FC15920, &qword_25C7CE220);
    sub_25C7C51B4(v99 + v97[13], v156, &qword_27FC15920, &qword_25C7CE220);
    sub_25C7C51B4(v99 + v97[16], v101, &qword_27FC15920, &qword_25C7CE220);
    v109 = v99 + v97[7];
    v110 = v157;
  }

  else
  {
    v111 = sub_25C7CD1D4();
    v112 = *(*(v111 - 8) + 56);
    v112(v167, 1, 1, v111);
    v112(v156, 1, 1, v111);
    v112(v101, 1, 1, v111);
    v110 = v157;
    v109 = v164;
  }

  sub_25C7C51B4(v109, v149, &qword_27FC15920, &qword_25C7CE220);
  v165 = *(v99 + v97[14]);
  if (v165 < 1)
  {
    v163 = 0;
    v164 = 0;
  }

  else
  {
    v113 = *(v99 + v97[11]);
    v163 = *(v99 + v97[10]);
    v164 = v113;
  }

  if (*(v99 + v97[8] + 8))
  {
    v160 = 0;
  }

  else
  {
    v160 = sub_25C7CD2A4();
  }

  if (*(v99 + v97[9]) == 2)
  {
    *&v159 = 0;
  }

  else
  {
    *&v159 = sub_25C7CD294();
  }

  sub_25C7C51B4(v167, v110, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v156, v161, &qword_27FC15920, &qword_25C7CE220);
  v157 = *(v99 + v97[15]);
  sub_25C7C51B4(v101, v102, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v149, v162, &qword_27FC15920, &qword_25C7CE220);
  v114 = sub_25C7CD1D4();
  v115 = v110;
  v116 = *(v114 - 8);
  v117 = *(v116 + 48);
  v118 = v117(v115, 1, v114);
  v158 = v169;
  v169 = 0;
  if (v118 != 1)
  {
    v169 = sub_25C7CD184();
    (*(v116 + 8))(v115, v114);
  }

  v119 = v161;
  if (v117(v161, 1, v114) == 1)
  {
    v120 = 0;
  }

  else
  {
    v120 = sub_25C7CD184();
    (*(v116 + 8))(v119, v114);
  }

  if (v117(v102, 1, v114) == 1)
  {
    v121 = 0;
  }

  else
  {
    v122 = sub_25C7CD184();
    v123 = v102;
    v121 = v122;
    (*(v116 + 8))(v123, v114);
  }

  v124 = v162;
  if (v117(v162, 1, v114) == 1)
  {
    v125 = 0;
  }

  else
  {
    v126 = v124;
    v125 = sub_25C7CD184();
    (*(v116 + 8))(v126, v114);
  }

  v127 = objc_allocWithZone(TwoSampleTestResult);
  v144 = v121;
  v143 = v120;
  v128 = v121;
  v129 = v120;
  v130 = v169;
  v131 = v158;
  v132 = v159;
  v133 = v160;
  v168 = [v127 initWithTestRan:v168 testSkippedReason:v158 testStatistic:v160 rejectNullHypothesis:v159 sampleSize1:v163 numSuccesses1:v164 minTimestamp1:v169 maxTimestamp1:v143 sampleSize2:v165 numSuccesses2:v157 minTimestamp2:v144 maxTimestamp2:v125];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A20, &qword_25C7CE258);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25C7CE1B0;
  *(v39 + 32) = v168;

  sub_25C7C528C(v149, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v154, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v156, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v167, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C5354(v166, type metadata accessor for ZTestResult);
  return v39;
}

uint64_t sub_25C7C519C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25C7C51B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7C521C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A30, &qword_25C7CE270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7C528C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C7C52EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C7C5354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void runPreprocessingSteps(_:steps:lastRun:)(uint64_t **a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 2);

      v11 = MEMORY[0x25F88EB50](v10);
      sub_25C7C54E4(v9, v7, v8, a1, &v12);
      if (v3)
      {
        break;
      }

      v3 = 0;

      objc_autoreleasePoolPop(v11);
      if (!--v4)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v11);
  }
}

uint64_t sub_25C7C54E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5)
{
  v10 = a1;
  v11 = a1 == 0x6148657275736E65 && a2 == 0xEF73646C65694673;
  if (v11 || (sub_25C7CD414() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v12 = sub_25C7BB2FC(0x73646C656966, 0xE600000000000000);
      if (v13)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v12, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
        if (swift_dynamicCast())
        {

          sub_25C7C5F28(v14, v55);
          goto LABEL_10;
        }
      }
    }

    v17 = 0x800000025C7CEFA0;
    sub_25C7B9A14();
    v15 = swift_allocError();
    v19 = 0xD00000000000002BLL;
    goto LABEL_13;
  }

  if ((v10 != 0xD000000000000012 || 0x800000025C7CECA0 != a2) && (sub_25C7CD414() & 1) == 0)
  {
    if (v10 == 0x6C694E746F6ELL && a2 == 0xE600000000000000 || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v23 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v24)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v23, v57);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v25 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v26 & 1) == 0))
            {
              v27 = 0;
              v28 = 0;
              goto LABEL_45;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v25, v57);
            if (swift_dynamicCast())
            {
              v27 = v55;
              v28 = v56;
LABEL_45:
              sub_25C7C66D0(a4, v55, v56, v27, v28);
LABEL_46:
              v15 = v5;
              if (v5)
              {

                goto LABEL_15;
              }
            }
          }
        }
      }

      v17 = 0x800000025C7CEF30;
      sub_25C7B9A14();
      v15 = swift_allocError();
      v19 = 0xD000000000000034;
      goto LABEL_13;
    }

    if (v10 == 0x754E6F5465746164 && a2 == 0xED0000636972656DLL || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v29 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v30)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v29, v57);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v31 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v32 & 1) == 0))
            {
              v33 = 0;
              v34 = 0;
              goto LABEL_61;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v31, v57);
            if (swift_dynamicCast())
            {
              v33 = v55;
              v34 = v56;
LABEL_61:
              sub_25C7C6DF0(a4, v55, v56, v33, v34);
              goto LABEL_46;
            }
          }
        }
      }

      v47 = "DateToNumeric expects arguments: (inputField, outputField?)";
LABEL_78:
      v17 = (v47 - 32) | 0x8000000000000000;
      sub_25C7B9A14();
      v15 = swift_allocError();
      v19 = 0xD00000000000003BLL;
      goto LABEL_13;
    }

    if (v10 == 0x54636972656D756ELL && a2 == 0xED0000657461446FLL || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v35 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v36)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v35, v57);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v37 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v38 & 1) == 0))
            {
              v39 = 0;
              v40 = 0;
              goto LABEL_75;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v37, v57);
            if (swift_dynamicCast())
            {
              v39 = v55;
              v40 = v56;
LABEL_75:
              sub_25C7C778C(a4, v55, v56, v39, v40);
              goto LABEL_46;
            }
          }
        }
      }

      v47 = "NumericToDate expects arguments: (inputField, outputField?)";
      goto LABEL_78;
    }

    if (v10 == 0xD000000000000011 && 0x800000025C7CEE00 == a2 || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v41 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v42)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v41, v57);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v43 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v44 & 1) == 0))
            {
              v45 = 0;
              v46 = 0;
              goto LABEL_101;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v43, v57);
            if (swift_dynamicCast())
            {
              v45 = v55;
              v46 = v56;
LABEL_101:
              sub_25C7C7F18(a4, v55, v56, v45, v46);
              goto LABEL_46;
            }
          }
        }
      }

      v17 = 0x800000025C7CEE70;
      sub_25C7B9A14();
      v15 = swift_allocError();
      v19 = 0xD00000000000003FLL;
      goto LABEL_13;
    }

    if ((v10 != 0x73726946706F7264 || a2 != 0xE900000000000074) && (sub_25C7CD414() & 1) == 0)
    {
      sub_25C7CD314();

      v57[0] = 0xD00000000000001CLL;
      v57[1] = 0x800000025C7CEE20;
      MEMORY[0x25F88E8A0](v10, a2);
      sub_25C7B9A14();
      v15 = swift_allocError();
      *v18 = 0xD00000000000001CLL;
      *(v18 + 8) = 0x800000025C7CEE20;
      goto LABEL_14;
    }

    if (!*(a3 + 16) || (v48 = sub_25C7BB2FC(0x73706F72446D756ELL, 0xE800000000000000), (v49 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v48, v57), (swift_dynamicCast() & 1) == 0))
    {
      v17 = 0x800000025C7CEE40;
      sub_25C7B9A14();
      v15 = swift_allocError();
      v19 = 0xD000000000000027;
      goto LABEL_13;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      a5 = *a4;
      v10 = (*a4)[2];
      if (v10 >= v55)
      {
        v50 = v55;
      }

      else
      {
        v50 = (*a4)[2];
      }

      if (v55)
      {
        a3 = v50;
      }

      else
      {
        a3 = 0;
      }

      sub_25C7CD424();
      swift_unknownObjectRetain_n();

      v51 = swift_dynamicCastClass();
      if (!v51)
      {
        swift_unknownObjectRelease();
        v51 = MEMORY[0x277D84F90];
      }

      v52 = *(v51 + 16);

      if (v52 == v10 - a3)
      {
        v53 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v53)
        {
LABEL_98:
          *a4 = v53;
        }

        v53 = MEMORY[0x277D84F90];
LABEL_97:
        swift_unknownObjectRelease();
        goto LABEL_98;
      }
    }

    swift_unknownObjectRelease();
    sub_25C7C86E0(a5, (a5 + 4), a3, (2 * v10) | 1);
    v53 = v54;
    goto LABEL_97;
  }

  if (!*(a3 + 16) || (v20 = sub_25C7BB2FC(0x646C656966, 0xE500000000000000), (v21 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v20, v57), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0x800000025C7CEF70;
    sub_25C7B9A14();
    v15 = swift_allocError();
    v19 = 0xD00000000000002DLL;
LABEL_13:
    *v18 = v19;
    *(v18 + 8) = v17;
LABEL_14:
    *(v18 + 16) = 0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  sub_25C7C60FC(v22, v55, v56);
LABEL_10:
  v15 = v5;

  if (v5)
  {
LABEL_15:
    *a5 = v15;
  }

  return result;
}

uint64_t sub_25C7C5F28(uint64_t result, uint64_t a2)
{
  v18 = *(result + 16);
  if (v18)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v4 = result + 32;
    v16 = result + 32;
    v17 = (a2 + 40);
    v20 = v3;
    while (1)
    {
      v5 = *(v4 + 8 * v2);

      if (v3)
      {
        break;
      }

LABEL_3:
      ++v2;

      v3 = v20;
      v4 = v16;
      if (v2 == v18)
      {
        return result;
      }
    }

    v6 = v17;
    v7 = v20;
    while (1)
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = *(v5 + 16);

      if (!v10)
      {
        break;
      }

      v11 = sub_25C7BB2FC(v9, v8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v11;

      sub_25C7B9970(*(v5 + 56) + 32 * v13, v19);
      sub_25C7C528C(v19, &qword_27FC158F0, &qword_25C7CDE20);
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    memset(v19, 0, sizeof(v19));
    sub_25C7C528C(v19, &qword_27FC158F0, &qword_25C7CDE20);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_25C7CD314();

    *&v19[0] = 0xD000000000000028;
    *(&v19[0] + 1) = 0x800000025C7CEFD0;
    MEMORY[0x25F88E8A0](v9, v8);

    v14 = v19[0];
    sub_25C7B9A14();
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25C7C60FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_25C7CD1D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v51 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v16 = *(v5 + 56);
  v49 = v5 + 56;
  v45 = &v37 - v17;
  v16();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (a1 + 32);
    v20 = (v5 + 32);
    v42 = v16;
    v43 = (v5 + 48);
    v38 = (v5 + 8);
    v48 = v9;
    v41 = (v5 + 32);
    do
    {
      v47 = v18;
      v22 = *v19;
      if (*(*v19 + 16))
      {

        v23 = sub_25C7BB2FC(v39, v40);
        if (v24)
        {
          sub_25C7B9970(*(v22 + 56) + 32 * v23, v50);

          goto LABEL_10;
        }
      }

      memset(v50, 0, sizeof(v50));
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      v25 = swift_dynamicCast();
      v26 = v44;
      v27 = v45;
      if (!v25)
      {
        v30 = v51;
        (v16)(v51, 1, 1, v4);
        sub_25C7C528C(v30, &qword_27FC15920, &qword_25C7CE220);
        *&v50[0] = 0;
        *(&v50[0] + 1) = 0xE000000000000000;
        sub_25C7CD314();
        MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
        MEMORY[0x25F88E8A0](v39, v40);
        MEMORY[0x25F88E8A0](0xD000000000000017, 0x800000025C7CF030);
        MEMORY[0x25F88E8A0](1702125892, 0xE400000000000000);
        v31 = v50[0];
        sub_25C7B9A14();
        swift_allocError();
        *v32 = v31;
        *(v32 + 16) = 1;
        swift_willThrow();
        return sub_25C7C528C(v45, &qword_27FC15920, &qword_25C7CE220);
      }

      v46 = v19;
      v28 = v51;
      (v16)(v51, 0, 1, v4);
      v29 = *v20;
      (*v20)(v48, v28, v4);
      sub_25C7C51B4(v27, v13, &qword_27FC15920, &qword_25C7CE220);
      if ((*v43)(v13, 1, v4) == 1)
      {
        sub_25C7C528C(v27, &qword_27FC15920, &qword_25C7CE220);
        v21 = v13;
      }

      else
      {
        v29(v26, v13, v4);
        sub_25C7BDB50();
        if (sub_25C7CD214())
        {
          *&v50[0] = 0;
          *(&v50[0] + 1) = 0xE000000000000000;
          sub_25C7CD314();

          *&v50[0] = 0x6569662065746144;
          *(&v50[0] + 1) = 0xEB0000000020646CLL;
          MEMORY[0x25F88E8A0](v39, v40);
          MEMORY[0x25F88E8A0](0x20746F6E20736920, 0xEE00646574726F73);
          v33 = v50[0];
          sub_25C7B9A14();
          swift_allocError();
          *v34 = v33;
          *(v34 + 16) = 1;
          swift_willThrow();
          v35 = *v38;
          (*v38)(v26, v4);
          v35(v48, v4);
          return sub_25C7C528C(v45, &qword_27FC15920, &qword_25C7CE220);
        }

        (*v38)(v26, v4);
        v27 = v45;
        v21 = v45;
      }

      sub_25C7C528C(v21, &qword_27FC15920, &qword_25C7CE220);
      v20 = v41;
      v29(v27, v48, v4);
      v16 = v42;
      (v42)(v27, 0, 1, v4);
      v19 = v46 + 1;
      v18 = v47 - 1;
    }

    while (v47 != 1);
  }

  return sub_25C7C528C(v45, &qword_27FC15920, &qword_25C7CE220);
}

void sub_25C7C66D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v85 = *(*a1 + 16);
  if (!v85)
  {
    return;
  }

  v6 = a5;
  v7 = 0;
  while (1)
  {
    v10 = MEMORY[0x25F88EB50]();
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v9 = v10;
    v11 = v5[v7 + 4];
    if (*(v11 + 16))
    {

      v12 = sub_25C7BB2FC(a2, a3);
      if (v13)
      {
        sub_25C7B9970(*(v11 + 56) + 32 * v12, &v96);

        goto LABEL_12;
      }
    }

    v96 = 0u;
    v97 = 0u;
LABEL_12:
    v98[0] = v96;
    v98[1] = v97;
    v14 = a4;
    v15 = v6;
    if (!v6)
    {
      v15 = a3;

      v14 = a2;
    }

    *(&v97 + 1) = MEMORY[0x277D83B88];
    sub_25C7C51B4(v98, &v94, &qword_27FC158F0, &qword_25C7CDE20);
    if (*(&v95 + 1))
    {
      sub_25C7C897C();

      if (swift_dynamicCast())
      {

        v16 = 1;
        goto LABEL_19;
      }
    }

    else
    {

      sub_25C7C528C(&v94, &qword_27FC158F0, &qword_25C7CDE20);
    }

    v16 = 0;
LABEL_19:
    *&v96 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25C7C86CC(v5);
    }

    if (v7 >= v5[2])
    {
      goto LABEL_75;
    }

    v17 = v5 + 4;
    if (!*(&v97 + 1))
    {
      break;
    }

    v90 = v9;
    v91 = v5;
    sub_25C7C0668(&v96, &v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v17[v7];
    v19 = v99;
    v17[v7] = 0x8000000000000000;
    v20 = v14;
    v21 = v15;
    v23 = sub_25C7BB2FC(v14, v15);
    v24 = *(v19 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_76;
    }

    v27 = v22;
    if (*(v19 + 24) >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v19;
        if ((v22 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v42 = sub_25C7CD3C4();
      v28 = v42;
      if (*(v19 + 16))
      {
        v43 = (v42 + 64);
        v44 = (v19 + 64);
        v45 = ((1 << *(v28 + 32)) + 63) >> 6;
        if (v28 != v19 || v43 >= &v44[8 * v45])
        {
          memmove(v43, v44, 8 * v45);
        }

        v46 = 0;
        *(v28 + 16) = *(v19 + 16);
        v47 = 1 << *(v19 + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v19 + 64);
        v50 = (v47 + 63) >> 6;
        v74 = v50;
        if (v49)
        {
          do
          {
            v51 = __clz(__rbit64(v49));
            v80 = (v49 - 1) & v49;
LABEL_52:
            v54 = v51 | (v46 << 6);
            v75 = 16 * v54;
            v55 = (*(v19 + 48) + 16 * v54);
            v82 = v55[1];
            v76 = *v55;
            v78 = 32 * v54;
            sub_25C7B9970(*(v19 + 56) + 32 * v54, v93);
            v56 = (*(v28 + 48) + v75);
            *v56 = v76;
            v56[1] = v82;
            sub_25C7C0668(v93, (*(v28 + 56) + v78));

            v50 = v74;
            v49 = v80;
          }

          while (v80);
        }

        v52 = v46;
        while (1)
        {
          v46 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_78;
          }

          if (v46 >= v50)
          {
            break;
          }

          v53 = *(v19 + 64 + 8 * v46);
          ++v52;
          if (v53)
          {
            v51 = __clz(__rbit64(v53));
            v80 = (v53 - 1) & v53;
            goto LABEL_52;
          }
        }
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_25C7C0178(v26, isUniquelyReferenced_nonNull_native);
      v28 = v99;
      v29 = sub_25C7BB2FC(v20, v21);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_80;
      }

      v23 = v29;
      if ((v27 & 1) == 0)
      {
LABEL_34:
        *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v38 = (*(v28 + 48) + 16 * v23);
        *v38 = v20;
        v38[1] = v21;
        sub_25C7C0668(&v94, (*(v28 + 56) + 32 * v23));
        v39 = *(v28 + 16);
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_77;
        }

        *(v28 + 16) = v41;
        goto LABEL_4;
      }
    }

LABEL_3:
    v8 = (*(v28 + 56) + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v8);
    sub_25C7C0668(&v94, v8);

LABEL_4:
    v17[v7] = v28;

    v6 = a5;
    v9 = v90;
    v5 = v91;
LABEL_5:
    ++v7;
    sub_25C7C528C(v98, &qword_27FC158F0, &qword_25C7CDE20);
    *a1 = v5;
    objc_autoreleasePoolPop(v9);
    if (v7 == v85)
    {
      return;
    }
  }

  sub_25C7C528C(&v96, &qword_27FC158F0, &qword_25C7CDE20);
  v31 = sub_25C7BB2FC(v14, v15);
  if ((v32 & 1) == 0)
  {
    v94 = 0u;
    v95 = 0u;
    goto LABEL_37;
  }

  v33 = v31;
  v92 = v5;
  v34 = v9;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v17[v7];
  v17[v7] = 0x8000000000000000;
  if (v35)
  {
    v37 = v36;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v57 = sub_25C7CD3C4();
  v37 = v57;
  if (!*(v36 + 16))
  {
LABEL_72:

    v6 = a5;
LABEL_31:

    sub_25C7C0668((*(v37 + 56) + 32 * v33), &v94);
    sub_25C7C87CC(v33, v37);
    v17[v7] = v37;

    v9 = v34;
    v5 = v92;
LABEL_37:

    sub_25C7C528C(&v94, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v58 = (v57 + 64);
  v59 = (v36 + 64);
  v60 = ((1 << *(v37 + 32)) + 63) >> 6;
  if (v37 != v36 || v58 >= &v59[8 * v60])
  {
    memmove(v58, v59, 8 * v60);
  }

  v61 = 0;
  *(v37 + 16) = *(v36 + 16);
  v62 = 1 << *(v36 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v36 + 64);
  v65 = (v62 + 63) >> 6;
  v77 = v65;
  if (v64)
  {
    do
    {
      v66 = __clz(__rbit64(v64));
      v83 = (v64 - 1) & v64;
LABEL_70:
      v69 = v66 | (v61 << 6);
      v79 = 16 * v69;
      v70 = (*(v36 + 48) + 16 * v69);
      v71 = v70[1];
      v81 = *v70;
      v72 = 32 * v69;
      sub_25C7B9970(*(v36 + 56) + 32 * v69, &v94);
      v73 = (*(v37 + 48) + v79);
      *v73 = v81;
      v73[1] = v71;
      sub_25C7C0668(&v94, (*(v37 + 56) + v72));

      v65 = v77;
      v64 = v83;
    }

    while (v83);
  }

  v67 = v61;
  while (1)
  {
    v61 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v61 >= v65)
    {
      goto LABEL_72;
    }

    v68 = *(v36 + 64 + 8 * v61);
    ++v67;
    if (v68)
    {
      v66 = __clz(__rbit64(v68));
      v83 = (v68 - 1) & v68;
      goto LABEL_70;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C6DF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a4;
  v108 = a2;
  v109 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v91 - v8;
  v10 = sub_25C7CD1D4();
  v11 = MEMORY[0x28223BE20](v10);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v105 = *(*a1 + 16);
  v106 = a1;
  if (!v105)
  {
    return;
  }

  v16 = 0;
  v17 = (v12 + 56);
  v104 = (v12 + 32);
  v101 = (v12 + 8);
  v98 = v9;
  v100 = v10;
  v99 = a5;
  v103 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (v12 + 56);
  while (1)
  {
    v20 = MEMORY[0x25F88EB50](v11);
    if (v16 >= v15[2])
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v19 = v20;
    v21 = v15[v16 + 4];
    if (*(v21 + 16))
    {

      v22 = sub_25C7BB2FC(v108, v109);
      if (v23)
      {
        sub_25C7B9970(*(v21 + 56) + 32 * v22, &v114);

        goto LABEL_12;
      }
    }

    v114 = 0u;
    v115 = 0u;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    v24 = swift_dynamicCast();
    v25 = *v17;
    if (!v24)
    {
      v25(v9, 1, 1, v10);
      sub_25C7C528C(v9, &qword_27FC15920, &qword_25C7CE220);
      *&v114 = 0;
      *(&v114 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](v108, v109);
      MEMORY[0x25F88E8A0](0xD00000000000001ALL, 0x800000025C7CF050);
      MEMORY[0x25F88E8A0](1702125892, 0xE400000000000000);
      v89 = v114;
      sub_25C7B9A14();
      swift_allocError();
      *v90 = v89;
      *(v90 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v19);
      return;
    }

    v25(v9, 0, 1, v10);
    (*v104)(v14, v9, v10);
    v26 = v107;
    v27 = a5;
    if (!a5)
    {

      v26 = v108;
    }

    v111 = v27;
    *(&v115 + 1) = MEMORY[0x277D839F8];

    sub_25C7CD174();
    *&v114 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_25C7C86CC(v15);
    }

    if (v16 >= v15[2])
    {
      goto LABEL_71;
    }

    v29 = v15 + 4;
    if (!*(&v115 + 1))
    {
      break;
    }

    v110 = v19;
    sub_25C7C0668(&v114, v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v29[v16];
    v31 = v116;
    v29[v16] = 0x8000000000000000;
    v33 = sub_25C7BB2FC(v26, v111);
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_72;
    }

    v37 = v32;
    if (*(v31 + 24) < v36)
    {
      sub_25C7C0178(v36, isUniquelyReferenced_nonNull_native);
      v38 = v116;
      v39 = sub_25C7BB2FC(v26, v111);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_76;
      }

      v33 = v39;
      goto LABEL_29;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v52 = sub_25C7CD3C4();
      v38 = v52;
      if (!*(v31 + 16))
      {
LABEL_50:

        goto LABEL_29;
      }

      v53 = (v52 + 64);
      v54 = (v31 + 64);
      v55 = ((1 << *(v38 + 32)) + 63) >> 6;
      v91 = v31 + 64;
      if (v38 != v31 || v53 >= &v54[8 * v55])
      {
        memmove(v53, v54, 8 * v55);
      }

      v56 = 0;
      *(v38 + 16) = *(v31 + 16);
      v57 = 1 << *(v31 + 32);
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v59 = v58 & *(v31 + 64);
      v60 = (v57 + 63) >> 6;
      v92 = v60;
      if (v59)
      {
        do
        {
          v61 = __clz(__rbit64(v59));
          v96 = (v59 - 1) & v59;
LABEL_48:
          v64 = v61 | (v56 << 6);
          v93 = 16 * v64;
          v65 = *(v31 + 56);
          v66 = (*(v31 + 48) + 16 * v64);
          v68 = *v66;
          v67 = v66[1];
          v94 = v68;
          v97 = v67;
          v95 = 32 * v64;
          sub_25C7B9970(v65 + 32 * v64, v112);
          v69 = (*(v38 + 48) + v93);
          v70 = v97;
          *v69 = v94;
          v69[1] = v70;
          sub_25C7C0668(v112, (*(v38 + 56) + v95));

          v60 = v92;
          v59 = v96;
        }

        while (v96);
      }

      v62 = v56;
      while (1)
      {
        v56 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v56 >= v60)
        {
          goto LABEL_50;
        }

        v63 = *(v91 + 8 * v56);
        ++v62;
        if (v63)
        {
          v61 = __clz(__rbit64(v63));
          v96 = (v63 - 1) & v63;
          goto LABEL_48;
        }
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v38 = v31;
LABEL_29:
    v10 = v100;
    if (v37)
    {
      v18 = (*(v38 + 56) + 32 * v33);
      __swift_destroy_boxed_opaque_existential_0(v18);
      sub_25C7C0668(v113, v18);
    }

    else
    {
      *(v38 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v47 = (*(v38 + 48) + 16 * v33);
      v48 = v111;
      *v47 = v26;
      v47[1] = v48;
      sub_25C7C0668(v113, (*(v38 + 56) + 32 * v33));
      v49 = *(v38 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_73;
      }

      *(v38 + 16) = v51;
    }

    v29[v16] = v38;

    a5 = v99;
    v19 = v110;
    v9 = v98;
LABEL_5:
    v14 = v103;
    v17 = v102;
    ++v16;
    (*v101)(v103, v10);
    *v106 = v15;
    objc_autoreleasePoolPop(v19);
    if (v16 == v105)
    {
      return;
    }
  }

  sub_25C7C528C(&v114, &qword_27FC158F0, &qword_25C7CDE20);
  v41 = sub_25C7BB2FC(v26, v111);
  if ((v42 & 1) == 0)
  {
    memset(v113, 0, sizeof(v113));
    goto LABEL_33;
  }

  v43 = v41;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = v29[v16];
  v29[v16] = 0x8000000000000000;
  if (v44)
  {
    v46 = v45;
    goto LABEL_26;
  }

  v110 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v71 = sub_25C7CD3C4();
  v46 = v71;
  if (!*(v45 + 16))
  {
LABEL_67:

    a5 = v99;
    v19 = v110;
    v9 = v98;
LABEL_26:

    sub_25C7C0668((*(v46 + 56) + 32 * v43), v113);
    sub_25C7C87CC(v43, v46);
    v29[v16] = v46;

    v10 = v100;
LABEL_33:

    sub_25C7C528C(v113, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v72 = (v71 + 64);
  v73 = (v45 + 64);
  v74 = ((1 << *(v46 + 32)) + 63) >> 6;
  v93 = v45 + 64;
  if (v46 != v45 || v72 >= &v73[8 * v74])
  {
    memmove(v72, v73, 8 * v74);
  }

  v75 = 0;
  *(v46 + 16) = *(v45 + 16);
  v76 = 1 << *(v45 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v45 + 64);
  v79 = (v76 + 63) >> 6;
  v94 = v79;
  if (v78)
  {
    do
    {
      v80 = __clz(__rbit64(v78));
      v95 = (v78 - 1) & v78;
LABEL_65:
      v83 = v80 | (v75 << 6);
      v96 = 16 * v83;
      v84 = *(v45 + 56);
      v85 = (*(v45 + 48) + 16 * v83);
      v86 = v85[1];
      v97 = *v85;
      v87 = 32 * v83;
      sub_25C7B9970(v84 + 32 * v83, v113);
      v88 = (*(v46 + 48) + v96);
      *v88 = v97;
      v88[1] = v86;
      sub_25C7C0668(v113, (*(v46 + 56) + v87));

      v79 = v94;
      v78 = v95;
    }

    while (v95);
  }

  v81 = v75;
  while (1)
  {
    v75 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v75 >= v79)
    {
      goto LABEL_67;
    }

    v82 = *(v93 + 8 * v75);
    ++v81;
    if (v82)
    {
      v80 = __clz(__rbit64(v82));
      v95 = (v82 - 1) & v82;
      goto LABEL_65;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C778C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v87 = *(*a1 + 16);
  if (!v87)
  {
    return;
  }

  v6 = a5;
  v7 = 0;
  while (1)
  {
    v10 = MEMORY[0x25F88EB50]();
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v9 = v10;
    v11 = v5[v7 + 4];
    if (*(v11 + 16))
    {

      v12 = sub_25C7BB2FC(a2, a3);
      if (v13)
      {
        sub_25C7B9970(*(v11 + 56) + 32 * v12, &v97);

        goto LABEL_12;
      }
    }

    v97 = 0u;
    v98 = 0u;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    if (!swift_dynamicCast())
    {
      *&v97 = 0;
      *(&v97 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](a2, a3);
      MEMORY[0x25F88E8A0](0xD00000000000001ALL, 0x800000025C7CF050);
      MEMORY[0x25F88E8A0](0x656C62756F44, 0xE600000000000000);
      v73 = v97;
      sub_25C7B9A14();
      swift_allocError();
      *v74 = v73;
      *(v74 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v9);
      return;
    }

    if (v6)
    {
      v14 = a4;
      v15 = v6;
    }

    else
    {
      v15 = a3;

      v14 = a2;
    }

    *(&v98 + 1) = sub_25C7CD1D4();
    __swift_allocate_boxed_opaque_existential_0(&v97);

    sub_25C7CD164();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25C7C86CC(v5);
    }

    if (v7 >= v5[2])
    {
      goto LABEL_73;
    }

    v16 = v5 + 4;
    if (!*(&v98 + 1))
    {
      break;
    }

    v91 = v5;
    v92 = v9;
    sub_25C7C0668(&v97, v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v16[v7];
    v18 = v95;
    v16[v7] = 0x8000000000000000;
    v19 = v14;
    v20 = v14;
    v21 = v15;
    v23 = sub_25C7BB2FC(v20, v15);
    v24 = *(v18 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_74;
    }

    v27 = v22;
    if (*(v18 + 24) >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v18;
        if ((v22 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v41 = sub_25C7CD3C4();
      v28 = v41;
      if (*(v18 + 16))
      {
        v42 = (v41 + 64);
        v43 = (v18 + 64);
        v44 = ((1 << *(v28 + 32)) + 63) >> 6;
        if (v28 != v18 || v42 >= &v43[8 * v44])
        {
          memmove(v42, v43, 8 * v44);
        }

        v45 = 0;
        *(v28 + 16) = *(v18 + 16);
        v46 = 1 << *(v18 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & *(v18 + 64);
        v49 = (v46 + 63) >> 6;
        v75 = v49;
        if (v48)
        {
          do
          {
            v50 = __clz(__rbit64(v48));
            v81 = (v48 - 1) & v48;
LABEL_49:
            v53 = v50 | (v45 << 6);
            v76 = 16 * v53;
            v54 = (*(v18 + 48) + 16 * v53);
            v83 = v54[1];
            v77 = *v54;
            v79 = 32 * v53;
            sub_25C7B9970(*(v18 + 56) + 32 * v53, v94);
            v55 = (*(v28 + 48) + v76);
            *v55 = v77;
            v55[1] = v83;
            sub_25C7C0668(v94, (*(v28 + 56) + v79));

            v49 = v75;
            v48 = v81;
          }

          while (v81);
        }

        v51 = v45;
        while (1)
        {
          v45 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_76;
          }

          if (v45 >= v49)
          {
            break;
          }

          v52 = *(v18 + 64 + 8 * v45);
          ++v51;
          if (v52)
          {
            v50 = __clz(__rbit64(v52));
            v81 = (v52 - 1) & v52;
            goto LABEL_49;
          }
        }
      }

      if ((v27 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_25C7C0178(v26, isUniquelyReferenced_nonNull_native);
      v28 = v95;
      v29 = sub_25C7BB2FC(v19, v21);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_78;
      }

      v23 = v29;
      if ((v27 & 1) == 0)
      {
LABEL_31:
        *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v37 = (*(v28 + 48) + 16 * v23);
        *v37 = v19;
        v37[1] = v21;
        sub_25C7C0668(v96, (*(v28 + 56) + 32 * v23));
        v38 = *(v28 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_75;
        }

        *(v28 + 16) = v40;
        goto LABEL_4;
      }
    }

LABEL_3:
    v8 = (*(v28 + 56) + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v8);
    sub_25C7C0668(v96, v8);

LABEL_4:
    v16[v7] = v28;

    v5 = v91;
    v9 = v92;
    v6 = a5;
LABEL_5:
    ++v7;
    *a1 = v5;
    objc_autoreleasePoolPop(v9);
    if (v7 == v87)
    {
      return;
    }
  }

  sub_25C7C528C(&v97, &qword_27FC158F0, &qword_25C7CDE20);
  v31 = sub_25C7BB2FC(v14, v15);
  if ((v32 & 1) == 0)
  {
    memset(v96, 0, sizeof(v96));
    goto LABEL_34;
  }

  v33 = v31;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v16[v7];
  v16[v7] = 0x8000000000000000;
  if (v34)
  {
    v36 = v35;
    goto LABEL_28;
  }

  v93 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v56 = sub_25C7CD3C4();
  v36 = v56;
  if (!*(v35 + 16))
  {
LABEL_69:

    v9 = v93;
    v6 = a5;
LABEL_28:

    sub_25C7C0668((*(v36 + 56) + 32 * v33), v96);
    sub_25C7C87CC(v33, v36);
    v16[v7] = v36;

LABEL_34:

    sub_25C7C528C(v96, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v57 = (v56 + 64);
  v58 = (v35 + 64);
  v59 = ((1 << *(v36 + 32)) + 63) >> 6;
  if (v36 != v35 || v57 >= &v58[8 * v59])
  {
    memmove(v57, v58, 8 * v59);
  }

  v60 = 0;
  *(v36 + 16) = *(v35 + 16);
  v61 = 1 << *(v35 + 32);
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & *(v35 + 64);
  v64 = (v61 + 63) >> 6;
  v78 = v64;
  if (v63)
  {
    do
    {
      v65 = __clz(__rbit64(v63));
      v80 = (v63 - 1) & v63;
LABEL_67:
      v68 = v65 | (v60 << 6);
      v82 = 16 * v68;
      v69 = (*(v35 + 48) + 16 * v68);
      v70 = v69[1];
      v84 = *v69;
      v71 = 32 * v68;
      sub_25C7B9970(*(v35 + 56) + 32 * v68, v96);
      v72 = (*(v36 + 48) + v82);
      *v72 = v84;
      v72[1] = v70;
      sub_25C7C0668(v96, (*(v36 + 56) + v71));

      v64 = v78;
      v63 = v80;
    }

    while (v80);
  }

  v66 = v60;
  while (1)
  {
    v60 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v60 >= v64)
    {
      goto LABEL_69;
    }

    v67 = *(v35 + 64 + 8 * v60);
    ++v66;
    if (v67)
    {
      v65 = __clz(__rbit64(v67));
      v80 = (v67 - 1) & v67;
      goto LABEL_67;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C7F18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (!v6)
  {
    return;
  }

  v7 = a5;
  v8 = a3;
  v9 = a2;
  v10 = 0;
  v11 = 0.0;
  v12 = 1;
  v93 = *(*a1 + 16);
  while (1)
  {
    v14 = MEMORY[0x25F88EB50]();
    if (v10 >= v5[2])
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v15 = v14;
    v16 = v5[v10 + 4];
    if (*(v16 + 16))
    {

      v17 = sub_25C7BB2FC(v9, v8);
      if (v18)
      {
        sub_25C7B9970(*(v16 + 56) + 32 * v17, &v101);

        goto LABEL_13;
      }
    }

    v101 = 0u;
    v102 = 0u;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    if (!swift_dynamicCast())
    {
      *&v101 = 0;
      *(&v101 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](v9, v8);
      MEMORY[0x25F88E8A0](0xD000000000000017, 0x800000025C7CF030);
      MEMORY[0x25F88E8A0](0x656C62756F44, 0xE600000000000000);
      v79 = v101;
      sub_25C7B9A14();
      swift_allocError();
      *v80 = v79;
      *(v80 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v15);
      return;
    }

    v19 = *v100;
    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_6:
    ++v10;
    objc_autoreleasePoolPop(v15);
    v12 = 0;
    v11 = v19;
    if (v10 == v6)
    {
      return;
    }
  }

  v20 = a4;
  v21 = v7;
  if (!v7)
  {

    v20 = v9;
    v21 = v8;
  }

  *(&v102 + 1) = MEMORY[0x277D839F8];
  *&v101 = v19 - v11;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_25C7C86CC(v5);
  }

  if (v10 >= v5[2])
  {
    goto LABEL_74;
  }

  v22 = v5 + 4;
  if (*(&v102 + 1))
  {
    sub_25C7C0668(&v101, v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v20;
    v103 = v22[v10];
    v25 = v103;
    v97 = v21;
    v22[v10] = 0x8000000000000000;
    v26 = v24;
    v28 = sub_25C7BB2FC(v24, v21);
    v29 = *(v25 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_75;
    }

    v32 = v27;
    if (*(v25 + 24) < v31)
    {
      sub_25C7C0178(v31, isUniquelyReferenced_nonNull_native);
      v33 = v103;
      v34 = sub_25C7BB2FC(v26, v97);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_79;
      }

      v28 = v34;
      v8 = a3;
      if ((v32 & 1) == 0)
      {
LABEL_32:
        *(v33 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v44 = (*(v33 + 48) + 16 * v28);
        *v44 = v26;
        v44[1] = v97;
        sub_25C7C0668(v100, (*(v33 + 56) + 32 * v28));
        v45 = *(v33 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_76;
        }

        *(v33 + 16) = v47;
LABEL_4:
        v5[v10 + 4] = v33;

        v9 = a2;
LABEL_5:
        v6 = v93;
        v7 = a5;
        *a1 = v5;
        goto LABEL_6;
      }

LABEL_3:
      v13 = (*(v33 + 56) + 32 * v28);
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_25C7C0668(v100, v13);

      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v25;
      v8 = a3;
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
    v48 = sub_25C7CD3C4();
    v33 = v48;
    if (!*(v25 + 16))
    {
LABEL_52:

      v8 = a3;
      if ((v32 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    v49 = (v48 + 64);
    v50 = (v25 + 64);
    v51 = ((1 << *(v33 + 32)) + 63) >> 6;
    if (v33 != v25 || v49 >= &v50[8 * v51])
    {
      memmove(v49, v50, 8 * v51);
    }

    v52 = 0;
    *(v33 + 16) = *(v25 + 16);
    v53 = 1 << *(v25 + 32);
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v55 = v54 & *(v25 + 64);
    v56 = (v53 + 63) >> 6;
    v81 = v56;
    if (v55)
    {
      do
      {
        v57 = __clz(__rbit64(v55));
        v87 = (v55 - 1) & v55;
LABEL_50:
        v60 = v57 | (v52 << 6);
        v82 = 16 * v60;
        v61 = (*(v25 + 48) + 16 * v60);
        v89 = v61[1];
        v83 = *v61;
        v85 = 32 * v60;
        sub_25C7B9970(*(v25 + 56) + 32 * v60, v99);
        v62 = (*(v33 + 48) + v82);
        *v62 = v83;
        v62[1] = v89;
        sub_25C7C0668(v99, (*(v33 + 56) + v85));

        v56 = v81;
        v55 = v87;
      }

      while (v87);
    }

    v58 = v52;
    while (1)
    {
      v52 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v52 >= v56)
      {
        goto LABEL_52;
      }

      v59 = *(v25 + 64 + 8 * v52);
      ++v58;
      if (v59)
      {
        v57 = __clz(__rbit64(v59));
        v87 = (v59 - 1) & v59;
        goto LABEL_50;
      }
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_25C7C528C(&v101, &qword_27FC158F0, &qword_25C7CDE20);
  v36 = v20;
  v37 = v5 + 4;
  v38 = sub_25C7BB2FC(v36, v21);
  if ((v39 & 1) == 0)
  {
    memset(v100, 0, sizeof(v100));
    goto LABEL_35;
  }

  v40 = v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v37[v10];
  v37[v10] = 0x8000000000000000;
  if (v41)
  {
    v43 = v42;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v63 = sub_25C7CD3C4();
  v43 = v63;
  if (!*(v42 + 16))
  {
LABEL_70:

LABEL_29:

    sub_25C7C0668((*(v43 + 56) + 32 * v40), v100);
    sub_25C7C87CC(v40, v43);
    v5[v10 + 4] = v43;

    v9 = a2;
LABEL_35:

    sub_25C7C528C(v100, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v64 = (v63 + 64);
  v65 = (v42 + 64);
  v66 = ((1 << *(v43 + 32)) + 63) >> 6;
  if (v43 != v42 || v64 >= &v65[8 * v66])
  {
    memmove(v64, v65, 8 * v66);
  }

  v67 = 0;
  *(v43 + 16) = *(v42 + 16);
  v68 = 1 << *(v42 + 32);
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  else
  {
    v69 = -1;
  }

  v70 = v69 & *(v42 + 64);
  v71 = (v68 + 63) >> 6;
  v84 = v71;
  if (v70)
  {
    do
    {
      v72 = __clz(__rbit64(v70));
      v98 = (v70 - 1) & v70;
LABEL_68:
      v75 = v72 | (v67 << 6);
      v86 = 16 * v75;
      v76 = (*(v42 + 48) + 16 * v75);
      v77 = v76[1];
      v88 = *v76;
      v90 = 32 * v75;
      sub_25C7B9970(*(v42 + 56) + 32 * v75, v100);
      v78 = (*(v43 + 48) + v86);
      *v78 = v88;
      v78[1] = v77;
      sub_25C7C0668(v100, (*(v43 + 56) + v90));

      v8 = a3;
      v71 = v84;
      v70 = v98;
    }

    while (v98);
  }

  v73 = v67;
  while (1)
  {
    v67 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v67 >= v71)
    {
      goto LABEL_70;
    }

    v74 = *(v42 + 64 + 8 * v67);
    ++v73;
    if (v74)
    {
      v72 = __clz(__rbit64(v74));
      v98 = (v74 - 1) & v74;
      goto LABEL_68;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C86E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_25C7C87CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C7CD304() + 1) & ~v5;
    do
    {
      sub_25C7CD4A4();

      sub_25C7CD244();
      v10 = sub_25C7CD4B4();

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

unint64_t sub_25C7C897C()
{
  result = qword_27FC15A40;
  if (!qword_27FC15A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC15A40);
  }

  return result;
}

long double sub_25C7C89C8(double a1)
{
  if (a1 <= 3.0)
  {

    return sub_25C7C8A6C(a1);
  }

  else
  {
    v2 = a1 + -1.0;
    v3 = v2 * log(a1 + -1.0) - v2;
    return v3 + 0.572364943 + log(v2 * (v2 * 4.0 * (v2 + v2 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
  }
}

long double sub_25C7C8A6C(double a1)
{
  v1 = vdupq_lane_s64(*&a1, 0);
  v2 = vdivq_f64(unk_286E696B0, vaddq_f64(v1, xmmword_25C7CE2C0));
  v3 = *&qword_286E696A8 + 0.0 + v2.f64[0] + v2.f64[1];
  v4 = vdivq_f64(unk_286E696C0, vaddq_f64(v1, xmmword_25C7CE2D0));
  v5 = vdivq_f64(unk_286E696D0, vaddq_f64(v1, xmmword_25C7CE2E0));
  v6 = v3 + v4.f64[0] + v4.f64[1] + v5.f64[0] + v5.f64[1];
  v7 = (a1 + 0.5) * log(a1 + 5.5) - (a1 + 5.5) + 0.918938533;
  return v7 + log(v6 / a1);
}

uint64_t sub_25C7C8B54(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v25 = a1;

    sub_25C7BA21C(&v25);
    if (v3)
    {
LABEL_30:
      MEMORY[0x25F88EF00](v3);

      __break(1u);
    }

    else
    {
      v6 = v25;
      v25 = a2;

      sub_25C7BA21C(&v25);
      v7 = *(v6 + 2);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v25 + 2);
        v11 = v6 + 32;
        v12 = v25 + 32;
        v13 = v10;
        v14 = v7;
        v15 = 0.0;
        while (v9 < v10)
        {
          if (v8 < 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v17 = *&v11[8 * v8];
          if (*&v12[8 * v9] < v17)
          {
            v17 = *&v12[8 * v9];
          }

          if (v8 < v7)
          {
            do
            {
              if (*&v11[8 * v8] != v17)
              {
                goto LABEL_19;
              }

              ++v8;
            }

            while (v7 != v8);
            v8 = *(v6 + 2);
          }

LABEL_19:
          while (*&v12[8 * v9] == v17)
          {
            if (v10 == ++v9)
            {
              v9 = *(v25 + 2);
              break;
            }
          }

          v18 = v8;
          v19 = v9;
          if (a3)
          {
            v20 = v18 / v14;
            v21 = v19 / v13;
            v22 = v20 - v21;
            v16 = v21 - v20;
            if (a3 == 1)
            {
              v16 = v22;
            }
          }

          else
          {
            v16 = vabdd_f64(v18 / v14, v19 / v13);
          }

          if (v15 <= v16)
          {
            v15 = v16;
          }

          if (v8 >= v7)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    sub_25C7B9A14();
    swift_allocError();
    *v23 = 0xD000000000000022;
    *(v23 + 8) = 0x800000025C7CF3C0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25C7C8D34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC5BC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7B9970(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC5BC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_25C7C8E5C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25C7CD354();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25C7B9970(i, v5);
    sub_25C7CD108();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25C7CD334();
    sub_25C7CD364();
    sub_25C7CD374();
    sub_25C7CD344();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_25C7C8F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_25C7CD1D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_25C7CC5FC(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v4;
    v23 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_25C7C51B4(v13, v25, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      (*v23)(v4, 0, 1, v5);
      v16 = *v14;
      v17 = v24;
      (*v14)(v24, v4, v5);
      v16(v9, v17, v5);
      v26 = v12;
      v18 = v9;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25C7CC5FC((v19 > 1), v20 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v20 + 1;
      v6 = v15;
      v16((v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20), v18, v5);
      v13 += 32;
      --v11;
      v9 = v18;
      v4 = v22;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_25C7BDAE8(v4);
    return 0;
  }

  return v12;
}

uint64_t sub_25C7C9220(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC61C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7C51B4(i, v9, &qword_27FC158F0, &qword_25C7CDE20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC61C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}