uint64_t sub_223B4C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B4C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223BF430C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_223B4C174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_223BF430C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_223B4C240()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223B4C298()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_223B4C334(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_223B4C348@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for FailureTracked(0, *(a1 + a2 - 24), *(a1 + a2 - 16), *(*(a1 + a2 - 8) + 8));
  result = sub_223B5F658(v4);
  *a3 = result;
  return result;
}

uint64_t sub_223B4C398()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C40C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_223B4C458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223B4C490()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL sub_223B4C4E0@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_223B73184(*(a1 + a2 - 24), *(*(a1 + a2 - 16) + 8));
  *a3 = result;
  return result;
}

__n128 sub_223B4C528(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_223B4C53C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C574(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return v3;
}

uint64_t sub_223B4C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223BF430C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_223B4C5F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223B4C634()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_223B4C66C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_223B4C6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_223BF430C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B4C710(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_223BF430C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_223B4C988(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_27D0B0B78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27D0B0B78);
    }
  }
}

uint64_t sub_223B4CAB8(uint64_t a1, uint64_t a2)
{
  sub_223BF4E8C();
  swift_getWitnessTable();
  sub_223BF433C();
  return sub_223BF4EBC();
}

uint64_t sub_223B4CB20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_223BF432C();
}

uint64_t sub_223B4CBF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223B4CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = v45 - v16;
  v55[0] = a3;
  v55[1] = a4;
  v45[1] = a4;
  v45[2] = a6;
  v55[2] = a5;
  v55[3] = a6;
  v17 = type metadata accessor for AsyncAsymDebounceSequence.Rate(0, v55);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v50 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v48 = v45 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v45 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v28 = v45 - v27;
  v49 = v26;
  v29 = *(v26 + 48);
  v54 = v18;
  v30 = *(v18 + 16);
  v52 = a1;
  v30(v45 - v27, a1, v17);
  v53 = a2;
  v30(&v28[v29], a2, v17);
  v31 = *(v13 + 48);
  if (v31(v28, 1, AssociatedTypeWitness) == 1)
  {
    if (v31(&v28[v29], 1, AssociatedTypeWitness) == 1)
    {
LABEL_10:
      v39 = 0;
      v40 = v54;
      goto LABEL_16;
    }
  }

  else
  {
    v30(v24, v28, v17);
    if (v31(&v28[v29], 1, AssociatedTypeWitness) != 1)
    {
      v34 = v13;
      v35 = *(v13 + 32);
      v36 = v47;
      v35(v47, v24, AssociatedTypeWitness);
      v37 = v46;
      v35(v46, &v28[v29], AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      if ((sub_223BF452C() & 1) == 0)
      {
        v39 = sub_223BF44CC();
        v44 = *(v34 + 8);
        v44(v37, AssociatedTypeWitness);
        v44(v36, AssociatedTypeWitness);
        v40 = v54;
        goto LABEL_16;
      }

      v38 = *(v34 + 8);
      v38(v37, AssociatedTypeWitness);
      v38(v36, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v13 + 8))(v24, AssociatedTypeWitness);
  }

  v32 = v48;
  v30(v48, v52, v17);
  if (v31(v32, 1, AssociatedTypeWitness) == 1)
  {
    v33 = 0;
  }

  else
  {
    (*(v54 + 8))(v32, v17);
    v33 = 1;
  }

  v41 = v50;
  v30(v50, v53, v17);
  if (v31(v41, 1, AssociatedTypeWitness) == 1)
  {
    v42 = 0;
  }

  else
  {
    (*(v54 + 8))(v41, v17);
    v42 = 1;
  }

  v40 = v51;
  v39 = v33 < v42;
  v17 = v49;
LABEL_16:
  (*(v40 + 8))(v28, v17);
  return v39 & 1;
}

uint64_t sub_223B4D1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = a4;
  v32 = &v31 - v13;
  v37[0] = a3;
  v37[1] = a4;
  v37[2] = a5;
  v37[3] = a6;
  v33 = a6;
  v14 = type metadata accessor for AsyncAsymDebounceSequence.Rate(0, v37);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v36 = &v31 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v31 - v20;
  v22 = *(v19 + 48);
  v34 = v15;
  v23 = *(v15 + 16);
  v23(&v31 - v20, v35, v14);
  v23(&v21[v22], a2, v14);
  v35 = v12;
  v24 = *(v12 + 48);
  if (v24(v21, 1, AssociatedTypeWitness) == 1)
  {
    v25 = 1;
    if (v24(&v21[v22], 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v23(v36, v21, v14);
    if (v24(&v21[v22], 1, AssociatedTypeWitness) != 1)
    {
      v26 = v35;
      v27 = v32;
      (*(v35 + 32))(v32, &v21[v22], AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v28 = v36;
      v25 = sub_223BF452C();
      v29 = *(v26 + 8);
      v29(v27, AssociatedTypeWitness);
      v29(v28, AssociatedTypeWitness);
LABEL_8:
      v18 = v34;
      goto LABEL_9;
    }

    (*(v35 + 8))(v36, AssociatedTypeWitness);
  }

  v25 = 0;
  v14 = TupleTypeMetadata2;
LABEL_9:
  (*(v18 + 8))(v21, v14);
  return v25 & 1;
}

uint64_t sub_223B4D5EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_223BF43AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_223B4D61C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  swift_getAssociatedTypeWitness();
  v5 = sub_223BF43DC();
  *v4 = v2;
  v4[1] = sub_223B4D6F4;

  return MEMORY[0x282141C88](a1, v5);
}

uint64_t sub_223B4D6F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_223B4D810(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223B4D8B8;

  return sub_223B4D61C(a1, a2);
}

uint64_t sub_223B4D8B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_223B4D9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_223B4DA7C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_223B4DA7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_223B4DB94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_223B4D5EC(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_223B4DBFC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_223B4E1B0();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        result = sub_223BF43FC();
        if (v5 <= 0x3F)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          result = type metadata accessor for AsyncSingleCellChannel(319, AssociatedTypeWitness, v7, v8);
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_223B4DD28(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_223B4DF10(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((v11 + 7 + v14) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            *v27 = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

unint64_t sub_223B4E1B0()
{
  result = qword_27D0B0C10[0];
  if (!qword_27D0B0C10[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D0B0C10);
  }

  return result;
}

uint64_t sub_223B4E208(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_223B4E278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_223B4E41C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

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
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
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
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t sub_223B4E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_223B4E6C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_223B4E714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_223B4E768(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_223B4E780(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_223B4E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_223B4E7F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_223B4E83C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_223B4E898(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4E93C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_223B4EACC(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B4ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AsyncSingleCellChannel.Storage.State(255, *(a1 + 80), a3, a4);
  result = sub_223BF4A0C();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a1;
  v5[9] = v4;
  v6 = *(*v4 + 80);
  v5[10] = v6;
  v5[11] = type metadata accessor for AsyncSingleCellChannel.Storage.State(255, v6, a3, a4);
  v7 = sub_223BF4A0C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B4EE9C, v4, 0);
}

uint64_t sub_223B4EE9C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = *(*v5 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5 + v6, v2);
  v7 = *(v4 - 8);
  if ((*(v7 + 48))(v1, 1, v4) == 1)
  {
    (*(*(v0[10] - 8) + 56))(v0[8], 1, 1);
LABEL_6:

    v16 = v0[1];

    return v16();
  }

  v8 = v0[11];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_223BF4BEC();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[10];
    v23 = v0[8];
    v24 = v0[12];
    v15 = *(v14 - 8);
    (*(v15 + 32))();
    swift_storeEnumTagMultiPayload();
    (*(v7 + 56))(v13, 0, 1, v8);
    swift_beginAccess();
    (*(v12 + 40))(v5 + v6, v13, v24);
    swift_endAccess();
    (*(v15 + 56))(v23, 0, 1, v14);
    goto LABEL_6;
  }

  v18 = v0[9];
  type metadata accessor for AsyncSingleCellChannel.Storage(255, v0[10], v10, v11);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_task_alloc();
  v0[16] = v20;
  sub_223BF4A0C();
  *v20 = v0;
  v20[1] = sub_223B4F270;
  v21 = v0[8];
  v22 = v0[9];

  return sub_223B4F584(v21, v18, WitnessTable, sub_223B4FED8, v22);
}

uint64_t sub_223B4F270()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_223B4F380, v1, 0);
}

uint64_t sub_223B4F380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_223B4F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncSingleCellChannel.Storage.State(255, *(*a2 + 80), a3, a4);
  v7 = sub_223BF4A0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - v9);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v10, 0, 1, v6);
  v11 = *(*a2 + 96);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v11, v10, v7);
  return swift_endAccess();
}

uint64_t sub_223B4F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_223BF47AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_223B4F618, v6, v8);
}

uint64_t sub_223B4F618()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_223B4F6C0;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_223B4F6C0()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_223B4F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for AsyncSingleCellChannel.Storage.State(255, *(*v4 + 80), a3, a4);
  v6 = sub_223BF4A0C();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_223B4F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_223B4F798(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_223B4F894(uint64_t a1)
{
  sub_223BF4A0C();
  result = sub_223BF480C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B4F930(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_223B4FA48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B4FC5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_223B4FC7C, 0, 0);
}

uint64_t sub_223B4FC7C()
{
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_223B4FD18;
  v5 = *(v0 + 16);

  return sub_223B4EDA8(v5, v1, v2, v3);
}

uint64_t sub_223B4FD18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_223B4FE0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223B4D8B8;

  return sub_223B4FC5C(a1);
}

uint64_t sub_223B4FEA4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  j__swift_retain();

  *a1 = v3;
  return result;
}

