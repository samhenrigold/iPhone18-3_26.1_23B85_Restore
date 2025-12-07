uint64_t ColorResource.init(name:bundle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id sub_237F8C2C0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t ColorResource.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_237F8C374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = &unk_237F9C880;
  a2[1] = v5;
}

uint64_t sub_237F8C3E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_237F8C420()
{

  sub_237F8E1D4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_237F8C47C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_237F9BBE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_237F8C5AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_237F9BBE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_237F8C6E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237F8C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = *(type metadata accessor for PreviewArguments.InhabitedSections(0, v5, a3, a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v4 + v8;

  v13 = type metadata accessor for PreviewSection(0, v5, v11, v12);
  (*(*(v5 - 8) + 8))(v10 + *(v13 + 28), v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 16, v7 | 7);
}

void *sub_237F8C850@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t LibraryItem.init<A>(_:visible:title:category:matchingSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
}

double static LibraryContentBuilder.buildExpression(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38D8, &qword_237F9C658);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_237F9C610;
  return result;
}

char *_s21DeveloperToolsSupport21LibraryContentBuilderV10buildBlockySayAA0D4ItemVGAGd_tFZ_0(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v5 = result + 32;
LABEL_3:
  v7 = *(v1 + 16);
  if (v3 != v7)
  {
    if (v3 >= v7)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v8 = v5[v3];

        if (v8)
        {
          v6 = *(v8 + 16);
          if (v6)
          {
            break;
          }
        }

        ++v3;
        v9 = *(v1 + 16);
        if (v3 == v9)
        {
          goto LABEL_25;
        }

        if (v3 >= v9)
        {
          goto LABEL_29;
        }
      }

      v10 = 0;
      ++v3;
      while (v10 < v6)
      {
        if (!v2)
        {
          v11 = *(v4 + 3);
          if (((v11 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
          if (v12 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v12;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38D8, &qword_237F9C658);
          v14 = swift_allocObject();
          v15 = 2 * _swift_stdlib_malloc_size(v14) - 64;
          *(v14 + 2) = v13;
          *(v14 + 3) = v15;
          v16 = *(v4 + 3) >> 1;
          if (*(v4 + 2))
          {
            v17 = v14 + 32;
            v18 = v4 + 32;
            if (v14 != v4 || v17 >= &v18[v16])
            {
              memmove(v17, v18, v16);
            }

            *(v4 + 2) = 0;
          }

          v2 = (v15 >> 1) - v16;

          v4 = v14;
        }

        v19 = __OFSUB__(v2--, 1);
        if (v19)
        {
          goto LABEL_31;
        }

        ++v10;
        v6 = *(v8 + 16);
        if (v10 == v6)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v20 = *(v4 + 3);
  if (v20 < 2)
  {
    return v4;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v2);
  v22 = v21 - v2;
  if (!v19)
  {
    *(v4 + 2) = v22;
    return v4;
  }

LABEL_33:
  __break(1u);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237F8CBFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237F8CC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PlaygroundUnavailable(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for _PlaygroundUnavailable(_WORD *result, int a2, int a3)
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

uint64_t sub_237F8CDB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F8CDD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_237F8CE28(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _Playground.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _Playground.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_237F8CF04(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_237F8CFEC;

  return v5();
}

uint64_t sub_237F8CFEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_237F8D0E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = &unk_237F9C870;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_237F8D150(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_237F8D55C;

  return v4();
}

uint64_t _Playground.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _Playground.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _Playground.init(_:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
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

uint64_t sub_237F8D2EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F8D334(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_237F8D3F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237F8D55C;

  return sub_237F8D150(v2);
}

uint64_t sub_237F8D4A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237F8CFEC;

  return sub_237F8CF04(a1, v4);
}

uint64_t Preview.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Preview.init<A, B>(displayName:source:traits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 16));
  v13 = *(a6 - 8);
  (*(v13 + 16))(boxed_opaque_existential_1, a3, a6);
  *(a8 + 56) = 0;
  swift_getKeyPath();
  type metadata accessor for PreviewTrait(255, a5, v14, v15);
  sub_237F9BD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  swift_getWitnessTable();
  sub_237F8D828();
  v16 = sub_237F9BCC4();

  (*(v13 + 8))(a3, a6);

  *(a8 + 64) = v16;
  return result;
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

uint64_t sub_237F8D7D0(uint64_t *a1)
{

  swift_getAtKeyPath();
}

unint64_t sub_237F8D828()
{
  result = qword_27DEE3900;
  if (!qword_27DEE3900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE38F8, &qword_237F9C8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3900);
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

uint64_t sub_237F8D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a7 + 16));
  v12 = *(a4 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a3, a4);
  *(a7 + 56) = a6;
  result = (*(v12 + 8))(a3, a4);
  *(a7 + 64) = MEMORY[0x277D84F90];
  return result;
}

uint64_t Preview.value<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237F9BE04();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v37 = *(v3 + 64);
  v35 = a1;
  v36 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  sub_237F8D828();
  v16 = sub_237F9BC94();

  v37 = v16;
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 56))(v13, 1, 1, AssociatedTypeWitness);
  v33 = a1;
  v34 = a2;
  v27 = a1;
  v28 = a2;
  v18 = v29;
  sub_237F9BD34();
  swift_getWitnessTable();
  v19 = v30;
  sub_237F9BCB4();
  v20 = v31;
  v21 = *(v31 + 8);
  v22 = v13;
  v23 = v19;
  v21(v22, v19);

  v24 = v15;
  (*(v20 + 16))(v18, v15, v23);
  v25 = *(v17 + 48);
  if (v25(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 24))();
    v21(v24, v23);
    result = v25(v18, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (v21)(v18, v23);
    }
  }

  else
  {
    v21(v24, v23);
    return (*(v17 + 32))(v32, v18, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_237F8DD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237F8E41C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3910, &qword_237F9CA08);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_237F8DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a2;
  v25 = a5;
  v24 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_237F9BE04();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v19 = v25;
    (*(a4 + 16))(v24, a4);
  }

  else
  {
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    v20 = v24;
    (*(a4 + 16))(v24, a4);
    v19 = v25;
    (*(a4 + 32))(v18, v16, v20, a4);
    v21 = *(v13 + 8);
    v21(v16, AssociatedTypeWitness);
    v21(v18, AssociatedTypeWitness);
  }

  return (*(v13 + 56))(v19, 0, 1, AssociatedTypeWitness);
}

uint64_t Preview.source.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_237F8D59C(v1 + 16, v4);
  if (v5)
  {
    sub_237F8E18C(v4);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3908, &qword_237F9C8B8);
    a1[4] = &protocol witness table for DefaultPreviewSource<A>;
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0;
    *(result + 24) = 0x726F727245;
    *(result + 32) = 0xE500000000000000;
    *(result + 40) = 257;
    *(result + 48) = sub_237F8E1BC;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 81) = 0u;
  }

  else
  {
    sub_237F8E244(v4, v6);
    return sub_237F8E244(v6, a1);
  }

  return result;
}

void sub_237F8E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  else if (!a7)
  {
  }
}

uint64_t sub_237F8E244(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_237F8E28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F8E2D4(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237F8E348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237F8E384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_237F8E3D0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_237F8E41C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237F8E480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for PreviewSection(0, *(a2 + 16), a4, a5);
  if (sub_237F9BD04() >= a1)
  {
    if (a1)
    {
      result = a1 - 1;
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
        return result;
      }

      sub_237F9BD54();
      v13 = *(v8 - 8);
    }

    else
    {
      v13 = *(v8 - 8);
      (*(v13 + 16))(a3, v5, v8);
    }

    v9 = *(v13 + 56);
    v10 = a3;
    v11 = 0;
  }

  else
  {
    v9 = *(*(v8 - 8) + 56);
    v10 = a3;
    v11 = 1;
  }

  return v9(v10, v11, 1, v8);
}

uint64_t sub_237F8E5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for PreviewSection(0, a3, a3, a5);
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for PreviewArguments.InhabitedSections(0, a3, v10, v11);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t sub_237F8E634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for PreviewArguments.InhabitedSections(255, a2, a4, a5);
  v9 = sub_237F9BE04();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - v10;
  v35 = a2;
  v13 = type metadata accessor for PreviewSection(255, a2, v11, v12);
  v14 = sub_237F9BE04();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = *(v13 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v33 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - v22;
  v24 = *(v8 - 8);
  v25 = *(v24 + 56);
  v41 = a3;
  v37 = v25;
  v38 = v8;
  v36 = v24 + 56;
  v25(a3, 1, 1, v8);
  *&v44 = a1;
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BD94();
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);

    v26 = v41;
    (*(v39 + 8))(v41, v40);
    return v37(v26, 1, 1, v38);
  }

  else
  {
    (*(v19 + 32))(v23, v18, v13);
    v28 = v33;
    (*(v19 + 16))(v33, v23, v13);
    *&v42 = a1;
    sub_237F9BDA4();
    v42 = v44;
    v43 = v45;
    sub_237F9BE24();
    swift_getWitnessTable();
    v29 = sub_237F9BD44();
    (*(v19 + 8))(v23, v13);
    v30 = v34;
    sub_237F8E5AC(v28, v29, v35, v34, v31);
    v37(v30, 0, 1, v38);
    return (*(v39 + 40))(v41, v30, v40);
  }
}

