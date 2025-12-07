uint64_t sub_23028A03C()
{
  if (*v0)
  {
    return 0x6F69736E656D6964;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_23028A074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23028A158(uint64_t a1)
{
  v2 = sub_23028AF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23028A194(uint64_t a1)
{
  v2 = sub_23028AF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RDVector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23028A228(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18E20, &unk_2303346E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23028AF60();
  sub_230311448();
  swift_beginAccess();
  v10[1] = *(v3 + 16);
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690, &qword_2303352C0);
  sub_23028AFB4(&qword_27DB17698, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
  sub_230310DF8();
  if (!v2)
  {
    swift_beginAccess();
    v11 = 1;
    sub_230310DD8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23028A404()
{
  sub_230311358();
  MEMORY[0x2319130E0](v0);
  return sub_2303113A8();
}

uint64_t RDVector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  RDVector.init(from:)(a1);
  return v2;
}

uint64_t RDVector.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18E30, &qword_2303346F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23028AF60();
  sub_230311428();
  if (v2)
  {
    type metadata accessor for RDVector();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690, &qword_2303352C0);
    v11[15] = 0;
    sub_23028AFB4(&qword_27DB176B0, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    sub_230310CE8();
    *(v1 + 16) = v12;
    v11[14] = 1;
    v10 = sub_230310CC8();
    (*(v6 + 8))(v8, v5);
    *(v3 + 24) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23028A6D4()
{
  swift_beginAccess();

  v1 = MEMORY[0x231911A60](v0, MEMORY[0x277D839F8]);
  v3 = v2;

  MEMORY[0x231911790](v1, v3);

  return 0x726F746365564452;
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  result = swift_beginAccess();
  if (v4 != *(a2 + 24))
  {
    return 0;
  }

  if (v4 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    v6 = 4;
    do
    {
      result = v6 - v4 == 4;
      if (v6 - v4 == 4)
      {
        break;
      }

      v7 = *(a1 + 16);
      if ((v6 - 4) >= *(v7 + 16))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v8 = *(a2 + 16);
      if ((v6 - 4) >= *(v8 + 16))
      {
        goto LABEL_12;
      }

      v9 = *(v7 + 8 * v6);
      v10 = *(v8 + 8 * v6++);
    }

    while (v9 == v10);
  }

  return result;
}

uint64_t sub_23028A880@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RDVector();
  v5 = swift_allocObject();
  result = RDVector.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_23028A8FC(uint64_t a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](*v1);
  return sub_2303113A8();
}

uint64_t + infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5)
  {
    swift_beginAccess();
    result = swift_beginAccess();
    v6 = MEMORY[0x277D84F90];
    v7 = 4;
    while (1)
    {
      v8 = *(a1 + 16);
      if ((v7 - 4) >= *(v8 + 16))
      {
        break;
      }

      v9 = *(a2 + 16);
      if ((v7 - 4) >= *(v9 + 16))
      {
        goto LABEL_15;
      }

      v10 = *(v8 + 8 * v7);
      v11 = *(v9 + 8 * v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23007EB60(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_23007EB60((v12 > 1), v13 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v10 + v11;
      ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_13:
  type metadata accessor for RDVector();
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = *(v6 + 16);
  return result;
}

void / infix(_:_:)(uint64_t a1, double a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3)
    {
      v4 = sub_23030FD48();
      *(v4 + 16) = v3;
      bzero((v4 + 32), 8 * v3);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v5 = *(*(a1 + 16) + 16);
    if (!v5)
    {
LABEL_19:
      type metadata accessor for RDVector();
      v20 = swift_allocObject();
      v21 = *(v4 + 16);
      *(v20 + 16) = v4;
      *(v20 + 24) = v21;
      return;
    }

    v6 = *(v4 + 16);

    v8 = 0;
    v9 = v5 - 1;
    if (v6 < v5 - 1)
    {
      v9 = v6;
    }

    if (v9 < 4)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2;
      if ((v4 - v7) >= 0x20)
      {
        v11 = v9 + 1;
        v12 = (v9 + 1) & 3;
        if (!v12)
        {
          v12 = 4;
        }

        v8 = v11 - v12;
        v13 = vdupq_lane_s64(*&a2, 0);
        v14 = (v7 + 48);
        v15 = (v4 + 48);
        v16 = v8;
        do
        {
          v17 = vdivq_f64(*v14, v13);
          v15[-1] = vdivq_f64(v14[-1], v13);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
      }
    }

    while (v8 < v6)
    {
      v18 = 8 * v8;
      v19 = *(v7 + 8 * v8++ + 32) / v10;
      *(v4 + 32 + v18) = v19;
      if (v5 == v8)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t Array<A>.sum()(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v23 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231912650](0, v1);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v3 = *(v1 + 32);
      }

      swift_beginAccess();
      v4 = *(v3 + 24);
      type metadata accessor for RDVector();
      result = swift_allocObject();
      *(result + 24) = v4;
      if (v4 < 0)
      {
        break;
      }

      v5 = result;
      v22 = v1;
      if (v4)
      {
        v6 = sub_23030FD48();
        *(v6 + 16) = v4;
        bzero((v6 + 32), 8 * v4);
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
      }

      *(v5 + 16) = v6;
      v20 = v1 + 32;
      v21 = v1 & 0xFFFFFFFFFFFFFF8;

      v7 = 0;
      v8 = v5;
      while (1)
      {
        if (v23)
        {
          v11 = MEMORY[0x231912650](v7, v22);
          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v7 >= *(v21 + 16))
          {
            goto LABEL_35;
          }

          v11 = *(v20 + 8 * v7);

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_33;
          }
        }

        swift_beginAccess();
        v13 = *(v8 + 24);
        if (v13 < 0)
        {
          goto LABEL_34;
        }

        if (v13)
        {
          break;
        }

        v9 = MEMORY[0x277D84F90];
LABEL_12:
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        v1 = *(v9 + 2);

        *(v10 + 24) = v1;

        v8 = v10;
        if (v7 == v2)
        {

          return v10;
        }
      }

      swift_beginAccess();
      swift_beginAccess();
      v14 = 4;
      v9 = MEMORY[0x277D84F90];
      while (1)
      {
        v15 = *(v8 + 16);
        if ((v14 - 4) >= *(v15 + 16))
        {
          break;
        }

        v16 = *(v11 + 16);
        if ((v14 - 4) >= *(v16 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v15 + 8 * v14);
        v18 = *(v16 + 8 * v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_23007EB60(0, *(v9 + 2) + 1, 1, v9);
        }

        v1 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v1 >= v19 >> 1)
        {
          v9 = sub_23007EB60((v19 > 1), v1 + 1, 1, v9);
        }

        *(v9 + 2) = v1 + 1;
        *&v9[8 * v1 + 32] = v17 + v18;
        ++v14;
        if (!--v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_2303106D8();
      v2 = result;
      if (!result)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_23028AF60()
{
  result = qword_27DB18E28;
  if (!qword_27DB18E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E28);
  }

  return result;
}

uint64_t sub_23028AFB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17690, &qword_2303352C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23028B024()
{
  result = qword_27DB18E38;
  if (!qword_27DB18E38)
  {
    type metadata accessor for RDVector();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E38);
  }

  return result;
}

unint64_t sub_23028B24C()
{
  result = qword_27DB18E40;
  if (!qword_27DB18E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E40);
  }

  return result;
}

unint64_t sub_23028B2A4()
{
  result = qword_27DB18E48;
  if (!qword_27DB18E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E48);
  }

  return result;
}

unint64_t sub_23028B2FC()
{
  result = qword_27DB18E50;
  if (!qword_27DB18E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E50);
  }

  return result;
}

void static PartialDecodable.partialDecode<A>(key:in:)(uint64_t a2@<X2>, void *a4@<X4>, unint64_t *a6@<X8>)
{
  v9 = sub_230310918();
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v14 = type metadata accessor for Partial(0, a2, v12, v13);
  a6[3] = v14;
  sub_230310D18();
  v27 = a4;
  swift_getWitnessTable();
  v15 = v25;
  sub_230310CE8();
  if (v15)
  {
    __swift_deallocate_boxed_opaque_existential_0(a6);
    v26 = v15;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308, &unk_230315BC0);
    if (swift_dynamicCast())
    {
      v17 = v24;
      v18 = (*(v24 + 88))(v11, v9);
      if (v18 == *MEMORY[0x277D84170])
      {

        (*(v17 + 96))(v11, v9);
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8, &qword_2303233E0) + 48);
        a6[3] = v14;
        Partial.init()(a6);
        v20 = sub_230310908();
        (*(*(v20 - 8) + 8))(&v11[v19], v20);
      }

      else if (v18 == *MEMORY[0x277D84158])
      {

        (*(v17 + 96))(v11, v9);
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668, &unk_23031AE30) + 48);
        a6[3] = v14;
        Partial.init()(a6);
        v22 = sub_230310908();
        (*(*(v22 - 8) + 8))(&v11[v21], v22);
        __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
        (*(v17 + 8))(v11, v9);
      }
    }
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x231914180);
  }

  return result;
}

uint64_t Partial.subscript.getter@<X0>(uint64_t *a1@<X0>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_230310968();

  sub_23030F728();

  if (v10)
  {
    type metadata accessor for Partial(0, *(v4 + *MEMORY[0x277D84DE8] + 8), v5, v6);
    result = swift_dynamicCast();
    if (result)
    {
      *a3 = a1;
      return result;
    }
  }

  else
  {
    sub_230061918(v9, &qword_27DB14810, &qword_230316820);
  }

  return Partial.init()(a3);
}

{
  v4 = *a1;
  sub_230310968();

  sub_23030F728();

  v5 = MEMORY[0x277D84DE8];
  if (v11)
  {
    sub_230061914(&v10, v12);
    sub_230061914(v12, &v10);
    type metadata accessor for Partial(0, *(*(v4 + *v5 + 8) + 16), v6, v7);
    result = swift_dynamicCast();
    if (result)
    {
      *a3 = a1;
      return result;
    }
  }

  else
  {
    sub_230061918(&v10, &qword_27DB14810, &qword_230316820);
  }

  return Partial.init()(a3);
}

uint64_t Partial.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_230310968();

  sub_23030F728();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810, &qword_230316820);
  v5 = *(v4 + *MEMORY[0x277D84DE8] + 8);
  v6 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a3, v6 ^ 1u, 1, v5);
}

uint64_t Partial.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v14 - v6;
  v14[1] = v5;
  sub_230310968();

  sub_23030F728();

  if (v16)
  {
    sub_230061914(&v15, v17);
    sub_230061914(v17, &v15);
    v8 = *(v3 + 16);
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    v11 = *(v10 + 56);
    if (v9)
    {
      v12 = *(v8 - 8);
      v11(v7, 0, 1, v8);
      (*(v12 + 32))(a2, v7, v8);
      return (v11)(a2, 0, 1, v8);
    }

    v11(v7, 1, 1, v8);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    sub_230061918(&v15, &qword_27DB14810, &qword_230316820);
    v8 = *(v3 + 16);
    v10 = *(v8 - 8);
  }

  return (*(v10 + 56))(a2, 1, 1, v8);
}

uint64_t Partial.init()@<X0>(unint64_t *a2@<X8>)
{
  v3 = sub_230310968();
  v4 = MEMORY[0x277D84F70];
  swift_getTupleTypeMetadata2();
  v5 = sub_23030FD38();
  v6 = sub_2301BFA60(v5, v3, v4 + 8, MEMORY[0x277D83F88]);

  *a2 = v6;
  return result;
}

void Partial<A>.init(dictionary:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, id *a4@<X8>)
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = objc_opt_self();
    v23[0] = 0;
    v10 = a1;
    v11 = [v9 dataWithJSONObject:v10 options:0 error:v23];
    v12 = v23[0];
    if (v11)
    {
      v13 = sub_23030EA18();
      v15 = v14;

      sub_23030E408();
      swift_allocObject();
      sub_23030E3F8();
      type metadata accessor for Partial(0, a2, v16, v17);
      v23[1] = a3;
      swift_getWitnessTable();
      sub_23030E3E8();

      sub_23005FE3C(v13, v15);

      if (!v4)
      {
        *a4 = v23[0];
      }
    }

    else
    {
      v22 = v12;
      sub_23030E808();

      swift_willThrow();
    }
  }

  else
  {
    v18 = sub_230310968();
    v19 = MEMORY[0x277D84F70];
    swift_getTupleTypeMetadata2();
    v20 = sub_23030FD38();
    v21 = sub_2301BFA60(v20, v18, v19 + 8, MEMORY[0x277D83F88]);

    *a4 = v21;
  }
}

uint64_t Partial<A>.init(from:)@<X0>(void *a1@<X0>, void (**a2)(char *, unint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v47 - v8;
  v68 = sub_230310968();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v64 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v60 = &v47 - v14;
  v65 = a3;
  v66 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_230310D18();
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v67;
  sub_230311428();
  if (v19)
  {
LABEL_17:
    v42 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v55 = AssociatedConformanceWitness;
  v48 = v10;
  v56 = AssociatedTypeWitness;
  v67 = v18;
  v49 = a1;
  v73 = sub_23030F5F8();
  v20 = sub_23028CC54(v66, v65);
  if (!sub_23030FD78())
  {
LABEL_14:
    v38 = v62;
    v37 = v63;
    v39 = v57;
    v40 = v67;
LABEL_15:
    (*(v38 + 8))(v40, v37);

    *v39 = v73;
    v42 = v49;
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21 = 0;
  v22 = v61;
  v66 = (v61 + 16);
  v51 = (v54 + 4);
  v53 = v54 + 1;
  v54 = (v61 + 8);
  v23 = v64;
  v52 = v20;
  v50 = TupleTypeMetadata2;
  while (1)
  {
    v24 = sub_23030FD58();
    sub_23030FD08();
    if (v24)
    {
      v25 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21;
      v26 = *(v22 + 16);
      v27 = v60;
      v26(v60, v25, TupleTypeMetadata2);
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    result = sub_2303108C8();
    if (v48 != 8)
    {
      break;
    }

    v72[0] = result;
    v26 = *v66;
    v27 = v60;
    (*v66)(v60, v72, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_6:
    v65 = v28;
    v29 = *(TupleTypeMetadata2 + 48);
    *v23 = *v27;
    v30 = *v51;
    v31 = v27 + v29;
    v32 = v56;
    (*v51)(&v23[v29], v31, v56);
    v33 = v58;
    v26(v58, v23, TupleTypeMetadata2);
    v34 = *v33;
    v35 = v59;
    v30(v59, &v33[*(TupleTypeMetadata2 + 48)], v32);
    v71 = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18E58, &qword_230334930);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v70 = 0;
      memset(v69, 0, sizeof(v69));
      sub_230061918(v69, &qword_27DB18E60, &qword_230334938);
      v43 = sub_2303114D8();
      v45 = v44;
      sub_23028E4C4();
      swift_allocError();
      *v46 = v43;
      v46[1] = v45;
      swift_willThrow();

      (*v53)(v35, v32);
      (*v54)(v64, v50);
      (*(v62 + 8))(v67, v63);
      a1 = v49;
      goto LABEL_17;
    }

    sub_23011F5E8(v69, v72);
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    swift_getDynamicType();
    (*(v72[4] + 8))(v69, v35, v67, v32, v55);
    v71 = v34;
    sub_23030F6F8();
    sub_23030F738();
    __swift_destroy_boxed_opaque_existential_1(v72);
    (*v53)(v35, v32);
    v23 = v64;
    TupleTypeMetadata2 = v50;
    (*v54)(v64, v50);
    v20 = v52;
    ++v21;
    v36 = v65 == sub_23030FD78();
    v38 = v62;
    v37 = v63;
    v39 = v57;
    v40 = v67;
    v22 = v61;
    if (v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23028CC54(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14[-v7];
  swift_checkMetadataState();
  sub_230310858();
  v15 = a1;
  v16 = a2;
  v17 = v2;
  sub_230310968();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_23006CBDC(sub_23028F120, v14, AssociatedTypeWitness, TupleTypeMetadata2, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v11);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v12;
}

uint64_t PartialOverride.init(full:partials:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PartialOverride(0, a3, v7, v8);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t PartialOverride.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v11 = sub_2303104C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21[-v13];
  v24 = *(v5 + *(a2 + 28));
  v22 = a3;
  v23 = a1;
  type metadata accessor for Partial(255, *(a2 + 16), v15, v16);
  v17 = sub_23030FDE8();

  WitnessTable = swift_getWitnessTable();
  Sequence.firstMap<A>(_:)(sub_23028E530, v21, v17, v10, WitnessTable, v14);

  v19 = *(v10 - 8);
  if ((*(v19 + 48))(v14, 1, v10) != 1)
  {
    return (*(v19 + 32))(a4, v14, v10);
  }

  (*(v12 + 8))(v14, v11);
  return swift_getAtKeyPath();
}

uint64_t PartialOverride.subscript.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v34 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  v10 = *(v3 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v7);
  v33 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v18 = *(v17 + 28);
  v35 = v2;
  v40 = *(v2 + v18);
  v38 = v19;
  v39 = v14;
  type metadata accessor for Partial(255, *(v17 + 16), v19, v20);
  v21 = sub_23030FDE8();

  WitnessTable = swift_getWitnessTable();
  Sequence.firstMap<A>(_:)(sub_23028E560, v37, v21, v10, WitnessTable, v9);

  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
    v24 = v36;
    v25 = *(v34 + 8);
    v25(v9, v3);
    swift_getAtKeyPath();
    if (v23(v6, 1, v10) == 1)
    {
      v25(v6, v3);
      v26 = 1;
      v27 = v24;
    }

    else
    {
      v30 = *(v11 + 32);
      v31 = v33;
      v30(v33, v6, v10);
      v30(v24, v31, v10);
      v27 = v24;
      v26 = 0;
    }
  }

  else
  {
    v28 = *(v11 + 32);
    v28(v16, v9, v10);
    v29 = v36;
    v28(v36, v16, v10);
    v26 = 0;
    v27 = v29;
  }

  return (*(v11 + 56))(v27, v26, 1, v10);
}

uint64_t PartialOverride.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v22 - v7;
  v22[1] = *(v2 + *(v9 + 28));
  type metadata accessor for Partial(255, *(v9 + 16), v10, v11);
  v12 = sub_23030FDE8();
  v15 = type metadata accessor for Partial(0, v5, v13, v14);

  WitnessTable = swift_getWitnessTable();
  v18 = sub_23006CBDC(sub_23028E590, a1, v12, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  swift_getAtKeyPath();
  (*(v6 + 32))(a2, v8, v5);
  result = type metadata accessor for PartialOverride(0, v5, v19, v20);
  *(a2 + *(result + 28)) = v18;
  return result;
}

void static Optional<A>.partialDecode<A>(key:in:)(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X5>, uint64_t *a7@<X8>)
{
  v33 = a2;
  v32 = a7;
  v9 = sub_230310918();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2303104C8();
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  sub_230310D18();
  v36 = a5;
  swift_getWitnessTable();
  v15 = v34;
  sub_230310CE8();
  if (v15)
  {
    v35 = v15;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308, &unk_230315BC0);
    if (swift_dynamicCast())
    {
      v17 = v30;
      v18 = (*(v30 + 88))(v11, v9);
      if (v18 == *MEMORY[0x277D84170])
      {

        (*(v17 + 96))(v11, v9);
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8, &qword_2303233E0) + 48);
        v20 = sub_230310908();
        v21 = v32;
        *v32 = 0u;
        *(v21 + 1) = 0u;
        (*(*(v20 - 8) + 8))(&v11[v19], v20);
      }

      else if (v18 == *MEMORY[0x277D84158])
      {

        (*(v17 + 96))(v11, v9);
        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668, &unk_23031AE30) + 48);
        v28 = sub_230310908();
        v29 = v32;
        *v32 = 0u;
        *(v29 + 1) = 0u;
        (*(*(v28 - 8) + 8))(&v11[v27], v28);
        __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
        (*(v17 + 8))(v11, v9);
      }
    }
  }

  else
  {
    v22 = v31;
    v23 = *(a3 - 8);
    if ((*(v23 + 48))(v14, 1, a3) == 1)
    {
      (*(v22 + 8))(v14, v12);
      v24 = v32;
      *v32 = 0u;
      *(v24 + 1) = 0u;
    }

    else
    {
      v25 = v32;
      v32[3] = a3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
      (*(v23 + 32))(boxed_opaque_existential_0, v14, a3);
    }
  }
}

