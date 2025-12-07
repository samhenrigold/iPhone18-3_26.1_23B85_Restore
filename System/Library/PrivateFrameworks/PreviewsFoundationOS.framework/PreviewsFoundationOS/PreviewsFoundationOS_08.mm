uint64_t PropertyList.unarchiveOptionalValue<A>(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (!*(v10 + 16))
  {

    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  v15 = sub_25F219234(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  sub_25F1B7118(*(v10 + 56) + 32 * v15, v19);
  sub_25F1B707C(v19, v20);
  *&v19[0] = v10;
  sub_25F253DB0(v20, a1, a2, a3, a4);
  result = __swift_destroy_boxed_opaque_existential_1(v20);
  if (!v5)
  {
    return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
  }

  return result;
}

uint64_t PropertyListRepresentable.init(propertyList:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - v7;
  v31 = v8;
  v33 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v22 = *a1;
  v34[0] = v22;

  if (swift_dynamicCast())
  {

    (*(v16 + 56))(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v21, v15, AssociatedTypeWitness);
    (*(v16 + 16))(v19, v21, AssociatedTypeWitness);
    v23 = v32;
    v24 = v6;
    v25 = v33;
    (*(v31 + 32))(v19, v33);
    if (v23)
    {
      return (*(v16 + 8))(v21, AssociatedTypeWitness);
    }

    (*(v16 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
    (*(v12 + 8))(v15, v11);
    v34[6] = v22;
    v34[3] = MEMORY[0x277D837D0];
    v34[4] = &protocol witness table for String;
    v34[0] = 0x65756C6176;
    v34[1] = 0xE500000000000000;
    v24 = v30;
    v27 = v32;
    v25 = v33;
    PropertyList.unarchiveValue<A>(for:)(v34, v33, v31, v30);
    __swift_destroy_boxed_opaque_existential_1(v34);

    if (v27)
    {
      return result;
    }
  }

  return (*(v28 + 32))(v29, v24, v25);
}

uint64_t sub_25F251ED8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0x65756C6176;
  a1[1] = 0xE500000000000000;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2[3] = AssociatedTypeWitness;
  a2[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v9 = *(*(AssociatedTypeWitness - 8) + 16);

  return v9(boxed_opaque_existential_1, a3, AssociatedTypeWitness);
}

uint64_t sub_25F251FC4@<X0>(void (*a1)(void *, uint64_t *)@<X0>, void *a2@<X8>)
{
  a1(v14, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  v4 = v14[1];
  *(inited + 32) = v14[0];
  *(inited + 40) = v4;
  sub_25F1B7174(v14, &v10, &qword_27FD52C88, &qword_25F308140);
  v5 = v13;
  v6 = v12;
  *(inited + 48) = v11;
  *(inited + 64) = v6;
  *(inited + 80) = v5;

  v7 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  sub_25F1AF698(inited + 32, &qword_27FD52C88, &qword_25F308140);
  v8 = sub_25F252D8C(v7);

  sub_25F252514(v8, &v10);
  result = sub_25F1AF698(v14, &qword_27FD52C88, &qword_25F308140);
  *a2 = v10;
  return result;
}

uint64_t PropertyList.init<A>(content:)@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD567F8, &qword_25F3103C0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  a1(&v24 - v14, &v24 + *(v13 + 48) - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = (*(a3 + 8))(a2, a3);
  *(inited + 40) = v17;
  (*(v9 + 16))(v12, v15, TupleTypeMetadata2);
  v18 = &v12[*(TupleTypeMetadata2 + 48)];
  v19 = *v18;
  v20 = *(v18 + 1);
  *(inited + 80) = *(v18 + 4);
  *(inited + 48) = v19;
  *(inited + 64) = v20;
  (*(*(a2 - 8) + 8))(v12, a2);
  v21 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  sub_25F1AF698(inited + 32, &qword_27FD52C88, &qword_25F308140);
  v22 = sub_25F252D8C(v21);

  sub_25F252514(v22, &v25);
  result = (*(v9 + 8))(v15, TupleTypeMetadata2);
  *a4 = v25;
  return result;
}

uint64_t sub_25F2523C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_25F2523D4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_25F2523E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_25F1B70AC(v2, v3);
}

__n128 sub_25F2523EC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_25F2523F8@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

float sub_25F252404@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_25F252410@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t static PropertyList.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F1B5EF0(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

_OWORD *sub_25F252514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
  result = sub_25F30632C();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v30 = result + 4;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = v15[1];
      v31 = *v15;
      sub_25F1BF03C(*(a1 + 56) + 40 * v14, v40);
      sub_25F1BF03C(v40, &v35);
      v32 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56800, &qword_25F3103C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
      if (swift_dynamicCast())
      {
        sub_25F1A42F8(v33, v37);
        v17 = v4;
        v18 = a1;
        v20 = v38;
        v19 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v21 = v20;
        a1 = v18;
        v4 = v17;
        (*(v19 + 8))(&v35, v21, v19);
        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        sub_25F1AF698(v33, &qword_27FD56808, &qword_25F3103D0);
        v22 = v41;
        v23 = __swift_project_boxed_opaque_existential_1(v40, v41);
        v36 = v22;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
        (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v23, v22);
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      *(v30 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v25 = (v4[6] + 16 * v14);
      *v25 = v31;
      v25[1] = v32;
      result = sub_25F1B707C(&v35, (v4[7] + 32 * v14));
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v4[2] = v28;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        *a2 = v4;
        return result;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PropertyList.init<A, B>(content:)@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v47 = a4;
  v45 = a6;
  v10 = sub_25F305C1C();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - v18;
  a1(&v37 - v18, &v37 + *(v17 + 48) - v18);
  v46 = a5;
  v20 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_25F305C1C();
  v21 = swift_getTupleTypeMetadata2();
  sub_25F3064EC();
  swift_allocObject();
  v22 = sub_25F30527C();
  v24 = v23;
  v38 = *(v21 + 48);
  v39 = v22;
  v25 = *(v47 + 8);
  v43 = a2;
  v26 = v25(a2);
  v27 = v40;
  *v24 = v26;
  v24[1] = v28;
  (*(v48 + 16))(v16, v19, TupleTypeMetadata2);
  v44 = TupleTypeMetadata2;
  (*(v27 + 32))(v12, &v16[*(TupleTypeMetadata2 + 48)], v10);
  v29 = *(v20 - 8);
  if ((*(v29 + 48))(v12, 1, v20) == 1)
  {
    v30 = v43;
    (*(*(v43 - 8) + 8))(v16, v43);
    (*(v27 + 8))(v12, v10);
    (*(*(AssociatedTypeWitness - 8) + 56))(v24 + v38, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v31 = v38;
    (*(v46 + 24))(v20);
    (*(v29 + 8))(v12, v20);
    (*(*(AssociatedTypeWitness - 8) + 56))(v24 + v31, 0, 1, AssociatedTypeWitness);
    v30 = v43;
    (*(*(v43 - 8) + 8))(v16, v43);
  }

  sub_25F1F7314(v39, v21);
  sub_25F1CCBBC(v32, MEMORY[0x277D837D0], v42, MEMORY[0x277D837E0]);

  MEMORY[0x28223BE20](v33);
  *(&v37 - 4) = v30;
  *(&v37 - 3) = v20;
  v34 = v46;
  *(&v37 - 2) = v47;
  *(&v37 - 1) = v34;
  sub_25F304ABC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56800, &qword_25F3103C8);
  v35 = sub_25F30628C();

  sub_25F252514(v35, &v49);
  result = (*(v48 + 8))(v19, v44);
  *v45 = v49;
  return result;
}

uint64_t sub_25F252D8C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
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

  v8 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_25F1B7174(*(a1 + 56) + 40 * v11, v39, &qword_27FD567F8, &qword_25F3103C0);
      *&v38 = v14;
      *(&v38 + 1) = v13;
      v34 = v38;
      v35 = v39[0];
      v36 = v39[1];
      v37 = v40;
      sub_25F1B7174(&v35, &v27, &qword_27FD567F8, &qword_25F3103C0);
      if (v28)
      {
        break;
      }

      sub_25F1AF698(&v34, &qword_27FD56868, &qword_25F310B90);
      result = sub_25F1AF698(&v27, &qword_27FD567F8, &qword_25F3103C0);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_25F1A42F8(&v27, v33);
    v30 = v34;
    v31[0] = v35;
    v31[1] = v36;
    v32 = v37;
    sub_25F1A42F8(v33, v29);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {

      sub_25F21A1F4(v15 + 1, 1);
      v1 = v41;
    }

    else
    {
    }

    v16 = v30;
    sub_25F30671C();
    sub_25F304F0C();
    result = sub_25F30676C();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v17 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v1 + 48) + 16 * v21) = v16;
    sub_25F1A42F8(v29, *(v1 + 56) + 40 * v21);
    ++*(v1 + 16);
    result = sub_25F1AF698(v31, &qword_27FD567F8, &qword_25F3103C0);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25F2530B0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(*(a1 + 56) + 8 * v11);
        if (v12)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v27 = v14[1];
      v28 = *v14;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_25F21A4B8(v15 + 1, 1);
        v2 = v29;
      }

      else
      {
      }

      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v27;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v26 = (*(v2 + 48) + 16 * v20);
      *v26 = v28;
      v26[1] = v21;
      *(*(v2 + 56) + 8 * v20) = v12;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    v23 = (63 - v17) >> 6;
    v21 = v27;
    while (++v19 != v23 || (v22 & 1) == 0)
    {
      v24 = v19 == v23;
      if (v19 == v23)
      {
        v19 = 0;
      }

      v22 |= v24;
      v25 = *(v16 + 8 * v19);
      if (v25 != -1)
      {
        v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25F253300(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550E8, &unk_25F310BB0);
    v2 = sub_25F30634C();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56878, &qword_25F310B98);
        v26 = sub_25F267BBC();
        *&v24 = v18;
        sub_25F1A42F8(&v24, v28);
        sub_25F1A42F8(v28, v29);
        sub_25F1A42F8(v29, &v27);

        result = sub_25F219234(v17, v16);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 40 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_25F1A42F8(&v27, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v17;
          v20[1] = v16;
          result = sub_25F1A42F8(&v27, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t PropertyList.archiveValue<A>(_:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_25F305C1C();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v45 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  (*(v8 + 16))(v10, a1, v7);
  v20 = *(a3 - 8);
  v21 = 1;
  if ((*(v20 + 48))(v10, 1, a3) == 1)
  {
    a3 = v7;
  }

  else
  {
    (*(a4 + 24))(a3, a4);
    v21 = 0;
    v8 = v20;
  }

  (*(v8 + 8))(v10, a3);
  v22 = *(AssociatedTypeWitness - 8);
  v22[7](v19, v21, 1, AssociatedTypeWitness);
  v24 = v47;
  v23 = v48;
  v25 = *(v47 + 16);
  v25(v17, v19, v48);
  v26 = v22[6];
  if ((v26)(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v17, v23);
LABEL_9:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v27 = v45;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v27 = v45;
  if (*(&v50 + 1))
  {
    sub_25F1A42F8(&v49, &v52);
    v28 = v46[3];
    v29 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v28);
    v30 = (*(v29 + 8))(v28, v29);
    v32 = v31;
    v33 = *(&v53 + 1);
    v34 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    (*(v34 + 8))(&v49, v33, v34);
    sub_25F24DE38(&v49, v30, v32);
    (*(v47 + 8))(v19, v48);
    return __swift_destroy_boxed_opaque_existential_1(&v52);
  }

LABEL_10:
  v45 = v22;
  sub_25F1AF698(&v49, &qword_27FD56808, &qword_25F3103D0);
  v36 = v46[3];
  v37 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v36);
  v38 = (*(v37 + 8))(v36, v37);
  v40 = v39;
  v41 = v48;
  v25(v27, v19, v48);
  if ((v26)(v27, 1, AssociatedTypeWitness) == 1)
  {
    v42 = v47;
    (*(v47 + 8))(v27, v41);
    v52 = 0u;
    v53 = 0u;
  }

  else
  {
    *(&v53 + 1) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    v45[4](boxed_opaque_existential_1, v27, AssociatedTypeWitness);
    v42 = v47;
  }

  sub_25F24DE38(&v52, v38, v40);
  return (*(v42 + 8))(v19, v41);
}

uint64_t PropertyList.merging(_:uniquingKeysWith:)@<X0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr, id *, _OWORD *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v10 = *v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25F266750(v9, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, a2, a3);
  result = v10;
  if (v5)
  {
  }

  *a4 = v10;
  return result;
}

PreviewsFoundationOS::PropertyList __swiftcall PropertyList.confidentlyMerging(_:)(PreviewsFoundationOS::PropertyList a1)
{
  v3 = v1;
  v4 = *a1.serializableDictionary._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_25F2670B8(v4, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v8, v5, v4, "confidentlyMerging(_:)", xmmword_25F310320, 22);

  result.serializableDictionary._rawValue = v8;
  *v3 = v8;
  return result;
}

uint64_t PropertyList.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a3)
{
  v6 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  *v3 = 0x8000000000000000;
  sub_25F266750(v6, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, a2, a3);

  *v3 = v9;
  return result;
}

Swift::Void __swiftcall PropertyList.confidentlyMerge(_:)(PreviewsFoundationOS::PropertyList a1)
{
  v2 = *a1.serializableDictionary._rawValue;
  v3 = *v1;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  *v1 = 0x8000000000000000;
  sub_25F2670B8(v2, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v6, v3, v2, "confidentlyMerge(_:)", xmmword_25F310330, 20);

  v5 = v6;

  *v1 = v5;
}

uint64_t sub_25F253DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = *v5;
  v19 = swift_conformsToProtocol2();
  if (AssociatedTypeWitness && (v20 = v19) != 0)
  {
    v29 = a3;
    v30 = a4;
    sub_25F1BF03C(a2, &v35);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    sub_25F1A42F8(&v35, v21 + 24);
    v22 = sub_25F1B7118(a1, v34);
    MEMORY[0x28223BE20](v22);
    *(&v29 - 2) = sub_25F202658;
    *(&v29 - 1) = v21;
    v23 = *(v20 + 16);
    v36 = AssociatedTypeWitness;
    v37 = v20;
    __swift_allocate_boxed_opaque_existential_1(&v35);

    v24 = v38;
    v23(v34, sub_25F267CC4, &v29 - 4, AssociatedTypeWitness, v20);

    if (v24)
    {
      return __swift_deallocate_boxed_opaque_existential_1(&v35);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
    swift_dynamicCast();
    a3 = v29;
    a4 = v30;
    v27 = v33;
  }

  else
  {
    *&v35 = v18;
    v26 = v38;
    result = sub_25F2541EC(a1, a2, AssociatedTypeWitness, v15);
    if (v26)
    {
      return result;
    }

    v27 = v33;
    (*(v33 + 32))(v17, v15, AssociatedTypeWitness);
  }

  v28 = v31;
  (*(v27 + 16))(v31, v17, AssociatedTypeWitness);
  (*(a4 + 32))(v28, a3, a4);
  return (*(v27 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_25F2540F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  sub_25F1BF03C(a4, a5 + 8);
  sub_25F1B7118(a1, a5 + 48);
  sub_25F1B7118(a2, a5 + 80);
  *(a5 + 112) = 2;
}

__n128 sub_25F254168(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *__return_ptr))
{
  (a3)(v10, a1, a2);
  sub_25F202604();
  swift_allocError();
  v3 = v10[3];
  v4 = v10[1];
  v5 = v10[0];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = v3;
  *v6 = v5;
  *(v6 + 16) = v4;
  result = v10[6];
  v8 = v10[5];
  v9 = v10[4];
  *(v6 + 112) = v11;
  *(v6 + 80) = v8;
  *(v6 + 96) = result;
  *(v6 + 64) = v9;
  return result;
}

uint64_t sub_25F2541EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = *v4;
  sub_25F1B7118(a1, v19);
  v13 = swift_dynamicCast();
  v14 = *(*(a3 - 8) + 56);
  if (v13)
  {
    v15 = *(a3 - 8);
    v14(v11, 0, 1, a3);
    return (*(v15 + 32))(a4, v11, a3);
  }

  else
  {
    v14(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    sub_25F202604();
    swift_allocError();
    v18 = v17;
    *v17 = v12;
    sub_25F1BF03C(v20, (v17 + 1));
    sub_25F1B7118(a1, (v18 + 6));
    v18[13] = swift_getMetatypeMetadata();
    v18[10] = a3;
    *(v18 + 112) = 1;
    swift_willThrow();
  }
}

uint64_t sub_25F254428()
{
  sub_25F267A3C(v0, v17);
  if (v21 > 1u)
  {
    if (v21 != 2)
    {
      sub_25F1B707C(v17, v14);
      sub_25F1B707C(&v18, &v15);
      *&v13[0] = 0;
      *(&v13[0] + 1) = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD000000000000044, 0x800000025F3195B0);
      sub_25F30619C();
      MEMORY[0x25F8D7130](0x6D656D206F6E203ALL, 0xAF9D80E220726562);
      sub_25F30619C();
      MEMORY[0x25F8D7130](10322146, 0xA300000000000000);
      v4 = 0;
      goto LABEL_9;
    }

    sub_25F1A42F8((v17 + 8), v14);
    sub_25F1B707C(v19, &v15);
    sub_25F1B707C(v20, v13);
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0x100000000000002ALL, 0x800000025F319600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0x9D80E2203A9D80E2, 0xA800000000000000);
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    swift_getDynamicType();
    v5 = sub_25F30685C();
    MEMORY[0x25F8D7130](v5);

    v6 = 0x1000000000000022;
    v7 = 0x800000025F319630;
LABEL_7:
    MEMORY[0x25F8D7130](v6, v7);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F319660);
    v9 = sub_25F304A7C();
    v11 = v10;

    MEMORY[0x25F8D7130](v9, v11);

    v4 = 0;
    __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(&v15);
    goto LABEL_10;
  }

  if (v21)
  {
    sub_25F1A42F8((v17 + 8), v14);
    sub_25F1B707C(v19, &v15);
    sub_25F1B707C(v20, v13);
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0x1000000000000031, 0x800000025F319680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
    sub_25F30619C();
    MEMORY[0x25F8D7130](0x6C6176203A9D80E2, 0xAF20736177206575);
    __swift_project_boxed_opaque_existential_1(&v15, v16);
    swift_getDynamicType();
    v8 = sub_25F30685C();
    MEMORY[0x25F8D7130](v8);

    v6 = 0x746365707865202CLL;
    v7 = 0xEB00000000206465;
    goto LABEL_7;
  }

  sub_25F1A42F8((v17 + 8), v14);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0x1000000000000030, 0x800000025F3196C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56848, &qword_25F310B78);
  sub_25F30619C();
  MEMORY[0x25F8D7130](0x1000000000000013, 0x800000025F319700);
  v1 = sub_25F304A7C();
  v3 = v2;

  MEMORY[0x25F8D7130](v1, v3);

  v4 = v15;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v4;
}

uint64_t sub_25F254958@<X0>(void *a1@<X0>, void (*a2)(void *, void *)@<X1>, void *a3@<X8>)
{
  sub_25F1B7118(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *a3 = v7[5];
  }

  else
  {
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54970, &unk_25F30C4E0);
    v7[0] = &type metadata for PropertyList;
    a2(a1, v7);
    __swift_destroy_boxed_opaque_existential_1(v7);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_25F254A4C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  *a1 = v3;
}

uint64_t sub_25F254AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25F1C1AC4(sub_25F267B48, v10, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  a4[3] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_25F254B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = *(v6 + 16);
  v8(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 8))(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_25F1AF698(v13, &qword_27FD56808, &qword_25F3103D0);
    a3[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v8)(boxed_opaque_existential_1, a1, a2);
  }
}