uint64_t PreviewSection.init(_:arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  v11 = type metadata accessor for PreviewSection(255, a4, a3, a6);
  v12 = sub_237F9BE04();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = a3(v14);
  sub_237F8EC10(a1, a2, v17, a4, v16);
  v18 = *(v11 - 8);
  if ((*(v18 + 48))(v16, 1, v11))
  {
    (*(v13 + 8))(v16, v12);
    v19 = 1;
  }

  else
  {
    (*(v18 + 32))(a5, v16, v11);
    v19 = 0;
  }

  return (*(v18 + 56))(a5, v19, 1, v11);
}

uint64_t sub_237F8EC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a2;
  v29 = a5;
  v7 = sub_237F9BE04();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PreviewSection(0, a4, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v24 - v18);
  v28 = a3;
  *&v32 = a3;
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BD94();
  if ((*(v11 + 48))(v10, 1, a4) == 1)
  {

    (*(v24 + 8))(v10, v25);

    return (*(v17 + 56))(v29, 1, 1, v16);
  }

  else
  {
    (*(v11 + 32))(v13, v10, a4);
    v21 = v27;
    *v19 = v26;
    v19[1] = v21;
    (*(v11 + 16))(v19 + *(v16 + 28), v13, a4);
    *&v30 = v28;
    sub_237F9BDA4();
    v30 = v32;
    v31 = v33;
    sub_237F9BE24();
    swift_getWitnessTable();
    v22 = sub_237F9BD44();
    (*(v11 + 8))(v13, a4);
    *(v19 + *(v16 + 32)) = v22;
    v23 = v29;
    (*(v17 + 16))(v29, v19, v16);
    (*(v17 + 56))(v23, 0, 1, v16);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_237F8EFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  if (sub_237F9BD04() >= a1)
  {
    if (a1)
    {
      result = a1 - 1;
      if (__OFSUB__(a1, 1))
      {
        __break(1u);
        return result;
      }

      sub_237F9BD54();
      v12 = *(v7 - 8);
    }

    else
    {
      v12 = *(v7 - 8);
      (*(v12 + 16))(a3, v3 + *(a2 + 28), v7);
    }

    v8 = *(v12 + 56);
    v9 = a3;
    v10 = 0;
  }

  else
  {
    v8 = *(*(v7 - 8) + 56);
    v9 = a3;
    v10 = 1;
  }

  return v8(v9, v10, 1, v7);
}

uint64_t _s21DeveloperToolsSupport23PreviewArgumentsBuilderV15buildExpressionyAC9ComponentVyx_GxFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for PreviewArgumentsBuilder.Component.Item(255, a2, a4, a5);
  sub_237F9BF04();
  swift_allocObject();
  v8 = sub_237F9BCE4();
  (*(*(a2 - 8) + 16))(v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  result = sub_237F9BD34();
  *a3 = v8;
  return result;
}

uint64_t sub_237F8F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for PreviewArgumentsBuilder.Component.Item(255, a2, a4, a5);
  sub_237F9BF04();
  swift_allocObject();
  v8 = sub_237F9BCE4();
  v10 = v9;
  v13 = type metadata accessor for PreviewSection(0, a2, v11, v12);
  (*(*(v13 - 8) + 16))(v10, a1, v13);
  swift_storeEnumTagMultiPayload();
  result = sub_237F9BD34();
  *a3 = v8;
  return result;
}

uint64_t _s21DeveloperToolsSupport23PreviewArgumentsBuilderV10buildArrayyAC9ComponentVyx_GSayAGGFZ_0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for PreviewArgumentsBuilder.Component(255, a2, v5, v6);
  sub_237F9BD34();
  type metadata accessor for PreviewArgumentsBuilder.Component.Item(255, a2, v7, v8);
  sub_237F9BD34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_237F9BCC4();

  *a3 = v9;
  return result;
}

uint64_t sub_237F8F410(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t static PreviewArgumentsBuilder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X1>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v8 = type metadata accessor for PreviewArgumentsBuilder.Component(0, a1, a2, a3);
  sub_237F8F548(sub_237F8F51C, v11, a2, v8, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v9);
  _s21DeveloperToolsSupport23PreviewArgumentsBuilderV10buildArrayyAC9ComponentVyx_GSayAGGFZ_0(a1, a4);
}

uint64_t sub_237F8F548(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_237F9BE04();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_237F9BC84();
  v63 = sub_237F9BE74();
  v58 = sub_237F9BE84();
  sub_237F9BE54();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_237F9BC74();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_237F9BE14();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_237F9BE64();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_237F9BE14();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_237F9BE64();
      sub_237F9BE14();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t static PreviewArgumentsBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v13[2] = a1;
  type metadata accessor for PreviewSection(255, a1, a2, a3);
  sub_237F9BE04();
  v8 = type metadata accessor for PreviewArgumentsBuilder.Component(0, a1, v6, v7);
  sub_237F8FD3C(sub_237F8FD10, v13, MEMORY[0x277D84A98], v8, v9, &v14);
  result = v14;
  if (!v14)
  {
    type metadata accessor for PreviewArgumentsBuilder.Component.Item(0, a1, v10, v11);
    result = sub_237F9BCF4();
  }

  *a4 = result;
  return result;
}

uint64_t sub_237F8FD3C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
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

uint64_t static PreviewArgumentsBuilder.buildOptional(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = *a1;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    type metadata accessor for PreviewArgumentsBuilder.Component.Item(0, a3, a4, a5);
    v7 = sub_237F9BCF4();
  }

  *a2 = v7;
}

uint64_t static PreviewArgumentsBuilder.buildFinalResult(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v7 = type metadata accessor for PreviewSection(255, a2, a3, a4);
  v8 = sub_237F9BE04();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(v7 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *a1;

  v34 = sub_237F9BCF4();
  v32 = v18;
  v31 = sub_237F9BCF4();
  v29 = a2;
  v30 = &v34;
  type metadata accessor for PreviewArgumentsBuilder.Component.Item(255, a2, v19, v20);
  sub_237F9BD34();
  sub_237F9BD34();
  swift_getWitnessTable();
  sub_237F9BCA4();

  v21 = v34;

  sub_237F8EC10(0, 0, v21, a2, v11);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v26 + 8))(v11, v27);
  }

  else
  {
    (*(v12 + 32))(v17, v11, v7);
    (*(v12 + 16))(v15, v17, v7);
    sub_237F9BD14();
    (*(v12 + 8))(v17, v7);
  }

  sub_237F8E634(v33, a2, v28, v22, v23);
}

uint64_t sub_237F90354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v5 = type metadata accessor for PreviewSection(255, a4, a3, a4);
  v6 = sub_237F9BE04();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v40 = *(v5 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v25 = type metadata accessor for PreviewArgumentsBuilder.Component.Item(0, a4, v23, v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v36 - v26;
  (*(v28 + 16))(&v36 - v26, v42, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v40;
    v30 = *(v40 + 32);
    v30(v16, v27, v5);
    v31 = *v43;

    sub_237F8EC10(0, 0, v31, a4, v9);
    if ((*(v29 + 48))(v9, 1, v5) == 1)
    {
      (*(v37 + 8))(v9, v38);
      (*(v29 + 16))(v39, v16, v5);
    }

    else
    {
      v33 = v36;
      v30(v36, v9, v5);
      v34 = *(v29 + 16);
      v35 = v39;
      v34(v39, v33, v5);
      sub_237F9BD34();
      sub_237F9BD14();
      (*(v29 + 8))(v33, v5);
      v34(v35, v16, v5);
    }

    sub_237F9BD34();
    sub_237F9BD14();
    sub_237F9BD34();
    sub_237F9BD24();
    return (*(v29 + 8))(v16, v5);
  }

  else
  {
    (*(v17 + 32))(v22, v27, a4);
    (*(v17 + 16))(v20, v22, a4);
    sub_237F9BD34();
    sub_237F9BD14();
    return (*(v17 + 8))(v22, a4);
  }
}

uint64_t static PreviewSectionArgumentsBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2)
{
  sub_237F90A9C(a2, a2);
  v4 = *(a2 - 8);
  swift_allocObject();
  v5 = sub_237F9BCE4();
  (*(v4 + 16))(v6, a1, a2);
  sub_237F9BD34();
  return v5;
}

uint64_t static PreviewSectionArgumentsBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_237F9BD44();
}

uint64_t static PreviewSectionArgumentsBuilder.buildArray(_:)(uint64_t a1, uint64_t a2)
{
  sub_237F9BD34();
  sub_237F9BD34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_237F9BCC4();
}

uint64_t sub_237F90A9C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3CA0, &qword_237F9CB80);
  }

  else
  {

    return sub_237F9BF04();
  }
}

uint64_t sub_237F90B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PreviewArguments.InhabitedSections(255, *(a1 + 16), a3, a4);
  result = sub_237F9BE04();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237F90BAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  v12 = v10 + 2;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 < 0x7FFFFFFF)
    {
      v20 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v19 = v20 + 1;
    }

    else
    {
      v19 = (*(v4 + 48))(v18);
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = *(a1 + v9);
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_23:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return (v11 | v17) + v7;
}

unsigned int *sub_237F90D34(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v5 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 - 1 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = a3 - v7 + 2;
    if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_16:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      result = ((result + v9 + 16) & ~v9);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((result + v10) & 0xFFFFFFFFFFFFFFF8);
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v21 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v21 = a2;
        }

        *v20 = v21;
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = a2 + 1;

        return v18(result, v19);
      }

      return result;
    }
  }

  v15 = a2 - v7;
  if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 1;
  }

  if (((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = result;
    bzero(result, ((((v10 + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v15;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

void sub_237F90F64(uint64_t a1)
{
  sub_237F9133C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_237F9BD34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237F91008(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_237F91160(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_237F9133C()
{
  if (!qword_27DEE3A18[0])
  {
    v0 = sub_237F9BE04();
    if (!v1)
    {
      atomic_store(v0, qword_27DEE3A18);
    }
  }
}

uint64_t sub_237F913A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237F913F8(uint64_t *a1, int a2)
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

uint64_t sub_237F91440(uint64_t result, int a2, int a3)
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

uint64_t sub_237F91494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PreviewSection(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_237F9BD34();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237F91520(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 16) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_237F91680(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 16] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_237F91864(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for PreviewSection(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237F918E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_237F91A3C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void static PreviewMacroBodyBuilder.buildBlock(_:)()
{
  sub_237F9BEA4();
  __break(1u);
}

{
  sub_237F9BEA4();
  __break(1u);
}

id previewImage(category:description:file:line:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = *a1;
  if (sub_237F96240())
  {
    if (qword_27DEE38D0 != -1)
    {
      swift_once();
    }

    v11 = v8;

    v9 = sub_237F92138(&v11, a7);

    return v9;
  }

  else
  {
    result = sub_237F9BEA4();
    __break(1u);
  }

  return result;
}

id sub_237F92138(char *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v53 - v6;
  v7 = sub_237F9BBE4();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v54 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v59 = (&v53 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = (&v53 - v23);
  v25 = *a1;
  v66[0] = *a1;
  v58 = a2;
  v26 = sub_237F968C0(v66, a2);
  v28 = v27;
  sub_237F9BBD4();
  v55 = v2;
  v29 = *(v2 + 2);
  v63 = v26;
  v64 = v28;
  v65 = v9;

  os_unfair_lock_lock((v29 + 24));
  sub_237F9785C((v29 + 16), v16);
  os_unfair_lock_unlock((v29 + 24));

  v30 = v17;

  v61[1](v9, v62);
  v62 = v18;
  v31 = *(v18 + 48);
  if ((v31)(v16, 1, v17) != 1)
  {
    v50 = v16;
LABEL_8:
    sub_237F97070(v50, v24);
    v51 = *v24;
    sub_237F970D4(v24);
    return v51;
  }

  sub_237F97130(v16, &qword_27DEE3DD8, &qword_237F9CDD0);
  v66[0] = v25;
  v32 = v58;
  v33 = sub_237F968C0(v66, v58);
  v35 = v34;
  v66[0] = v25;
  v36 = sub_237F96CB0(v66, v32);
  if (v36)
  {
    v37 = v36;
    v58 = v33;
    v38 = *(v55 + 2);

    os_unfair_lock_lock(v38 + 6);
    v39 = sub_237F9BB64();
    v40 = *(v39 - 8);
    v53 = v35;
    v41 = *(v40 + 56);
    v61 = v31;
    v42 = v57;
    v41(v57, 1, 1, v39);
    v43 = v54;
    sub_237F9BBD4();
    v44 = *(v17 + 20);
    v41(v43 + v44, 1, 1, v39);
    *v43 = v37;
    v55 = v37;
    sub_237F97190(v42, v43 + v44);
    v45 = v60;
    sub_237F97070(v43, v60);
    v46 = v56;
    sub_237F97200(v45, v56);
    v47 = *(v62 + 56);
    v47(v46, 0, 1, v17);
    swift_beginAccess();
    v48 = v53;

    v49 = v46;
    v31 = v61;
    sub_237F94910(v49, v58, v48);
    swift_endAccess();
    v30 = v17;
    sub_237F934FC();
    v47(v45, 0, 1, v17);
    os_unfair_lock_unlock(v38 + 6);
  }

  else
  {
    v45 = v60;
    (*(v62 + 56))(v60, 1, 1, v17);
  }

  if ((v31)(v45, 1, v30) != 1)
  {
    v50 = v45;
    v24 = v59;
    goto LABEL_8;
  }

  sub_237F97130(v45, &qword_27DEE3DD8, &qword_237F9CDD0);
  result = sub_237F9BEA4();
  __break(1u);
  return result;
}

uint64_t previewImage(category:description:file:line:)@<X0>(char *a1@<X0>, unsigned int (*a7)(void, void, void)@<X6>, uint64_t x8_0@<X8>)
{
  v10 = *a1;
  if (sub_237F96240())
  {
    if (qword_27DEE38D0 != -1)
    {
      swift_once();
    }

    v12 = v10;

    sub_237F92818(&v12, a7, x8_0);
  }

  else
  {
    result = sub_237F9BEA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_237F92818@<X0>(char *a1@<X0>, unsigned int (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v103[3] = *MEMORY[0x277D85DE8];
  v6 = sub_237F9BB64();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v83 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = v82 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = v82 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v85 = v82 - v16;
  MEMORY[0x28223BE20](v15);
  v89 = v82 - v17;
  v18 = sub_237F9BBE4();
  v94 = *(v18 - 8);
  v95 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v87 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v91 = v82 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v82 - v26;
  v28 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v86 = (v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v90 = v82 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v82 - v34;
  v36 = *a1;
  LOBYTE(v103[0]) = *a1;
  v96 = a2;
  v37 = sub_237F968C0(v103, a2);
  v39 = v38;
  sub_237F9BBD4();
  v93 = v3;
  v40 = *(v3 + 16);
  v100 = v37;
  v101 = v39;
  v102 = v20;

  os_unfair_lock_lock((v40 + 24));
  sub_237F969D8((v40 + 16), v27);
  v41 = v28;
  os_unfair_lock_unlock((v40 + 24));

  (*(v94 + 8))(v20, v95);
  v95 = v29;
  v42 = *(v29 + 48);
  if (v42(v27, 1, v41) == 1)
  {
    v43 = v99;
    sub_237F97130(v27, &qword_27DEE3DD8, &qword_237F9CDD0);
    LOBYTE(v103[0]) = v36;
    v44 = v96;
    v94 = sub_237F968C0(v103, v96);
    v46 = v45;
    LOBYTE(v103[0]) = v36;
    v47 = sub_237F96CB0(v103, v44);
    if (v47)
    {
      v48 = v47;
      v82[1] = v29 + 48;
      v96 = v42;
      v89 = v41;

      os_unfair_lock_lock(v49 + 6);
      v50 = [objc_opt_self() defaultManager];
      v103[0] = 0;
      v51 = [v50 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v103];

      v52 = v103[0];
      v85 = v46;
      if (v51)
      {
        v53 = v83;
        sub_237F9BB54();
        v54 = v52;

        v55 = v84;
        sub_237F9BB44();
        (*(v98 + 1))(v53, v43);
        v63 = sub_237F9471C();
        v65 = v64;
        sub_237F9BB84();
        v79 = v98;
        v80 = v88;
        (*(v98 + 4))(v88, v55, v43);
        sub_237F97264(v63, v65);
        v81 = 0;
      }

      else
      {
        v61 = v103[0];
        v62 = sub_237F9BB24();

        swift_willThrow();
        v81 = 1;
        v79 = v98;
        v80 = v88;
      }

      v66 = v79[7];
      v66(v80, v81, 1, v43);
      v67 = v89;
      v68 = v43;
      v69 = v86;
      sub_237F9BBD4();
      v70 = *(v67 + 20);
      v66(v69 + v70, 1, 1, v68);
      *v69 = v48;
      v98 = v48;
      sub_237F97190(v80, v69 + v70);
      v60 = v91;
      sub_237F97070(v69, v91);
      v71 = v87;
      sub_237F97200(v60, v87);
      v72 = *(v95 + 56);
      v72(v71, 0, 1, v67);
      swift_beginAccess();
      v73 = v85;

      sub_237F94910(v71, v94, v73);
      swift_endAccess();
      sub_237F934FC();
      v41 = v67;
      v72(v60, 0, 1, v67);
      os_unfair_lock_unlock(v49 + 6);

      v42 = v96;
    }

    else
    {
      v60 = v91;
      (*(v95 + 56))(v91, 1, 1, v41);

      v79 = v98;
    }

    if (v42(v60, 1, v41) == 1)
    {
      v76 = &qword_27DEE3DD8;
      v77 = &qword_237F9CDD0;
    }

    else
    {
      v74 = v90;
      sub_237F97070(v60, v90);
      v75 = *(v41 + 20);
      v76 = &qword_27DEE3DB0;
      v77 = &qword_237F9CD18;
      v57 = v92;
      sub_237F977E0(v74 + v75, v92, &qword_27DEE3DB0, &qword_237F9CD18);
      sub_237F970D4(v74);
      v58 = v99;
      if ((v79[6])(v57, 1, v99) != 1)
      {
        return (v79[4])(v97, v57, v58);
      }

      v91 = v57;
    }

    sub_237F97130(v91, v76, v77);
  }

  else
  {
    v56 = v96;
    sub_237F97070(v27, v35);
    v57 = v89;
    sub_237F977E0(&v35[*(v41 + 20)], v89, &qword_27DEE3DB0, &qword_237F9CD18);
    v79 = v98;
    v58 = v99;
    v59 = *(v98 + 6);
    if (v59(v57, 1, v99) != 1 || (sub_237F97130(v57, &qword_27DEE3DB0, &qword_237F9CD18), LOBYTE(v103[0]) = v36, v57 = v85, sub_237F93A38(v103, v56, v85), v59(v57, 1, v58) != 1))
    {
      sub_237F970D4(v35);
      return (v79[4])(v97, v57, v58);
    }

    sub_237F97130(v57, &qword_27DEE3DB0, &qword_237F9CD18);
  }

  result = sub_237F9BEA4();
  __break(1u);
  return result;
}

uint64_t sub_237F93254()
{
  sub_237F9BF74();
  sub_237F9BC54();

  return sub_237F9BFA4();
}

uint64_t sub_237F932D0(uint64_t a1)
{
  sub_237F9BC54();
}

uint64_t sub_237F93338(uint64_t a1)
{
  sub_237F9BF74();
  sub_237F9BC54();

  return sub_237F9BFA4();
}

uint64_t sub_237F933B0@<X0>(char *a2@<X8>)
{
  v3 = sub_237F9BEE4();

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

void sub_237F93410(uint64_t *a1@<X8>)
{
  v2 = 0x726174617661;
  if (*v1)
  {
    v2 = 0x6F746F6870;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_237F93448(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F746F6870;
  }

  else
  {
    v3 = 0x726174617661;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F746F6870;
  }

  else
  {
    v5 = 0x726174617661;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_237F9BF14();
  }

  return v8 & 1;
}

void sub_237F934FC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (*(*(v0 + 16) + 16))
  {
    if (v1)
    {
      return;
    }

    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_237F9739C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237F936D0;
    aBlock[3] = &block_descriptor;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:180.0];
    _Block_release(v4);
    v6 = *(v0 + 40);
    *(v0 + 40) = v5;
  }

  else
  {
    if (v1)
    {
      [v1 invalidate];
      v6 = *(v0 + 40);
    }

    else
    {
      v6 = 0;
    }

    *(v0 + 40) = 0;
  }
}

uint64_t sub_237F93658(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    v3(v4);
  }

  return result;
}

void sub_237F936D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_237F93738()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_237F93780()
{
  type metadata accessor for PreviewImageProvider();
  swift_allocObject();
  result = sub_237F937C0();
  qword_27DEE3DA8 = result;
  return result;
}

uint64_t sub_237F937C0()
{
  type metadata accessor for PreviewImageProvider.State();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v1[2] = sub_237F966EC(MEMORY[0x277D84F90]);
  v1[5] = 0;
  v3 = sub_237F966EC(v2);
  swift_beginAccess();
  v1[2] = v3;

  v4 = v1[5];
  v1[5] = 0;

  v1[3] = nullsub_1;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DF0, &qword_237F9CDE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  v6 = (v5 + 24);
  *(v5 + 16) = v1;
  v7 = (v5 + 16);
  *(v0 + 16) = v5;

  os_unfair_lock_lock(v6);
  sub_237F97440(v7);
  os_unfair_lock_unlock(v6);

  return v0;
}

uint64_t sub_237F938D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = sub_237F9745C;
  *(v2 + 32) = v3;
}

uint64_t sub_237F9394C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_237F939A4();
  }

  return result;
}

uint64_t sub_237F939A4()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_237F9431C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_237F93A38@<X0>(char *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v93 = a3;
  v97[3] = *MEMORY[0x277D85DE8];
  v84 = *v4;
  v7 = sub_237F9BB64();
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v77 - v13;
  v91 = sub_237F9BBE4();
  v14 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v88 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v77 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v77 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - v24;
  v26 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v79 = (&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v83 = &v77 - v30;
  v31 = *a1;
  LOBYTE(v97[0]) = *a1;
  v85 = a2;
  v32 = sub_237F968C0(v97, a2);
  v34 = v33;
  sub_237F9BBD4();
  v92 = v4;
  v35 = v4[2];
  v82 = v32;
  v94 = v32;
  v95 = v34;
  v96 = v16;

  os_unfair_lock_lock((v35 + 24));
  sub_237F9785C((v35 + 16), v25);
  os_unfair_lock_unlock((v35 + 24));

  (*(v14 + 8))(v16, v91);
  v86 = v27;
  v36 = *(v27 + 48);
  v91 = v26;
  if (v36(v25, 1, v26) == 1)
  {

    sub_237F97130(v25, &qword_27DEE3DD8, &qword_237F9CDD0);
    LOBYTE(v97[0]) = v31;
    v37 = v85;
    v38 = sub_237F968C0(v97, v85);
    v40 = v39;
    LOBYTE(v97[0]) = v31;
    v41 = sub_237F96CB0(v97, v37);
    if (v41)
    {
      v42 = v41;
      v85 = v36;

      os_unfair_lock_lock((v92 + 24));
      v43 = [objc_opt_self() defaultManager];
      v97[0] = 0;
      v44 = [v43 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v97];

      v45 = v97[0];
      v46 = v89;
      v83 = v40;
      v84 = v38;
      if (v44)
      {
        v47 = v77;
        sub_237F9BB54();
        v48 = v45;

        v49 = v78;
        sub_237F9BB44();
        (*(v90 + 8))(v47, v46);
        v60 = sub_237F9471C();
        v62 = v61;
        sub_237F9BB84();
        v75 = v81;
        (*(v90 + 32))(v81, v49, v46);
        sub_237F97264(v60, v62);
        v76 = 0;
      }

      else
      {
        v58 = v97[0];
        v59 = sub_237F9BB24();

        swift_willThrow();
        v76 = 1;
        v75 = v81;
      }

      v63 = *(v90 + 56);
      v63(v75, v76, 1, v46);
      v57 = v91;
      v64 = v79;
      sub_237F9BBD4();
      v65 = *(v57 + 20);
      v63(v64 + v65, 1, 1, v46);
      *v64 = v42;
      v82 = v42;
      sub_237F97190(v75, v64 + v65);
      v66 = v64;
      v56 = v87;
      sub_237F97070(v66, v87);
      v67 = v92;
      v68 = v80;
      sub_237F97200(v56, v80);
      v69 = *(v86 + 56);
      v69(v68, 0, 1, v57);
      swift_beginAccess();
      v70 = v83;

      sub_237F94910(v68, v84, v70);
      swift_endAccess();
      sub_237F934FC();
      v69(v56, 0, 1, v57);
      os_unfair_lock_unlock(v67 + 6);

      v36 = v85;
    }

    else
    {
      v56 = v87;
      v57 = v91;
      (*(v86 + 56))(v87, 1, 1, v91);
    }

    v71 = v88;
    sub_237F972B8(v56, v88);
    v72 = v36(v71, 1, v57);
    v73 = v93;
    if (v72 == 1)
    {
      sub_237F97130(v71, &qword_27DEE3DD8, &qword_237F9CDD0);
      return (*(v90 + 56))(v73, 1, 1, v89);
    }

    sub_237F977E0(v71 + *(v57 + 20), v93, &qword_27DEE3DB0, &qword_237F9CD18);
    v55 = v71;
  }

  else
  {
    v50 = v83;
    v51 = sub_237F97070(v25, v83);
    v52 = *(v92 + 16);
    MEMORY[0x28223BE20](v51);
    v53 = v82;
    *(&v77 - 4) = v50;
    *(&v77 - 3) = v53;
    v54 = v84;
    *(&v77 - 2) = v34;
    *(&v77 - 1) = v54;

    os_unfair_lock_lock((v52 + 24));
    sub_237F97328((v52 + 16), v93);
    os_unfair_lock_unlock((v52 + 24));

    v55 = v50;
  }

  return sub_237F970D4(v55);
}

uint64_t sub_237F9431C(uint64_t *a1)
{
  v2 = sub_237F9BBE4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  sub_237F9BBC4();
  sub_237F9BB94();
  v7 = *a1;
  swift_beginAccess();
  v12 = v6;

  v9 = sub_237F97660(v8, sub_237F97464);

  *(v7 + 16) = v9;

  sub_237F934FC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_237F94498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21[-v6];
  v8 = sub_237F9BB64();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v13 = sub_237F9BBA4();
  if ((v13 & 1) == 0)
  {
    sub_237F977E0(a3 + *(v12 + 20), v7, &qword_27DEE3DB0, &qword_237F9CD18);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_237F97130(v7, &qword_27DEE3DB0, &qword_237F9CD18);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v14 = [objc_opt_self() defaultManager];
      v15 = sub_237F9BB34();
      v22[0] = 0;
      v16 = [v14 removeItemAtURL:v15 error:v22];

      if (v16)
      {
        v17 = v22[0];
      }

      else
      {
        v18 = v22[0];
        v19 = sub_237F9BB24();

        swift_willThrow();
      }

      (*(v9 + 8))(v11, v8);
    }
  }

  return v13 & 1;
}

__CFData *sub_237F9471C()
{
  v1 = v0;
  v2 = sub_237F9BC24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  sub_237F9BC14();
  sub_237F9BC04();
  (*(v3 + 8))(v5, v2);
  v7 = sub_237F9BC44();

  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (!v8)
  {
    sub_237F97348();
    swift_allocError();
    swift_willThrow();
    v8 = v6;
LABEL_6:

    return v6;
  }

  CGImageDestinationAddImage(v8, v1, 0);
  if (!CGImageDestinationFinalize(v8))
  {
    sub_237F97348();
    swift_allocError();
    swift_willThrow();

    goto LABEL_6;
  }

  v9 = v6;
  v6 = sub_237F9BB74();

  return v6;
}

uint64_t sub_237F94910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_237F97130(a1, &qword_27DEE3DD8, &qword_237F9CDD0);
    sub_237F95AD0(a2, a3, v9);

    return sub_237F97130(v9, &qword_27DEE3DD8, &qword_237F9CDD0);
  }

  else
  {
    sub_237F97070(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_237F95E14(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_237F94AD0@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v47 = a3;
  v48 = a4;
  v43 = a1;
  v50 = a5;
  v51[3] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v43 - v9;
  v10 = sub_237F9BB64();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *a2;
  v21 = [objc_opt_self() defaultManager];
  v51[0] = 0;
  v22 = [v21 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:v51];

  v23 = v51[0];
  v49 = v11;
  if (v22)
  {
    sub_237F9BB54();
    v24 = v23;

    sub_237F9BB44();
    v25 = *(v11 + 8);
    v25(v14, v10);
    v26 = v46;
    v27 = sub_237F9471C();
    if (!v26)
    {
      v31 = v27;
      v32 = v28;
      sub_237F9BB84();
      sub_237F97264(v31, v32);
      v33 = v49;
      v34 = *(v49 + 32);
      v34(v19, v17, v10);
      v35 = v50;
      v34(v50, v19, v10);
      v36 = v44;
      v46 = *v43;
      (*(v33 + 16))(v44, v35, v10);
      v37 = *(v33 + 56);
      v37(v36, 0, 1, v10);
      v38 = type metadata accessor for PreviewImageProvider.State.Entry(0);

      v39 = v20;
      v40 = v45;
      sub_237F9BBD4();
      v41 = *(v38 + 20);
      v37(v40 + v41, 1, 1, v10);
      *v40 = v39;
      sub_237F97190(v36, v40 + v41);
      (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
      swift_beginAccess();
      sub_237F94910(v40, v47, v48);
      swift_endAccess();
      sub_237F934FC();
      return (v37)(v50, 0, 1, v10);
    }

    v25(v17, v10);
  }

  else
  {
    v29 = v51[0];
    v30 = sub_237F9BB24();

    swift_willThrow();
  }

  return (*(v49 + 56))(v50, 1, 1, v10);
}

uint64_t sub_237F94F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *a1;
  swift_beginAccess();
  v19 = *(v18 + 16);
  if (*(v19 + 16) && (v20 = sub_237F952C4(a2, a3), (v21 & 1) != 0))
  {
    v29 = a2;
    sub_237F97200(*(v19 + 56) + *(v12 + 72) * v20, v15);
    sub_237F97070(v15, v17);
    swift_endAccess();
    v22 = *(v11 + 24);
    v23 = v30;
    if (sub_237F9BBB4())
    {
      v24 = sub_237F9BBE4();
      (*(*(v24 - 8) + 24))(&v17[v22], v23, v24);
      sub_237F97200(v17, v10);
      v25 = *(v12 + 56);
      v25(v10, 0, 1, v11);
      swift_beginAccess();

      sub_237F94910(v10, v29, a3);
      swift_endAccess();
      sub_237F934FC();
      v26 = v31;
      sub_237F97200(v17, v31);
      v25(v26, 0, 1, v11);
    }

    else
    {
      v28 = v31;
      sub_237F97200(v17, v31);
      (*(v12 + 56))(v28, 0, 1, v11);
    }

    return sub_237F970D4(v17);
  }

  else
  {
    swift_endAccess();
    return (*(v12 + 56))(v31, 1, 1, v11);
  }
}

uint64_t sub_237F9528C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_237F952C4(uint64_t a1, uint64_t a2)
{
  sub_237F9BF74();
  sub_237F9BC54();
  v4 = sub_237F9BFA4();

  return sub_237F9533C(a1, a2, v4);
}

unint64_t sub_237F9533C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_237F9BF14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_237F953F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  v40 = v4;
  result = sub_237F9BEC4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_237F97070(v28, v41);
      }

      else
      {
        sub_237F97200(v28, v41);
      }

      sub_237F9BF74();
      sub_237F9BC54();
      result = sub_237F9BFA4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_237F97070(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_237F95730(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_237F9746C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_237F957C0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  result = sub_237F9BED4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_237F97200(v22 + v43 * v21, v40);
    sub_237F97070(v26, v17);
    sub_237F9BF74();

    sub_237F9BC54();
    result = sub_237F9BFA4();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_237F97070(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237F95AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_237F952C4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_237F96010();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PreviewImageProvider.State.Entry(0);
    v19 = *(v12 - 8);
    sub_237F97070(v11 + *(v19 + 72) * v8, a3);
    sub_237F95C28(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PreviewImageProvider.State.Entry(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_237F95C28(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_237F9BE34() + 1) & ~v5;
    while (1)
    {
      sub_237F9BF74();

      sub_237F9BC54();
      v9 = sub_237F9BFA4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PreviewImageProvider.State.Entry(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_237F95E14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_237F952C4(a2, a3);
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
      sub_237F96010();
      goto LABEL_7;
    }

    sub_237F953F4(v15, a4 & 1);
    v22 = sub_237F952C4(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_237F9BF24();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PreviewImageProvider.State.Entry(0) - 8) + 72) * v12;

    return sub_237F973BC(a1, v20);
  }

LABEL_13:
  sub_237F95F78(v12, a2, a3, a1, v18);
}

uint64_t sub_237F95F78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  result = sub_237F97070(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_237F96010()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
  v4 = *v0;
  v5 = sub_237F9BEB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_237F97200(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_237F97070(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_237F96240()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_237F9BC34();
  if (*(v2 + 16) && (v3 = sub_237F952C4(0xD00000000000001ALL, 0x8000000237F9DE10), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];

    if (v7 == 49 && v6 == 0xE100000000000000)
    {

      return 1;
    }

    else
    {
      v9 = sub_237F9BF14();

      return v9 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for PreviewImageProvider.State.Entry(uint64_t a1)
{
  result = qword_27DEE3DB8;
  if (!qword_27DEE3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237F9643C(uint64_t a1)
{
  type metadata accessor for CGImage(319);
  if (v1 <= 0x3F)
  {
    sub_237F964D8(319);
    if (v2 <= 0x3F)
    {
      sub_237F9BBE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237F964D8(uint64_t a1)
{
  if (!qword_27DEE3DC8)
  {
    sub_237F9BB64();
    v1 = sub_237F9BE04();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEE3DC8);
    }
  }
}

uint64_t sub_237F96530(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssistiveAccessTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237F96698()
{
  result = qword_27DEE3DD0;
  if (!qword_27DEE3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3DD0);
  }

  return result;
}

unint64_t sub_237F966EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DF8, &unk_237F9CDF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DE8, &unk_237F9CDD8);
    v7 = sub_237F9BED4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_237F977E0(v9, v5, &qword_27DEE3DF8, &unk_237F9CDF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_237F952C4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PreviewImageProvider.State.Entry(0);
      result = sub_237F97070(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_237F968C0(char *a1, unint64_t a2)
{
  sub_237F9BE44();
  MEMORY[0x2383E3DF0](0x4977656976657250, 0xED00005F6567616DLL);
  sub_237F9BE94();
  MEMORY[0x2383E3DF0](95, 0xE100000000000000);
  v2 = sub_237F9BEF4();
  MEMORY[0x2383E3DF0](v2);

  MEMORY[0x2383E3DF0](1735290926, 0xE400000000000000);
  return 0;
}

void sub_237F969F8(double a1)
{
  v1 = floor(a1 / 60.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

CGGradientRef sub_237F96B14(unint64_t a1)
{
  v1 = fmod((15 * (a1 % 0x24)), 360.0);
  sub_237F969F8(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_237F969F8(v1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  SRGB = CGColorCreateSRGB(v3, v5, v7, 1.0);
  v15 = CGColorCreateSRGB(v9, v11, v13, 1.0);
  v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3CA0, &qword_237F9CB80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_237F9CC70;
  *(v17 + 32) = SRGB;
  *(v17 + 40) = v15;
  type metadata accessor for CGColor(0);
  v18 = SRGB;
  v19 = v15;
  v20 = sub_237F9BCD4();

  v21 = CGGradientCreateWithColors(v16, v20, 0);

  return v21;
}

CGImageRef sub_237F96CB0(_BYTE *a1, unint64_t a2)
{
  v4 = sub_237F9BBF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  v9 = v8;
  if (a1)
  {
    if (v8)
    {
      v10 = __CGBitmapContextCreate(0x7D0uLL, 0x3E8uLL, 0x1F40uLL, v8);

      if (v10)
      {
        v11 = sub_237F96B14(a2);
        if (v11)
        {
          v12 = v11;
          v25.x = 2000.0;
          v25.y = 1000.0;
          v23.x = 0.0;
          v23.y = 0.0;
          CGContextDrawLinearGradient(v10, v11, v23, v25, 0);
        }

        Image = CGBitmapContextCreateImage(v10);

        return Image;
      }
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v15 = __CGBitmapContextCreate(0xC8uLL, 0xC8uLL, 0x320uLL, v8);

  if (!v15)
  {
    return 0;
  }

  v16 = sub_237F96B14(a2);
  if (v16)
  {
    v17 = v16;
    v26.x = 200.0;
    v24.x = 0.0;
    v24.y = 0.0;
    v26.y = 200.0;
    CGContextDrawLinearGradient(v15, v16, v24, v26, 0);
  }

  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  CGContextSetFillColorWithColor(v15, SRGB);

  v22[1] = 0x4044000000000000;
  v27.origin.x = 80.0;
  v27.origin.y = 95.0;
  v27.size.width = 40.0;
  v27.size.height = 50.0;
  CGContextFillEllipseInRect(v15, v27);
  v28.origin.x = 80.0;
  v28.origin.y = 95.0;
  v28.size.width = 40.0;
  v28.size.height = 50.0;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = 80.0;
  v29.origin.y = 95.0;
  v29.size.width = 40.0;
  v29.size.height = 50.0;
  v20 = CGRectGetMinY(v29) + -40.0 + -6.25;
  atan2(v20 + 5.71428571 - (v20 + 5.0), MidX + -39.5897327 - (MidX + -34.6410162));
  v22[0] = atan2(v20 - (v20 + 5.0), MidX + -34.6410162 - (MidX + -34.6410162));
  atan2(v20 + 5.71428571 - (v20 + 5.0), MidX + 39.5897327 - (MidX + 34.6410162));
  atan2(v20 - (v20 + 5.0), MidX + 34.6410162 - (MidX + 34.6410162));
  sub_237F9BDC4();
  sub_237F9BDC4();
  sub_237F9BDC4();
  CGContextClosePath(v15);
  (*(v5 + 104))(v7, *MEMORY[0x277CBF258], v4);
  sub_237F9BDD4();
  (*(v5 + 8))(v7, v4);
  v21 = CGBitmapContextCreateImage(v15);

  return v21;
}

uint64_t sub_237F97070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F970D4(uint64_t a1)
{
  v2 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237F97130(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_237F97190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DB0, &qword_237F9CD18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F97200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F97264(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_237F972B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3DD8, &qword_237F9CDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237F97348()
{
  result = qword_27DEE3DE0;
  if (!qword_27DEE3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3DE0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237F973BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237F9746C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = type metadata accessor for PreviewImageProvider.State.Entry(0);
  v28 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = (v30[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_237F97200(v30[7] + *(v28 + 72) * v20, v8);

    LOBYTE(v22) = v29(v22, v23, v8);
    sub_237F970D4(v8);

    if (v22)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_237F957C0(v26, v25, v27, v30);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_237F957C0(v26, v25, v27, v30);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_237F97660(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_237F9746C(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_237F95730(v10, v6, v4, a2);
  result = MEMORY[0x2383E4690](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_237F977E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double DefaultPreviewSource.init(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:body:)@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a7 = *a1;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = a3;
  *(a7 + 25) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  result = 0.0;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0;
  return result;
}

uint64_t DefaultPreviewSource.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t DefaultPreviewSource.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

void DefaultPreviewSource.structure.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  sub_237F97AC8(v2, v3, v4, v5, v6, v7, v8);
}

void sub_237F97AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return;
    }
  }
}

__n128 DefaultPreviewSource.structure.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_237F8E1D4(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t DefaultPreviewSource.init<A>(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:arguments:body:)@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 *a9@<X8>, uint64_t a10)
{
  v52 = a8;
  v53 = a6;
  v57 = a1;
  v58 = a7;
  v59 = a4;
  v60 = a3;
  v55 = a10;
  v13 = type metadata accessor for PreviewArguments.InhabitedSections(255, a10, a3, a4);
  v14 = sub_237F9BE04();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v51 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v56 = *v57;
  v24 = a2[1];
  v57 = *a2;
  v54 = v24;
  (*(v15 + 16))(v18, a5, v14);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    v27 = type metadata accessor for PreviewArguments(0, v55, v25, v26);
    (*(*(v27 - 8) + 8))(a5, v27);

    result = (*(v15 + 8))(v18, v14);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0uLL;
    v34 = 2;
  }

  else
  {
    v35 = *(v19 + 32);
    v35(v23, v18, v13);
    sub_237F97F58(v13, v36, v37, &v61);
    v38 = v55;
    v41 = type metadata accessor for PreviewArguments(0, v55, v39, v40);
    (*(*(v41 - 8) + 8))(a5, v41);
    v50 = v61;
    v29 = v62;
    v49 = v63;
    v42 = v51;
    v35(v51, v23, v13);
    v43 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v52;
    *(v32 + 24) = v38;
    result = (v35)(v32 + v43, v42, v13);
    v33 = v50;
    v30 = v49;
    v44 = (v32 + ((v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
    v45 = v58;
    *v44 = v53;
    v44[1] = v45;
    v34 = 1;
    v31 = sub_237F981AC;
  }

  v46 = v59 & 1;
  a9->n128_u8[0] = v56;
  v47 = v60 & 1;
  a9->n128_u64[1] = v57;
  a9[1].n128_u64[0] = v54;
  a9[1].n128_u8[8] = v47;
  a9[1].n128_u8[9] = v46;
  a9[2] = v33;
  a9[3].n128_u64[0] = v29;
  a9[3].n128_u64[1] = v30;
  a9[4].n128_u64[0] = v31;
  a9[4].n128_u64[1] = v32;
  a9[5].n128_u8[0] = v34;
  return result;
}

__n128 sub_237F97F58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  type metadata accessor for PreviewSection(0, *(a1 + 16), a2, a3);
  sub_237F98798(&v13);
  v12 = v13;
  v5 = v14;
  KeyPath = swift_getKeyPath();
  v7 = sub_237F9BD34();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_237F98854(sub_237F9A014, KeyPath, v7, &type metadata for PreviewGroupMetadata.Section, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  result = v12;
  *a4 = v12;
  a4[1].n128_u64[0] = v5;
  a4[1].n128_u64[1] = v10;
  return result;
}

uint64_t sub_237F98080(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(v14 + 16);
  v21 = *v14;
  v22 = v12;
  v17 = type metadata accessor for PreviewArguments.InhabitedSections(0, v16, v14, v15);
  sub_237F9827C(v13, v23, &v21, v17);
  v18 = v23[0];
  v19 = v23[1];
  a5(v13);
  result = (*(v11 + 8))(v13, a8);
  *a2 = v18;
  a2[1] = v19;
  return result;
}

uint64_t sub_237F981AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for PreviewArguments.InhabitedSections(0, v9, a3, a4) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_237F98080(a1, a2, a3, v4 + v11, v13, v14, v8, v9);
}

uint64_t sub_237F9827C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v10 = sub_237F9BE04();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v36 = &v31 - v11;
  v14 = type metadata accessor for PreviewSection(255, v9, v12, v13);
  v15 = sub_237F9BE04();
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v31 - v17;
  v19 = *(v14 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v25 = &v31 - v24;
  if (*(a3 + 16))
  {
    goto LABEL_4;
  }

  v33 = v20;
  v26 = *a3;
  v27 = *(a3 + 8);
  v31 = v23;
  v32 = v26;
  sub_237F8E480(v26, a4, v18, v21, v22);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v31 + 8))(v18, v15);
    v20 = v33;
LABEL_4:
    result = (*(*(v9 - 8) + 16))(v20, v4 + *(v14 + 28), v9);
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  (*(v19 + 32))(v25, v18, v14);
  v29 = v36;
  sub_237F8EFB4(v27, v14, v36);
  v30 = *(v9 - 8);
  if ((*(v30 + 48))(v29, 1, v9) == 1)
  {
    (*(v34 + 8))(v29, v35);
    (*(v30 + 16))(v33, &v25[*(v14 + 28)], v9);
    result = (*(v19 + 8))(v25, v14);
    *a2 = v32;
    a2[1] = 0;
  }

  else
  {
    (*(v19 + 8))(v25, v14);
    result = (*(v30 + 32))(v33, v29, v9);
    *a2 = v32;
    a2[1] = v27;
  }

  return result;
}

uint64_t PreviewSourceContentDomain.hashValue.getter()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

uint64_t sub_237F986B0()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

uint64_t sub_237F98724(uint64_t a1)
{
  v2 = *v1;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t PreviewSourceContentCategory.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_237F98798@<X0>(void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];

  result = sub_237F9BD04();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = result + 1;
  }

  return result;
}

double sub_237F98800@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for PreviewSection(0, *(a1 + a2 - 8), a2, a3);
  sub_237F98798(&v7);
  v5 = v8;
  result = *&v7;
  *a4 = v7;
  *(a4 + 16) = v5;
  return result;
}

uint64_t sub_237F98854(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_237F9BD74();
  if (!v19)
  {
    return sub_237F9BCF4();
  }

  v41 = v19;
  v45 = sub_237F9BE74();
  v32 = sub_237F9BE84();
  sub_237F9BE54();
  result = sub_237F9BD64();
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
      v22 = sub_237F9BDB4();
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
      sub_237F9BE64();
      result = sub_237F9BD84();
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

DeveloperToolsSupport::PreviewGroupMetadata __swiftcall PreviewGroupMetadata.init(firstSection:moreSections:)(DeveloperToolsSupport::PreviewGroupMetadata::Section firstSection, Swift::OpaquePointer moreSections)
{
  v3 = *(firstSection.title.value._countAndFlagsBits + 16);
  *v2 = *firstSection.title.value._countAndFlagsBits;
  *(v2 + 16) = v3;
  *(v2 + 24) = firstSection.title.value._object;
  result.firstSection = firstSection;
  result.moreSections = moreSections;
  return result;
}

DeveloperToolsSupport::PreviewGroupIndex __swiftcall PreviewGroupIndex.init(section:preview:)(Swift::Int section, Swift::Int preview)
{
  *v2 = section;
  v2[1] = preview;
  result.preview = preview;
  result.section = section;
  return result;
}

DeveloperToolsSupport::PreviewGroupMetadata::Section __swiftcall PreviewGroupMetadata.Section.init(title:previewCount:)(Swift::String_optional title, Swift::Int previewCount)
{
  *v2 = title;
  v2[1].value._countAndFlagsBits = previewCount;
  result.title = title;
  result.previewCount = previewCount;
  return result;
}

uint64_t PreviewGroupMetadata.Section.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PreviewGroupMetadata.Section.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PreviewGroupMetadata.Section.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  return MEMORY[0x2383E4110](v2);
}

uint64_t PreviewGroupMetadata.Section.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_237F9BF74();
  sub_237F9BF94();
  if (v1)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F98E3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_237F9BF74();
  sub_237F9BF94();
  if (v1)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F98EBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  return MEMORY[0x2383E4110](v2);
}

uint64_t sub_237F98F20(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  return sub_237F9BFA4();
}

uint64_t PreviewGroupMetadata.firstSection.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
}

__n128 PreviewGroupMetadata.firstSection.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t PreviewGroupMetadata.moreSections.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_237F99074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v5)
      {
        if (!v7)
        {
          return 0;
        }

        if (*(v3 - 2) == *(v4 - 2) && v5 == v7)
        {
          if (v6 != v8)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v10 = sub_237F9BF14();
        result = 0;
        if ((v10 & 1) == 0)
        {
          return result;
        }
      }

      else
      {

        result = 0;
        if (v7)
        {
          return result;
        }
      }

      if (v6 != v8)
      {
        return result;
      }

LABEL_6:
      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t PreviewGroupMetadata.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  MEMORY[0x2383E4110](v3);

  return sub_237F9966C(a1, v4);
}

uint64_t PreviewGroupMetadata.hashValue.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v1)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  sub_237F9966C(v5, v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F99274()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v1)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v3);
  sub_237F9966C(v5, v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F99308(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    sub_237F9BF94();
    sub_237F9BC54();
  }

  else
  {
    sub_237F9BF94();
  }

  MEMORY[0x2383E4110](v3);

  return sub_237F9966C(a1, v4);
}

uint64_t sub_237F99398(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  sub_237F9BF74();
  sub_237F9BF94();
  if (v2)
  {
    sub_237F9BC54();
  }

  MEMORY[0x2383E4110](v4);
  sub_237F9966C(v6, v3);
  return sub_237F9BFA4();
}

uint64_t PreviewGroupIndex.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2383E4110](*v0);
  return MEMORY[0x2383E4110](v1);
}

uint64_t PreviewGroupIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F99550()
{
  v1 = *v0;
  v2 = v0[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  MEMORY[0x2383E4110](v2);
  return sub_237F9BFA4();
}

uint64_t sub_237F995AC()
{
  v1 = v0[1];
  MEMORY[0x2383E4110](*v0);
  return MEMORY[0x2383E4110](v1);
}

uint64_t sub_237F995E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_237F9BF74();
  MEMORY[0x2383E4110](v2);
  MEMORY[0x2383E4110](v3);
  return sub_237F9BFA4();
}

uint64_t sub_237F9966C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2383E4110](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 1))
      {
        sub_237F9BF94();

        sub_237F9BC54();
      }

      else
      {
        sub_237F9BF94();
      }

      v5 += 3;
      MEMORY[0x2383E4110](v6);

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s21DeveloperToolsSupport20PreviewGroupMetadataV7SectionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_237F9BF14() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

uint64_t _s21DeveloperToolsSupport20PreviewGroupMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (!v3)
  {
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v4 == v7;
    }

    if (v11)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  v9 = *a1 == *a2 && v3 == v6;
  if (!v9 && (sub_237F9BF14() & 1) == 0 || v4 != v7)
  {
    return 0;
  }

LABEL_9:

  return sub_237F99074(v5, v8);
}

unint64_t sub_237F99814()
{
  result = qword_27DEE3E00;
  if (!qword_27DEE3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E00);
  }

  return result;
}

unint64_t sub_237F9986C()
{
  result = qword_27DEE3E08;
  if (!qword_27DEE3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E08);
  }

  return result;
}

unint64_t sub_237F998D0()
{
  result = qword_27DEE3E10;
  if (!qword_27DEE3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E10);
  }

  return result;
}

unint64_t sub_237F99940()
{
  result = qword_27DEE3E18;
  if (!qword_27DEE3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E18);
  }

  return result;
}

unint64_t sub_237F99998()
{
  result = qword_27DEE3E20;
  if (!qword_27DEE3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3E20);
  }

  return result;
}

unint64_t sub_237F999F0()
{
  result = qword_27DEE3E28[0];
  if (!qword_27DEE3E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEE3E28);
  }

  return result;
}

uint64_t sub_237F99A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_21DeveloperToolsSupport20DefaultPreviewSourceV9StructureOyx_G(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_237F99B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237F99B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237F99BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_237F99C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_237F99C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_237F99CBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewSourceContentDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewSourceContentDomain(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_237F99E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_237F99EAC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_237F99EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_237F99F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewGroupIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewGroupIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t PreviewTrait.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(a1, v4 + 32);
  *a2 = v4;
  return result;
}

uint64_t PreviewTrait.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for PreviewTrait(255, a2, v5, v6);
  sub_237F9BD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE38F8, &qword_237F9C8B0);
  swift_getWitnessTable();
  sub_237F8D828();
  v7 = sub_237F9BCC4();

  *a3 = v7;
  return result;
}

__n128 PreviewLayoutTrait.value.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void static PreviewLayoutTrait.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

__n128 static PreviewLayoutTrait.combine(_:_:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

__n128 sub_237F9A21C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

void sub_237F9A238(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

__n128 sub_237F9A24C@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_237F9A2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for PreviewLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for PreviewInterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewInterfaceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
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

DeveloperToolsSupport::PreviewCamera::Point __swiftcall PreviewCamera.Point.init(x:y:z:)(Swift::Float x, Swift::Float y, Swift::Float z)
{
  *v3 = x;
  v3[1] = y;
  v3[2] = z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t PreviewCamera.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_237F9A56C(v2, v3, v4, v5, v6);
}

__n128 PreviewCamera.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return result;
}

uint64_t static PreviewCameraBuilder.buildExpression(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237F9C610;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3;
  *(v7 + 56) = v4;
  *(v7 + 64) = v5;
  *(v7 + 72) = v6;
  sub_237F9A56C(v1, v2, v3, v4, v5);
  return v7;
}

uint64_t static PreviewCameraBuilder.buildArray(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (result + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_237F9AA40(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_237F9A790(uint64_t a1, uint64_t a2)
{

  sub_237F9A948(v2);
}

uint64_t sub_237F9A7F0@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v6 = *a1;

  result = sub_237F9A948(v4);
  *a3 = v6;
  return result;
}

uint64_t static PreviewTrait<A>.camera(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F9C610;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v13 = &type metadata for PreviewCameraTrait;
  v14 = &protocol witness table for PreviewCameraTrait;
  *&v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237F9C610;
  sub_237F8E244(&v12, v10 + 32);
  *a2 = v10;
  return sub_237F9A56C(v3, v4, v5, v6, v7);
}

uint64_t sub_237F9A948(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_237F9AA40(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_237F9AA40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE3FB8, &unk_237F9D610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewCamera.Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewCamera.Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_237F9ABE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_237F9AC30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t static PreviewTrait<A>.assistiveAccess.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = &type metadata for AssistiveAccessTrait;
  v6 = &protocol witness table for AssistiveAccessTrait;
  LOBYTE(v4) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v4, v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistiveAccessTrait(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static PreviewTrait<A>.defaultLayout.getter@<X0>(uint64_t *a1@<X8>)
{
  v6 = &type metadata for PreviewLayoutTrait;
  v7 = &protocol witness table for PreviewLayoutTrait;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a1 = v3;
  return result;
}

uint64_t static PreviewTrait<A>.sizeThatFitsLayout.getter@<X0>(uint64_t *a1@<X8>)
{
  v6 = &type metadata for PreviewLayoutTrait;
  v7 = &protocol witness table for PreviewLayoutTrait;
  v2 = swift_allocObject();
  *&v5 = v2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 1;
  *(v2 + 40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a1 = v3;
  return result;
}

uint64_t static PreviewTrait<A>.fixedLayout(width:height:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v10 = &type metadata for PreviewLayoutTrait;
  v11 = &protocol witness table for PreviewLayoutTrait;
  v6 = swift_allocObject();
  *&v9 = v6;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v9, v7 + 32);
  *a1 = v7;
  return result;
}

uint64_t static PreviewTrait<A>.fixedLayout(width:height:depth:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v12 = &type metadata for PreviewLayoutTrait;
  v13 = &protocol witness table for PreviewLayoutTrait;
  v8 = swift_allocObject();
  *&v11 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v11, v9 + 32);
  *a1 = v9;
  return result;
}

uint64_t sub_237F9B0F4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v6 = &type metadata for PreviewInterfaceOrientationTrait;
  v7 = &protocol witness table for PreviewInterfaceOrientationTrait;
  LOBYTE(v5) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEE3F30, &qword_237F9D4A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237F9C610;
  result = sub_237F8E244(&v5, v3 + 32);
  *a2 = v3;
  return result;
}

uint64_t PreviewInterfaceOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_237F9BF74();
  MEMORY[0x2383E4110](v1);
  return sub_237F9BFA4();
}

unint64_t sub_237F9B210()
{
  result = qword_27DEE3FC0;
  if (!qword_27DEE3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FC0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PreviewLayout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_237F9B294(uint64_t a1)
{
  if (*(a1 + 24) <= 1u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_237F9B2AC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t static NamedResource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_237F9BF14() & 1) == 0)
  {
    return 0;
  }

  sub_237F9B364();
  return sub_237F9BDE4() & 1;
}

unint64_t sub_237F9B364()
{
  result = qword_27DEE3FC8;
  if (!qword_27DEE3FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE3FC8);
  }

  return result;
}

uint64_t NamedResource.hashValue.getter()
{
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B444()
{
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B4D8(uint64_t a1)
{
  sub_237F9BF74();
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B534(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_237F9BF14() & 1) == 0)
  {
    return 0;
  }

  sub_237F9B364();
  return sub_237F9BDE4() & 1;
}

__n128 _s21DeveloperToolsSupport13ColorResourceV9referenceAA0E9ReferenceOvs_0(uint64_t *a1)
{
  v3 = *a1;

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

BOOL _s21DeveloperToolsSupport17ResourceReferenceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_237F9BF14() & 1) != 0)
  {
    sub_237F9B364();

    v5 = v2;

    v6 = v3;
    v7 = sub_237F9BDE4();

    if (v7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s21DeveloperToolsSupport13ColorResourceV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  return sub_237F9BDF4();
}

uint64_t _s21DeveloperToolsSupport13ColorResourceV9hashValueSivg_0()
{
  sub_237F9BF74();
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B7DC(uint64_t a1)
{
  sub_237F9BF74();
  MEMORY[0x2383E4110](0);
  sub_237F9BC54();
  sub_237F9BDF4();
  return sub_237F9BFA4();
}

uint64_t sub_237F9B848(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v12[0] = *a1;
  v12[1] = v2;
  v13 = v3;
  v10[0] = v4;
  v10[1] = v5;
  v11 = v6;

  v7 = v3;

  v8 = v6;
  LOBYTE(v5) = _s21DeveloperToolsSupport17ResourceReferenceO2eeoiySbAC_ACtFZ_0(v12, v10);

  return v5 & 1;
}

unint64_t sub_237F9B8E4()
{
  result = qword_27DEE3FD0;
  if (!qword_27DEE3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FD0);
  }

  return result;
}

unint64_t sub_237F9B93C()
{
  result = qword_27DEE3FD8;
  if (!qword_27DEE3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FD8);
  }

  return result;
}

unint64_t sub_237F9B994()
{
  result = qword_27DEE3FE0;
  if (!qword_27DEE3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FE0);
  }

  return result;
}

unint64_t sub_237F9B9EC()
{
  result = qword_27DEE3FE8;
  if (!qword_27DEE3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE3FE8);
  }

  return result;
}

uint64_t sub_237F9BA60(uint64_t a1, int a2)
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

uint64_t sub_237F9BAA8(uint64_t result, int a2, int a3)
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