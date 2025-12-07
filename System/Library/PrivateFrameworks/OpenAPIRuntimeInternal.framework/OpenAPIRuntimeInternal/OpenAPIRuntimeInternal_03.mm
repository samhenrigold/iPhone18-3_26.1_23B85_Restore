uint64_t sub_25DD2F344(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = result;
    v6 = *(a1 + 32);
    result = type metadata accessor for JSONLinesDeserializationSequence.Iterator.StateMachine(319, v5);
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD2F3E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 2;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD2F530(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFD)
    {
      v19 = a2 - 2147483646;
    }

    else
    {
      v19 = a2 + 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_25DD2F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD2F734(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD2F790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD2F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD2F818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD2F86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25DD2F8C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25DD2F900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_25DD2F944(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25DD2F980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD2F9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t JSONLinesSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD2FAD8, 0, 0);
}

uint64_t sub_25DD2FAD8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  *(v0 + 16) = *(v1 + 16);
  v3 = *(v0 + 88);
  *(v0 + 120) = v2;
  v4 = *(v1 + 40);
  v8 = *(v1 + 24);
  *(v0 + 24) = v8;
  *(v0 + 40) = v4;
  *(v0 + 96) = type metadata accessor for JSONLinesSerializationSequence.Iterator.StateMachine(0, v0 + 16);
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_25DD2FC24;

    return MEMORY[0x282200308](v0 + 48, v8, v4);
  }
}

uint64_t sub_25DD2FC24()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25DD2FDE0;
  }

  else
  {
    v2 = sub_25DD2FD38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD2FD38()
{
  v1 = sub_25DD2FE20(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v1, v6, 0, v7);
}

unint64_t sub_25DD2FE20(unint64_t result, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  if ((*v4 & 1) == 0)
  {
    v5 = result;
    if (!result)
    {
      *v4 = 1;
      return v5;
    }

    v6 = a4;
    v7 = a3;
    v13 = result;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    swift_unknownObjectRetain();
    v8 = *sub_25DD014B8();
    if ((v6 & 1) == 0 || (v13 = v5, (swift_isUniquelyReferenced_nonNull() & 1) == 0))
    {
      if (__OFSUB__(v6 >> 1, v7))
      {
        goto LABEL_20;
      }

      v4 = &v13;
      sub_25DD30AE8(((v6 >> 1) - v7));
      v7 = v15;
      v6 = v16;
    }

    v9 = __OFSUB__(v6 >> 1, v7);
    v6 = (v6 >> 1) - v7;
    if (!v9)
    {
      sub_25DD3090C(v6);
      sub_25DD30A08(v6, v8);
      v8 = v13;
      v4 = v14;
      v6 = v15;
      v5 = v16;
      if ((v16 & 1) == 0)
      {
LABEL_9:
        sub_25DD30F58(v8, v4, v6, v5);
        v5 = v10;
LABEL_17:
        swift_unknownObjectRelease();
        return v5;
      }

      sub_25DD97744();
      swift_unknownObjectRetain_n();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        swift_unknownObjectRelease();
        v11 = MEMORY[0x277D84F90];
      }

      v12 = *(v11 + 16);

      if (!__OFSUB__(v5 >> 1, v6))
      {
        if (v12 == (v5 >> 1) - v6)
        {
          v5 = swift_dynamicCastClass();
          if (!v5)
          {
            swift_unknownObjectRelease();
            v5 = MEMORY[0x277D84F90];
          }

          goto LABEL_17;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD2FFC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for JSONLinesSerializationSequence.Iterator(0, v14);
  *(a7 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD30064(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONLinesSerializationSequence.Iterator.next()(a2);
}

uint64_t JSONLinesSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v16[0] = v4;
  v16[1] = AssociatedTypeWitness;
  v16[2] = v9;
  v16[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONLinesSerializationSequence.Iterator(0, v16);
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD302D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLinesSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD30330()
{
  v0 = sub_25DD96534();
  MEMORY[0x28223BE20](v0);
  sub_25DD96594();
  swift_allocObject();
  v1 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v1;
}

uint64_t AsyncSequence<>.asEncodedJSONLines(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v19 = a4;
  v20 = a5;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v13 = sub_25DD97384();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v10 + 16))(v12, v6, a2);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v19;
  v17[5] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v14 + 32))(v20, v16, v13);
}

uint64_t sub_25DD306D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD306FC, 0, 0);
}

uint64_t sub_25DD306FC()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_25DD96574();
  v2 = *(v0 + 16);
  v4 = sub_25DD00CE0(v1, v3);
  v5 = (2 * v4[2]) | 1;
  *v2 = v4;
  v2[1] = v4 + 4;
  v2[2] = 0;
  v2[3] = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25DD30864(char a1)
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](a1 & 1);
  return sub_25DD979A4();
}

uint64_t sub_25DD308C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