uint64_t sub_25F254D18(void *a1, void (*a2)(__int128 *__return_ptr, void *, void *), uint64_t a3)
{
  sub_25F1B7118(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  if (!swift_dynamicCast())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56878, &qword_25F310B98);
    v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56880, &qword_25F310BA0);
    v42[0] = v15;
    a2(&v34, a1, v42);
    sub_25F202604();
    swift_allocError();
    v16 = v37;
    v18 = v34;
    v17 = v35;
    *(v19 + 32) = v36;
    *(v19 + 48) = v16;
    *v19 = v18;
    *(v19 + 16) = v17;
    v20 = v40;
    v22 = v38;
    v21 = v39;
    *(v19 + 112) = v41;
    *(v19 + 80) = v21;
    *(v19 + 96) = v20;
    *(v19 + 64) = v22;
    __swift_destroy_boxed_opaque_existential_1(v42);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_13:

    return v3;
  }

  v7 = v42[0];
  v8 = *(v42[0] + 16);
  if (!v8)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);

    return MEMORY[0x277D84F90];
  }

  v30 = a2;
  v31 = a1;
  v42[6] = a3;
  v33 = MEMORY[0x277D84F90];
  result = sub_25F1BD028(0, v8, 0);
  v10 = 0;
  v3 = v33;
  v11 = v7 + 32;
  while (v10 < *(v7 + 16))
  {
    sub_25F1B7118(v11, v42);
    sub_25F1B7118(v42, &v34);
    if (!swift_dynamicCast())
    {
      v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56888, &qword_25F310BA8);
      v32[0] = MEMORY[0x277D84CC0];
      v30(&v34, v42, v32);
      sub_25F202604();
      swift_allocError();
      v23 = v37;
      v25 = v34;
      v24 = v35;
      *(v26 + 32) = v36;
      *(v26 + 48) = v23;
      *v26 = v25;
      *(v26 + 16) = v24;
      v27 = v40;
      v29 = v38;
      v28 = v39;
      *(v26 + 112) = v41;
      *(v26 + 80) = v28;
      *(v26 + 96) = v27;
      *(v26 + 64) = v29;
      __swift_destroy_boxed_opaque_existential_1(v32);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v42);

      goto LABEL_13;
    }

    v12 = v32[0];
    result = __swift_destroy_boxed_opaque_existential_1(v42);
    v33 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_25F1BD028((v13 > 1), v14 + 1, 1);
      v3 = v33;
    }

    ++v10;
    *(v3 + 16) = v14 + 1;
    *(v3 + 4 * v14 + 32) = v12;
    v11 += 32;
    if (v8 == v10)
    {

      __swift_destroy_boxed_opaque_existential_1(v31);

      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F25506C(void *a1, void (*a2)(void *, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25F1B7118(a1, v18);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56850, &qword_25F310B80);
  v11 = swift_dynamicCast();
  if (v11)
  {
    v17[1] = v17;
    v18[0] = v19;
    MEMORY[0x28223BE20](v11);
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a2;
    v16[5] = a3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    v13 = sub_25F267AE4();
    v14 = sub_25F1C1AC4(sub_25F267AC0, v16, v10, a4, v12, v13, MEMORY[0x277D84950], &v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = sub_25F30539C();
    v18[3] = swift_getMetatypeMetadata();
    v18[0] = v14;
    a2(a1, v18);
    __swift_destroy_boxed_opaque_existential_1(v18);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v14;
}

uint64_t sub_25F255224@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X5>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v7 = v6;
  v32 = a3;
  v25 = a6;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_conformsToProtocol2();
  if (!v18 || !a4)
  {
    sub_25F1B7118(a1, v29);
    v22 = swift_dynamicCast();
    v23 = *(v15 + 56);
    if (v22)
    {
      v23(v14, 0, 1, a4);
      v24 = *(v15 + 32);
      v24(v17, v14, a4);
      return (v24)(v25, v17, a4);
    }

    v23(v14, 1, 1, a4);
    (*(v11 + 8))(v14, v10);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v29[0] = a4;
    v7 = v27(a1, v29);
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = swift_willThrow();
    goto LABEL_8;
  }

  v19 = v18;
  sub_25F1B7118(a1, v28);
  v20 = *(v19 + 16);
  MetatypeMetadata = a4;
  v31 = v19;
  __swift_allocate_boxed_opaque_existential_1(v29);
  v20(v28, v27, v32, a4, v19);
  if (v6)
  {
    result = __swift_deallocate_boxed_opaque_existential_1(v29);
LABEL_8:
    *v26 = v7;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  return swift_dynamicCast();
}

uint64_t sub_25F255538@<X0>(void *a1@<X0>, void (*a2)(void *, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25F25506C(a1, a2, a3, *(a4 + 16), *(a5 - 8));
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25F25556C@<X0>(uint64_t *a7@<X8>)
{
  v8 = sub_25F304B2C();
  result = sub_25F304B4C();
  a7[3] = result;
  *a7 = v8;
  return result;
}

uint64_t sub_25F255614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = *(v6 + 16);
  v8(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
  if (swift_dynamicCast())
  {
    sub_25F1A42F8(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 8))(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_25F1AF698(v13, &qword_27FD56808, &qword_25F3103D0);
    a3[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v8)(boxed_opaque_existential_1, a1, a2);
  }
}

uint64_t sub_25F2557A8(void *a1, void (*a2)(void *, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[1] = a8;
  sub_25F1B7118(a1, v15);
  v10 = MEMORY[0x277D84F70];
  sub_25F304B4C();
  v11 = swift_dynamicCast();
  if (v11)
  {
    v14[0] = v14;
    MEMORY[0x28223BE20](v11);
    v10 = sub_25F304B2C();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = sub_25F304B4C();
    v15[3] = swift_getMetatypeMetadata();
    v15[0] = v12;
    a2(a1, v15);
    __swift_destroy_boxed_opaque_existential_1(v15);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_25F255944@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a3;
  v24 = a5;
  v25 = a2;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_conformsToProtocol2();
  if (v16 && a4)
  {
    v17 = v16;
    sub_25F1B7118(a1, v26);
    v18 = *(v17 + 16);
    MetatypeMetadata = a4;
    v29 = v17;
    __swift_allocate_boxed_opaque_existential_1(v27);
    v18(v26, v25, v30, a4, v17);
    if (v5)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v27);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56810, &qword_25F3103D8);
      return swift_dynamicCast();
    }
  }

  else
  {
    sub_25F1B7118(a1, v27);
    v20 = swift_dynamicCast();
    v21 = *(v13 + 56);
    if (v20)
    {
      v21(v12, 0, 1, a4);
      v22 = *(v13 + 32);
      v22(v15, v12, a4);
      return (v22)(v24, v15, a4);
    }

    else
    {
      v21(v12, 1, 1, a4);
      (*(v9 + 8))(v12, v8);
      MetatypeMetadata = swift_getMetatypeMetadata();
      v27[0] = a4;
      v25(a1, v27);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return swift_willThrow();
    }
  }
}

uint64_t sub_25F255C4C@<X0>(void *a1@<X0>, void (*a2)(void *, void *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25F2557A8(a1, a2, a3, a4[2], a4[3], *(a5 - 8), a4[4], *(a5 - 16));
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25F255C88(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25F1BD028(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25F1BD028((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t Array<A>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = sub_25F30539C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267450, v8, v3, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t Array<A>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_25F266CCC(a1, a2, a3);

  return v3;
}

uint64_t sub_25F255E50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1);
  result = (*(a3 + 32))(v11, a2, a3);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_25F255F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.propertyListValue.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_25F255FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_25F266CCC(*a1, *(a2 + 16), *(a3 - 8));

  if (!v4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t Set<>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a1;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v4 = sub_25F3056FC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267FA4, v9, v4, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
}

uint64_t Set<>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  swift_getAssociatedTypeWitness();
  v6 = sub_25F30539C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25F1C1AC4(sub_25F267494, v11, v6, a2, v7, WitnessTable, MEMORY[0x277D84950], &v12);

  if (!v4)
  {
    v13 = v9;
    sub_25F30539C();
    swift_getWitnessTable();
    return sub_25F30570C();
  }

  return result;
}

uint64_t sub_25F256230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1);
  result = (*(a3 + 32))(v12, a2, a3);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_25F256358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set<>.propertyListValue.getter(*v3, *(a1 + 16), *(a2 - 8), *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_25F256390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Set<>.init(propertyListValue:)(*a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Dictionary<>.propertyListValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[8] = sub_25F2674B8;
  v13[9] = &v14;
  v8 = sub_25F304B4C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return Sequence.keyedMap<A, B>(_:)(sub_25F26753C, v13, v8, AssociatedTypeWitness, v10, WitnessTable, a7);
}

uint64_t Dictionary<>.init(propertyListValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_25F266B8C(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

uint64_t sub_25F256538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a4;
  v23 = a2;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v21 - v13;
  v15 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3);
  v19 = v25;
  result = (*(a7 + 32))(v17, a5, a7);
  if (!v19)
  {
    (*(v21 + 16))(v14, v22, AssociatedTypeWitness);
    return (*(a9 + 32))(v14);
  }

  return result;
}

uint64_t sub_25F256780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a4(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_25F256868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Dictionary<>.propertyListValue.getter(*v3, a1[2], a1[3], *(a2 - 8), a1[4], *(a2 - 16), *(a2 - 24));
  *a3 = result;
  return result;
}

uint64_t sub_25F2568A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_25F266B8C(*a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16), *(a3 - 24));

  if (!v4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t sub_25F25690C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 121;
  }

  else
  {
    v2 = 120;
  }

  if (*a2)
  {
    v3 = 121;
  }

  else
  {
    v3 = 120;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25F30659C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25F256978()
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2569D4(uint64_t a1)
{
  sub_25F304F0C();
}

uint64_t sub_25F256A14(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F256A78(uint64_t *a1@<X8>)
{
  v2 = 120;
  if (*v1)
  {
    v2 = 121;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_25F256A94()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v58 = a6;
  v64 = a4;
  v74 = a3;
  v70 = a2;
  v69 = a1;
  v62 = a11;
  v65 = a9;
  v68 = a8;
  v14 = sub_25F305C1C();
  v72 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v66 = &v55 - v15;
  v16 = sub_25F305C1C();
  v56 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v57 = &v55 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v71 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = swift_getTupleTypeMetadata2();
  v73 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v59 = *(a5 - 8);
  (*(v59 + 16))(&v55 - v27, v69, a5);
  v29 = v56;
  (*(v56 + 16))(&v28[*(v23 + 48)], v70, v16);
  v61 = *(a7 - 8);
  v30 = *(v61 + 16);
  v70 = a7;
  v30(v22, v74, a7);
  v69 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = *(v72 + 16);
  v74 = v22;
  v33 = v64;
  v64 = v14;
  v32(&v22[v31], v33, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  *(inited + 32) = (*(v65 + 8))(a5);
  v60 = inited + 32;
  *(inited + 40) = v35;
  v36 = v58;
  v37 = *(v73 + 16);
  v63 = v28;
  v37(v26, v28, v23);
  v65 = v23;
  v38 = v57;
  (*(v29 + 32))(v57, &v26[*(v23 + 48)], v16);
  v39 = *(v36 - 8);
  if ((*(v39 + 48))(v38, 1, v36) == 1)
  {
    (*(v59 + 8))(v26, a5);
    (*(v29 + 8))(v38, v16);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v40 = *(a10 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v40(v36, a10);
    (*(v39 + 8))(v38, v36);
    (*(v59 + 8))(v26, a5);
  }

  v41 = v74;
  v42 = v70;
  *(inited + 88) = (*(v62 + 8))(v70);
  *(inited + 96) = v43;
  v44 = v67;
  v45 = v71;
  v46 = v69;
  (*(v67 + 16))(v71, v41, v69);
  v47 = v72;
  v48 = v66;
  v49 = v64;
  (*(v72 + 32))(v66, &v45[*(v46 + 48)], v64);
  v50 = v68;
  v51 = *(v68 - 8);
  if ((*(v51 + 48))(v48, 1, v68) == 1)
  {
    (*(v61 + 8))(v45, v42);
    (*(v47 + 8))(v48, v49);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v72 = *(a12 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    (v72)(v50, a12);
    (*(v51 + 8))(v48, v50);
    (*(v61 + 8))(v71, v42);
  }

  v52 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v53 = sub_25F252D8C(v52);

  (*(v44 + 8))(v74, v46);
  (*(v73 + 8))(v63, v65);
  return v53;
}

CGPoint __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGPoint.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266FF4(propertyListValue.serializableDictionary._rawValue, &_s3KeyON_0, &off_287164628);
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t sub_25F2573C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696568;
  }

  else
  {
    v3 = 0x6874646977;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696568;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F257460()
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2574DC(uint64_t a1)
{
  sub_25F304F0C();
}

uint64_t sub_25F257544(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F2575C8(uint64_t *a1@<X8>)
{
  v2 = 0x6874646977;
  if (*v1)
  {
    v2 = 0x746867696568;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F257600()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

_OWORD *sub_25F257658@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, double a6@<D0>, double a7@<D1>)
{
  v8 = sub_25F257694(a2, a3, a4, a5, a6, a7);
  result = sub_25F252514(v8, &v10);
  *a1 = v10;
  return result;
}

uint64_t sub_25F257694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v13 = MEMORY[0x277D85048];
  *(inited + 72) = MEMORY[0x277D85048];
  *(inited + 80) = &protocol witness table for CGFloat;
  *(inited + 48) = a5;
  *(inited + 88) = a3;
  *(inited + 96) = a4;
  *(inited + 128) = v13;
  *(inited + 136) = &protocol witness table for CGFloat;
  *(inited + 104) = a6;
  v14 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v15 = sub_25F252D8C(v14);

  return v15;
}

CGSize __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGSize.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266FF4(propertyListValue.serializableDictionary._rawValue, &_s3KeyON, &off_287164618);
  result.height = v2;
  result.width = v1;
  return result;
}

_OWORD *sub_25F2577E0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v7 = sub_25F257694(a1, a2, a3, a4, *v5, v5[1]);
  result = sub_25F252514(v7, &v9);
  *a5 = v9;
  return result;
}

uint64_t sub_25F257858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  result = sub_25F266FF4(a1, a2, a3);
  if (!v4)
  {
    *a4 = v7;
    a4[1] = v8;
  }

  return result;
}

uint64_t CGRect.propertyListValue.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = sub_25F257694(120, 0xE100000000000000, 121, 0xE100000000000000, a2, a3);
  sub_25F252514(v8, &v14);
  v9 = v14;
  v10 = sub_25F257694(0x6874646977, 0xE500000000000000, 0x746867696568, 0xE600000000000000, a4, a5);
  sub_25F252514(v10, &v14);
  v11 = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  sub_25F2670B8(v11, sub_25F266704, 0, isUniquelyReferenced_nonNull_native, &v14, v9, v11, "confidentlyMerging(_:)", xmmword_25F310320, 22);

  result = swift_bridgeObjectRelease_n();
  *a1 = v14;
  return result;
}

__C::CGRect __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGRect.init(propertyListValue:)(PreviewsFoundationOS::PropertyList propertyListValue)
{
  sub_25F266E90(propertyListValue.serializableDictionary._rawValue);
  if (v1)
  {
    v3 = v2;
    v4 = v2;
    v5 = v2;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t sub_25F2579F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F266E90(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_25F257A28()
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F257A84(uint64_t a1)
{
  sub_25F30671C();
  sub_25F304F0C();
  return sub_25F30676C();
}

uint64_t sub_25F257ACC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_25F3063BC();

  *a2 = v3 != 0;
  return result;
}

uint64_t audit_token_t.propertyListValue.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = HIDWORD(a1);
  v11 = HIDWORD(a2);
  v12 = HIDWORD(a3);
  v13 = HIDWORD(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E00, &qword_25F308450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310340;
  *(inited + 32) = v8;
  *(inited + 36) = v10;
  *(inited + 40) = v7;
  *(inited + 44) = v11;
  *(inited + 48) = v6;
  *(inited + 52) = v12;
  *(inited + 56) = v5;
  *(inited + 60) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56818, &qword_25F3103E0);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_25F3077D0;
  *(v15 + 32) = 7102838;
  *(v15 + 40) = 0xE300000000000000;
  *(v15 + 48) = sub_25F255C88(inited);
  v16 = sub_25F1B5BC8(v15);
  swift_setDeallocating();
  sub_25F1AF698(v15 + 32, &qword_27FD56820, &qword_25F3103E8);
  v17 = sub_25F2530B0(v16);

  v18 = sub_25F253300(v17);

  sub_25F252514(v18, &v20);
  result = swift_setDeallocating();
  *a5 = v20;
  return result;
}

void *sub_25F257CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F266DBC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_25F257D2C()
{
  v1 = *v0;
  sub_25F305FAC();

  v2 = MEMORY[0x25F8D7420](v1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v2);

  return 0xD000000000000027;
}

uint64_t UUID.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25F30463C();
  v9 = sub_25F30467C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_25F1AF698(v8, &qword_27FD56828, &qword_25F3103F0);
    sub_25F2675B4();
    swift_allocError();
    *v11 = a1;
    v11[1] = a2;
    return swift_willThrow();
  }

  else
  {

    return (*(v10 + 32))(a3, v8, v9);
  }
}

uint64_t sub_25F257F30@<X0>(uint64_t *a1@<X8>)
{
  result = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F257F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v10 = *a1;
  v9 = a1[1];
  sub_25F30463C();
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v8, 1, a2) == 1)
  {
    sub_25F1AF698(v8, &qword_27FD56828, &qword_25F3103F0);
    sub_25F2675B4();
    swift_allocError();
    *v12 = v10;
    v12[1] = v9;
    return swift_willThrow();
  }

  else
  {

    return (*(v11 + 32))(a3, v8, a2);
  }
}

unint64_t sub_25F2580C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  return 0xD000000000000015;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v122 = a8;
  v139 = a7;
  v116 = a4;
  v117 = a6;
  v136 = a3;
  v137 = a5;
  v134 = a2;
  v113 = a1;
  v120 = a21;
  v114 = a19;
  v143 = a15;
  v146 = a13;
  v131 = a11;
  v110 = a10;
  v124 = a17;
  v126 = a16;
  v24 = sub_25F305C1C();
  v140 = *(v24 - 8);
  v141 = v24;
  MEMORY[0x28223BE20](v24);
  v125 = &v107 - v25;
  v123 = a14;
  v145 = sub_25F305C1C();
  v132 = *(v145 - 1);
  MEMORY[0x28223BE20](v145);
  v121 = &v107 - v26;
  v119 = a12;
  v144 = sub_25F305C1C();
  v130 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v115 = &v107 - v27;
  v28 = sub_25F305C1C();
  v129 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v109 = &v107 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v142 = *(TupleTypeMetadata2 - 8);
  v30 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v128 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v107 - v32;
  v147 = swift_getTupleTypeMetadata2();
  v138 = *(v147 - 8);
  v34 = MEMORY[0x28223BE20](v147);
  v118 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v107 - v36;
  v38 = swift_getTupleTypeMetadata2();
  v135 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v127 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v107 - v41;
  v43 = swift_getTupleTypeMetadata2();
  v133 = *(v43 - 8);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v107 - v47;
  v107 = *(a9 - 8);
  (*(v107 + 16))(&v107 - v47, v113, a9);
  (*(v129 + 16))(&v48[*(v43 + 48)], v134, v28);
  v111 = *(v131 - 8);
  (*(v111 + 16))(v42, v136);
  v136 = v38;
  v49 = *(v38 + 48);
  v50 = *(v130 + 16);
  v134 = v42;
  v50(&v42[v49], v116, v144);
  v113 = *(v146 - 8);
  (*(v113 + 16))(v37, v137);
  v51 = *(v147 + 48);
  v52 = *(v132 + 16);
  v137 = v37;
  v53 = v143;
  v52(&v37[v51], v117, v145);
  v116 = *(v53 - 8);
  (*(v116 + 16))(v33, v139, v53);
  v54 = *(TupleTypeMetadata2 + 48);
  v55 = *(v140 + 16);
  v139 = v33;
  v55(&v33[v54], v122, v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F30B760;
  v57 = *(v124 + 8);
  v112 = a9;
  *(inited + 32) = v57(a9);
  v117 = inited + 32;
  *(inited + 40) = v58;
  v59 = *(v133 + 16);
  v122 = v48;
  v59(v46, v48, v43);
  v124 = v43;
  v60 = *(v43 + 48);
  v61 = v28;
  v62 = v129;
  v63 = *(v129 + 32);
  v108 = v46;
  v64 = v109;
  v63(v109, &v46[v60], v28);
  v65 = *(v110 - 8);
  v66 = v110;
  if ((*(v65 + 48))(v64, 1) == 1)
  {
    (*(v107 + 8))(v108, v112);
    (*(v62 + 8))(v64, v61);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v67 = *(a18 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v67(v66, a18);
    (*(v65 + 8))(v64, v66);
    (*(v107 + 8))(v108, v112);
  }

  v129 = a23;
  v68 = v134;
  v69 = v131;
  *(inited + 88) = (*(v114 + 8))(v131);
  *(inited + 96) = v70;
  v71 = v127;
  v72 = v68;
  v73 = v136;
  (*(v135 + 16))(v127, v72, v136);
  v74 = v130;
  v75 = v115;
  (*(v130 + 32))(v115, &v71[*(v73 + 48)], v144);
  v76 = v119;
  v77 = *(v119 - 8);
  v78 = (*(v77 + 48))(v75, 1, v119);
  v80 = v145;
  v79 = v146;
  if (v78 == 1)
  {
    (*(v111 + 8))(v71, v69);
    (*(v74 + 8))(v75, v144);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v81 = *(a20 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v81(v76, a20);
    v80 = v145;
    v79 = v146;
    (*(v77 + 8))(v75, v76);
    (*(v111 + 8))(v127, v69);
  }

  v82 = v121;
  v83 = v132;
  v84 = v118;
  v85 = v137;
  *(inited + 144) = (*(v120 + 8))(v79);
  *(inited + 152) = v86;
  v87 = v85;
  v88 = v147;
  (*(v138 + 16))(v84, v87, v147);
  (*(v83 + 32))(v82, &v84[*(v88 + 48)], v80);
  v89 = v123;
  v90 = *(v123 - 8);
  if ((*(v90 + 48))(v82, 1, v123) == 1)
  {
    (*(v113 + 8))(v84, v79);
    (*(v83 + 8))(v82, v80);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v145 = *(a22 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    (v145)(v89, a22);
    (*(v90 + 8))(v82, v89);
    (*(v113 + 8))(v84, v146);
  }

  v91 = v143;
  v92 = v139;
  v93 = v140;
  v94 = v125;
  *(inited + 200) = (*(v129 + 8))(v143);
  *(inited + 208) = v95;
  v96 = v128;
  v97 = v92;
  v98 = TupleTypeMetadata2;
  (*(v142 + 16))(v128, v97, TupleTypeMetadata2);
  v99 = &v96[*(v98 + 48)];
  v100 = v141;
  (*(v93 + 32))(v94, v99, v141);
  v101 = v126;
  v102 = *(v126 - 8);
  if ((*(v102 + 48))(v94, 1, v126) == 1)
  {
    (*(v116 + 8))(v96, v91);
    (*(v93 + 8))(v94, v100);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v103 = *(a24 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v103(v101, a24);
    (*(v102 + 8))(v94, v101);
    (*(v116 + 8))(v128, v91);
  }

  v104 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v105 = sub_25F252D8C(v104);

  (*(v142 + 8))(v139, TupleTypeMetadata2);
  (*(v138 + 8))(v137, v147);
  (*(v135 + 8))(v134, v136);
  (*(v133 + 8))(v122, v124);
  return v105;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v145 = a8;
  v141 = a7;
  v137 = a6;
  v164 = a3;
  v165 = a5;
  v134 = a4;
  v162 = a2;
  v132 = a1;
  v142 = a25;
  v136 = a23;
  v171 = a19;
  v173 = a17;
  v158 = a15;
  v179 = a13;
  v130 = a12;
  v154 = a11;
  v147 = a21;
  v140 = a10;
  v133 = a9;
  v151 = a20;
  v30 = sub_25F305C1C();
  v169 = *(v30 - 8);
  v170 = v30;
  MEMORY[0x28223BE20](v30);
  v149 = a18;
  v150 = &v129 - v31;
  v32 = sub_25F305C1C();
  v159 = *(v32 - 8);
  v160 = v32;
  MEMORY[0x28223BE20](v32);
  v146 = &v129 - v33;
  v144 = a16;
  v172 = sub_25F305C1C();
  v157 = *(v172 - 1);
  MEMORY[0x28223BE20](v172);
  v143 = &v129 - v34;
  v139 = a14;
  v35 = sub_25F305C1C();
  v155 = *(v35 - 8);
  v156 = v35;
  MEMORY[0x28223BE20](v35);
  v135 = &v129 - v36;
  v37 = sub_25F305C1C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v131 = &v129 - v39;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v168 = *(TupleTypeMetadata2 - 8);
  v40 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v148 = &v129 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v177 = &v129 - v42;
  v176 = swift_getTupleTypeMetadata2();
  v167 = *(v176 - 8);
  v43 = MEMORY[0x28223BE20](v176);
  v153 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v175 = &v129 - v45;
  v174 = swift_getTupleTypeMetadata2();
  v166 = *(v174 - 8);
  v46 = MEMORY[0x28223BE20](v174);
  v138 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v49 = &v129 - v48;
  v50 = swift_getTupleTypeMetadata2();
  v163 = *(v50 - 8);
  v51 = MEMORY[0x28223BE20](v50);
  v152 = &v129 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v129 - v53;
  v55 = v154;
  v56 = swift_getTupleTypeMetadata2();
  v161 = *(v56 - 8);
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v129 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v129 - v60;
  v129 = *(v55 - 8);
  (*(v129 + 16))(&v129 - v60, v132, v55);
  (*(v38 + 16))(&v61[*(v56 + 48)], v162, v37);
  v132 = *(v179 - 8);
  (*(v132 + 16))(v54, v164);
  v164 = v50;
  v62 = *(v50 + 48);
  v63 = *(v155 + 16);
  v162 = v54;
  v63(&v54[v62], v134, v156);
  v134 = *(v158 - 8);
  (*(v134 + 16))(v49, v165);
  v64 = *(v174 + 48);
  v65 = *(v157 + 16);
  v165 = v49;
  v66 = v55;
  v65(&v49[v64], v137, v172);
  v137 = *(v173 - 8);
  v67 = v175;
  (*(v137 + 16))(v175, v141);
  (*(v159 + 16))(&v67[*(v176 + 48)], v145, v160);
  v141 = *(v171 - 8);
  v68 = v177;
  (*(v141 + 16))(v177, v133);
  v69 = v130;
  (*(v169 + 16))(&v68[*(TupleTypeMetadata2 + 48)], v140, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310350;
  v71 = v66;
  v72 = v37;
  *(inited + 32) = (*(v147 + 8))(v71);
  v140 = inited + 32;
  *(inited + 40) = v73;
  v74 = *(v161 + 16);
  v145 = v61;
  v74(v59, v61, v56);
  v147 = v56;
  v75 = v131;
  (*(v38 + 32))(v131, &v59[*(v56 + 48)], v37);
  v76 = *(v69 - 8);
  if ((*(v76 + 48))(v75, 1, v69) == 1)
  {
    (*(v129 + 8))(v59, v154);
    (*(v38 + 8))(v75, v72);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v77 = *(a22 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v77(v69, a22);
    (*(v76 + 8))(v75, v69);
    (*(v129 + 8))(v59, v154);
  }

  v154 = a27;
  v78 = v162;
  v79 = v179;
  *(inited + 88) = (*(v136 + 8))(v179);
  *(inited + 96) = v80;
  v81 = v152;
  v82 = v78;
  v83 = v164;
  (*(v163 + 16))(v152, v82, v164);
  v85 = v155;
  v84 = v156;
  v86 = v135;
  (*(v155 + 32))(v135, &v81[*(v83 + 48)], v156);
  v87 = v139;
  v88 = *(v139 - 8);
  v89 = (*(v88 + 48))(v86, 1, v139);
  v90 = v144;
  if (v89 == 1)
  {
    (*(v132 + 8))(v81, v79);
    (*(v85 + 8))(v86, v84);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v91 = *(a24 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v91(v87, a24);
    (*(v88 + 8))(v86, v87);
    (*(v132 + 8))(v152, v179);
  }

  v93 = v157;
  v92 = v158;
  v94 = v138;
  v179 = a29;
  v95 = v165;
  *(inited + 144) = (*(v142 + 8))(v158);
  *(inited + 152) = v96;
  v97 = v95;
  v98 = v174;
  (*(v166 + 16))(v94, v97, v174);
  v99 = &v94[*(v98 + 48)];
  v100 = v143;
  (*(v93 + 32))(v143, v99, v172);
  v101 = *(v90 - 8);
  if ((*(v101 + 48))(v100, 1, v90) == 1)
  {
    (*(v134 + 8))(v94, v92);
    (*(v93 + 8))(v100, v172);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v172 = *(a26 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v172(v90, a26);
    (*(v101 + 8))(v100, v90);
    (*(v134 + 8))(v94, v92);
  }

  v102 = v151;
  v104 = v159;
  v103 = v160;
  v105 = v175;
  v106 = v173;
  *(inited + 200) = (*(v154 + 8))(v173);
  *(inited + 208) = v107;
  v108 = v153;
  v109 = v105;
  v110 = v176;
  (*(v167 + 16))(v153, v109, v176);
  v111 = v146;
  (*(v104 + 32))(v146, &v108[*(v110 + 48)], v103);
  v112 = v149;
  v113 = *(v149 - 8);
  if ((*(v113 + 48))(v111, 1, v149) == 1)
  {
    (*(v137 + 8))(v108, v106);
    (*(v104 + 8))(v111, v103);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v114 = *(a28 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v114(v112, a28);
    (*(v113 + 8))(v111, v112);
    (*(v137 + 8))(v153, v173);
  }

  v115 = v171;
  v116 = v169;
  v117 = v148;
  v118 = v177;
  *(inited + 256) = (*(v179 + 8))(v171);
  *(inited + 264) = v119;
  v120 = v118;
  v121 = TupleTypeMetadata2;
  (*(v168 + 16))(v117, v120, TupleTypeMetadata2);
  v122 = &v117[*(v121 + 48)];
  v123 = v150;
  v124 = v170;
  (*(v116 + 32))(v150, v122, v170);
  v125 = *(v102 - 8);
  if ((*(v125 + 48))(v123, 1, v102) == 1)
  {
    (*(v141 + 8))(v117, v115);
    (*(v116 + 8))(v123, v124);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v179 = *(a30 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    (v179)(v102, a30);
    (*(v125 + 8))(v123, v102);
    (*(v141 + 8))(v117, v115);
  }

  v126 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v127 = sub_25F252D8C(v126);

  (*(v168 + 8))(v177, TupleTypeMetadata2);
  (*(v167 + 8))(v175, v176);
  (*(v166 + 8))(v165, v174);
  (*(v163 + 8))(v162, v164);
  (*(v161 + 8))(v145, v147);
  return v127;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v181 = a8;
  v176 = a7;
  v171 = a4;
  v172 = a6;
  v205 = a3;
  v206 = a5;
  v201 = a2;
  v165 = a1;
  v179 = a29;
  v175 = a27;
  v214 = a23;
  v224 = a21;
  v223 = a19;
  v225 = a17;
  v213 = a15;
  v167 = a14;
  v215 = a13;
  v187 = a25;
  v186 = a12;
  v180 = a11;
  v170 = a10;
  v168 = a9;
  v192 = a24;
  v36 = sub_25F305C1C();
  v211 = *(v36 - 8);
  v212 = v36;
  MEMORY[0x28223BE20](v36);
  v190 = a22;
  v191 = &v162 - v37;
  v38 = sub_25F305C1C();
  v202 = *(v38 - 8);
  v203 = v38;
  MEMORY[0x28223BE20](v38);
  v188 = &v162 - v39;
  v185 = a20;
  v40 = sub_25F305C1C();
  v198 = *(v40 - 8);
  v199 = v40;
  MEMORY[0x28223BE20](v40);
  v182 = a18;
  v183 = &v162 - v41;
  v42 = sub_25F305C1C();
  v196 = *(v42 - 8);
  v197 = v42;
  MEMORY[0x28223BE20](v42);
  v177 = a16;
  v178 = &v162 - v43;
  v44 = sub_25F305C1C();
  v194 = *(v44 - 8);
  v195 = v44;
  MEMORY[0x28223BE20](v44);
  v174 = &v162 - v45;
  v46 = sub_25F305C1C();
  v163 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v166 = &v162 - v47;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v210 = *(TupleTypeMetadata2 - 8);
  v48 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v189 = &v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v221 = &v162 - v50;
  v220 = swift_getTupleTypeMetadata2();
  v209 = *(v220 - 8);
  v51 = MEMORY[0x28223BE20](v220);
  v184 = &v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v219 = &v162 - v53;
  v218 = swift_getTupleTypeMetadata2();
  v208 = *(v218 - 8);
  v54 = MEMORY[0x28223BE20](v218);
  v193 = &v162 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v217 = &v162 - v56;
  v216 = swift_getTupleTypeMetadata2();
  v207 = *(v216 - 8);
  v57 = MEMORY[0x28223BE20](v216);
  v173 = &v162 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v162 - v59;
  v61 = v213;
  v62 = swift_getTupleTypeMetadata2();
  v204 = *(v62 - 8);
  v63 = MEMORY[0x28223BE20](v62);
  v169 = &v162 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v66 = &v162 - v65;
  v67 = v215;
  v68 = swift_getTupleTypeMetadata2();
  v200 = *(v68 - 8);
  v69 = MEMORY[0x28223BE20](v68);
  v162 = &v162 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v72 = &v162 - v71;
  v164 = *(v67 - 8);
  (*(v164 + 16))(&v162 - v71, v165, v67);
  v73 = v163;
  (*(v163 + 16))(&v72[*(v68 + 48)], v201, v46);
  v165 = *(v61 - 8);
  (*(v165 + 16))(v66, v205, v61);
  v205 = v62;
  v74 = *(v62 + 48);
  v75 = *(v194 + 16);
  v201 = v66;
  v75(&v66[v74], v171, v195);
  v171 = *(v225 - 8);
  (*(v171 + 16))(v60, v206);
  v76 = *(v216 + 48);
  v77 = *(v196 + 16);
  v206 = v60;
  v77(&v60[v76], v172, v197);
  v172 = *(v223 - 8);
  v78 = v217;
  (*(v172 + 16))(v217, v176);
  (*(v198 + 16))(&v78[*(v218 + 48)], v181, v199);
  v176 = *(v224 - 8);
  v79 = v219;
  (*(v176 + 16))(v219, v168);
  v80 = &v79[*(v220 + 48)];
  v81 = v212;
  (*(v202 + 16))(v80, v170, v203);
  v181 = *(v214 - 8);
  v82 = v221;
  (*(v181 + 16))(v221, v180);
  (*(v211 + 16))(&v82[*(TupleTypeMetadata2 + 48)], v186, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310360;
  *(inited + 32) = (*(v187 + 8))(v215);
  v180 = inited + 32;
  *(inited + 40) = v84;
  v85 = *(v200 + 16);
  v86 = v162;
  v186 = v72;
  v85(v162, v72, v68);
  v187 = v68;
  v87 = *(v68 + 48);
  v88 = v166;
  v89 = v167;
  v90 = v73;
  v91 = *(v73 + 32);
  v92 = v86;
  v93 = &v86[v87];
  v94 = v46;
  v91(v166, v93, v46);
  v95 = *(v89 - 8);
  if ((*(v95 + 48))(v88, 1, v89) == 1)
  {
    (*(v164 + 8))(v92, v215);
    (*(v90 + 8))(v88, v94);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v96 = *(a26 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v96(v89, a26);
    (*(v95 + 8))(v88, v89);
    (*(v164 + 8))(v92, v215);
  }

  v215 = a31;
  v97 = v201;
  v98 = v213;
  *(inited + 88) = (*(v175 + 8))(v213);
  *(inited + 96) = v99;
  v100 = v169;
  v101 = v97;
  v102 = v205;
  (*(v204 + 16))(v169, v101, v205);
  v104 = v194;
  v103 = v195;
  v105 = v174;
  (*(v194 + 32))(v174, &v100[*(v102 + 48)], v195);
  v106 = v177;
  v107 = *(v177 - 8);
  v108 = (*(v107 + 48))(v105, 1, v177);
  v109 = v225;
  if (v108 == 1)
  {
    (*(v165 + 8))(v100, v98);
    (*(v104 + 8))(v105, v103);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v110 = *(a28 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v110(v106, a28);
    v109 = v225;
    (*(v107 + 8))(v105, v106);
    (*(v165 + 8))(v100, v213);
  }

  v111 = v182;
  v113 = v196;
  v112 = v197;
  v213 = a33;
  v114 = v206;
  *(inited + 144) = (*(v179 + 8))(v109);
  *(inited + 152) = v115;
  v116 = v173;
  v117 = v114;
  v118 = v216;
  (*(v207 + 16))(v173, v117, v216);
  v119 = &v116[*(v118 + 48)];
  v120 = v178;
  (*(v113 + 32))(v178, v119, v112);
  v121 = *(v111 - 8);
  if ((*(v121 + 48))(v120, 1, v111) == 1)
  {
    (*(v171 + 8))(v116, v109);
    (*(v113 + 8))(v120, v112);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v122 = *(a30 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v122(v111, a30);
    (*(v121 + 8))(v120, v111);
    (*(v171 + 8))(v116, v225);
  }

  v123 = v188;
  v125 = v198;
  v124 = v199;
  v126 = v193;
  v127 = v223;
  v225 = a35;
  v128 = v217;
  *(inited + 200) = (*(v215 + 8))(v223);
  *(inited + 208) = v129;
  v130 = v128;
  v131 = v218;
  (*(v208 + 16))(v126, v130, v218);
  v132 = v183;
  (*(v125 + 32))(v183, &v126[*(v131 + 48)], v124);
  v133 = v185;
  v134 = *(v185 - 8);
  if ((*(v134 + 48))(v132, 1, v185) == 1)
  {
    (*(v172 + 8))(v126, v127);
    (*(v125 + 8))(v132, v124);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v135 = *(a32 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v135(v133, a32);
    (*(v134 + 8))(v132, v133);
    (*(v172 + 8))(v193, v223);
  }

  v136 = v224;
  v137 = v202;
  v138 = v184;
  v139 = v219;
  *(inited + 256) = (*(v213 + 8))(v224);
  *(inited + 264) = v140;
  v141 = v139;
  v142 = v220;
  (*(v209 + 16))(v138, v141, v220);
  v143 = v203;
  (*(v137 + 32))(v123, &v138[*(v142 + 48)], v203);
  v144 = v190;
  v145 = *(v190 - 8);
  if ((*(v145 + 48))(v123, 1, v190) == 1)
  {
    (*(v176 + 8))(v138, v136);
    (*(v137 + 8))(v123, v143);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v146 = *(a34 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v146(v144, a34);
    (*(v145 + 8))(v123, v144);
    (*(v176 + 8))(v138, v224);
  }

  v147 = v211;
  v148 = v189;
  v149 = v221;
  v150 = v214;
  *(inited + 312) = (*(v225 + 8))(v214);
  *(inited + 320) = v151;
  v152 = v149;
  v153 = TupleTypeMetadata2;
  (*(v210 + 16))(v148, v152, TupleTypeMetadata2);
  v154 = &v148[*(v153 + 48)];
  v155 = v191;
  v156 = v212;
  (*(v147 + 32))(v191, v154, v212);
  v157 = v192;
  v158 = *(v192 - 8);
  if ((*(v158 + 48))(v155, 1, v192) == 1)
  {
    (*(v181 + 8))(v148, v150);
    (*(v147 + 8))(v155, v156);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v225 = *(a36 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    (v225)(v157, a36);
    (*(v158 + 8))(v155, v157);
    (*(v181 + 8))(v148, v214);
  }

  v159 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v160 = sub_25F252D8C(v159);

  (*(v210 + 8))(v221, TupleTypeMetadata2);
  (*(v209 + 8))(v219, v220);
  (*(v208 + 8))(v217, v218);
  (*(v207 + 8))(v206, v216);
  (*(v204 + 8))(v201, v205);
  (*(v200 + 8))(v186, v187);
  return v160;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v201 = a8;
  v196 = a7;
  v194 = a6;
  v231 = a3;
  v232 = a5;
  v192 = a4;
  v229 = a2;
  v187 = a1;
  v202 = a33;
  v197 = a31;
  v255 = a27;
  v257 = a25;
  v245 = a23;
  v256 = a21;
  v244 = a19;
  v243 = a17;
  v188 = a16;
  v242 = a15;
  v210 = a29;
  v209 = a14;
  v203 = a13;
  v205 = a12;
  v193 = a11;
  v191 = a10;
  v190 = a9;
  v216 = a28;
  v42 = sub_25F305C1C();
  v238 = *(v42 - 8);
  v239 = v42;
  MEMORY[0x28223BE20](v42);
  v215 = &v181 - v43;
  v213 = a26;
  v241 = sub_25F305C1C();
  v234 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v211 = a24;
  v212 = &v181 - v44;
  v227 = sub_25F305C1C();
  v240 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v207 = a22;
  v208 = &v181 - v45;
  v46 = sub_25F305C1C();
  v225 = *(v46 - 8);
  v226 = v46;
  MEMORY[0x28223BE20](v46);
  v206 = &v181 - v47;
  v204 = a20;
  v48 = sub_25F305C1C();
  v223 = *(v48 - 8);
  v224 = v48;
  MEMORY[0x28223BE20](v48);
  v199 = a18;
  v200 = &v181 - v49;
  v50 = sub_25F305C1C();
  v221 = *(v50 - 8);
  v222 = v50;
  MEMORY[0x28223BE20](v50);
  v195 = &v181 - v51;
  v52 = sub_25F305C1C();
  v53 = *(v52 - 8);
  v183 = v52;
  v184 = v53;
  MEMORY[0x28223BE20](v52);
  v186 = &v181 - v54;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v214 = *(TupleTypeMetadata2 - 8);
  v55 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v220 = &v181 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v253 = &v181 - v57;
  v252 = swift_getTupleTypeMetadata2();
  v237 = *(v252 - 8);
  v58 = MEMORY[0x28223BE20](v252);
  v219 = &v181 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v251 = &v181 - v60;
  v250 = swift_getTupleTypeMetadata2();
  v236 = *(v250 - 8);
  v61 = MEMORY[0x28223BE20](v250);
  v218 = &v181 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v249 = &v181 - v63;
  v248 = swift_getTupleTypeMetadata2();
  v235 = *(v248 - 8);
  v64 = MEMORY[0x28223BE20](v248);
  v198 = &v181 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v247 = &v181 - v66;
  v246 = swift_getTupleTypeMetadata2();
  v233 = *(v246 - 8);
  v67 = MEMORY[0x28223BE20](v246);
  v217 = &v181 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v70 = &v181 - v69;
  v71 = v243;
  v72 = swift_getTupleTypeMetadata2();
  v230 = *(v72 - 8);
  v73 = MEMORY[0x28223BE20](v72);
  v189 = &v181 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v76 = &v181 - v75;
  v77 = v242;
  v78 = v183;
  v79 = swift_getTupleTypeMetadata2();
  v228 = *(v79 - 8);
  v80 = MEMORY[0x28223BE20](v79);
  v182 = &v181 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v83 = &v181 - v82;
  v185 = *(v77 - 8);
  (*(v185 + 16))(&v181 - v82, v187, v77);
  v84 = v184;
  v85 = v78;
  (*(v184 + 16))(&v83[*(v79 + 48)], v229, v78);
  v187 = *(v71 - 8);
  (*(v187 + 16))(v76, v231, v71);
  v231 = v72;
  v86 = *(v72 + 48);
  v87 = *(v221 + 16);
  v229 = v76;
  v87(&v76[v86], v192, v222);
  v192 = *(v244 - 8);
  (*(v192 + 16))(v70, v232);
  v88 = *(v246 + 48);
  v89 = *(v223 + 16);
  v232 = v70;
  v89(&v70[v88], v194, v224);
  v194 = *(v256 - 8);
  v90 = v247;
  (*(v194 + 16))(v247, v196);
  v91 = &v90[*(v248 + 48)];
  v92 = v85;
  (*(v225 + 16))(v91, v201, v226);
  v196 = *(v245 - 8);
  v93 = v249;
  (*(v196 + 16))(v249, v190);
  (*(v240 + 16))(&v93[*(v250 + 48)], v191, v227);
  v201 = *(v257 - 8);
  v94 = v251;
  (*(v201 + 16))(v251, v193);
  (*(v234 + 16))(&v94[*(v252 + 48)], v205, v241);
  v205 = *(v255 - 8);
  v95 = v253;
  (*(v205 + 16))(v253, v203);
  (*(v238 + 16))(&v95[*(TupleTypeMetadata2 + 48)], v209, v239);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310370;
  *(inited + 32) = (*(v210 + 8))(v242);
  v203 = inited + 32;
  *(inited + 40) = v97;
  v98 = *(v228 + 16);
  v99 = v182;
  v209 = v83;
  v100 = v83;
  v101 = v186;
  v98(v182, v100, v79);
  v210 = v79;
  v102 = *(v79 + 48);
  v103 = v188;
  (*(v84 + 32))(v101, &v99[v102], v92);
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v101, 1, v103) == 1)
  {
    (*(v185 + 8))(v99, v242);
    (*(v84 + 8))(v101, v92);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v105 = *(a30 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v105(v103, a30);
    (*(v104 + 8))(v101, v103);
    (*(v185 + 8))(v99, v242);
  }

  v242 = a35;
  v106 = v229;
  *(inited + 88) = (*(v197 + 8))(v243);
  *(inited + 96) = v107;
  v108 = v189;
  v109 = v106;
  v110 = v231;
  (*(v230 + 16))(v189, v109, v231);
  v112 = v221;
  v111 = v222;
  v113 = v195;
  (*(v221 + 32))(v195, &v108[*(v110 + 48)], v222);
  v114 = v199;
  v115 = *(v199 - 8);
  v116 = (*(v115 + 48))(v113, 1, v199);
  v117 = v204;
  if (v116 == 1)
  {
    (*(v187 + 8))(v108, v243);
    (*(v112 + 8))(v113, v111);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v222 = *(a32 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v222(v114, a32);
    (*(v115 + 8))(v113, v114);
    (*(v187 + 8))(v108, v243);
  }

  v118 = v244;
  v244 = a37;
  v119 = v232;
  *(inited + 144) = (*(v202 + 8))(v118);
  *(inited + 152) = v120;
  v121 = v217;
  v122 = v119;
  v123 = v246;
  (*(v233 + 16))(v217, v122, v246);
  v125 = v223;
  v124 = v224;
  v126 = &v121[*(v123 + 48)];
  v127 = v200;
  (*(v223 + 32))(v200, v126, v224);
  v128 = *(v117 - 8);
  if ((*(v128 + 48))(v127, 1, v117) == 1)
  {
    (*(v192 + 8))(v121, v118);
    (*(v125 + 8))(v127, v124);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v129 = *(a34 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v129(v117, a34);
    (*(v128 + 8))(v127, v117);
    (*(v192 + 8))(v217, v118);
  }

  v130 = v256;
  v131 = v225;
  v132 = v198;
  v243 = a39;
  v133 = v247;
  *(inited + 200) = (*(v242 + 8))(v256);
  *(inited + 208) = v134;
  v135 = v133;
  v136 = v248;
  (*(v235 + 16))(v132, v135, v248);
  v137 = v206;
  v138 = v226;
  (*(v131 + 32))(v206, &v132[*(v136 + 48)], v226);
  v139 = v207;
  v140 = *(v207 - 8);
  if ((*(v140 + 48))(v137, 1, v207) == 1)
  {
    (*(v194 + 8))(v132, v130);
    (*(v131 + 8))(v137, v138);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v141 = *(a36 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v141(v139, a36);
    (*(v140 + 8))(v137, v139);
    (*(v194 + 8))(v132, v256);
  }

  v142 = v241;
  v143 = v245;
  v256 = a41;
  v144 = v249;
  *(inited + 256) = (*(v244 + 8))(v245);
  *(inited + 264) = v145;
  v146 = v218;
  v147 = v144;
  v148 = v250;
  (*(v236 + 16))(v218, v147, v250);
  v149 = v208;
  v150 = v227;
  (*(v240 + 32))(v208, &v146[*(v148 + 48)], v227);
  v151 = v211;
  v152 = *(v211 - 8);
  if ((*(v152 + 48))(v149, 1, v211) == 1)
  {
    (*(v196 + 8))(v146, v143);
    (*(v240 + 8))(v149, v150);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v153 = *(a38 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v153(v151, a38);
    (*(v152 + 8))(v149, v151);
    v142 = v241;
    (*(v196 + 8))(v218, v143);
  }

  v154 = v257;
  v155 = v219;
  v156 = v234;
  v157 = v251;
  *(inited + 312) = (*(v243 + 8))(v257);
  *(inited + 320) = v158;
  v159 = v157;
  v160 = v252;
  (*(v237 + 16))(v155, v159, v252);
  v161 = v212;
  (*(v156 + 32))(v212, &v155[*(v160 + 48)], v142);
  v162 = v213;
  v163 = *(v213 - 8);
  if ((*(v163 + 48))(v161, 1, v213) == 1)
  {
    (*(v201 + 8))(v155, v154);
    (*(v156 + 8))(v161, v142);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v164 = *(a40 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v164(v162, a40);
    (*(v163 + 8))(v161, v162);
    (*(v201 + 8))(v219, v257);
  }

  v166 = v215;
  v165 = v216;
  v167 = v214;
  v168 = v253;
  *(inited + 368) = (*(v256 + 8))(v255);
  *(inited + 376) = v169;
  v170 = v220;
  v171 = v168;
  v172 = TupleTypeMetadata2;
  (*(v167 + 16))(v220, v171, TupleTypeMetadata2);
  v173 = *(v172 + 48);
  v175 = v238;
  v174 = v239;
  (*(v238 + 32))(v166, &v170[v173], v239);
  v176 = *(v165 - 8);
  if ((*(v176 + 48))(v166, 1, v165) == 1)
  {
    (*(v205 + 8))(v170, v255);
    (*(v175 + 8))(v166, v174);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v177 = *(a42 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v177(v165, a42);
    (*(v176 + 8))(v166, v165);
    (*(v205 + 8))(v220, v255);
  }

  v178 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v179 = sub_25F252D8C(v178);

  (*(v167 + 8))(v253, TupleTypeMetadata2);
  (*(v237 + 8))(v251, v252);
  (*(v236 + 8))(v249, v250);
  (*(v235 + 8))(v247, v248);
  (*(v233 + 8))(v232, v246);
  (*(v230 + 8))(v229, v231);
  (*(v228 + 8))(v209, v210);
  return v179;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v227 = a8;
  v269 = a7;
  v225 = a6;
  v266 = a3;
  v267 = a5;
  v222 = a4;
  v264 = a2;
  v216 = a1;
  v230 = a37;
  v226 = a35;
  v279 = a31;
  v296 = a29;
  v294 = a27;
  v283 = a25;
  v282 = a23;
  v295 = a21;
  v255 = a19;
  v215 = a18;
  v280 = a17;
  v239 = a33;
  v234 = a16;
  v221 = a15;
  v235 = a14;
  v220 = a13;
  v231 = a12;
  v219 = a11;
  v218 = a10;
  v217 = a9;
  v245 = a32;
  v278 = sub_25F305C1C();
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v243 = a30;
  v244 = &v209 - v48;
  v49 = sub_25F305C1C();
  v272 = *(v49 - 8);
  v273 = v49;
  MEMORY[0x28223BE20](v49);
  v241 = a28;
  v242 = &v209 - v50;
  v51 = sub_25F305C1C();
  v260 = *(v51 - 8);
  v261 = v51;
  MEMORY[0x28223BE20](v51);
  v240 = &v209 - v52;
  v238 = a26;
  v53 = sub_25F305C1C();
  v258 = *(v53 - 8);
  v259 = v53;
  MEMORY[0x28223BE20](v53);
  v236 = a24;
  v237 = &v209 - v54;
  v55 = sub_25F305C1C();
  v256 = *(v55 - 8);
  v257 = v55;
  MEMORY[0x28223BE20](v55);
  v232 = a22;
  v233 = &v209 - v56;
  v57 = sub_25F305C1C();
  v253 = *(v57 - 8);
  v254 = v57;
  MEMORY[0x28223BE20](v57);
  v228 = &v209 - v58;
  v229 = a20;
  v281 = sub_25F305C1C();
  v252 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v224 = &v209 - v59;
  v60 = sub_25F305C1C();
  v61 = *(v60 - 8);
  v210 = v60;
  v211 = v61;
  MEMORY[0x28223BE20](v60);
  v214 = &v209 - v62;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v276 = *(TupleTypeMetadata2 - 8);
  v63 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v251 = &v209 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v292 = &v209 - v65;
  v291 = swift_getTupleTypeMetadata2();
  v275 = *(v291 - 8);
  v66 = MEMORY[0x28223BE20](v291);
  v250 = &v209 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v290 = &v209 - v68;
  v289 = swift_getTupleTypeMetadata2();
  v274 = *(v289 - 8);
  v69 = MEMORY[0x28223BE20](v289);
  v249 = &v209 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v288 = &v209 - v71;
  v287 = swift_getTupleTypeMetadata2();
  v271 = *(v287 - 8);
  v72 = MEMORY[0x28223BE20](v287);
  v248 = &v209 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v286 = &v209 - v74;
  v285 = swift_getTupleTypeMetadata2();
  v270 = *(v285 - 8);
  v75 = MEMORY[0x28223BE20](v285);
  v247 = &v209 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v78 = &v209 - v77;
  v284 = swift_getTupleTypeMetadata2();
  v268 = *(v284 - 8);
  v79 = MEMORY[0x28223BE20](v284);
  v223 = &v209 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v82 = &v209 - v81;
  v83 = v255;
  v84 = swift_getTupleTypeMetadata2();
  v265 = *(v84 - 8);
  v85 = MEMORY[0x28223BE20](v84);
  v246 = &v209 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v88 = &v209 - v87;
  v89 = v280;
  v90 = v210;
  v91 = swift_getTupleTypeMetadata2();
  v262 = *(v91 - 8);
  v263 = v91;
  v92 = MEMORY[0x28223BE20](v91);
  v209 = &v209 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v95 = &v209 - v94;
  v212 = *(v89 - 8);
  (*(v212 + 16))(&v209 - v94, v216, v89);
  v96 = *(v91 + 48);
  v97 = v211;
  (*(v211 + 16))(&v95[v96], v264, v90);
  v213 = *(v83 - 8);
  (*(v213 + 16))(v88, v266, v83);
  v266 = v84;
  v98 = *(v84 + 48);
  v99 = *(v252 + 16);
  v264 = v88;
  v100 = &v88[v98];
  v101 = v283;
  v99(v100, v222, v281);
  v216 = *(v295 - 8);
  (*(v216 + 16))(v82, v267);
  v102 = *(v284 + 48);
  v103 = *(v253 + 16);
  v267 = v82;
  v103(&v82[v102], v225, v254);
  v222 = *(v282 - 8);
  (*(v222 + 16))(v78, v269);
  v104 = *(v285 + 48);
  v105 = *(v256 + 16);
  v269 = v78;
  v105(&v78[v104], v227, v257);
  v225 = *(v101 - 8);
  v106 = v286;
  v107 = v101;
  v108 = v209;
  (*(v225 + 16))(v286, v217, v107);
  v109 = v90;
  (*(v258 + 16))(&v106[*(v287 + 48)], v218, v259);
  v227 = *(v294 - 8);
  v110 = v288;
  (*(v227 + 16))(v288, v219);
  (*(v260 + 16))(&v110[*(v289 + 48)], v231, v261);
  v231 = *(v296 - 1);
  v111 = v290;
  (*(v231 + 16))(v290, v220);
  (*(v272 + 16))(&v111[*(v291 + 48)], v235, v273);
  v235 = *(v279 - 8);
  v112 = v292;
  (*(v235 + 16))(v292, v221);
  (*(v277 + 16))(&v112[*(TupleTypeMetadata2 + 48)], v234, v278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310340;
  *(inited + 32) = (*(v239 + 1))(v280);
  v234 = inited + 32;
  *(inited + 40) = v114;
  v115 = *(v262 + 16);
  v239 = v95;
  v116 = v95;
  v117 = v263;
  v115(v108, v116, v263);
  v118 = *(v117 + 48);
  v119 = v214;
  v120 = v215;
  (*(v97 + 32))(v214, &v108[v118], v109);
  v121 = *(v120 - 8);
  if ((*(v121 + 48))(v119, 1, v120) == 1)
  {
    (*(v212 + 8))(v108, v280);
    (*(v97 + 8))(v119, v109);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v122 = *(a34 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v122(v120, a34);
    (*(v121 + 8))(v119, v120);
    (*(v212 + 8))(v108, v280);
  }

  v280 = a39;
  v123 = v264;
  v124 = v255;
  *(inited + 88) = (*(v226 + 8))(v255);
  *(inited + 96) = v125;
  v126 = v246;
  v127 = v123;
  v128 = v266;
  (*(v265 + 16))(v246, v127, v266);
  v129 = v252;
  v130 = v224;
  v131 = v281;
  (*(v252 + 32))(v224, &v126[*(v128 + 48)], v281);
  v132 = v229;
  v133 = *(v229 - 8);
  if ((*(v133 + 48))(v130, 1, v229) == 1)
  {
    (*(v213 + 8))(v126, v124);
    (*(v129 + 8))(v130, v131);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v134 = *(a36 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v134(v132, a36);
    (*(v133 + 8))(v130, v132);
    (*(v213 + 8))(v246, v124);
  }

  v135 = v295;
  v136 = v254;
  v137 = v223;
  v281 = a41;
  v138 = v267;
  *(inited + 144) = (*(v230 + 8))(v295);
  *(inited + 152) = v139;
  v140 = v138;
  v141 = v284;
  (*(v268 + 16))(v137, v140, v284);
  v142 = v253;
  v143 = v228;
  (*(v253 + 32))(v228, &v137[*(v141 + 48)], v136);
  v144 = v232;
  v145 = *(v232 - 8);
  if ((*(v145 + 48))(v143, 1, v232) == 1)
  {
    (*(v216 + 8))(v137, v135);
    (*(v142 + 8))(v143, v136);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v146 = *(a38 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v146(v144, a38);
    (*(v145 + 8))(v143, v144);
    (*(v216 + 8))(v137, v295);
  }

  v147 = v282;
  v149 = v256;
  v148 = v257;
  v295 = a43;
  v150 = v269;
  *(inited + 200) = (*(v280 + 8))(v282);
  *(inited + 208) = v151;
  v152 = v247;
  v153 = v150;
  v154 = v285;
  (*(v270 + 16))(v247, v153, v285);
  v155 = &v152[*(v154 + 48)];
  v156 = v233;
  (*(v149 + 32))(v233, v155, v148);
  v157 = v236;
  v158 = *(v236 - 8);
  if ((*(v158 + 48))(v156, 1, v236) == 1)
  {
    (*(v222 + 8))(v152, v147);
    (*(v149 + 8))(v156, v148);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v159 = *(a40 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v159(v157, a40);
    (*(v158 + 8))(v156, v157);
    (*(v222 + 8))(v247, v147);
  }

  v160 = v283;
  v162 = v258;
  v161 = v259;
  v163 = v248;
  v283 = a45;
  v164 = v286;
  *(inited + 256) = (*(v281 + 8))(v160);
  *(inited + 264) = v165;
  v166 = v164;
  v167 = v287;
  (*(v271 + 16))(v163, v166, v287);
  v168 = v237;
  (*(v162 + 32))(v237, &v163[*(v167 + 48)], v161);
  v169 = v238;
  v170 = *(v238 - 8);
  if ((*(v170 + 48))(v168, 1, v238) == 1)
  {
    (*(v225 + 8))(v163, v160);
    (*(v162 + 8))(v168, v161);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v171 = *(a42 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v171(v169, a42);
    (*(v170 + 8))(v168, v169);
    (*(v225 + 8))(v248, v160);
  }

  v173 = v260;
  v172 = v261;
  v174 = v249;
  v175 = v294;
  v282 = a47;
  v176 = v288;
  *(inited + 312) = (*(v295 + 8))(v294);
  *(inited + 320) = v177;
  v178 = v176;
  v179 = v289;
  (*(v274 + 16))(v174, v178, v289);
  v180 = v240;
  (*(v173 + 32))(v240, &v174[*(v179 + 48)], v172);
  v181 = v241;
  v182 = *(v241 - 8);
  if ((*(v182 + 48))(v180, 1, v241) == 1)
  {
    (*(v227 + 8))(v174, v175);
    (*(v173 + 8))(v180, v172);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v183 = *(a44 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v183(v181, a44);
    (*(v182 + 8))(v180, v181);
    (*(v227 + 8))(v249, v294);
  }

  v184 = v279;
  v185 = v296;
  v186 = v290;
  *(inited + 368) = (*(v283 + 8))(v296);
  *(inited + 376) = v187;
  v188 = v250;
  v189 = v186;
  v190 = v291;
  (*(v275 + 16))(v250, v189, v291);
  v191 = v272;
  v192 = v273;
  v193 = v242;
  (*(v272 + 32))(v242, &v188[*(v190 + 48)], v273);
  v194 = v243;
  v195 = *(v243 - 8);
  if ((*(v195 + 48))(v193, 1, v243) == 1)
  {
    (*(v231 + 8))(v188, v185);
    (*(v191 + 8))(v193, v192);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v196 = *(a46 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v196(v194, a46);
    (*(v195 + 8))(v193, v194);
    (*(v231 + 8))(v250, v296);
  }

  v197 = v278;
  v198 = TupleTypeMetadata2;
  v199 = v251;
  v200 = v292;
  *(inited + 424) = (*(v282 + 8))(v184);
  *(inited + 432) = v201;
  (*(v276 + 16))(v199, v200, v198);
  v202 = v277;
  v203 = v244;
  (*(v277 + 32))(v244, &v199[*(v198 + 48)], v197);
  v204 = v245;
  v205 = *(v245 - 8);
  if ((*(v205 + 48))(v203, 1, v245) == 1)
  {
    (*(v235 + 8))(v199, v184);
    (*(v202 + 8))(v203, v197);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v296 = *(a48 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    (v296)(v204, a48);
    (*(v205 + 8))(v203, v204);
    (*(v235 + 8))(v251, v184);
  }

  v206 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v207 = sub_25F252D8C(v206);

  (*(v276 + 8))(v292, TupleTypeMetadata2);
  (*(v275 + 8))(v290, v291);
  (*(v274 + 8))(v288, v289);
  (*(v271 + 8))(v286, v287);
  (*(v270 + 8))(v269, v285);
  (*(v268 + 8))(v267, v284);
  (*(v265 + 8))(v264, v266);
  (*(v262 + 8))(v239, v263);
  return v207;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  v245 = a8;
  v294 = a7;
  v242 = a6;
  v291 = a3;
  v292 = a5;
  v240 = a4;
  v289 = a2;
  v234 = a1;
  v250 = a41;
  v246 = a39;
  v320 = a35;
  v324 = a33;
  v323 = a31;
  v307 = a29;
  v325 = a27;
  v322 = a25;
  v321 = a23;
  v279 = a21;
  v235 = a20;
  v305 = a19;
  v262 = a37;
  v260 = a18;
  v254 = a17;
  v255 = a16;
  v241 = a15;
  v253 = a14;
  v239 = a13;
  v249 = a12;
  v238 = a11;
  v237 = a10;
  v236 = a9;
  v268 = a36;
  v304 = sub_25F305C1C();
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v266 = a34;
  v267 = &v229 - v54;
  v300 = sub_25F305C1C();
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v264 = a32;
  v265 = &v229 - v55;
  v56 = sub_25F305C1C();
  v287 = *(v56 - 8);
  v288 = v56;
  MEMORY[0x28223BE20](v56);
  v263 = &v229 - v57;
  v261 = a30;
  v58 = sub_25F305C1C();
  v284 = *(v58 - 8);
  v285 = v58;
  MEMORY[0x28223BE20](v58);
  v258 = a28;
  v259 = &v229 - v59;
  v60 = sub_25F305C1C();
  v282 = *(v60 - 8);
  v283 = v60;
  MEMORY[0x28223BE20](v60);
  v256 = a26;
  v257 = &v229 - v61;
  v62 = sub_25F305C1C();
  v280 = *(v62 - 8);
  v281 = v62;
  MEMORY[0x28223BE20](v62);
  v251 = &v229 - v63;
  v252 = a24;
  v306 = sub_25F305C1C();
  v278 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v247 = &v229 - v64;
  v248 = a22;
  v65 = sub_25F305C1C();
  v276 = *(v65 - 8);
  v277 = v65;
  MEMORY[0x28223BE20](v65);
  v243 = &v229 - v66;
  v67 = sub_25F305C1C();
  v230 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v233 = &v229 - v68;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v302 = *(TupleTypeMetadata2 - 8);
  v69 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v275 = &v229 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v318 = &v229 - v71;
  v317 = swift_getTupleTypeMetadata2();
  v301 = *(v317 - 8);
  v72 = MEMORY[0x28223BE20](v317);
  v274 = &v229 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v316 = &v229 - v74;
  v315 = swift_getTupleTypeMetadata2();
  v298 = *(v315 - 8);
  v75 = MEMORY[0x28223BE20](v315);
  v273 = &v229 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v314 = &v229 - v77;
  v313 = swift_getTupleTypeMetadata2();
  v297 = *(v313 - 8);
  v78 = MEMORY[0x28223BE20](v313);
  v272 = &v229 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v312 = &v229 - v80;
  v311 = swift_getTupleTypeMetadata2();
  v296 = *(v311 - 8);
  v81 = MEMORY[0x28223BE20](v311);
  v271 = &v229 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v310 = &v229 - v83;
  v309 = swift_getTupleTypeMetadata2();
  v295 = *(v309 - 8);
  v84 = MEMORY[0x28223BE20](v309);
  v244 = &v229 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v87 = &v229 - v86;
  v308 = swift_getTupleTypeMetadata2();
  v293 = *(v308 - 8);
  v88 = MEMORY[0x28223BE20](v308);
  v270 = &v229 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v91 = &v229 - v90;
  v92 = v279;
  v93 = swift_getTupleTypeMetadata2();
  v290 = *(v93 - 8);
  v94 = MEMORY[0x28223BE20](v93);
  v269 = &v229 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v97 = &v229 - v96;
  v98 = v305;
  v99 = swift_getTupleTypeMetadata2();
  v286 = *(v99 - 8);
  v100 = MEMORY[0x28223BE20](v99);
  v229 = &v229 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v103 = &v229 - v102;
  v231 = *(v98 - 8);
  (*(v231 + 16))(&v229 - v102, v234, v98);
  v104 = v230;
  (*(v230 + 16))(&v103[*(v99 + 48)], v289, v67);
  v232 = *(v92 - 8);
  (*(v232 + 16))(v97, v291, v92);
  v291 = v93;
  v105 = *(v93 + 48);
  v106 = v307;
  v107 = *(v276 + 16);
  v289 = v97;
  v107(&v97[v105], v240, v277);
  v234 = *(v321 - 8);
  (*(v234 + 16))(v91, v292);
  v108 = *(v308 + 48);
  v109 = v325;
  v110 = *(v278 + 16);
  v292 = v91;
  v110(&v91[v108], v242, v306);
  v240 = *(v322 - 8);
  (*(v240 + 16))(v87, v294);
  v111 = *(v309 + 48);
  v112 = *(v280 + 16);
  v294 = v87;
  v113 = &v87[v111];
  v114 = v67;
  v112(v113, v245, v281);
  v242 = *(v109 - 8);
  v115 = v310;
  (*(v242 + 16))(v310, v236, v109);
  (*(v282 + 16))(&v115[*(v311 + 48)], v237, v283);
  v245 = *(v106 - 8);
  v116 = v312;
  v117 = v106;
  v118 = v229;
  (*(v245 + 16))(v312, v238, v117);
  (*(v284 + 16))(&v116[*(v313 + 48)], v249, v285);
  v249 = *(v323 - 8);
  v119 = v314;
  (*(v249 + 16))(v314, v239);
  (*(v287 + 16))(&v119[*(v315 + 48)], v253, v288);
  v253 = *(v324 - 8);
  v120 = v316;
  (*(v253 + 16))(v316, v241);
  (*(v299 + 16))(&v120[*(v317 + 48)], v255, v300);
  v255 = *(v320 - 8);
  v121 = v318;
  (*(v255 + 16))(v318, v254);
  (*(v303 + 16))(&v121[*(TupleTypeMetadata2 + 48)], v260, v304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310380;
  v123 = (*(v262 + 8))(v305);
  v124 = v233;
  *(inited + 32) = v123;
  v254 = inited + 32;
  *(inited + 40) = v125;
  v126 = *(v286 + 16);
  v260 = v103;
  v126(v118, v103, v99);
  v262 = v99;
  v127 = v235;
  (*(v104 + 32))(v124, &v118[*(v99 + 48)], v114);
  v128 = *(v127 - 8);
  if ((*(v128 + 48))(v124, 1, v127) == 1)
  {
    (*(v231 + 8))(v118, v305);
    (*(v104 + 8))(v124, v114);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v129 = *(a38 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v129(v127, a38);
    (*(v128 + 8))(v124, v127);
    (*(v231 + 8))(v118, v305);
  }

  v305 = a43;
  v130 = v289;
  v131 = v279;
  *(inited + 88) = (*(v246 + 8))(v279);
  *(inited + 96) = v132;
  v133 = v269;
  v134 = v130;
  v135 = v291;
  (*(v290 + 16))(v269, v134, v291);
  v137 = v276;
  v136 = v277;
  v138 = v243;
  (*(v276 + 32))(v243, &v133[*(v135 + 48)], v277);
  v139 = v248;
  v140 = *(v248 - 8);
  if ((*(v140 + 48))(v138, 1, v248) == 1)
  {
    (*(v232 + 8))(v133, v131);
    (*(v137 + 8))(v138, v136);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v141 = *(a40 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v141(v139, a40);
    (*(v140 + 8))(v138, v139);
    (*(v232 + 8))(v269, v131);
  }

  v142 = v280;
  v143 = v247;
  v144 = v278;
  v280 = a45;
  v145 = v292;
  v146 = v321;
  *(inited + 144) = (*(v250 + 8))(v321);
  *(inited + 152) = v147;
  v148 = v270;
  v149 = v145;
  v150 = v308;
  (*(v293 + 16))(v270, v149, v308);
  v151 = v306;
  (*(v144 + 32))(v143, &v148[*(v150 + 48)], v306);
  v152 = v252;
  v153 = *(v252 - 8);
  if ((*(v153 + 48))(v143, 1, v252) == 1)
  {
    (*(v234 + 8))(v148, v146);
    (*(v144 + 8))(v143, v151);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v154 = *(a42 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v154(v152, a42);
    (*(v153 + 8))(v143, v152);
    (*(v234 + 8))(v270, v321);
  }

  v155 = v251;
  v321 = a47;
  v156 = v294;
  v157 = v322;
  *(inited + 200) = (*(v305 + 8))(v322);
  *(inited + 208) = v158;
  v159 = v244;
  v160 = v156;
  v161 = v309;
  (*(v295 + 16))(v244, v160, v309);
  v162 = v281;
  (*(v142 + 32))(v155, &v159[*(v161 + 48)], v281);
  v163 = v256;
  v164 = *(v256 - 8);
  if ((*(v164 + 48))(v155, 1, v256) == 1)
  {
    (*(v240 + 8))(v159, v157);
    (*(v142 + 8))(v155, v162);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v165 = *(a44 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v165(v163, a44);
    (*(v164 + 8))(v155, v163);
    (*(v240 + 8))(v159, v322);
  }

  v166 = v258;
  v167 = v283;
  v168 = v271;
  v322 = a49;
  v169 = v310;
  *(inited + 256) = (*(v280 + 8))(v325);
  *(inited + 264) = v170;
  v171 = v169;
  v172 = v311;
  (*(v296 + 16))(v168, v171, v311);
  v173 = v282;
  v174 = &v168[*(v172 + 48)];
  v175 = v257;
  (*(v282 + 32))(v257, v174, v167);
  v176 = *(v166 - 8);
  v177 = (*(v176 + 48))(v175, 1, v166);
  v178 = v272;
  if (v177 == 1)
  {
    (*(v242 + 8))(v168, v325);
    (*(v173 + 8))(v175, v167);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v179 = *(a46 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v179(v166, a46);
    (*(v176 + 8))(v175, v166);
    (*(v242 + 8))(v271, v325);
  }

  v180 = v307;
  v182 = v284;
  v181 = v285;
  v325 = a51;
  v183 = v312;
  *(inited + 312) = (*(v321 + 8))(v307);
  *(inited + 320) = v184;
  v185 = v183;
  v186 = v313;
  (*(v297 + 16))(v178, v185, v313);
  v187 = v259;
  (*(v182 + 32))(v259, &v178[*(v186 + 48)], v181);
  v188 = v261;
  v189 = *(v261 - 8);
  if ((*(v189 + 48))(v187, 1, v261) == 1)
  {
    (*(v245 + 8))(v178, v180);
    (*(v182 + 8))(v187, v181);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v321 = *(a48 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    (v321)(v188, a48);
    (*(v189 + 8))(v187, v188);
    (*(v245 + 8))(v272, v180);
  }

  v190 = v265;
  v192 = v287;
  v191 = v288;
  v193 = v273;
  v321 = a53;
  v194 = v314;
  v195 = v323;
  *(inited + 368) = (*(v322 + 8))(v323);
  *(inited + 376) = v196;
  v197 = v194;
  v198 = v315;
  (*(v298 + 16))(v193, v197, v315);
  v199 = v263;
  (*(v192 + 32))(v263, &v193[*(v198 + 48)], v191);
  v200 = v264;
  v201 = *(v264 - 8);
  if ((*(v201 + 48))(v199, 1, v264) == 1)
  {
    (*(v249 + 8))(v193, v195);
    (*(v192 + 8))(v199, v191);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v202 = *(a50 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v202(v200, a50);
    (*(v201 + 8))(v199, v200);
    (*(v249 + 8))(v273, v323);
  }

  v203 = v324;
  v204 = v299;
  v205 = v274;
  v206 = v316;
  *(inited + 424) = (*(v325 + 8))(v324);
  *(inited + 432) = v207;
  v208 = v206;
  v209 = v317;
  (*(v301 + 16))(v205, v208, v317);
  v210 = v300;
  (*(v204 + 32))(v190, &v205[*(v209 + 48)], v300);
  v211 = v266;
  v212 = *(v266 - 8);
  if ((*(v212 + 48))(v190, 1, v266) == 1)
  {
    (*(v253 + 8))(v205, v203);
    (*(v204 + 8))(v190, v210);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v213 = *(a52 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v213(v211, a52);
    (*(v212 + 8))(v190, v211);
    (*(v253 + 8))(v274, v324);
  }

  v214 = v320;
  v215 = v318;
  *(inited + 480) = (*(v321 + 8))(v320);
  *(inited + 488) = v216;
  v217 = v275;
  v218 = v215;
  v219 = TupleTypeMetadata2;
  (*(v302 + 16))(v275, v218, TupleTypeMetadata2);
  v220 = v303;
  v221 = &v217[*(v219 + 48)];
  v222 = v267;
  v223 = v304;
  (*(v303 + 32))(v267, v221, v304);
  v224 = v268;
  v225 = *(v268 - 8);
  if ((*(v225 + 48))(v222, 1, v268) == 1)
  {
    (*(v255 + 8))(v217, v214);
    (*(v220 + 8))(v222, v223);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v325 = *(a54 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v325)(v224, a54);
    (*(v225 + 8))(v222, v224);
    (*(v255 + 8))(v275, v214);
  }

  v226 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v227 = sub_25F252D8C(v226);

  (*(v302 + 8))(v318, TupleTypeMetadata2);
  (*(v301 + 8))(v316, v317);
  (*(v298 + 8))(v314, v315);
  (*(v297 + 8))(v312, v313);
  (*(v296 + 8))(v310, v311);
  (*(v295 + 8))(v294, v309);
  (*(v293 + 8))(v292, v308);
  (*(v290 + 8))(v289, v291);
  (*(v286 + 8))(v260, v262);
  return v227;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V>(_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v287 = a8;
  v283 = a7;
  v276 = a6;
  v346 = a5;
  v273 = a1;
  v274 = a4;
  v345 = a3;
  v343 = a2;
  v293 = a49;
  v290 = a47;
  v381 = a43;
  v386 = a41;
  v385 = a39;
  v384 = a37;
  v362 = a35;
  v382 = a33;
  v383 = a31;
  v361 = a29;
  v387 = a27;
  v330 = a25;
  v327 = a24;
  v324 = a23;
  v309 = a45;
  v300 = a22;
  v285 = a21;
  v301 = a20;
  v284 = a19;
  v298 = a18;
  v282 = a17;
  v296 = a16;
  v281 = a15;
  v292 = a14;
  v280 = a13;
  v288 = a12;
  v279 = a11;
  v277 = a10;
  v275 = a9;
  v317 = a44;
  v380 = sub_25F305C1C();
  v360 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v315 = a42;
  v316 = &v267 - v66;
  v359 = sub_25F305C1C();
  v357 = *(v359 - 8);
  MEMORY[0x28223BE20](v359);
  v313 = a40;
  v314 = &v267 - v67;
  v350 = sub_25F305C1C();
  v349 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v311 = a38;
  v312 = &v267 - v68;
  v340 = sub_25F305C1C();
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v307 = a36;
  v308 = &v267 - v69;
  v338 = sub_25F305C1C();
  v337 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v304 = a34;
  v305 = &v267 - v70;
  v336 = sub_25F305C1C();
  v335 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v302 = &v267 - v71;
  v303 = a32;
  v334 = sub_25F305C1C();
  v333 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v297 = &v267 - v72;
  v299 = a30;
  v332 = sub_25F305C1C();
  v331 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v294 = &v267 - v73;
  v295 = a28;
  v74 = sub_25F305C1C();
  v328 = *(v74 - 8);
  v329 = v74;
  MEMORY[0x28223BE20](v74);
  v289 = &v267 - v75;
  v291 = a26;
  v76 = sub_25F305C1C();
  v325 = *(v76 - 8);
  v326 = v76;
  MEMORY[0x28223BE20](v76);
  v286 = &v267 - v77;
  v268 = sub_25F305C1C();
  v270 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v272 = &v267 - v78;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v358 = *(TupleTypeMetadata2 - 8);
  v79 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v323 = &v267 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v378 = &v267 - v81;
  v377 = swift_getTupleTypeMetadata2();
  v356 = *(v377 - 8);
  v82 = MEMORY[0x28223BE20](v377);
  v310 = &v267 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v376 = &v267 - v84;
  v375 = swift_getTupleTypeMetadata2();
  v355 = *(v375 - 8);
  v85 = MEMORY[0x28223BE20](v375);
  v306 = &v267 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v374 = &v267 - v87;
  v373 = swift_getTupleTypeMetadata2();
  v354 = *(v373 - 8);
  v88 = MEMORY[0x28223BE20](v373);
  v322 = &v267 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v372 = &v267 - v90;
  v371 = swift_getTupleTypeMetadata2();
  v353 = *(v371 - 8);
  v91 = MEMORY[0x28223BE20](v371);
  v321 = &v267 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v370 = &v267 - v93;
  v369 = swift_getTupleTypeMetadata2();
  v352 = *(v369 - 8);
  v94 = MEMORY[0x28223BE20](v369);
  v320 = &v267 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v368 = &v267 - v96;
  v367 = swift_getTupleTypeMetadata2();
  v351 = *(v367 - 8);
  v97 = MEMORY[0x28223BE20](v367);
  v319 = &v267 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v366 = &v267 - v99;
  v365 = swift_getTupleTypeMetadata2();
  v348 = *(v365 - 8);
  v100 = MEMORY[0x28223BE20](v365);
  v318 = &v267 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v364 = &v267 - v102;
  v363 = swift_getTupleTypeMetadata2();
  v347 = *(v363 - 8);
  v103 = MEMORY[0x28223BE20](v363);
  v278 = &v267 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v106 = &v267 - v105;
  v107 = v330;
  v108 = swift_getTupleTypeMetadata2();
  v344 = *(v108 - 8);
  v109 = MEMORY[0x28223BE20](v108);
  v271 = &v267 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v112 = &v267 - v111;
  v113 = v324;
  v114 = v268;
  v115 = swift_getTupleTypeMetadata2();
  v342 = v115;
  v341 = *(v115 - 8);
  v116 = MEMORY[0x28223BE20](v115);
  v267 = &v267 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v119 = &v267 - v118;
  v269 = *(v113 - 8);
  (*(v269 + 16))(&v267 - v118, v273, v113);
  v120 = v270;
  (*(v270 + 16))(&v119[*(v115 + 48)], v343, v114);
  v273 = *(v107 - 8);
  (*(v273 + 16))(v112, v345, v107);
  v345 = v108;
  v121 = *(v108 + 48);
  v122 = v387;
  v123 = *(v325 + 16);
  v343 = v112;
  v123(&v112[v121], v274, v326);
  v274 = *(v122 - 8);
  v124 = v113;
  (*(v274 + 16))(v106, v346, v122);
  v125 = *(v363 + 48);
  v126 = *(v328 + 16);
  v346 = v106;
  v126(&v106[v125], v276, v329);
  v276 = *(v361 - 8);
  v127 = v364;
  (*(v276 + 16))(v364, v283);
  v128 = v383;
  (*(v331 + 16))(&v127[*(v365 + 48)], v287, v332);
  v283 = *(v128 - 8);
  v129 = v366;
  (*(v283 + 16))(v366, v275, v128);
  (*(v333 + 16))(&v129[*(v367 + 48)], v277, v334);
  v287 = *(v382 - 8);
  v130 = v368;
  (*(v287 + 16))(v368, v279);
  (*(v335 + 16))(&v130[*(v369 + 48)], v288, v336);
  v288 = *(v362 - 8);
  v131 = v370;
  (*(v288 + 16))(v370, v280);
  (*(v337 + 16))(&v131[*(v371 + 48)], v292, v338);
  v292 = *(v384 - 1);
  v132 = v372;
  (*(v292 + 16))(v372, v281);
  (*(v339 + 16))(&v132[*(v373 + 48)], v296, v340);
  v296 = *(v385 - 1);
  v133 = v374;
  (*(v296 + 16))(v374, v282);
  (*(v349 + 16))(&v133[*(v375 + 48)], v298, v350);
  v298 = *(v386 - 8);
  v134 = v376;
  (*(v298 + 16))(v376, v284);
  (*(v357 + 16))(&v134[*(v377 + 48)], v301, v359);
  v301 = *(v381 - 8);
  v135 = v378;
  (*(v301 + 16))(v378, v285);
  (*(v360 + 16))(&v135[*(TupleTypeMetadata2 + 48)], v300, v380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F310390;
  *(inited + 32) = (*(v309 + 1))(v124);
  v300 = inited + 32;
  *(inited + 40) = v137;
  v138 = *(v341 + 16);
  v139 = v267;
  v309 = v119;
  v140 = v342;
  v138(v267, v119, v342);
  v141 = *(v140 + 48);
  v142 = v272;
  v143 = v139;
  (*(v120 + 32))(v272, &v139[v141], v114);
  v144 = *(v327 - 8);
  v145 = v327;
  if ((*(v144 + 48))(v142, 1) == 1)
  {
    (*(v269 + 8))(v143, v324);
    (*(v120 + 8))(v142, v114);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v146 = *(a46 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v146(v145, a46);
    (*(v144 + 8))(v142, v145);
    (*(v269 + 8))(v143, v324);
  }

  v327 = a51;
  v147 = v343;
  v148 = v330;
  *(inited + 88) = (*(v290 + 8))(v330);
  *(inited + 96) = v149;
  v150 = v271;
  v151 = v147;
  v152 = v345;
  (*(v344 + 16))(v271, v151, v345);
  v154 = v325;
  v153 = v326;
  v155 = v286;
  (*(v325 + 32))(v286, &v150[*(v152 + 48)], v326);
  v156 = v291;
  v157 = *(v291 - 8);
  if ((*(v157 + 48))(v155, 1, v291) == 1)
  {
    (*(v273 + 8))(v150, v148);
    (*(v154 + 8))(v155, v153);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v326 = *(a48 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v326(v156, a48);
    (*(v157 + 8))(v155, v156);
    (*(v273 + 8))(v150, v148);
  }

  v158 = v289;
  v160 = v328;
  v159 = v329;
  v161 = v278;
  v330 = a53;
  v162 = v346;
  *(inited + 144) = (*(v293 + 8))(v387);
  *(inited + 152) = v163;
  v164 = v162;
  v165 = v363;
  (*(v347 + 16))(v161, v164, v363);
  (*(v160 + 32))(v158, &v161[*(v165 + 48)], v159);
  v166 = v295;
  v167 = *(v295 - 8);
  if ((*(v167 + 48))(v158, 1, v295) == 1)
  {
    (*(v274 + 8))(v161, v387);
    (*(v160 + 8))(v158, v159);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v168 = *(a50 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v168(v166, a50);
    (*(v167 + 8))(v158, v166);
    (*(v274 + 8))(v161, v387);
  }

  v169 = v361;
  v170 = v294;
  v171 = v318;
  v361 = a55;
  v172 = v364;
  *(inited + 200) = (*(v327 + 8))(v169);
  *(inited + 208) = v173;
  v174 = v172;
  v175 = v365;
  (*(v348 + 16))(v171, v174, v365);
  v176 = v331;
  v177 = v332;
  (*(v331 + 32))(v170, &v171[*(v175 + 48)], v332);
  v178 = v299;
  v179 = *(v299 - 8);
  if ((*(v179 + 48))(v170, 1, v299) == 1)
  {
    (*(v276 + 8))(v171, v169);
    (*(v176 + 8))(v170, v177);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v180 = *(a52 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v180(v178, a52);
    (*(v179 + 8))(v170, v178);
    (*(v276 + 8))(v318, v169);
  }

  v181 = v383;
  v182 = v335;
  v335 = a57;
  v183 = v366;
  *(inited + 256) = (*(v330 + 8))(v383);
  *(inited + 264) = v184;
  v185 = v319;
  v186 = v183;
  v187 = v367;
  (*(v351 + 16))(v319, v186, v367);
  v188 = v333;
  v189 = v297;
  v190 = v334;
  (*(v333 + 32))(v297, &v185[*(v187 + 48)], v334);
  v191 = v303;
  v192 = *(v303 - 8);
  if ((*(v192 + 48))(v189, 1, v303) == 1)
  {
    (*(v283 + 8))(v185, v181);
    (*(v188 + 8))(v189, v190);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v193 = *(a54 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v193(v191, a54);
    (*(v192 + 8))(v189, v191);
    (*(v283 + 8))(v319, v383);
  }

  v194 = v302;
  v195 = v336;
  v387 = a59;
  v196 = v368;
  v197 = v382;
  *(inited + 312) = (*(v361 + 8))(v382);
  *(inited + 320) = v198;
  v199 = v320;
  v200 = v196;
  v201 = v369;
  (*(v352 + 16))(v320, v200, v369);
  (*(v182 + 32))(v194, &v199[*(v201 + 48)], v195);
  v202 = v304;
  v203 = *(v304 - 8);
  if ((*(v203 + 48))(v194, 1, v304) == 1)
  {
    (*(v287 + 8))(v199, v197);
    (*(v182 + 8))(v194, v195);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v204 = *(a56 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v204(v202, a56);
    (*(v203 + 8))(v194, v202);
    (*(v287 + 8))(v320, v382);
  }

  v205 = v362;
  v206 = v307;
  v207 = v305;
  v383 = a61;
  v208 = v370;
  *(inited + 368) = (*(v335 + 8))(v362);
  *(inited + 376) = v209;
  v210 = v321;
  v211 = v208;
  v212 = v371;
  (*(v353 + 16))(v321, v211, v371);
  v213 = v337;
  v214 = &v210[*(v212 + 48)];
  v215 = v338;
  (*(v337 + 32))(v207, v214, v338);
  v216 = *(v206 - 8);
  if ((*(v216 + 48))(v207, 1, v206) == 1)
  {
    (*(v288 + 8))(v210, v205);
    (*(v213 + 8))(v207, v215);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v217 = *(a58 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v217(v206, a58);
    (*(v216 + 8))(v207, v206);
    (*(v288 + 8))(v321, v205);
  }

  v218 = v384;
  v219 = v340;
  v220 = v339;
  v382 = a63;
  v221 = v372;
  *(inited + 424) = (*(v387 + 8))(v384);
  *(inited + 432) = v222;
  v223 = v322;
  v224 = v221;
  v225 = v373;
  (*(v354 + 16))(v322, v224, v373);
  v226 = v308;
  (*(v220 + 32))(v308, &v223[*(v225 + 48)], v219);
  v227 = v311;
  v228 = *(v311 - 8);
  if ((*(v228 + 48))(v226, 1, v311) == 1)
  {
    (*(v292 + 8))(v223, v218);
    (*(v220 + 8))(v226, v219);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v229 = *(a60 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    v229(v227, a60);
    (*(v228 + 8))(v226, v227);
    (*(v292 + 8))(v322, v384);
  }

  v230 = v385;
  v231 = v349;
  v387 = a65;
  v232 = v374;
  *(inited + 480) = (*(v383 + 8))(v385);
  *(inited + 488) = v233;
  v234 = v306;
  v235 = v232;
  v236 = v375;
  (*(v355 + 16))(v306, v235, v375);
  v237 = v312;
  v238 = v350;
  (*(v231 + 32))(v312, &v234[*(v236 + 48)], v350);
  v239 = v313;
  v240 = *(v313 - 8);
  if ((*(v240 + 48))(v237, 1, v313) == 1)
  {
    (*(v296 + 8))(v234, v230);
    (*(v231 + 8))(v237, v238);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v384 = *(a62 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    (v384)(v239, a62);
    (*(v240 + 8))(v237, v239);
    (*(v296 + 8))(v234, v385);
  }

  v241 = v386;
  v242 = v376;
  *(inited + 536) = (*(v382 + 8))(v386);
  *(inited + 544) = v243;
  v244 = v310;
  v245 = v242;
  v246 = v377;
  (*(v356 + 16))(v310, v245, v377);
  v247 = v357;
  v248 = v314;
  v249 = v359;
  (*(v357 + 32))(v314, &v244[*(v246 + 48)], v359);
  v250 = v315;
  v251 = *(v315 - 8);
  if ((*(v251 + 48))(v248, 1, v315) == 1)
  {
    (*(v298 + 8))(v244, v241);
    (*(v247 + 8))(v248, v249);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v385 = *(a64 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    (v385)(v250, a64);
    (*(v251 + 8))(v248, v250);
    (*(v298 + 8))(v244, v386);
  }

  v252 = v381;
  v253 = v380;
  v254 = v378;
  *(inited + 592) = (*(v387 + 8))(v381);
  *(inited + 600) = v255;
  v256 = v323;
  v257 = v254;
  v258 = TupleTypeMetadata2;
  (*(v358 + 16))(v323, v257, TupleTypeMetadata2);
  v259 = v360;
  v260 = &v256[*(v258 + 48)];
  v261 = v316;
  (*(v360 + 32))(v316, v260, v253);
  v262 = v317;
  v263 = *(v317 - 8);
  if ((*(v263 + 48))(v261, 1, v317) == 1)
  {
    (*(v301 + 8))(v256, v252);
    (*(v259 + 8))(v261, v253);
    *(inited + 640) = 0;
    *(inited + 608) = 0u;
    *(inited + 624) = 0u;
  }

  else
  {
    v387 = *(a66 + 24);
    *(inited + 632) = swift_getAssociatedTypeWitness();
    *(inited + 640) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 608));
    (v387)(v262, a66);
    (*(v263 + 8))(v261, v262);
    (*(v301 + 8))(v323, v252);
  }

  v264 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v265 = sub_25F252D8C(v264);

  (*(v358 + 8))(v378, TupleTypeMetadata2);
  (*(v356 + 8))(v376, v377);
  (*(v355 + 8))(v374, v375);
  (*(v354 + 8))(v372, v373);
  (*(v353 + 8))(v370, v371);
  (*(v352 + 8))(v368, v369);
  (*(v351 + 8))(v366, v367);
  (*(v348 + 8))(v364, v365);
  (*(v347 + 8))(v346, v363);
  (*(v344 + 8))(v343, v345);
  (*(v341 + 8))(v309, v342);
  return v265;
}

uint64_t static PropertyListBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X>(_:_:_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v320 = a6;
  v321 = a8;
  v388 = a7;
  v386 = a5;
  v313 = a4;
  v385 = a3;
  v383 = a2;
  v306 = a1;
  v326 = a53;
  v323 = a51;
  v426 = a47;
  v433 = a45;
  v432 = a43;
  v431 = a41;
  v430 = a39;
  v406 = a37;
  v427 = a35;
  v429 = a33;
  v405 = a31;
  v428 = a29;
  v366 = a28;
  v367 = a27;
  v363 = a26;
  v403 = a25;
  v336 = a49;
  v318 = a24;
  v317 = a23;
  v337 = a22;
  v316 = a21;
  v332 = a20;
  v315 = a19;
  v329 = a18;
  v314 = a17;
  v327 = a16;
  v312 = a15;
  v324 = a14;
  v311 = a13;
  v310 = a12;
  v309 = a11;
  v308 = a10;
  v307 = a9;
  v351 = a48;
  v425 = sub_25F305C1C();
  v402 = *(v425 - 8);
  MEMORY[0x28223BE20](v425);
  v349 = a46;
  v350 = &v300 - v72;
  v401 = sub_25F305C1C();
  v400 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v347 = a44;
  v348 = &v300 - v73;
  v393 = sub_25F305C1C();
  v392 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v345 = a42;
  v346 = &v300 - v74;
  v380 = sub_25F305C1C();
  v379 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v342 = a40;
  v343 = &v300 - v75;
  v377 = sub_25F305C1C();
  v376 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v340 = a38;
  v341 = &v300 - v76;
  v375 = sub_25F305C1C();
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v338 = &v300 - v77;
  v339 = a36;
  v373 = sub_25F305C1C();
  v372 = *(v373 - 8);
  MEMORY[0x28223BE20](v373);
  v333 = &v300 - v78;
  v335 = a34;
  v371 = sub_25F305C1C();
  v370 = *(v371 - 8);
  MEMORY[0x28223BE20](v371);
  v330 = &v300 - v79;
  v331 = a32;
  v369 = sub_25F305C1C();
  v368 = *(v369 - 8);
  MEMORY[0x28223BE20](v369);
  v325 = &v300 - v80;
  v328 = a30;
  v365 = sub_25F305C1C();
  v364 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v322 = &v300 - v81;
  v404 = sub_25F305C1C();
  v362 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v319 = &v300 - v82;
  v361 = sub_25F305C1C();
  v302 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v305 = &v300 - v83;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v399 = *(TupleTypeMetadata2 - 8);
  v84 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v360 = &v300 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v423 = &v300 - v86;
  v422 = swift_getTupleTypeMetadata2();
  v398 = *(v422 - 8);
  v87 = MEMORY[0x28223BE20](v422);
  v344 = &v300 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v421 = &v300 - v89;
  v420 = swift_getTupleTypeMetadata2();
  v397 = *(v420 - 8);
  v90 = MEMORY[0x28223BE20](v420);
  v359 = &v300 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v419 = &v300 - v92;
  v418 = swift_getTupleTypeMetadata2();
  v396 = *(v418 - 8);
  v93 = MEMORY[0x28223BE20](v418);
  v358 = &v300 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v417 = &v300 - v95;
  v416 = swift_getTupleTypeMetadata2();
  v395 = *(v416 - 8);
  v96 = MEMORY[0x28223BE20](v416);
  v334 = &v300 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v415 = &v300 - v98;
  v414 = swift_getTupleTypeMetadata2();
  v394 = *(v414 - 8);
  v99 = MEMORY[0x28223BE20](v414);
  v357 = &v300 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v413 = &v300 - v101;
  v412 = swift_getTupleTypeMetadata2();
  v391 = *(v412 - 8);
  v102 = MEMORY[0x28223BE20](v412);
  v356 = &v300 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v411 = &v300 - v104;
  v410 = swift_getTupleTypeMetadata2();
  v390 = *(v410 - 8);
  v105 = MEMORY[0x28223BE20](v410);
  v355 = &v300 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v105);
  v409 = &v300 - v107;
  v408 = swift_getTupleTypeMetadata2();
  v389 = *(v408 - 8);
  v108 = MEMORY[0x28223BE20](v408);
  v354 = &v300 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v111 = &v300 - v110;
  v407 = swift_getTupleTypeMetadata2();
  v387 = *(v407 - 8);
  v112 = MEMORY[0x28223BE20](v407);
  v353 = &v300 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v115 = &v300 - v114;
  v116 = v367;
  v117 = swift_getTupleTypeMetadata2();
  v384 = *(v117 - 8);
  v118 = MEMORY[0x28223BE20](v117);
  v352 = &v300 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v121 = &v300 - v120;
  v122 = v403;
  v123 = v361;
  v124 = swift_getTupleTypeMetadata2();
  v382 = v124;
  v381 = *(v124 - 8);
  v125 = MEMORY[0x28223BE20](v124);
  v300 = &v300 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v128 = &v300 - v127;
  v301 = *(v122 - 8);
  v129 = *(v301 + 16);
  v378 = &v300 - v127;
  v129(&v300 - v127, v306, v122);
  v130 = v302;
  (*(v302 + 16))(&v128[*(v124 + 48)], v383, v123);
  v303 = *(v116 - 8);
  (*(v303 + 16))(v121, v385, v116);
  v385 = v117;
  v131 = *(v117 + 48);
  v132 = *(v362 + 16);
  v383 = v121;
  v132(&v121[v131], v313, v404);
  v304 = *(v428 - 8);
  (*(v304 + 16))(v115, v386);
  v133 = *(v407 + 48);
  v134 = *(v364 + 16);
  v386 = v115;
  v135 = v376;
  v134(&v115[v133], v320, v365);
  v306 = *(v405 - 8);
  (*(v306 + 16))(v111, v388);
  v136 = *(v408 + 48);
  v137 = *(v368 + 16);
  v388 = v111;
  v138 = v430;
  v137(&v111[v136], v321, v369);
  v313 = *(v429 - 8);
  v139 = v409;
  (*(v313 + 16))(v409, v307);
  v140 = v130;
  (*(v370 + 16))(&v139[*(v410 + 48)], v308, v371);
  v320 = *(v427 - 8);
  v141 = v411;
  (*(v320 + 16))(v411, v309);
  (*(v372 + 16))(&v141[*(v412 + 48)], v310, v373);
  v321 = *(v406 - 8);
  v142 = v413;
  (*(v321 + 16))(v413, v311);
  v143 = v392;
  (*(v374 + 16))(&v142[*(v414 + 48)], v324, v375);
  v324 = *(v138 - 8);
  v144 = v415;
  (*(v324 + 16))(v415, v312, v138);
  (*(v135 + 16))(&v144[*(v416 + 48)], v327, v377);
  v327 = *(v431 - 8);
  v145 = v417;
  (*(v327 + 16))(v417, v314);
  v146 = &v145[*(v418 + 48)];
  v147 = v393;
  (*(v379 + 16))(v146, v329, v380);
  v329 = *(v432 - 1);
  v148 = v419;
  (*(v329 + 16))(v419, v315);
  (*(v143 + 16))(&v148[*(v420 + 48)], v332, v147);
  v332 = *(v433 - 1);
  v149 = v421;
  (*(v332 + 16))(v421, v316);
  (*(v400 + 16))(&v149[*(v422 + 48)], v337, v401);
  v337 = *(v426 - 8);
  v150 = v423;
  (*(v337 + 16))(v423, v317);
  (*(v402 + 16))(&v150[*(TupleTypeMetadata2 + 48)], v318, v425);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3103A0;
  v152 = v378;
  *(inited + 32) = (*(v336 + 8))(v403);
  v336 = inited + 32;
  *(inited + 40) = v153;
  v154 = v300;
  v155 = v152;
  v156 = v305;
  v157 = v382;
  (*(v381 + 16))(v300, v155, v382);
  v158 = v363;
  v159 = v154;
  v160 = &v154[*(v157 + 48)];
  v161 = v361;
  (*(v140 + 32))(v156, v160);
  v162 = *(v158 - 8);
  if ((*(v162 + 48))(v156, 1, v158) == 1)
  {
    (*(v301 + 8))(v159, v403);
    (*(v140 + 8))(v156, v161);
    *(inited + 80) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  else
  {
    v163 = *(a50 + 24);
    *(inited + 72) = swift_getAssociatedTypeWitness();
    *(inited + 80) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    v163(v158, a50);
    (*(v162 + 8))(v156, v158);
    (*(v301 + 8))(v159, v403);
  }

  v164 = a55;
  v165 = v383;
  v166 = v367;
  *(inited + 88) = (*(v323 + 8))(v367);
  *(inited + 96) = v167;
  v168 = v352;
  v169 = v165;
  v170 = v385;
  (*(v384 + 16))(v352, v169, v385);
  v171 = v362;
  v172 = v319;
  v173 = v404;
  (*(v362 + 32))(v319, &v168[*(v170 + 48)], v404);
  v174 = v366;
  v175 = *(v366 - 8);
  if ((*(v175 + 48))(v172, 1, v366) == 1)
  {
    (*(v303 + 8))(v168, v166);
    (*(v171 + 8))(v172, v173);
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  else
  {
    v404 = a55;
    v176 = *(a52 + 24);
    *(inited + 128) = swift_getAssociatedTypeWitness();
    *(inited + 136) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v176(v174, a52);
    v164 = v404;
    (*(v175 + 8))(v172, v174);
    (*(v303 + 8))(v352, v166);
  }

  v177 = v322;
  v178 = v364;
  v403 = a57;
  v179 = v386;
  v180 = v428;
  *(inited + 144) = (*(v326 + 8))(v428);
  *(inited + 152) = v181;
  v182 = v353;
  v183 = v179;
  v184 = v407;
  (*(v387 + 16))(v353, v183, v407);
  v185 = v365;
  (*(v178 + 32))(v177, &v182[*(v184 + 48)], v365);
  v186 = v328;
  v187 = *(v328 - 8);
  if ((*(v187 + 48))(v177, 1, v328) == 1)
  {
    (*(v304 + 8))(v182, v180);
    (*(v178 + 8))(v177, v185);
    *(inited + 192) = 0;
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
  }

  else
  {
    v188 = *(a54 + 24);
    *(inited + 184) = swift_getAssociatedTypeWitness();
    *(inited + 192) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 160));
    v188(v186, a54);
    (*(v187 + 8))(v177, v186);
    (*(v304 + 8))(v353, v428);
  }

  v189 = v325;
  v404 = a59;
  v190 = v388;
  v191 = v405;
  *(inited + 200) = (*(v164 + 8))(v405, v164);
  *(inited + 208) = v192;
  v193 = v354;
  v194 = v190;
  v195 = v408;
  (*(v389 + 16))(v354, v194, v408);
  v196 = v368;
  v197 = &v193[*(v195 + 48)];
  v198 = v369;
  (*(v368 + 32))(v189, v197, v369);
  v199 = v331;
  v200 = *(v331 - 8);
  if ((*(v200 + 48))(v189, 1, v331) == 1)
  {
    (*(v306 + 8))(v193, v191);
    (*(v196 + 8))(v189, v198);
    *(inited + 248) = 0;
    *(inited + 232) = 0u;
    *(inited + 216) = 0u;
  }

  else
  {
    v201 = *(a56 + 24);
    *(inited + 240) = swift_getAssociatedTypeWitness();
    *(inited + 248) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 216));
    v201(v199, a56);
    (*(v200 + 8))(v189, v199);
    (*(v306 + 8))(v354, v191);
  }

  v202 = v429;
  v203 = v372;
  v204 = v371;
  v205 = v370;
  v405 = a61;
  v206 = v409;
  *(inited + 256) = (*(v403 + 8))(v429);
  *(inited + 264) = v207;
  v208 = v355;
  v209 = v206;
  v210 = v410;
  (*(v390 + 16))(v355, v209, v410);
  v211 = v330;
  (*(v205 + 32))(v330, &v208[*(v210 + 48)], v204);
  v212 = v335;
  v213 = *(v335 - 8);
  if ((*(v213 + 48))(v211, 1, v335) == 1)
  {
    (*(v313 + 8))(v208, v202);
    (*(v205 + 8))(v211, v204);
    *(inited + 304) = 0;
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
  }

  else
  {
    v214 = *(a58 + 24);
    *(inited + 296) = swift_getAssociatedTypeWitness();
    *(inited + 304) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 272));
    v214(v212, a58);
    (*(v213 + 8))(v211, v212);
    (*(v313 + 8))(v355, v429);
  }

  v215 = v333;
  v428 = a63;
  v216 = v411;
  v217 = v427;
  *(inited + 312) = (*(v404 + 8))(v427);
  *(inited + 320) = v218;
  v219 = v356;
  v220 = v216;
  v221 = v412;
  (*(v391 + 16))(v356, v220, v412);
  v222 = v373;
  (*(v203 + 32))(v215, &v219[*(v221 + 48)], v373);
  v223 = v339;
  v224 = *(v339 - 8);
  if ((*(v224 + 48))(v215, 1, v339) == 1)
  {
    (*(v320 + 8))(v219, v217);
    (*(v203 + 8))(v215, v222);
    *(inited + 360) = 0;
    *(inited + 328) = 0u;
    *(inited + 344) = 0u;
  }

  else
  {
    v225 = *(a60 + 24);
    *(inited + 352) = swift_getAssociatedTypeWitness();
    *(inited + 360) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 328));
    v225(v223, a60);
    (*(v224 + 8))(v215, v223);
    (*(v320 + 8))(v356, v427);
  }

  v226 = v340;
  v227 = v338;
  v228 = v374;
  v427 = a65;
  v229 = v413;
  v230 = v406;
  *(inited + 368) = (*(v405 + 8))(v406);
  *(inited + 376) = v231;
  v232 = v357;
  v233 = v229;
  v234 = v414;
  (*(v394 + 16))(v357, v233, v414);
  v235 = &v232[*(v234 + 48)];
  v236 = v375;
  (*(v228 + 32))(v227, v235, v375);
  v237 = *(v226 - 8);
  if ((*(v237 + 48))(v227, 1, v226) == 1)
  {
    (*(v321 + 8))(v232, v230);
    (*(v228 + 8))(v227, v236);
    *(inited + 416) = 0;
    *(inited + 384) = 0u;
    *(inited + 400) = 0u;
  }

  else
  {
    v238 = *(a62 + 24);
    *(inited + 408) = swift_getAssociatedTypeWitness();
    *(inited + 416) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 384));
    v238(v226, a62);
    (*(v237 + 8))(v227, v226);
    (*(v321 + 8))(v357, v230);
  }

  v239 = v430;
  v240 = v334;
  v429 = a67;
  v241 = v415;
  *(inited + 424) = (*(v428 + 8))(v430);
  *(inited + 432) = v242;
  v243 = v241;
  v244 = v416;
  (*(v395 + 16))(v240, v243, v416);
  v245 = v376;
  v246 = v341;
  v247 = v377;
  (*(v376 + 32))(v341, &v240[*(v244 + 48)], v377);
  v248 = v342;
  v249 = *(v342 - 8);
  if ((*(v249 + 48))(v246, 1, v342) == 1)
  {
    (*(v324 + 8))(v240, v239);
    (*(v245 + 8))(v246, v247);
    *(inited + 472) = 0;
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
  }

  else
  {
    v428 = *(a64 + 24);
    *(inited + 464) = swift_getAssociatedTypeWitness();
    *(inited + 472) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 440));
    (v428)(v248, a64);
    (*(v249 + 8))(v246, v248);
    (*(v324 + 8))(v240, v430);
  }

  v250 = v431;
  v251 = v380;
  v252 = v379;
  v430 = a69;
  v253 = v417;
  *(inited + 480) = (*(v427 + 8))(v431);
  *(inited + 488) = v254;
  v255 = v358;
  v256 = v253;
  v257 = v418;
  (*(v396 + 16))(v358, v256, v418);
  v258 = v343;
  (*(v252 + 32))(v343, &v255[*(v257 + 48)], v251);
  v259 = v345;
  v260 = *(v345 - 8);
  if ((*(v260 + 48))(v258, 1, v345) == 1)
  {
    (*(v327 + 8))(v255, v250);
    (*(v252 + 8))(v258, v251);
    *(inited + 528) = 0;
    *(inited + 496) = 0u;
    *(inited + 512) = 0u;
  }

  else
  {
    v261 = *(a66 + 24);
    *(inited + 520) = swift_getAssociatedTypeWitness();
    *(inited + 528) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 496));
    v261(v259, a66);
    (*(v260 + 8))(v258, v259);
    (*(v327 + 8))(v358, v431);
  }

  v262 = v432;
  v263 = v392;
  v431 = a71;
  v264 = v419;
  *(inited + 536) = (*(v429 + 8))(v432);
  *(inited + 544) = v265;
  v266 = v359;
  v267 = v264;
  v268 = v420;
  (*(v397 + 16))(v359, v267, v420);
  v269 = v346;
  v270 = v393;
  (*(v263 + 32))(v346, &v266[*(v268 + 48)], v393);
  v271 = v347;
  v272 = *(v347 - 8);
  if ((*(v272 + 48))(v269, 1, v347) == 1)
  {
    (*(v329 + 8))(v266, v262);
    (*(v263 + 8))(v269, v270);
    *(inited + 584) = 0;
    *(inited + 552) = 0u;
    *(inited + 568) = 0u;
  }

  else
  {
    v273 = *(a68 + 24);
    *(inited + 576) = swift_getAssociatedTypeWitness();
    *(inited + 584) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 552));
    v273(v271, a68);
    (*(v272 + 8))(v269, v271);
    (*(v329 + 8))(v359, v432);
  }

  v274 = v400;
  v275 = v421;
  v276 = v433;
  *(inited + 592) = (*(v430 + 8))(v433);
  *(inited + 600) = v277;
  v278 = v344;
  v279 = v275;
  v280 = v422;
  (*(v398 + 16))(v344, v279, v422);
  v281 = v348;
  v282 = v401;
  (*(v274 + 32))(v348, &v278[*(v280 + 48)], v401);
  v283 = v349;
  v284 = *(v349 - 8);
  if ((*(v284 + 48))(v281, 1, v349) == 1)
  {
    (*(v332 + 8))(v278, v276);
    (*(v274 + 8))(v281, v282);
    *(inited + 640) = 0;
    *(inited + 608) = 0u;
    *(inited + 624) = 0u;
  }

  else
  {
    v432 = *(a70 + 24);
    *(inited + 632) = swift_getAssociatedTypeWitness();
    *(inited + 640) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 608));
    (v432)(v283, a70);
    (*(v284 + 8))(v281, v283);
    (*(v332 + 8))(v278, v433);
  }

  v285 = v426;
  v286 = v425;
  v287 = v423;
  *(inited + 648) = (*(v431 + 8))(v426);
  *(inited + 656) = v288;
  v289 = v360;
  v290 = v287;
  v291 = TupleTypeMetadata2;
  (*(v399 + 16))(v360, v290, TupleTypeMetadata2);
  v292 = v402;
  v293 = &v289[*(v291 + 48)];
  v294 = v350;
  (*(v402 + 32))(v350, v293, v286);
  v295 = v351;
  v296 = *(v351 - 8);
  if ((*(v296 + 48))(v294, 1, v351) == 1)
  {
    (*(v337 + 8))(v289, v285);
    (*(v292 + 8))(v294, v286);
    *(inited + 696) = 0;
    *(inited + 664) = 0u;
    *(inited + 680) = 0u;
  }

  else
  {
    v433 = *(a72 + 24);
    *(inited + 688) = swift_getAssociatedTypeWitness();
    *(inited + 696) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((inited + 664));
    (v433)(v295, a72);
    (*(v296 + 8))(v294, v295);
    (*(v337 + 8))(v360, v285);
  }

  v297 = sub_25F1B58D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v298 = sub_25F252D8C(v297);

  (*(v399 + 8))(v423, TupleTypeMetadata2);
  (*(v398 + 8))(v421, v422);
  (*(v397 + 8))(v419, v420);
  (*(v396 + 8))(v417, v418);
  (*(v395 + 8))(v415, v416);
  (*(v394 + 8))(v413, v414);
  (*(v391 + 8))(v411, v412);
  (*(v390 + 8))(v409, v410);
  (*(v389 + 8))(v388, v408);
  (*(v387 + 8))(v386, v407);
  (*(v384 + 8))(v383, v385);
  (*(v381 + 8))(v378, v382);
  return v298;
}

uint64_t sub_25F266704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25F1B7118((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_25F266750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v49 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v42 = a1;
  v43 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v44 = v11;
  v45 = 0;
  v46 = v14 & v12;
  v47 = a2;
  v48 = a3;

  sub_25F218F8C(&v40);
  v15 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_5:
    sub_25F1BF034(v42);

    return;
  }

  while (1)
  {
    v16 = v40;
    v38 = v40;
    v39 = v15;
    sub_25F1B707C(&v41, v37);
    v17 = *v8;
    v19 = sub_25F219234(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25F30665C();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25F21DA60();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v28 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v29 = (v28[6] + 16 * v19);
    *v29 = v16;
    v29[1] = v15;
    sub_25F1B707C(v37, (v28[7] + 32 * v19));
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_22;
    }

    v28[2] = v32;
LABEL_6:
    sub_25F218F8C(&v40);
    v15 = *(&v40 + 1);
    a4 = 1;
    if (!*(&v40 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_25F219F3C(v22, a4 & 1);
  v24 = sub_25F219234(v16, v15);
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_23;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v26 = *v8;
  sub_25F1B7118(*(*v8 + 56) + 32 * v19, v35);
  a5(v36, v35, v37);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v37);

    v27 = (v26[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_25F1B707C(v36, v27);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  v35[0] = v7;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_25F1BF034(v42);

    return;
  }

LABEL_24:
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001BLL, 0x800000025F319800);
  sub_25F30619C();
  MEMORY[0x25F8D7130](39, 0xE100000000000000);
  sub_25F30627C();
  __break(1u);
}

uint64_t sub_25F266AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_25F305C1C();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_25F266B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[8] = sub_25F267C38;
  v13[9] = &v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  return Sequence.keyedMap<A, B>(_:)(sub_25F267C68, v13, v10, a2, a3, WitnessTable, a5);
}

uint64_t sub_25F266CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = sub_25F30539C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  WitnessTable = swift_getWitnessTable();
  return sub_25F1C1AC4(sub_25F267CA4, v8, v4, a2, v5, WitnessTable, MEMORY[0x277D84950], v9);
}

uint64_t sub_25F266DBC(uint64_t *a1)
{
  v2 = *a1;
  v6[3] = &_s3KeyON_1;
  v6[4] = &off_287164638;
  v3 = sub_25F1FDB80(v6, v2);

  __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v1)
  {
    if (*(v3 + 16) == 8)
    {
      v2 = *(v3 + 32);
    }

    else
    {
      sub_25F267B68();
      swift_allocError();
      *v4 = v3;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_25F266E90(uint64_t *a1)
{
  v2 = *a1;
  v5 = &_s3KeyON_0;
  v6 = &off_287164628;
  LOBYTE(v4[0]) = 0;

  sub_25F1FDA48(v4, v2);
  if (v1)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON_0;
    v6 = &off_287164628;
    LOBYTE(v4[0]) = 1;
    sub_25F1FDA48(v4, v2);

    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON;
    v6 = &off_287164618;
    LOBYTE(v4[0]) = 0;
    sub_25F1FDA48(v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
    v5 = &_s3KeyON;
    v6 = &off_287164618;
    LOBYTE(v4[0]) = 1;
    sub_25F1FDA48(v4, v2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_25F266FF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a2;
  v10 = a3;
  LOBYTE(v8[0]) = 0;
  sub_25F1FDA48(v8, v6);
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v9 = a2;
    v10 = a3;
    LOBYTE(v8[0]) = 1;
    sub_25F1FDA48(v8, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_25F2670B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v64 = a8;
  v13 = -1 << *(a1 + 32);
  v14 = ~v13;
  v15 = *(a1 + 64);
  v16 = -v13;
  v57 = a1;
  v58 = a1 + 64;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v59 = v14;
  v60 = 0;
  v61 = v17 & v15;
  v62 = a2;
  v63 = a3;

  sub_25F218F8C(&v55);
  v18 = *(&v55 + 1);
  if (!*(&v55 + 1))
  {
LABEL_24:
    sub_25F1BF034(v57);
  }

  v19 = v55;
  sub_25F1B707C(v56, v54);
  v20 = *a5;
  v22 = sub_25F219234(v19, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_25;
  }

  LOBYTE(v10) = v21;
  if (v20[3] >= v25)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_27;
    }

    while (1)
    {
LABEL_10:
      v28 = *a5;
      if (v10)
      {
        v47 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PropertyList.swift";
        v48 = 124;
        v49 = 2;
        v50 = a9;
        v51 = v64;
        v52 = a10;
        v53 = 2;
        sub_25F213F98(&v47);

        v10 = v28[7] + 32 * v22;
        __swift_destroy_boxed_opaque_existential_1(v10);
        sub_25F1B707C(v54, v10);
      }

      else
      {
        v28[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v28[6] + 16 * v22);
        *v29 = v19;
        v29[1] = v18;
        sub_25F1B707C(v54, (v28[7] + 32 * v22));
        v30 = v28[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_26;
        }

        v28[2] = v32;
      }

      sub_25F218F8C(&v55);
      v18 = *(&v55 + 1);
      if (!*(&v55 + 1))
      {
        goto LABEL_24;
      }

      v22 = 124;
      while (1)
      {
        v19 = v55;
        sub_25F1B707C(v56, v54);
        v34 = *a5;
        v35 = sub_25F219234(v19, v18);
        v37 = v34[2];
        v38 = (v36 & 1) == 0;
        v31 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v31)
        {
          break;
        }

        LOBYTE(v10) = v36;
        if (v34[3] < v39)
        {
          sub_25F219F3C(v39, 1);
          v35 = sub_25F219234(v19, v18);
          if ((v10 & 1) != (v40 & 1))
          {
            goto LABEL_28;
          }
        }

        v41 = *a5;
        if (v10)
        {
          v47 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PropertyList.swift";
          v48 = 124;
          v49 = 2;
          v50 = a9;
          v51 = v64;
          v52 = a10;
          v53 = 2;
          v33 = v35;
          sub_25F213F98(&v47);

          v10 = v41[7] + 32 * v33;
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_25F1B707C(v54, v10);
        }

        else
        {
          v41[(v35 >> 6) + 8] |= 1 << v35;
          v42 = (v41[6] + 16 * v35);
          *v42 = v19;
          v42[1] = v18;
          sub_25F1B707C(v54, (v41[7] + 32 * v35));
          v43 = v41[2];
          v31 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v31)
          {
            goto LABEL_26;
          }

          v41[2] = v44;
        }

        sub_25F218F8C(&v55);
        v18 = *(&v55 + 1);
        if (!*(&v55 + 1))
        {
          goto LABEL_24;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      sub_25F21DA60();
    }
  }

  sub_25F219F3C(v25, a4 & 1);
  v26 = sub_25F219234(v19, v18);
  if ((v10 & 1) == (v27 & 1))
  {
    v22 = v26;
    goto LABEL_10;
  }

LABEL_28:

  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2674B8()
{
  v1 = v0[3];
  v2 = v0[6];
  (*(v0[4] + 24))(v0[2]);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_25F26753C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 64);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v7(a1, a2, a3, a3 + *(TupleTypeMetadata2 + 48));
}

unint64_t sub_25F2675B4()
{
  result = qword_27FD56830;
  if (!qword_27FD56830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56830);
  }

  return result;
}

uint64_t sub_25F26773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25F267890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 113))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 112);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2678CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F267924(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    v2 = a2 - 4;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 112) = a2;
  return result;
}

unint64_t sub_25F267994()
{
  result = qword_27FD56838;
  if (!qword_27FD56838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56838);
  }

  return result;
}

unint64_t sub_25F2679E8()
{
  result = qword_27FD56840;
  if (!qword_27FD56840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56840);
  }

  return result;
}

unint64_t sub_25F267AE4()
{
  result = qword_27FD56858;
  if (!qword_27FD56858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56850, &qword_25F310B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56858);
  }

  return result;
}

unint64_t sub_25F267B68()
{
  result = qword_27FD56870;
  if (!qword_27FD56870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56870);
  }

  return result;
}

unint64_t sub_25F267BBC()
{
  result = qword_27FD56890;
  if (!qword_27FD56890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD56878, &qword_25F310B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56890);
  }

  return result;
}

__n128 sub_25F267CC4()
{
  (*(v0 + 16))(v8);
  sub_25F202604();
  swift_allocError();
  v1 = v8[3];
  v2 = v8[1];
  v3 = v8[0];
  *(v4 + 32) = v8[2];
  *(v4 + 48) = v1;
  *v4 = v3;
  *(v4 + 16) = v2;
  result = v8[6];
  v6 = v8[5];
  v7 = v8[4];
  *(v4 + 112) = v9;
  *(v4 + 80) = v6;
  *(v4 + 96) = result;
  *(v4 + 64) = v7;
  return result;
}

unint64_t sub_25F267D8C()
{
  result = qword_27FD56898;
  if (!qword_27FD56898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD56898);
  }

  return result;
}

uint64_t sub_25F267E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F267E4C()
{
  result = qword_27FD568A0;
  if (!qword_27FD568A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568A0);
  }

  return result;
}

unint64_t sub_25F267EA0()
{
  result = qword_27FD568A8;
  if (!qword_27FD568A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568A8);
  }

  return result;
}

unint64_t sub_25F267EF8()
{
  result = qword_27FD568B0;
  if (!qword_27FD568B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD568B0);
  }

  return result;
}

unint64_t sub_25F267F50()
{
  result = qword_27FD568B8[0];
  if (!qword_27FD568B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD568B8);
  }

  return result;
}

uint64_t AsyncObservableEvent.init(file:line:column:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v13 = a3;
  v16 = type metadata accessor for AsyncObservableEvent.Observer(255, a10, a3, a4);
  v17 = type metadata accessor for ObserverAndTokenStorage(255, v16, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  type metadata accessor for FulfillOnceState(0, v17, a10, v18);
  sub_25F1E5808(v16, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback, &v36);
  v34 = v36;
  v35 = v37;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27 = v13;
  *v28 = v38[0];
  *&v28[3] = *(v38 + 3);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v24 = xmmword_25F3077E0;
  v25 = 2;
  v19 = sub_25F1D1EE4(&v34, &v26, 0, 0, &v24, 0xD000000000000016, 0x800000025F319820, 0x6465726966, 0xE500000000000000);

  *a9 = v19;
  return result;
}

uint64_t AsyncObservableEvent.fire(file:line:column:function:with:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 184) = a7;
  *(v9 + 192) = v21;
  *(v9 + 74) = a8;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a2;
  *(v9 + 160) = a4;
  *(v9 + 73) = a3;
  *(v9 + 144) = a1;
  v10 = *(v22 + 16);
  *(v9 + 200) = v10;
  *(v9 + 208) = *(v10 - 8);
  *(v9 + 216) = swift_task_alloc();
  v13 = type metadata accessor for AsyncObservableEvent.Observer(255, v10, v11, v12);
  *(v9 + 224) = v13;
  v14 = type metadata accessor for ObserverAndTokenStorage(255, v13, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  *(v9 + 232) = v14;
  v16 = type metadata accessor for FulfillOnceState.FulfillmentOutcome(0, v14, v10, v15);
  *(v9 + 240) = v16;
  *(v9 + 248) = *(v16 - 8);
  *(v9 + 256) = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *v8;
  *(v9 + 264) = v17;
  *(v9 + 272) = v18;

  return MEMORY[0x2822009F8](sub_25F26833C, 0, 0);
}

uint64_t sub_25F26833C()
{
  v51 = v0;
  v1 = *(v0 + 160);
  v46 = *(v0 + 144);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 74);
  v47 = *(v0 + 73);
  v48 = v1;
  v49 = *(v0 + 176);
  v50 = v8;
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  v10 = swift_task_alloc();
  *(v10 + 16) = v7;
  FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(&v46, sub_25F269BA8, v9, sub_25F269BD8, v10);

  (*(v4 + 16))(v3, v2, v5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v3, 1, TupleTypeMetadata2) == 1)
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14 = *(*(v0 + 248) + 8);
    v14(*(v0 + 264), v13);
    v14(v12, v13);
LABEL_3:

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 256);
  v43 = *v17;
  v18 = *(v17 + 2);
  (*(*(v0 + 208) + 32))(*(v0 + 216), v17 + *(TupleTypeMetadata2 + 48), *(v0 + 200));
  v44 = v18[2];
  if (!v44)
  {
    goto LABEL_10;
  }

  v19 = v18[4];
  v20 = v18[6];
  *(v0 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
  *(v0 + 24) = 132;
  *(v0 + 32) = 2;
  *(v0 + 40) = xmmword_25F310EE0;
  *(v0 + 56) = "fire(file:line:column:function:with:)";
  *(v0 + 64) = 37;
  *(v0 + 72) = 2;
  v21 = *(v20 + 152);
  v22 = swift_task_alloc();
  v22[2] = nullsub_2;
  v22[3] = 0;
  v22[4] = v0 + 16;
  v22[5] = v20;
  v22[6] = sub_25F1D3340;
  v22[7] = 0;

  os_unfair_lock_lock(v21 + 19);
  sub_25F1D3DD4(&v21[4], &v46);
  os_unfair_lock_unlock(v21 + 19);

  if ((v46 & 1) == 0)
  {
    v19(v23);
  }

  if (v44 != 1)
  {
    v36 = v18 + 9;
    v37 = 1;
    while (v37 < v18[2])
    {
      v38 = *(v36 - 2);
      v39 = *v36;
      *(v0 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
      *(v0 + 24) = 132;
      *(v0 + 32) = 2;
      *(v0 + 40) = xmmword_25F310EE0;
      *(v0 + 56) = "fire(file:line:column:function:with:)";
      *(v0 + 64) = 37;
      *(v0 + 72) = 2;
      v40 = *(v39 + 152);
      v41 = swift_task_alloc();
      v41[2] = nullsub_2;
      v41[3] = 0;
      v41[4] = v0 + 16;
      v41[5] = v39;
      v41[6] = sub_25F1D3340;
      v41[7] = 0;

      os_unfair_lock_lock(v40 + 19);
      sub_25F1D3DD4(&v40[4], &v46);
      os_unfair_lock_unlock(v40 + 19);

      if ((v46 & 1) == 0)
      {
        v38(v42);
      }

      ++v37;

      v36 += 3;
      if (v44 == v37)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v24 = *(v0 + 224);
    *(v0 + 80) = v43;

    *(v0 + 96) = 0;
    v25 = sub_25F1E6B9C();
    v26 = type metadata accessor for OrderedDictionary(0, &type metadata for Identifier, v24, v25);
    *(v0 + 280) = v26;
    if (!OrderedDictionary.endIndex.getter(v26))
    {
      v33 = *(v0 + 264);
      v34 = *(v0 + 240);
      v35 = *(v0 + 248);
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      (*(v35 + 8))(v33, v34);

      goto LABEL_3;
    }

    v27 = *(v0 + 80);
    v28 = *(v0 + 88);
    *(v0 + 288) = v27;
    *(v0 + 296) = v28;
    v29 = *(v0 + 280);
    *(v0 + 128) = v27;
    *(v0 + 136) = v28;
    OrderedDictionary.subscript.getter(v0 + 104, v0 + 112, 0, v29);
    v30 = *(v0 + 112);
    *(v0 + 304) = *(v0 + 120);
    *(v0 + 312) = 1;

    v45 = (v30 + *v30);
    v31 = swift_task_alloc();
    *(v0 + 320) = v31;
    *v31 = v0;
    v31[1] = sub_25F268948;
    v32 = *(v0 + 216);

    return v45(v32);
  }

  return result;
}

uint64_t sub_25F268948()
{

  return MEMORY[0x2822009F8](sub_25F268A60, 0, 0);
}

uint64_t sub_25F268A60()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);

  if (v1 == OrderedDictionary.endIndex.getter(v2))
  {
    *(v0 + 96) = *(v0 + 312);
    v3 = *(v0 + 264);
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 128) = *(v0 + 288);
    v8 = *(v0 + 312);
    result = OrderedDictionary.subscript.getter(v0 + 104, v0 + 112, v8, *(v0 + 280));
    v9 = *(v0 + 112);
    *(v0 + 304) = *(v0 + 120);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 312) = v8 + 1;

      v12 = (v9 + *v9);
      v10 = swift_task_alloc();
      *(v0 + 320) = v10;
      *v10 = v0;
      v10[1] = sub_25F268948;
      v11 = *(v0 + 216);

      return v12(v11);
    }
  }

  return result;
}

uint64_t AsyncObservableEvent.observe(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v4[6] = a3;
  v4[7] = v8;
  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_25F268D28;

  return AsyncObservableEvent.addCancelableObserver(_:)((v4 + 2), a1, a2, a3);
}

uint64_t sub_25F268D28()
{

  return MEMORY[0x2822009F8](sub_25F268E24, 0, 0);
}

uint64_t sub_25F268E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = v4;
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v8 = v4[3];
    v7 = v4[4];
    v11[0] = v4[2];
    v11[1] = v8;
    v11[2] = v7;
    sub_25F269568(v11, v6, a3, a4);
    sub_25F1DF100(v5, v8, v7);
  }

  v9 = v4[1];

  return v9();
}

uint64_t AsyncObservableEvent.addCancelableObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a4 + 16);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for AsyncObservableEvent.Observer(255, v6, v7, v8);
  v10 = type metadata accessor for ObserverAndTokenStorage(255, v9, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v10, v6, &type metadata for Identifier);
  v5[8] = updated;
  v5[9] = *(updated - 8);
  v5[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *v4;
  v5[11] = v12;
  v5[12] = v13;

  return MEMORY[0x2822009F8](sub_25F26902C, 0, 0);
}

uint64_t sub_25F26902C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = *(v0 + 24);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269BF4, v6, &type metadata for Identifier, v8);

  (*(v3 + 16))(v2, v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 40);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v0 + 24);
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 80), *(v0 + 40));
    v26 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_25F2693A8;
    v13 = *(v0 + 56);

    return v26(v13);
  }

  else
  {
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = *(v0 + 64);
    v18 = *(v0 + 16);
    v19 = **(v0 + 80);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v10;
    v21[3] = v20;
    v21[4] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v23 = swift_allocObject();
    *(v23 + 76) = 0;
    *(v23 + 73) = 0;
    *(v22 + 152) = v23;
    *(v22 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
    *(v22 + 24) = 132;
    *(v22 + 32) = 2;
    *(v22 + 40) = xmmword_25F310EF0;
    *(v22 + 56) = "addCancelableObserver(_:)";
    *(v22 + 64) = 25;
    *(v22 + 72) = 2;
    *(v22 + 80) = 0;
    *(v22 + 88) = 0;
    *(v22 + 96) = xmmword_25F3077E0;
    *(v22 + 112) = 2;
    *(v22 + 120) = 0xD000000000000011;
    *(v22 + 128) = 0x800000025F319920;
    *(v22 + 136) = 0x64656C65636E6163;
    *(v22 + 144) = 0xE800000000000000;
    (*(v16 + 8))(v15, v17);
    *v18 = sub_25F269C00;
    v24 = *(v0 + 16);
    *(v24 + 8) = v21;
    *(v24 + 16) = v22;

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_25F2693A8()
{

  return MEMORY[0x2822009F8](sub_25F2694A4, 0, 0);
}

uint64_t sub_25F2694A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  *v4 = 0;
  v5 = v0[2];
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F269568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for AsyncObservableEvent.Observer(255, v5, a3, a4);
  v7 = type metadata accessor for ObserverAndTokenStorage(255, v6, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  v8 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v7, v5, MEMORY[0x277D84F78] + 8);
  v10 = *(updated - 8);
  v11 = MEMORY[0x28223BE20](updated);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v24[-v14];
  v17 = *a1;
  v16 = *(a1 + 8);
  v18 = *(a1 + 16);
  v25 = v5;
  v26 = v17;
  v27 = v16;
  v28 = v18;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269CA4, v24, v8 + 8, v19);
  (*(v10 + 16))(v13, v15, updated);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    return (*(v10 + 8))(v15, updated);
  }

  v30[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncObservableEvent.swift";
  v30[1] = 132;
  v33 = "manage(_:)";
  v34 = 10;
  v31 = 2;
  v32 = xmmword_25F310F00;
  v35 = 2;
  v21 = *(v18 + 152);
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *&v24[-48] = nullsub_2;
  *&v24[-40] = 0;
  *&v24[-32] = v30;
  *&v24[-24] = v18;
  *&v24[-16] = sub_25F1D3340;
  *&v24[-8] = 0;
  os_unfair_lock_lock(v21 + 19);
  sub_25F1D3F70(&v21[4], &v29);
  os_unfair_lock_unlock(v21 + 19);
  if ((v29 & 1) == 0)
  {
    v17();
  }

  v22 = *(v10 + 8);
  v22(v15, updated);
  return (v22)(v13, updated);
}

uint64_t sub_25F269804@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v5 = type metadata accessor for AsyncObservableEvent.Observer(255, a3, a2, a3);
  v6 = type metadata accessor for ObserverAndTokenStorage(0, v5, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);

  sub_25F1E55A8(v8, v6, a4);
}

uint64_t sub_25F26988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AsyncObservableEvent.Observer(255, a3, a3, a4);
  v7 = type metadata accessor for ObserverAndTokenStorage(255, v6, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  v8 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(255, v7, a3, MEMORY[0x277D84F78] + 8);
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *(&v18 - 2) = a3;
    *(&v18 - 1) = a2;
    FulfillOnceState.updateWaitingState<A>(update:)(sub_25F269C9C, (&v18 - 4), v8 + 8, v15);

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(*(updated - 8) + 56))(v13, v16, 1, updated);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_25F269A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v4 = type metadata accessor for AsyncObservableEvent.Observer(255, a3, a3, a4);
  v5 = type metadata accessor for ObserverAndTokenStorage(0, v4, &type metadata for ConcurrentTokenCallback, &protocol witness table for ConcurrentTokenCallback);
  return sub_25F1E5724(&v7, v5);
}

uint64_t sub_25F269AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_25F2EFFD8(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_25F2EFFD8((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[3 * v10];
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  *(a1 + 16) = v8;
}

uint64_t sub_25F269C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F269C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Inhabited<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v7);
  sub_25F304BBC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t KeyedEncodingContainer.encodeIfNotEmpty<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a2;
  v21[1] = a3;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Inhabited(255, v13, *(v12 + 8), v13);
  v15 = sub_25F305C1C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v21 - v17;
  (*(v9 + 16))(v11, a1, a4);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.init(_:)(v11, v14, WitnessTable, v18);
  v21[5] = a6;
  swift_getWitnessTable();
  sub_25F30645C();
  return (*(v16 + 8))(v18, v15);
}

uint64_t KeyedEncodingContainer.encodeIf<A>(_:forKey:predicate:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a8;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v15 = a3(a1);
  v16 = *(a6 - 8);
  v17 = v16;
  if (v15)
  {
    (*(v16 + 16))(v14, a1, a6);
    (*(v17 + 56))(v14, 0, 1, a6);
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, a6);
  }

  sub_25F30645C();
  return (*(v12 + 8))(v14, v11);
}

uint64_t KeyValueMap.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v46 = a1;
  v57 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_25F305C1C();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - v14;
  v52 = v15;
  v54 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_25F305C1C();
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v42 - v19;
  v21 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v43 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v42 - v25;
  v27 = *(a4 + 24);
  v53 = a2;
  v55 = a4;
  v27(a2, a4);
  v44 = v21;
  (*(v21 + 16))(v23, v46, a3);
  v28 = v20;
  sub_25F3050DC();
  v45 = a3;
  v29 = v42;
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v30 = *(TupleTypeMetadata2 - 8);
  v31 = *(v30 + 48);
  v32 = v30 + 48;
  if (v31(v28, 1, TupleTypeMetadata2) != 1)
  {
    v33 = *(v56 + 32);
    v56 += 32;
    v48 = v54 - 8;
    v49 = v33;
    v34 = v54;
    v47 = v55 + 40;
    v50 = v32;
    v51 = v31;
    do
    {
      v35 = *(TupleTypeMetadata2 + 48);
      v49(v29, v28, v52);
      v36 = v26;
      v37 = TupleTypeMetadata2;
      v38 = v24;
      v39 = v29;
      v40 = *(v34 - 8);
      (*(v40 + 32))(v12, &v28[v35], v34);
      (*(v40 + 56))(v12, 0, 1, v34);
      v29 = v39;
      v24 = v38;
      TupleTypeMetadata2 = v37;
      v26 = v36;
      (*(v55 + 40))(v12, v29, v53);
      sub_25F305CDC();
    }

    while (v51(v28, 1, TupleTypeMetadata2) != 1);
  }

  (*(v44 + 8))(v46, v45);
  return (*(v43 + 8))(v26, v24);
}

uint64_t KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a1;
  v30 = a3;
  v31 = a2;
  v32 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v25 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v26 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v25 - v18;
  (*(a5 + 32))(v34, a4, a5);
  if ((*(v11 + 48))(v19, 1, v10) == 1)
  {
    v20 = (*(v15 + 8))(v19, v14);
    v21 = v33;
    result = v31(v20);
    if (v21)
    {
      return result;
    }

    v23 = v29;
    (*(v27 + 16))(v29, v34, v28);
    v24 = v26;
    (*(v11 + 16))(v26, v13, v10);
    (*(v11 + 56))(v24, 0, 1, v10);
    (*(a5 + 40))(v24, v23, a4, a5);
  }

  else
  {
    v13 = v19;
  }

  return (*(v11 + 32))(v32, v13, v10);
}

uint64_t KeyValueMap.setting(value:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_25F305C1C();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - v17;
  (*(*(a3 - 8) + 16))(a5, v6, a3);
  (*(v16 + 16))(v18, a2, v15);
  v19 = *(AssociatedTypeWitness - 8);
  (*(v19 + 16))(v14, v22, AssociatedTypeWitness);
  (*(v19 + 56))(v14, 0, 1, AssociatedTypeWitness);
  return (*(a4 + 40))(v14, v18, a3, a4);
}

uint64_t KeyValueMap<>.appending(contentsOf:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a1;
  v43 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_25F305C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v33 - v12;
  v38 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_25F305C1C();
  v40 = *(v42 - 8);
  v14 = MEMORY[0x28223BE20](v42);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v20 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(*(a3 + 8) + 8);
  v46 = swift_getAssociatedTypeWitness();
  v34 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v24 = &v33 - v23;
  v25 = *(v20 + 16);
  v25(v43, v41, a2);
  v25(v22, v45, a2);
  v45 = v24;
  sub_25F3050DC();
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = (v40 + 32);
  v40 = TupleTypeMetadata2 - 8;
  v41 = AssociatedConformanceWitness;
  v28 = v37;
  v29 = (v36 + 32);
  v35 = v44 + 40;
  v36 = AssociatedTypeWitness - 8;
  while (1)
  {
    sub_25F305CDC();
    (*v27)(v19, v16, v42);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v30 = *(TupleTypeMetadata2 + 48);
    (*v29)(v28, v19, v38);
    v31 = *(AssociatedTypeWitness - 8);
    (*(v31 + 32))(v9, &v19[v30], AssociatedTypeWitness);
    (*(v31 + 56))(v9, 0, 1, AssociatedTypeWitness);
    (*(v44 + 40))(v9, v28, v39);
  }

  return (*(v34 + 8))(v45, v46);
}

void (*sub_25F26B0EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25F304B7C();
  return sub_25F1DC004;
}

uint64_t sub_25F26B174(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t ExecutionExclusivity.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

unint64_t sub_25F26B2B4()
{
  result = qword_27FD569C0;
  if (!qword_27FD569C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD569C0);
  }

  return result;
}

uint64_t withTimeout<A>(_:perform:makeTimeoutError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 64) = *a2;
  *(v7 + 96) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_25F26B3B8, 0, 0);
}

uint64_t sub_25F26B3B8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = sub_25F305C1C();
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = v6;
  *(v5 + 56) = v7;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_25F26B4D4;
  v9 = *(v0 + 16);

  return MEMORY[0x282200740](v9, v4);
}

uint64_t sub_25F26B4D4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26B610, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F26B610()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F26B674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v13;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 184) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_25F305C1C();
  *(v8 + 80) = v9;
  v10 = sub_25F305C1C();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F26B7F8, 0, 0);
}

uint64_t sub_25F26B7F8()
{
  v1 = *(v0 + 184);
  if (v1 != 2)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 72);
    v4 = *(v0 + 32);
    v5 = sub_25F30546C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v3;
    *(v6 + 40) = v4;
    *(v6 + 48) = v1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v7 = sub_25F3055DC();
    sub_25F28EAB4(v2, &unk_25F311200, v6, v7);
    sub_25F1B47B0(v2);
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 72);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = sub_25F30546C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = v10;

  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v14 = sub_25F3055DC();
  sub_25F28EAB4(v8, &unk_25F3111E8, v13, v14);
  sub_25F1B47B0(v8);
  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  v15[1] = sub_25F26BA6C;
  v16 = *(v0 + 104);

  return MEMORY[0x2822004D0](v16, 0, 0, v14);
}

uint64_t sub_25F26BA6C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25F26C0D0;
  }

  else
  {
    v2 = sub_25F26BB80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F26BB80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 96) + 8))(v1, *(v0 + 88));
    goto LABEL_5;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 72);
  (*(v2 + 32))(v4, v1, v3);
  (*(v2 + 16))(v5, v4, v3);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);
    v10 = *(*(v0 + 112) + 8);
    v10(*(v0 + 128), v9);
    v10(v8, v9);