void static PartialPrimitive<>.partialDecode<A>(key:in:)(uint64_t a2@<X2>, uint64_t a4@<X5>, uint64_t a6@<X8>)
{
  v21 = a4;
  v8 = sub_230310918();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a6 + 24) = a2;
  __swift_allocate_boxed_opaque_existential_0(a6);
  sub_230310D18();
  v11 = v22;
  sub_230310CE8();
  if (v11)
  {
    __swift_deallocate_boxed_opaque_existential_0(a6);
    v23 = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308, &unk_230315BC0);
    if (swift_dynamicCast())
    {
      v13 = v20;
      v14 = (*(v20 + 88))(v10, v8);
      if (v14 == *MEMORY[0x277D84170])
      {

        (*(v13 + 96))(v10, v8);
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8, &qword_2303233E0) + 48);
        v16 = sub_230310908();
        *a6 = 0u;
        *(a6 + 16) = 0u;
        (*(*(v16 - 8) + 8))(&v10[v15], v16);
      }

      else if (v14 == *MEMORY[0x277D84158])
      {

        (*(v13 + 96))(v10, v8);
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668, &unk_23031AE30) + 48);
        v18 = sub_230310908();
        *a6 = 0u;
        *(a6 + 16) = 0u;
        (*(*(v18 - 8) + 8))(&v10[v17], v18);
        __swift_destroy_boxed_opaque_existential_1(v10);
      }

      else
      {
        (*(v13 + 8))(v10, v8);
      }
    }
  }
}

uint64_t sub_23028DEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  sub_230310968();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  *a4 = (*(a3 + 48))(a1, a2, a3);
  return (*(*(AssociatedTypeWitness - 8) + 16))(&a4[v9], a1, AssociatedTypeWitness);
}

void sub_23028E2A4(uint64_t a4@<X4>, uint64_t a7@<X8>)
{
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  static PartialPrimitive<>.partialDecode<A>(key:in:)(a4, WitnessTable, a7);
}

void sub_23028E358(uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  static PartialPrimitive<>.partialDecode<A>(key:in:)(a4, WitnessTable, a5);
}

unint64_t sub_23028E4C4()
{
  result = qword_27DB18E68;
  if (!qword_27DB18E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E68);
  }

  return result;
}

uint64_t sub_23028E624(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23028E674(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23028E6C4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23028E724(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_23028E7C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_23028E8B8(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_23028E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_23028E9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_23028EA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_23028EAB8(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_23028EBF4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
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

unint64_t sub_23028EDE4()
{
  result = qword_27DB18E78;
  if (!qword_27DB18E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E78);
  }

  return result;
}

unint64_t sub_23028EE38()
{
  result = qword_27DB18E80;
  if (!qword_27DB18E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E80);
  }

  return result;
}

unint64_t sub_23028EE8C()
{
  result = qword_27DB18E88;
  if (!qword_27DB18E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E88);
  }

  return result;
}

unint64_t sub_23028EEE0()
{
  result = qword_27DB18E90;
  if (!qword_27DB18E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E90);
  }

  return result;
}

unint64_t sub_23028EF34()
{
  result = qword_27DB18E98;
  if (!qword_27DB18E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18E98);
  }

  return result;
}

unint64_t sub_23028EF88()
{
  result = qword_27DB18EA0;
  if (!qword_27DB18EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18EA0);
  }

  return result;
}

unint64_t sub_23028EFDC()
{
  result = qword_27DB18EA8;
  if (!qword_27DB18EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18EA8);
  }

  return result;
}

unint64_t sub_23028F030()
{
  result = qword_280C9A090;
  if (!qword_280C9A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A090);
  }

  return result;
}

unint64_t sub_23028F084()
{
  result = qword_280C9A0B0;
  if (!qword_280C9A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0B0);
  }

  return result;
}

uint64_t sub_23028F0D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t REMOrderedIdentifierMap.reorder<A>(objects:)(uint64_t a1, uint64_t a2)
{
  sub_23030FDE8();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v5 = v2;
  sub_23030FB78();
  sub_23030FDE8();
  swift_getWitnessTable();
  v6 = sub_23030F708();
  if (!v2)
  {
    v12 = v6;
    sub_23030F608();

    v7 = [v10 orderedIdentifiers];
    sub_23030FCD8();

    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    sub_23028F7BC();
    sub_23030FBC8();

    v5 = v11;
    if ((MEMORY[0x231911430](v12, MEMORY[0x277D837D0], a2, MEMORY[0x277D837E0]) & 1) == 0)
    {
      MEMORY[0x28223BE20](a1);

      swift_getWitnessTable();
      sub_230310978();
      sub_23030FD88();
      v5 = v11;
    }
  }

  return v5;
}

uint64_t sub_23028F45C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [*a1 remObjectID];
  v10 = [v9 uuid];

  sub_23030EBA8();
  v11 = sub_23030EB78();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v8;
  return swift_unknownObjectRetain();
}

uint64_t sub_23028F5BC(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  sub_230310848();
  MEMORY[0x231911790](0xD000000000000053, 0x8000000230345BE0);
  v3 = [v1 remObjectID];
  v4 = [v3 description];
  v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v7 = v6;

  MEMORY[0x231911790](v5, v7);

  v8 = sub_23030F8B8();

  [v2 invalidParameterErrorWithDescription_];

  return swift_willThrow();
}

void *sub_23028F704(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_23030F6F8();
  result = sub_23030F678();
  if (v5)
  {
    sub_23030FDE8();
    return sub_23030FD98();
  }

  return result;
}

unint64_t sub_23028F7BC()
{
  result = qword_27DB18EB0[0];
  if (!qword_27DB18EB0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB13DE0, &unk_23031A990);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DB18EB0);
  }

  return result;
}

BOOL sub_23028F820(id *a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 remObjectID];
  v9 = [v8 uuid];

  sub_23030EBA8();
  v10 = sub_23030EB78();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v15[1] = v10;
  v15[2] = v12;
  sub_23030F728();

  v13 = v16;
  if (v16)
  {
    swift_unknownObjectRelease();
  }

  return v13 != 0;
}

uint64_t REMOrderedIdentifierMap.reorder<A>(objects:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = _s24ObjectWithNonNilObjectIDCMa(0, a2, a3, a4);
  v8 = sub_23030F608();
  v22 = v8;
  v21 = sub_23030F608();
  if (!sub_23030FD78())
  {
    goto LABEL_13;
  }

  v9 = 4;
  while (1)
  {
    v10 = v9 - 4;
    v11 = sub_23030FD58();
    sub_23030FD08();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(a1 + 8 * v9);
    swift_unknownObjectRetain();
    v13 = v9 - 3;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    v14 = [v12 remObjectID];
    v20 = v12;
    if (v14)
    {
      v20 = sub_230243D50(v14, &v20);
    }

    sub_23030FDE8();
    sub_23030FD98();
    ++v9;
    if (v13 == sub_23030FD78())
    {
      goto LABEL_12;
    }
  }

  v12 = sub_2303108C8();
  v13 = v9 - 3;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v8 = v22;
  v5 = v4;
LABEL_13:
  v15 = REMOrderedIdentifierMap.reorder<A>(objects:)(v8, v7);
  if (v5)
  {
    v16 = v21;
  }

  else
  {
    v17 = v15;

    v20 = v17;
    MEMORY[0x28223BE20](v18);
    sub_23030FDE8();
    swift_getWitnessTable();
    sub_23030FB78();

    v16 = sub_23030FD28();
  }

  return v16;
}

id *sub_23028FC68()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_23028FCE8()
{
  sub_23028FC68();

  return swift_deallocClassInstance();
}

uint64_t REMGroceryLocaleMapping.requiredLocaleIds(for:)(uint64_t a1, uint64_t a2)
{
  REMGroceryLocaleMapping.localeSetting(for:)(&v9, *&a1);
  if (!v3)
  {
    base = v9.base;
    countAndFlagsBits = v9.meta._countAndFlagsBits;
    object = v9.meta._object;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60, &qword_230316B10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2303167B0;
    *(inited + 32) = base;
    *(inited + 48) = countAndFlagsBits;
    *(inited + 56) = object;

    v2 = sub_2300B38E4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return v2;
}

uint64_t REMGroceryLocaleMapping.init(url:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23030E9C8();
  if (v2)
  {
    v9 = sub_23030E9B8();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    sub_23030E408();
    swift_allocObject();
    sub_23030E3F8();
    sub_230294CEC();
    sub_23030E3E8();
    v10 = sub_23030E9B8();
    (*(*(v10 - 8) + 8))(a1, v10);

    result = sub_23005FE3C(v7, v8);
    *a2 = v12;
    a2[1] = v13;
  }

  return result;
}

uint64_t static REMGroceryLocaleMapping.loadV1(url:)@<X0>(void *a2@<X8>)
{
  v45[4] = *MEMORY[0x277D85DE8];
  result = sub_23030E9C8();
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    v9 = sub_23030E9F8();
    v43 = 0;
    v10 = [v8 JSONObjectWithData:v9 options:2 error:&v43];

    v11 = v43;
    if (v10)
    {
      sub_2303105E8();
      swift_unknownObjectRelease();
      sub_23004D5CC(v45, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15280, &qword_230319058);
      if (swift_dynamicCast())
      {
        v40 = a2;
        v41 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18F80, &qword_230334E60);
        v12 = sub_230310B98();
        v13 = v12;
        v14 = 0;
        v15 = 1 << *(v42 + 32);
        v16 = -1;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        v17 = v16 & *(v42 + 64);
        v18 = (v15 + 63) >> 6;
        v19 = v12 + 64;
        if (v17)
        {
          goto LABEL_7;
        }

LABEL_8:
        v21 = v14;
        while (1)
        {
          v14 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_20;
          }

          if (v14 >= v18)
          {
            break;
          }

          v22 = *(v42 + 64 + 8 * v14);
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v17 = (v22 - 1) & v22;
            while (2)
            {
              v23 = v20 | (v14 << 6);
              v24 = (*(v42 + 48) + 16 * v23);
              v25 = *v24;
              v26 = v24[1];
              v27 = (*(v42 + 56) + 16 * v23);
              v29 = *v27;
              v28 = v27[1];
              *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
              v30 = (v13[6] + 16 * v23);
              *v30 = v25;
              v30[1] = v26;
              v31 = (v13[7] + 48 * v23);
              *v31 = v29;
              v31[1] = v28;
              v31[2] = v29;
              v31[3] = v28;
              v31[4] = 0;
              v31[5] = 0;
              v32 = v13[2];
              v33 = __OFADD__(v32, 1);
              v34 = v32 + 1;
              if (!v33)
              {
                v13[2] = v34;
                swift_bridgeObjectRetain_n();

                if (!v17)
                {
                  goto LABEL_8;
                }

LABEL_7:
                v20 = __clz(__rbit64(v17));
                v17 &= v17 - 1;
                continue;
              }

              break;
            }

LABEL_20:
            __break(1u);
          }
        }

        sub_23005FE3C(v6, v41);

        result = __swift_destroy_boxed_opaque_existential_1(v45);
        *v40 = 1;
        v40[1] = v13;
      }

      else
      {
        v43 = 0;
        v44 = 0xE000000000000000;
        sub_230310848();
        MEMORY[0x231911790](0xD000000000000062, 0x8000000230345C60);
        v36 = sub_23030E868();
        MEMORY[0x231911790](v36);

        v37 = v43;
        v38 = v44;
        sub_230294D40();
        swift_allocError();
        *v39 = v37;
        *(v39 + 8) = v38;
        *(v39 + 16) = 1;
        swift_willThrow();
        sub_23005FE3C(v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v45);
      }
    }

    else
    {
      v35 = v11;
      sub_23030E808();

      swift_willThrow();
      return sub_23005FE3C(v6, v7);
    }
  }

  return result;
}

uint64_t sub_2302903F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2302A3880(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_230292DB0(v6);
  return sub_230310998();
}

uint64_t sub_230290474()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB18F40);
  v1 = __swift_project_value_buffer(v0, qword_27DB18F40);
  if (qword_27DB13B70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F590);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id REMGroceryDummyModel.__allocating_init(labels:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19ReminderKitInternal20REMGroceryDummyModel_labels] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id REMGroceryDummyModel.init(labels:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC19ReminderKitInternal20REMGroceryDummyModel_labels] = a1;
  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static REMGroceryDummyModel.isSupported(localeIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_280C989E8 != -1)
  {
    swift_once();
  }

  if (sub_2300A576C(a1, a2, qword_280C989F8))
  {
    LOBYTE(a2) = 0;
  }

  else
  {
    sub_230290700(v7);
    if (!v2)
    {
      if (v7[1])
      {
        v5._countAndFlagsBits = a1;
        v5._object = a2;
        LOBYTE(a2) = REMGroceryLocaleMapping.isSupported(localeIdentifier:)(v5);
      }

      else
      {
        LOBYTE(a2) = 0;
      }
    }
  }

  return a2 & 1;
}

void sub_230290700(void *a1@<X8>)
{
  v3 = sub_23030E9B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  type metadata accessor for REMTrialClient();
  inited = swift_initStackObject();
  *(inited + 24) = 304;
  *(inited + 16) = [objc_opt_self() clientWithIdentifier_];
  sub_23014DFE8(v48);
  if (v1)
  {
    v42 = v4;
    v43 = v12;
    v44 = v14;
    if (qword_27DB13CD0 != -1)
    {
      swift_once();
    }

    v16 = sub_23030EF48();
    __swift_project_value_buffer(v16, qword_27DB18F40);
    v17 = v1;
    v18 = sub_23030EF38();
    v19 = sub_230310288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v41 = a1;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = v3;
      v23 = v22;
      v48[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = Error.rem_errorDescription.getter(v46, v47);
      v26 = sub_23004E30C(v24, v25, v48);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_230044000, v18, v19, "localeSetting { error: %s }", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v27 = v23;
      v3 = v40;
      MEMORY[0x231914180](v27, -1, -1);
      v28 = v21;
      a1 = v41;
      MEMORY[0x231914180](v28, -1, -1);
    }

    else
    {
    }

    v29 = v44;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v32 = [v31 resourceURL];

    v33 = v43;
    if (!v32)
    {
      v37 = objc_opt_self();
      v38 = sub_23030F8B8();
      [v37 internalErrorWithDebugDescription_];

      swift_willThrow();

      return;
    }

    sub_23030E938();

    sub_23030E8F8();
    sub_23030E8F8();
    v34 = v42;
    v35 = *(v42 + 8);
    v35(v9, v3);
    v36 = v45;
    (*(v34 + 16))(v45, v33, v3);
    REMGroceryLocaleMapping.init(url:)(v36, v48);
    swift_setDeallocating();

    v35(v33, v3);
    v35(v29, v3);
  }

  else
  {
    swift_setDeallocating();
  }

  v39 = v48[1];
  *a1 = v48[0];
  a1[1] = v39;
}