void *sub_25DD3090C(void *result)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
LABEL_11:

    return sub_25DD30AE8(v1);
  }

  v1 = result;
  if (v3)
  {
    v6 = v2[1];
    sub_25DD97744();
    swift_unknownObjectRetain();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    v8 = *(v7 + 16);
    if (v6 + v4 + v5 == v7 + v8 + 32)
    {
      v9 = *(v7 + 24);

      v10 = (v9 >> 1) - v8;
      v11 = __OFADD__(v5, v10);
      v5 += v10;
      if (v11)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
    }
  }

  if (v5 < v1 + 1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_25DD30A08(uint64_t result, char a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v8 = result + 1 - v6;
  if (__OFSUB__(result + 1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_10:
    *(v2[1] + v3 + v7) = a2;
    return result;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v10 = *(result + 16);
  v11 = __OFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    goto LABEL_13;
  }

  *(result + 16) = v12;

  v13 = v5 + v8;
  if (__OFADD__(v5, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v2[3] = v4 & 1 | (2 * v13);
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25DD30AE8(void *a1)
{
  v5 = sub_25DD30B6C(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v3 = sub_25DD30D20();
  sub_25DD30D3C(&v5, a1, 0, v3);
}

void *sub_25DD30B6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_26:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_29;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + a5 + v8;
  if (v13 == v11 + v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_25DD00E5C(v6, v25);
}

uint64_t sub_25DD30D3C(uint64_t *a1, size_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v17;
  v18 = (v10 + 32);
  v19 = v10 + 32 + a2;
  __dst = (v19 + a3);
  result = sub_25DD318AC(result);
  if (result)
  {
    v20 = result;
    v31 = v10;
    v21 = v4[2];
    v22 = (v4[1] + v21);
    v23 = &v22[a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, a2);
    }

    a4(v19, a3);
    if (__dst != (v23 + v33) || __dst >= v23 + v33 + v15)
    {
      memmove(__dst, (v23 + v33), v15);
    }

    *(v20 + 16) = 0;

    v10 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v4[1];
    memcpy((v10 + 32), (v26 + v21), a2);
    result = a4(&v18[a2], a3);
    v27 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v26 + v27), v28 - v27);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v10 + 16);
  v12 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v10;
  v4[1] = &v18[-v21];
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

void sub_25DD30F58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_25DD31030()
{
  result = qword_28155EA60;
  if (!qword_28155EA60)
  {
    sub_25DD96534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28155EA60);
  }

  return result;
}

uint64_t sub_25DD31088(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25DD1BF14;

  return sub_25DD306D4(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_25DD311BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = result;
    v6 = *(a1 + 32);
    result = type metadata accessor for JSONLinesSerializationSequence.Iterator.StateMachine(319, v5);
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD31258(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_25DD313C0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_25DD315E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for IterationBehavior(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IterationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25DD317B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD317EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3183C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25DD318AC(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v6 + v7 != v9 + v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v15 = v8 + v6 - result - 32;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_25DD2EDA8(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_25DD31A9C(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  sub_25DD31ADC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_25DD31ADC(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_25DD31AF0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 52);
  result = sub_25DD31B38(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_25DD31B38(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t JSONSequenceDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_25DD31B6C, 0, 0);
}

uint64_t sub_25DD31B6C()
{
  v1 = *(v0 + 112);
  *(v0 + 184) = *(v1 + 52);
  *(v0 + 128) = *(v1 + 16);
  *(v0 + 136) = *(v1 + 24);
  *(v0 + 152) = *(v1 + 40);
  do
  {
    v2 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v2;
    *(v0 + 160) = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
    sub_25DD320A4();
  }

  while (v3 == 3);
  if (!v3)
  {
LABEL_9:
    v7 = *(v0 + 8);

    return v7();
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v4 = swift_task_alloc();
      *(v0 + 168) = v4;
      *v4 = v0;
      v4[1] = sub_25DD31D50;
      v5 = *(v0 + 152);
      v6 = *(v0 + 136);

      return MEMORY[0x282200308](v0 + 80, v6, v5);
    }

    goto LABEL_9;
  }

  v8 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v8;
  type metadata accessor for JSONSequenceDeserializationSequence.DeserializerError(0, v0 + 48);
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25DD31D50()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_25DD3208C;
  }

  else
  {
    v2 = sub_25DD31E64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD31E64()
{
  v1 = sub_25DD32328(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = v1;
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v1 != 1)
  {
    v8 = v3;
    v9 = v5;
    goto LABEL_12;
  }

  do
  {
    v7 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v7;
    *(v0 + 160) = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
    sub_25DD320A4();
  }

  while (v6 == 3);
  if (!v6)
  {
LABEL_10:
    v8 = v6;
    v9 = v6;
LABEL_12:
    v13 = *(v0 + 8);

    return v13(v6, v8, 0, v9);
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v10 = swift_task_alloc();
      *(v0 + 168) = v10;
      *v10 = v0;
      v10[1] = sub_25DD31D50;
      v11 = *(v0 + 152);
      v12 = *(v0 + 136);

      return MEMORY[0x282200308](v0 + 80, v12, v11);
    }

    goto LABEL_12;
  }

  v14 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v14;
  type metadata accessor for JSONSequenceDeserializationSequence.DeserializerError(0, v0 + 48);
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  v15 = *(v0 + 8);

  return v15();
}

void sub_25DD320A4()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      if (!v1)
      {
        return;
      }

LABEL_30:
      __break(1u);
      return;
    }

    v2 = sub_25DD014CC();
    v3 = *(v1 + 2);
    if (!v3)
    {
LABEL_7:
      sub_25DD31B38(v1, 1u);
      *v0 = v1;
      *(v0 + 8) = 1;
      return;
    }

    v4 = 0;
    v5 = 1;
    while (v1[v4 + 32] != *v2)
    {
      ++v4;
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_7;
      }
    }

    sub_25DD31B38(v1, 1u);
    v11 = *(v1 + 2);
    if (v11 < v4)
    {
      __break(1u);
    }

    else if (v11 > v4)
    {
      sub_25DD31ADC(v1, 1u);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v13 = v1, (~v4 + v11) > *(v1 + 3) >> 1))
      {
        v13 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v11, 1, v1);
      }

      sub_25DD2EDA8(0, v4 + 1, 0);
      *v0 = v13;
      *(v0 + 8) = 1;
      if (!v4)
      {
        sub_25DD31B38(v1, 1u);
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*(v1 + 2))
  {
    return;
  }

  v6 = v1[32];

  v7 = *sub_25DD014CC();
  sub_25DD31B38(v1, 0);
  if (v6 != v7)
  {
    return;
  }

  v8 = *(v1 + 2);
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = swift_isUniquelyReferenced_nonNull_native();
  if (!v9 || (v8 - 1) > *(v1 + 3) >> 1)
  {
    v1 = sub_25DD2ECB4(v9, v8, 1, v1);
  }

  v10 = *(v1 + 2) - 1;
  memmove(v1 + 32, v1 + 33, v10);
  *(v1 + 2) = v10;
  *v0 = v1;
  *(v0 + 8) = 1;
}

uint64_t sub_25DD32328(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = *v4;
  if (!*(v4 + 8))
  {
    v16 = *v4;
    if (a1)
    {
      v11 = swift_unknownObjectRetain();
      sub_25DD2EBA0(v11, a2, a3, a4);
      *v4 = v16;
      *(v4 + 8) = 0;
      return 1;
    }

    v12 = *(result + 16);
    *v4 = 0;
    *(v4 + 8) = 2;
    if (v12)
    {
      return result;
    }

    v13 = 0;
LABEL_12:
    sub_25DD31B38(result, v13);
    return 0;
  }

  if (*(v4 + 8) != 1)
  {
    __break(1u);
    return result;
  }

  v15 = *v4;
  if (a1)
  {
    v10 = swift_unknownObjectRetain();
    sub_25DD2EBA0(v10, a2, a3, a4);
    *v4 = v15;
    result = 1;
    *(v4 + 8) = 1;
    return result;
  }

  v14 = *(result + 16);
  *v4 = 0;
  *(v4 + 8) = 2;
  if (!v14)
  {
    v13 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_25DD32460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator(0, v17);
  v16 = a8 + *(result + 52);
  *v16 = a2;
  *(v16 + 8) = a3;
  return result;
}

uint64_t sub_25DD32510(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONSequenceDeserializationSequence.Iterator.next()(a2);
}

uint64_t JSONSequenceDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v17 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v17[0] = v4;
  v17[1] = AssociatedTypeWitness;
  v17[2] = v9;
  v17[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator(0, v17);
  v16 = a2 + *(result + 52);
  *v16 = MEMORY[0x277D84F90];
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_25DD3278C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONSequenceDeserializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence<>.asDecodedJSONSequence<A>(of:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v25[1] = a7;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JSONSequenceDeserializationSequence(0, v17, v19, v18);
  MEMORY[0x28223BE20](v20);
  v22 = v25 - v21;
  (*(v14 + 16))(v16, v8, a3);
  (*(v14 + 32))(v22, v16, a3);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a2;

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD329C4(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      v11 = *(result + 16);
      if (v11 == *(a3 + 16))
      {
        if (v11 && result != a3)
        {
          v12 = (result + 32);
          v13 = (a3 + 32);
          while (v11)
          {
            v15 = *v12++;
            v14 = v15;
            v16 = *v13++;
            result = v14 == v16;
            if (v14 != v16 || v11-- == 1)
            {
              return result;
            }
          }

          goto LABEL_36;
        }

        return 1;
      }
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (result)
    {
      if (a4 == 2 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
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
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_25DD32AB4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x25F8A3F90](1);
      v4 = *(a2 + 16);
      result = MEMORY[0x25F8A3F90](v4);
      if (v4)
      {
        v6 = a2 + 32;
        do
        {
          ++v6;
          result = sub_25DD97984();
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (a2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      return MEMORY[0x25F8A3F90](v9);
    }
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    v7 = *(a2 + 16);
    result = MEMORY[0x25F8A3F90](v7);
    if (v7)
    {
      v8 = a2 + 32;
      do
      {
        ++v8;
        result = sub_25DD97984();
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_25DD32B60(uint64_t a1, char a2)
{
  sub_25DD97964();
  sub_25DD32AB4(v5, a1, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD32BC8(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD32AB4(v3, *v1, *(v1 + 8));
  return sub_25DD979A4();
}

uint64_t sub_25DD32C54(uint64_t a1, char a2)
{
  result = sub_25DD31B38(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_25DD32CBC()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD32D00(uint64_t a1)
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](0);
  return sub_25DD979A4();
}

uint64_t sub_25DD32D70(uint64_t a1, _OWORD *a2)
{
  v6 = v2[3];
  v8 = v2[5];
  v7 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25DD1BF14;

  return sub_25DD2E8AC(a1, a2, v7, v9, v6, v10, v8);
}

uint64_t sub_25DD32EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD32EE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = result;
    v6 = *(a1 + 32);
    result = type metadata accessor for JSONSequenceDeserializationSequence.Iterator.StateMachine(319, v5);
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD32F7C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_25DD330C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFD)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 254;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_25DD332B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal35JSONSequenceDeserializationSequenceV8IteratorV12StateMachineV0H0Oyx_qd____G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25DD3331C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3335C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25DD333A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25DD333EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_25DD33434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD33470(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD334C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25DD3353C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t JSONSequenceSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD335F8, 0, 0);
}

uint64_t sub_25DD335F8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 52);
  *(v0 + 16) = *(v1 + 16);
  v3 = *(v0 + 88);
  *(v0 + 120) = v2;
  v4 = *(v1 + 40);
  v8 = *(v1 + 24);
  *(v0 + 24) = v8;
  *(v0 + 40) = v4;
  *(v0 + 96) = type metadata accessor for JSONSequenceSerializationSequence.Iterator.StateMachine(0, v0 + 16);
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_25DD33744;

    return MEMORY[0x282200308](v0 + 48, v8, v4);
  }
}

uint64_t sub_25DD33744()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25DD2FDE0;
  }

  else
  {
    v2 = sub_25DD33858;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD33858()
{
  v1 = sub_25DD33918(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v1, v6, 0, v7);
}

char *sub_25DD33918(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*v4 & 1) == 0)
  {
    if (!result)
    {
      v16 = 0;
      *v4 = 1;
      return v16;
    }

    v11 = (a4 >> 1) - a3;
    if (__OFSUB__(a4 >> 1, a3))
    {
      __break(1u);
    }

    else
    {
      v12 = __OFADD__(v11, 2);
      v11 += 2;
      if (!v12)
      {
        v5 = a2;
        v13 = v11 & ~(v11 >> 63);
        swift_unknownObjectRetain();
        v4 = sub_25DD2ECB4(0, v13, 0, MEMORY[0x277D84F90]);
        v7 = *sub_25DD014CC();
        v8 = *(v4 + 2);
        v11 = *(v4 + 3);
        v6 = v8 + 1;
        if (v8 < v11 >> 1)
        {
LABEL_6:
          *(v4 + 2) = v6;
          v4[v8 + 32] = v7;
          v19 = v4;
          v14 = swift_unknownObjectRetain();
          sub_25DD2EBA0(v14, v5, a3, a4);
          v15 = *sub_25DD014B8();
          v16 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_25DD2ECB4(0, *(v19 + 2) + 1, 1, v19);
          }

          v18 = *(v16 + 2);
          v17 = *(v16 + 3);
          if (v18 >= v17 >> 1)
          {
            v16 = sub_25DD2ECB4((v17 > 1), v18 + 1, 1, v16);
          }

          swift_unknownObjectRelease();
          *(v16 + 2) = v18 + 1;
          v16[v18 + 32] = v15;
          return v16;
        }

LABEL_15:
        v4 = sub_25DD2ECB4((v11 > 1), v6, 1, v4);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD33AC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for JSONSequenceSerializationSequence.Iterator(0, v14);
  *(a7 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD33B60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return JSONSequenceSerializationSequence.Iterator.next()(a2);
}

uint64_t JSONSequenceSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v16[0] = v4;
  v16[1] = AssociatedTypeWitness;
  v16[2] = v9;
  v16[3] = AssociatedConformanceWitness;
  result = type metadata accessor for JSONSequenceSerializationSequence.Iterator(0, v16);
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD33DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONSequenceSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD33E2C()
{
  v0 = sub_25DD96534();
  MEMORY[0x28223BE20](v0);
  sub_25DD96594();
  swift_allocObject();
  v1 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v1;
}

uint64_t AsyncSequence<>.asEncodedJSONSequence(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v19 = a4;
  v20 = a5;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v13 = sub_25DD97384();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v10 + 16))(v12, v6, a2);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v19;
  v17[5] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v14 + 32))(v20, v16, v13);
}

uint64_t sub_25DD34200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

uint64_t sub_25DD34260(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25DD1BF14;

  return sub_25DD306D4(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_25DD34394(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = result;
    v6 = *(a1 + 32);
    result = type metadata accessor for JSONSequenceSerializationSequence.Iterator.StateMachine(319, v5);
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD34430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ServerSentEventWithJSONData.event.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerSentEventWithJSONData.event.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerSentEventWithJSONData.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_25DD96F04();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ServerSentEventWithJSONData.data.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_25DD96F04();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ServerSentEventWithJSONData.id.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t ServerSentEventWithJSONData.id.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ServerSentEventWithJSONData.retry.setter(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t ServerSentEventWithJSONData.init(event:data:id:retry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for ServerSentEventWithJSONData(0, a8, a10, a4);
  v18 = v17[9];
  (*(*(a8 - 8) + 56))(&a9[v18], 1, 1, a8);
  v19 = v17[11];
  v20 = &a9[v17[10]];
  v21 = &a9[v19];
  *a9 = a1;
  *(a9 + 1) = a2;
  v22 = sub_25DD96F04();
  result = (*(*(v22 - 8) + 40))(&a9[v18], a3, v22);
  *v20 = a4;
  *(v20 + 1) = a5;
  *v21 = a6;
  v21[8] = a7 & 1;
  return result;
}

BOOL static ServerSentEventWithJSONData.== infix(_:_:)(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = &v46 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v46 - v16;
  v18 = *(a1 + 1);
  v19 = a2[1];
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v54 = v15;
    if ((*a1 != *a2 || v18 != v19) && (sub_25DD975D4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v54 = v15;
    if (v19)
    {
      return 0;
    }
  }

  v47 = v10;
  v48 = a4;
  v20 = type metadata accessor for ServerSentEventWithJSONData(0, a3, a4, v19);
  v21 = a1;
  v49 = v20;
  v50 = a1;
  v22 = *(v20 + 36);
  v23 = *(TupleTypeMetadata2 + 48);
  v52 = v12;
  v24 = *(v12 + 16);
  v24(v17, &v21[v22], v11);
  v51 = a2;
  v24(&v17[v23], a2 + v22, v11);
  v53 = v8;
  v25 = *(v8 + 48);
  if (v25(v17, 1, a3) == 1)
  {
    if (v25(&v17[v23], 1, a3) == 1)
    {
      (*(v52 + 8))(v17, v11);
      goto LABEL_16;
    }

LABEL_13:
    (*(v54 + 8))(v17, TupleTypeMetadata2);
    return 0;
  }

  v26 = v55;
  v24(v55, v17, v11);
  if (v25(&v17[v23], 1, a3) == 1)
  {
    (*(v53 + 8))(v26, a3);
    goto LABEL_13;
  }

  v28 = v53;
  v29 = &v17[v23];
  v30 = v47;
  (*(v53 + 32))(v47, v29, a3);
  v31 = sub_25DD96B04();
  v32 = *(v28 + 8);
  v32(v30, a3);
  v32(v26, a3);
  (*(v52 + 8))(v17, v11);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v34 = v49;
  v33 = v50;
  v35 = *(v49 + 40);
  v36 = &v50[v35];
  v37 = *&v50[v35 + 8];
  v38 = v51;
  v39 = (v51 + v35);
  v40 = v39[1];
  if (v37)
  {
    if (!v40 || (*v36 != *v39 || v37 != v40) && (sub_25DD975D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v41 = *(v34 + 44);
  v42 = &v33[v41];
  v43 = v33[v41 + 8];
  v44 = (v38 + v41);
  v45 = *(v38 + v41 + 8);
  if ((v43 & 1) == 0)
  {
    if (*v42 != *v44)
    {
      v45 = 1;
    }

    return (v45 & 1) == 0;
  }

  return (v45 & 1) != 0;
}

uint64_t ServerSentEventWithJSONData.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  sub_25DD96F04();
  sub_25DD96F14();
  if (*(v2 + *(a2 + 40) + 8))
  {
    sub_25DD97984();
    sub_25DD96B94();
  }

  else
  {
    sub_25DD97984();
  }

  v4 = (v2 + *(a2 + 44));
  if (*(v4 + 8) == 1)
  {
    return sub_25DD97984();
  }

  v6 = *v4;
  sub_25DD97984();
  return MEMORY[0x25F8A3FB0](v6);
}

uint64_t ServerSentEventWithJSONData.hashValue.getter(uint64_t a1)
{
  sub_25DD97964();
  ServerSentEventWithJSONData.hash(into:)(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD34EB8(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  ServerSentEventWithJSONData.hash(into:)(v4, a2);
  return sub_25DD979A4();
}

uint64_t ServerSentEvent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerSentEvent.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerSentEvent.event.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ServerSentEvent.event.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerSentEvent.data.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ServerSentEvent.data.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerSentEvent.retry.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t ServerSentEvent.init(id:event:data:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t ServerSentEvent.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  if (*(v1 + 8))
  {
    sub_25DD97984();
    sub_25DD96B94();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_25DD97984();
    if (v2)
    {
LABEL_3:
      sub_25DD97984();
      sub_25DD96B94();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_25DD97984();
      if (v5)
      {
        return sub_25DD97984();
      }

      goto LABEL_9;
    }
  }

  sub_25DD97984();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_25DD97984();
  sub_25DD96B94();
  if (v5)
  {
    return sub_25DD97984();
  }

LABEL_9:
  sub_25DD97984();
  return MEMORY[0x25F8A3FB0](v3);
}

uint64_t ServerSentEvent.hashValue.getter()
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD3522C()
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD35270(uint64_t a1)
{
  sub_25DD97964();
  ServerSentEvent.hash(into:)(v2);
  return sub_25DD979A4();
}

uint64_t _s22OpenAPIRuntimeInternal15ServerSentEventV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = a1[5];
      v33 = *(a2 + 40);
      v17 = a1[4];
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(a1 + 56);
      v21 = a1[6];
      v22 = *(a2 + 32);
      v23 = sub_25DD975D4();
      v12 = v22;
      v7 = v21;
      v9 = v20;
      v16 = v19;
      v14 = v18;
      v5 = v17;
      v8 = v32;
      v15 = v33;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v24 = v7;
      v25 = v12;
      v26 = sub_25DD975D4();
      v12 = v25;
      v7 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v27 = v14;
      v28 = v7;
      v29 = sub_25DD975D4();
      v7 = v28;
      v14 = v27;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      return 1;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v31 = v16;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_25DD3545C()
{
  result = qword_27FCC24E0;
  if (!qword_27FCC24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC24E0);
  }

  return result;
}

void sub_25DD354B0(uint64_t a1)
{
  sub_25DD359C0(319, &qword_27FCC24E8, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25DD96F04();
    if (v2 <= 0x3F)
    {
      sub_25DD359C0(319, &qword_27FCC24F0, MEMORY[0x277D84A28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DD35574(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
  if (v10 <= 3)
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v17 = (v15 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v18 = *a1;
    }

    else
    {
      v17 = 0;
      v18 = *a1;
    }

    return v7 + (v18 | v17) + 1;
  }

  if (v14)
  {
    v15 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v6 > 0x7FFFFFFE)
  {
    v20 = (*(v4 + 48))(&a1[v8 + 16] & ~v8);
    if (v20 >= 2)
    {
      return v20 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a1 + 1);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) >= 2)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }
}

void sub_25DD35724(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + ((v11 + 16) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 > 0x7FFFFFFE)
      {
        v19 = (&a1[v11 + 16] & ~v11);
        if (v9 >= a2)
        {
          v23 = *(v7 + 56);
          v24 = a2 + 1;
          v25 = &a1[v11 + 16] & ~v11;

          v23(v25, v24);
        }

        else
        {
          if (v12 <= 3)
          {
            v20 = ~(-1 << (8 * v12));
          }

          else
          {
            v20 = -1;
          }

          if (v12)
          {
            v21 = v20 & (~v9 + a2);
            if (v12 <= 3)
            {
              v22 = v12;
            }

            else
            {
              v22 = 4;
            }

            bzero(v19, v12);
            if (v22 > 2)
            {
              if (v22 == 3)
              {
                *v19 = v21;
                v19[2] = BYTE2(v21);
              }

              else
              {
                *v19 = v21;
              }
            }

            else if (v22 == 1)
            {
              *v19 = v21;
            }

            else
            {
              *v19 = v21;
            }
          }
        }
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *a1 = 0;
        *(a1 + 1) = 0;
        *a1 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = a2;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_25DD359C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25DD96F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25DD35A28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_25DD35A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ServerSentEventsDeserializationSequence.init(upstream:while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for ServerSentEventsDeserializationSequence(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_25DD35BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *(v3 + 48);
  v14 = *(v3 + 32);
  v15 = v4;
  v16 = *(v3 + 64);
  v5 = v16;
  v17 = *(v3 + 80);
  v6 = v17;
  v8 = *(v3 + 16);
  v13[0] = *v3;
  v7 = v13[0];
  v13[1] = v8;
  *(a2 + 32) = v14;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *a2 = v7;
  *(a2 + 16) = v8;
  v9 = *(a1 + 32);
  v12[0] = *(a1 + 16);
  v12[1] = v9;
  v10 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine(0, v12);
  return (*(*(v10 - 8) + 16))(v12, v13, v10);
}

double sub_25DD35C5C(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v18 = a1[2];
  v19 = v3;
  v20 = a1[4];
  v21 = *(a1 + 10);
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v5 = v2 + *(a2 + 52);
  v6 = *(v5 + 16);
  v22[0] = *v5;
  v22[1] = v6;
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v23 = *(v5 + 80);
  v22[3] = v8;
  v22[4] = v9;
  v22[2] = v7;
  v10 = *(a2 + 32);
  v15[0] = *(a2 + 16);
  v15[1] = v10;
  v11 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine(0, v15);
  (*(*(v11 - 8) + 8))(v22, v11);
  v12 = v19;
  *(v5 + 32) = v18;
  *(v5 + 48) = v12;
  *(v5 + 64) = v20;
  *(v5 + 80) = v21;
  result = *&v16;
  v14 = v17;
  *v5 = v16;
  *(v5 + 16) = v14;
  return result;
}

double sub_25DD35D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  (*(v16 + 16))(a8, a1, a5);
  ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, v22);
  (*(v16 + 8))(a1, a5);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v17 = a8 + *(type metadata accessor for ServerSentEventsDeserializationSequence.Iterator(0, v21) + 52);
  v18 = v22[1];
  *v17 = v22[0];
  *(v17 + 16) = v18;
  result = *&v23;
  v20 = v24;
  *(v17 + 32) = v23;
  *(v17 + 48) = v20;
  *(v17 + 64) = MEMORY[0x277D84F90];
  *(v17 + 72) = a2;
  *(v17 + 80) = a3;
  return result;
}

double sub_25DD35E6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, v9);
  v6 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a3 + 32) = v10;
  *(a3 + 48) = v8;
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = a1;
  *(a3 + 80) = a2;
  return result;
}

uint64_t ServerSentEventsDeserializationSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_25DD35F28, 0, 0);
}

uint64_t sub_25DD35F28()
{
  v1 = *(v0 + 152);
  *(v0 + 76) = *(v1 + 52);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v3 = *(v1 + 24);
  *(v0 + 176) = v3;
  v4 = *(v1 + 32);
  *(v0 + 184) = v4;
  v5 = *(v1 + 40);
  *(v0 + 192) = v5;
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  while (1)
  {
    *(v0 + 80) = v7;
    *(v0 + 96) = v6;
    v8 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine(0, v0 + 80);
    *(v0 + 200) = v8;
    sub_25DD363AC(v8, (v0 + 16));
    v9 = *(v0 + 24);
    if (v9 != 3)
    {
      break;
    }

    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
  }

  if (v9 == 2)
  {
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_25DD360C8;
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);

    return MEMORY[0x282200308](v0 + 112, v13, v12);
  }

  else
  {
    if (v9 == 1)
    {
      v10 = *(v0 + 144);
      *v10 = xmmword_25DD9B570;
      v10[1] = 0u;
      v10[2] = 0u;
      *(v10 + 41) = 0u;
    }

    else
    {
      v14 = *(v0 + 144);
      *v14 = *(v0 + 16);
      *(v14 + 8) = v9;
      v15 = *(v0 + 32);
      v16 = *(v0 + 48);
      *(v14 + 41) = *(v0 + 57);
      *(v14 + 16) = v15;
      *(v14 + 32) = v16;
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_25DD360C8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_25DD36394;
  }

  else
  {
    v2 = sub_25DD361DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD361DC()
{
  v1 = sub_25DD36C94(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 200));
  swift_unknownObjectRelease();
  if (!v1)
  {
    goto LABEL_5;
  }

  do
  {
    v2 = *(v0 + 184);
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = v2;
    v3 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine(0, v0 + 80);
    *(v0 + 200) = v3;
    sub_25DD363AC(v3, (v0 + 16));
    v4 = *(v0 + 24);
  }

  while (v4 == 3);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      v11 = *(v0 + 144);
      *v11 = *(v0 + 16);
      *(v11 + 8) = v4;
      v12 = *(v0 + 32);
      v13 = *(v0 + 48);
      *(v11 + 41) = *(v0 + 57);
      *(v11 + 16) = v12;
      *(v11 + 32) = v13;
      goto LABEL_6;
    }

LABEL_5:
    v5 = *(v0 + 144);
    *v5 = xmmword_25DD9B570;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 41) = 0u;
LABEL_6:
    v6 = *(v0 + 8);

    return v6();
  }

  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_25DD360C8;
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);

  return MEMORY[0x282200308](v0 + 112, v10, v9);
}

unsigned __int8 *sub_25DD363AC@<X0>(unsigned __int8 *result@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v93 = *v2;
  v94 = v4;
  v5 = v2[4];
  v96 = v2[3];
  v97 = v5;
  v95 = v2[2];
  v6 = *(v2 + 10);
  v98 = v6;
  v7 = v5;
  if (!v5)
  {
    *a2 = xmmword_25DD9B570;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 41) = 0u;
    return result;
  }

  if (v97 == 1)
  {
    goto LABEL_71;
  }

  v8 = v2;
  v9 = *(&v95 + 1);
  v10 = *(&v97 + 1);
  v90 = v93;
  v91 = v94;
  *v92 = v95;
  *&v92[16] = *(v2 + 6);
  v92[24] = *(v2 + 56);
  v89 = v97;
  if (!*(v97 + 16))
  {
    v31 = v2[3];
    v85 = v2[2];
    v86 = v31;
    v87 = v2[4];
    v88 = *(v2 + 10);
    v32 = v2[1];
    v83 = *v2;
    v84 = v32;
    sub_25DD3987C(&v83, &v78);

    *a2 = xmmword_25DD9B590;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 41) = 0u;
    v78 = v90;
    v79 = v91;
    *v80 = *v92;
    *&v80[9] = *&v92[9];
    v33 = &v78;
    return sub_25DD39828(v33);
  }

  v11 = result;
  v63 = v95;
  v12 = v2[3];
  v85 = v2[2];
  v86 = v12;
  v87 = v2[4];
  v88 = *(v2 + 10);
  v13 = v2[1];
  v83 = *v2;
  v84 = v13;
  v14 = *(result + 2);
  v78 = *(result + 1);
  v79 = v14;
  v15 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine.State(0, &v78);
  (*(*(v15 - 8) + 16))(&v78, &v93, v15);
  v16 = *(*(v11 - 1) + 8);

  (v16)(&v83, v11);
  if (!v7[2])
  {
    __break(1u);
    goto LABEL_64;
  }

  v64 = v9;
  v66 = v6;
  v67 = v10;
  v9 = v7[5];
  v10 = v7[6];
  v6 = v7[7];
  swift_unknownObjectRetain();

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 9) = 0;
  *(v2 + 10) = 0;
  *(v2 + 8) = 1;
  v17 = v7[2];
  if (!v17)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v17 - 1) > v7[3] >> 1)
  {
    v7 = sub_25DD38F84(isUniquelyReferenced_nonNull_native, v17, 1, v7);
    v89 = v7;
  }

  sub_25DD396FC(0, 1, 0);
  v19 = v6 >> 1;
  if (v10 != (v6 >> 1))
  {
    v34 = v8[3];
    *v80 = v8[2];
    *&v80[16] = v34;
    v81 = v8[4];
    v82 = *(v8 + 10);
    v35 = v8[1];
    v78 = *v8;
    v79 = v35;
    result = (v16)(&v78, v11);
    if (v10 >= v19)
    {
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {
      v36 = v10[v9];
      result = sub_25DD014E0();
      v37 = *result;
      if (v36 == v37)
      {
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      v38 = 0;
      v39 = v9;
      v40 = v6 >> 1;
      while (v10[v39] != v37)
      {
        ++v39;
        --v38;
        if (v10 == --v40)
        {
          if (__OFSUB__(v19, v10))
          {
            goto LABEL_69;
          }

          sub_25DD96B74();
          swift_unknownObjectRelease();

LABEL_26:
          v43 = v91;
          v42 = *v92;
          v70 = v91;
          v41 = v91;
          v71[0] = *v92;
          *(v71 + 9) = *&v92[9];
          *&v74[9] = *&v92[9];
          v73 = v91;
          *v74 = *v92;
          v44 = v90;
          v69 = v90;
          v72 = v90;
          *v8 = v90;
          v8[1] = v41;
          v45 = *&v74[16];
          v8[2] = *v74;
          v8[3] = v45;
          *(v8 + 8) = v7;
          *(v8 + 9) = v67;
          *(v8 + 10) = v66;
          *(a2 + 41) = 0u;
          a2[1] = 0u;
          a2[2] = 0u;
          *a2 = xmmword_25DD9B580;
          *(v77 + 9) = *&v92[9];
LABEL_40:
          v76 = v43;
          v77[0] = v42;
          v75 = v44;
LABEL_41:
          sub_25DD397CC(&v69, v68);
          v33 = &v75;
          return sub_25DD39828(v33);
        }
      }

      if (&v10[-v38] < 0)
      {
        goto LABEL_67;
      }

      v60 = &v10[-v38];
      if (!__OFSUB__(&v10[-v38], v10))
      {
        swift_unknownObjectRetain();
        v46 = sub_25DD96B74();
        v61 = v47;
        v62 = v46;
        result = swift_unknownObjectRelease();
        if (v10 + 1 != v40)
        {
          if ((v60 + 1) >= v19)
          {
            goto LABEL_70;
          }

          swift_unknownObjectRetain();
          sub_25DD014F4();
        }

        v48 = sub_25DD96B74();
        v50 = v49;
        swift_unknownObjectRelease();
        if (v62 == 0x746E657665 && v61 == 0xE500000000000000)
        {

          v16 = &v72;
          v6 = &v90;
          v10 = v66;
          v9 = v67;
LABEL_38:
          swift_unknownObjectRelease();

          *&v91 = v48;
          *(&v91 + 1) = v50;
          goto LABEL_39;
        }

        v9 = v67;
        if (sub_25DD975D4())
        {

          v16 = &v72;
          v6 = &v90;
          v10 = v66;
          goto LABEL_38;
        }

        v16 = &v72;
        v6 = &v90;
        v10 = v66;
        if (v62 == 1635017060 && v61 == 0xE400000000000000)
        {
          v53 = v48;

LABEL_48:
          v54 = v63;
          if (!v64)
          {
            v54 = 0;
          }

          v55 = 0xE000000000000000;
          if (v64)
          {
            v55 = v64;
          }

          *&v72 = v54;
          *(&v72 + 1) = v55;

          MEMORY[0x25F8A3200](v53, v50);

          MEMORY[0x25F8A3200](10, 0xE100000000000000);

          swift_unknownObjectRelease();
          *v92 = v72;
          v9 = v67;
          goto LABEL_39;
        }

        if (sub_25DD975D4())
        {
          v53 = v48;

          v10 = v66;
          goto LABEL_48;
        }

        if (v62 == 25705 && v61 == 0xE200000000000000 || (sub_25DD975D4() & 1) != 0)
        {

          swift_unknownObjectRelease();

          *&v90 = v48;
          *(&v90 + 1) = v50;
          v10 = v66;
LABEL_39:
          v51 = v91;
          v43 = v91;
          v42 = *v92;
          v70 = v91;
          v71[0] = *v92;
          *(v71 + 9) = *(v6 + 41);
          v73 = v91;
          *v74 = *v92;
          *(v16 + 41) = *(v71 + 9);
          v44 = v90;
          v69 = v90;
          v72 = v90;
          *v8 = v90;
          v8[1] = v51;
          v52 = *&v74[16];
          v8[2] = *v74;
          v8[3] = v52;
          *(v8 + 8) = v7;
          *(v8 + 9) = v9;
          *(v8 + 10) = v10;
          *(a2 + 41) = 0u;
          a2[1] = 0u;
          a2[2] = 0u;
          *a2 = xmmword_25DD9B580;
          *(v16 + 105) = *(v6 + 41);
          goto LABEL_40;
        }

        v65 = v48;
        if (v62 == 0x7972746572 && v61 == 0xE500000000000000)
        {

          v10 = v66;
          goto LABEL_61;
        }

        v56 = sub_25DD975D4();

        v10 = v66;
        if (v56)
        {
LABEL_61:
          v57 = sub_25DD380E8(v65, v50);
          v59 = v58;
          swift_unknownObjectRelease();
          if ((v59 & 1) == 0)
          {
            *&v92[16] = v57;
            v92[24] = 0;
          }

          goto LABEL_39;
        }

LABEL_65:

        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v20 = v8[3];
  *v80 = v8[2];
  *&v80[16] = v20;
  v81 = v8[4];
  v82 = *(v8 + 10);
  v21 = v8[1];
  v78 = *v8;
  v79 = v21;
  (v16)(&v78, v11);
  if (v64)
  {
    v22 = sub_25DD96C64();
    if (v22)
    {
      sub_25DD38080(v22);
    }
  }

  if (!*&v92[8] || (v23 = sub_25DD3957C(*v92, *&v92[8]), v24 = (v67)(v23, v23 + 4, 0, (2 * v23[2]) | 1), , (v24 & 1) != 0))
  {
    ServerSentEvent.init(id:event:data:retry:)(0, 0, 0, 0, 0, 0, 0, 1, &v72);
    swift_unknownObjectRelease();
    v25 = v73;
    *v8 = v72;
    v8[1] = v25;
    v26 = *&v74[16];
    v8[2] = *v74;
    v8[3] = v26;
    *(v8 + 8) = v7;
    *(v8 + 9) = v67;
    *(v8 + 10) = v66;
    v27 = v91;
    v69 = v90;
    v28 = v90;
    v70 = v91;
    v71[0] = *v92;
    v29 = *v92;
    *(v71 + 9) = *&v92[9];
    v30 = *&v92[9];
    *(a2 + 41) = *&v92[9];
    a2[1] = v27;
    a2[2] = v29;
    *a2 = v28;
    *(v77 + 9) = v30;
    v76 = v27;
    v77[0] = v29;
    v75 = v28;
    goto LABEL_41;
  }

  swift_unknownObjectRelease();

  *(v8 + 10) = 0;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  *a2 = xmmword_25DD9B570;
  a2[1] = 0u;
  a2[2] = 0u;
  *(a2 + 41) = 0u;
  v72 = v90;
  v73 = v91;
  *v74 = *v92;
  *&v74[9] = *&v92[9];
  v33 = &v72;
  return sub_25DD39828(v33);
}

BOOL sub_25DD36C94(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[4];
  *&v37[16] = v5[3];
  v38 = v6;
  v7 = v5[2];
  v36 = v5[1];
  *v37 = v7;
  v39 = *(v5 + 10);
  v35 = *v5;
  v8 = v38;
  if (v38 < 2)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v5[3];
    v29 = v5[2];
    v30 = v14;
    v31 = v5[4];
    v32 = *(v5 + 10);
    v15 = v5[1];
    v28[0] = *v5;
    v28[1] = v15;
    v33[3] = v14;
    v33[4] = v31;
    v33[1] = v15;
    v33[2] = v29;
    v34 = v32;
    v33[0] = v28[0];
    sub_25DD3987C(v28, v26);
    v16 = *(*(a5 - 8) + 8);
    v16(v33, a5);
    v17 = v39;
    if (v13)
    {
      v24 = *(&v38 + 1);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      *(v5 + 8) = 1;
      *(v5 + 9) = 0;
      *(v5 + 10) = 0;
      v27 = 0;
      v18 = v5[3];
      v26[2] = v5[2];
      v26[3] = v18;
      v19 = v5[1];
      v26[0] = *v5;
      v26[1] = v19;
      v26[4] = v5[4];
      swift_unknownObjectRetain();
      v16(v26, a5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_25DD38F84(0, v8[2] + 1, 1, v8);
      }

      v21 = v8[2];
      v20 = v8[3];
      if (v21 >= v20 >> 1)
      {
        v8 = sub_25DD38F84((v20 > 1), v21 + 1, 1, v8);
      }

      v8[2] = v21 + 1;
      v22 = &v8[4 * v21];
      v22[4] = v13;
      v22[5] = a2;
      v22[6] = a3;
      v22[7] = a4;
      *v25 = *v37;
      *&v25[9] = *&v37[9];
      v23 = v36;
      *v5 = v35;
      v5[1] = v23;
      v5[2] = *v25;
      v5[3] = *&v25[16];
      *(v5 + 8) = v8;
      *(v5 + 9) = v24;
      *(v5 + 10) = v17;
    }

    else
    {

      sub_25DD39828(&v35);
      *v5 = 0u;
      v5[1] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      v5[4] = 0u;
      *(v5 + 10) = 0;
    }

    return v13;
  }

  return result;
}

uint64_t sub_25DD36ED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return ServerSentEventsDeserializationSequence.Iterator.next()(a1, a2);
}

double ServerSentEventsDeserializationSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_25DD96DF4();
  v15 = (v3 + *(a1 + 36));
  v16 = *v15;
  v17 = v15[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_25DD35D2C(v14, v16, v17, v6, AssociatedTypeWitness, v11, AssociatedConformanceWitness, a2);
}

uint64_t AsyncSequence<>.asDecodedServerSentEvents(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerSentEventsLineDeserializationSequence(0, v13, v14, v14);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  (*(v10 + 16))(v12, v5, a3);
  (*(v10 + 32))(v18, v12, a3);
  WitnessTable = swift_getWitnessTable();
  (*(v16 + 32))(a4, v18, v15);
  v21 = (a4 + *(type metadata accessor for ServerSentEventsDeserializationSequence(0, v15, WitnessTable, v20) + 36));
  *v21 = a1;
  v21[1] = a2;
}

uint64_t AsyncSequence<>.asDecodedServerSentEventsWithJSONData<A>(of:decoder:while:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v24[0] = a7;
  v24[1] = a8;
  v15 = type metadata accessor for ServerSentEventsLineDeserializationSequence(255, a4, a6, a3);
  WitnessTable = swift_getWitnessTable();
  v18 = type metadata accessor for ServerSentEventsDeserializationSequence(0, v15, WitnessTable, v17);
  MEMORY[0x28223BE20](v18);
  AsyncSequence<>.asDecodedServerSentEvents(while:)(a2, a3, a4, v24 - v19);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v21 = v24[0];
  v20[4] = a6;
  v20[5] = v21;
  v20[6] = a9;
  v20[7] = a1;
  type metadata accessor for ServerSentEventWithJSONData(0, a5, a9, v22);

  swift_getWitnessTable();
  sub_25DD96E14();
}

uint64_t sub_25DD374F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 40) = a1;
  sub_25DD96F04();
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = *a2;
  *(v8 + 120) = *(a2 + 16);
  v10 = *(a2 + 40);
  *(v8 + 128) = *(a2 + 24);
  *(v8 + 144) = v10;
  *(v8 + 160) = *(a2 + 56);

  return MEMORY[0x2822009F8](sub_25DD375D8, 0, 0);
}

uint64_t sub_25DD375D8()
{
  *(v0 + 16) = *(v0 + 136);
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  v5 = *(v0 + 80);
  v18 = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 24) = v18;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2518, &qword_25DD9BBA8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  sub_25DD37CB0(sub_25DD3A8A4, v4, v6, v18, v0 + 32, v1);
  LOBYTE(v18) = *(v0 + 160);
  v17 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);

  ServerSentEventWithJSONData.init(event:data:id:retry:)(v8, v7, v12, v10, v9, v17, v18, v13, v14, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25DD377A0(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2408, &qword_25DD99C18);
  if (swift_dynamicCast())
  {
    sub_25DCFE2FC(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25DD966D4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25DD3A98C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25DD971D4();
  }

  sub_25DD25F58(v4, v5, &v43);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25DD26B4C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_25DD390B8(sub_25DD3A9F4, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25DD96754();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25DD18420(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25DD96C04();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25DD96C44();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25DD971D4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25DD18420(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25DD96C14();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25DD96764();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25DD96764();
    sub_25DD26C08(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_25DD26C08(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25DD21C5C(*&__src[0], *(&__src[0] + 1));

  sub_25DD01088(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_25DD37CB0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t sub_25DD37F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v13 = *(v2 + 32);
  v3 = v13;
  v14 = v4;
  v15 = *(v2 + 64);
  v5 = v15;
  v16 = *(v2 + 80);
  v7 = *(v2 + 16);
  v12[0] = *v2;
  v6 = v12[0];
  v12[1] = v7;
  *(a2 + 80) = v16;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *a2 = v6;
  *(a2 + 16) = v7;
  v8 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v8;
  v9 = type metadata accessor for ServerSentEventsDeserializationSequence.Iterator.StateMachine.State(0, v11);
  return (*(*(v9 - 8) + 16))(v11, v12, v9);
}

__n128 sub_25DD37FEC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v4;
  v9[4] = *(v2 + 64);
  v10 = *(v2 + 80);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  (*(*(a2 - 8) + 8))(v9);
  v6 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v6;
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v8;
  return result;
}

uint64_t sub_25DD38080(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_25DD96BB4();

  return MEMORY[0x2821FBE70](a1);
}

unint64_t sub_25DD380E8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25DD971D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_25DD17A9C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_25DD383F0(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD307DC(v3, *v1);
  return sub_25DD979A4();
}

uint64_t ServerSentEventsLineDeserializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_25DD38450, 0, 0);
}

uint64_t sub_25DD38450()
{
  v1 = *(v0 + 80);
  *(v0 + 152) = *(v1 + 52);
  *(v0 + 96) = *(v1 + 16);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 120) = *(v1 + 40);
  do
  {
    v2 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v2;
    *(v0 + 128) = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
    sub_25DD38838();
  }

  while (v3 == 2);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_25DD38594;
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);

    return MEMORY[0x282200308](v0 + 48, v6, v5);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_25DD38594()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_25DD2DE0C;
  }

  else
  {
    v2 = sub_25DD386A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD386A8()
{
  v1 = sub_25DD32328(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = v1;
  if (!v1)
  {
    goto LABEL_9;
  }

  if (v1 != 1)
  {
    v8 = v3;
    v9 = v5;
    goto LABEL_11;
  }

  do
  {
    v7 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v7;
    *(v0 + 128) = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator.StateMachine(0, v0 + 16);
    sub_25DD38838();
  }

  while (v6 == 2);
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = swift_task_alloc();
      *(v0 + 136) = v10;
      *v10 = v0;
      v10[1] = sub_25DD38594;
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);

      return MEMORY[0x282200308](v0 + 48, v12, v11);
    }
  }

  else
  {
LABEL_9:
    v8 = v6;
    v9 = v6;
  }

LABEL_11:
  v13 = *(v0 + 8);

  return v13(v6, v8, 0, v9);
}

void sub_25DD38838()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v6 = v0;
    v18 = *v0;

    v17 = *sub_25DD014B8();
    v16 = *sub_25DD014A4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
    v8 = sub_25DD399F8();
    sub_25DD02518(&v17, &v16, v7, v8, MEMORY[0x277D84B90], &v19);
    sub_25DD31B38(v1, 0);
    v9 = v19;
    if (v20)
    {
      if (v20 != 1)
      {
        return;
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        v10 = *(v1 + 2);
        if (v10 >= v19)
        {
          if (v10 > v19)
          {
            sub_25DD31ADC(v1, 0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v21 = v1;
            if (!isUniquelyReferenced_nonNull_native || (v12 = v1, (v10 + ~v9) > *(v1 + 3) >> 1))
            {
              v12 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v10, 1, v1);
              v21 = v12;
            }

            sub_25DD2EDA8(0, v9 + 1, 0);
            *v6 = v12;
            *(v6 + 8) = 1;
            return;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if ((v19 & 0x8000000000000000) == 0)
    {
      v13 = *(v1 + 2);
      if (v13 >= v19)
      {
        if (v13 > v19)
        {
          sub_25DD31ADC(v1, 0);
          v14 = swift_isUniquelyReferenced_nonNull_native();
          v21 = v1;
          if (!v14 || (v15 = v1, (v13 + ~v9) > *(v1 + 3) >> 1))
          {
            v15 = sub_25DD2ECB4(v14, v13, 1, v1);
            v21 = v15;
          }

          sub_25DD2EDA8(0, v9 + 1, 0);
          *v6 = v15;
          *(v6 + 8) = 0;
          return;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(v0 + 8) == 1)
  {
    if (*(v1 + 2))
    {
      v2 = v1[32];
      if (v2 != *sub_25DD014B8())
      {
LABEL_10:
        *v0 = v1;
        *(v0 + 8) = 0;
        return;
      }

      v3 = *(v1 + 2);
      if (v3)
      {
        v4 = swift_isUniquelyReferenced_nonNull_native();
        if (!v4 || (v3 - 1) > *(v1 + 3) >> 1)
        {
          v1 = sub_25DD2ECB4(v4, v3, 1, v1);
        }

        v5 = *(v1 + 2) - 1;
        memmove(v1 + 32, v1 + 33, v5);
        *(v1 + 2) = v5;
        goto LABEL_10;
      }

      goto LABEL_36;
    }
  }

  else if (v1)
  {
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_25DD38B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator(0, v17);
  v16 = a8 + *(result + 52);
  *v16 = a2;
  *(v16 + 8) = a3;
  return result;
}

uint64_t sub_25DD38BB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return ServerSentEventsLineDeserializationSequence.Iterator.next()(a2);
}

uint64_t sub_25DD38C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_25DD3AA7C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t ServerSentEventsLineDeserializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v17 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v17[0] = v4;
  v17[1] = AssociatedTypeWitness;
  v17[2] = v9;
  v17[3] = AssociatedConformanceWitness;
  result = type metadata accessor for ServerSentEventsLineDeserializationSequence.Iterator(0, v17);
  v16 = a2 + *(result + 52);
  *v16 = MEMORY[0x277D84F90];
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_25DD38F20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

void *sub_25DD38F84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD390B8(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_25DD01088(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25DD01088(v7, v6);
    *v4 = xmmword_25DD99B90;
    sub_25DD01088(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25DD96654() && __OFSUB__(v7, sub_25DD96684()))
      {
LABEL_26:
        __break(1u);
      }

      sub_25DD96694();
      swift_allocObject();
      v14 = sub_25DD96634();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_25DD394C8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_25DD01088(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_25DD99B90;
    sub_25DD01088(0, 0xC000000000000000);
    sub_25DD96714();
    result = sub_25DD394C8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_25DD3945C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD394C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25DD96654();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25DD96684();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25DD96674();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_25DD3957C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25DD00E5C(v5, 0);
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

  result = sub_25DD971D4();
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
        v10 = sub_25DD96C04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25DD00E5C(v10, 0);
        result = sub_25DD97104();
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

uint64_t sub_25DD396AC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25DD97134();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25DD396FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD3987C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC24F8, &qword_25DD9B5A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD39904(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25DD1BF14;

  return sub_25DD374F8(a1, a2, v10, v6, v7, v8, v9, v11);
}

unint64_t sub_25DD399F8()
{
  result = qword_27FCC2508;
  if (!qword_27FCC2508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2500, &qword_25DD9CE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2508);
  }

  return result;
}

uint64_t sub_25DD39AC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25DD39E44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD39B50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25DD39C8C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_25DD39E44()
{
  result = qword_27FCC2510;
  if (!qword_27FCC2510)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FCC2510);
  }

  return result;
}

uint64_t sub_25DD39EAC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 2;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_25DD39FFC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFA8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      result = 0.0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 2147483646;
    }

    else
    {
      *(v19 + 64) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_25DD3A1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal39ServerSentEventsDeserializationSequenceV8IteratorV12StateMachineV0J0Oyx_qd____G(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25DD3A258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 88))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD3A2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD3A318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 88))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3A3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

double sub_25DD3A414(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 64) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DD3A44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal39ServerSentEventsDeserializationSequenceV8IteratorV12StateMachineV10NextActionOyx_qd____G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD3A4AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 57))
  {
    return (*a1 + 2147483644);
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

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3A50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

double sub_25DD3A574(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

uint64_t sub_25DD3A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  result = swift_checkMetadataState();
  if (v7 <= 0x3F)
  {
    v11 = 0;
    v13 = result;
    v9[0] = *(a1 + 16);
    v9[1] = result;
    v10 = *(a1 + 32);
    result = a4(319, v9);
    if (v8 <= 0x3F)
    {
      v12 = 0;
      v14 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD3A6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal43ServerSentEventsLineDeserializationSequenceV8IteratorV12StateMachineV0K0Oyx_qd____G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_25DD3A6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A788(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD3A7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25DD3A850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3A8A4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v4;
  v8 = *(v3 + 24);
  v9 = *a1;
  v10 = a1[1];

  v11 = sub_25DD377A0(v9, v10);
  v13 = v12;
  sub_25DD964D4();
  result = sub_25DD01088(v11, v13);
  if (!v6)
  {
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25DD3A98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2410, &unk_25DD9BBC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25DD3A9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25DD3945C(sub_25DD3AA5C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t ServerSentEventsSerializationSequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_25DD3AAEC, 0, 0);
}

uint64_t sub_25DD3AAEC()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 52);
  *(v0 + 144) = *(v1 + 16);
  v3 = *(v0 + 184);
  *(v0 + 76) = v2;
  v4 = *(v1 + 40);
  v8 = *(v1 + 24);
  *(v0 + 152) = v8;
  *(v0 + 168) = v4;
  *(v0 + 192) = type metadata accessor for ServerSentEventsSerializationSequence.Iterator.StateMachine(0, v0 + 144);
  if (*(v3 + v2))
  {
    v5 = *(v0 + 8);

    return v5(0, 0, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_25DD3AC38;

    return MEMORY[0x282200308](v0 + 16, v8, v4);
  }
}

uint64_t sub_25DD3AC38()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_25DD3AE2C;
  }

  else
  {
    v2 = sub_25DD3AD4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD3AD4C()
{
  v15 = v0;
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  v13[0] = v3;
  v13[1] = v2;
  v14[0] = *(v0 + 48);
  *(v14 + 9) = *(v0 + 57);
  v4 = sub_25DD3AE5C(v13);
  v6 = v5;
  v8 = v7;
  sub_25DD114CC(v0 + 80, &qword_27FCC2528, &qword_25DD9BBE8);
  if (v4)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v4, v9, 0, v10);
}

char *sub_25DD3AE5C(char *result)
{
  if (*v1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(result + 1);
    if (v2 == 1)
    {
      v3 = 0;
      *v1 = 1;
    }

    else
    {
      v4 = *result;
      v5 = *(result + 2);
      v6 = *(result + 3);
      v7 = *(result + 4);
      v8 = *(result + 5);
      v9 = *(result + 6);
      v10 = result[56];
      v11 = swift_allocObject();
      *(v11 + 16) = MEMORY[0x277D84F90];
      if (v2)
      {
        *&v34 = v4;
        *(&v34 + 1) = v2;
        v12 = sub_25DD07E24();
        sub_25DD3BC50(25705, 0xE200000000000000, &v34, v11, MEMORY[0x277D837D0], v12);
      }

      if (v6)
      {
        *&v34 = v5;
        *(&v34 + 1) = v6;
        v13 = sub_25DD07E24();
        sub_25DD3BC50(0x746E657665, 0xE500000000000000, &v34, v11, MEMORY[0x277D837D0], v13);
      }

      if ((v10 & 1) == 0)
      {
        *&v34 = v9;
        *&v34 = sub_25DD97374();
        *(&v34 + 1) = v14;
        v15 = sub_25DD07E24();
        sub_25DD3BC50(0x7972746572, 0xE500000000000000, &v34, v11, MEMORY[0x277D837D0], v15);
      }

      if (v8)
      {
        v16 = MEMORY[0x277D837D0];
        *&v34 = v7;
        *(&v34 + 1) = v8;
        v39 = 2573;
        v40 = 0xE200000000000000;
        v37 = 10;
        v38 = 0xE100000000000000;
        v17 = sub_25DD07E24();
        *&v34 = sub_25DD96FA4();
        *(&v34 + 1) = v18;
        v39 = 13;
        v40 = 0xE100000000000000;
        v37 = 10;
        v38 = 0xE100000000000000;
        v33[3] = v17;
        v33[0] = v16;
        v33[1] = v17;
        v19 = sub_25DD96FA4();
        v21 = v20;

        *&v34 = 10;
        *(&v34 + 1) = 0xE100000000000000;
        MEMORY[0x28223BE20](v22);
        v33[2] = &v34;
        v23 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 0, sub_25DD07D10, v33, v19, v21, &v34);
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = sub_25DD07CBC();
          v26 = (v23 + 56);
          v27 = MEMORY[0x277D83E40];
          do
          {
            v28 = *(v26 - 1);
            v29 = *v26;
            v34 = *(v26 - 3);
            v35 = v28;
            v36 = v29;

            sub_25DD3BC50(1635017060, 0xE400000000000000, &v34, v11, v27, v25);

            v26 += 4;
            --v24;
          }

          while (v24);
        }
      }

      v30 = *sub_25DD014B8();
      swift_beginAccess();
      v3 = *(v11 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_25DD2ECB4(0, *(v3 + 2) + 1, 1, v3);
      }

      v32 = *(v3 + 2);
      v31 = *(v3 + 3);
      if (v32 >= v31 >> 1)
      {
        v3 = sub_25DD2ECB4((v31 > 1), v32 + 1, 1, v3);
      }

      *(v3 + 2) = v32 + 1;
      v3[v32 + 32] = v30;
      *(v11 + 16) = v3;
    }

    return v3;
  }

  return result;
}

uint64_t sub_25DD3B210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator(0, v14);
  *(a7 + *(result + 52)) = a2 & 1;
  return result;
}

uint64_t sub_25DD3B2B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD2E184;

  return ServerSentEventsSerializationSequence.Iterator.next()(a2);
}

uint64_t ServerSentEventsSerializationSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v5 + 16))(v8, v2, v4);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(v11 + 32))(a2, v13, AssociatedTypeWitness);
  v16[0] = v4;
  v16[1] = AssociatedTypeWitness;
  v16[2] = v9;
  v16[3] = AssociatedConformanceWitness;
  result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator(0, v16);
  *(a2 + *(result + 52)) = 0;
  return result;
}

uint64_t sub_25DD3B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ServerSentEventsSerializationSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence.asEncodedServerSentEvents<>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_25DD3B654()
{
  v0 = sub_25DD96534();
  MEMORY[0x28223BE20](v0);
  sub_25DD96594();
  swift_allocObject();
  v1 = sub_25DD96584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2368, &unk_25DD999E0);
  *(swift_allocObject() + 16) = xmmword_25DD999D0;
  sub_25DD96504();
  sub_25DD96524();
  sub_25DD31030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2370, &unk_25DD9A900);
  sub_25DD1A55C();
  sub_25DD970A4();
  sub_25DD96544();
  return v1;
}