LABEL_5:
    v11 = *(v0 + 184);
    sub_25F3055CC();
    v12 = 0.0;
    if (v11 != 2)
    {
      v12 = *(v0 + 32);
      if (*(v0 + 184))
      {
        if (qword_27FD52858 != -1)
        {
          swift_once();
        }

        if (byte_27FD56FF0)
        {
          if (qword_27FD52860 != -1)
          {
            swift_once();
          }

          if (byte_27FD56FF1)
          {
            v12 = v12 * 20.0;
          }
        }

        else
        {
          v12 = *&qword_27FD56FE8;
        }
      }
    }

    v20 = (*(v0 + 56) + **(v0 + 56));
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_25F26BF34;
    v19.n128_f64[0] = v12;

    return v20(v19);
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 80);
  (*(v7 + 32))(*(v0 + 16), *(v0 + 120), *(v0 + 72));
  sub_25F3055CC();
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25F26BF34(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_25F26C034, 0, 0);
}

uint64_t sub_25F26C034(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_25F26C0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F26C15C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F1B51E0;

  return sub_25F26B674(a1, a2, v6, v11, v7, v8, v9, v10);
}

uint64_t sub_25F26C24C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 16) = a1;
  v7 = sub_25F30614C();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F26C318, 0, 0);
}