uint64_t sub_223B4FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v49 = a4;
  v43 = a2;
  v44 = a3;
  v7 = type metadata accessor for ModelAssetLocation(0, a2, a3, a5);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v39 - v8;
  v9 = sub_223BF425C();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223BF430C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CanonicalLocationResolver(0);
  (*(v13 + 16))(v15, v5 + *(v16 + 20), v12);
  v47 = a1;
  v48 = v7;
  v17 = (a1 + *(v7 + 36));
  if (v17[2] != 1)
  {
    v42 = v17[2];
    v19 = v17;
    v18 = *v17;
    v40 = v19[1];
    v41 = v18;
    v20 = v15;
    if ((v18 & 0x100) != 0)
    {
      v23 = (v5 + *(v16 + 24));
      v22 = *v23;
      v21 = v23[1];
    }

    else
    {
      v21 = 0xE700000000000000;
      v22 = 0x636972656E6547;
    }

    v51 = v22;
    v52 = v21;
    v24 = *MEMORY[0x277CC91C0];
    v25 = v50;
    v26 = v50 + 104;
    v27 = *(v50 + 104);
    v27(v11, v24, v9);
    v28 = sub_223B50954();
    v29 = v20;
    sub_223BF42DC();
    v30 = *(v25 + 8);
    v30(v11, v9);
    v15 = v29;

    v31 = 5063745;
    if (v41)
    {
      v31 = 4473174;
    }

    v51 = v31;
    v52 = 0xE300000000000000;
    v39 = v26;
    v27(v11, v24, v9);
    v41 = v28;
    sub_223BF42DC();
    v30(v11, v9);

    if (v42)
    {
      v51 = v40;
      v52 = v42;
      v27(v11, v24, v9);
      sub_223BF42DC();
      v30(v11, v9);
    }
  }

  v32 = v47;
  v51 = (*(v44 + 16))(v43);
  v52 = v33;
  v34 = v50;
  (*(v50 + 104))(v11, *MEMORY[0x277CC91D0], v9);
  sub_223B50954();
  sub_223BF42CC();
  (*(v34 + 8))(v11, v9);

  v35 = v46;
  v36 = v48;
  (*(v45 + 16))(v46, v32, v48);
  WitnessTable = swift_getWitnessTable();
  return sub_223B5E64C(v15, v35, v36, WitnessTable, v49);
}

uint64_t sub_223B503A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a1;
  v62 = a6;
  v10 = type metadata accessor for ModelAssetLocation(255, a3, a5, a4);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for ConcreteLocation(0, v10, WitnessTable, v12);
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v52 = &v48 - v15;
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = sub_223BF425C();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  v48 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ConcreteLocation(0, a2, a4, v20);
  v21 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v23 = &v48 - v22;
  v64 = a2;
  v65 = a3;
  v55 = a3;
  v56 = a5;
  v66 = a4;
  v67 = a5;
  v24 = type metadata accessor for MixedAssetLocation(0, &v64);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v61 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - v28;
  v30 = sub_223BF430C();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v59 = &v48 - v35;
  v57 = *(v25 + 16);
  v58 = v25 + 16;
  v57(v29, v63, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v49;
    (*(v49 + 32))(v17, v29, v10);
    v37 = v52;
    sub_223B4FF2C(v17, v55, v56, v52, v38);
    (*(v36 + 8))(v17, v10);
    (*(v31 + 16))(v34, v37, v30);
    (*(v53 + 8))(v37, v54);
  }

  else
  {
    v56 = v30;
    v39 = v21;
    (*(v21 + 32))(v23, v29, v60);
    v64 = sub_223BF42BC();
    v65 = v40;
    v41 = v50;
    v42 = v51;
    v43 = v48;
    (*(v50 + 104))(v48, *MEMORY[0x277CC91D8], v51);
    sub_223B50954();
    sub_223BF42EC();
    (*(v41 + 8))(v43, v42);

    (*(v39 + 8))(v23, v60);
    v30 = v56;
  }

  v44 = v59;
  (*(v31 + 32))(v59, v34, v30);
  v45 = v61;
  v57(v61, v63, v24);
  v46 = swift_getWitnessTable();
  return sub_223B5E64C(v44, v45, v24, v46, v62);
}

unint64_t sub_223B50954()
{
  result = qword_281339340;
  if (!qword_281339340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339340);
  }

  return result;
}