uint64_t AsyncSequence.asEncodedServerSentEventsWithJSONData<A>(encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25DD97384();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  (*(v13 + 16))(v15, v8, a2);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v22 = v25;
  v21 = v26;
  v20[4] = a4;
  v20[5] = v22;
  v20[6] = v21;
  v20[7] = a1;

  sub_25DD96E14();

  swift_getWitnessTable();
  return (*(v17 + 32))(v27, v19, v16);
}

uint64_t sub_25DD3B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](sub_25DD3BA18, 0, 0);
}

uint64_t sub_25DD3BA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[11];
  v5 = v4[12];
  v7 = v4[7];
  v8 = v4[8];
  v9 = v4[6];
  v23 = *(v4 + 9);
  v10 = type metadata accessor for ServerSentEventWithJSONData(0, v4[9], v5, a4);
  v11 = (v9 + *(v10 + 40));
  v12 = v11[1];
  v21 = *v11;
  v22 = v10;
  v13 = v9[1];
  v20 = *v9;
  v14 = swift_task_alloc();
  *(v14 + 16) = v8;
  *(v14 + 24) = v23;
  *(v14 + 40) = v6;
  *(v14 + 48) = v5;
  *(v14 + 56) = v7;
  sub_25DD96F04();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  sub_25DD37CB0(sub_25DD3C348, v14, v15, MEMORY[0x277D837D0], (v4 + 4), (v4 + 2));
  v17 = v4[5];
  v16 = v4[6];

  ServerSentEvent.init(id:event:data:retry:)(v21, v12, v20, v13, v4[2], v4[3], *(v16 + *(v22 + 44)), *(v16 + *(v22 + 44) + 8), v17);
  v18 = v4[1];

  return v18();
}