uint64_t sub_25F26C318(__n128 a1)
{
  if (*(v1 + 80))
  {
    if (qword_27FD52858 != -1)
    {
      swift_once();
    }

    if ((byte_27FD56FF0 & 1) != 0 && qword_27FD52860 != -1)
    {
      swift_once();
    }
  }

  v2 = sub_25F30682C();
  v4 = v3;
  sub_25F30668C();
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_25F26C494;

  return sub_25F26CE14(v2, v4, 0, 0, 1);
}

uint64_t sub_25F26C494()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_25F1F4CEC;
  }

  else
  {
    v5 = sub_25F26C604;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F26C604()
{
  (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F26C6A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_25F26C7A0;

  return v10(a1);
}

uint64_t sub_25F26C7A0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F26C8D0, 0, 0);
  }
}

uint64_t sub_25F26C8D0()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t withTimeout<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 8);
  *(v5 + 16) = *a2;
  *(v5 + 24) = v10;
  v11 = swift_task_alloc();
  *(v5 + 32) = v11;
  *v11 = v5;
  v11[1] = sub_25F26CA50;

  return withTimeout<A>(_:perform:makeTimeoutError:)(a1, v5 + 16, a3, a4, &unk_25F3111D0, 0, a5);
}

uint64_t sub_25F26CA50()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26CB84, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F26CBB8()
{
  sub_25F26CC2C();
  v1 = swift_allocError();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_25F26CC2C()
{
  result = qword_27FD569C8;
  if (!qword_27FD569C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD569C8);
  }

  return result;
}