uint64_t type metadata accessor for CanonicalLocationResolver(uint64_t a1)
{
  result = qword_281339520;
  if (!qword_281339520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223B50A1C(uint64_t a1)
{
  result = sub_223BF430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223B50A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, char *)@<X2>, void (*a4)(__int128 *__return_ptr, char *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v103 = a6;
  v111 = a2;
  v113 = a5;
  v114 = a1;
  v117 = a3;
  v118 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v98 = *(v8 - 1);
  v100 = *(v98 + 64);
  MEMORY[0x28223BE20](v8);
  v101 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v92 - v11;
  v12 = v8[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1068, &qword_223BF76B8);
  swift_allocObject();
  v106 = sub_223BF43EC();
  *(a7 + v12) = v106;
  v13 = v8[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1070, &qword_223BF76C0);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = *(*v14 + 96);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  swift_storeEnumTagMultiPayload();
  v17 = *(*(v16 - 8) + 56);
  v17(v14 + v15, 0, 1, v16);
  v105 = v14;
  *(a7 + v13) = v14;
  v18 = a7;
  v19 = v111;
  v20 = v8[17];
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  v22 = *(*v21 + 96);
  swift_storeEnumTagMultiPayload();
  v17(v21 + v22, 0, 1, v16);
  v104 = v21;
  *(v18 + v20) = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v108 = *(v23 - 8);
  v24 = *(v108 + 16);
  v112 = v23;
  v24(v18, v114);
  v97 = v8;
  v25 = v8[13];
  v26 = sub_223BF4BBC();
  v107 = *(v26 - 8);
  v27 = *(v107 + 16);
  v109 = v18;
  v102 = v25;
  v115 = v26;
  v27(v18 + v25, v113);
  v28 = *(v19 + 16);
  v123 = MEMORY[0x277D84F90];

  sub_223B57C74(0, v28, 0);
  v29 = v123;
  if (v28)
  {
    v21 = 0;
    *&v116 = *(v19 + 16);
    v30 = v19;
    v31 = (v19 + 32);
    do
    {
      if (v116 == v21)
      {
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v21 >= *(v30 + 16))
      {
        goto LABEL_76;
      }

      v119 = *(v31 + v21);
      v117(&v120, &v119);
      v32 = v120;
      v33 = v121;
      v123 = v29;
      v19 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v19 >= v34 >> 1)
      {
        v96 = v120;
        sub_223B57C74((v34 > 1), v19 + 1, 1);
        v32 = v96;
        v29 = v123;
      }

      ++v21;
      *(v29 + 16) = v19 + 1;
      v35 = v29 + 24 * v19;
      *(v35 + 32) = v32;
      *(v35 + 48) = v33;
    }

    while (v28 != v21);
  }

  else
  {
    v30 = v19;
  }

  v36 = *(v30 + 16);
  if (v28 != v36)
  {
    v21 = v30 + 32;
    do
    {
      if (v28 >= v36)
      {
        goto LABEL_79;
      }

      v119 = *(v21 + v28);
      v117(&v120, &v119);
      v42 = v120;
      v43 = v121;
      v123 = v29;
      v19 = *(v29 + 16);
      v44 = *(v29 + 24);
      if (v19 >= v44 >> 1)
      {
        v116 = v120;
        sub_223B57C74((v44 > 1), v19 + 1, 1);
        v42 = v116;
        v29 = v123;
      }

      ++v28;
      *(v29 + 16) = v19 + 1;
      v45 = v29 + 24 * v19;
      *(v45 + 32) = v42;
      *(v45 + 48) = v43;
      v36 = *(v30 + 16);
    }

    while (v28 != v36);
  }

  *&v120 = v29;

  v37 = v110;
  sub_223B5559C(&v120);
  v38 = &v122;
  *&v96 = v37;
  if (v37)
  {
LABEL_88:

    __break(1u);
    return result;
  }

  v39 = v120;
  v30 = *(v120 + 16);
  v28 = v115;
  if (!v30)
  {

    v19 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v28 = v120 + 32;
  v40 = *(v120 + 48);
  swift_retain_n();
  v95 = v30 - 1;
  *&v116 = v39;
  if (v30 == 1)
  {
    v41 = v39;

    v21 = 0;
    v19 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

  v94 = v28;
  v21 = 0;
  v46 = v39 + 48;
  v19 = MEMORY[0x277D84F90];
  v47 = 1;
  v93 = v39 + 48;
  do
  {
    v110 = v19;
    v111 = v21;
    v19 = v46 + 24 * v47;
    v21 = v47;
    v28 = (2 * v47) | 1;
    while (1)
    {
      if (v47 < 1 || v21 >= v30)
      {
        goto LABEL_80;
      }

      v38 = *(v39 + 16);
      if (v21 >= v38)
      {
        goto LABEL_81;
      }

      v48 = *v19;
      if ((v40 & 1) == 0)
      {
        break;
      }

      if ((*v19 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_25:
      ++v21;
      v28 += 2;
      v19 += 24;
      v40 = v48;
      if (v30 == v21)
      {
        v19 = v110;
        v21 = v111;
        goto LABEL_44;
      }
    }

    if ((*v19 & 1) == 0)
    {
      v49 = sub_223BF4EFC();
      v39 = v116;
      if ((v49 & 1) == 0)
      {
LABEL_32:
        v40 = 0;
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v40 = 1;
LABEL_34:
    v19 = v110;
    if (v21 < v111)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v38 = *(v39 + 16);
    if (v38 < v111 || v38 < v21)
    {
      goto LABEL_86;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_223B7BC38(0, *(v19 + 16) + 1, 1, v19);
    }

    v51 = *(v19 + 16);
    v50 = *(v19 + 24);
    v52 = v51 + 1;
    v39 = v116;
    if (v51 >= v50 >> 1)
    {
      v55 = sub_223B7BC38((v50 > 1), v51 + 1, 1, v19);
      v52 = v51 + 1;
      v39 = v116;
      v19 = v55;
    }

    v47 = v21 + 1;
    *(v19 + 16) = v52;
    v53 = (v19 + 32 * v51);
    v54 = v94;
    v53[4] = v39;
    v53[5] = v54;
    v53[6] = v111;
    v53[7] = v28;
    v46 = v93;
  }

  while (v95 != v21);
LABEL_44:
  v41 = v39;

  if (v21 == v30)
  {

    goto LABEL_53;
  }

  v38 = &v121;
  v28 = v94;
  if (v30 < v21)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_47:
  v56 = *(v41 + 16);
  if (v56 < v21 || v56 < v30)
  {
    goto LABEL_83;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v58 = *(v19 + 16);
    v57 = *(v19 + 24);
    v59 = v116;
    if (v58 >= v57 >> 1)
    {
      v91 = sub_223B7BC38((v57 > 1), v58 + 1, 1, v19);
      v59 = v116;
      v19 = v91;
    }

    v60 = v59;

    *(v19 + 16) = v58 + 1;
    v61 = (v19 + 32 * v58);
    v61[4] = v60;
    v61[5] = v28;
    v61[6] = v21;
    v61[7] = (2 * v30) | 1;
LABEL_53:
    v28 = v115;
LABEL_54:
    v62 = *(v19 + 16);
    v30 = v112;
    if (v62)
    {
      *&v120 = MEMORY[0x277D84F90];
      sub_223B57C74(0, v62, 0);
      v63 = v120;
      v21 = v19 + 56;
      while (1)
      {
        v64 = *(v21 - 8);
        v65 = *v21 >> 1;
        if (v64 == v65)
        {
          break;
        }

        if (v64 >= v65)
        {
          goto LABEL_78;
        }

        v66 = *(v21 - 16) + 24 * v64;
        v67 = *v66;
        v28 = *(v66 + 16);
        *&v120 = v63;
        v69 = *(v63 + 16);
        v68 = *(v63 + 24);
        if (v69 >= v68 >> 1)
        {
          v116 = v67;
          sub_223B57C74((v68 > 1), v69 + 1, 1);
          v67 = v116;
          v63 = v120;
        }

        v21 += 32;
        *(v63 + 16) = v69 + 1;
        v70 = v63 + 24 * v69;
        *(v70 + 32) = v67;
        *(v70 + 48) = v28;
        if (!--v62)
        {

          v28 = v115;
          v71 = *(v63 + 16);
          if (!v71)
          {
            goto LABEL_67;
          }

          goto LABEL_62;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v63 = MEMORY[0x277D84F90];
    v71 = *(MEMORY[0x277D84F90] + 16);
    if (!v71)
    {
      break;
    }

LABEL_62:
    v72 = 0;
    v73 = (v63 + 48);
    while ((*v73 & 1) != 0)
    {
      ++v72;
      v73 += 24;
      if (v71 == v72)
      {
        goto LABEL_70;
      }
    }

    if (v71 >= v72)
    {
      goto LABEL_69;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v19 = sub_223B7BC38(0, *(v19 + 16) + 1, 1, v19);
  }

LABEL_67:
  v72 = 0;
LABEL_69:
  v74 = v71 - v72;
  if (!v74)
  {
LABEL_70:
    v75 = v103;
    *v103 = 0xD000000000000016;
    v75[1] = 0x8000000223C03DA0;
    *&v120 = 0xD000000000000016;
    *(&v120 + 1) = 0x8000000223C03DA0;
    goto LABEL_73;
  }

  if (v74 <= 1)
  {
    v81 = v109;
    v82 = (v109 + v97[14]);
    v83 = v118;
    *v82 = v117;
    v82[1] = v83;
    v84 = sub_223BF47EC();
    v85 = *(v84 - 8);
    v117 = *(v85 + 56);
    v118 = (v85 + 56);
    v86 = v99;
    (v117)(v99, 1, 1, v84);
    v87 = v101;
    sub_223B568F8(v81, v101, &qword_27D0B1020, &qword_223BF7688);
    v88 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = 0;
    *(v89 + 24) = 0;
    sub_223B56890(v87, v89 + v88, &qword_27D0B1020, &qword_223BF7688);
    sub_223B525E8(0, 0, v86, &unk_223BF76D8, v89);

    (v117)(v86, 1, 1, v84);
    sub_223B568F8(v81, v87, &qword_27D0B1020, &qword_223BF7688);
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    *(v90 + 24) = 0;
    sub_223B56890(v87, v90 + v88, &qword_27D0B1020, &qword_223BF7688);
    sub_223B525E8(0, 0, v86, &unk_223BF76E8, v90);

    (*(v107 + 8))(v113, v115);
    return (*(v108 + 8))(v114, v112);
  }

  else
  {
    v76 = v103;
    *v103 = 0;
    v76[1] = 0;
    v120 = 0uLL;
LABEL_73:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1080, &qword_223BF76F0);
    sub_223B569C0(&qword_27D0B1088, &qword_27D0B1080, &qword_223BF76F0, &unk_223BF7268);
    swift_willThrowTypedImpl();

    v77 = *(v107 + 8);
    v77(v113, v28);
    v78 = *(v108 + 8);
    v78(v114, v30);
    v79 = v109;
    v78(v109, v30);
    v77(v79 + v102, v28);
  }
}

uint64_t sub_223B51728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = sub_223BF4B9C();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1090, &qword_223BF76F8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B51888, 0, 0);
}

uint64_t sub_223B51888()
{
  v1 = v0[31];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v0[41] = v2;
  v3 = *(v1 + *(v2 + 64));
  v0[42] = v3;
  v0[43] = *(*v3 + 96);

  swift_beginAccess();
  v4 = v0[42];

  return MEMORY[0x2822009F8](sub_223B51940, v4, 0);
}

uint64_t sub_223B51940()
{
  v1 = v0[37];
  sub_223B568F8(v0[42] + v0[43], v1, &qword_27D0B1098, &qword_223BF7700);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  v0[44] = v2;
  v3 = *(v2 - 8);
  v0[45] = v3;
  v4 = *(v3 + 48);
  v0[46] = v4;
  v0[47] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    (*(v0[33] + 56))(v0[40], 1, 1, v0[32]);
  }

  else
  {
    v5 = v0[37];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      return sub_223BF4BEC();
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_223B569C0(&qword_27D0B1128, &qword_27D0B1070, &qword_223BF76C0, &unk_223BF75D0);
      swift_getObjectType();
      v16 = sub_223BF47AC();
      v18 = v17;
      v13 = sub_223B51E18;
      v14 = v16;
      v15 = v18;
      goto LABEL_7;
    }

    v8 = v0[42];
    v7 = v0[43];
    v9 = v0[40];
    v10 = v0[36];
    v11 = v0[32];
    v12 = v0[33];
    (*(v12 + 32))(v9, v5, v11);
    swift_storeEnumTagMultiPayload();
    (*(v3 + 56))(v10, 0, 1, v2);
    swift_beginAccess();
    sub_223B56820(v10, v8 + v7);
    swift_endAccess();
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v13 = sub_223B51C1C;
  v14 = 0;
  v15 = 0;
LABEL_7:

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_223B51C1C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 272), v1, v2);
    *(v0 + 232) = 0;
    *(v0 + 224) = 0;
    *(v0 + 240) = 1;
    v6 = sub_223BF4BBC();
    v7 = sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960], MEMORY[0x277D85968]);
    v8 = swift_task_alloc();
    *(v0 + 384) = v8;
    *v8 = v0;
    v8[1] = sub_223B520B4;
    v9 = *(v0 + 272);

    return MEMORY[0x2822008C8](v9, v0 + 224, v6, v7);
  }
}

uint64_t sub_223B51E18()
{
  v1 = v0[39];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_223B51F64;
  v2 = swift_continuation_init();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[36];
  *v7 = v2;
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v7, 0, 1, v3);
  swift_beginAccess();
  sub_223B56820(v7, v6 + v5);
  swift_endAccess();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_223B51F64()
{
  v1 = *(*v0 + 336);
  sub_223B56890(*(*v0 + 312), *(*v0 + 320), &qword_27D0B1090, &qword_223BF76F8);

  return MEMORY[0x2822009F8](sub_223B52098, v1, 0);
}

uint64_t sub_223B520B4()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_223B52500;
  }

  else
  {
    v2 = sub_223B521C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_223B521C8()
{
  v1 = *(v0[31] + *(v0[41] + 68));
  v0[50] = v1;
  return MEMORY[0x2822009F8](sub_223B521F4, v1, 0);
}

uint64_t sub_223B521F4()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[44];
  v4 = v0[35];
  v5 = *(*v1 + 96);
  swift_beginAccess();
  sub_223B568F8(v1 + v5, v4, &qword_27D0B1098, &qword_223BF7700);
  if (v2(v4, 1, v3) != 1)
  {
    v6 = v0[44];
    v7 = v0[35];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_223B56960(v7, &qword_27D0B1078, &qword_223BF76C8);
        v6 = v0[44];
      }

      v9 = v0[45];
      v10 = v0[36];
      (*(v0[33] + 16))(v10, v0[34], v0[32]);
      swift_storeEnumTagMultiPayload();
      (*(v9 + 56))(v10, 0, 1, v6);
      swift_beginAccess();
      sub_223B56820(v10, v1 + v5);
      swift_endAccess();
    }

    else
    {
      v11 = v0[45];
      v12 = v0[38];
      v13 = v0[36];
      v14 = v0[33];
      v18 = v0[34];
      v15 = v0[32];
      v16 = *v7;
      swift_storeEnumTagMultiPayload();
      (*(v11 + 56))(v13, 0, 1, v6);
      swift_beginAccess();
      sub_223B56820(v13, v1 + v5);
      swift_endAccess();
      (*(v14 + 16))(v12, v18, v15);
      (*(v14 + 56))(v12, 0, 1, v15);
      sub_223B56890(v12, *(*(v16 + 64) + 40), &qword_27D0B1090, &qword_223BF76F8);
      swift_continuation_resume();
    }
  }

  return MEMORY[0x2822009F8](sub_223B52488, 0, 0);
}

uint64_t sub_223B52488()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  v1 = v0[42];

  return MEMORY[0x2822009F8](sub_223B51940, v1, 0);
}

uint64_t sub_223B52500()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_223B525E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1060, &qword_223BF76B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_223B568F8(a3, v22 - v9, &qword_27D0B1060, &qword_223BF76B0);
  v11 = sub_223BF47EC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_223B56960(v10, &qword_27D0B1060, &qword_223BF76B0);
  }

  else
  {
    sub_223BF47DC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_223BF47AC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_223BF455C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223B56960(a3, &qword_27D0B1060, &qword_223BF76B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_223B52894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1090, &qword_223BF76F8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A0, &qword_223BF7708);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = sub_223BF4B9C();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10B0, &qword_223BF7718);
  v4[36] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10B8, &qword_223BF7720);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10C0, &qword_223BF7728);
  v4[43] = v10;
  v4[44] = *(v10 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10C8, &qword_223BF7730);
  v4[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10D0, &qword_223BF7738);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B52CB4, 0, 0);
}