uint64_t sub_25DD3BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_25DD97964();
  a4(v7, *v4);
  return sub_25DD979A4();
}

char *sub_25DD3BC50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_beginAccess();

  sub_25DD3BF7C(a1, a2);
  swift_endAccess();
  v10 = *sub_25DD014E0();
  swift_beginAccess();
  v11 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_25DD2ECB4(0, *(v11 + 2) + 1, 1, v11);
    *(a4 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_25DD2ECB4((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v11[v14 + 32] = v10;
  *(a4 + 16) = v11;
  v15 = *sub_25DD014F4();
  swift_beginAccess();
  v16 = *(a4 + 16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_25DD2ECB4(0, *(v16 + 2) + 1, 1, v16);
    *(a4 + 16) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_25DD2ECB4((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v16[v19 + 32] = v15;
  *(a4 + 16) = v16;
  sub_25DD97004();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
  swift_getAssociatedConformanceWitness();
  sub_25DD96D74();
  swift_endAccess();
  v20 = *sub_25DD014B8();
  swift_beginAccess();
  v21 = *(a4 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v21;
  if ((result & 1) == 0)
  {
    result = sub_25DD2ECB4(0, *(v21 + 2) + 1, 1, v21);
    v21 = result;
    *(a4 + 16) = result;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    result = sub_25DD2ECB4((v23 > 1), v24 + 1, 1, v21);
    v21 = result;
  }

  *(v21 + 2) = v24 + 1;
  v21[v24 + 32] = v20;
  *(a4 + 16) = v21;
  return result;
}

uint64_t sub_25DD3BF7C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_25DD96C04();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_25DD97134();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_25DD3C0A4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25DD1BF14;

  return sub_25DD3B9EC(a1, a2, v10, v6, v7, v8, v9, v11);
}

uint64_t sub_25DD3C1EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = result;
    v6 = *(a1 + 32);
    result = type metadata accessor for ServerSentEventsSerializationSequence.Iterator.StateMachine(319, v5);
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD3C288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3C348@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25DD96574();
  if (v3)
  {
    *a2 = v3;
    return result;
  }

  v8 = result;
  v9 = v7;
  v10 = sub_25DD26524(result, v7);
  if (v11)
  {
    goto LABEL_10;
  }

  v16 = v8;
  v17 = v9;
  sub_25DD21C5C(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_25DD114CC(v14, &qword_27FCC23E8, &qword_25DD99BF8);
LABEL_9:
    v10 = sub_25DD25EB0(v8, v9);
LABEL_10:
    v12 = v10;
    v13 = v11;
    result = sub_25DD01088(v8, v9);
    goto LABEL_11;
  }

  sub_25DD19D44(v14, v18);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  if ((sub_25DD972E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    goto LABEL_9;
  }

  sub_25DD01088(v8, v9);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_25DD972D4();
  v13 = *(&v14[0] + 1);
  v12 = *&v14[0];
  result = __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_11:
  *a3 = v12;
  a3[1] = v13;
  return result;
}

uint64_t IterationBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

void *sub_25DD3C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocBox();
  (*(*(a3 - 8) + 32))(v9, a1, a3);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v8;
  return &unk_25DD9BEE8;
}

uint64_t sub_25DD3C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v5[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25DD3C6BC, 0, 0);
}

uint64_t sub_25DD3C6BC()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25DD3C76C;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x282200308](v3, v4, v2);
}

uint64_t sub_25DD3C76C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD3C8A8, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD3C8A8()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD3C90C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1BF14;

  return sub_25DD3C648(a1, v6, v7, v4, v5);
}