uint64_t sub_25F26CC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1AFDB0;

  return sub_25F26C6A4(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_25F26CD48(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F26C24C(a1, v7, v6, v5, v8, v4);
}

uint64_t sub_25F26CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25F30613C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25F26CF14, 0, 0);
}

uint64_t sub_25F26CF14()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25F30614C();
  v5 = sub_25F26D2CC(&qword_27FD569D0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25F30666C();
  sub_25F26D2CC(&qword_27FD569D8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25F30616C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25F26D0A4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_25F26D0A4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F26D260, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25F26D260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F26D2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F26D324(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  sub_25F1B7174(a2, v6, &qword_27FD53BB0, &unk_25F309BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v9 = *v6;
  }

  else
  {
    sub_25F1D932C(v6, v9);
  }

  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A20, &qword_25F311450);
  swift_allocObject();
  v10 = sub_25F1C0138(a1);

  sub_25F1C0AC8(v9);

  sub_25F1AF698(v9, qword_27FD53BB8, &qword_25F311350);
  return v10;
}

uint64_t sub_25F26D4C8(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v7 = type metadata accessor for CrashReport(0);
  sub_25F1D6CC0(v9, a2, a3, v3, v7);
  return v11;
}

uint64_t sub_25F26D544(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = v6;
  v10[0] = a1[2];
  *(v10 + 9) = *(a1 + 41);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  sub_25F1D6CC0(v9, a2, a3, v3, v7);
  return v11;
}

uint64_t CrashLogSymbolicator.__allocating_init()()
{
  v0 = swift_allocObject();
  CrashLogSymbolicator.init()();
  return v0;
}

uint64_t CrashLogSymbolicator.init()()
{
  v0 = sub_25F305A9C();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v25 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25F305A4C();
  v23 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = sub_25F30494C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v22[1] = "cancelation token";
  sub_25F30493C();
  v31 = MEMORY[0x277D84F90];
  sub_25F2783D0(&qword_27FD556F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  v14 = v23;
  sub_25F278418(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0);
  sub_25F305E5C();
  sub_25F1F54F4();
  v28 = v8;
  v29 = v7;
  (*(v8 + 16))(v11, v13, v7);
  (*(v14 + 16))(v24, v6, v2);
  (*(v26 + 104))(v25, *MEMORY[0x277D85260], v27);
  v15 = sub_25F305ACC();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v16 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v17 = *(v16 + 2);
  *(v16 + 2) = v17 + 1;
  os_unfair_lock_unlock(v16 + 6);
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  v31 = v17;
  v32 = 0;
  sub_25F305A7C();
  (*(v14 + 8))(v6, v2);
  (*(v28 + 8))(v13, v29);
  v18 = v30;
  *(v30 + 16) = v15;
  *(v18 + 24) = v17;
  v19 = sub_25F1B692C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E0, &qword_25F311348);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  *(v18 + 32) = v20;
  return v18;
}

void CrashLogSymbolicator.symbolicate(_:with:)(uint64_t a1, unint64_t *a2)
{
  v203 = sub_25F30490C();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v199 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_25F30494C();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v198 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v7 = *(v213 - 8);
  v8 = MEMORY[0x28223BE20](v213);
  v10 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v184 = &v180 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v183 = &v180 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v192 = &v180 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v191 = &v180 - v18;
  MEMORY[0x28223BE20](v17);
  v190 = &v180 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v188 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v180 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v186 = &v180 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v187 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v185 = &v180 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v189 = &v180 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v196 = &v180 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v197 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v194 = &v180 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v195 = &v180 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v193 = &v180 - v43;
  MEMORY[0x28223BE20](v42);
  v205 = &v180 - v44;
  v211 = type metadata accessor for CrashReport(0);
  v209 = *(v211 - 8);
  v45 = *(v209 + 64);
  v46 = MEMORY[0x28223BE20](v211);
  v206 = &v180 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v46);
  v217 = &v180 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v180 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v208 = &v180 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v180 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v180 - v57;
  v214 = *a2;
  v215 = a1;
  v210 = v2;
  v59 = *(v2 + 32);
  v218 = a1;
  os_unfair_lock_lock((v59 + 24));
  sub_25F278254((v59 + 16), &aBlock);
  os_unfair_lock_unlock((v59 + 24));
  v216 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v180 = v10;
    v212 = v7;
    v204 = aBlock;
    if (qword_27FD52918 != -1)
    {
      swift_once();
    }

    v60 = sub_25F30479C();
    __swift_project_value_buffer(v60, qword_27FD571A8);
    v61 = v215;
    sub_25F278740(v215, v58, type metadata accessor for CrashReport);
    sub_25F278740(v61, v56, type metadata accessor for CrashReport);
    v62 = sub_25F30477C();
    v63 = sub_25F3059EC();
    v64 = os_log_type_enabled(v62, v63);
    v207 = v51;
    v181 = v25;
    v182 = 0;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&aBlock = v66;
      *v65 = 136446466;
      v67 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
      v69 = v68;
      sub_25F1AF760(v58);
      v70 = sub_25F1C53AC(v67, v69, &aBlock);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = &v56[*(v211 + 20)];
      v72 = *v71;
      v73 = v71[1];

      sub_25F1AF760(v56);
      v74 = sub_25F1C53AC(v72, v73, &aBlock);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_25F1A2000, v62, v63, "Starting symbolication of report %{public}s for %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v66, -1, -1);
      v51 = v207;
      MEMORY[0x25F8D9510](v65, -1, -1);
    }

    else
    {

      sub_25F1AF760(v56);
      sub_25F1AF760(v58);
    }

    v75 = *(v210 + 24);
    v211 = *(v210 + 16);
    v76 = v208;
    sub_25F278740(v215, v208, type metadata accessor for CrashReport);
    sub_25F278740(v76, v51, type metadata accessor for CrashReport);
    sub_25F278740(v76, v217, type metadata accessor for CrashReport);
    v77 = *(v209 + 80);
    v210 = ~v77;
    v78 = (v77 + 16) & ~v77;
    v79 = (v45 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    sub_25F1D932C(v76, v82 + v78);
    v83 = v214;
    *(v82 + v79) = v214;
    v84 = (v82 + v80);
    v85 = v211;
    *v84 = v211;
    v84[1] = v75;
    v86 = v216;
    *(v82 + v81) = v216;
    v87 = v86;
    *&aBlock = v85;
    *(&aBlock + 1) = v75;

    sub_25F2033CC(v85);
    swift_bridgeObjectRetain_n();
    v215 = v75;
    sub_25F2033CC(v85);

    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F270388(v83);
      v88 = v206;
      sub_25F278740(v51, v206, type metadata accessor for CrashReport);
      v89 = (v77 + 32) & v210;
      v90 = swift_allocObject();
      v91 = v215;
      *(v90 + 16) = v85;
      *(v90 + 24) = v91;
      sub_25F1D932C(v88, v90 + v89);
      *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&aBlock + 1) = 132;
      LOBYTE(v221) = 2;
      v222 = xmmword_25F311290;
      v223 = "symbolicate(with:on:)";
      v224 = 21;
      v225 = 2;
      sub_25F2033CC(v85);
      v92 = sub_25F27779C(&aBlock, 0, 0, sub_25F279174, v90);

      v93 = v87[2];
      if (v93 != v92)
      {
        v94 = swift_allocObject();
        v94[2] = 0;
        v94[3] = 0;
        v94[4] = sub_25F2791C8;
        v94[5] = v87;
        v95 = v92[11];
        v96 = MEMORY[0x28223BE20](v94);
        *(&v180 - 2) = sub_25F2790FC;
        *(&v180 - 1) = v96;
        v97 = *(*v95 + *MEMORY[0x277D841D0] + 16);
        v98 = (*(*v95 + 48) + 3) & 0x1FFFFFFFCLL;
        swift_retain_n();
        os_unfair_lock_lock((v95 + v98));
        v99 = (v95 + v97);
        v100 = v205;
        v101 = v182;
        sub_25F279180(v99, v205);
        if (!v101)
        {
          os_unfair_lock_unlock((v95 + v98));
          v102 = v193;
          sub_25F1B7174(v100, v193, &qword_27FD569E8, &unk_25F311358);
          v103 = *(v212 + 48);
          v212 += 48;
          v104 = v103(v102, 1, v213);
          v209 = v82;
          if (v104 == 1)
          {

            sub_25F1AF698(v100, &qword_27FD569E8, &unk_25F311358);
            v105 = v102;
            v106 = v216;
          }

          else
          {
            v136 = v190;
            sub_25F23F614(v102, v190, qword_27FD53BB8, &qword_25F311350);
            v106 = v216;

            sub_25F2C9E5C(v136, 0, 0, v106);

            v105 = v205;
            sub_25F1AF698(v136, qword_27FD53BB8, &qword_25F311350);
          }

          sub_25F1AF698(v105, &qword_27FD569E8, &unk_25F311358);

          v137 = swift_allocObject();
          v137[2] = 0;
          v137[3] = 0;
          v137[4] = sub_25F27916C;
          v137[5] = v106;
          v138 = v92[11];
          v139 = MEMORY[0x28223BE20](v137);
          *(&v180 - 2) = sub_25F2790F8;
          *(&v180 - 1) = v139;
          v140 = *(*v138 + *MEMORY[0x277D841D0] + 16);
          v141 = (*(*v138 + 48) + 3) & 0x1FFFFFFFCLL;
          swift_retain_n();
          os_unfair_lock_lock((v138 + v141));
          v142 = (v138 + v140);
          v143 = v195;
          sub_25F279180(v142, v195);
          os_unfair_lock_unlock((v138 + v141));
          v144 = v194;
          sub_25F1B7174(v143, v194, &qword_27FD569E8, &unk_25F311358);
          if (v103(v144, 1, v213) == 1)
          {

            sub_25F1AF698(v143, &qword_27FD569E8, &unk_25F311358);
          }

          else
          {
            v145 = v191;
            sub_25F23F614(v144, v191, qword_27FD53BB8, &qword_25F311350);
            v144 = v143;
            v146 = v216;

            sub_25F2CA63C(v145, 0, 0, v146);

            sub_25F1AF698(v145, qword_27FD53BB8, &qword_25F311350);
          }

          sub_25F1AF698(v144, &qword_27FD569E8, &unk_25F311358);

          v147 = swift_allocObject();
          v147[2] = 0;
          v147[3] = 0;
          v147[4] = sub_25F279178;
          v147[5] = v92;
          v148 = v93[11];
          v149 = MEMORY[0x28223BE20](v147);
          *(&v180 - 2) = sub_25F2790F8;
          *(&v180 - 1) = v149;
          v150 = *(*v148 + *MEMORY[0x277D841D0] + 16);
          v151 = (*(*v148 + 48) + 3) & 0x1FFFFFFFCLL;
          swift_retain_n();
          os_unfair_lock_lock((v148 + v151));
          v152 = (v148 + v150);
          v153 = v197;
          sub_25F279180(v152, v197);
          os_unfair_lock_unlock((v148 + v151));
          v154 = v196;
          sub_25F1B7174(v153, v196, &qword_27FD569E8, &unk_25F311358);
          if (v103(v154, 1, v213) == 1)
          {

            sub_25F1AF698(v153, &qword_27FD569E8, &unk_25F311358);
            v155 = v154;
          }

          else
          {
            v156 = v154;
            v157 = v192;
            sub_25F23F614(v156, v192, qword_27FD53BB8, &qword_25F311350);

            sub_25F2CAB90(v157, 0, 0, v92);

            sub_25F1AF698(v157, qword_27FD53BB8, &qword_25F311350);
            v155 = v153;
          }

          sub_25F1AF698(v155, &qword_27FD569E8, &unk_25F311358);

          v113 = v207;
          v85 = v211;
          goto LABEL_40;
        }

        os_unfair_lock_unlock((v95 + v98));
        __break(1u);

        os_unfair_lock_unlock((v95 + v100));
        __break(1u);
LABEL_43:

        os_unfair_lock_unlock((v92 + v82));
        __break(1u);

        os_unfair_lock_unlock((&v180 + v92));
        __break(1u);

        os_unfair_lock_unlock((v92 + v100));
        __break(1u);
        return;
      }

      v85 = v211;
      v113 = v207;
    }

    else
    {
      v107 = v210;
      if (v85)
      {
        if (v85 == 1)
        {
          sub_25F1F54F4();
          v108 = sub_25F305AAC();
          *(&v222 + 1) = sub_25F278270;
          v223 = v82;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v221 = sub_25F1D8C38;
          *&v222 = &block_descriptor_18_0;
          v213 = _Block_copy(&aBlock);

          v109 = v198;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v110 = v199;
          v111 = v203;
          sub_25F305E5C();
          v112 = v213;
          MEMORY[0x25F8D7C70](0, v109, v110, v213);
          _Block_release(v112);

          (*(v202 + 8))(v110, v111);
          (*(v200 + 8))(v109, v201);
        }

        else
        {
          *(&v222 + 1) = sub_25F278270;
          v223 = v82;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v221 = sub_25F1D8C38;
          *&v222 = &block_descriptor_7;
          v213 = _Block_copy(&aBlock);
          sub_25F2033CC(v85);

          v132 = v198;
          sub_25F30492C();
          v219 = MEMORY[0x277D84F90];
          sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
          v133 = v199;
          v134 = v203;
          sub_25F305E5C();
          v135 = v213;
          MEMORY[0x25F8D7C70](0, v132, v133, v213);
          _Block_release(v135);
          sub_25F2033DC(v85);
          (*(v202 + 8))(v133, v134);
          (*(v200 + 8))(v132, v201);
        }

        v113 = v207;
        goto LABEL_40;
      }

      v114 = v217;
      sub_25F270388(v83);
      v115 = v206;
      sub_25F278740(v114, v206, type metadata accessor for CrashReport);
      v116 = (v77 + 32) & v107;
      v117 = swift_allocObject();
      v118 = v215;
      *(v117 + 16) = 0;
      *(v117 + 24) = v118;
      sub_25F1D932C(v115, v117 + v116);
      *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
      *(&aBlock + 1) = 132;
      LOBYTE(v221) = 2;
      v222 = xmmword_25F311290;
      v223 = "symbolicate(with:on:)";
      v224 = 21;
      v225 = 2;
      sub_25F2033CC(0);
      v119 = sub_25F27779C(&aBlock, 0, v118, sub_25F278318, v117);

      sub_25F2033DC(0);
      v120 = v87[2];
      if (v120 == v119)
      {

        v113 = v207;
      }

      else
      {
        v209 = v82;
        v121 = swift_allocObject();
        v122 = v215;
        v121[2] = 0;
        v121[3] = v122;
        v121[4] = sub_25F27831C;
        v121[5] = v87;
        v92 = *(v119 + 88);
        v123 = MEMORY[0x28223BE20](v121);
        *(&v180 - 2) = sub_25F278340;
        *(&v180 - 1) = v123;
        v124 = *(*v92 + *MEMORY[0x277D841D0] + 16);
        v82 = (*(*v92 + 48) + 3) & 0x1FFFFFFFCLL;

        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v92 + v82));
        v125 = (v92 + v124);
        v100 = v189;
        v126 = v182;
        sub_25F27834C(v125, v189);
        if (v126)
        {
          goto LABEL_43;
        }

        os_unfair_lock_unlock((v92 + v82));
        v127 = v185;
        sub_25F1B7174(v100, v185, &qword_27FD569E8, &unk_25F311358);
        v128 = *(v212 + 48);
        v212 += 48;
        v210 = v128;
        if (v128(v127, 1, v213) == 1)
        {

          v129 = &qword_27FD569E8;
          v130 = &unk_25F311358;
          v131 = v100;
        }

        else
        {
          v158 = v183;
          sub_25F23F614(v127, v183, qword_27FD53BB8, &qword_25F311350);

          sub_25F2C9E5C(v158, 0, v215, v87);

          v131 = v158;
          v127 = v189;
          v129 = qword_27FD53BB8;
          v130 = &qword_25F311350;
        }

        sub_25F1AF698(v131, v129, v130);
        sub_25F1AF698(v127, &qword_27FD569E8, &unk_25F311358);

        v159 = swift_allocObject();
        v160 = v215;
        v159[2] = 0;
        v159[3] = v160;
        v159[4] = sub_25F278368;
        v159[5] = v87;
        v161 = *(v119 + 88);
        v162 = MEMORY[0x28223BE20](v159);
        *(&v180 - 2) = sub_25F2783A8;
        *(&v180 - 1) = v162;
        v163 = *(*v161 + *MEMORY[0x277D841D0] + 16);
        v164 = (*(*v161 + 48) + 3) & 0x1FFFFFFFCLL;
        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v161 + v164));
        v165 = v187;
        sub_25F279180((v161 + v163), v187);
        os_unfair_lock_unlock((v161 + v164));
        v166 = v186;
        sub_25F1B7174(v165, v186, &qword_27FD569E8, &unk_25F311358);
        if ((v210)(v166, 1, v213) == 1)
        {

          sub_25F1AF698(v165, &qword_27FD569E8, &unk_25F311358);
          v165 = v166;
        }

        else
        {
          v167 = v184;
          sub_25F23F614(v166, v184, qword_27FD53BB8, &qword_25F311350);
          v168 = v216;

          sub_25F2CA63C(v167, 0, v215, v168);

          sub_25F1AF698(v167, qword_27FD53BB8, &qword_25F311350);
        }

        sub_25F1AF698(v165, &qword_27FD569E8, &unk_25F311358);

        v169 = swift_allocObject();
        v170 = v215;
        v169[2] = 0;
        v169[3] = v170;
        v169[4] = sub_25F2783B4;
        v169[5] = v119;
        v171 = *(v120 + 88);
        v172 = MEMORY[0x28223BE20](v169);
        *(&v180 - 2) = sub_25F2790F8;
        *(&v180 - 1) = v172;
        v173 = *(*v171 + *MEMORY[0x277D841D0] + 16);
        v174 = (*(*v171 + 48) + 3) & 0x1FFFFFFFCLL;

        sub_25F2033CC(0);
        swift_retain_n();
        os_unfair_lock_lock((v171 + v174));
        v175 = v181;
        sub_25F279180((v171 + v173), v181);
        os_unfair_lock_unlock((v171 + v174));
        v176 = v188;
        sub_25F1B7174(v175, v188, &qword_27FD569E8, &unk_25F311358);
        if ((v210)(v176, 1, v213) == 1)
        {

          sub_25F1AF698(v175, &qword_27FD569E8, &unk_25F311358);
          v177 = v176;
        }

        else
        {
          v178 = v176;
          v179 = v180;
          sub_25F23F614(v178, v180, qword_27FD53BB8, &qword_25F311350);

          sub_25F2CAB90(v179, 0, v215, v119);

          sub_25F1AF698(v179, qword_27FD53BB8, &qword_25F311350);
          v177 = v175;
        }

        sub_25F1AF698(v177, &qword_27FD569E8, &unk_25F311358);

        v113 = v207;
        v85 = v211;
      }

      sub_25F2033DC(0);
    }