uint64_t sub_223B52CB4()
{
  v1 = v0[49];
  v22 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[39];
  v20 = v0[37];
  v21 = v0[43];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[20];
  v12 = *(v10 + 56);
  v0[50] = v12;
  v0[51] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v1, 1, 1, v9);
  (*(v6 + 16))(v4, v11, v5);
  sub_223B569C0(&qword_27D0B1058, &qword_27D0B1018, &qword_223BF7680, MEMORY[0x277D85A00]);
  sub_223BF4BDC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v0[52] = v13;
  v0[17] = *(v11 + *(v13 + 68));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10D8, &qword_223BF7750);
  sub_223B569C0(&qword_27D0B10E0, &qword_27D0B10D8, &qword_223BF7750, &unk_223BF7530);
  sub_223BF4BDC();
  v14 = MEMORY[0x277D85990];
  sub_223B569C0(&qword_27D0B10E8, &qword_27D0B10C0, &qword_223BF7728, MEMORY[0x277D85990]);
  sub_223B569C0(&qword_27D0B10F0, &qword_27D0B10B8, &qword_223BF7720, v14);
  sub_223BF440C();
  (*(v7 + 8))(v8, v20);
  (*(v3 + 8))(v2, v21);
  v15 = sub_223BF438C();
  v0[53] = v15;
  sub_223B56960(v22, &qword_27D0B10C8, &qword_223BF7730);
  v0[16] = v15;
  v16 = swift_task_alloc();
  v0[54] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v16 = v0;
  v16[1] = sub_223B52FE0;
  v18 = v0[36];

  return MEMORY[0x282141C10](v18, v17);
}

uint64_t sub_223B52FE0()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_223B53914;
  }

  else
  {
    v2 = sub_223B530F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_223B530F4()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 272) + 48))(v1, 1, *(v0 + 264)) == 1)
  {
    v2 = *(v0 + 392);

    sub_223B56960(v2, &qword_27D0B10D0, &qword_223BF7738);

    v3 = *(v0 + 8);

    return v3();
  }

  sub_223B56890(v1, *(v0 + 280), &qword_27D0B10A8, &qword_223BF7710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v0 + 384);
    v6 = *(v0 + 392);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    (*(*(v0 + 232) + 32))(*(v0 + 256), *(v0 + 280), *(v0 + 224));
    sub_223B568F8(v6, v5, &qword_27D0B10D0, &qword_223BF7738);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      v9 = *(v0 + 384);
      (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
      sub_223B56960(v9, &qword_27D0B10D0, &qword_223BF7738);
LABEL_8:
      v10 = swift_task_alloc();
      *(v0 + 432) = v10;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
      *v10 = v0;
      v10[1] = sub_223B52FE0;
      v12 = *(v0 + 288);

      return MEMORY[0x282141C10](v12, v11);
    }

    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 224);
    sub_223B56890(*(v0 + 384), *(v0 + 216), &qword_27D0B10A0, &qword_223BF7708);
    sub_223BF4BBC();
    sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960], MEMORY[0x277D85968]);
    sub_223BF4DFC();
    sub_223B56AAC(&qword_27D0B1110, MEMORY[0x277D85938], MEMORY[0x277D85948]);
    v24 = sub_223BF44DC();
    v25 = *(v22 + 8);
    *(v0 + 504) = v25;
    *(v0 + 512) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v21, v23);
    if ((v24 & 1) == 0)
    {
      sub_223B56AAC(&qword_27D0B1118, MEMORY[0x277D85938], MEMORY[0x277D85950]);
      if ((sub_223BF452C() & 1) == 0)
      {
        v42 = *(v0 + 256);
        v43 = *(v0 + 224);
        sub_223B56960(*(v0 + 216), &qword_27D0B10A0, &qword_223BF7708);
        v25(v42, v43);
        goto LABEL_8;
      }
    }

    v26 = *(v0 + 392);
    v27 = *(v0 + 400);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v30 = *(v0 + 208);
    v31 = *(v0 + 192);
    sub_223B56960(v26, &qword_27D0B10D0, &qword_223BF7738);
    sub_223B568F8(v29, v30, &qword_27D0B10A0, &qword_223BF7708);
    v32 = *(v31 + 48);
    *(v0 + 105) = *v30;
    v25(&v30[v32], v28);
    v27(v26, 1, 1, v31);
    v33 = swift_task_alloc();
    *(v0 + 520) = v33;
    *v33 = v0;
    v33[1] = sub_223B54084;
    v20 = v0 + 105;
    goto LABEL_16;
  }

  v13 = *(v0 + 416);
  v14 = *(v0 + 160);
  v15 = **(v0 + 280);
  *(v0 + 106) = v15;
  (*(v14 + *(v13 + 56)))(v0 + 106);
  if (*(v0 + 104))
  {
    v16 = *(v0 + 392);
    v17 = *(v0 + 400);
    v18 = *(v0 + 192);
    sub_223B56960(v16, &qword_27D0B10D0, &qword_223BF7738);
    v17(v16, 1, 1, v18);
    v19 = swift_task_alloc();
    *(v0 + 496) = v19;
    *v19 = v0;
    v19[1] = sub_223B53ED4;
    v20 = v0 + 106;
LABEL_16:

    return MEMORY[0x282141C80](v20);
  }

  v34 = *(v0 + 392);
  v47 = *(v0 + 416);
  v48 = *(v0 + 400);
  v35 = *(v0 + 240);
  v37 = *(v0 + 224);
  v36 = *(v0 + 232);
  v46 = *(v0 + 192);
  v44 = *(v0 + 248);
  v45 = *(v0 + 160);
  *(v0 + 112) = *(v0 + 88);
  sub_223BF4BBC();
  sub_223B56AAC(&qword_27D0B1108, MEMORY[0x277D85960], MEMORY[0x277D85968]);
  sub_223BF4DFC();
  sub_223B56AAC(&qword_27D0B1120, MEMORY[0x277D85938], MEMORY[0x277D85958]);
  sub_223BF4B8C();
  v38 = *(v36 + 8);
  *(v0 + 456) = v38;
  *(v0 + 464) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v35, v37);
  sub_223B56960(v34, &qword_27D0B10D0, &qword_223BF7738);
  v39 = *(v46 + 48);
  *v34 = v15;
  v40 = *(v36 + 16);
  *(v0 + 472) = v40;
  *(v0 + 480) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(&v34[v39], v44, v37);
  v48(v34, 0, 1, v46);
  v41 = *(v45 + *(v47 + 64));
  *(v0 + 488) = v41;

  return MEMORY[0x2822009F8](sub_223B53B54, v41, 0);
}

uint64_t sub_223B53914()
{
  v0[18] = v0[55];
  v0[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_223B539AC, 0, 0);
}

uint64_t sub_223B539AC()
{
  *(v0 + 152) = *(v0 + 440);
  if (sub_223BF4D9C())
  {
  }

  else
  {
    v1 = *(v0 + 440);
    swift_allocError();
    *v2 = v1;
  }

  v3 = *(v0 + 392);

  sub_223B56960(v3, &qword_27D0B10D0, &qword_223BF7738);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_223B53B54()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 184);
  v3 = *(*v1 + 96);
  swift_beginAccess();
  sub_223B568F8(v1 + v3, v2, &qword_27D0B1098, &qword_223BF7700);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1078, &qword_223BF76C8);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v6 = *(v0 + 184);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_223B56960(v6, &qword_27D0B1078, &qword_223BF76C8);
      }

      v8 = *(v0 + 176);
      (*(v0 + 472))(v8, *(v0 + 248), *(v0 + 224));
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v8, 0, 1, v4);
      swift_beginAccess();
      sub_223B56820(v8, v1 + v3);
      swift_endAccess();
    }

    else
    {
      v16 = *(v0 + 472);
      v15 = *(v0 + 248);
      v10 = *(v0 + 224);
      v9 = *(v0 + 232);
      v11 = *(v0 + 168);
      v12 = *(v0 + 176);
      v13 = *v6;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v12, 0, 1, v4);
      swift_beginAccess();
      sub_223B56820(v12, v1 + v3);
      swift_endAccess();
      v16(v11, v15, v10);
      (*(v9 + 56))(v11, 0, 1, v10);
      sub_223B56890(v11, *(*(v13 + 64) + 40), &qword_27D0B1090, &qword_223BF76F8);
      swift_continuation_resume();
    }
  }

  return MEMORY[0x2822009F8](sub_223B53E10, 0, 0);
}

uint64_t sub_223B53E10()
{
  (*(v0 + 456))(*(v0 + 248), *(v0 + 224));
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v1 = v0;
  v1[1] = sub_223B52FE0;
  v3 = *(v0 + 288);

  return MEMORY[0x282141C10](v3, v2);
}

uint64_t sub_223B53ED4()
{

  return MEMORY[0x2822009F8](sub_223B53FD0, 0, 0);
}

uint64_t sub_223B53FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v1 = v0;
  v1[1] = sub_223B52FE0;
  v3 = *(v0 + 288);

  return MEMORY[0x282141C10](v3, v2);
}

uint64_t sub_223B54084()
{

  return MEMORY[0x2822009F8](sub_223B54180, 0, 0);
}

uint64_t sub_223B54180()
{
  v1 = v0[63];
  v2 = v0[32];
  v3 = v0[28];
  sub_223B56960(v0[27], &qword_27D0B10A0, &qword_223BF7708);
  v1(v2, v3);
  v4 = swift_task_alloc();
  v0[54] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10F8, &qword_223BF7758);
  *v4 = v0;
  v4[1] = sub_223B52FE0;
  v6 = v0[36];

  return MEMORY[0x282141C10](v6, v5);
}

uint64_t sub_223B54268(uint64_t a1, uint64_t a2)
{
  v5 = sub_223BF4B9C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 8);

  return v6();
}