uint64_t sub_25DD3C9C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3C9E0, 0, 0);
}

uint64_t sub_25DD3C9E0()
{
  v4 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25DD3CAD4;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_25DD3CAD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25DD3CBC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD3C9C0(a1);
}

void *(*sub_25DD3CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = *(a3 - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a4;
  (*(v8 + 32))(&v10[v9], a1, a3);
  return sub_25DD3CF0C;
}

void *sub_25DD3CD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(v7 + 16))(v9, a1, a3);
  sub_25DD96DF4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25DD3C598(v12, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return &unk_25DD9BEE8;
}

uint64_t sub_25DD3CF74@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_25DD3CF4C(*v1);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_25DD3CFC8(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_25DCFE2FC(a1, v1);
}

uint64_t sub_25DD3D008(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD3D028, 0, 0);
}

uint64_t sub_25DD3D028()
{
  __swift_mutable_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_25DD96F74();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD3D0B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1C68C;

  return sub_25DD3D008(a1);
}

uint64_t sub_25DD3D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v7);
  sub_25DD96CB4();
  return sub_25DCFE2FC(&v7, a2);
}

uint64_t sub_25DD3D2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD3D1BC(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25DD3D358(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25DD3D378, 0, 0);
}

uint64_t sub_25DD3D378()
{
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25DD3D40C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1C68C;

  return sub_25DD3D358(a1, a2);
}