Swift::Bool __swiftcall REMGroceryLocaleMapping.isSupported(localeIdentifier:)(Swift::String localeIdentifier)
{
  v2 = v1;
  object = localeIdentifier._object;
  countAndFlagsBits = localeIdentifier._countAndFlagsBits;
  v5 = sub_23030ED18();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90, &qword_230319570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_23030ED38();
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030EBE8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 8);

  v41 = countAndFlagsBits;
  v42 = object;
  sub_23030EBD8();
  v20 = Locale.Components.rem_languageAndScriptWithRegion()();
  (*(v16 + 8))(v18, v15);
  if (*(v19 + 16))
  {
    sub_23005EE00(v20._countAndFlagsBits, v20._object);
    if (v21)
    {
      goto LABEL_16;
    }
  }

  v22 = v14;
  sub_23030EBF8();
  if (sub_230292728())
  {
    if (*(v19 + 16))
    {
      sub_23005EE00(0x746E61482D687ALL, 0xE700000000000000);
      if (v23)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    sub_23030ED28();
    sub_23030ECE8();
    (*(v43 + 8))(v7, v44);
    v24 = sub_23030EC18();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v10, 1, v24) == 1)
    {
      sub_230061918(v10, &unk_27DB18F90, &qword_230319570);
      if (qword_27DB13CD0 != -1)
      {
        swift_once();
      }

      v26 = sub_23030EF48();
      __swift_project_value_buffer(v26, qword_27DB18F40);
      v27 = v42;

      v28 = sub_23030EF38();
      v29 = sub_230310288();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v47 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_23004E30C(v41, v27, &v47);
        _os_log_impl(&dword_230044000, v28, v29, "REMTrialClient: cannot identify the language identifier for locale: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x231914180](v31, -1, -1);
        MEMORY[0x231914180](v30, -1, -1);
      }
    }

    else
    {
      v32 = sub_23030EC08();
      v34 = v33;
      (*(v25 + 8))(v10, v24);
      if (!*(v19 + 16))
      {
        (*(v46 + 8))(v22, v45);

        return 0;
      }

      sub_23005EE00(v32, v34);
      v36 = v35;

      if (v36)
      {
LABEL_15:
        v37 = v22;
        v38 = *(v46 + 8);

        v38(v37, v45);

LABEL_16:

        return 1;
      }
    }
  }

  (*(v46 + 8))(v22, v45);
  return 0;
}

BOOL static REMGroceryDummyModel.isGrocerySupported(localeIdentifier:)(uint64_t a1, void *a2)
{
  if (qword_280C989E8 != -1)
  {
    swift_once();
  }

  if (sub_2300A576C(a1, a2, qword_280C989F8))
  {
    return 0;
  }

  sub_230290700(v7);
  if (!v7[1])
  {
    return 0;
  }

  else
  {
    v4._countAndFlagsBits = a1;
    v4._object = a2;
    v5 = REMGroceryLocaleMapping.isSupported(localeIdentifier:)(v4);
  }

  return v5;
}

void *static REMGroceryDummyModel.modelBaseLocale(for:)(uint64_t a1, void *countAndFlagsBits)
{
  sub_230290700(&v8);
  if (!v2)
  {
    if (v8.base._object)
    {
      v6._countAndFlagsBits = a1;
      v6._object = countAndFlagsBits;
      REMGroceryLocaleMapping.localeSetting(for:)(&v8, v6);
      countAndFlagsBits = v7;

      if (!v7)
      {
        countAndFlagsBits = v8.base._countAndFlagsBits;
      }
    }

    else
    {
      return 0;
    }
  }

  return countAndFlagsBits;
}

unint64_t static REMGroceryDummyModel.groceryLanguagesForSettings()()
{
  sub_230290700(&v68);
  if (v0)
  {
    return v2;
  }

  v4 = v69;
  if (!v69)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v7 = v69 + 64;
  v8 = 1 << *(v69 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v69 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x277D84F98];
  while (1)
  {
    do
    {
      if (!v10)
      {
        while (1)
        {
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v15 >= v11)
          {
            break;
          }

          v10 = *(v7 + 8 * v15);
          ++v5;
          if (v10)
          {
            v5 = v15;
            goto LABEL_7;
          }
        }

        v1 = v0;

        v40 = 1 << *(v12 + 32);
        v41 = -1;
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        v42 = v41 & *(v12 + 64);
        v43 = (v40 + 63) >> 6;

        v44 = 0;
        v45 = MEMORY[0x277D84F90];
        if (v42)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v46 >= v43)
          {

            if (v45 >> 62)
            {
              goto LABEL_54;
            }

            if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            goto LABEL_45;
          }

          v42 = *(v12 + 64 + 8 * v46);
          ++v44;
          if (v42)
          {
            v44 = v46;
            do
            {
LABEL_39:
              v47 = __clz(__rbit64(v42)) | (v44 << 6);
              v48 = (*(v12 + 48) + 16 * v47);
              v49 = *v48;
              v50 = v48[1];
              v51 = *(*(v12 + 56) + 8 * v47);
              type metadata accessor for REMGroceryLanguage();
              swift_allocObject();

              sub_2302D3348(v49, v50, v51);

              MEMORY[0x231911A30](v52);
              if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23030FD18();
              }

              v42 &= v42 - 1;
              sub_23030FD68();
              v45 = v68;
            }

            while (v42);
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        if (sub_2303106D8())
        {
LABEL_45:

          v70 = sub_23029444C(v53);
          sub_2302903F8(&v70);
          if (v1)
          {
            goto LABEL_63;
          }

          v54 = v70;
          v68 = v70;
          if (qword_27DB13D20 != -1)
          {
            swift_once();
          }

          v2 = qword_27DB19628;
          if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0 || (sub_2303106D8() & 0x8000000000000000) == 0)
          {

            sub_230294D94(0, 0, v2);

            return v68;
          }

          __break(1u);
        }

        else
        {
LABEL_55:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880, &qword_230316B00);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_230334E50;
          if (qword_27DB13D20 == -1)
          {
LABEL_56:
            *(v2 + 32) = qword_27DB19628;
            type metadata accessor for REMGroceryLanguage();
            swift_allocObject();

            v55 = sub_2302D3348(0x736E61482D687ALL, 0xE700000000000000, &unk_2844EDCC0);
            sub_2301500DC(&unk_2844EDCE0);
            *(v2 + 40) = v55;
            swift_allocObject();
            v56 = sub_2302D3348(28261, 0xE200000000000000, &unk_2844EDCF0);
            sub_2301500DC(&unk_2844EDD10);
            *(v2 + 48) = v56;
            swift_allocObject();
            v57 = sub_2302D3348(29286, 0xE200000000000000, &unk_2844EDD20);
            swift_arrayDestroy();
            *(v2 + 56) = v57;
            swift_allocObject();
            v58 = sub_2302D3348(25956, 0xE200000000000000, &unk_2844EDD60);
            sub_2301500DC(&unk_2844EDD80);
            *(v2 + 64) = v58;
            swift_allocObject();
            v59 = sub_2302D3348(24938, 0xE200000000000000, &unk_2844EDD90);
            sub_2301500DC(&unk_2844EDDB0);
            *(v2 + 72) = v59;
            swift_allocObject();
            v60 = sub_2302D3348(28523, 0xE200000000000000, &unk_2844EDDC0);
            sub_2301500DC(&unk_2844EDDE0);
            *(v2 + 80) = v60;
            swift_allocObject();
            v61 = sub_2302D3348(0x3931345F7365, 0xE600000000000000, &unk_2844EDDF0);
            sub_2301500DC(&unk_2844EDE10);
            *(v2 + 88) = v61;
            swift_allocObject();
            v62 = sub_2302D3348(0x53455F7365, 0xE500000000000000, &unk_2844EDE20);
            sub_2301500DC(&unk_2844EDE40);
            *(v2 + 96) = v62;

            return v2;
          }
        }

        swift_once();
        goto LABEL_56;
      }

LABEL_7:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = (*(v4 + 56) + 48 * (v13 | (v5 << 6)));
      v1 = v14[5];
    }

    while (!v1);
    v63 = v0;
    v64 = v4;
    v16 = v14[1];
    v66 = *v14;
    v17 = v14[4];
    v18 = *(v12 + 16);

    v67 = v17;
    if (v18 && (sub_23005EE00(v17, v1), (v19 & 1) != 0))
    {
    }

    else
    {
      v20 = v6;
    }

    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_23007E928(0, *(v21 + 2) + 1, 1, v21);
    }

    v22 = v21;
    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_23007E928((v23 > 1), v24 + 1, 1, v21);
    }

    *(v22 + 2) = v24 + 1;
    v65 = v22;
    v25 = &v22[16 * v24];
    *(v25 + 4) = v66;
    *(v25 + 5) = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v12;
    v27 = sub_23005EE00(v67, v1);
    v29 = *(v12 + 16);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (*(v12 + 24) >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v27;
        sub_230089A38();
        v27 = v39;
      }
    }

    else
    {
      sub_2300846D8(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_23005EE00(v67, v1);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_62;
      }
    }

    v6 = MEMORY[0x277D84F90];
    if (v33)
    {
      v35 = v27;

      v12 = v70;
      *(*(v70 + 56) + 8 * v35) = v65;
    }

    else
    {
      v12 = v70;
      *(v70 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v36 = (*(v12 + 48) + 16 * v27);
      *v36 = v67;
      v36[1] = v1;
      *(*(v12 + 56) + 8 * v27) = v65;
      v37 = *(v12 + 16);
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v31)
      {
        goto LABEL_61;
      }

      *(v12 + 16) = v38;
    }

    v0 = v63;
    v4 = v64;
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  sub_2303112A8();
  __break(1u);
LABEL_63:

  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMGroceryLocaleMapping.localeSetting(for:)(ReminderKitInternal::REMGroceryLocaleMapping::LocaleSetting *__return_ptr retstr, Swift::String a2)
{
  v62 = retstr;
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = sub_23030ED18();
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90, &qword_230319570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_23030ED38();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23030EBE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 8);

  v59 = countAndFlagsBits;
  v60 = object;
  sub_23030EBD8();
  v19 = Locale.Components.rem_languageAndScriptWithRegion()();
  (*(v15 + 8))(v17, v14);
  if (*(v18 + 16))
  {
    v20 = sub_23005EE00(v19._countAndFlagsBits, v19._object);
    if (v21)
    {
      v22 = v20;

      v23 = (*(v18 + 56) + 48 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v29 = v23[4];
      v28 = v23[5];
      v30 = v62;
      v62->base._countAndFlagsBits = v24;
      v30->base._object = v25;
      v30->meta._countAndFlagsBits = v26;
      v30->meta._object = v27;
      v30->ui.value._countAndFlagsBits = v29;
      v30->ui.value._object = v28;

      return;
    }
  }

  v31 = v67;
  sub_23030EBF8();
  if (sub_230292728())
  {
    if (*(v18 + 16))
    {
      v32 = sub_23005EE00(0x746E61482D687ALL, 0xE700000000000000);
      if (v33)
      {
        v34 = (*(v18 + 56) + 48 * v32);
        v36 = *v34;
        v35 = v34[1];
        v38 = v34[2];
        v37 = v34[3];
        v39 = v31;
        v41 = v34[4];
        v40 = v34[5];
        v42 = *(v63 + 8);

        v43 = v39;
LABEL_14:
        v42(v43, v64);
        v56 = v62;
        v62->base._countAndFlagsBits = v36;
        v56->base._object = v35;
        v56->meta._countAndFlagsBits = v38;
        v56->meta._object = v37;
        v56->ui.value._countAndFlagsBits = v41;
        v56->ui.value._object = v40;
        return;
      }
    }

    v48 = 0x8000000230345CF0;
    v47 = 0xD000000000000011;
    v46 = 2;
  }

  else
  {
    sub_23030ED28();
    sub_23030ECE8();
    (*(v61 + 8))(v8, v6);
    v44 = sub_23030EC18();
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v11, 1, v44) == 1)
    {
      sub_230061918(v11, &unk_27DB18F90, &qword_230319570);
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_230310848();

      v65 = 0xD000000000000010;
      v66 = 0x8000000230345CD0;
      MEMORY[0x231911790](v59, v60);
      v46 = 0;
      v47 = v65;
      v48 = v66;
    }

    else
    {
      v49 = sub_23030EC08();
      v51 = v50;
      (*(v45 + 8))(v11, v44);
      if (*(v18 + 16))
      {
        v52 = sub_23005EE00(v49, v51);
        if (v53)
        {
          v54 = v52;

          v55 = (*(v18 + 56) + 48 * v54);
          v36 = *v55;
          v35 = v55[1];
          v38 = v55[2];
          v37 = v55[3];
          v41 = v55[4];
          v40 = v55[5];
          v42 = *(v63 + 8);

          v43 = v67;
          goto LABEL_14;
        }
      }

      v65 = 0x65676175676E614CLL;
      v66 = 0xEA0000000000203ALL;
      MEMORY[0x231911790](v49, v51);

      v47 = v65;
      v48 = v66;
      v46 = 2;
      v31 = v67;
    }
  }

  sub_230294D40();
  swift_allocError();
  *v57 = v47;
  *(v57 + 8) = v48;
  *(v57 + 16) = v46;
  swift_willThrow();
  (*(v63 + 8))(v31, v64);
}

id REMGroceryDummyModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id REMGroceryDummyModel.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t REMGroceryLocaleMapping.LocaleSetting.base.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t REMGroceryLocaleMapping.LocaleSetting.meta.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t REMGroceryLocaleMapping.LocaleSetting.ui.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2302923B8()
{
  v1 = 1635018093;
  if (*v0 != 1)
  {
    v1 = 26997;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_2302923F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2302955B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_230292420(uint64_t a1)
{
  v2 = sub_230294E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23029245C(uint64_t a1)
{
  v2 = sub_230294E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMGroceryLocaleMapping.LocaleSetting.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18FA0, &qword_230334E70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230294E80();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_230310C98();
  v21 = v12;
  v23 = 2;
  v13 = sub_230310C48();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230292728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15990, &qword_230335200);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_23030ED18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030EC78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030ED28();
  sub_23030ED08();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_230061918(v2, &qword_27DB15990, &qword_230335200);
    v11 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v2, v7);
    if (sub_23030EC08() == 1953390920 && v12 == 0xE400000000000000)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_230311048();
    }

    (*(v8 + 8))(v10, v7);
  }

  return v11 & 1;
}