uint64_t sub_223B54330()
{
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](0);
  return sub_223BF4EBC();
}

uint64_t sub_223B54374()
{
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](0);
  return sub_223BF4EBC();
}

uint64_t sub_223B543B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_223BF435C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223B54480, 0, 0);
}

uint64_t sub_223B54480()
{
  v31 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  v4(v1, *(v0 + 24), v2);
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == *MEMORY[0x277D29E10] || v5 == *MEMORY[0x277D29E18])
  {
    **(v0 + 16) = v5 == *MEMORY[0x277D29E10];

    v7 = *(v0 + 8);
  }

  else
  {
    if (qword_27D0B0B70 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 48);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = sub_223BF442C();
    __swift_project_value_buffer(v11, qword_27D0B97F8);
    v4(v8, v10, v9);
    v12 = sub_223BF441C();
    v13 = sub_223BF49DC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v18 = 136315138;
      sub_223B56AAC(&qword_27D0B1148, MEMORY[0x277D29E20], MEMORY[0x277D29E28]);
      v19 = sub_223BF4D6C();
      v21 = v20;
      v22 = v17;
      v23 = *(v16 + 8);
      v23(v15, v22);
      v24 = sub_223B54FF0(v19, v21, &v30);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_223B4A000, v12, v13, "Unsupported case in inference notification transformation: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223DF4FD0](v29, -1, -1);
      MEMORY[0x223DF4FD0](v18, -1, -1);
    }

    else
    {

      v25 = v17;
      v23 = *(v16 + 8);
      v23(v15, v25);
    }

    v26 = *(v0 + 56);
    v27 = *(v0 + 32);
    sub_223B56A58();
    swift_allocError();
    swift_willThrow();
    v23(v26, v27);

    v7 = *(v0 + 8);
  }

  return v7();
}

double sub_223B547A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_223BF4BBC();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  v36 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688);
  v17 = MEMORY[0x28223BE20](v31);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v30 = &v30 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1028, &qword_223BF7690);
  v33 = *(v21 - 8);
  v34 = v21;
  MEMORY[0x28223BE20](v21);
  v32 = &v30 - v22;
  sub_223BF437C();
  if (a1 == MEMORY[0x28223BE20](0x636E657265666E69) && a2 == 0xE900000000000065 || (sub_223BF4DAC() & 1) != 0)
  {
    *(a3 + 24) = v11;
    *(a3 + 32) = sub_223B569C0(&qword_27D0B1058, &qword_27D0B1018, &qword_223BF7680, MEMORY[0x277D85A00]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_223BF436C();
    sub_223B56AAC(&qword_27D0B1030, MEMORY[0x277D29E30], MEMORY[0x277D29E38]);
    sub_223BF4D8C();
  }

  else
  {
    if ((a1 != 0xD000000000000014 || 0x8000000223C03D80 != a2) && (sub_223BF4DAC() & 1) == 0)
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 2;
      return result;
    }

    sub_223BF436C();
    sub_223B56AAC(&qword_27D0B1030, MEMORY[0x277D29E30], MEMORY[0x277D29E38]);
    sub_223BF4D8C();
    sub_223BF4BAC();
    v24 = v36;
    (*(v36 + 16))(v14, v16, v11);
    v26 = v37;
    v25 = v38;
    v27 = v35;
    (*(v37 + 16))(v35, v10, v38);
    sub_223B50A98(v14, &unk_283717000, sub_223B54E8C, 0, v27, &v39, v19);
    (*(v26 + 8))(v10, v25);
    (*(v24 + 8))(v16, v11);
    sub_223B56890(v19, v30, &qword_27D0B1020, &qword_223BF7688);
    sub_223B569C0(&qword_27D0B1038, &qword_27D0B1020, &qword_223BF7688, &unk_223BF7300);
    v28 = v32;
    sub_223BF4D8C();
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1040, &qword_223BF76A8);
    *(a3 + 32) = sub_223B569C0(&qword_27D0B1048, &qword_27D0B1040, &qword_223BF76A8, MEMORY[0x277CEF730]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_223B569C0(&qword_27D0B1050, &qword_27D0B1028, &qword_223BF7690, MEMORY[0x277D85A00]);
    v29 = v34;
    sub_223BF482C();
    (*(v33 + 8))(v28, v29);
  }

  *(a3 + 40) = 0;
  return result;
}

char *sub_223B54E8C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = 5000000000000000000;
  if (*result)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_223B54EB0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_223B54ED8, 0, 0);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_223B54FF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223B550BC(v11, 0, 0, 1, a1, a2);
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
    sub_223B56B40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_223B550BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_223B551C8(a5, a6);
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
    result = sub_223BF4ADC();
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

void *sub_223B551C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_223B55214(a1, a2);
  sub_223B55344(&unk_283716FD8);
  return v3;
}

void *sub_223B55214(uint64_t a1, unint64_t a2)
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

  v6 = sub_223B55430(v5, 0);
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

  result = sub_223BF4ADC();
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
        v10 = sub_223BF45CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_223B55430(v10, 0);
        result = sub_223BF4A7C();
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

uint64_t sub_223B55344(uint64_t result)
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

  result = sub_223B554A4(result, v11, 1, v3);
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

void *sub_223B55430(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1150, &qword_223BF7778);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_223B554A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1150, &qword_223BF7778);
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