LABEL_40:
    sub_25F1AF760(v217);

    sub_25F2033DC(v85);

    sub_25F1AF760(v113);
  }
}

uint64_t sub_25F26F6A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = *a1;
  if (*(*a1 + 16) && (v10 = sub_25F219494(a2), (v11 & 1) != 0))
  {
    *a3 = *(*(v9 + 56) + 8 * v10);
    a3[1] = 0;
  }

  else
  {
    *&v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
    *(&v19 + 1) = 132;
    v20 = 2;
    v21 = xmmword_25F3112A0;
    v22 = "symbolicate(_:with:)";
    v23 = 20;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A88, &qword_25F3114F0);
    v13 = swift_allocObject();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A90, &qword_25F3114F8);
    v15 = swift_allocObject();
    *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_25F23F614(v8, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), &qword_27FD56A80, &qword_25F3114E8);
    *(v13 + 104) = v15;
    v16 = sub_25F1C0138(&v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A98, &unk_25F311500);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a1;
    result = sub_25F2111C0(v16, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v25;
    *a3 = v16;
    a3[1] = v17;
  }

  return result;
}

uint64_t sub_25F26F944(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v76 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v68 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v74 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v75 = &v68 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v68 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  v30 = type metadata accessor for CrashReport(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  sub_25F270388(a2);
  sub_25F278740(a1, &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CrashReport);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  sub_25F1D932C(&v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
  *&v80 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v80 + 1) = 132;
  v81 = 2;
  v82 = xmmword_25F311290;
  v83 = "symbolicate(with:on:)";
  v84 = 21;
  v85 = 2;
  sub_25F2033CC(a3);
  v35 = sub_25F27779C(&v80, 0, 0, sub_25F279174, v34);

  if (a5[2] == v35)
  {
  }

  v70 = a5[2];
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = sub_25F2791C8;
  v36[5] = a5;
  v37 = *(v35 + 88);
  v38 = MEMORY[0x28223BE20](v36);
  *(&v68 - 2) = sub_25F2790FC;
  *(&v68 - 1) = v38;
  v39 = *(*v37 + *MEMORY[0x277D841D0] + 16);
  v40 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v37 + v40));
  sub_25F279180((v37 + v39), v29);
  os_unfair_lock_unlock((v37 + v40));
  sub_25F1B7174(v29, v27, &qword_27FD569E8, &unk_25F311358);
  v41 = v78 + 48;
  v42 = *(v78 + 48);
  v43 = v42(v27, 1, v79);
  v78 = v41;
  v69 = v42;
  if (v43 == 1)
  {

    sub_25F1AF698(v29, &qword_27FD569E8, &unk_25F311358);
    v29 = v27;
  }

  else
  {
    v45 = v27;
    v46 = v71;
    sub_25F23F614(v45, v71, qword_27FD53BB8, &qword_25F311350);

    sub_25F2C9E5C(v46, 0, 0, a5);

    sub_25F1AF698(v46, qword_27FD53BB8, &qword_25F311350);
  }

  sub_25F1AF698(v29, &qword_27FD569E8, &unk_25F311358);

  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = sub_25F27916C;
  v47[5] = a5;
  v48 = *(v35 + 88);
  v49 = MEMORY[0x28223BE20](v47);
  *(&v68 - 2) = sub_25F2790F8;
  *(&v68 - 1) = v49;
  v50 = *(*v48 + *MEMORY[0x277D841D0] + 16);
  v51 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v48 + v51));
  v52 = v75;
  sub_25F279180((v48 + v50), v75);
  os_unfair_lock_unlock((v48 + v51));
  v53 = v74;
  sub_25F1B7174(v52, v74, &qword_27FD569E8, &unk_25F311358);
  v54 = v69;
  if (v69(v53, 1, v79) == 1)
  {

    sub_25F1AF698(v52, &qword_27FD569E8, &unk_25F311358);
    v52 = v53;
  }

  else
  {
    v55 = v53;
    v56 = v72;
    sub_25F23F614(v55, v72, qword_27FD53BB8, &qword_25F311350);

    sub_25F2CA63C(v56, 0, 0, a5);

    sub_25F1AF698(v56, qword_27FD53BB8, &qword_25F311350);
  }

  sub_25F1AF698(v52, &qword_27FD569E8, &unk_25F311358);

  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = sub_25F279178;
  v57[5] = v35;
  v58 = *(v70 + 88);
  v59 = MEMORY[0x28223BE20](v57);
  *(&v68 - 2) = sub_25F2790F8;
  *(&v68 - 1) = v59;
  v60 = *(*v58 + *MEMORY[0x277D841D0] + 16);
  v61 = (*(*v58 + 48) + 3) & 0x1FFFFFFFCLL;
  swift_retain_n();
  os_unfair_lock_lock((v58 + v61));
  v62 = (v58 + v60);
  v63 = v77;
  sub_25F279180(v62, v77);
  os_unfair_lock_unlock((v58 + v61));
  v64 = v76;
  sub_25F1B7174(v63, v76, &qword_27FD569E8, &unk_25F311358);
  if (v54(v64, 1, v79) == 1)
  {

    sub_25F1AF698(v63, &qword_27FD569E8, &unk_25F311358);
    v65 = v64;
  }

  else
  {
    v66 = v64;
    v67 = v73;
    sub_25F23F614(v66, v73, qword_27FD53BB8, &qword_25F311350);

    sub_25F2CAB90(v67, 0, 0, v35);

    sub_25F1AF698(v67, qword_27FD53BB8, &qword_25F311350);
    v65 = v63;
  }

  sub_25F1AF698(v65, &qword_27FD569E8, &unk_25F311358);
}