uint64_t sub_2302929A0()
{
  if (*v0)
  {
    return 0x676E697070616DLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2302929D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697070616DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_230292AB0(uint64_t a1)
{
  v2 = sub_230294ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230292AEC(uint64_t a1)
{
  v2 = sub_230294ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMGroceryLocaleMapping.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18FB0, &qword_230334E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230294ED4();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_230310CC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18FC0, &qword_230334E80);
    v13 = 1;
    sub_230294F28();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_230292D10(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2303106D8();
LABEL_9:
  result = sub_2303108E8();
  *v2 = result;
  return result;
}

char *sub_230292DB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
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
        type metadata accessor for REMGroceryLanguage();
        v6 = sub_23030FD48();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_230293230(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_230292EB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_230292EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_23030ED38();
  result = MEMORY[0x28223BE20](v51);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  if (a3 != a2)
  {
    v11 = *a4;
    v45 = (v9 + 8);
    v43 = v11;
    v12 = (v11 + 8 * a3 - 8);
    v13 = a1 - a3;
LABEL_5:
    v41 = v12;
    v42 = a3;
    v14 = *(v43 + 8 * a3);
    v40 = v13;
    while (1)
    {
      v15 = *v12;
      v16 = *(v14 + 24);
      if (!v16)
      {
        break;
      }

      v17 = *(v14 + 16);

      v18 = v15;

      v19 = v46;
      sub_23030EC88();
      v20 = sub_23030EC38();
      (*v45)(v19, v51);
      v21 = sub_23030F8B8();
      v22 = [v20 localizedStringForLanguage:v21 context:3];

      if (v22)
      {
        v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v24 = v23;

        v16 = v24;
        v15 = v18;
LABEL_10:

        goto LABEL_12;
      }

      v15 = v18;
LABEL_12:
      v49 = v17;
      v50 = v16;
      v26 = *(v15 + 24);
      if (v26)
      {
        v44 = v15;
        v27 = *(v15 + 16);

        v28 = v46;
        sub_23030EC88();
        v29 = sub_23030EC38();
        (*v45)(v28, v51);
        v30 = sub_23030F8B8();
        v31 = [v29 localizedStringForLanguage:v30 context:3];

        if (!v31)
        {
          goto LABEL_17;
        }

        v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v33 = v32;

        v26 = v33;
      }

      else
      {
        v31 = _REMGetLocalizedString();
        v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v26 = v34;
      }

LABEL_17:
      v47 = v27;
      v48 = v26;
      sub_2300A85F0();
      v35 = sub_230310588();

      if (v35 != -1)
      {
        goto LABEL_4;
      }

      if (!v43)
      {
        __break(1u);
        return result;
      }

      v36 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v36;
      --v12;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        a3 = v42 + 1;
        v12 = v41 + 1;
        v13 = v40 - 1;
        if (v42 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v22 = _REMGetLocalizedString();
    v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v16 = v25;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_230293230(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v131 = a1;
  v140 = sub_23030ED38();
  result = MEMORY[0x28223BE20](v140);
  v139 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_110:
    a4 = *v131;
    if (!*v131)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_112;
    }

    goto LABEL_141;
  }

  v127 = a4;
  v12 = 0;
  v138 = (v9 + 8);
  v13 = MEMORY[0x277D84F90];
  v128 = a3;
  while (2)
  {
    v14 = v12;
    v15 = v12 + 1;
    v132 = v12;
    if (v12 + 1 >= v11)
    {
      goto LABEL_29;
    }

    v136 = v11;
    v129 = v13;
    v130 = v5;
    v16 = *a3;
    a4 = *(*a3 + 8 * v15);
    v134 = 8 * v12;
    v17 = v16 + 8 * v12 + 16;

    v144 = sub_2302D29F8();
    v145 = v18;
    v142 = sub_2302D29F8();
    v143 = v19;
    v135 = sub_2300A85F0();
    v137 = sub_230310588();

    v20 = v12 + 2;
    while (1)
    {
      v27 = v136;
      if (v136 == v20)
      {
        break;
      }

      v28 = *(v17 - 8);
      a4 = *(*v17 + 24);
      if (a4)
      {
        v29 = *(*v17 + 16);

        v30 = v139;
        sub_23030EC88();
        v31 = sub_23030EC38();
        (*v138)(v30, v140);
        v32 = sub_23030F8B8();
        v33 = [v31 localizedStringForLanguage:v32 context:3];

        if (!v33)
        {
          goto LABEL_15;
        }

        v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v35 = v34;

        a4 = v35;
      }

      else
      {

        v33 = _REMGetLocalizedString();
        v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        a4 = v36;
      }

LABEL_15:
      v144 = v29;
      v145 = a4;
      v24 = *(v28 + 24);
      v141 = v28;
      if (v24)
      {
        v22 = *(v28 + 16);

        v37 = v139;
        sub_23030EC88();
        v38 = sub_23030EC38();
        (*v138)(v37, v140);
        v39 = sub_23030F8B8();
        v21 = [v38 localizedStringForLanguage:v39 context:3];

        if (!v21)
        {
          goto LABEL_8;
        }

        v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v41 = v40;

        v24 = v41;
      }

      else
      {
        v21 = _REMGetLocalizedString();
        v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v24 = v23;
      }

LABEL_8:
      v25 = v137 == -1;
      v142 = v22;
      v143 = v24;
      v26 = sub_230310588();

      ++v20;
      v17 += 8;
      if (((v25 ^ (v26 != -1)) & 1) == 0)
      {
        v27 = v20 - 1;
        break;
      }
    }

    v13 = v129;
    v5 = v130;
    v42 = v134;
    a3 = v128;
    v14 = v132;
    if (v137 != -1)
    {
      goto LABEL_28;
    }

    if (v27 < v132)
    {
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v132 < v27)
    {
      v43 = 8 * v27 - 8;
      v44 = v27;
      v45 = v132;
      do
      {
        if (v45 != --v44)
        {
          v47 = *a3;
          if (!*a3)
          {
            goto LABEL_146;
          }

          v46 = *(v47 + v42);
          *(v47 + v42) = *(v47 + v43);
          *(v47 + v43) = v46;
        }

        ++v45;
        v43 -= 8;
        v42 += 8;
      }

      while (v45 < v44);
    }

LABEL_28:
    v15 = v27;
LABEL_29:
    v48 = a3[1];
    if (v15 >= v48)
    {
      v12 = v15;
LABEL_57:
      if (v12 < v14)
      {
        goto LABEL_137;
      }

      goto LABEL_58;
    }

    v12 = v15;
    v91 = __OFSUB__(v15, v14);
    v49 = v15 - v14;
    if (v91)
    {
      goto LABEL_138;
    }

    if (v49 >= v127)
    {
      goto LABEL_57;
    }

    if (__OFADD__(v14, v127))
    {
      goto LABEL_139;
    }

    if (&v127[v14] >= v48)
    {
      v50 = a3[1];
    }

    else
    {
      v50 = &v127[v14];
    }

    if (v50 < v14)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      result = sub_2302A36A0(v13);
      v13 = result;
LABEL_112:
      v146 = v13;
      v122 = *(v13 + 2);
      if (v122 < 2)
      {
      }

      while (*a3)
      {
        v123 = *&v13[16 * v122];
        v124 = *&v13[16 * v122 + 24];
        sub_230293D08((*a3 + 8 * v123), (*a3 + 8 * *&v13[16 * v122 + 16]), (*a3 + 8 * v124), a4);
        if (v5)
        {
        }

        if (v124 < v123)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2302A36A0(v13);
        }

        if (v122 - 2 >= *(v13 + 2))
        {
          goto LABEL_136;
        }

        v125 = &v13[16 * v122];
        *v125 = v123;
        *(v125 + 1) = v124;
        v146 = v13;
        result = sub_2302A3614(v122 - 1);
        v13 = v146;
        v122 = *(v146 + 2);
        if (v122 <= 1)
        {
        }
      }

LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      break;
    }

    if (v12 == v50)
    {
      goto LABEL_57;
    }

    v129 = v13;
    v130 = v5;
    v137 = *a3;
    v51 = (v137 + 8 * v12 - 8);
    v52 = v14 - v12;
    v53 = v12;
    v133 = v50;
    do
    {
      v135 = v51;
      v136 = v53;
      v54 = *(v137 + 8 * v53);
      v134 = v52;
      do
      {
        v55 = *v51;
        v56 = *(v54 + 24);
        if (v56)
        {
          v57 = *(v54 + 16);

          v58 = v139;
          sub_23030EC88();
          v59 = sub_23030EC38();
          (*v138)(v58, v140);
          v60 = sub_23030F8B8();
          v61 = [v59 localizedStringForLanguage:v60 context:3];

          if (!v61)
          {
            goto LABEL_46;
          }

          v57 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v63 = v62;

          v56 = v63;
        }

        else
        {

          v61 = _REMGetLocalizedString();
          v57 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v56 = v64;
        }

LABEL_46:
        v144 = v57;
        v145 = v56;
        a4 = *(v55 + 24);
        v141 = v55;
        if (a4)
        {
          v65 = *(v55 + 16);

          v66 = v139;
          sub_23030EC88();
          v67 = sub_23030EC38();
          (*v138)(v66, v140);
          v68 = sub_23030F8B8();
          v69 = [v67 localizedStringForLanguage:v68 context:3];

          if (!v69)
          {
            goto LABEL_51;
          }

          v65 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v71 = v70;

          a4 = v71;
        }

        else
        {
          v69 = _REMGetLocalizedString();
          v65 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          a4 = v72;
        }

LABEL_51:
        v142 = v65;
        v143 = a4;
        sub_2300A85F0();
        v73 = sub_230310588();

        if (v73 != -1)
        {
          break;
        }

        if (!v137)
        {
          goto LABEL_143;
        }

        v74 = *v51;
        v54 = v51[1];
        *v51 = v54;
        v51[1] = v74;
        --v51;
      }

      while (!__CFADD__(v52++, 1));
      v53 = v136 + 1;
      v51 = (v135 + 8);
      v52 = v134 - 1;
    }

    while (v136 + 1 != v133);
    v12 = v133;
    v13 = v129;
    v5 = v130;
    a3 = v128;
    if (v133 < v132)
    {
      goto LABEL_137;
    }

LABEL_58:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
    }

    v77 = *(v13 + 2);
    v76 = *(v13 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_23007EA34((v76 > 1), v77 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 2) = v78;
    v79 = &v13[16 * v77];
    *(v79 + 4) = v132;
    *(v79 + 5) = v12;
    a4 = *v131;
    if (*v131)
    {
      if (!v77)
      {
LABEL_3:
        v11 = a3[1];
        if (v12 >= v11)
        {
          goto LABEL_110;
        }

        continue;
      }

      while (2)
      {
        v80 = v78 - 1;
        if (v78 >= 4)
        {
          v85 = &v13[16 * v78 + 32];
          v86 = *(v85 - 64);
          v87 = *(v85 - 56);
          v91 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          if (v91)
          {
            goto LABEL_124;
          }

          v90 = *(v85 - 48);
          v89 = *(v85 - 40);
          v91 = __OFSUB__(v89, v90);
          v83 = v89 - v90;
          v84 = v91;
          if (v91)
          {
            goto LABEL_125;
          }

          v92 = &v13[16 * v78];
          v94 = *v92;
          v93 = *(v92 + 1);
          v91 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v91)
          {
            goto LABEL_127;
          }

          v91 = __OFADD__(v83, v95);
          v96 = v83 + v95;
          if (v91)
          {
            goto LABEL_130;
          }

          if (v96 >= v88)
          {
            v114 = &v13[16 * v80 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v91 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v91)
            {
              goto LABEL_134;
            }

            if (v83 < v117)
            {
              v80 = v78 - 2;
            }
          }

          else
          {
LABEL_77:
            if (v84)
            {
              goto LABEL_126;
            }

            v97 = &v13[16 * v78];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_129;
            }

            v103 = &v13[16 * v80 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_133;
            }

            if (v101 + v106 < v83)
            {
              goto LABEL_91;
            }

            if (v83 < v106)
            {
              v80 = v78 - 2;
            }
          }
        }

        else
        {
          if (v78 == 3)
          {
            v81 = *(v13 + 4);
            v82 = *(v13 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
            goto LABEL_77;
          }

          v107 = &v13[16 * v78];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_91:
          if (v102)
          {
            goto LABEL_128;
          }

          v110 = &v13[16 * v80];
          v112 = *(v110 + 4);
          v111 = *(v110 + 5);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_131;
          }

          if (v113 < v101)
          {
            goto LABEL_3;
          }
        }

        v118 = v80 - 1;
        if (v80 - 1 >= v78)
        {
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
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v119 = *&v13[16 * v118 + 32];
        v120 = *&v13[16 * v80 + 40];
        sub_230293D08((*a3 + 8 * v119), (*a3 + 8 * *&v13[16 * v80 + 32]), (*a3 + 8 * v120), a4);
        if (v5)
        {
        }

        if (v120 < v119)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2302A36A0(v13);
        }

        if (v118 >= *(v13 + 2))
        {
          goto LABEL_123;
        }

        v121 = &v13[16 * v118];
        *(v121 + 4) = v119;
        *(v121 + 5) = v120;
        v146 = v13;
        result = sub_2302A3614(v80);
        v13 = v146;
        v78 = *(v146 + 2);
        if (v78 <= 1)
        {
          goto LABEL_3;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_230293D08(char *a1, char *a2, char *a3, char *a4)
{
  v76 = sub_23030ED38();
  v8 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 < v12 >> 3)
  {
    if (a4 != a1 || &a1[8 * v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v82 = &a4[8 * v11];
    if (a2 - a1 < 8 || a2 >= a3)
    {
LABEL_60:
      a2 = a1;
      goto LABEL_63;
    }

    v72 = (v8 + 8);
    v77 = a3;
    while (1)
    {
      v74 = a1;
      v14 = *a4;
      v15 = *(*a2 + 24);
      if (!v15)
      {
        break;
      }

      v16 = a4;
      v17 = *(*a2 + 16);

      v18 = v75;
      sub_23030EC88();
      v19 = sub_23030EC38();
      (*v72)(v18, v76);
      v20 = sub_23030F8B8();
      v21 = [v19 localizedStringForLanguage:v20 context:3];

      if (v21)
      {
        v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v23 = v22;

        v15 = v23;
        a4 = v16;
LABEL_16:

        goto LABEL_18;
      }

      a4 = v16;
LABEL_18:
      v80 = v17;
      v81 = v15;
      v25 = *(v14 + 24);
      if (!v25)
      {
        v31 = _REMGetLocalizedString();
        v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v25 = v34;
        goto LABEL_22;
      }

      v73 = a2;
      v26 = a4;
      v27 = *(v14 + 16);

      v28 = v75;
      sub_23030EC88();
      v29 = sub_23030EC38();
      (*v72)(v28, v76);
      v30 = sub_23030F8B8();
      v31 = [v29 localizedStringForLanguage:v30 context:3];

      if (v31)
      {
        v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v33 = v32;

        v25 = v33;
        a4 = v26;
        a2 = v73;
LABEL_22:

        goto LABEL_24;
      }

      a4 = v26;
      a2 = v73;
LABEL_24:
      v78 = v27;
      v79 = v25;
      sub_2300A85F0();
      v35 = sub_230310588();

      if (v35 != -1)
      {
        v36 = a4;
        v37 = v74;
        v38 = v74 == a4;
        a4 += 8;
        v39 = v77;
        if (v38)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v37 = *v36;
        goto LABEL_27;
      }

      v36 = a2;
      v37 = v74;
      v38 = v74 == a2;
      a2 += 8;
      v39 = v77;
      if (!v38)
      {
        goto LABEL_26;
      }

LABEL_27:
      a1 = v37 + 8;
      if (a4 >= v82 || a2 >= v39)
      {
        goto LABEL_60;
      }
    }

    v21 = _REMGetLocalizedString();
    v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v15 = v24;
    goto LABEL_16;
  }

  if (a4 != a2 || &a2[8 * v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v82 = &a4[8 * v13];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v72 = (v8 + 8);
    v70 = a4;
    v74 = a1;
LABEL_39:
    v73 = a2;
    v40 = a2 - 8;
    v41 = a3 - 8;
    v42 = v82;
    v71 = v40;
    while (1)
    {
      v77 = v41;
      v44 = *(v42 - 1);
      v42 -= 8;
      v43 = v44;
      v45 = *v40;
      v46 = *(v44 + 24);
      if (v46)
      {
        v47 = *(v43 + 16);

        v48 = v75;
        sub_23030EC88();
        v49 = sub_23030EC38();
        (*v72)(v48, v76);
        v50 = sub_23030F8B8();
        v51 = [v49 localizedStringForLanguage:v50 context:3];

        if (!v51)
        {
          goto LABEL_46;
        }

        v47 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v53 = v52;

        v46 = v53;
      }

      else
      {

        v51 = _REMGetLocalizedString();
        v47 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v46 = v54;
      }

LABEL_46:
      v80 = v47;
      v81 = v46;
      v55 = *(v45 + 24);
      if (v55)
      {
        v56 = *(v45 + 16);

        v57 = v75;
        sub_23030EC88();
        v58 = sub_23030EC38();
        (*v72)(v57, v76);
        v59 = sub_23030F8B8();
        v60 = [v58 localizedStringForLanguage:v59 context:3];

        if (!v60)
        {
          a4 = v70;
          goto LABEL_52;
        }

        v56 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v62 = v61;

        v55 = v62;
        a4 = v70;
      }

      else
      {
        v60 = _REMGetLocalizedString();
        v56 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v55 = v63;
      }

LABEL_52:
      v78 = v56;
      v79 = v55;
      sub_2300A85F0();
      v64 = sub_230310588();

      if (v64 == -1)
      {
        a3 = v77;
        v66 = v74;
        v67 = v71;
        if (v77 + 8 != v73)
        {
          *v77 = *v71;
        }

        if (v82 <= a4 || (a2 = v67, v67 <= v66))
        {
          a2 = v67;
          break;
        }

        goto LABEL_39;
      }

      v65 = v77;
      if (v77 + 8 != v82)
      {
        *v77 = *v42;
      }

      v41 = v65 - 8;
      v82 = v42;
      v40 = v71;
      if (v42 <= a4)
      {
        v82 = v42;
        a2 = v73;
        break;
      }
    }
  }

LABEL_63:
  if (a2 != a4 || a2 >= &a4[(v82 - a4 + (v82 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v82 - a4) / 8));
  }

  return 1;
}

unint64_t sub_23029444C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2303106D8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2300A3B64();
  sub_230294B5C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2302944E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2303106D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2303106D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2301EAD6C(&qword_27DB19048, &qword_27DB19040, &qword_230335230);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19040, &qword_230335230);
            v9 = sub_2300A2F2C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23004CBA4(0, &qword_27DB14808, 0x277D44750);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230294680(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2303106D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2303106D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2301EAD6C(&unk_27DB19030, &qword_27DB19028, &qword_230335228);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19028, &qword_230335228);
            v9 = sub_2300A2FAC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0, &qword_230335220);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23029481C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2303106D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2303106D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2301EAD6C(&unk_27DB19018, &qword_27DB19010, &unk_230335210);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19010, &unk_230335210);
            v9 = sub_2300A2F2C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23004CBA4(0, &qword_280C96D38, off_2788BB370);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2302949BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2303106D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2303106D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2301EAD6C(&unk_27DB19000, &qword_27DB18FF8, &qword_230335208);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18FF8, &qword_230335208);
            v9 = sub_2300A3034(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23004CBA4(0, &qword_27DB175F0, 0x277CCAC30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230294B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2303106D8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2303106D8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2301EAD6C(&unk_27DB18FE8, &qword_27DB18FE0, &qword_2303351F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18FE0, &qword_2303351F8);
            v9 = sub_2300A30B4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for REMGroceryLanguage();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_230294CEC()
{
  result = qword_280C99318;
  if (!qword_280C99318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99318);
  }

  return result;
}

unint64_t sub_230294D40()
{
  result = qword_27DB18F70;
  if (!qword_27DB18F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18F70);
  }

  return result;
}

uint64_t sub_230294D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2303106D8();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_2303106D8();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_230292D10(result, 1);

  return sub_2300AE8C8(v7, v6, 1, v4);
}

unint64_t sub_230294E80()
{
  result = qword_280C99368;
  if (!qword_280C99368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99368);
  }

  return result;
}

unint64_t sub_230294ED4()
{
  result = qword_280C99338;
  if (!qword_280C99338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99338);
  }

  return result;
}

unint64_t sub_230294F28()
{
  result = qword_280C98878;
  if (!qword_280C98878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB18FC0, &qword_230334E80);
    sub_230294FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98878);
  }

  return result;
}