uint64_t sub_223B5559C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223B56A08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_223B55608(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_223B55608(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223BF4D5C();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1130, &qword_223BF7768);
        v5 = sub_223BF46DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_223B55834(v7, v8, a1, v4);
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
    return sub_223B55710(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_223B55710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v14 = a3;
    v7 = v6;
    v13 = v5;
    v8 = v5;
    while (1)
    {
      v8 -= 24;
      if (*(v5 + 16) == 1)
      {
        if (*(v5 - 8))
        {
          goto LABEL_4;
        }
      }

      else if (*(v5 - 8) & 1) != 0 || (result = sub_223BF4EFC(), (result) || (result = sub_223BF4EEC(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v14 + 1;
        v5 = v13 + 24;
        --v6;
        if (v14 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v9 = *(v5 + 16);
      v10 = *v5;
      *v5 = *v8;
      *(v5 + 16) = *(v8 + 16);
      *(v5 - 24) = v10;
      *(v5 - 8) = v9;
      v5 = v8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_223B55834(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v95 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8++;
      v101 = v9;
      v96 = v10;
      if (v8 < v7)
      {
        break;
      }

LABEL_36:
      v31 = a3[1];
      if (v8 >= v31)
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v8, v10))
      {
        goto LABEL_139;
      }

      if (v8 - v10 >= a4)
      {
        goto LABEL_59;
      }

      v32 = &v10[a4];
      if (__OFADD__(v10, a4))
      {
        goto LABEL_141;
      }

      if (v32 >= v31)
      {
        v32 = a3[1];
      }

      if (v32 < v10)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      if (v8 == v32)
      {
        goto LABEL_59;
      }

      v93 = v6;
      v33 = *a3;
      v34 = *a3 + 24 * v8;
      v35 = (v10 - v8);
      v97 = v32;
      while (2)
      {
        v98 = v34;
        v99 = v8;
        v36 = v35;
        v37 = v34;
        v38 = v34;
        while (1)
        {
          v38 -= 24;
          if (*(v37 + 16) == 1)
          {
            if (*(v37 - 8))
            {
              goto LABEL_46;
            }

            goto LABEL_54;
          }

          if (*(v37 - 8))
          {
            goto LABEL_46;
          }

          v5 = *v37;
          result = sub_223BF4EFC();
          if (result)
          {
            break;
          }

          result = sub_223BF4EEC();
          v9 = v101;
          if ((result & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_54:
          if (!v33)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v39 = *(v37 + 16);
          v40 = *v37;
          *v37 = *v38;
          *(v37 + 16) = *(v38 + 16);
          *(v37 - 24) = v40;
          *(v37 - 8) = v39;
          v37 = v38;
          if (__CFADD__(v36++, 1))
          {
            goto LABEL_46;
          }
        }

        v9 = v101;
LABEL_46:
        v8 = v99 + 1;
        v34 = v98 + 24;
        --v35;
        if (v99 + 1 != v97)
        {
          continue;
        }

        break;
      }

      v8 = v97;
      v6 = v93;
      v10 = v96;
LABEL_59:
      if (v8 < v10)
      {
        goto LABEL_138;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223B56324(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v43 = *(v9 + 2);
      v42 = *(v9 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_223B56324((v42 > 1), v43 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v44;
      v45 = &v9[16 * v43];
      *(v45 + 4) = v10;
      *(v45 + 5) = v8;
      v46 = *v95;
      if (!*v95)
      {
        goto LABEL_148;
      }

      if (v43)
      {
        while (2)
        {
          v5 = v44 - 1;
          if (v44 >= 4)
          {
            v51 = &v9[16 * v44 + 32];
            v52 = *(v51 - 64);
            v53 = *(v51 - 56);
            v57 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            if (v57)
            {
              goto LABEL_125;
            }

            v56 = *(v51 - 48);
            v55 = *(v51 - 40);
            v57 = __OFSUB__(v55, v56);
            v49 = v55 - v56;
            v50 = v57;
            if (v57)
            {
              goto LABEL_126;
            }

            v58 = &v9[16 * v44];
            v60 = *v58;
            v59 = *(v58 + 1);
            v57 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v57)
            {
              goto LABEL_128;
            }

            v57 = __OFADD__(v49, v61);
            v62 = v49 + v61;
            if (v57)
            {
              goto LABEL_131;
            }

            if (v62 >= v54)
            {
              v80 = &v9[16 * v5 + 32];
              v82 = *v80;
              v81 = *(v80 + 1);
              v57 = __OFSUB__(v81, v82);
              v83 = v81 - v82;
              if (v57)
              {
                goto LABEL_135;
              }

              if (v49 < v83)
              {
                v5 = v44 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v50)
              {
                goto LABEL_127;
              }

              v63 = &v9[16 * v44];
              v65 = *v63;
              v64 = *(v63 + 1);
              v66 = __OFSUB__(v64, v65);
              v67 = v64 - v65;
              v68 = v66;
              if (v66)
              {
                goto LABEL_130;
              }

              v69 = &v9[16 * v5 + 32];
              v71 = *v69;
              v70 = *(v69 + 1);
              v57 = __OFSUB__(v70, v71);
              v72 = v70 - v71;
              if (v57)
              {
                goto LABEL_133;
              }

              if (__OFADD__(v67, v72))
              {
                goto LABEL_134;
              }

              if (v67 + v72 < v49)
              {
                goto LABEL_93;
              }

              if (v49 < v72)
              {
                v5 = v44 - 2;
              }
            }
          }

          else
          {
            if (v44 == 3)
            {
              v47 = *(v9 + 4);
              v48 = *(v9 + 5);
              v57 = __OFSUB__(v48, v47);
              v49 = v48 - v47;
              v50 = v57;
              goto LABEL_79;
            }

            v73 = &v9[16 * v44];
            v75 = *v73;
            v74 = *(v73 + 1);
            v57 = __OFSUB__(v74, v75);
            v67 = v74 - v75;
            v68 = v57;
LABEL_93:
            if (v68)
            {
              goto LABEL_129;
            }

            v76 = &v9[16 * v5];
            v78 = *(v76 + 4);
            v77 = *(v76 + 5);
            v57 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v57)
            {
              goto LABEL_132;
            }

            if (v79 < v67)
            {
              break;
            }
          }

          v84 = v5 - 1;
          if (v5 - 1 >= v44)
          {
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
            __break(1u);
LABEL_131:
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
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v10 = v8;
          v85 = *&v9[16 * v84 + 32];
          v86 = *&v9[16 * v5 + 40];
          sub_223B55F84((*a3 + 24 * v85), (*a3 + 24 * *&v9[16 * v5 + 32]), *a3 + 24 * v86, v46);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_223B56310(v9);
          }

          if (v84 >= *(v9 + 2))
          {
            goto LABEL_124;
          }

          v87 = &v9[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          result = sub_223B56284(v5);
          v44 = *(v9 + 2);
          v8 = v10;
          if (v44 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_111;
      }
    }

    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v13 = *(v12 + 16);
    v14 = *(*a3 + 24 * v10 + 16);
    if (v13 == 1)
    {
      if (v14)
      {
        v15 = 0;
LABEL_10:
        v8 = v10 + 2;
        if ((v10 + 2) < v7)
        {
          v16 = v11 + 24 * v10 + 32;
          v17 = v16;
          while (1)
          {
            v18 = *(v17 + 24);
            v17 += 24;
            v5 = v18;
            v19 = *(v16 + 32);
            v20 = *(v16 + 8);
            if (v19 != 1)
            {
              break;
            }

            if ((v20 & 1) == 0)
            {
              goto LABEL_18;
            }

            if (v15)
            {
              goto LABEL_29;
            }

LABEL_13:
            ++v8;
            v16 = v17;
            if (v7 == v8)
            {
              v8 = v7;
              goto LABEL_28;
            }
          }

          if (v20)
          {
LABEL_18:
            result = v19 & (v20 ^ 1u);
          }

          else
          {
            result = sub_223BF4EFC();
            if (result)
            {
              v9 = v101;
              v10 = v96;
              if (v15)
              {
                goto LABEL_29;
              }

              goto LABEL_13;
            }

            result = sub_223BF4EEC();
            v9 = v101;
            v10 = v96;
          }

          if ((v15 ^ result))
          {
            goto LABEL_28;
          }

          goto LABEL_13;
        }

LABEL_28:
        if (v15)
        {
LABEL_29:
          if (v8 < v10)
          {
            goto LABEL_140;
          }

          if (v10 < v8)
          {
            v21 = 0;
            v22 = 24 * v8;
            v23 = 24 * v10;
            v24 = v10;
            while (1)
            {
              if (v24 != &v8[v21 - 1])
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_146;
                }

                v26 = (v25 + v23);
                v27 = v25 + v22;
                v28 = *(v26 + 16);
                v29 = *v26;
                v30 = *(v27 - 8);
                *v26 = *(v27 - 24);
                *(v26 + 2) = v30;
                *(v27 - 24) = v29;
                *(v27 - 8) = v28;
              }

              ++v24;
              --v21;
              v22 -= 24;
              v23 += 24;
              if (v24 >= &v8[v21])
              {
                goto LABEL_36;
              }
            }
          }
        }

        goto LABEL_36;
      }
    }

    else if ((v14 & 1) == 0)
    {
      v5 = *(v12 + 8);
      result = sub_223BF4EFC();
      if (result)
      {
        v15 = 0;
      }

      else
      {
        result = sub_223BF4EEC();
        v15 = result;
      }

      goto LABEL_10;
    }

    v15 = v13 & (v14 ^ 1);
    goto LABEL_10;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_111:
  v5 = a3;
  v10 = *v95;
  if (!*v95)
  {
    goto LABEL_149;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_143:
    result = sub_223B56310(v9);
    v9 = result;
  }

  v88 = *(v9 + 2);
  if (v88 < 2)
  {
  }

  while (*v5)
  {
    v89 = v9;
    v9 = (v88 - 1);
    v90 = *&v89[16 * v88];
    v91 = *&v89[16 * v88 + 24];
    sub_223B55F84((*v5 + 24 * v90), (*v5 + 24 * *&v89[16 * v88 + 16]), *v5 + 24 * v91, v10);
    if (v6)
    {
    }

    if (v91 < v90)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_223B56310(v89);
    }

    if (v88 - 2 >= *(v89 + 2))
    {
      goto LABEL_137;
    }

    v92 = &v89[16 * v88];
    *v92 = v90;
    *(v92 + 1) = v91;
    result = sub_223B56284(v88 - 1);
    v9 = v89;
    v88 = *(v89 + 2);
    if (v88 <= 1)
    {
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_223B55F84(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  v32 = a3;
  if (v8 >= v10)
  {
    v19 = 24 * v10;
    if (a4 != __dst || &__dst[v19] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      a3 = v32;
    }

    v12 = &v4[v19];
    if (v9 < 24 || v5 <= v6)
    {
LABEL_40:
      v18 = v5;
      goto LABEL_41;
    }

    while (1)
    {
      v20 = 0;
      v21 = v12;
      v31 = v5 - 24;
      while (v21[v20 - 8] == 1)
      {
        if ((*(v5 - 8) & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_33:
        if ((a3 + v20) != &v21[v20])
        {
          v25 = a3 + v20 - 24;
          v26 = *&v21[v20 - 24];
          *(v25 + 16) = *&v21[v20 - 8];
          *v25 = v26;
        }

        v20 -= 24;
        v12 = &v21[v20];
        if (&v21[v20] <= v4)
        {
          goto LABEL_40;
        }
      }

      if (*(v5 - 8))
      {
        goto LABEL_33;
      }

      v22 = a3;
      v23 = sub_223BF4EFC();
      a3 = v22;
      if (v23)
      {
        goto LABEL_33;
      }

      v24 = sub_223BF4EEC();
      a3 = v22;
      if ((v24 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_35:
      v27 = (a3 + v20);
      a3 = a3 + v20 - 24;
      v18 = v5 - 24;
      if (v27 != v5)
      {
        v28 = *v31;
        *(a3 + 16) = *(v5 - 1);
        *a3 = v28;
      }

      v12 = &v21[v20];
      if (&v21[v20] > v4)
      {
        v5 -= 24;
        if (v31 > v6)
        {
          continue;
        }
      }

      v12 = &v21[v20];
      goto LABEL_41;
    }
  }

  v11 = 24 * v8;
  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, v11);
    a3 = v32;
  }

  v12 = &v4[v11];
  if (v7 >= 24 && v5 < a3)
  {
    do
    {
      if (v5[16] == 1)
      {
        if (v4[16])
        {
          goto LABEL_15;
        }
      }

      else if (v4[16] & 1) != 0 || (v15 = sub_223BF4EFC(), a3 = v32, (v15) || (v16 = sub_223BF4EEC(), a3 = v32, (v16 & 1) == 0))
      {
LABEL_15:
        v13 = v4;
        v14 = v6 == v4;
        v4 += 24;
        if (v14)
        {
          goto LABEL_17;
        }

LABEL_16:
        v17 = *v13;
        *(v6 + 2) = *(v13 + 2);
        *v6 = v17;
        goto LABEL_17;
      }

      v13 = v5;
      v14 = v6 == v5;
      v5 += 24;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 += 24;
    }

    while (v4 < v12 && v5 < a3);
  }

  v18 = v6;
LABEL_41:
  v29 = 24 * ((v12 - v4) / 24);
  if (v18 != v4 || v18 >= &v4[v29])
  {
    memmove(v18, v4, v29);
  }

  return 1;
}

uint64_t sub_223B56284(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_223B56310(v3);
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

char *sub_223B56324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1138, &qword_223BF7770);
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

uint64_t sub_223B5642C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_223B56CF0;

  return sub_223B51728(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1018, &qword_223BF7680);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[15];
  v7 = sub_223BF4BBC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_223B5669C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1020, &qword_223BF7688) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_223B4D6F4;

  return sub_223B52894(a1, v6, v7, v1 + v5);
}

uint64_t sub_223B56798(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B10A8, &qword_223BF7710);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_223B56820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1098, &qword_223BF7700);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223B56890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_223B568F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_223B56960(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_223B569C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_223B56A58()
{
  result = qword_27D0B1140;
  if (!qword_27D0B1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1140);
  }

  return result;
}

uint64_t sub_223B56AAC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223B56B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for CanonicalNotificationStreamBuilder.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CanonicalNotificationStreamBuilder.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_223B56C9C()
{
  result = qword_27D0B1158;
  if (!qword_27D0B1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1158);
  }

  return result;
}

uint64_t sub_223B56CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    sub_223B57C94(0, v2, 0);
    v24 = v26;
    v4 = a1 + 64;
    result = sub_223BF4A3C();
    v5 = result;
    v6 = 0;
    v25 = *(a1 + 36);
    v22 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = sub_223BF453C();
      v10 = sub_223B579B8(v9);

      v11 = v24;
      v13 = *(v24 + 16);
      v12 = *(v24 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_223B57C94((v12 > 1), v13 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = v23;
      *(v14 + 40) = v10;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v15 = *(a1 + 64 + 8 * v8);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v24 = v11;
      if (v25 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v8 << 6;
        v18 = v8 + 1;
        v19 = (a1 + 72 + 8 * v8);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_223B5AC98(v5, v25, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_223B5AC98(v5, v25, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v22)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_223B56F7C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v5);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_223BF449C();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v15, v9);
    sub_223BF449C();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_223B57214@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a8;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v10 = type metadata accessor for TaglessUnion(0, v19);
  v18 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  sub_223B57430(a1, v19);
  sub_223BF486C();
  if (v8)
  {

    sub_223B57430(a1, v19);
    sub_223BF486C();
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_storeEnumTagMultiPayload();
    v13 = v15;
  }

  return (*(v18 + 32))(v20, v13, v10);
}

uint64_t sub_223B57430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_223B57494()
{
  result = qword_27D0B1160;
  if (!qword_27D0B1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1160);
  }

  return result;
}

uint64_t sub_223B57514(uint64_t a1)
{
  v2 = *v1 >> 61;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return sub_223BF479C();
    }

    if (v2 == 4)
    {
      sub_223B5A61C();

      sub_223BF472C();
    }

    else
    {
      sub_223B5A61C();

      sub_223BF446C();
    }
  }

  if (!v2)
  {

    sub_223BF45BC();
  }

  if (v2 == 1)
  {
    return sub_223BF48BC();
  }

  else
  {
    return sub_223BF485C();
  }
}

uint64_t sub_223B5766C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  sub_223B57430(a1, v13);
  v6 = sub_223BF457C();
  if (v2)
  {
    swift_deallocUninitializedObject();

    v8 = swift_allocObject();
    sub_223B57430(a1, v13);
    v11 = sub_223BF48AC();
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *(v8 + 16) = v11;
    *a2 = v8 | 0x2000000000000000;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    *(v5 + 16) = v9;
    *(v5 + 24) = v10;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_223B579B8(__n128 a1)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 <= 2)
  {
    if (v3)
    {
      v4 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      if (v3 == 1)
      {

        return sub_223BF489C();
      }

      else
      {
        a1.n128_u64[0] = *(v4 + 16);

        return MEMORY[0x28211EAC0](a1);
      }
    }

    v10 = sub_223BF453C();
LABEL_15:
    v11 = v10;

    return v11;
  }

  v6 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 != 3)
  {
    if (v3 != 4)
    {

      v13 = sub_223B56CF4(v12);

      if (*(v13 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
        v14 = sub_223BF4C1C();
      }

      else
      {
        v14 = MEMORY[0x277D84F98];
      }

      v17 = v14;

      sub_223B5A0F4(v15, 1, &v17);

      type metadata accessor for CFString();
      sub_223B5AC4C();
      sub_223B4CBF4(&qword_27D0B0B80, &unk_223BF71A4);
      v16 = sub_223BF444C();

      return v16;
    }

    v7 = *(*(v6 + 16) + 16);
    if (v7)
    {
      v17 = MEMORY[0x277D84F90];

      sub_223BF4B2C();
      v9 = 32;
      do
      {
        sub_223B579B8(v8);
        sub_223BF4AFC();
        sub_223BF4B3C();
        sub_223BF4B4C();
        sub_223BF4B0C();
        v9 += 8;
        --v7;
      }

      while (v7);
    }

    sub_223B5AC4C();
    v10 = sub_223BF467C();
    goto LABEL_15;
  }

  return sub_223BF477C();
}

char *sub_223B57C74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B57F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57C94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B580A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57CB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B581E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57CD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B5832C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57CF4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57D14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11D0, &qword_223BF7C58, &qword_27D0B11D8, &qword_223BF7C60);
  *v3 = result;
  return result;
}

void *sub_223B57D54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11E0, &qword_223BF7C68, &qword_27D0B11E8, &qword_223BF7C70);
  *v3 = result;
  return result;
}

void *sub_223B57D94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B11F0, &qword_223BF7C78, &qword_27D0B11F8, &qword_223BF7C80);
  *v3 = result;
  return result;
}