unint64_t sub_25DD3D4BC()
{
  result = qword_27FCC2530;
  if (!qword_27FCC2530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2530);
  }

  return result;
}

uint64_t sub_25DD3D574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD3D678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25DD3D6C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.send(_:body:baseURL:operationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_25DD3D8CC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_25DD3D8CC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ClientMiddleware.intercept(_:body:baseURL:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_25DD3DB34;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t ServerRequestMetadata.pathParameters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_25DD3DBAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v28 = (v5 + 63) >> 6;
  v29 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(result + 56) + 32 * v11);
    v16 = *v15;
    v17 = v15[1];
    v19 = v15[2];
    v18 = v15[3];

    v20 = sub_25DD0C2DC(v13, v14, sub_25DCFFA14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 32 * v20);
    if (v23[2] == v19 && v23[3] == v18 && *v23 >> 16 == v16 >> 16 && v23[1] >> 16 == v17 >> 16)
    {

      result = v29;
      v7 = v30;
    }

    else
    {
      v27 = sub_25DD97364();

      result = v29;
      v7 = v30;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v28)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerRequestMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD40C8C(v3, v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD3DDCC()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD40C8C(v3, v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD3DE1C(uint64_t a1)
{
  v2 = *v1;
  sub_25DD97964();
  sub_25DD40C8C(v4, v2);
  return sub_25DD979A4();
}

uint64_t HTTPRequest.init(soar_path:method:headerFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a2;
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25DD96884();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  (*(v7 + 16))(v9, a4, v6);
  sub_25DD96894();
  (*(v7 + 8))(a4, v6);
  return (*(v11 + 8))(a3, v10);
}

unint64_t HTTPRequest.soar_query.getter()
{
  v0 = MEMORY[0x25F8A2E70]();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  sub_25DD3E16C(63, 0xE100000000000000, v0, v1);
  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = sub_25DD3E16C(35, 0xE100000000000000, v2, v3);
    if (v7)
    {
      v8 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v8 = v2;
      }

      v9 = v8 << 16;
      if ((v3 & 0x1000000000000000) == 0 || (v2 & 0x800000000000000) != 0)
      {
        v10 = v9 | 7;
      }

      else
      {
        v10 = v9 | 0xB;
      }
    }

    else
    {
      v10 = v6;
    }

    result = sub_25DD96BA4();
    if (v10 >> 14 < result >> 14)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_25DD96CA4();

      return v11;
    }
  }

  return result;
}