unint64_t sub_230294FB4()
{
  result = qword_280C99340;
  if (!qword_280C99340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99340);
  }

  return result;
}

uint64_t assignWithCopy for REMGroceryModelError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23014FFB8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_2301502A0(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMGroceryModelError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_2301502A0(v4, v5, v6);
  return a1;
}

uint64_t dispatch thunk of REMGroceryModel.predict(_:thresholds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_230295208;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_230295208(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_2302953AC()
{
  result = qword_27DB18FD0;
  if (!qword_27DB18FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18FD0);
  }

  return result;
}

unint64_t sub_230295404()
{
  result = qword_27DB18FD8;
  if (!qword_27DB18FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB18FD8);
  }

  return result;
}

unint64_t sub_23029545C()
{
  result = qword_280C99320;
  if (!qword_280C99320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99320);
  }

  return result;
}

unint64_t sub_2302954B4()
{
  result = qword_280C99328;
  if (!qword_280C99328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99328);
  }

  return result;
}

unint64_t sub_23029550C()
{
  result = qword_280C99350;
  if (!qword_280C99350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99350);
  }

  return result;
}

unint64_t sub_230295564()
{
  result = qword_280C99358;
  if (!qword_280C99358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99358);
  }

  return result;
}

uint64_t sub_2302955B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 26997 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_2302956D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_230295748()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19050);
  v1 = __swift_project_value_buffer(v0, qword_27DB19050);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMStore.fetchSuggestedSectionNamesFromGroceryClassifier(withGroceryLocaleID:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = [v4 daemonController];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = ObjectType;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    swift_retain_n();

    v14 = sub_23030F8B8();
    v25 = sub_230295C18;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2300E5348;
    v24 = &block_descriptor_18;
    v15 = _Block_copy(&aBlock);

    v25 = sub_2300E7CC4;
    v26 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2300E53A8;
    v24 = &block_descriptor_6_1;
    v16 = _Block_copy(&aBlock);

    [v11 asyncStorePerformerWithReason:v14 loadHandler:v15 errorHandler:v16];
    _Block_release(v16);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = sub_23030F8B8();
    v20 = [v17 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v19];

    a3(v20, 1);
  }
}

void sub_230295AF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_23030F8B8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v15[4] = sub_230299718;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_230295EF8;
  v15[3] = &block_descriptor_149;
  v14 = _Block_copy(v15);

  [a1 fetchSuggestedSectionNamesFromGroceryClassifierWithGroceryLocaleID:v12 completion:v14];
  _Block_release(v14);
}

void sub_230295C30(void *a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(id, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v9 = 1;
    v10 = a2;
  }

  else
  {
    v10 = a1;
    if (a1)
    {
      swift_bridgeObjectRetain_n();
      v9 = 0;
    }

    else
    {
      if (qword_27DB13CE0 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB19050);

      v14 = sub_23030EF38();
      v15 = sub_230310298();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        v28 = a7;
        *v16 = 136315394;
        swift_getMetatypeMetadata();
        v18 = sub_23030F948();
        v20 = sub_23004E30C(v18, v19, &v27);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_23004E30C(a3, a4, &v27);
        _os_log_impl(&dword_230044000, v14, v15, "%s#fetchSuggestedSectionNamesFromGroceryClassifier : 'sectionNames' and 'error' were both nil {groceryLocaleID: %s}", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231914180](v17, -1, -1);
        MEMORY[0x231914180](v16, -1, -1);
      }

      v21 = objc_opt_self();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000B5, 0x80000002303461F0);
      MEMORY[0x231911790](a3, a4);
      MEMORY[0x231911790](125, 0xE100000000000000);
      v22 = sub_23030F8B8();

      v10 = [v21 internalErrorWithDebugDescription_];

      v23 = v10;
      v9 = 1;
    }
  }

  v24 = a2;
  v25 = a2;
  a5(v10, v9);
  sub_2300E7B20(v10, v9);
  sub_2300E7B20(v10, v9);
}

uint64_t sub_230295EF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23030FCD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t REMStore.fetchSuggestedSectionNamesFromGroceryClassifier(withGroceryLocaleID:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_230295FB4, 0, 0);
}

uint64_t sub_230295FB4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  *v5 = v0;
  v5[1] = sub_2302960CC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000045, 0x8000000230345DE0, sub_2302963AC, v4, v6);
}

uint64_t sub_2302960CC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2302961E8;
  }

  else
  {

    v2 = sub_230210C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2302961E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23029624C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17D60, &qword_23032B5A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  REMStore.fetchSuggestedSectionNamesFromGroceryClassifier(withGroceryLocaleID:completion:)(a3, a4, sub_230299674, v12);
}

void REMStore.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleIDs:maxSuggestionsCountPerReminderTitle:confidenceScoreThreshold:shouldUseGlobalCorrections:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void (*a7)(id, uint64_t), uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v17 = [v8 daemonController];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 20) = BYTE4(a5) & 1;
    *(v19 + 24) = a3;
    *(v19 + 32) = a4 & 1;
    *(v19 + 40) = a1;
    *(v19 + 48) = a2;
    *(v19 + 56) = a6 & 1;
    *(v19 + 64) = a7;
    *(v19 + 72) = a8;
    *(v19 + 80) = ObjectType;
    v20 = swift_allocObject();
    *(v20 + 16) = a7;
    *(v20 + 24) = a8;
    swift_retain_n();

    v21 = sub_23030F8B8();
    v33 = sub_2302968D0;
    v34 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2300E5348;
    v32 = &block_descriptor_17_0;
    v22 = _Block_copy(&aBlock);

    v33 = sub_2300E7CC4;
    v34 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2300E53A8;
    v32 = &block_descriptor_20_0;
    v23 = _Block_copy(&aBlock);

    [v18 asyncStorePerformerWithReason:v21 loadHandler:v22 errorHandler:v23];
    _Block_release(v23);
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = sub_23030F8B8();
    v27 = [v24 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v26];

    a7(v27, 1);
  }
}

void sub_2302966E0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a2 & 0x100000000) != 0)
  {
    v18 = 0;
    v19 = a9;
    v20 = a10;
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v15 = a2;
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v17) = v15;
  v18 = [v16 initWithFloat_];
  v19 = a9;
  v20 = a10;
  if (a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_6:
  v22 = sub_23030FF18();
  v23 = sub_23030FCC8();
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = a8;
  v24[4] = v19;
  v24[5] = v20;
  aBlock[4] = sub_230299668;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2302997D0;
  aBlock[3] = &block_descriptor_140;
  v25 = _Block_copy(aBlock);

  [a1 fetchSuggestedSectionsForRemindersWithReminderTitles:v22 fromGroceryClassifierWithGroceryLocaleIDs:v23 maxSuggestionsCountPerReminderTitle:v21 confidenceScoreThreshold:v18 shouldUseGlobalCorrections:a7 & 1 completion:v25];

  _Block_release(v25);
}

void sub_230296920(void *a1, id a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = 1;
    v9 = a2;
  }

  else
  {
    v9 = a1;
    if (a1)
    {
      v10 = a1;
      v8 = 0;
    }

    else
    {
      if (qword_27DB13CE0 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB19050);

      v14 = sub_23030EF38();
      v15 = sub_230310298();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v31 = v17;
        v32 = a6;
        *v16 = 136315394;
        swift_getMetatypeMetadata();
        v18 = sub_23030F948();
        v20 = sub_23004E30C(v18, v19, &v31);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = MEMORY[0x231911A60](a3, MEMORY[0x277D837D0]);
        v23 = sub_23004E30C(v21, v22, &v31);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_230044000, v14, v15, "%s#fetchSuggestedSectionsForReminders : 'suggestions' and 'error' were both nil {groceryLocaleIDs: %s}", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231914180](v17, -1, -1);
        MEMORY[0x231914180](v16, -1, -1);
      }

      v24 = objc_opt_self();
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000F4, 0x80000002303460F0);
      v25 = MEMORY[0x231911A60](a3, MEMORY[0x277D837D0]);
      MEMORY[0x231911790](v25);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v26 = sub_23030F8B8();

      v27 = [v24 internalErrorWithDebugDescription_];

      v10 = v27;
      v8 = 1;
      v9 = v27;
    }

    v28 = v10;
  }

  v29 = a2;
  v30 = a2;
  a4(v9, v8);
  sub_230077E1C(v9);
  sub_230077E1C(v9);
}

uint64_t REMStore.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleIDs:maxSuggestionsCountPerReminderTitle:confidenceScoreThreshold:shouldUseGlobalCorrections:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 89) = a6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  return MEMORY[0x2822009F8](sub_230296C40, 0, 0);
}

uint64_t sub_230296C40()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = *(v0 + 24);
  *(v6 + 16) = v1;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4 & 1;
  *(v6 + 52) = v2;
  *(v6 + 56) = BYTE4(v2) & 1;
  *(v6 + 57) = v3;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = sub_23004CBA4(0, &qword_27DB19068, 0x277D44640);
  *v8 = v0;
  v8[1] = sub_230296D8C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD0000000000000B9, 0x8000000230345E60, sub_230297030, v6, v9);
}

uint64_t sub_230296D8C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2300E6C7C;
  }

  else
  {

    v2 = sub_230210C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230296EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, int a8)
{
  v23 = a8;
  v21 = a5;
  v22 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19098, &qword_230335288);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  REMStore.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleIDs:maxSuggestionsCountPerReminderTitle:confidenceScoreThreshold:shouldUseGlobalCorrections:completion:)(a3, a4, v21, a6 & 1, a7 | ((HIDWORD(a7) & 1) << 32), v23, sub_2302995F4, v18);
}

uint64_t sub_230297060(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19098, &qword_230335288);
    return sub_23030FE58();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19098, &qword_230335288);
    return sub_23030FE68();
  }
}

void REMStore.fetchAutoCategorizationLocalCorrectionsOfList(with:completion:)(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v7 = [v3 daemonController];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    swift_retain_n();
    v11 = a1;
    v12 = sub_23030F8B8();
    v23 = sub_23029749C;
    v24 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E5348;
    v22 = &block_descriptor_31_0;
    v13 = _Block_copy(&aBlock);

    v23 = sub_2300E7CC4;
    v24 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E53A8;
    v22 = &block_descriptor_34;
    v14 = _Block_copy(&aBlock);

    [v8 asyncStorePerformerWithReason:v12 loadHandler:v13 errorHandler:v14];
    _Block_release(v14);
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_23030F8B8();
    v18 = [v15 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v17];

    a2(v18, 1);
  }
}

void sub_2302973A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2302995EC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2302997D0;
  v10[3] = &block_descriptor_131;
  v9 = _Block_copy(v10);

  [a1 fetchGroceryLocalCorrectionsOfListWithObjectID:a2 completion:v9];
  _Block_release(v9);
}

void sub_2302974A8(void *a1, id a2, void (*a3)(id, BOOL))
{
  v5 = a2;
  if (!a2)
  {
    v5 = a1;
    v6 = a1;
  }

  v7 = a2;
  v8 = a2;
  a3(v5, a2 != 0);
  sub_230077E1C(v5);

  sub_230077E1C(v5);
}

uint64_t REMStore.fetchGroceryLocalCorrectionsOfList(with:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_230297560, 0, 0);
}

uint64_t sub_230297560()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19070, &qword_230335250);
  *v2 = v0;
  v2[1] = sub_23020DDA4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000029, 0x8000000230345F50, sub_230297A78, v1, v3);
}

uint64_t sub_23029766C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19090, &qword_230335280);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *(v7 + 16);
  v12(&v29 - v10, a1, v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v30, v11, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  v15 = [a2 daemonController];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = sub_2302995C4;
    v17[4] = v14;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_2302995C4;
    *(v18 + 24) = v14;
    swift_retain_n();
    v19 = a3;
    v29 = sub_23030F8B8();
    v35 = sub_230299778;
    v36 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2300E5348;
    v34 = &block_descriptor_122;
    v20 = _Block_copy(&aBlock);

    v35 = sub_2300E7CC4;
    v36 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2300E53A8;
    v34 = &block_descriptor_125;
    v21 = _Block_copy(&aBlock);

    v22 = v29;
    [v16 asyncStorePerformerWithReason:v29 loadHandler:v20 errorHandler:v21];
    _Block_release(v21);
    _Block_release(v20);

    swift_unknownObjectRelease();

    return (*(v7 + 8))(v30, v6);
  }

  else
  {
    v24 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = sub_23030F8B8();
    v27 = [v24 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v26];

    aBlock = v27;
    v28 = v30;
    sub_23030FE58();

    return (*(v7 + 8))(v28, v6);
  }
}

uint64_t sub_230297A80(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19090, &qword_230335280);
    return sub_23030FE58();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19090, &qword_230335280);
    return sub_23030FE68();
  }
}

void REMStore.fetchShouldSuggestConvertToGrocery(for:withGroceryLocaleID:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v11 = [v5 daemonController];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a5;
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;
    swift_retain_n();
    v15 = a1;

    v16 = sub_23030F8B8();
    v27 = sub_230297F10;
    v28 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E5348;
    v26 = &block_descriptor_45;
    v17 = _Block_copy(&aBlock);

    v27 = sub_2300E6EFC;
    v28 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E53A8;
    v26 = &block_descriptor_48;
    v18 = _Block_copy(&aBlock);

    [v12 asyncStorePerformerWithReason:v16 loadHandler:v17 errorHandler:v18];
    _Block_release(v18);
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = sub_23030F8B8();
    v22 = [v19 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v21];

    a4(v22, 1);
  }
}

void sub_230297DDC(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [a2 objectID];
  v10 = sub_23030F8B8();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  v13[4] = sub_2302995BC;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2302956D0;
  v13[3] = &block_descriptor_108;
  v12 = _Block_copy(v13);

  [a1 fetchShouldSuggestConvertToGroceryWithObjectID:v9 usingGroceryClassifierWithGroceryLocaleID:v10 completion:v12];
  _Block_release(v12);
}

void sub_230297F28(char a1, id a2, void (*a3)(id, _BOOL8))
{
  v5 = a2 != 0;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = (a1 & 1);
  }

  v7 = a2;
  v8 = a2;
  a3(v6, v5);
  sub_2300E7C78(v6, v5);

  sub_2300E7C78(v6, v5);
}

uint64_t REMStore.fetchShouldSuggestConvertToGrocery(for:withGroceryLocaleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_230297FD8, 0, 0);
}

uint64_t sub_230297FD8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v7;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2302980EC;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000003CLL, 0x8000000230345FB0, sub_2302986AC, v3, v5);
}

uint64_t sub_2302980EC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_230298224;
  }

  else
  {

    v2 = sub_230298208;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230298224()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_23029828C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19088, &qword_230335278);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = *(v9 + 16);
  v14(&v35 - v12, a1, v8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v37, v13, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  v38 = v8;
  v17(v16 + v15, v13, v8);
  v18 = [a2 daemonController];
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    v21 = v35;
    v22 = v36;
    v20[2] = a3;
    v20[3] = v21;
    v20[4] = v22;
    v20[5] = sub_23029949C;
    v20[6] = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_23029949C;
    *(v23 + 24) = v16;
    swift_retain_n();
    v24 = a3;

    v25 = sub_23030F8B8();
    v43 = sub_2302997CC;
    v44 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2300E5348;
    v42 = &block_descriptor_99;
    v26 = _Block_copy(&aBlock);

    v43 = sub_2300E7CC4;
    v44 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2300E53A8;
    v42 = &block_descriptor_102;
    v27 = _Block_copy(&aBlock);

    [v19 asyncStorePerformerWithReason:v25 loadHandler:v26 errorHandler:v27];
    _Block_release(v27);
    _Block_release(v26);

    swift_unknownObjectRelease();

    return (*(v9 + 8))(v37, v38);
  }

  else
  {
    v29 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = sub_23030F8B8();
    v32 = [v29 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v31];

    aBlock = v32;
    v33 = v37;
    v34 = v38;
    sub_23030FE58();

    return (*(v9 + 8))(v33, v34);
  }
}

uint64_t sub_2302986B8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19088, &qword_230335278);
    return sub_23030FE58();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19088, &qword_230335278);
    return sub_23030FE68();
  }
}

Swift::Void __swiftcall REMStore.requestShouldSuggestConvertToGrocery(for:)(REMList *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [(REMList *)a1 groceryContext];
  if (v4)
  {
    v13 = v4;
    if ((-[REMListGroceryContext shouldCategorizeGroceryItems](v4, sel_shouldCategorizeGroceryItems) & 1) != 0 || (v5 = [v1 daemonController]) == 0)
    {
    }

    else
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      v8 = swift_allocObject();
      *(v8 + 16) = ObjectType;
      v9 = a1;
      v10 = sub_23030F8B8();
      v18 = sub_230298A0C;
      v19 = v7;
      aBlock = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2300E5348;
      v17 = &block_descriptor_59;
      v11 = _Block_copy(&aBlock);

      v18 = sub_230298A14;
      v19 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2300E53A8;
      v17 = &block_descriptor_62;
      v12 = _Block_copy(&aBlock);

      [v6 asyncStorePerformerWithReason:v10 loadHandler:v11 errorHandler:v12];
      _Block_release(v12);
      _Block_release(v11);

      swift_unknownObjectRelease();
    }
  }
}

void sub_23029899C(void *a1, id a2)
{
  v3 = [a2 objectID];
  [a1 requestShouldSuggestConvertToGroceryWithObjectID_];
}

void REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:completion:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = [v3 daemonController];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = ObjectType;

    v12 = sub_23030F8B8();
    v23 = sub_230298E24;
    v24 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E5348;
    v22 = &block_descriptor_71_0;
    v13 = _Block_copy(&aBlock);

    v23 = sub_230299158;
    v24 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E53A8;
    v22 = &block_descriptor_74_0;
    v14 = _Block_copy(&aBlock);

    [v9 asyncStorePerformerWithReason:v12 loadHandler:v13 errorHandler:v14];
    _Block_release(v14);
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278, 0x277D44850);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_23030F8B8();
    v18 = [v15 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v17];

    a2(v18, 1);
  }
}

void sub_230298D10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a2)
  {
    sub_23030ED38();
    v6 = sub_23030FCC8();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_230299494;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_230298ECC;
  v10[3] = &block_descriptor_85;
  v9 = _Block_copy(v10);

  [a1 setOverridingGroceryCategorizationSecondaryGroceryLocales:v6 completion:v9];
  _Block_release(v9);
}

void sub_230298E30(void *a1, id a2, void (*a3)(id, BOOL))
{
  v5 = a2;
  if (!a2)
  {
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }
  }

  v6 = a2;
  v7 = a2;
  a3(v5, a2 != 0);
  sub_2300E7B20(v5, a2 != 0);
  sub_2300E7B20(v5, a2 != 0);
}

uint64_t sub_230298ECC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_23030ED38();
    v4 = sub_23030FCD8();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_230298F60(void *a1, uint64_t a2, char a3, const char *a4, ...)
{
  if (qword_27DB13CE0 != -1)
  {
    swift_once();
  }

  v8 = sub_23030EF48();
  __swift_project_value_buffer(v8, qword_27DB19050);
  v9 = a1;
  oslog = sub_23030EF38();
  v10 = sub_230310298();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    v22[1] = a2;
    *v11 = 136315394;
    swift_getMetatypeMetadata();
    v13 = sub_23030F948();
    v15 = sub_23004E30C(v13, v14, v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = a3;
    *(v11 + 13) = 8;
    swift_getErrorValue();
    v16 = Error.rem_errorDescription.getter(v20, v21);
    v18 = sub_23004E30C(v16, v17, v22);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_230044000, oslog, v10, a4, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v12, -1, -1);
    MEMORY[0x231914180](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2302991A0, 0, 0);
}

uint64_t sub_2302991A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19078, &qword_230335268);
  *v4 = v0;
  v4[1] = sub_23020D304;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003DLL, 0x8000000230346030, sub_2302993F8, v3, v5);
}

uint64_t sub_2302992A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19080, &qword_230335270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  REMStore.setOverridingGroceryCategorizationSecondaryGroceryLocales(_:completion:)(a3, sub_230299480, v10);
}

uint64_t sub_230299400(void *a1, char a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_23030FE58();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_23030FE68();
  }
}

uint64_t sub_2302994C4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_64Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_2302997FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB190B8, &qword_2303352A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23029992C();
  sub_230311448();
  sub_230310DA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23029992C()
{
  result = qword_280C9ADC0[0];
  if (!qword_280C9ADC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9ADC0);
  }

  return result;
}

uint64_t sub_230299980()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t static ClassificationLabel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_230311048();
  }
}

uint64_t sub_2302999F4()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB190A0);
  v1 = __swift_project_value_buffer(v0, qword_27DB190A0);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ClassificationLabel.__allocating_init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ClassificationLabel.init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_230299B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64497373616C63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_230299BA4(uint64_t a1)
{
  v2 = sub_23029992C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230299BE0(uint64_t a1)
{
  v2 = sub_23029992C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClassificationLabel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ClassificationLabel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ClassificationLabel.init(from:)(a1);
  return v2;
}

uint64_t ClassificationLabel.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB190C0, &unk_2303352A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23029992C();
  sub_230311428();
  if (v2)
  {
    type metadata accessor for ClassificationLabel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_230310C98();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9;
    *(v1 + 24) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_230299E34(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_230311048();
  }
}

uint64_t sub_230299E60@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_230299E9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB190B8, &qword_2303352A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23029992C();
  sub_230311448();
  sub_230310DA8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_230299FD4()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_23029A04C(uint64_t a1)
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

void MultiClassificationMetric.init<A>(groundTruth:prediction:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = a1;
  v183 = a3;
  v6 = *a1;
  v7 = sub_2302889D8(a1);
  v193 = a2;
  sub_2302889D8(v7);
  v195 = v5;
  v8 = *(v6 + 80);
  v9 = sub_23030FD28();

  WitnessTable = swift_getWitnessTable();
  OrderedSet.init(_:)(v9, v8, WitnessTable, &v219);
  v12 = v219;
  v11 = v220;
  v14 = type metadata accessor for OrderedSet(0, v8, WitnessTable, v13);
  v15 = OrderedSet.count.getter(v14);
  if (v15 < 0)
  {
    goto LABEL_217;
  }

  v3 = v15;
  v16 = MEMORY[0x277D84F90];
  v17 = 8 * v15;
  v5 = MEMORY[0x277D84F90];
  if (v15)
  {
    v16 = sub_23030FD48();
    *(v16 + 16) = v3;
    bzero((v16 + 32), v17);
  }

  v199 = sub_23029D014(v16, v3);

  if (v3)
  {
    v18 = sub_23030FD48();
    *(v18 + 16) = v3;
    v208 = v18;
    bzero((v18 + 32), v17);
    v5 = sub_23030FD48();
    *(v5 + 16) = v3;
    bzero((v5 + 32), v17);
    v19 = sub_23030FD48();
    *(v19 + 16) = v3;
    v191 = v19;
    bzero((v19 + 32), v17);
    v20 = sub_23030FD48();
    *(v20 + 16) = v3;
    v205 = v20;
    bzero((v20 + 32), v17);
    v21 = sub_23030FD48();
    *(v21 + 16) = v3;
    bzero((v21 + 32), v17);
    v206 = v21;
    v224 = v21;
    v22 = sub_23030FD48();
    *(v22 + 16) = v3;
    bzero((v22 + 32), v17);
    v203 = v22;
    v223 = v22;
    v23 = sub_23030FD48();
    *(v23 + 16) = v3;
    bzero((v23 + 32), v17);
    v202 = v23;
    v222 = v23;
    v24 = sub_23030FD48();
    *(v24 + 16) = v3;
    bzero((v24 + 32), v17);
  }

  else
  {
    v24 = v5;
    v223 = v5;
    v224 = v5;
    v202 = v5;
    v203 = v5;
    v206 = v5;
    v205 = v5;
    v191 = v5;
    v222 = v5;
    v208 = v5;
  }

  v201 = v24;
  v221 = v24;
  if (qword_27DB13CE8 != -1)
  {
    goto LABEL_218;
  }

  while (1)
  {
    v188 = v3;
    v182 = v8;
    v196 = v11;
    v25 = sub_23030EF48();
    v197 = __swift_project_value_buffer(v25, qword_27DB190A0);
    v26 = sub_23030EF38();
    v27 = sub_2303102A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_230044000, v26, v27, "Computing confusion matrix:", v28, 2u);
      MEMORY[0x231914180](v28, -1, -1);
    }

    v189 = v5;

    v29 = *(v195 + 32);
    v30 = *(v195 + 40);
    v31 = *(v29 + 16);
    v200 = v12;
    v204 = v14;
    v207 = v29;
    v198 = v30;
    if (v31)
    {
      v8 = (v29 + 32);
      v194 = (v191 + 32);
      v192 = (v205 + 32);
      v211 = (v208 + 32);

      *&v32 = 136446210;
      v210 = v32;
      v190 = MEMORY[0x277D84F90];
      v209 = MEMORY[0x277D84F90];
      while (1)
      {
        v34 = *v8++;
        v33 = v34;
        sub_2302881D8(v34, &v219);
        v3 = v219;
        sub_2302881D8(v34, &v219);
        v11 = v219;
        v35 = *(v3 + 16) == *(v219 + 16) && *(v3 + 24) == *(v219 + 24);
        if (v35 || (sub_230311048() & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v209 = sub_23007EA48(0, *(v209 + 2) + 1, 1, v209);
          }

          v37 = *(v209 + 2);
          v36 = *(v209 + 3);
          if (v37 >= v36 >> 1)
          {
            v209 = sub_23007EA48((v36 > 1), v37 + 1, 1, v209);
          }

          v38 = v209;
          *(v209 + 2) = v37 + 1;
          *&v38[8 * v37 + 32] = v33;
          v219 = v12;
          v220 = v196;
          v218 = v3;
          v39 = OrderedSet.index(of:)(&v218, v14);
          if (v40)
          {
            v41 = v8;

            v5 = sub_23030EF38();
            v42 = sub_230310288();

            if (!os_log_type_enabled(v5, v42))
            {
              goto LABEL_12;
            }

            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v219 = v44;
            *v43 = v210;
            v45 = *(*v3 + 96);
LABEL_27:
            v46 = v45();
            v48 = sub_23004E30C(v46, v47, &v219);

            *(v43 + 4) = v48;
            v14 = v204;
            v49 = v42;
            v50 = v5;
            v51 = "Multi-Class evaluation unexpected class from prediction {class: %{public}s}";
            goto LABEL_45;
          }

          v52 = v39;
          v53 = v199;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_196;
            }
          }

          else
          {
            v53 = sub_23029CF5C(v199);
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_196;
            }
          }

          if (v52 >= v53[2])
          {
            goto LABEL_197;
          }

          v199 = v53;
          v54 = v53 + 4;
          v55 = v53[v52 + 4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54[v52] = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v55 = sub_23029CE80(v55);
            v54[v52] = v55;
          }

          v12 = v200;
          if (v52 >= *(v55 + 2))
          {
            goto LABEL_198;
          }

          v57 = *&v55[8 * v52 + 32];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_199;
          }

          *&v55[8 * v52 + 32] = v59;

          if (v52 >= *(v208 + 16))
          {
            goto LABEL_200;
          }

          v60 = v211[v52];
          v58 = __OFADD__(v60, 1);
          v61 = (v60 + 1);
          if (v58)
          {
            goto LABEL_201;
          }

          v211[v52] = v61;
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v62 = v190;
          }

          else
          {
            v62 = sub_23007EA48(0, *(v190 + 2) + 1, 1, v190);
          }

          v64 = *(v62 + 2);
          v63 = *(v62 + 3);
          if (v64 >= v63 >> 1)
          {
            v62 = sub_23007EA48((v63 > 1), v64 + 1, 1, v62);
          }

          *(v62 + 2) = v64 + 1;
          v190 = v62;
          *&v62[8 * v64 + 32] = v33;
          v219 = v12;
          v220 = v196;
          v218 = v3;
          v65 = OrderedSet.index(of:)(&v218, v14);
          if (v66)
          {
            v41 = v8;

            v5 = sub_23030EF38();
            v67 = sub_230310288();

            if (os_log_type_enabled(v5, v67))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v219 = v44;
              *v43 = v210;
              v68 = (*(*v3 + 96))();
              v70 = sub_23004E30C(v68, v69, &v219);

              *(v43 + 4) = v70;
              v14 = v204;
              v49 = v67;
              v50 = v5;
              v51 = "Multi-Class evaluation unexpected class from reminder {class: %{public}s}";
LABEL_45:
              _os_log_impl(&dword_230044000, v50, v49, v51, v43, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v44);
              v71 = v44;
              v12 = v200;
              MEMORY[0x231914180](v71, -1, -1);
              MEMORY[0x231914180](v43, -1, -1);

LABEL_13:

              v8 = v41;
              goto LABEL_14;
            }

LABEL_12:

            goto LABEL_13;
          }

          v5 = v65;
          v219 = v12;
          v220 = v196;
          v218 = v11;
          v72 = OrderedSet.index(of:)(&v218, v14);
          if (v73)
          {
            v41 = v8;

            v5 = sub_23030EF38();
            v42 = sub_230310288();

            if (!os_log_type_enabled(v5, v42))
            {
              goto LABEL_12;
            }

            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v219 = v44;
            *v43 = v210;
            v45 = *(v11->isa + 12);
            goto LABEL_27;
          }

          v74 = v72;
          v75 = v199;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_208;
            }
          }

          else
          {
            v75 = sub_23029CF5C(v199);
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_208;
            }
          }

          if (v5 >= v75[2])
          {
            goto LABEL_209;
          }

          v199 = v75;
          v76 = v75 + 4;
          v77 = v75[v5 + 4];
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v76[v5] = v77;
          if ((v78 & 1) == 0)
          {
            v77 = sub_23029CE80(v77);
            v76[v5] = v77;
          }

          v12 = v200;
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_210;
          }

          if (v74 >= *(v77 + 2))
          {
            goto LABEL_211;
          }

          v79 = *&v77[8 * v74 + 32];
          v58 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v58)
          {
            goto LABEL_212;
          }

          *&v77[8 * v74 + 32] = v80;
          if (v74 >= *(v191 + 16))
          {
            goto LABEL_213;
          }

          v81 = v194[v74];
          v58 = __OFADD__(v81, 1);
          v82 = v81 + 1;
          if (v58)
          {
            goto LABEL_214;
          }

          v194[v74] = v82;

          if (v5 >= *(v205 + 16))
          {
            goto LABEL_215;
          }

          isa = v192[v5].isa;
          v58 = __OFADD__(isa, 1);
          v84 = (isa + 1);
          if (v58)
          {
            goto LABEL_216;
          }

          v192[v5].isa = v84;
        }

LABEL_14:
        if (!--v31)
        {
          goto LABEL_69;
        }
      }
    }

    v190 = MEMORY[0x277D84F90];
    v209 = MEMORY[0x277D84F90];
LABEL_69:

    v11 = sub_23030EF38();
    v8 = sub_2303102A8();
    if (!os_log_type_enabled(v11, v8))
    {
      goto LABEL_85;
    }

    v5 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v86 = v85;
    v218 = v85;
    *v5 = 136446210;
    v87 = v199[2];
    v3 = MEMORY[0x277D84F90];
    if (!v87)
    {
      break;
    }

    v185 = v85;
    LODWORD(v186) = v8;
    v187 = v5;
    v192 = v11;
    v217 = MEMORY[0x277D84F90];

    v198 = v87;
    sub_23009EC34(0, v87, 0);
    v88 = 0;
    v3 = v217;
    v194 = v199 + 4;
    while (v88 < v199[2])
    {
      v211 = v88;
      v89 = v194[v88];
      v8 = *(v89 + 16);
      if (v8)
      {
        *&v210 = v3;
        v219 = MEMORY[0x277D84F90];

        sub_23009EC34(0, v8, 0);
        v90 = v219;
        v207 = v89;
        v91 = (v89 + 32);
        do
        {
          v92 = *v91++;
          v216 = v92;
          v93 = sub_230310E58();
          v95 = v94;
          v219 = v90;
          v97 = *(v90 + 16);
          v96 = *(v90 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_23009EC34((v96 > 1), v97 + 1, 1);
            v90 = v219;
          }

          *(v90 + 16) = v97 + 1;
          v98 = v90 + 16 * v97;
          *(v98 + 32) = v93;
          *(v98 + 40) = v95;
          v8 = (v8 - 1);
        }

        while (v8);
        v3 = v210;
      }

      else
      {

        v90 = MEMORY[0x277D84F90];
      }

      v219 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
      sub_2300B0FA8();
      v99 = sub_23030F7C8();
      v101 = v100;

      v219 = 9;
      v220 = 0xE100000000000000;
      MEMORY[0x231911790](v99, v101);

      v11 = v219;
      v102 = v220;
      v217 = v3;
      v5 = *(v3 + 16);
      v103 = *(v3 + 24);
      if (v5 >= v103 >> 1)
      {
        sub_23009EC34((v103 > 1), v5 + 1, 1);
        v3 = v217;
      }

      v88 = v211 + 1;
      *(v3 + 16) = v5 + 1;
      v104 = v3 + 16 * v5;
      *(v104 + 32) = v11;
      *(v104 + 40) = v102;
      v12 = v200;
      v14 = v204;
      if (v88 == v198)
      {

        v11 = v192;
        v5 = v187;
        LOBYTE(v8) = v186;
        v86 = v185;
        goto LABEL_84;
      }
    }

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
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    swift_once();
  }

LABEL_84:
  v219 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  sub_2300B0FA8();
  v105 = sub_23030F7C8();
  v107 = v106;

  v108 = sub_23004E30C(v105, v107, &v218);

  *(v5 + 4) = v108;
  _os_log_impl(&dword_230044000, v11, v8, "%{public}s", v5, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v86);
  MEMORY[0x231914180](v86, -1, -1);
  MEMORY[0x231914180](v5, -1, -1);