uint64_t CrashLogSymbolicator.deinit()
{
  sub_25F2033DC(*(v0 + 16));

  return v0;
}

uint64_t CrashLogSymbolicator.__deallocating_deinit()
{
  sub_25F2033DC(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F270314()
{
  CSRelease();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F270388(unint64_t a1)
{
  result = type metadata accessor for CrashReport(0);
  v38 = v1;
  v3 = *(v1 + *(result + 44));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = v3 + 32;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = (v7 + 72 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v46 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[3];
        *&v50 = *(v8 + 8);
        v48 = v11;
        v49 = v12;
        v47 = v10;
        v13 = *(v8 + 8);
        v15 = v8[2];
        v14 = v8[3];
        v16 = *v8;
        v17 = v8[1];
        *v53 = v9;
        *&v53[24] = v17;
        *&v53[40] = v15;
        *&v53[56] = v14;
        *&v53[72] = v13;
        *&v53[8] = v16;
        v18 = v14;
        if (v14)
        {
          break;
        }

        sub_25F2787A8(&v46, &v41);
LABEL_5:
        result = sub_25F1AF698(v53, &qword_27FD52DF8, &qword_25F311460);
        ++v9;
        v8 = (v8 + 72);
        if (v4 == v9)
        {
          v5 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      v19 = *&v53[48];
      v39 = *&v53[48];
      v40 = v14;
      v51 = 0xD000000000000010;
      v52 = 0x800000025F319BD0;
      sub_25F2787A8(&v46, &v41);
      sub_25F1BF118();
      if (sub_25F305D5C())
      {
        goto LABEL_5;
      }

      *&v41 = v19;
      *(&v41 + 1) = v18;
      v39 = 0x2F7273752FLL;
      v40 = 0xE500000000000000;
      if (sub_25F305D5C())
      {
        goto LABEL_5;
      }

      v20 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      v54 = v36;
      if ((result & 1) == 0)
      {
        result = sub_25F1BD148(0, *(v36 + 16) + 1, 1);
        v20 = v54;
      }

      v5 = MEMORY[0x277D84F90];
      v7 = v3 + 32;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_25F1BD148((v21 > 1), v22 + 1, 1);
        v20 = v54;
      }

      v6 = v9 + 1;
      *(v20 + 16) = v22 + 1;
      v36 = v20;
      v23 = (v20 + 80 * v22);
      v23[2] = *v53;
      v24 = *&v53[16];
      v25 = *&v53[32];
      v26 = *&v53[64];
      v23[5] = *&v53[48];
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      if (v4 - 1 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_18:
  v27 = *(v36 + 16);
  if (v27)
  {
    v51 = v5;
    sub_25F3060DC();
    if (*(v36 + 16))
    {
      v28 = 0;
      v29 = 32;
      while (1)
      {
        v46 = *(v36 + v29);
        v30 = *(v36 + v29 + 16);
        v31 = *(v36 + v29 + 32);
        v32 = *(v36 + v29 + 64);
        v49 = *(v36 + v29 + 48);
        v50 = v32;
        v47 = v30;
        v48 = v31;
        v33 = v46;
        v43 = v31;
        v44 = v49;
        v45 = v32;
        v41 = v46;
        v42 = v30;
        sub_25F1B7174(&v46, &v39, &qword_27FD52DF8, &qword_25F311460);
        sub_25F271864(v33, (&v41 + 8), a1, v38);
        *&v53[32] = v43;
        *&v53[48] = v44;
        *&v53[64] = v45;
        *v53 = v41;
        *&v53[16] = v42;
        sub_25F1AF698(v53, &qword_27FD52DF8, &qword_25F311460);
        sub_25F3060AC();
        sub_25F3060EC();
        sub_25F3060FC();
        sub_25F3060BC();
        if (v27 - 1 == v28)
        {
          break;
        }

        ++v28;
        v29 += 80;
        if (v28 >= *(v36 + 16))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      __break(1u);
    }

    v34 = v51;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  *v53 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *&v53[8] = 132;
  v53[16] = 2;
  *&v53[24] = xmmword_25F3112B0;
  *&v53[40] = "resolveObfuscatedImagePaths(using:)";
  *&v53[48] = 35;
  v53[56] = 2;
  v35 = sub_25F205490(v53, 0, v34);

  return v35;
}

uint64_t sub_25F2707A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A28, &qword_25F311458);
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CrashLogSymbolicator.swift";
  *(&v7 + 1) = 132;
  v8 = 2;
  v9 = xmmword_25F3112C0;
  v10 = "symbolicate(with:on:)";
  v11 = 21;
  v12 = 2;
  return sub_25F26D4C8(&v7, sub_25F278678, v6);
}

uint64_t sub_25F270844(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v58 = a2;
  v59 = a3;
  v8 = sub_25F30490C();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  MEMORY[0x28223BE20](v57);
  v13 = &v48 - v12;
  v14 = type metadata accessor for CrashReport(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  sub_25F278740(a4, &v48 - v24, type metadata accessor for CrashReport);
  sub_25F278740(v25, v23, type metadata accessor for CrashReport);
  sub_25F278740(v25, v20, type metadata accessor for CrashReport);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v25;
  v30 = v58;
  sub_25F1D932C(v29, v28 + v26);
  *(v28 + v27) = a5;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock = v30;
  v62 = v59;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v31 = v56;
    sub_25F271148(a5, v56);
    sub_25F278740(v31, v13, type metadata accessor for CrashReport);
    swift_storeEnumTagMultiPayload();
    sub_25F1D7358(v13);

    sub_25F1AF760(v20);

    sub_25F1AF698(v13, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF760(v31);
    v32 = v23;
  }

  else
  {
    v33 = v13;
    v34 = v56;
    v48 = v23;
    v49 = v20;
    if (v30)
    {
      v56 = a5;
      v57 = a1;
      if (v30 == 1)
      {
        sub_25F1F54F4();
        v35 = sub_25F305AAC();
        v65 = sub_25F278684;
        v66 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_25F1D8C38;
        v64 = &block_descriptor_111;
        v36 = _Block_copy(&aBlock);

        v37 = v50;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v38 = v51;
        v39 = v55;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v37, v38, v36);
        _Block_release(v36);

        (*(v54 + 8))(v38, v39);
        (*(v52 + 8))(v37, v53);
      }

      else
      {
        v65 = sub_25F278684;
        v66 = v28;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_25F1D8C38;
        v64 = &block_descriptor_108;
        v42 = _Block_copy(&aBlock);

        sub_25F2033CC(v30);
        v43 = v50;
        sub_25F30492C();
        v60 = MEMORY[0x277D84F90];
        sub_25F2783D0(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v44 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
        v45 = v51;
        v46 = v55;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v43, v45, v42);
        _Block_release(v42);
        sub_25F2033DC(v44);
        (*(v54 + 8))(v45, v46);
        (*(v52 + 8))(v43, v53);
      }

      v41 = v49;
    }

    else
    {
      v40 = v49;
      sub_25F271148(a5, v56);
      sub_25F278740(v34, v33, type metadata accessor for CrashReport);
      swift_storeEnumTagMultiPayload();
      sub_25F1D7358(v33);
      sub_25F1AF698(v33, &qword_27FD53BB0, &unk_25F309BA0);
      sub_25F1AF760(v34);

      v41 = v40;
    }

    sub_25F1AF760(v41);

    v32 = v48;
  }

  return sub_25F1AF760(v32);
}

uint64_t sub_25F271000(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F271148(a2, v8);
  sub_25F278740(v8, v5, type metadata accessor for CrashReport);
  swift_storeEnumTagMultiPayload();
  sub_25F1D7358(v5);
  sub_25F1AF698(v5, &qword_27FD53BB0, &unk_25F309BA0);
  return sub_25F1AF760(v8);
}

void sub_25F271148(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v5 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25F1B6AFC(MEMORY[0x277D84F90]);
  v79 = v5;
  v8 = *(v3 + *(v5 + 44));
  v9 = *(a1 + 16);
  v87 = 0;
  if (!v9)
  {

    v13 = v8;
LABEL_30:
    v91 = v13;
    *&__dst = sub_25F1B6C04(MEMORY[0x277D84F90]);
    v58 = v79;
    MEMORY[0x28223BE20](__dst);
    *(&v79 - 4) = &__dst;
    *(&v79 - 3) = &v111;
    *(&v79 - 2) = v3;
    v90 = sub_25F2DDA90(sub_25F27871C, (&v79 - 6), v59);
    v60 = v80;
    sub_25F278740(v3, v80, type metadata accessor for CrashReport.ID);
    v61 = v58[6];
    v62 = (v3 + v58[5]);
    v64 = *v62;
    v63 = v62[1];
    v65 = *(v3 + v61);
    v66 = *(v3 + v61 + 8);
    v67 = v58[8];
    v68 = *(v3 + v58[7]);
    v69 = sub_25F30462C();
    (*(*(v69 - 8) + 16))(v60 + v67, v3 + v67, v69);
    v70 = *(v3 + v58[9]);
    v71 = (v3 + v58[13]);
    v72 = (v60 + v58[5]);
    *v72 = v64;
    v72[1] = v63;
    v73 = (v60 + v58[6]);
    *v73 = v65;
    v73[1] = v66;
    *(v60 + v58[7]) = v68;
    *(v60 + v58[9]) = v70;
    v74 = v60 + v58[10];
    *v74 = 0u;
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0;
    *(v74 + 40) = 1;
    *(v74 + 80) = 0u;
    *(v74 + 96) = 0u;
    *(v74 + 48) = 0u;
    *(v74 + 64) = 0u;
    v75 = v90;
    *(v60 + v58[11]) = v91;
    *(v60 + v58[12]) = v75;
    v77 = *v71;
    v76 = v71[1];
    v78 = (v60 + v58[13]);
    *v78 = v77;
    v78[1] = v76;

    return;
  }

  v86 = v7;
  v10 = *(v8 + 16);
  v88 = v8 + 32;

  v11 = (a1 + 48);
  *&v12 = 136446466;
  v81 = v12;
  v13 = v8;
  v82 = v3;
  v89 = v10;
  v90 = v8;
  while (1)
  {
    v21 = *(v11 - 2);
    if (v21 >= v10)
    {
      goto LABEL_4;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v8 + 16))
    {
      goto LABEL_32;
    }

    v91 = v13;
    v23 = *(v11 - 1);
    v22 = *v11;
    v24 = (v88 + 72 * v21);
    v25 = v24[8];
    v26 = *(v24 + 3);
    v27 = *(v24 + 1);
    v103 = *(v24 + 2);
    v104 = v26;
    v28 = *v24;
    v105 = v25;
    v101 = v28;
    v102 = v27;
    v29 = *(&v103 + 1);
    v30 = v104;
    memmove(&__dst, v24, 0x48uLL);
    if (!v22)
    {

      v22 = v30;
      v23 = v29;
    }

    swift_beginAccess();
    *(&v108 + 1) = v23;
    *&v109 = v22;

    sub_25F2787A8(&v101, &v96);

    if (!v22)
    {
      goto LABEL_14;
    }

    v31 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {

LABEL_14:
      if (qword_27FD52918 != -1)
      {
        swift_once();
      }

      v44 = sub_25F30479C();
      __swift_project_value_buffer(v44, qword_27FD571A8);
      v45 = v86;
      sub_25F278740(v3, v86, type metadata accessor for CrashReport);
      v46 = sub_25F30477C();
      v47 = sub_25F3059FC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v105;
        v83 = *(&v104 + 1);
        v49 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v96 = v85;
        *v49 = v81;
        v84 = v47;
        v50 = _s10Foundation4UUIDV08PreviewsA2OSE17propertyListValueSSvg_0();
        v52 = v51;
        sub_25F1AF760(v45);
        v53 = sub_25F1C53AC(v50, v52, &v96);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        if (v48)
        {
          v54 = v83;
        }

        else
        {
          v54 = 0x6E776F6E6B6E753CLL;
        }

        if (v48)
        {
          v55 = v48;
        }

        else
        {
          v55 = 0xE90000000000003ELL;
        }

        v56 = sub_25F1C53AC(v54, v55, &v96);
        v3 = v82;

        *(v49 + 14) = v56;
        _os_log_impl(&dword_25F1A2000, v46, v84, "[%{public}s] Ignoring image without path or arch: %s", v49, 0x16u);
        v57 = v85;
        swift_arrayDestroy();
        MEMORY[0x25F8D9510](v57, -1, -1);
        MEMORY[0x25F8D9510](v49, -1, -1);
      }

      else
      {

        sub_25F1AF760(v45);
      }

      goto LABEL_25;
    }

    v32 = v102;

    v33 = v87;
    v34 = sub_25F272988(v32, v31);

    v35 = sub_25F272A3C(v23, v22, v34);
    v37 = v36;
    v87 = v33;

    v98 = v108;
    v99 = v109;
    v100 = v110;
    v96 = __dst;
    v97 = v107;
    type metadata accessor for ImageEntry();
    v38 = swift_allocObject();
    v39 = v109;
    *(v38 + 48) = v108;
    *(v38 + 64) = v39;
    v40 = v110;
    v41 = v107;
    *(v38 + 16) = __dst;
    *(v38 + 32) = v41;
    *(v38 + 80) = v40;
    *(v38 + 88) = v35;
    *(v38 + 96) = v37;
    sub_25F2787A8(&v96, v94);
    v42 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v94[0] = v42;
    sub_25F211350(v38, v21, isUniquelyReferenced_nonNull_native);
    v111 = *&v94[0];
LABEL_25:
    v8 = v90;
    v13 = v91;
    v10 = v89;
    v98 = v108;
    v99 = v109;
    v100 = v110;
    v96 = __dst;
    v97 = v107;
    sub_25F2787A8(&v96, v94);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_25F1E10EC(v13);
    }

    if (v21 >= *(v13 + 2))
    {
      goto LABEL_33;
    }

    v14 = &v13[72 * v21];
    v92[0] = *(v14 + 2);
    v15 = *(v14 + 3);
    v16 = *(v14 + 4);
    v17 = *(v14 + 5);
    v93 = *(v14 + 12);
    v92[2] = v16;
    v92[3] = v17;
    v92[1] = v15;
    v19 = v98;
    v18 = v99;
    v20 = v97;
    *(v14 + 12) = v100;
    *(v14 + 4) = v19;
    *(v14 + 5) = v18;
    *(v14 + 3) = v20;
    *(v14 + 2) = v96;
    sub_25F278804(v92);
    v94[2] = v108;
    v94[3] = v109;
    v95 = v110;
    v94[0] = __dst;
    v94[1] = v107;
    sub_25F278804(v94);
LABEL_4:
    v11 += 3;
    if (!--v9)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}