unint64_t sub_25DD3E16C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_25DD96C84() != a1 || v9 != a2)
  {
    v10 = sub_25DD975D4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_25DD96BA4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t HTTPRequest.soar_pathOnly.getter()
{
  v0 = MEMORY[0x25F8A2E70]();
  if (!v1)
  {
    return sub_25DD96CA4();
  }

  v2 = v0;
  v3 = v1;
  sub_25DD3E16C(63, 0xE100000000000000, v0, v1);
  if (v4)
  {
    sub_25DD3E16C(35, 0xE100000000000000, v2, v3);
  }

  v5 = sub_25DD96CA4();

  return v5;
}

uint64_t HTTPResponse.init(soar_statusCode:)(uint64_t a1)
{
  v2 = sub_25DD96814();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25DD96954();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x25F8A2F40](a1, 0, 0xE000000000000000);
  sub_25DD967E4();
  return sub_25DD96964();
}

unint64_t ServerRequestMetadata.description.getter()
{
  sub_25DD97124();

  v0 = sub_25DD96A74();
  MEMORY[0x25F8A3200](v0);

  return 0xD000000000000011;
}

unint64_t sub_25DD3E4D0()
{
  sub_25DD97124();

  v0 = sub_25DD96A74();
  MEMORY[0x25F8A3200](v0);

  return 0xD000000000000011;
}

uint64_t sub_25DD3E568()
{
  v39 = sub_25DD969E4();
  v1 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_25DD96A34();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25DD96814();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v6);
  sub_25DD40F48();
  v40 = sub_25DD96CC4();
  sub_25DD3EF6C(&v40);
  v9 = v40;
  v10 = *(v40 + 16);
  if (v10)
  {
    v42 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v10, 0);
    v11 = v42;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v34 = *(v12 + 56);
    v35 = v13;
    v32 = v9;
    v33 = (v1 + 8);
    v36 = v12;
    v15 = (v12 - 8);
    do
    {
      v16 = v37;
      v17 = v35(v5, v14, v37);
      v18 = v38;
      v19 = MEMORY[0x25F8A3030](v17);
      v20 = MEMORY[0x25F8A2FB0](v19);
      v22 = v21;
      (*v33)(v18, v39);
      v40 = v20;
      v41 = v22;
      v23 = MEMORY[0x25F8A3200](8250, 0xE200000000000000);
      v24 = MEMORY[0x25F8A3040](v23);
      MEMORY[0x25F8A3200](v24);

      v26 = v40;
      v25 = v41;
      (*v15)(v5, v16);
      v42 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_25DD055C4((v27 > 1), v28 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v28 + 1;
      v29 = v11 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v14 += v34;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v40 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
  sub_25DD0CFAC();
  v30 = sub_25DD96AD4();

  return v30;
}

BOOL sub_25DD3E934()
{
  v0 = sub_25DD969E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v20 - v6;
  v8 = MEMORY[0x25F8A3030](v5);
  v9 = MEMORY[0x25F8A2FB0](v8);
  v11 = v10;
  v12 = *(v1 + 8);
  v13 = v12(v7, v0);
  v20[2] = v9;
  v20[3] = v11;
  v14 = MEMORY[0x25F8A3030](v13);
  v15 = MEMORY[0x25F8A2FB0](v14);
  v17 = v16;
  v12(v4, v0);
  v20[0] = v15;
  v20[1] = v17;
  sub_25DD07E24();
  v18 = sub_25DD96F84();

  return v18 == -1;
}

uint64_t sub_25DD3EABC()
{
  v0 = sub_25DD96814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25DD96884();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x25F8A2EC0](v6);
  v10 = MEMORY[0x25F8A2E90](v9);
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v22[0] = v10;
  v22[1] = v12;
  v13 = MEMORY[0x25F8A3200](32, 0xE100000000000000);
  v14 = MEMORY[0x25F8A2E70](v13);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0x3E6C696E3CLL;
    v16 = 0xE500000000000000;
  }

  MEMORY[0x25F8A3200](v14, v16);

  v17 = MEMORY[0x25F8A3200](23328, 0xE200000000000000);
  MEMORY[0x25F8A2E60](v17);
  v18 = sub_25DD3E568();
  v20 = v19;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x25F8A3200](v18, v20);

  MEMORY[0x25F8A3200](93, 0xE100000000000000);
  return v22[0];
}

uint64_t sub_25DD3ECDC()
{
  v0 = sub_25DD96814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25DD96954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x25F8A2F90](v6);
  v10 = MEMORY[0x25F8A2F50](v9);
  (*(v5 + 8))(v8, v4);
  v17[1] = v10;
  v18 = sub_25DD97374();
  v19 = v11;
  v12 = MEMORY[0x25F8A3200](23328, 0xE200000000000000);
  MEMORY[0x25F8A2EE0](v12);
  v13 = sub_25DD3E568();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x25F8A3200](v13, v15);

  MEMORY[0x25F8A3200](93, 0xE100000000000000);
  return v18;
}