LABEL_85:

  v109 = v196;
  v110 = v189;
  v111 = *(v209 + 2);
  v112 = *(v190 + 2);
  v8 = (v111 + v112);
  if (__OFADD__(v111, v112))
  {
    __break(1u);
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v113 = sub_23030EF38();
  v114 = sub_2303102A8();
  if (os_log_type_enabled(v113, v114))
  {
    v11 = swift_slowAlloc();
    LOWORD(v11->isa) = 0;
    _os_log_impl(&dword_230044000, v113, v114, "Per class metrics:", v11, 2u);
    MEMORY[0x231914180](v11, -1, -1);
  }

  if (!v188)
  {
    v157 = 0;
    if (v8)
    {
      v158 = v8;
LABEL_160:
      v159 = 0;
      v160 = *(v209 + 2) / v8;
    }

    else
    {
      v159 = 1;
      v160 = 0.0;
      v158 = 0;
    }

    goto LABEL_163;
  }

  v115 = *(v208 + 16);
  if (v188 > v115)
  {
    goto LABEL_220;
  }

  if (v188 > *(v205 + 16))
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v116 = v191;
  if (v188 > *(v191 + 16))
  {
LABEL_222:
    __break(1u);
    return;
  }

  v211 = (v208 + 32);
  v207 = v205 + 32;
  *&v210 = v191 + 32;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v185 = 0;
  v3 = 0;
  v198 = v110 + 32;
  *&v117 = 136448258;
  v184 = v117;
  v194 = v8;
  v187 = v8;
  do
  {
    if (v3 >= v115)
    {
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
      goto LABEL_190;
    }

    v118 = v211[v3];
    v58 = __OFSUB__(v8, v118);
    v119 = (v8 - v118);
    if (v58)
    {
      goto LABEL_171;
    }

    if (v3 >= *(v205 + 16))
    {
      goto LABEL_172;
    }

    v120 = *(v207 + 8 * v3);
    v58 = __OFSUB__(v119, v120);
    v121 = &v119[-v120];
    if (v58)
    {
      goto LABEL_173;
    }

    if (v3 >= *(v116 + 16))
    {
      goto LABEL_174;
    }

    v122 = *(v210 + 8 * v3);
    v58 = __OFSUB__(v121, v122);
    v123 = &v121[-v122];
    if (v58)
    {
      goto LABEL_175;
    }

    if (v3 >= *(v110 + 16))
    {
      goto LABEL_176;
    }

    *(v198 + 8 * v3) = v123;
    v124 = v211[v3];
    v125 = *(v210 + 8 * v3);
    v58 = __OFADD__(v124, v125);
    v126 = v124 + v125;
    if (v58)
    {
      goto LABEL_177;
    }

    if (v126)
    {
      v127 = v124 / v126;
    }

    else
    {
      v127 = 0.0;
    }

    v11 = v206;
    v5 = v203;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23029CF0C(v206);
    }

    if (v3 >= v11[2].isa)
    {
      goto LABEL_178;
    }

    v128 = v3;
    v14 = &v11[v3];
    *(v14 + 32) = v127;
    v224 = v11;
    v129 = v211[v3];
    v130 = *(v207 + 8 * v3);
    v58 = __OFADD__(v129, v130);
    v131 = v129 + v130;
    if (v58)
    {
      goto LABEL_179;
    }

    if (v131)
    {
      if (v3 >= *(v208 + 16))
      {
        goto LABEL_191;
      }

      if (v3 >= *(v205 + 16))
      {
        goto LABEL_192;
      }

      v132 = v129 / v131;
    }

    else
    {
      v132 = 0.0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_23029CF0C(v5);
    }

    if (v3 >= *(v5 + 16))
    {
      goto LABEL_180;
    }

    v192 = &v11[v3];
    v206 = v11;
    v14 = v5 + v128 * 8;
    *(v5 + v128 * 8 + 32) = v132;
    v203 = v5;
    v223 = v5;
    if (v3 >= *(v110 + 16))
    {
      goto LABEL_181;
    }

    v133 = *(v210 + 8 * v3);
    v134 = *(v198 + 8 * v3);
    v58 = __OFADD__(v133, v134);
    v135 = v133 + v134;
    if (v58)
    {
      goto LABEL_182;
    }

    if (v135)
    {
      v11 = v202;
      if (v3 >= *(v116 + 16))
      {
        goto LABEL_193;
      }

      v136 = v133 / v135;
    }

    else
    {
      v136 = 0.0;
      v11 = v202;
    }

    v137 = v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23029CF0C(v11);
    }

    if (v3 >= v11[2].isa)
    {
      goto LABEL_183;
    }

    v8 = &v11[v128];
    *&v11[v128 + 4].isa = v136;
    v222 = v11;
    v138 = *(v207 + 8 * v3);
    v139 = v211[v3];
    v58 = __OFADD__(v138, v139);
    v140 = v139 + v138;
    if (v58)
    {
      goto LABEL_184;
    }

    if (v140)
    {
      if (v3 >= *(v205 + 16))
      {
        goto LABEL_194;
      }

      if (v3 >= *(v208 + 16))
      {
        goto LABEL_195;
      }

      v141 = v138 / v140;
    }

    else
    {
      v141 = 0.0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_23029CF0C(v137);
    }

    if (v3 >= *(v137 + 2))
    {
      goto LABEL_185;
    }

    v202 = v11;
    *&v137[8 * v3 + 32] = v141;
    v201 = v137;
    v221 = v137;

    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    sub_23008CAE0();
    v142 = sub_23030EF38();
    v5 = sub_2303102A8();

    if (os_log_type_enabled(v142, v5))
    {
      v186 = &v137[8 * v3];
      v143 = v109;
      v144 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v213 = v11;
      *v144 = v184;
      v214 = v12;
      v215 = v143;
      v145 = OrderedSet.subscript.getter(v3, v204);
      v146 = (*(*v212 + 96))(v145);
      v12 = v147;

      v148 = sub_23004E30C(v146, v12, &v213);

      *(v144 + 4) = v148;
      *(v144 + 12) = 1040;
      *(v144 + 14) = 3;
      *(v144 + 18) = 2050;
      if (v3 >= v206[2].isa)
      {
        goto LABEL_202;
      }

      *(v144 + 20) = v192[4];
      *(v144 + 28) = 1040;
      *(v144 + 30) = 3;
      *(v144 + 34) = 2050;
      if (v3 >= *(v203 + 16))
      {
        goto LABEL_203;
      }

      *(v144 + 36) = *(v14 + 32);
      *(v144 + 44) = 1040;
      *(v144 + 46) = 3;
      *(v144 + 50) = 2050;
      if (v3 >= v202[2].isa)
      {
        goto LABEL_204;
      }

      *(v144 + 52) = v8[4];
      *(v144 + 60) = 1040;
      *(v144 + 62) = 3;
      *(v144 + 66) = 2050;
      if (v3 >= *(v201 + 16))
      {
        goto LABEL_205;
      }

      *(v144 + 68) = *(v186 + 4);
      _os_log_impl(&dword_230044000, v142, v5, "Class %{public}s metrics {precision: %{public}.*f, recall: %{public}.*f, type I error: %{public}.*f, type II error: %{public}.*f}", v144, 0x4Cu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x231914180](v11, -1, -1);
      MEMORY[0x231914180](v144, -1, -1);

      v12 = v200;
      v109 = v196;
    }

    else
    {
    }

    v214 = v12;
    v215 = v109;
    v14 = v204;
    v149 = OrderedSet.subscript.getter(v3, v204);
    v11 = (*(v213->isa + 12))(v149);
    v151 = v150;

    v110 = v189;
    v8 = v187;
    if (v11 == 0x296C696E28 && v151 == 0xE500000000000000)
    {
    }

    else
    {
      v152 = sub_230311048();

      if ((v152 & 1) == 0)
      {
        v115 = *(v208 + 16);
        if (v3 >= v115)
        {
          goto LABEL_206;
        }

        v156 = v211[v3];
        v58 = __OFADD__(v185, v156);
        v185 = (v156 + v185);
        v116 = v191;
        if (v58)
        {
          goto LABEL_207;
        }

        goto LABEL_93;
      }
    }

    v115 = *(v208 + 16);
    if (v3 >= v115)
    {
      goto LABEL_186;
    }

    v153 = v211[v3];
    v58 = __OFSUB__(v194, v153);
    v154 = (v194 - v153);
    if (v58)
    {
      goto LABEL_187;
    }

    v116 = v191;
    if (v3 >= *(v191 + 16))
    {
      goto LABEL_188;
    }

    v155 = *(v210 + 8 * v3);
    v194 = &v154[-v155];
    if (__OFSUB__(v154, v155))
    {
      goto LABEL_189;
    }

LABEL_93:
    ++v3;
  }

  while (v188 != v3);
  if (v187)
  {
    v157 = v185;
    v158 = v194;
    goto LABEL_160;
  }

  v159 = 1;
  v160 = 0.0;
  v157 = v185;
  v158 = v194;
LABEL_163:
  v161 = sub_23030EF38();
  v162 = sub_2303102A8();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    *v163 = 134349056;
    *(v163 + 4) = v160;
    _os_log_impl(&dword_230044000, v161, v162, "Accuracy: %{public}f", v163, 0xCu);
    MEMORY[0x231914180](v163, -1, -1);
  }

  v165 = 0.0;
  v166 = 0.0;
  if (v158)
  {
    v166 = v157 / v158;
  }

  v167 = v191;
  if ((v159 & 1) == 0)
  {
    v165 = v158 / v8;
  }

  v211 = &v182;
  v214 = v200;
  v215 = v109;
  MEMORY[0x28223BE20](v164);
  v181[2] = v182;

  v168 = v203;

  v169 = v202;

  v170 = v201;

  v171 = swift_getWitnessTable();
  v172 = v167;
  *&v210 = sub_23006CBDC(sub_23029D0B0, v181, v14, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v171, MEMORY[0x277D84AC0], v173);

  v174 = v209;

  v175 = v190;

  v176 = v205;

  v177 = v199;

  v178 = v208;

  v179 = v183;
  *v183 = v174;
  v179[1] = v175;
  v179[2] = v177;
  v179[3] = v178;
  v179[4] = v110;
  v179[5] = v172;
  v180 = v206;
  v179[6] = v176;
  v179[7] = v180;
  v179[8] = v168;
  v179[9] = v169;
  v179[10] = v170;
  *(v179 + 11) = v160;
  *(v179 + 12) = v166;
  *(v179 + 13) = v165;
  v179[14] = v210;
}

unint64_t sub_23029BCA4(char a1)
{
  result = 0x4974636572726F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F697375666E6F63;
      break;
    case 3:
      result = 0x69736F5065757274;
      break;
    case 4:
      result = 0x6167654E65757274;
      break;
    case 5:
      result = 0x736F5065736C6166;
      break;
    case 6:
      result = 0x67654E65736C6166;
      break;
    case 7:
    case 12:
      result = 0x6F69736963657270;
      break;
    case 8:
      result = 0x736C6C61636572;
      break;
    case 9:
      result = 0x7272454965707974;
      break;
    case 10:
      result = 0x7245494965707974;
      break;
    case 11:
      result = 0x7963617275636361;
      break;
    case 13:
      result = 0x6C6C61636572;
      break;
    case 14:
      result = 0x4364657865646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23029BE88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23029DB84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23029BEBC(uint64_t a1)
{
  v2 = sub_23029D10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23029BEF8(uint64_t a1)
{
  v2 = sub_23029D10C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiClassificationMetric.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB190C8, &qword_2303352B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v29 = v1[2];
  v30 = v7;
  v10 = v1[5];
  v27 = v1[4];
  v28 = v9;
  v11 = v1[7];
  v25 = v1[6];
  v26 = v10;
  v12 = v1[9];
  v23 = v1[8];
  v24 = v11;
  v21 = v1[10];
  v22 = v12;
  v13 = v1[14];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23029D10C();

  sub_230311448();
  v33 = v8;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8, &qword_230315B90);
  sub_230227D10();
  v14 = v6;
  v15 = v31;
  sub_230310DF8();
  if (v15)
  {

    v16 = *(v4 + 8);
    v17 = v6;
  }

  else
  {
    v18 = v29;

    v33 = v30;
    v32 = 1;
    sub_230310DF8();
    v33 = v18;
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176E0, &qword_230328700);
    sub_230227F50(&qword_27DB176E8, sub_230227D10, MEMORY[0x277D83948]);
    sub_230310DF8();
    v33 = v28;
    v32 = 3;
    sub_230310DF8();
    v33 = v27;
    v32 = 4;
    sub_230310DF8();
    v33 = v26;
    v32 = 5;
    sub_230310DF8();
    v33 = v25;
    v32 = 6;
    sub_230310DF8();
    v33 = v24;
    v32 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690, &qword_2303352C0);
    sub_230227C94();
    sub_230310DF8();
    v33 = v23;
    v32 = 8;
    sub_230310DF8();
    v33 = v22;
    v32 = 9;
    sub_230310DF8();
    v33 = v21;
    v32 = 10;
    sub_230310DF8();
    LOBYTE(v33) = 11;
    sub_230310DC8();
    LOBYTE(v33) = 12;
    sub_230310DC8();
    LOBYTE(v33) = 13;
    sub_230310DC8();
    v33 = v13;
    v32 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
    sub_230227AE0();
    sub_230310DF8();
    v16 = *(v4 + 8);
    v17 = v14;
  }

  return v16(v17, v3);
}

uint64_t MultiClassificationMetric.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB190D8, &qword_2303352C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_23029D10C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v41 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8, &qword_230315B90);
  LOBYTE(v43) = 0;
  sub_230227E08();
  sub_230310CE8();
  v40 = v51[0];
  LOBYTE(v43) = 1;
  sub_230310CE8();
  v39 = v51[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176E0, &qword_230328700);
  LOBYTE(v43) = 2;
  sub_230227F50(&qword_27DB17700, sub_230227E08, MEMORY[0x277D83978]);
  v38 = 0;
  sub_230310CE8();
  v37 = v51[0];
  LOBYTE(v43) = 3;
  sub_230310CE8();
  v36 = v51[0];
  LOBYTE(v43) = 4;
  sub_230310CE8();
  v35 = v51[0];
  LOBYTE(v43) = 5;
  sub_230310CE8();
  v34 = v51[0];
  LOBYTE(v43) = 6;
  sub_230310CE8();
  v33 = v51[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690, &qword_2303352C0);
  LOBYTE(v43) = 7;
  sub_230227D8C();
  sub_230310CE8();
  v32 = v51[0];
  LOBYTE(v43) = 8;
  sub_230310CE8();
  v31 = v51[0];
  LOBYTE(v43) = 9;
  sub_230310CE8();
  v30 = v51[0];
  LOBYTE(v43) = 10;
  sub_230310CE8();
  v10 = v51[0];
  LOBYTE(v51[0]) = 11;
  sub_230310CB8();
  v12 = v11;
  LOBYTE(v51[0]) = 12;
  sub_230310CB8();
  v14 = v13;
  LOBYTE(v51[0]) = 13;
  sub_230310CB8();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0, &unk_23031A990);
  v52 = 14;
  sub_230227B5C();
  sub_230310CE8();
  (*(v41 + 8))(v8, v5);
  v17 = v53;
  v18 = v40;
  v19 = v39;
  *&v43 = v40;
  *(&v43 + 1) = v39;
  v21 = v36;
  v20 = v37;
  *&v44 = v37;
  *(&v44 + 1) = v36;
  *&v45 = v35;
  *(&v45 + 1) = v34;
  *&v46 = v33;
  *(&v46 + 1) = v32;
  *&v47 = v31;
  *(&v47 + 1) = v30;
  *&v48 = v10;
  *(&v48 + 1) = v12;
  *&v49 = v14;
  *(&v49 + 1) = v16;
  v50 = v53;
  v22 = v43;
  v23 = v44;
  v24 = v46;
  *(a2 + 32) = v45;
  *(a2 + 48) = v24;
  *a2 = v22;
  *(a2 + 16) = v23;
  v25 = v47;
  v26 = v48;
  v27 = v49;
  *(a2 + 112) = v17;
  *(a2 + 80) = v26;
  *(a2 + 96) = v27;
  *(a2 + 64) = v25;
  sub_23007B300(&v43, v51);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v51[0] = v18;
  v51[1] = v19;
  v51[2] = v20;
  v51[3] = v21;
  v51[4] = v35;
  v51[5] = v34;
  v51[6] = v33;
  v51[7] = v32;
  v51[8] = v31;
  v51[9] = v30;
  v51[10] = v10;
  v51[11] = v12;
  v51[12] = v14;
  v51[13] = v16;
  v51[14] = v17;
  return sub_23007B9D0(v51);
}

uint64_t sub_23029CEA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2303106D8();
  }

  return sub_2303108E8();
}

uint64_t sub_23029CF70(uint64_t result, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_23030FD48();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v4;
    *(v6 + 40) = a3;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 56);
      do
      {
        *(v9 - 1) = v4;
        *v9 = a3;
        v9 += 2;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_23029D014(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8, &qword_230315B90);
    v4 = sub_23030FD48();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_23029D0B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_23029D10C()
{
  result = qword_27DB190D0;
  if (!qword_27DB190D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB190D0);
  }

  return result;
}

uint64_t sub_23029D208(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassificationLabel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t destroy for MultiClassificationMetric()
{
}

uint64_t initializeWithCopy for MultiClassificationMetric(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  return a1;
}

void *assignWithCopy for MultiClassificationMetric(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  a1[14] = a2[14];

  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for MultiClassificationMetric(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for MultiClassificationMetric(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for MultiClassificationMetric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiClassificationMetric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiClassificationMetric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23029D978()
{
  result = qword_27DB190F0;
  if (!qword_27DB190F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB190F0);
  }

  return result;
}

unint64_t sub_23029D9D0()
{
  result = qword_27DB190F8;
  if (!qword_27DB190F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB190F8);
  }

  return result;
}

unint64_t sub_23029DA28()
{
  result = qword_27DB19100;
  if (!qword_27DB19100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19100);
  }

  return result;
}

unint64_t sub_23029DA80()
{
  result = qword_27DB19108;
  if (!qword_27DB19108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19108);
  }

  return result;
}

unint64_t sub_23029DAD8()
{
  result = qword_280C9ADB0;
  if (!qword_280C9ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ADB0);
  }

  return result;
}

unint64_t sub_23029DB30()
{
  result = qword_280C9ADB8;
  if (!qword_280C9ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ADB8);
  }

  return result;
}