void *sub_223B57DD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_223B57DF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1238, &unk_223BF7CC0, &qword_27D0B1240, &qword_223BFA860);
  *v3 = result;
  return result;
}

void *sub_223B57E34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1248, &unk_223BF7CD0, &qword_27D0B1250, &unk_223BF7F40);
  *v3 = result;
  return result;
}

void *sub_223B57E74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58698(a1, a2, a3, *v3, &qword_27D0B1258, &unk_223BF7CE0, &qword_27D0B1260, &qword_223BFA7F0);
  *v3 = result;
  return result;
}

void *sub_223B57EB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58884(a1, a2, a3, *v3, &qword_27D0B1218, &qword_223BF7CA0, &qword_27D0B1220, &qword_223BF7CA8);
  *v3 = result;
  return result;
}

void *sub_223B57EF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58884(a1, a2, a3, *v3, &qword_27D0B1200, &qword_223BF7C88, &qword_27D0B1208, &qword_223BF7C90);
  *v3 = result;
  return result;
}

char *sub_223B57F34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B589BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_223B58BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_223B57F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1270, &qword_223BF7CF8);
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
  v14 = 24 * v8;
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

void *sub_223B580A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1198, &qword_223BF7C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A0, &qword_223BF7C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223B581E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12C0, &qword_223BF7D40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12C8, &qword_223BF7D48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223B5832C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12D0, &qword_223BF7D50);
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

char *sub_223B58450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1210, &qword_223BF7C98);
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

void *sub_223B58560(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12A8, &qword_223BF7D28);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B0, &unk_223BF7D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223B58698(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_223B58884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

char *sub_223B589BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12A0, &qword_223BF7D20);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_223B58ADC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12D8, &qword_223BF7D58);
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

char *sub_223B58BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12E0, &unk_223BF7D60);
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

uint64_t sub_223B58CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1188, &unk_223BF7C10);
  v32 = v4;
  result = sub_223BF4C0C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      sub_223BF4E8C();
      type metadata accessor for CFString();
      sub_223B4CBF4(&qword_27D0B1190, &unk_223BF7178);
      sub_223BF433C();
      result = sub_223BF4EBC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_223B58FAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
  v34 = v4;
  result = sub_223BF4C0C();
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

      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
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

uint64_t sub_223B59254(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1268, &qword_223BF7CF0);
  result = sub_223BF4C0C();
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

      result = sub_223BF4E7C();
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

uint64_t sub_223B594E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11A8, &unk_223BF7C30);
  v34 = v4;
  result = sub_223BF4C0C();
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

      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
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

uint64_t sub_223B597D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v44 = a3;
  v45 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v40 - v12;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v43 = v10;
  result = sub_223BF4C0C();
  v16 = result;
  if (*(v14 + 16))
  {
    v41 = v9;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(*(v14 + 48) + 4 * v28);
      v30 = *(v42 + 72);
      v31 = *(v14 + 56) + v30 * v28;
      if (v43)
      {
        sub_223B56890(v31, v13, v44, v45);
      }

      else
      {
        sub_223B568F8(v31, v13, v44, v45);
      }

      result = MEMORY[0x223DF36A0](*(v16 + 40), v29, 4);
      v32 = -1 << *(v16 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 4 * v24) = v29;
      result = sub_223B56890(v13, *(v16 + 56) + v30 * v24, v44, v45);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v9 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v14 + 32);
    v9 = v41;
    if (v39 >= 64)
    {
      bzero((v14 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v39;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

uint64_t sub_223B59B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v48 = a3;
  v49 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v46 = v10;
  result = sub_223BF4C0C();
  v15 = result;
  if (*(v13 + 16))
  {
    v43 = v6;
    v44 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v45 + 72);
      v34 = v29 + v33 * v28;
      if (v46)
      {
        sub_223B56890(v34, v47, v48, v49);
      }

      else
      {
        sub_223B568F8(v34, v47, v48, v49);
      }

      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v31;
      v24[1] = v32;
      result = sub_223B56890(v47, *(v15 + 56) + v33 * v23, v48, v49);
      ++*(v15 + 16);
      v13 = v44;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_223B59E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1298, &unk_223BFAF60);
  result = sub_223BF4C0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v20 = *(*(v5 + 48) + 4 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = MEMORY[0x223DF36A0](*(v7 + 40), v20, 4);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_223B5A0F4(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = a1[5];
  v8 = *a3;
  v9 = a1[4];
  v10 = v7;
  v11 = sub_223B6F894(v9);
  v13 = v8[2];
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
  if (v8[3] < v16)
  {
    sub_223B58CE8(v16, v6 & 1);
    v11 = sub_223B6F894(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for CFString();
    v11 = sub_223BF4DEC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_223B6F9A4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_223BF4AAC();
    MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
    type metadata accessor for CFString();
    sub_223BF4BCC();
    MEMORY[0x223DF2DE0](39, 0xE100000000000000);
    sub_223BF4BEC();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 7);
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_223B6F894(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_223B58CE8(v32, 1);
        v28 = sub_223B6F894(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_223B5A45C(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v3 >> 61 != 4)
        {
          goto LABEL_26;
        }

        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_223B5AEC4(v6, v7);
      }

      else
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_26;
        }

        v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_223B5B03C(v11, v12);
      }

      v13 = v8;

      return v13 & 1;
    }

    if (v3 >> 61 == 3)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
      return v5 & 1;
    }

LABEL_26:
    v5 = 0;
    return v5 & 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        return v5 & 1;
      }

      goto LABEL_26;
    }

    if (v3 >> 61 != 2 || *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_22:
    v5 = 1;
    return v5 & 1;
  }

  if (v3 >> 61)
  {
    goto LABEL_26;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    goto LABEL_22;
  }

  return sub_223BF4DAC();
}

unint64_t sub_223B5A61C()
{
  result = qword_27D0B1168;
  if (!qword_27D0B1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1168);
  }

  return result;
}

unint64_t sub_223B5A670()
{
  result = qword_281339630;
  if (!qword_281339630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339630);
  }

  return result;
}

unint64_t sub_223B5A6C4()
{
  result = qword_27D0B1170;
  if (!qword_27D0B1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1170);
  }

  return result;
}

unint64_t sub_223B5A71C()
{
  result = qword_27D0B1178;
  if (!qword_27D0B1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1178);
  }

  return result;
}