uint64_t sub_25DD3EF6C(uint64_t *a1)
{
  v2 = *(sub_25DD96A34() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD40E08(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD3F014(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25DD3F014(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25DD96A34();
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25DD96A34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD3F55C(v8, v9, a1, v4);
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
    return sub_25DD3F140(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD3F140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v66 = sub_25DD969E4();
  v8 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66);
  v65 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v48 - v11;
  v12 = sub_25DD96A34();
  v13 = MEMORY[0x28223BE20](v12);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v73 = &v48 - v16;
  result = MEMORY[0x28223BE20](v15);
  v68 = &v48 - v19;
  v50 = a2;
  if (a3 != a2)
  {
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *a4;
    v23 = *(v20 + 56);
    v60 = (v8 + 8);
    v61 = v21;
    v59 = (v20 - 8);
    v63 = v20;
    v24 = v22 + v23 * (a3 - 1);
    v55 = -v23;
    v56 = (v20 + 16);
    v25 = a1 - a3;
    v57 = v22;
    v49 = v23;
    v26 = v22 + v23 * a3;
    v62 = v12;
LABEL_5:
    v54 = a3;
    v51 = v26;
    v52 = v25;
    v53 = v24;
    v67 = v25;
    while (1)
    {
      v27 = v61;
      v61();
      v28 = (v27)(v73, v24, v12);
      v29 = v64;
      v30 = MEMORY[0x25F8A3030](v28);
      v31 = MEMORY[0x25F8A2FB0](v30);
      v33 = v32;
      v34 = *v60;
      v35 = v29;
      v36 = v66;
      v37 = (*v60)(v35, v66);
      v71 = v31;
      v72 = v33;
      v38 = v65;
      v39 = MEMORY[0x25F8A3030](v37);
      v40 = MEMORY[0x25F8A2FB0](v39);
      v42 = v41;
      v34(v38, v36);
      v12 = v62;
      v69 = v40;
      v70 = v42;
      sub_25DD07E24();
      v43 = sub_25DD96F84();

      v44 = *v59;
      (*v59)(v73, v12);
      result = (v44)(v68, v12);
      if (v43 != -1)
      {
LABEL_4:
        a3 = v54 + 1;
        v24 = v53 + v49;
        v25 = v52 - 1;
        v26 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v45 = *v56;
      v46 = v58;
      (*v56)(v58, v26, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = (v45)(v24, v46, v12);
      v24 += v55;
      v26 += v55;
      if (__CFADD__(v67++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD3F55C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v149 = a1;
  v170 = sub_25DD969E4();
  v6 = *(v170 - 8);
  v7 = MEMORY[0x28223BE20](v170);
  v169 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v168 = &v146 - v9;
  v173 = sub_25DD96A34();
  v10 = *(v173 - 8);
  v11 = MEMORY[0x28223BE20](v173);
  v156 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v164 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v176 = &v146 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v175 = &v146 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v146 - v20;
  result = MEMORY[0x28223BE20](v19);
  v147 = &v146 - v22;
  v23 = a3[1];
  v150 = v10;
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v149;
    if (!*v149)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_98;
  }

  v146 = a4;
  v24 = 0;
  v171 = v10 + 16;
  v172 = (v10 + 8);
  v166 = (v10 + 32);
  v167 = (v6 + 8);
  v25 = MEMORY[0x277D84F90];
  v151 = a3;
  while (1)
  {
    v152 = v25;
    v155 = v24;
    if (v24 + 1 >= v23)
    {
      v37 = (v24 + 1);
    }

    else
    {
      v160 = v23;
      v26 = v10;
      v27 = *a3;
      v28 = *(v26 + 72);
      v29 = *a3 + v28 * (v24 + 1);
      v30 = *(v26 + 16);
      v31 = v147;
      v32 = v173;
      (v30)(v147, v29, v173);
      v174 = v27;
      v33 = v27 + v28 * v24;
      v34 = v148;
      v162 = v30;
      (v30)(v148, v33, v32);
      LODWORD(v163) = sub_25DD3E934();
      if (v161)
      {
        v145 = *v172;
        (*v172)(v34, v32);
        v145(v31, v32);
      }

      a4 = v172;
      v35 = *v172;
      (*v172)(v34, v32);
      v159 = v35;
      result = (v35)(v31, v32);
      v25 = (v24 + 2);
      v36 = v174 + v28 * (v24 + 2);
      v165 = v28;
      while (1)
      {
        v37 = v160;
        if (v160 == v25)
        {
          break;
        }

        v38 = v173;
        v39 = v162;
        v162();
        v174 = v29;
        v40 = v39(v176, v29, v38);
        v41 = v168;
        v42 = MEMORY[0x25F8A3030](v40);
        v43 = MEMORY[0x25F8A2FB0](v42);
        v45 = v44;
        v46 = *v167;
        v47 = v170;
        v48 = (*v167)(v41, v170);
        v179 = v43;
        v180 = v45;
        v49 = v169;
        v50 = MEMORY[0x25F8A3030](v48);
        v51 = MEMORY[0x25F8A2FB0](v50);
        v53 = v52;
        v46(v49, v47);
        v177 = v51;
        v178 = v53;
        sub_25DD07E24();
        v54 = sub_25DD96F84();

        v28 = v165;

        a4 = v172;
        v55 = v173;
        v56 = v159;
        (v159)(v176, v173);
        result = v56(v175, v55);
        ++v25;
        v36 += v28;
        v29 = v28 + v174;
        if (((v163 ^ (v54 != -1)) & 1) == 0)
        {
          v37 = v25 - 1;
          break;
        }
      }

      a3 = v151;
      v10 = v150;
      if ((v163 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v37 < v155)
      {
        goto LABEL_129;
      }

      if (v155 < v37)
      {
        a4 = v28 * (v37 - 1);
        v57 = v37 * v28;
        v160 = v37;
        v58 = v37;
        v59 = v155;
        v60 = v155 * v28;
        v25 = v152;
        do
        {
          if (v59 != --v58)
          {
            v62 = *v151;
            if (!*v151)
            {
              goto LABEL_133;
            }

            v63 = *v166;
            (*v166)(v156, v62 + v60, v173);
            if (v60 < a4 || v62 + v60 >= (v62 + v57))
            {
              v61 = v173;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v61 = v173;
              if (v60 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v63)(v62 + a4, v156, v61);
            v25 = v152;
            v28 = v165;
          }

          ++v59;
          a4 -= v28;
          v57 -= v28;
          v60 += v28;
        }

        while (v59 < v58);
        a3 = v151;
        v10 = v150;
        v37 = v160;
      }

      else
      {
LABEL_24:
        v25 = v152;
      }
    }

    v64 = a3[1];
    if (v37 < v64)
    {
      if (__OFSUB__(v37, v155))
      {
        goto LABEL_126;
      }

      if (&v37[-v155] < v146)
      {
        if (__OFADD__(v155, v146))
        {
          goto LABEL_127;
        }

        if (v155 + v146 >= v64)
        {
          v65 = a3[1];
        }

        else
        {
          v65 = (v155 + v146);
        }

        if (v65 < v155)
        {
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          result = sub_25DD06A4C(v25);
          v25 = result;
LABEL_98:
          v181 = v25;
          v140 = *(v25 + 2);
          if (v140 >= 2)
          {
            while (*a3)
            {
              v141 = *&v25[16 * v140];
              v142 = *&v25[16 * v140 + 24];
              v143 = v161;
              sub_25DD40220(*a3 + *(v150 + 72) * v141, *a3 + *(v150 + 72) * *&v25[16 * v140 + 16], *a3 + *(v150 + 72) * v142, a4);
              v161 = v143;
              if (v143)
              {
              }

              if (v142 < v141)
              {
                goto LABEL_123;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_25DD06A4C(v25);
              }

              if (v140 - 2 >= *(v25 + 2))
              {
                goto LABEL_124;
              }

              v144 = &v25[16 * v140];
              *v144 = v141;
              *(v144 + 1) = v142;
              v181 = v25;
              result = sub_25DD069C0(v140 - 1);
              v25 = v181;
              v140 = *(v181 + 2);
              if (v140 <= 1)
              {
              }
            }

            goto LABEL_134;
          }
        }

        if (v37 != v65)
        {
          break;
        }
      }
    }

    v24 = v37;
LABEL_36:
    if (v24 < v155)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v66 = *(v25 + 3);
    v67 = a4 + 1;
    if (a4 >= v66 >> 1)
    {
      result = sub_25DD050F0((v66 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v67;
    v68 = &v25[16 * a4];
    *(v68 + 4) = v155;
    *(v68 + 5) = v24;
    v69 = *v149;
    if (!*v149)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v25 + 4);
          v72 = *(v25 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_56:
          if (v74)
          {
            goto LABEL_114;
          }

          v87 = &v25[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_117;
          }

          v93 = &v25[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_121;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v97 = &v25[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_70:
        if (v92)
        {
          goto LABEL_116;
        }

        v100 = &v25[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_119;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v70 - 1;
        if (v70 - 1 >= v67)
        {
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v108 = *&v25[16 * a4 + 32];
        v109 = *&v25[16 * v70 + 40];
        v110 = v161;
        sub_25DD40220(*a3 + *(v10 + 72) * v108, *a3 + *(v10 + 72) * *&v25[16 * v70 + 32], *a3 + *(v10 + 72) * v109, v69);
        v161 = v110;
        if (v110)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_25DD06A4C(v25);
        }

        if (a4 >= *(v25 + 2))
        {
          goto LABEL_111;
        }

        v111 = &v25[16 * a4];
        *(v111 + 4) = v108;
        *(v111 + 5) = v109;
        v181 = v25;
        result = sub_25DD069C0(v70);
        v25 = v181;
        v67 = *(v181 + 2);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v25[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_112;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_113;
      }

      v82 = &v25[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_115;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_118;
      }

      if (v86 >= v78)
      {
        v104 = &v25[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_122;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v23 = a3[1];
    if (v24 >= v23)
    {
      goto LABEL_96;
    }
  }

  v112 = *a3;
  v113 = *(v10 + 72);
  v165 = *(v10 + 16);
  v114 = (v112 + v113 * (v37 - 1));
  v162 = -v113;
  v115 = v155 - v37;
  v163 = v112;
  v153 = v113;
  v116 = v112 + v37 * v113;
  a4 = v173;
  v154 = v65;
LABEL_88:
  v160 = v37;
  v157 = v116;
  v158 = v115;
  v117 = v115;
  v159 = v114;
  while (1)
  {
    v174 = v117;
    v118 = v165;
    v165();
    v119 = (v118)(v176, v114, a4);
    v120 = v168;
    v121 = MEMORY[0x25F8A3030](v119);
    v122 = MEMORY[0x25F8A2FB0](v121);
    v124 = v123;
    v125 = *v167;
    v126 = v170;
    v127 = (*v167)(v120, v170);
    v179 = v122;
    v180 = v124;
    v128 = v169;
    v129 = MEMORY[0x25F8A3030](v127);
    v130 = MEMORY[0x25F8A2FB0](v129);
    v132 = v131;
    v133 = v128;
    a4 = v173;
    v125(v133, v126);
    v177 = v130;
    v178 = v132;
    sub_25DD07E24();
    v134 = sub_25DD96F84();

    v135 = *v172;
    (*v172)(v176, a4);
    result = (v135)(v175, a4);
    if (v134 != -1)
    {
LABEL_87:
      v37 = v160 + 1;
      v114 = &v159[v153];
      v115 = v158 - 1;
      v116 = v157 + v153;
      v24 = v154;
      if (v160 + 1 != v154)
      {
        goto LABEL_88;
      }

      a3 = v151;
      v10 = v150;
      v25 = v152;
      goto LABEL_36;
    }

    v136 = v174;
    if (!v163)
    {
      break;
    }

    v137 = *v166;
    v138 = v164;
    (*v166)(v164, v116, a4);
    swift_arrayInitWithTakeFrontToBack();
    v137(v114, v138, a4);
    v114 = v162 + v114;
    v116 += v162;
    v139 = __CFADD__(v136, 1);
    v117 = v136 + 1;
    if (v139)
    {
      goto LABEL_87;
    }
  }

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
  return result;
}