uint64_t sub_23029DB84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974636572726F63 && a2 == 0xEE0073656369646ELL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303462E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697375666E6F63 && a2 == 0xEF78697274614D6ELL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69736F5065757274 && a2 == 0xED00007365766974 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6167654E65757274 && a2 == 0xED00007365766974 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736F5065736C6166 && a2 == 0xEE00736576697469 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x67654E65736C6166 && a2 == 0xEE00736576697461 || (sub_230311048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69736963657270 && a2 == 0xEA0000000000736ELL || (sub_230311048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x736C6C61636572 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7272454965707974 && a2 == 0xEB0000000073726FLL || (sub_230311048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7245494965707974 && a2 == 0xEC00000073726F72 || (sub_230311048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7963617275636361 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL || (sub_230311048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6C61636572 && a2 == 0xE600000000000000 || (sub_230311048() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4364657865646E69 && a2 == 0xEE0073657373616CLL)
  {

    return 14;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

id REMCRMergeableStringDocument.replacingInlineHashtagIDs(newHashtagID_byOriginalHashtagID:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 mutableDocument];
  v5 = [v2 attributedString];
  v6 = [v5 length];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v4;
  v12[4] = sub_23029E3D8;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23029E348;
  v12[3] = &block_descriptor_19;
  v8 = _Block_copy(v12);

  v9 = v4;

  [v5 rem:0 enumerateHashtagInRange:v6 options:0 usingBlock:v8];
  _Block_release(v8);
  v10 = [v9 immutableDocument];

  return v10;
}

void sub_23029E1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v19 = a1;
    v10 = [v19 objectIdentifier];
    v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v13 = v12;

    if (*(a5 + 16))
    {
      sub_23005EE00(v11, v13);
      v15 = v14;

      if (v15)
      {
        v16 = objc_allocWithZone(MEMORY[0x277D44880]);

        v17 = sub_23030F8B8();

        v18 = [v16 initWithObjectIdentifier_];

        [a6 removeHashtagInRange_];
        [a6 addHashtag:v18 range:{a2, a3}];
      }
    }

    else
    {
    }
  }
}

void sub_23029E348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = a2;
  v9(a2, a3, a4, a5);
}

uint64_t sub_23029E3E0(uint64_t *a1)
{
  v2 = *(sub_23030E9B8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2302A3894(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23029EBCC(v6);
  *a1 = v3;
  return result;
}

id static NSManagedObjectModel.rem_loadManagedObjectModel(withModelName:versionIdentifier:from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v60 = a3;
  v61 = a4;
  v62 = sub_23030E9B8();
  v8 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = sub_23030F8B8();
  v18 = sub_23030F8B8();
  v19 = [a5 URLForResource:v17 withExtension:v18];

  if (!v19)
  {
    return 0;
  }

  sub_23030E938();

  v20 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v21 = sub_23030E8D8();
  v22 = [v20 initWithURL_];

  if (!v22)
  {
    (*(v8 + 8))(v16, v62);
    return 0;
  }

  v58 = v16;
  v64[0] = a1;
  v64[1] = a2;

  MEMORY[0x231911790](95, 0xE100000000000000);
  v23 = v22;
  v25 = v60;
  v24 = v61;
  MEMORY[0x231911790](v60, v61);
  v26 = sub_23030F8B8();

  v27 = sub_23030F8B8();
  v59 = v23;
  v28 = [v23 URLForResource:v26 withExtension:v27];

  v29 = v62;
  if (v28)
  {
    sub_23030E938();

    v30 = sub_23029EAC4(v14, v25, v24);
    v31 = *(v8 + 8);
    v31(v14, v29);
    if (v30)
    {
      v31(v58, v29);

      return v30;
    }
  }

  v32 = sub_23030F8B8();
  v33 = v59;
  v34 = [v59 URLsForResourcesWithExtension:v32 subdirectory:0];

  if (!v34)
  {
    (*(v8 + 8))(v58, v29);

    return 0;
  }

  v35 = sub_23030FCD8();

  v64[0] = v35;

  sub_23029E3E0(v64);

  v36 = v64[0];
  v54 = *(v64[0] + 16);
  if (v54)
  {
    v37 = 0;
    v56 = v64[0] + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v55 = v8 + 16;
    v57 = (v8 + 8);
    v38 = v60;
    v39 = v54;
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      (*(v8 + 16))(v11, v56 + *(v8 + 72) * v37, v29);
      v41 = objc_allocWithZone(MEMORY[0x277CBE450]);
      v42 = sub_23030E8D8();
      v30 = [v41 initWithContentsOfURL_];

      if (v30)
      {
        v43 = [v30 versionIdentifiers];
        v44 = sub_23030FF38();

        v63[0] = v38;
        v63[1] = v61;

        sub_230310768();
        if (*(v44 + 16))
        {
          v45 = sub_230310748();
          v46 = -1 << *(v44 + 32);
          v47 = v45 & ~v46;
          if ((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (1)
            {
              sub_23008E1C0(*(v44 + 48) + 40 * v47, v63);
              v49 = MEMORY[0x2319124D0](v63, v64);
              sub_23008E21C(v63);
              if (v49)
              {
                break;
              }

              v47 = (v47 + 1) & v48;
              if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            sub_23008E21C(v64);
            v51 = *v57;
            v52 = v62;
            (*v57)(v11, v62);

            v51(v58, v52);
            return v30;
          }

LABEL_10:

          sub_23008E21C(v64);
          v40 = *v57;
          v29 = v62;
          (*v57)(v11, v62);
          v38 = v60;
          v39 = v54;
        }

        else
        {

          sub_23008E21C(v64);
          v40 = *v57;
          v29 = v62;
          (*v57)(v11, v62);
        }
      }

      else
      {
        v40 = *v57;
        (*v57)(v11, v29);
      }

      if (++v37 == v39)
      {

        v30 = 0;
        v40(v58, v29);
        return v30;
      }
    }
  }

  v30 = 0;
  (*(v8 + 8))(v58, v29);
  return v30;
}

id sub_23029EAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v4 = sub_23030E8D8();
  v5 = [v3 initWithContentsOfURL_];

  if (v5)
  {
    v6 = [v5 versionIdentifiers];
    v7 = sub_23030FF38();

    sub_230310768();
    LOBYTE(v6) = sub_2300A5C44(v9, v7);

    sub_23008E21C(v9);
    if ((v6 & 1) == 0)
    {

      return 0;
    }
  }

  return v5;
}

uint64_t sub_23029EBCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_230310E48();
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
        sub_23030E9B8();
        v6 = sub_23030FD48();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23030E9B8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23029F08C(v8, v9, a1, v4);
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
    return sub_23029ECF8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23029ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980, &unk_230316D50);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v42 - v9;
  v10 = sub_23030E9B8();
  v11 = MEMORY[0x28223BE20](v10);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v58 = &v42 - v14;
  result = MEMORY[0x28223BE20](v13);
  v57 = &v42 - v17;
  v44 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v53 = (v19 - 8);
    v54 = v20;
    v55 = v10;
    v56 = v19;
    v50 = (v19 + 16);
    v51 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v49 = -v21;
    v23 = a1 - a3;
    v43 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v47 = v22;
    v48 = a3;
    v45 = v24;
    v46 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v57;
      v27 = v54;
      v54(v57, v24, v10);
      v28 = v58;
      v27(v58, v25, v10);
      v29 = sub_23030E8C8();
      v31 = v30;
      v32 = sub_23030E8C8();
      v61 = v29;
      v62 = v31;
      v59 = v32;
      v60 = v33;
      v34 = sub_23030ED38();
      v35 = v63;
      (*(*(v34 - 8) + 56))(v63, 1, 1, v34);
      sub_2300A85F0();
      v36 = sub_2303105B8();
      v37 = v35;
      v10 = v55;
      sub_2300A8644(v37);

      v38 = *v53;
      (*v53)(v28, v10);
      result = v38(v26, v10);
      if (v36 != 1)
      {
LABEL_4:
        a3 = v48 + 1;
        v22 = v47 + v43;
        v23 = v46 - 1;
        v24 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v39 = *v50;
      v40 = v52;
      (*v50)(v52, v24, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = (v39)(v25, v40, v10);
      v25 += v49;
      v24 += v49;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23029F08C(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980, &unk_230316D50);
  MEMORY[0x28223BE20](v8 - 8);
  v159 = &v135 - v9;
  v161 = sub_23030E9B8();
  v10 = *(v161 - 8);
  v11 = MEMORY[0x28223BE20](v161);
  v140 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v153 = &v135 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v158 = &v135 - v16;
  result = MEMORY[0x28223BE20](v15);
  v160 = &v135 - v18;
  v149 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_2302A36A0(v21);
      v21 = result;
    }

    v166 = v21;
    v130 = *(v21 + 16);
    if (v130 >= 2)
    {
      while (*v149)
      {
        v131 = *(v21 + 16 * v130);
        v132 = v21;
        v133 = *(v21 + 16 * (v130 - 1) + 32);
        v21 = *(v21 + 16 * (v130 - 1) + 40);
        sub_23029FD38(&(*v149)[v10[9] * v131], &(*v149)[v10[9] * v133], &(*v149)[v10[9] * v21], a4);
        if (v5)
        {
        }

        if (v21 < v131)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_2302A36A0(v132);
        }

        if (v130 - 2 >= *(v132 + 2))
        {
          goto LABEL_121;
        }

        v134 = &v132[16 * v130];
        *v134 = v131;
        *(v134 + 1) = v21;
        v166 = v132;
        result = sub_2302A3614(v130 - 1);
        v21 = v166;
        v130 = *(v166 + 16);
        if (v130 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v136 = a4;
  v20 = 0;
  v156 = (v10 + 1);
  v157 = v10 + 2;
  v155 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v148 = v10;
  while (1)
  {
    v22 = v20;
    if (v20 + 1 >= v19)
    {
      v42 = v20 + 1;
    }

    else
    {
      v150 = v19;
      v138 = v21;
      v141 = v5;
      v23 = *v149;
      v154 = v23;
      v24 = v10[9];
      v152 = v24;
      a4 = &v23[v24 * (v20 + 1)];
      v25 = v10[2];
      v26 = v161;
      v25(v160, a4, v161);
      v27 = &v23[v24 * v22];
      v28 = v158;
      v147 = v25;
      v25(v158, v27, v26);
      v29 = sub_23030E8C8();
      v31 = v30;
      v32 = sub_23030E8C8();
      v33 = v22;
      v164 = v29;
      v165 = v31;
      v162 = v32;
      v163 = v34;
      v35 = sub_23030ED38();
      v36 = *(v35 - 8);
      v37 = v159;
      v145 = *(v36 + 56);
      v146 = v35;
      v144 = (v36 + 56);
      v145(v159, 1, 1);
      v143 = sub_2300A85F0();
      v151 = sub_2303105B8();
      sub_2300A8644(v37);

      v38 = v10[1];
      v38(v28, v26);
      v142 = v38;
      result = (v38)(v160, v26);
      v137 = v33;
      v39 = v33 + 2;
      v40 = &v154[v152 * (v33 + 2)];
      v41 = v26;
      while (1)
      {
        v42 = v150;
        if (v150 == v39)
        {
          break;
        }

        LODWORD(v154) = v151 == 1;
        v43 = v160;
        v44 = v147;
        (v147)(v160, v40, v41);
        v45 = v158;
        v44(v158, a4, v41);
        v46 = sub_23030E8C8();
        v48 = v47;
        v49 = sub_23030E8C8();
        v164 = v46;
        v165 = v48;
        v162 = v49;
        v163 = v50;
        v51 = v159;
        (v145)(v159, 1, 1, v146);
        v52 = sub_2303105B8();
        sub_2300A8644(v51);
        v41 = v161;

        v53 = v142;
        v142(v45, v41);
        result = v53(v43, v41);
        v10 = v148;
        ++v39;
        v40 = &v152[v40];
        a4 += v152;
        if (((v154 ^ (v52 != 1)) & 1) == 0)
        {
          v42 = v39 - 1;
          break;
        }
      }

      v5 = v141;
      v21 = v138;
      v22 = v137;
      if (v151 == 1)
      {
        if (v42 < v137)
        {
          goto LABEL_124;
        }

        if (v137 < v42)
        {
          v54 = v42;
          v55 = v152 * (v42 - 1);
          v56 = v42 * v152;
          v150 = v42;
          v57 = v137;
          v58 = v137 * v152;
          do
          {
            if (v57 != --v54)
            {
              v60 = *v149;
              if (!*v149)
              {
                goto LABEL_130;
              }

              v141 = v5;
              a4 = &v60[v58];
              v61 = *v155;
              (*v155)(v140, &v60[v58], v161);
              if (v58 < v55 || a4 >= &v60[v56])
              {
                v59 = v161;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v59 = v161;
                if (v58 != v55)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v61)(&v60[v55], v140, v59);
              v10 = v148;
              v5 = v141;
            }

            ++v57;
            v55 -= v152;
            v56 -= v152;
            v58 += v152;
          }

          while (v57 < v54);
          v21 = v138;
          v22 = v137;
          v42 = v150;
        }
      }
    }

    v62 = v149[1];
    if (v42 < v62)
    {
      if (__OFSUB__(v42, v22))
      {
        goto LABEL_123;
      }

      if (v42 - v22 < v136)
      {
        if (__OFADD__(v22, v136))
        {
          goto LABEL_125;
        }

        if (v22 + v136 >= v62)
        {
          v63 = v149[1];
        }

        else
        {
          v63 = (v22 + v136);
        }

        if (v63 < v22)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v42 != v63)
        {
          break;
        }
      }
    }

    v20 = v42;
    if (v42 < v22)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    a4 = *(v21 + 16);
    v64 = *(v21 + 24);
    v65 = a4 + 1;
    if (a4 >= v64 >> 1)
    {
      result = sub_23007EA34((v64 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v65;
    v66 = v21 + 16 * a4;
    *(v66 + 32) = v22;
    *(v66 + 40) = v20;
    if (!*v139)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v67 = *v139;
      while (1)
      {
        a4 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v21 + 32);
          v69 = *(v21 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_53:
          if (v71)
          {
            goto LABEL_111;
          }

          v84 = (v21 + 16 * v65);
          v86 = *v84;
          v85 = v84[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_114;
          }

          v90 = (v21 + 32 + 16 * a4);
          v92 = *v90;
          v91 = v90[1];
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_118;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a4 = v65 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v94 = (v21 + 16 * v65);
        v96 = *v94;
        v95 = v94[1];
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_67:
        if (v89)
        {
          goto LABEL_113;
        }

        v97 = v21 + 16 * a4;
        v99 = *(v97 + 32);
        v98 = *(v97 + 40);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_116;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_74:
        v105 = a4 - 1;
        if (a4 - 1 >= v65)
        {
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
          goto LABEL_126;
        }

        if (!*v149)
        {
          goto LABEL_129;
        }

        v106 = *(v21 + 32 + 16 * v105);
        v107 = *(v21 + 32 + 16 * a4 + 8);
        sub_23029FD38(&(*v149)[v10[9] * v106], &(*v149)[v10[9] * *(v21 + 32 + 16 * a4)], &(*v149)[v10[9] * v107], v67);
        if (v5)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2302A36A0(v21);
        }

        if (v105 >= *(v21 + 16))
        {
          goto LABEL_108;
        }

        v108 = v21 + 16 * v105;
        *(v108 + 32) = v106;
        *(v108 + 40) = v107;
        v166 = v21;
        result = sub_2302A3614(a4);
        v21 = v166;
        v65 = *(v166 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = v21 + 32 + 16 * v65;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_109;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_110;
      }

      v79 = (v21 + 16 * v65);
      v81 = *v79;
      v80 = v79[1];
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_112;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_115;
      }

      if (v83 >= v75)
      {
        v101 = (v21 + 32 + 16 * a4);
        v103 = *v101;
        v102 = v101[1];
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_119;
        }

        if (v70 < v104)
        {
          a4 = v65 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v19 = v149[1];
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v138 = v21;
  v141 = v5;
  v109 = *v149;
  v110 = v10[9];
  v154 = v10[2];
  v111 = &v109[v110 * (v42 - 1)];
  v151 = -v110;
  v137 = v22;
  v112 = v22 - v42;
  v152 = v109;
  v143 = v110;
  a4 = &v109[v42 * v110];
  v113 = v161;
  v144 = v63;
LABEL_86:
  v150 = v42;
  v145 = a4;
  v146 = v112;
  v147 = v111;
  v114 = v111;
  while (1)
  {
    v115 = v160;
    v116 = v154;
    (v154)(v160, a4, v113);
    v117 = v158;
    (v116)(v158, v114, v113);
    v118 = sub_23030E8C8();
    v120 = v119;
    v121 = sub_23030E8C8();
    v164 = v118;
    v165 = v120;
    v162 = v121;
    v163 = v122;
    v123 = sub_23030ED38();
    v124 = v159;
    (*(*(v123 - 8) + 56))(v159, 1, 1, v123);
    sub_2300A85F0();
    v125 = sub_2303105B8();
    sub_2300A8644(v124);

    v113 = v161;

    v126 = *v156;
    (*v156)(v117, v113);
    result = v126(v115, v113);
    if (v125 != 1)
    {
LABEL_85:
      v42 = v150 + 1;
      v111 = &v147[v143];
      v112 = v146 - 1;
      a4 = v145 + v143;
      v20 = v144;
      if ((v150 + 1) != v144)
      {
        goto LABEL_86;
      }

      v5 = v141;
      v10 = v148;
      v21 = v138;
      v22 = v137;
      if (v144 < v137)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (!v152)
    {
      break;
    }

    v127 = *v155;
    v128 = v153;
    (*v155)(v153, a4, v113);
    swift_arrayInitWithTakeFrontToBack();
    v127(v114, v128, v113);
    v114 += v151;
    a4 += v151;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}