uint64_t sub_223B5A780(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B5A7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_223B5A924(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B5AB04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_223B5AB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_223B5ABF8()
{
  result = qword_27D0B1180;
  if (!qword_27D0B1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1180);
  }

  return result;
}

unint64_t sub_223B5AC4C()
{
  result = qword_2813392E0;
  if (!qword_2813392E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813392E0);
  }

  return result;
}

uint64_t sub_223B5AC98(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_223B5ACC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v16 - v6);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    sub_223B57D94(0, v8, 0);
    v9 = v18;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0) - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    while (1)
    {
      sub_223B7B440(v11, &v17, v7);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v18 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_223B57D94((v13 > 1), v14 + 1, 1);
        v9 = v18;
      }

      *(v9 + 16) = v14 + 1;
      sub_223B56890(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, &qword_27D0B11F8, &qword_223BF7C80);
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_223B5AEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = sub_223B57510();

        --v2;
      }

      while ((v5 & 1) != 0 && v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_223B5AF84(uint64_t result, uint64_t a2)
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

uint64_t sub_223B5AFE0(uint64_t result, uint64_t a2)
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

uint64_t sub_223B5B03C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = (*(v2 + 48) + 16 * (v8 | (v3 << 6)));
    v13 = *v11;
    v12 = v11[1];

    if (!v12)
    {
      return 1;
    }

    sub_223B6F81C(v13, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v16 = sub_223B57510();

    if ((v16 & 1) == 0)
    {
      return 0;
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

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_223B5B1C4(uint64_t a1, unint64_t a2)
{

  v4 = sub_223B5E000(4, a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12 = v6 >> 14;
  v13 = v4 >> 14;
  if (v4 >> 14 == v6 >> 14)
  {

    return 0;
  }

  LODWORD(v14) = 0;
  v15 = (v8 >> 59) & 1;
  if ((v10 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  v17 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v10) & 0xF;
  }

  v26 = v17;
  while (1)
  {
    v18 = v4 & 0xC;
    v19 = (v4 & 1) == 0 || v18 == v16;
    v20 = v19;
    if (v19)
    {
      break;
    }

    if (v4 >> 14 < v13)
    {
      goto LABEL_53;
    }

    result = v4;
    if (v4 >> 14 >= v12)
    {
      goto LABEL_53;
    }

LABEL_26:
    if ((v10 & 0x1000000000000000) != 0)
    {
      result = sub_223BF4A9C();
      v21 = result;
      if (!v20)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v10 & 0x2000000000000000) != 0)
      {
        v27 = v8;
        v28 = v10 & 0xFFFFFFFFFFFFFFLL;
      }

      else if ((v8 & 0x1000000000000000) == 0)
      {
        sub_223BF4ADC();
      }

      result = sub_223BF4AEC();
      v21 = result;
      if (!v20)
      {
LABEL_31:
        if (v26 <= v4 >> 16)
        {
          goto LABEL_55;
        }

LABEL_39:
        if ((v10 & 0x1000000000000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_8;
      }
    }

    if (v18 == v16)
    {
      result = sub_223B80840(v4, v8, v10);
      v4 = result;
    }

    if (v26 <= v4 >> 16)
    {
      goto LABEL_54;
    }

    if (v4)
    {
      goto LABEL_39;
    }

    result = sub_223B808BC(v4, v8, v10);
    v4 = v4 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v10 & 0x1000000000000000) == 0)
    {
LABEL_40:
      v22 = v4 >> 16;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v27 = v8;
        v28 = v10 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v27 + v22);
      }

      else
      {
        result = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v8 & 0x1000000000000000) == 0)
        {
          result = sub_223BF4ADC();
        }

        v23 = *(result + v22);
      }

      v24 = v23;
      v25 = __clz(v23 ^ 0xFF) - 24;
      if (v24 >= 0)
      {
        LOBYTE(v25) = 1;
      }

      v4 = ((v22 + v25) << 16) | 5;
      goto LABEL_9;
    }

LABEL_8:
    result = sub_223BF456C();
    v4 = result;
LABEL_9:
    v14 = v21 | (v14 << 8);
    if (v12 == v4 >> 14)
    {

      return v14;
    }
  }

  result = v4;
  if (v18 == v16)
  {
    result = sub_223B80840(v4, v8, v10);
  }

  if (result >> 14 >= v13 && result >> 14 < v12)
  {
    if ((result & 1) == 0)
    {
      sub_223B808BC(result, v8, v10);
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_223B5B488()
{
  v1 = *v0;
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](v1);
  return sub_223BF4EBC();
}

uint64_t sub_223B5B4D0()
{
  v1 = *v0;
  sub_223BF4E8C();
  MEMORY[0x223DF36D0](v1);
  return sub_223BF4EBC();
}

unint64_t sub_223B5B518()
{
  result = qword_27D0B12E8;
  if (!qword_27D0B12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B12E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphFlavor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GraphFlavor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_223B5B6C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1260, &qword_223BFA7F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_223B568F8(a1, &v14 - v9, &qword_27D0B1228, &unk_223BF7CB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a2 = *v10;
      }

      else
      {
        *a2 = *v10;
      }

      goto LABEL_15;
    }

    *a2 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *v10;
    }

    else
    {
      *a2 = *v10;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = *(v10 + 1);
    *a2 = *v10;
    a2[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  sub_223B56890(v10, v7, &qword_27D0B1260, &qword_223BFA7F0);
  sub_223B7B440(v7, &v15, a2);
  result = sub_223B56960(v7, &qword_27D0B1260, &qword_223BFA7F0);
  if (!v2)
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_223B5B9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v62 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v57[0] = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[1] = v5;
  v63 = v6;
  v7 = type metadata accessor for GraphPropertyValue(0, v6, v5, v5);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v60 = (v57 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v57 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v58 = (v57 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v57 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v57 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (v57 - v25);
  MEMORY[0x28223BE20](v24);
  v59 = v57 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = v57 - v30;
  v66 = v29;
  v32 = (v57 + *(v29 + 48) - v30);
  v64 = v8;
  v33 = *(v8 + 16);
  v33(v57 - v30, a1, v7);
  v34 = v32;
  v33(v32, v67, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v41 = v60;
        v33(v60, v31, v7);
        v42 = *v41;
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_34;
        }

        v43 = sub_223B5B03C(v42, *v32);
      }

      else
      {
        v50 = v61;
        v33(v61, v31, v7);
        v51 = *v50;
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_34;
        }

        v43 = sub_223B5AFE0(v51, *v32);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v37 = v58;
        v33(v58, v31, v7);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_35;
        }

        v38.n128_u32[0] = *v37;
        v39 = *v37 == *v34;
        goto LABEL_13;
      }

      v33(v15, v31, v7);
      v48 = *v15;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_34;
      }

      v43 = sub_223B5AF84(v48, *v32);
    }

    v40 = v43;

LABEL_33:
    (*(v64 + 8))(v31, v7, v38);
    return v40 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v36 = v59;
      v33(v59, v31, v7);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v62 + 8))(v36, v63);
LABEL_35:
        (*(v65 + 8))(v31, v66);
        goto LABEL_36;
      }

      v53 = v62;
      v54 = v63;
      v55 = v57[0];
      (*(v62 + 32))(v57[0], v32, v63);
      v40 = sub_223BF452C();
      v56 = *(v53 + 8);
      v56(v55, v54);
      v56(v36, v54);
      goto LABEL_33;
    }

    v33(v26, v31, v7);
    v45 = *v26;
    v44 = v26[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v45 == *v32 && v44 == v32[1])
      {
      }

      else
      {
        v47 = sub_223BF4DAC();

        if ((v47 & 1) == 0)
        {
          (*(v64 + 8))(v31, v7);
LABEL_36:
          v40 = 0;
          return v40 & 1;
        }
      }

      (*(v64 + 8))(v31, v7);
      v40 = 1;
      return v40 & 1;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33(v23, v31, v7);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_35;
    }

    v39 = *v23 == *v32;
LABEL_13:
    v40 = v39;
    goto LABEL_33;
  }

  v33(v20, v31, v7);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_35;
  }

  v49 = *v20 ^ *v32;
  (*(v64 + 8))(v31, v7);
  v40 = v49 ^ 1;
  return v40 & 1;
}

uint64_t sub_223B5C084(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2[1];
  v7 = *a1 == *a2 && a1[1] == v6;
  if (!v7 && (sub_223BF4DAC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DSPGraphBasicConfiguration.AUPresetOverrideConfig(0, a3, a4, v6);
  return sub_223BF452C() & 1;
}

uint64_t sub_223B5C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_223BF452C() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for DSPGraphBasicConfiguration(0, a3, a4, v8);
  if (*(a1 + *(v9 + 36)) != *(a2 + *(v9 + 36)))
  {
    return 0;
  }

  v10 = v9;
  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DSPGraphBasicConfiguration.AUPresetOverrideConfig(0, a3, a4, v11);
  swift_getWitnessTable();
  if ((sub_223BF474C() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v10 + 52);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  v16 = type metadata accessor for GraphPropertyValue(0, a3, a4, v12);
  WitnessTable = swift_getWitnessTable();
  v18 = MEMORY[0x277D84CC0];
  v19 = MEMORY[0x277D84CD0];

  return MEMORY[0x2821FB928](v14, v15, v18, v16, v19, WitnessTable);
}

uint64_t sub_223B5C2B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_223B5C30C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = sub_223BF471C();
    if (v6 > 0x3F)
    {
      return v4;
    }

    v7 = *(a1 + 24);
    type metadata accessor for DSPGraphBasicConfiguration.AUPresetOverrideConfig(255, v2, v7, v5);
    v4 = sub_223BF471C();
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for GraphPropertyValue(255, v2, v7, v8);
      v2 = sub_223BF445C();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_223B5C42C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
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

_BYTE *sub_223B5C578(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *(v19 + 8) = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((((v8 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_223B5C790(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_223B5CBA0(319, &qword_281339300, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_223B5CB40();
      if (v3 <= 0x3F)
      {
        sub_223B5CBA0(319, &qword_2813392F0, MEMORY[0x277D84CC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_223B5C870(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 248) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 8)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 249;
}