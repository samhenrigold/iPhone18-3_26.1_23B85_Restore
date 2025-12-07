uint64_t sub_25EB11FD4()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_25EB12008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

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

uint64_t sub_25EB120E4(uint64_t a1)
{
  v2 = sub_25EB31E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB12120(uint64_t a1)
{
  v2 = sub_25EB31E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EB1230C()
{
  v1 = [v0 inputs];
  type metadata accessor for PSSGGraphInput(v1);
  v2 = sub_25EB6E3D8();

  v12 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25EB6E5F8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25F8C6D90](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 resource];
      v9 = [v8 session];

      if (v9)
      {
      }

      else
      {
        sub_25EB6E6F8();
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v4;
      if (v7 == i)
      {
        v10 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_18:

  return v10;
}

id sub_25EB124E0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a1;
  a3();

  a5(a4);
  v9 = sub_25EB6E3C8();

  return v9;
}

uint64_t sub_25EB12560()
{
  v1 = [v0 inputs];
  type metadata accessor for PSSGGraphInput(v1);
  v2 = sub_25EB6E3D8();

  v16 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EB6E5F8())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F8C6D90](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 type])
      {
      }

      else
      {
        sub_25EB6E6F8();
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v16;
        v4 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_30:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_25EB6E5F8();
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_19:
  v17 = v4;
  result = sub_25EB6E718();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25F8C6D90](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 resource];

      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v10 != v12);

    return v17;
  }

  return result;
}

void *sub_25EB12868()
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = [v0 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v2 = sub_25EB6E438();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v19 = *(v2 + 32);
    v37 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v4 = MEMORY[0x277D84FA0];
  v41 = MEMORY[0x277D84FA0];
  v2 = sub_25EB6E5B8();
  v5 = sub_25EB6E638();
  if (!v5)
  {
LABEL_20:

    return v4;
  }

  while (1)
  {
    v39 = v5;
    swift_dynamicCast();
    v6 = [v40 session];
    if (!v6)
    {
      break;
    }

LABEL_5:
    v5 = sub_25EB6E638();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v7 = v40;
  v8 = v4[2];
  if (v4[3] <= v8)
  {
    sub_25EB27A90(v8 + 1, &qword_27FD11E00, &unk_25EB79550);
  }

  v4 = v41;
  v9 = sub_25EB6E508();
  v10 = v41 + 56;
  v11 = -1 << *(v41 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  if (((-1 << v12) & ~*(v41 + 56 + 8 * (v12 >> 6))) != 0)
  {
    v14 = __clz(__rbit64((-1 << v12) & ~*(v41 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(v4[6] + 8 * v14) = v7;
    ++v4[2];
    goto LABEL_5;
  }

  v15 = 0;
  v16 = (63 - v11) >> 6;
  while (++v13 != v16 || (v15 & 1) == 0)
  {
    v17 = v13 == v16;
    if (v13 == v16)
    {
      v13 = 0;
    }

    v15 |= v17;
    v18 = *(v10 + 8 * v13);
    if (v18 != -1)
    {
      v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v36 = &v36;
    MEMORY[0x28223BE20](v3);
    v21 = &v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v38 = 0;
    v22 = 0;
    v23 = 1 << *(v2 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v2 + 56);
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_32:
      v30 = v27 | (v22 << 6);
      v31 = *(*(v2 + 48) + 8 * v30);
      v32 = [v31 session];

      if (v32)
      {
      }

      else
      {
        *&v21[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
          return sub_25EB08FC8(v21, v37, v38, v2);
        }
      }
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        return sub_25EB08FC8(v21, v37, v38, v2);
      }

      v29 = *(v2 + 56 + 8 * v22);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_32;
      }
    }
  }

  v35 = swift_slowAlloc();
  v4 = sub_25EB29AC8(v35, v37, v2, sub_25EB12CEC);

  MEMORY[0x25F8C9C00](v35, -1, -1);
  return v4;
}

BOOL sub_25EB12CEC(id *a1)
{
  v1 = [*a1 session];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

id PSSGGraph.init(type:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithType_];
}

{
  *(v1 + OBJC_IVAR___PSSGGraph_inputs) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR___PSSGGraph_outputs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR___PSSGGraph_type) = a1;
  v3.super_class = PSSGGraph;
  return objc_msgSendSuper2(&v3, sel_init);
}

id PSSGGraph.init(type:inputs:outputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  type metadata accessor for PSSGGraphInput(a1);
  v5 = sub_25EB6E3C8();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v6 = sub_25EB6E428();

LABEL_6:
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:a1 inputs:v5 outputs:v6];

  return v7;
}

{
  v4 = OBJC_IVAR___PSSGGraph_inputs;
  v5 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___PSSGGraph_inputs] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR___PSSGGraph_outputs;
  v7 = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___PSSGGraph_outputs] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR___PSSGGraph_type] = a1;
  if (a2)
  {
    v5 = a2;
  }

  *&v3[v4] = v5;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v7;
  }

  *&v3[v6] = v8;

  v10.receiver = v3;
  v10.super_class = PSSGGraph;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_25EB130B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_25EB6E718();
    v6 = (a2 + 64);
    do
    {
      v10 = *v6;
      if (*(v6 - 1))
      {
        v11 = objc_allocWithZone(PSSGResourceID);

        swift_bridgeObjectRetain_n();
        v12 = sub_25EB6E258();
        v8 = sub_25EB6E258();

        v9 = [v11 initLocalWithName:v12 session:v8];
      }

      else
      {
        v7 = objc_allocWithZone(PSSGResourceID);

        v8 = sub_25EB6E258();
        v9 = [v7 initGlobalWithName_];
      }

      v6 += 5;

      [objc_allocWithZone(PSSGGraphInput) initWithResource:v9 type:v10];

      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
      --v5;
    }

    while (v5);
    a1 = v20;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for PSSGGraphInput(v13);
  v14 = sub_25EB6E3C8();

  v16 = sub_25EB0F5A4(v15);

  sub_25EB0CE64(v16);

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v17 = sub_25EB6E428();

  v18 = [v13 initWithType:a1 inputs:v14 outputs:v17];

  return v18;
}

uint64_t PSSGGraph.description.getter()
{
  v1 = v0;
  sub_25EB6E6B8();

  [v0 type];
  v2 = sub_25EB6E968();
  MEMORY[0x25F8C69B0](v2);

  MEMORY[0x25F8C69B0](0x737475706E69202CLL, 0xEA0000000000203ALL);
  v3 = [v0 inputs];
  v4 = type metadata accessor for PSSGGraphInput(v3);
  v5 = sub_25EB6E3D8();

  v6 = MEMORY[0x25F8C6AB0](v5, v4);
  v8 = v7;

  MEMORY[0x25F8C69B0](v6, v8);

  MEMORY[0x25F8C69B0](0x74757074756F202CLL, 0xEB00000000203A73);
  v9 = [v1 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  sub_25EB6E438();

  v10 = sub_25EB6E448();
  v12 = v11;

  MEMORY[0x25F8C69B0](v10, v12);

  MEMORY[0x25F8C69B0](125, 0xE100000000000000);
  return 0x203A657079747BLL;
}

uint64_t sub_25EB135B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 type];
  v5 = [v2 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  sub_25EB6E3D8();

  v6 = [v2 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  sub_25EB6E438();

  v7 = objc_allocWithZone(PSSGGraph);
  v8 = sub_25EB6E3C8();

  v9 = sub_25EB6E428();

  v10 = [v7 initWithType:v4 inputs:v8 outputs:v9];

  result = type metadata accessor for PSSGGraph(v11);
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_25EB13908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12318, &qword_25EB79510);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB313C0();
  sub_25EB6EA78();
  v15 = a2;
  v14 = 0;
  type metadata accessor for PSGraphFrequencyType(0);
  sub_25EB24DC0(&qword_27FD12328, 255, type metadata accessor for PSGraphFrequencyType, &protocol conformance descriptor for PSGraphFrequencyType);
  sub_25EB6E948();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31414();
    sub_25EB6E948();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB314EC();
    sub_25EB6E948();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25EB13B5C()
{
  v1 = *v0;
  sub_25EB6EA28();
  MEMORY[0x25F8C7100](v1);
  return sub_25EB6EA58();
}

uint64_t sub_25EB13BD0(uint64_t a1)
{
  v2 = *v1;
  sub_25EB6EA28();
  MEMORY[0x25F8C7100](v2);
  return sub_25EB6EA58();
}

uint64_t sub_25EB13C14()
{
  v1 = 0x737475706E69;
  if (*v0 != 1)
  {
    v1 = 0x7374757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_25EB13C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25EB2FE64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25EB13C8C(uint64_t a1)
{
  v2 = sub_25EB313C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB13CC8(uint64_t a1)
{
  v2 = sub_25EB313C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25EB13D04@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_25EB2FF78(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_25EB13D54(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_25EB245A8(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB248F8(v3, v2);
}

uint64_t sub_25EB13E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), void *a7)
{
  (a4)(0, a2);
  sub_25EB24DC0(a5, 255, a6, MEMORY[0x277D85378]);
  *(a1 + *a7) = sub_25EB6E438();
}

id PSSGResource.init(producer:consumers:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    v3 = sub_25EB6E428();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProducer:a1 consumers:v3];

  return v4;
}

id PSSGResource.init(producer:consumers:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___PSSGResource_producer;
  *(v2 + OBJC_IVAR___PSSGResource_producer) = 0;
  v4 = OBJC_IVAR___PSSGResource_consumers;
  *(v2 + v3) = a1;
  v5 = MEMORY[0x277D84FA0];
  if (a2)
  {
    v5 = a2;
  }

  *(v2 + v4) = v5;
  v7.super_class = PSSGResource;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_25EB1433C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12358, &qword_25EB79528);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v17 = v1[4];
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_25EB0E880(v6, v7, v8, v9);
  sub_25EB31570();
  sub_25EB6EA78();
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = 0;
  sub_25EB24EE0();
  v14 = v18;
  sub_25EB6E918();
  sub_25EB315C4(v20, v21, v22, v23);
  if (!v14)
  {
    v20 = v17;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB31608();
    sub_25EB6E948();
  }

  return (*(v19 + 8))(v5, v13);
}

uint64_t sub_25EB14520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123A0, &unk_25EB79540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB31570();
  sub_25EB6EA68();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_25EB315C4(0, 0, 0, 0);
  }

  else
  {
    v22 = 0;
    sub_25EB304E8();
    sub_25EB6E8C8();
    v16 = a2;
    v17 = v6;
    v10 = v18;
    v11 = v19;
    v13 = v20;
    v12 = v21;
    sub_25EB315C4(0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12368, &qword_25EB79530);
    v22 = 1;
    sub_25EB317E8();
    sub_25EB6E8F8();
    (*(v17 + 8))(v8, v5);
    v14 = v18;
    v15 = v16;
    *v16 = v10;
    v15[1] = v11;
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v14;
    sub_25EB0E880(v10, v11, v13, v12);

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_25EB315C4(v10, v11, v13, v12);
  }
}

uint64_t sub_25EB147C0()
{
  if (*v0)
  {
    return 0x72656D75736E6F63;
  }

  else
  {
    return 0x72656375646F7270;
  }
}

uint64_t sub_25EB14800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656375646F7270 && a2 == 0xE800000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656D75736E6F63 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

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

uint64_t sub_25EB148F0(uint64_t a1)
{
  v2 = sub_25EB31570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB1492C(uint64_t a1)
{
  v2 = sub_25EB31570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _sSo19PSSGBuilderNodeListC7PolarisE11descriptionSSvg_0()
{
  v1 = (v0 + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description);
  if (*(v0 + OBJC_IVAR___PSSGBuilderNodeList____lazy_storage____description + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_25EB14A18(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_25EB14A18(uint64_t a1)
{
  v1 = sub_25EB6E298();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_25EB6DFB8();
  MEMORY[0x28223BE20](v2 - 8);
  sub_25EB6DFF8();
  swift_allocObject();
  sub_25EB6DFE8();
  sub_25EB6DFA8();
  v3 = sub_25EB6DFC8();
  type metadata accessor for PSSGBuilderNodeList(v3);
  sub_25EB24DC0(&unk_27FD124D0, v4, type metadata accessor for PSSGBuilderNodeList, &protocol conformance descriptor for PSSGBuilderNodeList);
  v5 = sub_25EB6DFD8();
  v7 = v6;
  sub_25EB6E288();
  v8 = sub_25EB6E278();
  v10 = v9;

  sub_25EAFC5CC(v5, v7);
  if (!v10)
  {
    return 0xD000000000000012;
  }

  return v8;
}

id sub_25EB14D84(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  (a4)(0, a2);
  sub_25EB24DC0(a5, 255, a6, MEMORY[0x277D85378]);

  v8 = sub_25EB6E428();

  return v8;
}

id sub_25EB14E3C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_25EB6E258();

  return v5;
}

uint64_t sub_25EB14F70(uint64_t a1)
{
  v2 = sub_25EB24E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB14FAC(uint64_t a1)
{
  v2 = sub_25EB24E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGBuilderNodeList.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12068, &qword_25EB78E48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB24E08();
  sub_25EB6EA78();
  sub_25EB0FEF0(*(v3 + OBJC_IVAR___PSSGBuilderNodeList_graphSet));
  v13 = v9;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12080, &qword_25EB78E50);
  sub_25EB24E5C();
  sub_25EB6E948();

  if (!v2)
  {
    sub_25EB0F894(*(v3 + OBJC_IVAR___PSSGBuilderNodeList_resourceSet));
    v13 = v10;
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120A0, &qword_25EB78E58);
    sub_25EB24F34();
    sub_25EB6E948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PSSGBuilder.Cache.allStrideDependentGraphs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.allDependentGraphsForResourceSet.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.rootResourcesForGraph.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PSSGBuilder.Cache.graphsInTopologicalWaitOrder.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t PSSGBuilder.cache.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___PSSGBuilder_cache);
  swift_beginAccess();
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t PSSGBuilder.cache.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR___PSSGBuilder_cache);
  swift_beginAccess();
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
}

id sub_25EB154C0()
{
  v1 = v0;
  v2 = sub_25EB6E4C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25EB6E4B8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_25EB6E1E8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue;
  v9 = *(v0 + OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue);
  }

  else
  {
    v11 = sub_25EAFCC70(0, &qword_27FD12440, 0x277D85C78);
    v18 = "Duplicate values for key: '";
    v19 = v11;
    sub_25EB6E1D8();
    v20 = MEMORY[0x277D84F90];
    v16[1] = sub_25EB24DC0(&qword_27FD12448, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12450, &unk_25EB795D0);
    v17 = v2;
    sub_25EB31A70(&unk_27FD12458, &qword_27FD12450, &unk_25EB795D0, MEMORY[0x277D83970]);
    sub_25EB6E558();
    (*(v3 + 104))(v5, *MEMORY[0x277D85260], v17);
    v12 = sub_25EB6E4E8();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

char *sub_25EB1587C(uint64_t *a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  v3 = sub_25EB1029C(v2);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11ED8, &qword_25EB78D10);
    v4 = sub_25EB6E898();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v16[0] = v4;

  sub_25EB2E2A0(v5, 1, v16, sub_25EAFD168, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID);

  v6 = v16[0];
  v7 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  *&v1[v7] = v6;

  v9 = sub_25EB105CC(v8);
  swift_bridgeObjectRelease_n();

  if (*(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11ED0, &unk_25EB795A0);
    v10 = sub_25EB6E898();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v15[0] = v10;

  sub_25EB2E2A0(v11, 1, v15, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);

  v12 = v15[0];
  v13 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  *&v1[v13] = v12;

  return v1;
}

Polaris::PSSGBuilderSwift __swiftcall PSSGBuilder.toSwift()()
{
  v2 = v0;
  v3 = v1;

  sub_25EB15AFC(v3, v2);
  result.resources._rawValue = v5;
  result.graphs._rawValue = v4;
  return result;
}

void sub_25EB15AFC(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_25EB0DE14(MEMORY[0x277D84F90]);
  sub_25EB0DF60(v4);
  swift_beginAccess();

  sub_25EB10B34(v5);
  v7 = v6;

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
    v8 = sub_25EB6E898();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v17[0] = v8;

  sub_25EB2E9CC(v9, 1, v17);

  v10 = v17[0];
  swift_beginAccess();

  v12 = sub_25EB10EB8(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
    v13 = sub_25EB6E898();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  v16 = v13;

  sub_25EB2E64C(v14, 1, &v16);

  v15 = v16;
  *a2 = v10;
  a2[1] = v15;
}

uint64_t sub_25EB15CCC@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(PSSGBuilder) init];
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  *&v3[v6] = v5;

  v7 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  *&v3[v9] = v8;

  result = type metadata accessor for PSSGBuilder(v10);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_25EB15DE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_25EB6E978();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void PSSGBuilder.addGraph(with:type:inputs:outputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v9 = sub_25EB0EE68(a1, *&v5[v8], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (v9)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25EB78950;
    v11 = objc_opt_self();
    v12 = [v11 errorDictGraphIDKey];
    v13 = sub_25EB6E268();
    v15 = v14;

    *(inited + 32) = v13;
    *(inited + 40) = v15;
    *(inited + 72) = type metadata accessor for PSSGGraphID(0);
    *(inited + 48) = a1;
    v16 = a1;
    sub_25EB0E0E4(inited);
    swift_setDeallocating();
    sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
    v17 = [v11 errorDomain];
    if (!v17)
    {
      sub_25EB6E268();
      v17 = sub_25EB6E258();
    }

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = sub_25EB6E1F8();

    [v18 initWithDomain:v17 code:-1 userInfo:v19];

    swift_willThrow();
    return;
  }

  v134 = a1;
  v123 = v8;
  v20 = objc_allocWithZone(PSSGGraph);
  type metadata accessor for PSSGGraphInput(v20);

  v21 = sub_25EB6E3C8();

  v22 = type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v124 = v22;
  v23 = sub_25EB6E428();

  v24 = [v20 initWithType:a2 inputs:v21 outputs:v23];

  swift_beginAccess();
  if (v24)
  {
    v25 = *&v5[v123];
    v26 = v134;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (v25 < 0)
      {
        v27 = *&v5[v123];
      }

      else
      {
        v27 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v28 = sub_25EB6E5F8();
      if (__OFADD__(v28, 1))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      *&v5[v123] = sub_25EB29F34(v27, v28 + 1, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID, type metadata accessor for PSSGGraph);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = *&v5[v123];
    sub_25EB2C7FC(v24, v134, isUniquelyReferenced_nonNull_native, sub_25EAFD168, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID);
    *&v5[v123] = v137;
  }

  else
  {
    v26 = v134;
  }

  swift_endAccess();
  swift_beginAccess();
  v30 = sub_25EB0EE68(v26, *&v5[v123], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v30)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v31 = [v30 inputs];

  v32 = sub_25EB6E3D8();
  v33 = v32;
  if (v32 >> 62)
  {
    v34 = sub_25EB6E5F8();
    v33 = v32;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_17:
      if (v34 >= 1)
      {
        v35 = 0;
        v36 = OBJC_IVAR___PSSGBuilder_resources;
        v37 = MEMORY[0x277D84F90];
        v126 = v33 & 0xC000000000000001;
        v128 = v34;
        v129 = v33;
        while (1)
        {
          if (v126)
          {
            v41 = MEMORY[0x25F8C6D90](v35);
          }

          else
          {
            v41 = *(v33 + 8 * v35 + 32);
          }

          v42 = v41;
          v43 = [v41 resource];
          swift_beginAccess();
          v44 = *&v5[v36];
          if ((v44 & 0xC000000000000001) != 0)
          {
            v45 = v43;
            v46 = sub_25EB6E7E8();

            if (!v46)
            {
              goto LABEL_35;
            }

            type metadata accessor for PSSGResource(v47);
            swift_dynamicCast();
            v48 = v137;

            if (v137)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (!*(v44 + 16) || (v49 = sub_25EAFD114(v43), (v50 & 1) == 0))
            {
LABEL_35:

              goto LABEL_36;
            }

            v48 = *(*(v44 + 56) + 8 * v49);

            if (v48)
            {
LABEL_31:
              swift_endAccess();
              v51 = swift_allocObject();
              v51[2] = v48;
              v51[3] = v134;
              v52 = v134;
              v53 = v48;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = sub_25EB069BC(0, v37[2] + 1, 1, v37);
              }

              v55 = v37[2];
              v54 = v37[3];
              v56 = v55 + 1;
              if (v55 >= v54 >> 1)
              {
                v37 = sub_25EB069BC((v54 > 1), v55 + 1, 1, v37);
              }

              v38 = sub_25EB2FAF0;
              goto LABEL_20;
            }
          }

LABEL_36:
          swift_endAccess();
          v51 = swift_allocObject();
          v51[2] = v5;
          v51[3] = v42;
          v51[4] = v134;
          v57 = v134;
          v58 = v5;
          v53 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_25EB069BC(0, v37[2] + 1, 1, v37);
          }

          v55 = v37[2];
          v59 = v37[3];
          v56 = v55 + 1;
          v38 = sub_25EB29CF0;
          if (v55 >= v59 >> 1)
          {
            v37 = sub_25EB069BC((v59 > 1), v55 + 1, 1, v37);
            v38 = sub_25EB29CF0;
          }

LABEL_20:
          v39 = v38;
          ++v35;

          v37[2] = v56;
          v40 = &v37[2 * v55];
          v40[4] = v39;
          v40[5] = v51;
          v33 = v129;
          if (v128 == v35)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_92;
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_42:

  swift_beginAccess();
  v60 = sub_25EB0EE68(v134, *&v5[v123], sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v60)
  {
LABEL_94:
    __break(1u);
    return;
  }

  v61 = [v60 outputs];

  v62 = sub_25EB6E438();
  if ((v62 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v62 = v139;
    v63 = v140;
    v64 = v141;
    v65 = v142;
    v66 = v143;
  }

  else
  {
    v65 = 0;
    v67 = -1 << *(v62 + 32);
    v63 = v62 + 56;
    v64 = ~v67;
    v68 = -v67;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v66 = v69 & *(v62 + 56);
  }

  v70 = (v64 + 64) >> 6;
  v125 = v62;
  for (i = v63; ; v63 = i)
  {
    if (v62 < 0)
    {
      v78 = sub_25EB6E638();
      if (!v78 || (v137 = v78, swift_dynamicCast(), v77 = v138, v76 = v66, !v138))
      {
LABEL_77:
        sub_25EB0EC08(v62);
        v97 = v37[2];
        if (v97)
        {
          v98 = 0;
          v99 = v37 + 5;
          while (v98 < v37[2])
          {
            ++v98;
            v100 = *(v99 - 1);

            v100(v101);

            v99 += 2;
            if (v97 == v98)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_89;
        }

LABEL_81:

        v102 = &v5[OBJC_IVAR___PSSGBuilder_cache];
        swift_beginAccess();
        *v102 = 0u;
        *(v102 + 1) = 0u;

        if (qword_27FD11B20 == -1)
        {
LABEL_82:
          v103 = sub_25EB6E1B8();
          __swift_project_value_buffer(v103, qword_27FD2EED0);
          v104 = v134;
          v105 = v5;
          v106 = sub_25EB6E198();
          v107 = sub_25EB6E488();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v108 = 138412546;
            *(v108 + 4) = v104;
            *v109 = v104;
            *(v108 + 12) = 2112;
            swift_beginAccess();
            v110 = sub_25EB0EE68(v104, *&v5[v123], sub_25EAFD168, type metadata accessor for PSSGGraph);
            swift_endAccess();
            *(v108 + 14) = v110;
            v109[1] = v110;
            _os_log_impl(&dword_25EA3A000, v106, v107, "BUILDER: added %@ with contents %@", v108, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D0, &qword_25EB78E60);
            swift_arrayDestroy();
            MEMORY[0x25F8C9C00](v109, -1, -1);
            MEMORY[0x25F8C9C00](v108, -1, -1);
          }

          return;
        }

LABEL_90:
        swift_once();
        goto LABEL_82;
      }
    }

    else
    {
      v74 = v65;
      v75 = v66;
      if (!v66)
      {
        while (1)
        {
          v65 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v65 >= v70)
          {
            goto LABEL_77;
          }

          v75 = *(v63 + 8 * v65);
          ++v74;
          if (v75)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_57:
      v76 = (v75 - 1) & v75;
      v77 = *(*(v62 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v75)))));
      if (!v77)
      {
        goto LABEL_77;
      }
    }

    v130 = v76;
    v79 = OBJC_IVAR___PSSGBuilder_resources;
    swift_beginAccess();
    v80 = *&v5[v79];
    if ((v80 & 0xC000000000000001) != 0)
    {
      v81 = v77;
      v82 = sub_25EB6E7E8();

      if (!v82)
      {
        goto LABEL_73;
      }

      type metadata accessor for PSSGResource(v83);
      swift_dynamicCast();
      v84 = v137;
      if (!v137)
      {
        goto LABEL_73;
      }
    }

    else if (!*(v80 + 16) || (v85 = sub_25EAFD114(v77), (v86 & 1) == 0) || (v84 = *(*(v80 + 56) + 8 * v85)) == 0)
    {
LABEL_73:
      swift_endAccess();
      v88 = swift_allocObject();
      v88[2] = v5;
      v88[3] = v77;
      v88[4] = v134;
      v94 = v134;
      v95 = v5;
      v90 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_25EB069BC(0, v37[2] + 1, 1, v37);
      }

      v92 = v37[2];
      v96 = v37[3];
      v93 = v92 + 1;
      v71 = sub_25EB29D44;
      if (v92 >= v96 >> 1)
      {
        v37 = sub_25EB069BC((v96 > 1), v92 + 1, 1, v37);
        v71 = sub_25EB29D44;
      }

      goto LABEL_51;
    }

    swift_endAccess();
    v87 = [v84 producer];
    if (v87)
    {
      break;
    }

    v88 = swift_allocObject();
    v88[2] = v84;
    v88[3] = v134;
    v89 = v134;
    v90 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_25EB069BC(0, v37[2] + 1, 1, v37);
    }

    v92 = v37[2];
    v91 = v37[3];
    v93 = v92 + 1;
    if (v92 >= v91 >> 1)
    {
      v37 = sub_25EB069BC((v91 > 1), v92 + 1, 1, v37);
    }

    v71 = sub_25EB29D90;
LABEL_51:
    v72 = v71;

    v37[2] = v93;
    v73 = &v37[2 * v92];
    v73[4] = v72;
    v73[5] = v88;
    v66 = v130;
    v62 = v125;
  }

  v111 = v87;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_25EB78E20;
  v113 = objc_opt_self();
  v114 = [v113 errorDictGraphIDKey];
  v115 = sub_25EB6E268();
  v131 = v116;
  v135 = v115;

  *(v112 + 32) = v135;
  *(v112 + 40) = v131;
  *(v112 + 72) = type metadata accessor for PSSGGraphID(0);
  *(v112 + 48) = v111;
  v136 = v111;
  v117 = [v113 errorDictResourceIDKey];
  v118 = sub_25EB6E268();
  v132 = v119;

  *(v112 + 80) = v118;
  *(v112 + 88) = v132;
  *(v112 + 120) = v124;
  *(v112 + 96) = v77;
  v133 = v77;
  sub_25EB0E0E4(v112);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120E0, &qword_25EB78D20);
  swift_arrayDestroy();
  v120 = [v113 errorDomain];
  if (!v120)
  {
    sub_25EB6E268();
    v120 = sub_25EB6E258();
  }

  v121 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v122 = sub_25EB6E1F8();

  [v121 initWithDomain:v120 code:-3 userInfo:v122];

  swift_willThrow();
  sub_25EB0EC08(v62);
}

void sub_25EB16E28(void *a1, void *a2)
{
  v4 = [a1 consumers];
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  sub_25EB6E438();

  sub_25EB26820(&v6, a2);
  v5 = sub_25EB6E428();

  [a1 setConsumers_];
}

uint64_t sub_25EB16F44(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 resource];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C30, &qword_25EB789A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EB78960;
  *(inited + 32) = a3;
  v7 = a3;
  sub_25EB0E8C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = objc_allocWithZone(PSSGResource);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v9 = sub_25EB6E428();

  v10 = [v8 initWithProducer:0 consumers:v9];

  v11 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  if (!v10)
  {
    v16 = sub_25EB29DA0(v5);

    return swift_endAccess();
  }

  v12 = *(a1 + v11);
  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + v11);
    sub_25EB2C7FC(v10, v5, isUniquelyReferenced_nonNull_native, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);
    *(a1 + v11) = v17;

    return swift_endAccess();
  }

  if (v12 < 0)
  {
    v13 = *(a1 + v11);
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_25EB6E5F8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v11) = sub_25EB29F34(v13, result + 1, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB171AC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_allocWithZone(PSSGResource);
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v7 = sub_25EB6E428();
  v8 = [v6 initWithProducer:a3 consumers:v7];

  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  if (!v8)
  {

    return swift_endAccess();
  }

  v10 = *(a1 + v9);
  if ((v10 & 0xC000000000000001) == 0)
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v9);
    sub_25EB2C7FC(v8, a2, isUniquelyReferenced_nonNull_native, sub_25EAFD114, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID);
    *(a1 + v9) = v14;
    return swift_endAccess();
  }

  if (v10 < 0)
  {
    v11 = *(a1 + v9);
  }

  else
  {
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_25EB6E5F8();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v9) = sub_25EB29F34(v11, result + 1, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_25EB174C8(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v57 = v1;
  v56 = a1;
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD168, type metadata accessor for PSSGGraph);
  swift_endAccess();
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = [v4 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  v6 = sub_25EB6E3D8();

  v54 = v3;
  v55 = v4;
  if (v6 >> 62)
  {
    v7 = sub_25EB6E5F8();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        goto LABEL_49;
      }

      v8 = 0;
      v9 = OBJC_IVAR___PSSGBuilder_resources;
      v10 = v6 & 0xC000000000000001;
      v11 = off_279A49000;
      do
      {
        if (v10)
        {
          v12 = MEMORY[0x25F8C6D90](v8, v6);
        }

        else
        {
          v12 = *(v6 + 8 * v8 + 32);
        }

        v58 = v12;
        v13 = [v12 v11[400]];
        swift_beginAccess();
        v14 = *(v57 + v9);
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = v13;
          v16 = sub_25EB6E7E8();

          if (!v16)
          {
            goto LABEL_6;
          }

          v59 = v16;
          type metadata accessor for PSSGResource(v17);
          swift_dynamicCast();
          v18 = v60;

          if (v60)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (!*(v14 + 16) || (v19 = sub_25EAFD114(v13), (v20 & 1) == 0))
          {
LABEL_6:

            goto LABEL_7;
          }

          v18 = *(*(v14 + 56) + 8 * v19);

          if (v18)
          {
LABEL_19:
            swift_endAccess();
            v21 = [v18 consumers];
            type metadata accessor for PSSGGraphID(0);
            sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
            v22 = v11;
            v23 = v9;
            v24 = v6;
            v25 = v7;
            v26 = v10;
            v27 = sub_25EB6E438();

            v61 = v27;
            v10 = v26;
            v7 = v25;
            v6 = v24;
            v9 = v23;
            v11 = v22;

            v28 = sub_25EB6E428();

            [v18 setConsumers_];

            goto LABEL_8;
          }
        }

LABEL_7:
        swift_endAccess();

LABEL_8:
        ++v8;
      }

      while (v7 != v8);
    }
  }

  v29 = [v55 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v30 = sub_25EB6E438();

  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v30 = v61;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v34 = v65;
  }

  else
  {
    v33 = 0;
    v35 = -1 << *(v30 + 32);
    v31 = v30 + 56;
    v32 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v30 + 56);
  }

  v38 = (v32 + 64) >> 6;
  while (v30 < 0)
  {
    v44 = sub_25EB6E638();
    if (!v44 || (v59 = v44, swift_dynamicCast(), v43 = v60, v41 = v33, v42 = v34, !v60))
    {
LABEL_47:
      sub_25EB0EC08(v30);
      swift_beginAccess();
      v53 = sub_25EB29B58(v56);
      swift_endAccess();

      return;
    }

LABEL_39:
    v45 = OBJC_IVAR___PSSGBuilder_resources;
    swift_beginAccess();
    v46 = *(v57 + v45);
    if ((v46 & 0xC000000000000001) != 0)
    {
      v47 = v43;
      v48 = sub_25EB6E7E8();

      if (!v48)
      {
        goto LABEL_28;
      }

      type metadata accessor for PSSGResource(v49);
      swift_dynamicCast();
      v50 = v59;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    else if (!*(v46 + 16) || (v51 = sub_25EAFD114(v43), (v52 & 1) == 0) || (v50 = *(*(v46 + 56) + 8 * v51)) == 0)
    {
LABEL_28:
      swift_endAccess();
      goto LABEL_29;
    }

    swift_endAccess();
    [v50 setProducer_];

LABEL_29:
    v33 = v41;
    v34 = v42;
  }

  v39 = v33;
  v40 = v34;
  v41 = v33;
  if (v34)
  {
LABEL_35:
    v42 = (v40 - 1) & v40;
    v43 = *(*(v30 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
    if (!v43)
    {
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      goto LABEL_47;
    }

    v40 = *(v31 + 8 * v41);
    ++v39;
    if (v40)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void PSSGBuilder.removeGraph(with:)(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = a1;
    v6 = sub_25EB6E818();

    if ((v6 & 1) == 0)
    {
LABEL_11:
      if (qword_27FD11B20 != -1)
      {
        swift_once();
      }

      v17 = sub_25EB6E1B8();
      __swift_project_value_buffer(v17, qword_27FD2EED0);
      v18 = a1;
      v19 = sub_25EB6E198();
      v20 = sub_25EB6E488();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_25EA3A000, v19, v20, "Failed to remove graph %@: graph not present", v21, 0xCu);
        sub_25EB0D660(v22, &qword_27FD120D0, &qword_25EB78E60);
        MEMORY[0x25F8C9C00](v22, -1, -1);
        MEMORY[0x25F8C9C00](v21, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25EB78950;
      v25 = objc_opt_self();
      v26 = [v25 errorDictGraphIDKey];
      v27 = sub_25EB6E268();
      v29 = v28;

      *(inited + 32) = v27;
      *(inited + 40) = v29;
      *(inited + 72) = type metadata accessor for PSSGGraphID(0);
      *(inited + 48) = v18;
      v30 = v18;
      sub_25EB0E0E4(inited);
      swift_setDeallocating();
      sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
      v31 = [v25 errorDomain];
      if (!v31)
      {
        sub_25EB6E268();
        v31 = sub_25EB6E258();
      }

      v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v33 = sub_25EB6E1F8();

      [v32 initWithDomain:v31 code:-2 userInfo:v33];

      swift_willThrow();
      return;
    }
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_11;
    }

    sub_25EAFD168(a1);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v1 _removeGraphUnsafeWith_];
  v9 = &v1[OBJC_IVAR___PSSGBuilder_cache];
  swift_beginAccess();
  *v9 = 0u;
  *(v9 + 1) = 0u;

  if (qword_27FD11B20 != -1)
  {
    swift_once();
  }

  v10 = sub_25EB6E1B8();
  __swift_project_value_buffer(v10, qword_27FD2EED0);
  v11 = a1;
  v12 = sub_25EB6E198();
  v13 = sub_25EB6E4A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_25EA3A000, v12, v13, "Removed graph %@", v14, 0xCu);
    sub_25EB0D660(v15, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v15, -1, -1);
    MEMORY[0x25F8C9C00](v14, -1, -1);
  }
}

uint64_t PSSGBuilder.removeGraphs(with:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v61 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    sub_25EB6E478();
    v6 = v68;
    v5 = v69;
    v7 = v70;
    v8 = v71;
    v9 = v72;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);
    v8 = 0;
  }

  v62 = v6;
  v63 = v3;
  while (v6 < 0)
  {
    if (!sub_25EB6E638())
    {
      goto LABEL_28;
    }

    type metadata accessor for PSSGGraphID(0);
    swift_dynamicCast();
    v2 = v67;
    v17 = v9;
    if (!v67)
    {
      goto LABEL_28;
    }

LABEL_19:
    v18 = OBJC_IVAR___PSSGBuilder_graphs;
    swift_beginAccess();
    v19 = *&v4[v18];
    if ((v19 & 0xC000000000000001) != 0)
    {

      v13 = v2;
      v14 = sub_25EB6E818();

      v4 = v63;
      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (!*(v19 + 16) || (, sub_25EAFD168(v2), v21 = v20, , (v21 & 1) == 0))
    {
LABEL_22:
      if (qword_27FD11B20 != -1)
      {
        goto LABEL_52;
      }

      goto LABEL_23;
    }

    v9 = v17;
    v6 = v62;
  }

  v15 = v8;
  v16 = v9;
  if (v9)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v2 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v2)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v8 >= ((v7 + 64) >> 6))
    {
      break;
    }

    v16 = *(v5 + 8 * v8);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  sub_25EB0EC08(v6);
  if (v61)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    sub_25EB6E478();
    v40 = v73;
    v41 = v74;
    v42 = v75;
    v43 = v76;
    v44 = v77;
  }

  else
  {
    v45 = -1 << *(a1 + 32);
    v41 = a1 + 56;
    v42 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v44 = v47 & *(a1 + 56);

    v43 = 0;
  }

  v62 = 138412290;
  v65 = v40;
  while (2)
  {
    if (v40 < 0)
    {
      if (!sub_25EB6E638() || (type metadata accessor for PSSGGraphID(0), swift_dynamicCast(), v51 = v67, v2 = v43, v50 = v44, !v67))
      {
LABEL_49:
        sub_25EB0EC08(v65);
        v60 = &v4[OBJC_IVAR___PSSGBuilder_cache];
        swift_beginAccess();
        *v60 = 0u;
        *(v60 + 1) = 0u;
      }

      goto LABEL_45;
    }

    v48 = v43;
    v49 = v44;
    v2 = v43;
    if (v44)
    {
LABEL_41:
      v50 = (v49 - 1) & v49;
      v51 = *(*(v40 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v49)))));
      if (!v51)
      {
        goto LABEL_49;
      }

LABEL_45:
      v66 = v50;
      [v4 _removeGraphUnsafeWith_];
      if (qword_27FD11B20 != -1)
      {
        swift_once();
      }

      v52 = sub_25EB6E1B8();
      __swift_project_value_buffer(v52, qword_27FD2EED0);
      v53 = v51;
      v54 = sub_25EB6E198();
      v55 = sub_25EB6E4A8();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v51;
        v58 = v53;
        _os_log_impl(&dword_25EA3A000, v54, v55, "Removed graph %@", v56, 0xCu);
        sub_25EB0D660(v57, &qword_27FD120D0, &qword_25EB78E60);
        v59 = v57;
        v4 = v63;
        MEMORY[0x25F8C9C00](v59, -1, -1);
        MEMORY[0x25F8C9C00](v56, -1, -1);
        v53 = v54;
        v54 = v58;
      }

      v43 = v2;
      v40 = v65;
      v44 = v66;
      continue;
    }

    break;
  }

  while (1)
  {
    v2 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v2 >= ((v42 + 64) >> 6))
    {
      goto LABEL_49;
    }

    v49 = *(v41 + 8 * v2);
    ++v48;
    if (v49)
    {
      goto LABEL_41;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_23:
  v22 = sub_25EB6E1B8();
  __swift_project_value_buffer(v22, qword_27FD2EED0);
  v23 = v2;
  v24 = sub_25EB6E198();
  v25 = sub_25EB6E488();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v2;
    v28 = v23;
    _os_log_impl(&dword_25EA3A000, v24, v25, "Failed to remove graph %@: graph not present", v26, 0xCu);
    sub_25EB0D660(v27, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v27, -1, -1);
    MEMORY[0x25F8C9C00](v26, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120D8, &unk_25EB78E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25EB78950;
  v30 = objc_opt_self();
  v31 = [v30 errorDictGraphIDKey];
  v32 = sub_25EB6E268();
  v34 = v33;

  *(inited + 32) = v32;
  *(inited + 40) = v34;
  *(inited + 72) = type metadata accessor for PSSGGraphID(0);
  *(inited + 48) = v23;
  v35 = v23;
  sub_25EB0E0E4(inited);
  swift_setDeallocating();
  sub_25EB0D660(inited + 32, &qword_27FD120E0, &qword_25EB78D20);
  v36 = [v30 errorDomain];
  if (!v36)
  {
    sub_25EB6E268();
    v36 = sub_25EB6E258();
  }

  v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v38 = sub_25EB6E1F8();

  [v37 initWithDomain:v36 code:-2 userInfo:v38];

  swift_willThrow();
  return sub_25EB0EC08(v62);
}

void *sub_25EB18A6C(void *a1, uint64_t *a2, uint64_t (*a3)(void *), uint64_t (*a4)(uint64_t))
{
  v8 = *a2;
  swift_beginAccess();
  v9 = sub_25EB0EE68(a1, *(v4 + v8), a3, a4);
  swift_endAccess();
  return v9;
}

id sub_25EB18B1C(char *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void *), uint64_t (*a6)(uint64_t))
{
  v10 = *a4;
  swift_beginAccess();
  v11 = *&a1[v10];
  v12 = a3;
  v13 = a1;
  v14 = sub_25EB0EE68(v12, v11, a5, a6);
  swift_endAccess();

  return v14;
}

void __swiftcall PSSGBuilder.allNodes()(PSSGBuilderNodeList *__return_ptr retstr)
{
  swift_beginAccess();

  sub_25EAFFBF0(v1);
  swift_beginAccess();

  sub_25EAFFC38(v2);
  v3 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  v4 = MEMORY[0x277D85378];
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v5 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, v4);
  v6 = sub_25EB6E428();

  [v3 initWithGraphs:v5 resources:v6];
}

void sub_25EB18D90(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v10 = sub_25EB0EE68(a1, *(v8 + v9), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v10)
  {
    swift_endAccess();
    return;
  }

  v11 = v10;
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v4 + 72);

  v13 = sub_25EB0EF7C(a1, v12, type metadata accessor for PSSGGraphID);

  if ((v13 & 1) != 0 || ((*(v4 + 24))(v11, a2, a3) & 1) == 0 && a2 != 2)
  {

    return;
  }

  swift_beginAccess();
  v38 = a1;
  sub_25EB26820(&v39, v38);
  swift_endAccess();

  v14 = [v11 inputs];
  type metadata accessor for PSSGGraphInput(v14);
  v15 = sub_25EB6E3D8();

  v37 = v11;
  if (v15 >> 62)
  {
    v16 = sub_25EB6E5F8();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = *(v4 + 40);
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x25F8C6D90](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    if (v18())
    {
      v21 = [v20 resource];
      sub_25EB191F0(v21, 0, v38);
    }

    ++v17;
  }

  while (v16 != v17);
LABEL_18:

  v22 = [v37 outputs];
  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
  v23 = sub_25EB6E438();

  if ((v23 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v23 = v40;
    v24 = v41;
    v25 = v42;
    v26 = v43;
    v27 = v44;
  }

  else
  {
    v26 = 0;
    v28 = -1 << *(v23 + 32);
    v24 = v23 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v23 + 56);
  }

  v31 = (v25 + 64) >> 6;
  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_28;
  }

  while (sub_25EB6E638())
  {
    swift_dynamicCast();
    v32 = v39;
    v33 = v26;
    v34 = v27;
    if (!v39)
    {
      break;
    }

    while (1)
    {
      sub_25EB191F0(v32, 1, v38);

      v26 = v33;
      v27 = v34;
      if (v23 < 0)
      {
        break;
      }

LABEL_28:
      v35 = v26;
      v36 = v27;
      v33 = v26;
      if (!v27)
      {
        while (1)
        {
          v33 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v33 >= v31)
          {
            goto LABEL_35;
          }

          v36 = *(v24 + 8 * v33);
          ++v35;
          if (v36)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_32:
      v34 = (v36 - 1) & v36;
      v32 = *(*(v23 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v36)))));
      if (!v32)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_35:
  sub_25EB0EC08(v23);
}

void sub_25EB191F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v10 = sub_25EB0EE68(a1, *(v8 + v9), sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v10)
  {
    v11 = v10;
    swift_endAccess();
    swift_beginAccess();
    v12 = *(v4 + 80);

    v13 = sub_25EB0EF7C(a1, v12, type metadata accessor for PSSGResourceID);

    if ((v13 & 1) == 0 && (((*(v4 + 56))(v11, a2, a3) & 1) != 0 || a2 == 2))
    {
      swift_beginAccess();
      v14 = a1;
      sub_25EB26394(&v34, v14);
      swift_endAccess();

      v15 = [v11 producer];
      if (v15)
      {
        v16 = v15;
        sub_25EB18D90(v15, 0, v14);
      }

      v33 = v14;
      v32 = v11;
      v17 = [v11 consumers];
      type metadata accessor for PSSGGraphID(0);
      sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
      v18 = sub_25EB6E438();

      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_25EB6E5B8();
        sub_25EB6E478();
        v18 = v35;
        v19 = v36;
        v20 = v37;
        v21 = v38;
        v22 = v39;
      }

      else
      {
        v21 = 0;
        v23 = -1 << *(v18 + 32);
        v19 = v18 + 56;
        v20 = ~v23;
        v24 = -v23;
        if (v24 < 64)
        {
          v25 = ~(-1 << v24);
        }

        else
        {
          v25 = -1;
        }

        v22 = v25 & *(v18 + 56);
      }

      v26 = (v20 + 64) >> 6;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      while (sub_25EB6E638())
      {
        swift_dynamicCast();
        v27 = v34;
        v28 = v21;
        v29 = v22;
        if (!v34)
        {
          break;
        }

        while (1)
        {
          sub_25EB18D90(v27, 1, v33);

          v21 = v28;
          v22 = v29;
          if (v18 < 0)
          {
            break;
          }

LABEL_19:
          v30 = v21;
          v31 = v22;
          v28 = v21;
          if (!v22)
          {
            while (1)
            {
              v28 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                break;
              }

              if (v28 >= v26)
              {
                goto LABEL_26;
              }

              v31 = *(v19 + 8 * v28);
              ++v30;
              if (v31)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            return;
          }

LABEL_23:
          v29 = (v31 - 1) & v31;
          v27 = *(*(v18 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v31)))));
          if (!v27)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_26:
      sub_25EB0EC08(v18);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

id sub_25EB1958C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0E8C4(MEMORY[0x277D84F90]);
    v5 = v15;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 72) = v5;

  if (v4 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 80) = v7;

  sub_25EB18D90(a1, 2, 0);
  swift_beginAccess();
  v8 = sub_25EB09E84(a1);
  swift_endAccess();

  v9 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  v10 = MEMORY[0x277D85378];
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);

  v11 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, v10);
  v12 = sub_25EB6E428();

  v13 = [v9 initWithGraphs:v11 resources:v12];

  return v13;
}

id sub_25EB197BC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0E8C4(MEMORY[0x277D84F90]);
    v5 = v15;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 72) = v5;

  if (v4 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  swift_beginAccess();
  *(v2 + 80) = v7;

  sub_25EB191F0(a1, 2, 0);
  swift_beginAccess();
  v8 = sub_25EB0A044(a1);
  swift_endAccess();

  v9 = objc_allocWithZone(PSSGBuilderNodeList);
  type metadata accessor for PSSGGraphID(0);
  v10 = MEMORY[0x277D85378];
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);

  v11 = sub_25EB6E428();

  type metadata accessor for PSSGResourceID(0);
  sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, v10);
  v12 = sub_25EB6E428();

  v13 = [v9 initWithGraphs:v11 resources:v12];

  return v13;
}

uint64_t sub_25EB199EC()
{

  return swift_deallocClassInstance();
}

id PSSGBuilder.nodes(for:graphCond:graphInputCond:resourceCond:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s11QueryHelperCMa();
  v15 = swift_allocObject();
  v16 = v15;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      v30 = v7;
      sub_25EB2FB1C(a2, a3);
      sub_25EB2FB1C(a4, a5);
      sub_25EB2FB1C(a6, a7);
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
      v16[9] = v31;
    }

    else
    {
      v16[9] = MEMORY[0x277D84FA0];
      v32 = v7;
      sub_25EB2FB1C(a2, a3);
      sub_25EB2FB1C(a4, a5);
      sub_25EB2FB1C(a6, a7);
    }

    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
      v17 = v33;
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    *(v15 + 72) = MEMORY[0x277D84FA0];
    v18 = v7;
    sub_25EB2FB1C(a2, a3);
    sub_25EB2FB1C(a4, a5);
    sub_25EB2FB1C(a6, a7);
  }

  v16[10] = v17;
  v16[2] = v7;
  if (a2)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = sub_25EB3214C;
  }

  else
  {
    v20 = sub_25EB321B0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v16[3] = sub_25EB320E4;
  v16[4] = v21;
  if (a4)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v23 = sub_25EB2FB70;
  }

  else
  {
    v23 = sub_25EB18D84;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v16[5] = sub_25EB2FB64;
  v16[6] = v24;
  if (a6)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;
    v26 = sub_25EB2FB6C;
  }

  else
  {
    v26 = sub_25EB321B0;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v16[7] = sub_25EB2FB68;
  v16[8] = v27;
  v28 = sub_25EB1958C(a1);

  return v28;
}

{
  _s11QueryHelperCMa();
  v15 = swift_allocObject();
  v16 = v15;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      v30 = v7;
      sub_25EB2FB1C(a2, a3);
      sub_25EB2FB1C(a4, a5);
      sub_25EB2FB1C(a6, a7);
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
      v16[9] = v31;
    }

    else
    {
      v16[9] = MEMORY[0x277D84FA0];
      v32 = v7;
      sub_25EB2FB1C(a2, a3);
      sub_25EB2FB1C(a4, a5);
      sub_25EB2FB1C(a6, a7);
    }

    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
      v17 = v33;
    }

    else
    {
      v17 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
    *(v15 + 72) = MEMORY[0x277D84FA0];
    v18 = v7;
    sub_25EB2FB1C(a2, a3);
    sub_25EB2FB1C(a4, a5);
    sub_25EB2FB1C(a6, a7);
  }

  v16[10] = v17;
  v16[2] = v7;
  if (a2)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = sub_25EB3214C;
  }

  else
  {
    v20 = sub_25EB321B0;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v16[3] = sub_25EB320E4;
  v16[4] = v21;
  if (a4)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    v23 = sub_25EB321A0;
  }

  else
  {
    v23 = sub_25EB18D84;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v16[5] = sub_25EB32194;
  v16[6] = v24;
  if (a6)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;
    v26 = sub_25EB3214C;
  }

  else
  {
    v26 = sub_25EB321B0;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v16[7] = sub_25EB320E4;
  v16[8] = v27;
  v28 = sub_25EB197BC(a1);

  return v28;
}

Swift::String_optional __swiftcall PSSGBuilder.dumpStateSync()()
{
  v1 = v0;
  v2 = sub_25EB6E298();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25EB6DFB8();
  MEMORY[0x28223BE20](v3);
  sub_25EB6DFF8();
  swift_allocObject();
  sub_25EB6DFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120E8, &qword_25EB78E78);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25EB78950;
  sub_25EB6DFA8();
  *&v14 = v4;
  sub_25EB24DC0(&qword_27FD120F0, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD120F8, &qword_25EB78E80);
  sub_25EB31A70(&qword_27FD12100, &qword_27FD120F8, &qword_25EB78E80, MEMORY[0x277D83970]);
  sub_25EB6E558();
  sub_25EB6DFC8();
  sub_25EB15AFC(v1, &v14);
  sub_25EB30200();
  v5 = sub_25EB6DFD8();
  v7 = v6;

  sub_25EB6E288();
  v8 = sub_25EB6E278();
  v10 = v9;
  sub_25EAFC5CC(v5, v7);

  v11 = v10;
  v12 = v8;
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t PSSGBuilder.dumpStateAsync(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25EB6E1C8();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25EB6E1E8();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 deepCopy];
  v17 = sub_25EB154C0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v11;
  aBlock[4] = sub_25EB30294;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25EB1AAEC;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  v14 = v11;
  sub_25EB6E1D8();
  v20 = MEMORY[0x277D84F90];
  sub_25EB24DC0(&qword_27FD12110, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12118, &qword_25EB78E88);
  sub_25EB31A70(&qword_27FD12120, &qword_27FD12118, &qword_25EB78E88, MEMORY[0x277D83970]);
  sub_25EB6E558();
  v15 = v17;
  MEMORY[0x25F8C6BA0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

uint64_t sub_25EB1AA58(void (*a1)(uint64_t, uint64_t), int a2, id a3)
{
  v4 = [a3 dumpStateSync];
  if (v4)
  {
    v5 = v4;
    v6 = sub_25EB6E268();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  a1(v6, v8);
}

uint64_t sub_25EB1AAEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25EB1ABBC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_25EB6E258();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void __swiftcall PSSGBuilder.deepCopy()(PSSGBuilder *__return_ptr retstr)
{
  v2 = [objc_allocWithZone(PSSGBuilder) init];
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  *&v2[v5] = v4;

  v6 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  *&v2[v8] = v7;
}

id PSSGBuilder.init()()
{
  v1 = OBJC_IVAR___PSSGBuilder_graphs;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_25EB0E214(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___PSSGBuilder_resources;
  *&v0[v3] = sub_25EB0E23C(v2);
  v4 = &v0[OBJC_IVAR___PSSGBuilder_cache];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v0[OBJC_IVAR___PSSGBuilder____lazy_storage___asyncWorkQueue] = 0;
  v6.receiver = v0;
  v6.super_class = PSSGBuilder;
  return objc_msgSendSuper2(&v6, sel_init);
}

void __swiftcall PSSGBuilderSwift.toObjC()(PSSGBuilder *__return_ptr retstr)
{
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for PSSGBuilder(v1);
  v5[0] = v3;
  v5[1] = v4;

  sub_25EB1587C(v5);
}

uint64_t static PSSGBuilderSwift.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_25EB1AF54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB1B254(v2, v3);
}

uint64_t sub_25EB1AF54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v39 = result + 64;
  v40 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v38 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v9 = (v7 - 1) & v7;
LABEL_13:
    v12 = v8 | (v4 << 6);
    v13 = (*(v3 + 48) + 32 * v12);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = (*(v3 + 56) + 24 * v12);
    v19 = v18[1];
    v45 = *v18;
    v20 = v18[2];
    v43 = v14 == 0;

    v44 = v20;

    if (!v14)
    {
      return 1;
    }

    v21 = sub_25EAFCB44(v15, v14, v17, v16);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_42;
    }

    v24 = (*(v2 + 56) + 24 * v21);
    result = v24[1];
    if (*v24 != v45 || (v42 = v9, v25 = *(result + 16), v25 != *(v19 + 16)))
    {
LABEL_41:

LABEL_42:

      return 0;
    }

    if (v25)
    {
      v26 = result == v19;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v29 = (v19 + 64);
      v30 = (result + 64);
      while (v25)
      {
        result = *(v30 - 4);
        v32 = *(v30 - 2);
        v31 = *(v30 - 1);
        v33 = *v30;
        v34 = *(v29 - 2);
        v35 = *(v29 - 1);
        v36 = *v29;
        if (result != *(v29 - 4) || *(v30 - 3) != *(v29 - 3))
        {
          result = sub_25EB6E988();
          if ((result & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v31)
        {
          if (!v35)
          {
            goto LABEL_41;
          }

          if (v32 != v34 || v31 != v35)
          {
            result = sub_25EB6E988();
            if ((result & 1) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else if (v35)
        {
          goto LABEL_41;
        }

        if (v33 != v36)
        {
          goto LABEL_41;
        }

        v30 += 5;
        v29 += 5;
        if (!--v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_46;
    }

LABEL_22:

    v28 = sub_25EB248F8(v27, v44);

    v3 = v40;
    v2 = a2;
    v7 = v42;
    result = v43;
    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v38)
    {
      return 1;
    }

    v11 = *(v39 + 8 * v4);
    ++v10;
    if (v11)
    {
      v8 = __clz(__rbit64(v11));
      v9 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25EB1B254(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v62 = result + 64;
  v63 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v61 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v67 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = (*(result + 48) + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    v15 = (*(result + 56) + 40 * v9);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];

    v72 = v16;
    v21 = v16;
    v69 = v17;
    v22 = v18;
    v23 = v18;
    v24 = v19;
    sub_25EB0E880(v21, v17, v23, v19);
    v25 = v12 == 0;
    v68 = v20;

    if (!v12)
    {
      return v25;
    }

    v26 = sub_25EAFCA88(v11, v12, v14, v13);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v35 = v24;
      v36 = v22;
LABEL_42:
      sub_25EB315C4(v72, v17, v36, v35);

      return 0;
    }

    v29 = (*(a2 + 56) + 40 * v26);
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    v34 = v29[4];
    v35 = v24;
    v36 = v22;
    v37 = v30;
    v66 = v25;
    v70 = v33;
    v71 = v36;
    v65 = v35;
    if (v30)
    {
      if (!v17)
      {
        v39 = v29[2];
        sub_25EB0E880(v31, v30, v32, v33);

        sub_25EB0E880(v31, v37, v39, v33);
        sub_25EB0E880(v72, 0, v36, v35);
        sub_25EB0E880(v31, v37, v39, v33);

LABEL_38:
        sub_25EB315C4(v31, v37, v39, v33);
        sub_25EB315C4(v72, v17, v36, v35);
LABEL_41:
        sub_25EB315C4(v31, v37, v39, v70);

        goto LABEL_42;
      }

      if (v31 != v72 || v30 != v17)
      {
        v39 = v29[2];
        v40 = sub_25EB6E988();
        v32 = v39;
        if ((v40 & 1) == 0)
        {
          v59 = v33;
          sub_25EB0E880(v31, v37, v39, v33);

          sub_25EB0E880(v31, v37, v39, v33);
          sub_25EB0E880(v72, v17, v36, v35);
          v46 = v37;
          v47 = v31;
          sub_25EB0E880(v31, v46, v39, v59);
          sub_25EB315C4(v72, v17, v36, v35);
LABEL_40:

          v31 = v47;
          sub_25EB315C4(v47, v46, v39, v70);
          v37 = v46;
          goto LABEL_41;
        }
      }

      if (v32 == v36 && v33 == v35)
      {
        v39 = v32;
        sub_25EB0E880(v31, v37, v36, v35);

        sub_25EB0E880(v31, v37, v36, v35);
        sub_25EB0E880(v72, v17, v36, v35);
        v46 = v37;
        v47 = v31;
        sub_25EB0E880(v31, v46, v36, v35);
        sub_25EB315C4(v72, v17, v36, v35);
        v43 = v34;
      }

      else
      {
        v42 = v31;
        v43 = v34;
        v44 = v32;
        v45 = v33;
        v60 = sub_25EB6E988();
        sub_25EB0E880(v42, v37, v44, v33);

        sub_25EB0E880(v42, v37, v44, v33);
        sub_25EB0E880(v72, v17, v71, v35);
        v46 = v37;
        v47 = v42;
        v48 = v42;
        v39 = v44;
        v49 = v44;
        v36 = v71;
        sub_25EB0E880(v48, v46, v49, v45);
        sub_25EB315C4(v72, v17, v71, v35);
        if ((v60 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v54 = v17;
      v56 = v43;

      v57 = v46;
      v52 = v72;
    }

    else
    {
      v50 = v35;
      v51 = v29[2];
      sub_25EB0E880(v31, 0, v32, v33);

      v39 = v51;
      sub_25EB0E880(v31, 0, v51, v33);
      v52 = v72;
      v53 = v34;
      v54 = v69;
      if (v69)
      {
        sub_25EB0E880(v72, v69, v36, v50);
        v37 = 0;
        v17 = v69;
        v35 = v50;
        goto LABEL_38;
      }

      v47 = v31;
      v55 = v36;
      v56 = v53;
      sub_25EB0E880(v72, 0, v55, v50);
      v57 = 0;
      v46 = 0;
    }

    sub_25EB315C4(v47, v57, v39, v70);
    v58 = sub_25EB246BC(v56, v68);
    sub_25EB315C4(v47, v46, v39, v70);

    sub_25EB315C4(v52, v54, v71, v65);

    result = v63;
    v5 = v67;
    v25 = v66;
    if ((v58 & 1) == 0)
    {
      return v25;
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v61)
    {
      return 1;
    }

    v8 = *(v62 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v67 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB1B884()
{
  if (*v0)
  {
    return 0x656372756F736572;
  }

  else
  {
    return 0x736870617267;
  }
}

uint64_t sub_25EB1B8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736870617267 && a2 == 0xE600000000000000;
  if (v6 || (sub_25EB6E988() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25EB6E988();

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

uint64_t sub_25EB1B9A4(uint64_t a1)
{
  v2 = sub_25EB302CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25EB1B9E0(uint64_t a1)
{
  v2 = sub_25EB302CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PSSGBuilderSwift.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12130, &qword_25EB78E90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB302CC();

  sub_25EB6EA78();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12140, &qword_25EB78E98);
  sub_25EB30458(&qword_27FD12148, sub_25EB24EE0, sub_25EB30320, MEMORY[0x277D83508]);
  sub_25EB6E948();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12158, &qword_25EB78EA0);
    sub_25EB30374(&qword_27FD12160, sub_25EB24FB8, sub_25EB30404, MEMORY[0x277D83508]);
    sub_25EB6E948();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PSSGBuilderSwift.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12170, &qword_25EB78EA8);
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  sub_25EB0DE14(MEMORY[0x277D84F90]);
  v16 = sub_25EB0DF60(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB302CC();
  sub_25EB6EA68();
  if (!v2)
  {
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12140, &qword_25EB78E98);
    v17 = 0;
    sub_25EB30458(&qword_27FD12178, sub_25EB304E8, sub_25EB3053C, MEMORY[0x277D83528]);
    v10 = v15;
    sub_25EB6E8F8();

    v11 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12158, &qword_25EB78EA0);
    v17 = 1;
    sub_25EB30374(&qword_27FD12190, sub_25EB30590, sub_25EB305E4, MEMORY[0x277D83528]);
    sub_25EB6E8F8();
    (*(v9 + 8))(v7, v10);

    v13 = v18;
    *a2 = v11;
    a2[1] = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_25EB1BF98(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_25EB1AF54(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25EB1B254(v2, v3);
}

void __swiftcall PSSGBuilder.init(fromGraphsJsonAtPath:)(PSSGBuilder_optional *__return_ptr retstr, Swift::String fromGraphsJsonAtPath)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25EB6E258();

  [v2 initFromGraphsJsonAtPath_];
}

id PSSGBuilder.init(fromGraphsJsonAtPath:)(uint64_t a1, uint64_t a2)
{
  v310 = *MEMORY[0x277D85DE8];
  v3 = sub_25EB6E098();
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v269 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 init];
  sub_25EB6E068();

  v9 = sub_25EB6E0A8();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = sub_25EB6E0B8();
  v305 = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:&v305];

  if (!v14)
  {
    v265 = v305;
    v266 = sub_25EB6E048();

    swift_willThrow();
    sub_25EAFC5CC(v9, v11);

LABEL_2:
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v15 = v305;
  sub_25EB6E548();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121A8, &qword_25EB78EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_226:
    (*(v4 + 8))(v6, v3);
    sub_25EAFC5CC(v9, v11);

    return 0;
  }

  v16 = v302;
  if (!v302[2] || (v17 = sub_25EAFCBE4(0x736E6F6973736573, 0xE800000000000000), (v18 & 1) == 0))
  {
    sub_25EAFC5CC(v9, v11);

    goto LABEL_2;
  }

  v19 = *(v16[7] + 8 * v17);
  swift_unknownObjectRetain();

  v305 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121B0, &qword_25EB78EB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_226;
  }

  v288 = v20;
  v282 = 0;
  v290 = v9;
  v291 = v11;
  v292 = v7;
  v21 = v302;
  v22 = sub_25EB0E35C(MEMORY[0x277D84F90]);
  v23 = v22;
  v24 = v21[2];
  if (!v24)
  {
    goto LABEL_224;
  }

  v25 = 0;
  v26 = v21 + 4;
  v27 = v22;
  v289 = v6;
  v281 = v24;
  v280 = v21 + 4;
  while (1)
  {
    if (v25 >= v21[2])
    {
      __break(1u);
LABEL_252:
      (*(v4 + 8))(v6, v3);
      sub_25EAFC5CC(v290, v291);

      goto LABEL_236;
    }

    v283 = v25;
    v28 = v26[v25];
    v29 = *(v28 + 16);

    if (!v29 || (v30 = sub_25EAFCBE4(0x736870617267, 0xE600000000000000), (v31 & 1) == 0))
    {
LABEL_231:
      sub_25EAFC5CC(v290, v291);
      goto LABEL_232;
    }

    v32 = *(*(v28 + 56) + 8 * v30);
    swift_unknownObjectRetain();

    v305 = v32;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v4 + 8))(v6, v3);
      sub_25EAFC5CC(v290, v291);
      goto LABEL_236;
    }

    v33 = v302;
    v284 = v302[2];
    if (v284)
    {
      break;
    }

LABEL_62:
    v95 = v283 + 1;

    v25 = v95;
    v26 = v280;
    if (v95 == v281)
    {
      v96 = 0;
      v295 = "com.apple.polaris.pssg.builder";
      v293 = 0xEA0000000000656DLL;
      while (1)
      {
        if (v96 >= v21[2])
        {
          goto LABEL_283;
        }

        v97 = v26[v96];
        v98 = *(v97 + 16);

        if (!v98)
        {
          goto LABEL_231;
        }

        v99 = sub_25EAFCBE4(0x5F6E6F6973736573, 0xEC000000656D616ELL);
        if ((v100 & 1) == 0)
        {
          goto LABEL_231;
        }

        v304 = *(*(v97 + 56) + 8 * v99);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_252;
        }

        v299 = v303;
        if (!*(v97 + 16))
        {
          goto LABEL_242;
        }

        v296 = v302;
        v101 = sub_25EAFCBE4(0x736870617267, 0xE600000000000000);
        if ((v102 & 1) == 0)
        {
          goto LABEL_242;
        }

        v103 = *(*(v97 + 56) + 8 * v101);
        swift_unknownObjectRetain();

        v302 = v103;
        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v4 + 8))(v289, v3);
          sub_25EAFC5CC(v290, v291);
          goto LABEL_269;
        }

        v104 = v304;
        if (!*(v304 + 16))
        {
          goto LABEL_223;
        }

        v105 = 0;
        v106 = v304 + 32;
        v275 = *(v304 + 16);
        v274 = v304 + 32;
        while (2)
        {
          if (v105 >= *(v104 + 16))
          {
            goto LABEL_288;
          }

          v277 = v105;
          v107 = *(v106 + 8 * v105);
          v108 = *(v107 + 16);

          if (!v108 || (v109 = sub_25EAFCBE4(0x616E5F6870617267, v293), (v110 & 1) == 0))
          {
            sub_25EAFC5CC(v290, v291);

            goto LABEL_250;
          }

          v304 = *(*(v107 + 56) + 8 * v109);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            (*(v4 + 8))(v289, v3);
            sub_25EAFC5CC(v290, v291);

LABEL_269:

LABEL_236:

            goto LABEL_237;
          }

          v273 = v302;
          v283 = v303;
          v304 = MEMORY[0x277D84F90];
          v301 = MEMORY[0x277D84FA0];
          if (!*(v107 + 16))
          {
            goto LABEL_245;
          }

          v111 = sub_25EAFCBE4(0x736B736174, 0xE500000000000000);
          if ((v112 & 1) == 0)
          {
            goto LABEL_245;
          }

          v302 = *(*(v107 + 56) + 8 * v111);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_245;
          }

          v279 = v104;
          v113 = v300;
          v114 = *(v300 + 16);
          v287 = v4;
          v286 = v3;
          v297 = v23;
          v285 = v21;
          v294 = v107;
          v272 = v96;
          if (v114)
          {
            v270 = v114;
            v115 = 0;
            v278 = v300 + 32;
            v298 = MEMORY[0x277D84F90];
            v276 = v300;
            while (v115 < *(v113 + 16))
            {
              v271 = v115;
              v116 = *(v278 + 8 * v115);
              v117 = *(v116 + 16);

              if (!v117)
              {
                goto LABEL_247;
              }

              v118 = sub_25EAFCBE4(0x737475706E69, 0xE600000000000000);
              if ((v119 & 1) == 0)
              {
                goto LABEL_247;
              }

              v302 = *(*(v116 + 56) + 8 * v118);
              swift_unknownObjectRetain();
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_247;
              }

              v120 = v300;
              v284 = *(v300 + 16);
              if (v284)
              {
                v121 = 0;
                v122 = v297;
                while (1)
                {
                  if (v121 >= *(v120 + 16))
                  {
                    goto LABEL_286;
                  }

                  v123 = *(v120 + 8 * v121 + 32);
                  v124 = *(v123 + 16);

                  if (!v124)
                  {
                    goto LABEL_240;
                  }

                  v125 = sub_25EAFCBE4(0xD000000000000013, v295 | 0x8000000000000000);
                  if ((v126 & 1) == 0)
                  {
                    goto LABEL_240;
                  }

                  v300 = *(*(v123 + 56) + 8 * v125);
                  swift_unknownObjectRetain();
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    goto LABEL_240;
                  }

                  v127 = v303;
                  if (!v122[2] || (v128 = v302, v129 = sub_25EAFCBE4(v302, v303), (v130 & 1) == 0))
                  {
                    sub_25EAFC5CC(v290, v291);

                    goto LABEL_260;
                  }

                  v131 = (v122[7] + 16 * v129);
                  v132 = *v131;
                  v133 = v131[1];
                  type metadata accessor for PSSGResourceID(0);
                  v134 = v299;

                  v135 = sub_25EB3235C(v128, v127, v296, v134, v132, v133);
                  if (!v135)
                  {
                    break;
                  }

                  v136 = v135;
                  if (!*(v123 + 16))
                  {
                    sub_25EAFC5CC(v290, v291);

                    goto LABEL_262;
                  }

                  v137 = sub_25EAFCBE4(0x79745F7475706E69, 0xEA00000000006570);
                  v122 = v297;
                  if ((v138 & 1) == 0)
                  {
                    sub_25EAFC5CC(v290, v291);

LABEL_264:

LABEL_265:

                    goto LABEL_266;
                  }

                  v139 = *(*(v123 + 56) + 8 * v137);
                  swift_unknownObjectRetain();

                  v300 = v139;
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    sub_25EAFC5CC(v290, v291);

                    goto LABEL_265;
                  }

                  v140 = v136;
                  v141 = sub_25EB6E258();

                  v142 = ps_input_type_from_description();

                  v143 = [objc_allocWithZone(PSSGGraphInput) initWithResource:v140 type:v142];
                  v144 = v143;
                  MEMORY[0x25F8C6A80]();
                  if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_25EB6E3F8();
                  }

                  ++v121;
                  sub_25EB6E418();

                  v298 = v304;
                  if (v284 == v121)
                  {
                    goto LABEL_101;
                  }
                }

                sub_25EAFC5CC(v290, v291);

LABEL_262:

                goto LABEL_272;
              }

LABEL_101:

              if (!*(v116 + 16) || (v145 = sub_25EAFCBE4(0x7374757074756FLL, 0xE700000000000000), (v146 & 1) == 0))
              {
LABEL_247:
                sub_25EAFC5CC(v290, v291);

                goto LABEL_272;
              }

              v147 = *(*(v116 + 56) + 8 * v145);
              swift_unknownObjectRetain();

              v302 = v147;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C8, &qword_25EB78ED0);
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_25EAFC5CC(v290, v291);

                goto LABEL_272;
              }

              v284 = v300;
              v148 = *(v300 + 16);
              if (v148)
              {
                v149 = 0;
                v150 = (v284 + 40);
                v151 = v297;
                while (v149 < *(v284 + 16))
                {
                  v153 = *(v150 - 1);
                  v152 = *v150;
                  v154 = v151[2];

                  if (!v154 || (v155 = sub_25EAFCBE4(v153, v152), (v156 & 1) == 0))
                  {
                    sub_25EAFC5CC(v290, v291);

                    goto LABEL_260;
                  }

                  v157 = (v151[7] + 16 * v155);
                  v158 = *v157;
                  v159 = v157[1];
                  type metadata accessor for PSSGResourceID(0);
                  v160 = v299;

                  v161 = sub_25EB3235C(v153, v152, v296, v160, v158, v159);
                  if (!v161)
                  {
                    sub_25EAFC5CC(v290, v291);

                    goto LABEL_260;
                  }

                  ++v149;
                  sub_25EB26394(&v302, v161);

                  v150 += 2;
                  if (v148 == v149)
                  {
                    goto LABEL_111;
                  }
                }

                goto LABEL_287;
              }

LABEL_111:

              v115 = v271 + 1;
              v107 = v294;
              v113 = v276;
              if (v271 + 1 == v270)
              {
                goto LABEL_114;
              }
            }

            goto LABEL_289;
          }

          v298 = MEMORY[0x277D84F90];
LABEL_114:

          if (!*(v107 + 16) || (v162 = sub_25EAFCBE4(0x73726574697277, 0xE700000000000000), (v163 & 1) == 0) || (v302 = *(v294[7] + 8 * v162), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
LABEL_256:
            sub_25EAFC5CC(v290, v291);

            goto LABEL_273;
          }

          v284 = v300;
          v278 = *(v300 + 16);
          if (v278)
          {
            v164 = 0;
            v165 = v297;
            v166 = v284;
            do
            {
              if (v164 >= *(v166 + 16))
              {
                goto LABEL_284;
              }

              v170 = *(v166 + 8 * v164 + 32);
              v171 = *(v170 + 16);

              if (!v171 || (v172 = sub_25EAFCBE4(0x74757074756FLL, 0xE600000000000000), (v173 & 1) == 0))
              {
                sub_25EAFC5CC(v290, v291);

                goto LABEL_255;
              }

              v174 = *(*(v170 + 56) + 8 * v172);
              swift_unknownObjectRetain();

              v300 = v174;
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_25EAFC5CC(v290, v291);

LABEL_255:

LABEL_266:

LABEL_260:

                (*(v287 + 8))(v289, v286);
                goto LABEL_275;
              }

              if (v165[2] && (v175 = sub_25EAFCBE4(v302, v303), (v176 & 1) != 0))
              {
                v177 = (v165[7] + 16 * v175);
                v179 = *v177;
                v178 = v177[1];
              }

              else
              {
                v178 = 0xE600000000000000;
                v179 = 0x646572616873;
              }

              ps_resource_storage_mode_description();
              v180 = sub_25EB6E2F8();
              v182 = v181;
              ps_resource_storage_mode_description();
              v183 = sub_25EB6E2F8();
              v185 = v184;
              if (v180 == v179 && v182 == v178)
              {
              }

              else
              {
                v186 = sub_25EB6E988();

                if ((v186 & 1) == 0)
                {
                  if (v183 == v179 && v185 == v178)
                  {
                  }

                  else
                  {
                    v187 = sub_25EB6E988();

                    if ((v187 & 1) == 0)
                    {
                      sub_25EAFC5CC(v290, v291);

                      goto LABEL_273;
                    }
                  }

                  v188 = objc_allocWithZone(PSSGResourceID);
                  v189 = sub_25EB6E258();

                  v168 = sub_25EB6E258();
                  v169 = [v188 initLocalWithName:v189 session:v168];

                  v166 = v284;
                  goto LABEL_121;
                }
              }

              v166 = v284;

              v167 = objc_allocWithZone(PSSGResourceID);
              v168 = sub_25EB6E258();

              v169 = [v167 initGlobalWithName_];
LABEL_121:
              ++v164;

              sub_25EB26394(&v302, v169);
              v165 = v297;
            }

            while (v278 != v164);
          }

          if (!v294[2])
          {
            goto LABEL_256;
          }

          v190 = sub_25EAFCBE4(0x73726564616572, 0xE700000000000000);
          if ((v191 & 1) == 0)
          {
            goto LABEL_256;
          }

          v302 = *(v294[7] + 8 * v190);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_256;
          }

          v192 = v300;
          v278 = *(v300 + 16);
          if (v278)
          {
            v193 = 0;
            while (1)
            {
              if (v193 >= *(v192 + 16))
              {
                goto LABEL_290;
              }

              v194 = *(v192 + 8 * v193 + 32);
              v195 = *(v194 + 16);

              if (!v195 || (v196 = sub_25EAFCBE4(0xD000000000000013, v295 | 0x8000000000000000), (v197 & 1) == 0) || (v300 = *(*(v194 + 56) + 8 * v196), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
              {
                sub_25EAFC5CC(v290, v291);

                goto LABEL_271;
              }

              v284 = v302;
              if (v297[2] && (v198 = sub_25EAFCBE4(v284, v303), (v199 & 1) != 0))
              {
                v200 = (v297[7] + 16 * v198);
                v202 = *v200;
                v201 = v200[1];
              }

              else
              {
                v201 = 0xE600000000000000;
                v202 = 0x646572616873;
              }

              ps_resource_storage_mode_description();
              v203 = sub_25EB6E2F8();
              v205 = v204;
              ps_resource_storage_mode_description();
              v206 = sub_25EB6E2F8();
              v208 = v207;
              if (v203 == v202 && v205 == v201)
              {
                break;
              }

              v209 = sub_25EB6E988();

              if (v209)
              {
                goto LABEL_155;
              }

              if (v206 == v202 && v208 == v201)
              {
              }

              else
              {
                v213 = sub_25EB6E988();

                if ((v213 & 1) == 0)
                {
                  sub_25EAFC5CC(v290, v291);

                  goto LABEL_272;
                }
              }

              v214 = objc_allocWithZone(PSSGResourceID);
              v215 = sub_25EB6E258();

              v211 = sub_25EB6E258();
              v212 = [v214 initLocalWithName:v215 session:v211];

LABEL_161:
              if (!*(v194 + 16) || (v216 = sub_25EAFCBE4(0x79745F7475706E69, 0xEA00000000006570), (v217 & 1) == 0))
              {
                sub_25EAFC5CC(v290, v291);

LABEL_271:

LABEL_272:

LABEL_273:

LABEL_274:
                (*(v287 + 8))(v289, v286);
LABEL_275:

                return 0;
              }

              v218 = *(*(v194 + 56) + 8 * v216);
              swift_unknownObjectRetain();

              v300 = v218;
              if ((swift_dynamicCast() & 1) == 0)
              {
                sub_25EAFC5CC(v290, v291);

                goto LABEL_272;
              }

              v219 = v212;
              v220 = sub_25EB6E258();

              v221 = ps_input_type_from_description();

              v222 = [objc_allocWithZone(PSSGGraphInput) initWithResource:v219 type:v221];
              v223 = v222;
              MEMORY[0x25F8C6A80]();
              if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25EB6E3F8();
              }

              ++v193;
              sub_25EB6E418();

              v298 = v304;
              if (v278 == v193)
              {
                goto LABEL_167;
              }
            }

LABEL_155:

            v210 = objc_allocWithZone(PSSGResourceID);
            v211 = sub_25EB6E258();

            v212 = [v210 initGlobalWithName_];
            goto LABEL_161;
          }

LABEL_167:

          v271 = v301;
          if ((v301 & 0xC000000000000001) != 0)
          {

            sub_25EB6E5B8();
            type metadata accessor for PSSGResourceID(0);
            sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
            sub_25EB6E478();
            v284 = v305;
            v276 = v306;
            v224 = v308;
            v270 = v307;
            v225 = v309;
          }

          else
          {
            v226 = -1 << *(v271 + 32);
            v227 = *(v271 + 56);
            v276 = v271 + 56;
            v270 = ~v226;
            v228 = -v226;
            if (v228 < 64)
            {
              v229 = ~(-1 << v228);
            }

            else
            {
              v229 = -1;
            }

            v225 = v229 & v227;
            v224 = 0;
          }

          ++v277;
          v230 = (v270 + 64) >> 6;
          while (1)
          {
            if (v284 < 0)
            {
              v235 = sub_25EB6E638();
              if (!v235)
              {
                break;
              }

              v300 = v235;
              type metadata accessor for PSSGResourceID(0);
              swift_dynamicCast();
              v234 = v302;
              i = v224;
              v278 = v225;
            }

            else
            {
              v231 = v224;
              v232 = v225;
              for (i = v224; !v232; ++v231)
              {
                i = v231 + 1;
                if (__OFADD__(v231, 1))
                {
                  goto LABEL_285;
                }

                if (i >= v230)
                {
                  goto LABEL_219;
                }

                v232 = *(v276 + 8 * i);
              }

              v278 = (v232 - 1) & v232;
              v234 = *(*(v284 + 48) + ((i << 9) | (8 * __clz(__rbit64(v232)))));
            }

            if (!v234)
            {
              break;
            }

            v236 = v234;
            v237 = v282;
            v238 = sub_25EB309C8(&v304, v236);
            v282 = v237;

            v298 = v304;
            v239 = v304 >> 62;
            if (v304 >> 62)
            {
              v240 = sub_25EB6E5F8();
              v241 = v240 - v238;
              if (v240 < v238)
              {
                goto LABEL_291;
              }
            }

            else
            {
              v240 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v241 = v240 - v238;
              if (v240 < v238)
              {
                goto LABEL_291;
              }
            }

            if (v238 < 0)
            {
              goto LABEL_292;
            }

            if (v239)
            {
              v242 = sub_25EB6E5F8();
            }

            else
            {
              v242 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v242 < v240)
            {
              goto LABEL_293;
            }

            v243 = -v241;
            if (__OFSUB__(0, v241))
            {
              goto LABEL_294;
            }

            if (v239)
            {
              v244 = sub_25EB6E5F8();
            }

            else
            {
              v244 = *((v298 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v245 = v244 - v241;
            if (__OFADD__(v244, v243))
            {
              goto LABEL_295;
            }

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if (!v239)
              {
                v247 = v298 & 0xFFFFFFFFFFFFFF8;
                if (v245 <= *((v298 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_203;
                }

                goto LABEL_202;
              }

LABEL_201:
              sub_25EB6E5F8();
              goto LABEL_202;
            }

            if (v239)
            {
              goto LABEL_201;
            }

LABEL_202:
            isUniquelyReferenced_nonNull_bridgeObject = sub_25EB6E6D8();
            v298 = isUniquelyReferenced_nonNull_bridgeObject;
            v247 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_203:
            type metadata accessor for PSSGGraphInput(isUniquelyReferenced_nonNull_bridgeObject);
            swift_arrayDestroy();
            if (v241)
            {
              v248 = v298 >> 62;
              if (v298 >> 62)
              {
                v253 = sub_25EB6E5F8();
                v250 = v253 - v240;
                if (__OFSUB__(v253, v240))
                {
                  goto LABEL_296;
                }
              }

              else
              {
                v249 = *(v247 + 16);
                v250 = v249 - v240;
                if (__OFSUB__(v249, v240))
                {
                  goto LABEL_296;
                }
              }

              v251 = (v247 + 32 + 8 * v240);
              if (v240 != v238 || v247 + 32 + 8 * v238 >= v251 + 8 * v250)
              {
                memmove((v247 + 32 + 8 * v238), v251, 8 * v250);
              }

              if (v248)
              {
                v252 = sub_25EB6E5F8();
              }

              else
              {
                v252 = *(v247 + 16);
              }

              if (__OFADD__(v252, v243))
              {
                goto LABEL_297;
              }

              *(v247 + 16) = v252 + v243;
            }

            v304 = v298;
            v224 = i;
            v225 = v278;
          }

LABEL_219:
          sub_25EB0EC08(v284);
          v254 = objc_allocWithZone(PSSGGraphID);
          v255 = sub_25EB6E258();

          v256 = sub_25EB6E258();
          v257 = [v254 initWithName:v255 session:v256];

          v258 = sub_25EB0EF2C(0x636E657571657266, 0xEE00657079745F79, v294);

          if (!v258 || (v300 = v258, (swift_dynamicCast() & 1) == 0))
          {
            sub_25EAFC5CC(v290, v291);

            goto LABEL_274;
          }

          v259 = sub_25EB6E258();

          v260 = ps_graph_frequency_type_from_description();

          type metadata accessor for PSSGGraphInput(v261);
          v262 = sub_25EB6E3C8();

          type metadata accessor for PSSGResourceID(0);
          sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
          v263 = sub_25EB6E428();

          v302 = 0;
          LOBYTE(v260) = [v292 addGraphWithID:v257 type:v260 inputs:v262 outputs:v263 error:&v302];

          if ((v260 & 1) == 0)
          {
            v267 = v302;

            v268 = sub_25EB6E048();

            swift_willThrow();
            sub_25EAFC5CC(v290, v291);

            (*(v287 + 8))(v289, v286);

            return 0;
          }

          v264 = v302;

          v105 = v277;
          v104 = v279;
          v4 = v287;
          v3 = v286;
          v23 = v297;
          v21 = v285;
          v96 = v272;
          v106 = v274;
          if (v277 != v275)
          {
            continue;
          }

          break;
        }

LABEL_223:
        ++v96;

        v6 = v289;
        v26 = v280;
        if (v96 == v281)
        {
LABEL_224:
          (*(v4 + 8))(v6, v3);
          sub_25EAFC5CC(v290, v291);

          return v292;
        }
      }
    }
  }

  v34 = 0;
  v294 = v302 + 4;
  v287 = v4;
  v286 = v3;
  v285 = v21;
  v293 = v302;
  while (1)
  {
    if (v34 >= v33[2])
    {
      __break(1u);
LABEL_245:
      sub_25EAFC5CC(v290, v291);

LABEL_250:

      (*(v4 + 8))(v289, v3);
      goto LABEL_233;
    }

    v295 = v34;
    v35 = v294[v34];
    v36 = *(v35 + 16);

    if (!v36)
    {
      goto LABEL_242;
    }

    v37 = sub_25EAFCBE4(0x656372756F736572, 0xE900000000000073);
    if ((v38 & 1) == 0)
    {
      goto LABEL_242;
    }

    v39 = *(*(v35 + 56) + 8 * v37);
    swift_unknownObjectRetain();

    v305 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121B8, &unk_25EB78EC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_252;
    }

    v40 = 0;
    ++v295;
    v3 = (v302 + 8);
    v41 = v302[8];
    v297 = v302;
    v42 = 1 << *(v302 + 32);
    v43 = v42 < 64 ? ~(-1 << v42) : -1;
    v44 = v43 & v41;
    v6 = ((v42 + 63) >> 6);
    if ((v43 & v41) != 0)
    {
      break;
    }

    while (1)
    {
LABEL_27:
      v4 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        sub_25EAFC5CC(v290, v291);

        goto LABEL_264;
      }

      if (v4 >= v6)
      {
        break;
      }

      v44 = *&v3[8 * v4];
      ++v40;
      if (v44)
      {
        goto LABEL_30;
      }
    }

    v34 = v295;
    v4 = v287;
    v3 = v286;
    v6 = v289;
    v21 = v285;
    v33 = v293;
    if (v295 == v284)
    {
      goto LABEL_62;
    }
  }

  while (2)
  {
    v4 = v40;
LABEL_30:
    v45 = __clz(__rbit64(v44)) | (v4 << 6);
    v46 = (v297[6] + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    v49 = *(v297[7] + 8 * v45);
    v50 = *(v49 + 16);

    if (!v50 || (v51 = sub_25EAFCBE4(0x5F656761726F7473, 0xEC00000065646F6DLL), (v52 & 1) == 0))
    {
      sub_25EAFC5CC(v290, v291);

      (*(v287 + 8))(v289, v286);
      goto LABEL_233;
    }

    v53 = *(*(v49 + 56) + 8 * v51);
    swift_unknownObjectRetain();

    v302 = v53;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v287 + 8))(v289, v286);
      sub_25EAFC5CC(v290, v291);

LABEL_237:

      return 0;
    }

    v298 = v305;
    v299 = v306;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v305 = v27;
    v55 = sub_25EAFCBE4(v48, v47);
    v57 = v27;
    v58 = v55;
    v59 = v57[2];
    v60 = (v56 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_239;
    }

    v62 = v56;
    v296 = v57;
    if (v57[3] < v61)
    {
      sub_25EB2B66C(v61, isUniquelyReferenced_nonNull_native);
      v63 = v305;
      v64 = sub_25EAFCBE4(v48, v47);
      if ((v62 & 1) != (v65 & 1))
      {
        goto LABEL_298;
      }

      v58 = v64;
LABEL_39:
      v44 &= v44 - 1;
      if (v62)
      {

        v23 = v63;
        v66 = (v63[7] + 16 * v58);
        v67 = v299;
        *v66 = v298;
        v66[1] = v67;

        v27 = v63;
        v40 = v4;
        if (!v44)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v63[(v58 >> 6) + 8] |= 1 << v58;
        v68 = (v63[6] + 16 * v58);
        *v68 = v48;
        v68[1] = v47;
        v69 = (v63[7] + 16 * v58);
        v70 = v299;
        *v69 = v298;
        v69[1] = v70;
        v71 = v63[2];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          __break(1u);
LABEL_242:
          sub_25EAFC5CC(v290, v291);

LABEL_232:

          (*(v4 + 8))(v6, v3);
LABEL_233:

          return 0;
        }

        v23 = v63;
        v63[2] = v73;
        v27 = v63;
        v40 = v4;
        if (!v44)
        {
          goto LABEL_27;
        }
      }

      continue;
    }

    break;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v63 = v296;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
  v74 = sub_25EB6E868();
  v63 = v74;
  if (!v296[2])
  {
LABEL_61:

    goto LABEL_39;
  }

  v75 = (v74 + 64);
  v76 = 1 << *(v63 + 32);
  v277 = (v296 + 8);
  v77 = (v76 + 63) >> 6;
  if (v63 != v296 || v75 >= &v277[8 * v77])
  {
    memmove(v75, v277, 8 * v77);
  }

  v78 = 0;
  v79 = v296;
  v63[2] = v296[2];
  v80 = 1 << *(v79 + 32);
  v81 = v79[8];
  if (v80 < 64)
  {
    v82 = ~(-1 << v80);
  }

  else
  {
    v82 = -1;
  }

  v279 = v82 & v81;
  v276 = (v80 + 63) >> 6;
  while (v279)
  {
    v83 = __clz(__rbit64(v279));
    v279 &= v279 - 1;
LABEL_60:
    v86 = 16 * (v83 | (v78 << 6));
    v87 = (v296[6] + v86);
    v89 = *v87;
    v88 = v87[1];
    v90 = (v296[7] + v86);
    v91 = *v90;
    v278 = v90[1];
    v92 = v278;
    v93 = (v63[6] + v86);
    *v93 = v89;
    v93[1] = v88;
    v94 = (v63[7] + v86);
    *v94 = v91;
    v94[1] = v92;
  }

  v84 = v78;
  while (1)
  {
    v78 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v78 >= v276)
    {
      goto LABEL_61;
    }

    v85 = *&v277[8 * v78];
    ++v84;
    if (v85)
    {
      v83 = __clz(__rbit64(v85));
      v279 = (v85 - 1) & v85;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  result = sub_25EB6E9B8();
  __break(1u);
  return result;
}

uint64_t PSSGBuilder.strideDependentGraphs(for:)(uint64_t a1)
{
  v13 = sub_25EB1E9F8;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_25EB320E0;
  v12 = &block_descriptor_57;
  v3 = _Block_copy(&v9);

  v13 = sub_25EB1EA48;
  v14 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_25EB1EA70;
  v12 = &block_descriptor_60;
  v4 = _Block_copy(&v9);

  v5 = [v1 nodesForGraphID:a1 graphCond:v3 graphInputCond:v4 resourceCond:0];
  _Block_release(v4);
  _Block_release(v3);
  v6 = [v5 graphs];

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v7 = sub_25EB6E438();

  return v7;
}

BOOL sub_25EB1E9F8(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = 2;
    return [a1 type] == v2;
  }

  if (a2 == 1)
  {
    v2 = 1;
    return [a1 type] == v2;
  }

  return 0;
}

uint64_t sub_25EB1EA70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

unint64_t sub_25EB1EC4C(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v4 = sub_25EB6E1F8();
  v5 = [v2 getStrideDependentGraphsCountWithStrideDependentGraphs_];

  v6 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v7 = *&v2[v6];
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = sub_25EB6E5F8();
  }

  else
  {
    v8 = *(v7 + 16);
  }

  v9 = MEMORY[0x277D84FA0];
  if (v5 != v8)
  {
    if (qword_27FD11B20 != -1)
    {
LABEL_25:
      swift_once();
    }

    v10 = sub_25EB6E1B8();
    __swift_project_value_buffer(v10, qword_27FD2EED0);
    v11 = v2;
    v12 = sub_25EB6E198();
    v13 = sub_25EB6E498();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v5;
      *(v14 + 12) = 2048;
      v5 = *&v2[v6];
      if ((v5 & 0xC000000000000001) != 0)
      {

        v15 = sub_25EB6E5F8();
      }

      else
      {
        v15 = *(v5 + 16);
      }

      *(v14 + 14) = v15;

      _os_log_impl(&dword_25EA3A000, v12, v13, "Stride dependent graph count %ld does not match total graph count %ld", v14, 0x16u);
      MEMORY[0x25F8C9C00](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    v28 = v9;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(a1 + 64);
    v18 = (v16 + 63) >> 6;

    v19 = 0;
    if (v9)
    {
      while (1)
      {
        v20 = v19;
LABEL_20:
        v21 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v22 = (v20 << 9) | (8 * v21);
        v5 = *(*(a1 + 56) + v22);
        v23 = *(*(a1 + 48) + v22);

        sub_25EB26820(&v27, v23);

        sub_25EB0F39C(v5, type metadata accessor for PSSGGraphID, &unk_27FD11DF0, type metadata accessor for PSSGGraphID, sub_25EB26820);
        if (!v9)
        {
          goto LABEL_16;
        }
      }
    }

    while (1)
    {
LABEL_16:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v20 >= v18)
      {
        break;
      }

      v9 = *(a1 + 64 + 8 * v20);
      ++v19;
      if (v9)
      {
        v19 = v20;
        goto LABEL_20;
      }
    }

    sub_25EAFFBF0(v24);
    v9 = sub_25EB1F000(v28, v25);
  }

  return v9;
}

uint64_t sub_25EB1F000(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_25EB6E5F8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_25EB2ED1C(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_25EB6E5F8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_25EB6E5F8();
  v2 = sub_25EB26CCC(v5, v6, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID);
LABEL_10:

  return sub_25EB07BF8(a1, v2);
}

void *PSSGBuilder.allStrideDependentGraphs()()
{
  v1 = v0;
  v2 = OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {

    return v3;
  }

  v4 = sub_25EB0E470(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v6 = *&v0[v5];
  v129 = v2;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v8 = ~v11;
    v7 = v6 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v6 + 64);
    v10 = v6;
  }

  v14 = 0;
  v130 = v7;
  v15 = (v8 + 64) >> 6;
  v140 = v1;
  v131 = v10;
  v132 = v15;
LABEL_10:
  v16 = v14;
  v137 = v4;
  if ((v10 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      if (!sub_25EB6E7F8())
      {
        goto LABEL_73;
      }

      v23 = v22;
      type metadata accessor for PSSGGraphID(0);
      v24 = swift_dynamicCast();
      v21 = v142;
      v141 = v23;
      type metadata accessor for PSSGGraph(v24);
      swift_dynamicCast();
      v138 = v142;
      v14 = v16;
      v133 = v9;
      if (!v142)
      {
        goto LABEL_73;
      }

LABEL_19:
      v135 = v21;
      v25 = v138;
      if (![v138 type] || objc_msgSend(v138, sel_type) == 3)
      {
        v55 = [v1 strideDependentGraphsForGraphID_];
        type metadata accessor for PSSGGraphID(0);
        sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
        v56 = sub_25EB6E438();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v142 = v4;
        v58 = sub_25EAFD168(v135);
        v60 = v4[2];
        v61 = (v59 & 1) == 0;
        v62 = __OFADD__(v60, v61);
        v63 = v60 + v61;
        if (v62)
        {
          goto LABEL_118;
        }

        v64 = v59;
        if (v4[3] >= v63)
        {
          v9 = v133;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v59 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v69 = v58;
            sub_25EB2DC00(&unk_27FD11EB0, &unk_25EB79590);
            v58 = v69;
            v15 = v132;
            if ((v64 & 1) == 0)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          sub_25EB2BBC4(v63, isUniquelyReferenced_nonNull_native, &unk_27FD11EB0, &unk_25EB79590);
          v58 = sub_25EAFD168(v135);
          if ((v64 & 1) != (v65 & 1))
          {
            goto LABEL_122;
          }

          v9 = v133;
          if ((v64 & 1) == 0)
          {
LABEL_71:
            v4[(v58 >> 6) + 8] |= 1 << v58;
            *(v4[6] + 8 * v58) = v135;
            *(v4[7] + 8 * v58) = v56;

            v70 = v4[2];
            v62 = __OFADD__(v70, 1);
            v71 = v70 + 1;
            if (!v62)
            {
              v4[2] = v71;
              v10 = v131;
              goto LABEL_10;
            }

LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        *(v4[7] + 8 * v58) = v56;

        v10 = v131;
        goto LABEL_10;
      }

      if ([v138 type] == 1)
      {
        break;
      }

      v9 = v133;
      if ([v138 type] == 2)
      {
        v34 = [v138 outputs];
        type metadata accessor for PSSGResourceID(0);
        sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
        v35 = sub_25EB6E438();

        v36 = (v35 & 0xC000000000000001) != 0 ? sub_25EB6E5F8() : *(v35 + 16);

        if (!v36)
        {
          v66 = [v1 strideDependentGraphsForGraphID_];
          type metadata accessor for PSSGGraphID(0);
          sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
          v67 = sub_25EB6E438();

          v68 = swift_isUniquelyReferenced_nonNull_native();
          v142 = v4;
          sub_25EB2CB14(v67, v21, v68, &unk_27FD11EB0, &unk_25EB79590);

          v15 = v132;
          goto LABEL_10;
        }
      }

LABEL_53:

      v16 = v14;
      v15 = v132;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

    v26 = [v138 sharedInputs];
    type metadata accessor for PSSGGraphInput(v26);
    v27 = sub_25EB6E3D8();

    if (v27 >> 62)
    {
      v28 = sub_25EB6E5F8();
      v29 = off_279A49000;
      if (v28)
      {
LABEL_24:
        v142 = MEMORY[0x277D84F90];
        sub_25EB6E718();
        if (v28 < 0)
        {
          goto LABEL_117;
        }

        v30 = 0;
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x25F8C6D90](v30, v27);
          }

          else
          {
            v31 = *(v27 + 8 * v30 + 32);
          }

          v32 = v31;
          ++v30;
          v33 = [v31 v29[400]];

          sub_25EB6E6F8();
          sub_25EB6E728();
          sub_25EB6E738();
          sub_25EB6E708();
        }

        while (v28 != v30);

        v37 = v142;
        if (!(v142 >> 62))
        {
LABEL_34:
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_35;
          }

LABEL_50:

          v25 = v138;
          v1 = v140;
          v4 = v137;
          v7 = v130;
          v10 = v131;
          v9 = v133;
          goto LABEL_53;
        }

LABEL_57:
        v38 = sub_25EB6E5F8();
        if (v38)
        {
LABEL_35:
          v39 = 0;
          v40 = OBJC_IVAR___PSSGBuilder_resources;
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x25F8C6D90](v39, v37);
            }

            else
            {
              if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v41 = *(v37 + 8 * v39 + 32);
            }

            v42 = v41;
            v43 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_115;
            }

            swift_beginAccess();
            v44 = *&v140[v40];
            if ((v44 & 0xC000000000000001) != 0)
            {
              v45 = v42;
              v46 = sub_25EB6E7E8();

              if (!v46)
              {
                goto LABEL_59;
              }

              type metadata accessor for PSSGResource(v47);
              swift_dynamicCast();
              v48 = v141;
              if (!v141)
              {
                goto LABEL_59;
              }
            }

            else if (!*(v44 + 16) || (v49 = sub_25EAFD114(v42), (v50 & 1) == 0) || (v48 = *(*(v44 + 56) + 8 * v49)) == 0)
            {
LABEL_59:
              swift_endAccess();
LABEL_60:

              v1 = v140;
              v52 = [v140 strideDependentGraphsForGraphID_];
              type metadata accessor for PSSGGraphID(0);
              sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
              v53 = sub_25EB6E438();

              v54 = swift_isUniquelyReferenced_nonNull_native();
              v142 = v137;
              sub_25EB2CB14(v53, v135, v54, &unk_27FD11EB0, &unk_25EB79590);

              v4 = v137;
              v7 = v130;
              v10 = v131;
              v15 = v132;
              v9 = v133;
              goto LABEL_10;
            }

            swift_endAccess();
            v51 = [v48 producer];

            if (!v51)
            {
              goto LABEL_60;
            }

            ++v39;
            if (v43 == v38)
            {
              goto LABEL_50;
            }
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v29 = off_279A49000;
      if (v28)
      {
        goto LABEL_24;
      }
    }

    v37 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_34;
    }

    goto LABEL_57;
  }

LABEL_11:
  v17 = v16;
  v18 = v9;
  v14 = v16;
  if (!v9)
  {
    while (1)
    {
      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v14 >= v15)
      {
        goto LABEL_73;
      }

      v18 = *(v7 + 8 * v14);
      ++v17;
      if (v18)
      {
        goto LABEL_15;
      }
    }

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
    goto LABEL_120;
  }

LABEL_15:
  v133 = (v18 - 1) & v18;
  v19 = (v14 << 9) | (8 * __clz(__rbit64(v18)));
  v20 = *(*(v10 + 56) + v19);
  v21 = *(*(v10 + 48) + v19);
  v138 = v20;
  if (v21)
  {
    goto LABEL_19;
  }

LABEL_73:
  sub_25EB0EC08(v10);
  v72 = type metadata accessor for PSSGGraphID(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD121D0, &unk_25EB78ED8);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
  v73 = sub_25EB6E1F8();
  v74 = [v1 getOrphanedGraphsWithSourceGraphToAffectedGraphs_];

  v75 = sub_25EB6E438();
  if ((v75 & 0xC000000000000001) != 0)
  {
    sub_25EB6E5B8();
    sub_25EB6E478();
    v75 = v142;
    v76 = v143;
    v77 = v144;
    i = v145;
    v79 = v146;
  }

  else
  {
    i = 0;
    v80 = -1 << *(v75 + 32);
    v76 = v75 + 56;
    v77 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v79 = v82 & *(v75 + 56);
  }

  v83 = (v77 + 64) >> 6;
  v84 = &unk_27FD11000;
  v134 = v83;
  v136 = v76;
  while (2)
  {
    while (2)
    {
      v85 = i;
      while (1)
      {
        if (v75 < 0)
        {
          if (!sub_25EB6E638() || (swift_dynamicCast(), v89 = v141, i = v85, v88 = v79, !v141))
          {
LABEL_111:
            sub_25EB0EC08(v75);
            v3 = v137;
            *&v140[v129] = v137;

            return v3;
          }
        }

        else
        {
          v86 = v85;
          v87 = v79;
          for (i = v85; !v87; ++v86)
          {
            i = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              goto LABEL_114;
            }

            if (i >= v83)
            {
              goto LABEL_111;
            }

            v87 = *(v76 + 8 * i);
          }

          v88 = (v87 - 1) & v87;
          v89 = *(*(v75 + 48) + ((i << 9) | (8 * __clz(__rbit64(v87)))));
          if (!v89)
          {
            goto LABEL_111;
          }
        }

        v139 = v88;
        if (!v137[2])
        {
          break;
        }

        sub_25EAFD168(v89);
        if ((v90 & 1) == 0)
        {
          break;
        }

        if (v84[356] != -1)
        {
          swift_once();
        }

        v91 = sub_25EB6E1B8();
        __swift_project_value_buffer(v91, qword_27FD2EED0);
        v92 = v89;
        v93 = sub_25EB6E198();
        v94 = sub_25EB6E498();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = v84;
          v96 = swift_slowAlloc();
          v97 = v75;
          v98 = v72;
          v99 = swift_slowAlloc();
          *v96 = 138412290;
          *(v96 + 4) = v92;
          *v99 = v89;
          v100 = v92;
          _os_log_impl(&dword_25EA3A000, v93, v94, "Orphaned graph %@ also in sourceGraphToAffectedGraph!", v96, 0xCu);
          sub_25EB0D660(v99, &qword_27FD120D0, &qword_25EB78E60);
          v101 = v99;
          v72 = v98;
          v75 = v97;
          v76 = v136;
          MEMORY[0x25F8C9C00](v101, -1, -1);
          v102 = v96;
          v84 = v95;
          v83 = v134;
          MEMORY[0x25F8C9C00](v102, -1, -1);
          v92 = v93;
          v93 = v100;
        }

        v85 = i;
        v79 = v139;
      }

      if (v84[356] != -1)
      {
        swift_once();
      }

      v103 = sub_25EB6E1B8();
      __swift_project_value_buffer(v103, qword_27FD2EED0);
      v104 = v89;
      v105 = sub_25EB6E198();
      v106 = sub_25EB6E488();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = v84;
        v108 = swift_slowAlloc();
        v109 = v75;
        v110 = v72;
        v111 = swift_slowAlloc();
        *v108 = 138412290;
        *(v108 + 4) = v104;
        *v111 = v89;
        v112 = v104;
        _os_log_impl(&dword_25EA3A000, v105, v106, "Adding orphaned graph %@ to sourceGraphToAffectedGraph", v108, 0xCu);
        sub_25EB0D660(v111, &qword_27FD120D0, &qword_25EB78E60);
        v113 = v111;
        v72 = v110;
        v75 = v109;
        v76 = v136;
        MEMORY[0x25F8C9C00](v113, -1, -1);
        v114 = v108;
        v84 = v107;
        v83 = v134;
        MEMORY[0x25F8C9C00](v114, -1, -1);
      }

      v115 = swift_isUniquelyReferenced_nonNull_native();
      v141 = v137;
      v116 = sub_25EAFD168(v104);
      v118 = v137[2];
      v119 = (v117 & 1) == 0;
      v62 = __OFADD__(v118, v119);
      v120 = v118 + v119;
      if (v62)
      {
        goto LABEL_119;
      }

      v121 = v117;
      if (v137[3] >= v120)
      {
        if ((v115 & 1) == 0)
        {
          v125 = v83;
          v126 = v84;
          v127 = v116;
          sub_25EB2DC00(&unk_27FD11EB0, &unk_25EB79590);
          v116 = v127;
          v84 = v126;
          v83 = v125;
        }
      }

      else
      {
        sub_25EB2BBC4(v120, v115, &unk_27FD11EB0, &unk_25EB79590);
        v116 = sub_25EAFD168(v104);
        if ((v121 & 1) != (v122 & 1))
        {
          goto LABEL_123;
        }
      }

      if (v121)
      {
        *(v137[7] + 8 * v116) = MEMORY[0x277D84FA0];

        v79 = v139;
        continue;
      }

      break;
    }

    v137[(v116 >> 6) + 8] |= 1 << v116;
    *(v137[6] + 8 * v116) = v104;
    *(v137[7] + 8 * v116) = MEMORY[0x277D84FA0];
    v123 = v137[2];
    v62 = __OFADD__(v123, 1);
    v124 = v123 + 1;
    if (!v62)
    {
      v137[2] = v124;
      v79 = v139;
      continue;
    }

    break;
  }

LABEL_121:
  __break(1u);
LABEL_122:
  sub_25EB6E9B8();
  __break(1u);
LABEL_123:
  result = sub_25EB6E9B8();
  __break(1u);
  return result;
}

uint64_t PSSGBuilder.allDependentGraphs(forResourceSet:)(int64_t a1)
{
  v3 = v1 + OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v4 = *(v3 + 8);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = sub_25EAFD1BC(a1);
      if (v6)
      {
        v7 = *(*(v4 + 56) + 8 * v5);
        swift_endAccess();

        return v7;
      }
    }
  }

  swift_endAccess();
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_6:
  v8 = MEMORY[0x277D84FA0];
  while (1)
  {
    v32 = v3;
    v43 = v8;
    v31 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_25EB6E5B8();
      type metadata accessor for PSSGResourceID(0);
      sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
      sub_25EB6E478();
      v9 = v44;
      v10 = v45;
      v3 = v46;
      v11 = v47;
      v12 = v48;
    }

    else
    {
      v13 = -1 << *(a1 + 32);
      v10 = a1 + 56;
      v3 = ~v13;
      v14 = -v13;
      v15 = v14 < 64 ? ~(-1 << v14) : -1;
      v12 = v15 & *(a1 + 56);

      v11 = 0;
      v9 = a1;
    }

    a1 = (v3 + 64) >> 6;
    v34 = v9;
    if (v9 < 0)
    {
      break;
    }

    while (1)
    {
      v20 = v11;
      v21 = v12;
      v18 = v11;
      if (!v12)
      {
        break;
      }

LABEL_21:
      v19 = (v21 - 1) & v21;
      v17 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_22:
      v39 = sub_25EB2080C;
      v40 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25EB320E0;
      v38 = &block_descriptor_63;
      v22 = _Block_copy(&aBlock);

      v39 = OUTLINED_FUNCTION_9_0;
      v40 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25EB1EA70;
      v38 = &block_descriptor_66;
      v23 = _Block_copy(&aBlock);

      v39 = sub_25EB20AEC;
      v40 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25EB320E0;
      v38 = &block_descriptor_69;
      v24 = _Block_copy(&aBlock);

      v25 = [v33 nodesForResourceID:v17 graphCond:v22 graphInputCond:v23 resourceCond:v24];
      _Block_release(v24);
      _Block_release(v23);
      _Block_release(v22);
      v26 = [v25 graphs];

      type metadata accessor for PSSGGraphID(0);
      v3 = type metadata accessor for PSSGGraphID;
      sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
      v27 = sub_25EB6E438();

      sub_25EB0F39C(v27, type metadata accessor for PSSGGraphID, &unk_27FD11DF0, type metadata accessor for PSSGGraphID, sub_25EB26820);
      v11 = v18;
      v12 = v19;
      v9 = v34;
      if (v34 < 0)
      {
        goto LABEL_14;
      }
    }

    while (1)
    {
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v18 >= a1)
      {
        goto LABEL_24;
      }

      v21 = *(v10 + 8 * v18);
      ++v20;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    if (!sub_25EB6E5F8())
    {
      goto LABEL_6;
    }

    sub_25EB0E8C4(MEMORY[0x277D84F90]);
  }

LABEL_14:
  v16 = sub_25EB6E638();
  if (v16)
  {
    v42 = v16;
    type metadata accessor for PSSGResourceID(0);
    swift_dynamicCast();
    v17 = aBlock;
    v18 = v11;
    v19 = v12;
    if (aBlock)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  sub_25EB0EC08(v34);
  if (!*(v32 + 8))
  {
    v28 = sub_25EB0E484(MEMORY[0x277D84F90]);
    swift_beginAccess();
    *(v32 + 8) = v28;
  }

  v7 = v43;
  result = swift_beginAccess();
  if (*(v32 + 8))
  {
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v32 + 8);
    *(v32 + 8) = 0x8000000000000000;
    sub_25EB2C9A8(v7, v31, isUniquelyReferenced_nonNull_native);

    *(v32 + 8) = v41;
    swift_endAccess();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB2080C(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!a3)
  {
    v13 = 1;
    return v13 & 1;
  }

  v4 = a3;
  v5 = [a1 inputs];
  type metadata accessor for PSSGGraphInput(v5);
  v6 = sub_25EB6E3D8();

  v25 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25EB6E5F8())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v24 = v4;
    v9 = 0;
    v4 = (v6 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F8C6D90](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v10 type])
      {
      }

      else
      {
        sub_25EB6E6F8();
        sub_25EB6E728();
        sub_25EB6E738();
        sub_25EB6E708();
      }

      ++v9;
      if (v12 == i)
      {
        v14 = v25;
        v4 = v24;
        v8 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      goto LABEL_23;
    }

LABEL_34:

    v22 = MEMORY[0x277D84F90];
LABEL_35:
    v25 = v4;
    MEMORY[0x28223BE20](v21);
    v23[2] = &v25;
    v13 = sub_25EB231B8(sub_25EB31A18, v23, v22);

    return v13 & 1;
  }

  v15 = sub_25EB6E5F8();
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_23:
  v25 = v8;
  result = sub_25EB6E718();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8C6D90](v17, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = [v18 resource];

      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v15 != v17);

    v22 = v25;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB20B00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a4;
  LOBYTE(a4) = v7(v8, a3, a4);

  return a4 & 1;
}

void sub_25EB20C90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v40 = a1;
  v5 = sub_25EB0EE68(a1, *(v2 + v4), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v5)
  {
    swift_endAccess();
    return;
  }

  v6 = v5;
  swift_endAccess();
  v42 = MEMORY[0x277D84F90];
  v7 = [v6 sharedInputs];
  type metadata accessor for PSSGGraphInput(v7);
  v8 = sub_25EB6E3D8();

  if (v8 >> 62)
  {
    v9 = sub_25EB6E5F8();
    v36 = v6;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_36:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v6;
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = OBJC_IVAR___PSSGBuilder_resources;
    v12 = v8 & 0xC000000000000001;
    v38 = v9;
    v39 = v8 & 0xC000000000000001;
    v37 = v8;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x25F8C6D90](v10, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 resource];
      swift_beginAccess();
      v17 = *(v2 + v11);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = v16;
        v19 = sub_25EB6E7E8();

        if (!v19)
        {
          goto LABEL_6;
        }

        type metadata accessor for PSSGResource(v20);
        swift_dynamicCast();
        v21 = v41;

        if (!v41)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (!*(v17 + 16) || (v22 = sub_25EAFD114(v16), (v23 & 1) == 0))
        {
LABEL_6:

LABEL_7:
          swift_endAccess();
LABEL_8:
          v13 = v15;
          MEMORY[0x25F8C6A80]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25EB6E3F8();
            v12 = v39;
          }

          sub_25EB6E418();

          goto LABEL_11;
        }

        v21 = *(*(v17 + 56) + 8 * v22);

        if (!v21)
        {
          goto LABEL_7;
        }
      }

      swift_endAccess();
      v24 = [v21 producer];

      if (!v24)
      {
        goto LABEL_8;
      }

      v25 = [v24 session];
      v26 = sub_25EB6E268();
      v28 = v27;

      v29 = [v40 session];
      v30 = sub_25EB6E268();
      v32 = v31;

      if (v26 == v30 && v28 == v32)
      {

        v8 = v37;
      }

      else
      {
        v34 = sub_25EB6E988();

        v8 = v37;
        if ((v34 & 1) == 0)
        {
          v35 = v15;
          MEMORY[0x25F8C6A80]();
          v9 = v38;
          v12 = v39;
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25EB6E3F8();
            v12 = v39;
          }

          sub_25EB6E418();

          goto LABEL_11;
        }
      }

      v9 = v38;
      v12 = v39;
LABEL_11:
      if (v9 == ++v10)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
}

char *PSSGBuilder.resources(forGraph:)(uint64_t a1)
{
  v2 = [v1 externalSharedInputsForGraph_];
  type metadata accessor for PSSGGraphInput(v2);
  v3 = sub_25EB6E3D8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    v18 = sub_25EB0CDCC(v7);

    return v18;
  }

  v4 = sub_25EB6E5F8();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_25EB2514C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v19;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x25F8C6D90](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 resource];
      v11 = [v10 name];

      v12 = sub_25EB6E268();
      v14 = v13;

      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25EB2514C((v15 > 1), v16 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v4 != v6);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t (*PSSGBuilder.inputResources(forGraph:)(void *a1))(uint64_t)
{
  v3 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v4)
  {
    swift_endAccess();
    return 0;
  }

  v5 = v4;
  swift_endAccess();
  v6 = [v5 inputs];
  type metadata accessor for PSSGGraphInput(v6);
  v7 = sub_25EB6E3D8();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v15 = sub_25EB0CE64(v14);

    return v15;
  }

  v8 = sub_25EB6E5F8();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  v16 = MEMORY[0x277D84F90];
  result = sub_25EB6E718();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8C6D90](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 resource];

      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
    }

    while (v8 != v10);

    v14 = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void PSSGBuilder.waitResources(forGraph:isSessionLocal:)(void *a1, char a2)
{
  v3 = v2;
  v50 = MEMORY[0x277D84FA0];
  if ((a2 & 1) == 0)
  {
    v12 = [v2 externalSharedInputsForGraph_];
    type metadata accessor for PSSGGraphInput(v12);
    v10 = sub_25EB6E3D8();

    if (!(v10 >> 62))
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v5 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v6 = sub_25EB0EE68(a1, *&v3[v5], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v6)
  {
    swift_endAccess();
    v10 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

LABEL_4:
    v11 = sub_25EB6E5F8();
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v7 = v6;
  swift_endAccess();
  v8 = [v7 inputs];

  type metadata accessor for PSSGGraphInput(v9);
  v10 = sub_25EB6E3D8();

  if (v10 >> 62)
  {
    goto LABEL_4;
  }

LABEL_7:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_35:

    return;
  }

LABEL_8:
  if (v11 >= 1)
  {
    v13 = 0;
    v46 = v3;
    v47 = OBJC_IVAR___PSSGBuilder_resources;
    v45 = OBJC_IVAR___PSSGBuilder_graphs;
    v14 = &selRef_physicalFootprint;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8C6D90](v13, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v13 + 32);
      }

      v18 = v17;
      if (![v17 v14[491]])
      {
        v19 = [v18 resource];
        swift_beginAccess();
        v20 = *&v3[v47];
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = v19;
          v22 = sub_25EB6E7E8();

          if (!v22)
          {
            goto LABEL_26;
          }

          type metadata accessor for PSSGResource(v23);
          swift_dynamicCast();
          v24 = v48;

          if (!v48)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (!*(v20 + 16) || (v25 = sub_25EAFD114(v19), (v26 & 1) == 0))
          {
LABEL_26:

LABEL_27:
            swift_endAccess();
LABEL_28:
            v28 = [v18 resource];
            v29 = [v28 name];

            v30 = sub_25EB6E268();
            v32 = v31;

            v3 = v46;
            v33 = v30;
            v14 = &selRef_physicalFootprint;
            sub_25EB26244(v49, v33, v32);
LABEL_29:

            goto LABEL_11;
          }

          v24 = *(*(v20 + 56) + 8 * v25);

          if (!v24)
          {
            goto LABEL_27;
          }
        }

        swift_endAccess();
        v27 = [v24 producer];

        if (!v27)
        {
          goto LABEL_28;
        }

        sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
        if (sub_25EB6E518())
        {

          goto LABEL_11;
        }

        swift_beginAccess();
        v34 = sub_25EB0EE68(v27, *&v3[v45], sub_25EAFD168, type metadata accessor for PSSGGraph);
        if (!v34)
        {
          swift_endAccess();
LABEL_34:
          v37 = [v18 resource];
          v38 = [v37 name];

          v39 = sub_25EB6E268();
          v41 = v40;

          v42 = v39;
          v3 = v46;
          v43 = v41;
          v14 = &selRef_physicalFootprint;
          sub_25EB26244(v49, v42, v43);

          goto LABEL_29;
        }

        v35 = v34;
        swift_endAccess();
        v36 = [v35 v14[491]];

        if (v36 != 2)
        {
          goto LABEL_34;
        }

        v15 = [v3 waitResourcesForGraph:v27 isSessionLocal:a2 & 1];
        v16 = sub_25EB6E438();

        sub_25EB0F298(v16);
      }

LABEL_11:
      if (v11 == ++v13)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
}

uint64_t PSSGBuilder.waitResources(forGraph:)(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v44 = v4;
  v5 = sub_25EB0EE68(a1, *&v2[v4], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (v5)
  {
    v6 = v5;
    swift_endAccess();
    v46 = MEMORY[0x277D84FA0];
    a1 = [v6 waitInputs];
    type metadata accessor for PSSGResourceID(0);
    v7 = sub_25EB6E3D8();

    v43 = v6;
    if (v7 >> 62)
    {
      v8 = sub_25EB6E5F8();
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        if (v8 >= 1)
        {
          v9 = 0;
          v10 = OBJC_IVAR___PSSGBuilder_resources;
          v42 = MEMORY[0x277D84F90] >> 62;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x25F8C6D90](v9, v7);
            }

            else
            {
              v11 = *(v7 + 8 * v9 + 32);
            }

            v12 = v11;
            sub_25EB26394(v47, v12);

            swift_beginAccess();
            v13 = *&v2[v10];
            if ((v13 & 0xC000000000000001) != 0)
            {
              v14 = v12;
              v15 = sub_25EB6E7E8();

              if (!v15)
              {
                goto LABEL_23;
              }

              type metadata accessor for PSSGResource(v16);
              swift_dynamicCast();
              v17 = v45;
              if (!v45)
              {
                goto LABEL_23;
              }
            }

            else if (!*(v13 + 16) || (v18 = sub_25EAFD114(v12), (v19 & 1) == 0) || (v17 = *(*(v13 + 56) + 8 * v18)) == 0)
            {
LABEL_23:
              swift_endAccess();
LABEL_24:
              v20 = v12;
              goto LABEL_7;
            }

            swift_endAccess();
            v20 = [v17 producer];

            if (!v20)
            {
              goto LABEL_24;
            }

            swift_beginAccess();
            v21 = *&v2[v44];
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = v20;
              v23 = sub_25EB6E7E8();

              if (v23)
              {
                type metadata accessor for PSSGGraph(v24);
                swift_dynamicCast();
                v25 = v45;
                if (v45)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (*(v21 + 16))
            {
              v26 = sub_25EAFD168(v20);
              if (v27)
              {
                v25 = *(*(v21 + 56) + 8 * v26);
                if (v25)
                {
LABEL_28:
                  swift_endAccess();
                  v28 = [v25 type];

                  if (v28 == 2)
                  {
                    v29 = [v2 waitResourcesForGraph_];
                    if (v29)
                    {
                      v30 = v29;
                      sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
                      v31 = sub_25EB6E438();
                    }

                    else if (v42)
                    {
                      if (sub_25EB6E5F8())
                      {
                        sub_25EB0EBE0(MEMORY[0x277D84F90]);
                        v31 = v32;
                      }

                      else
                      {
                        v31 = MEMORY[0x277D84FA0];
                      }
                    }

                    else
                    {
                      v31 = MEMORY[0x277D84FA0];
                    }

                    sub_25EB0F39C(v31, type metadata accessor for PSSGResourceID, &qword_27FD11EA0, type metadata accessor for PSSGResourceID, sub_25EB26394);

                    v20 = v12;
                  }

                  else
                  {
                  }

                  goto LABEL_7;
                }
              }
            }

            swift_endAccess();

LABEL_7:
            ++v9;

            if (v8 == v9)
            {
              goto LABEL_43;
            }
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }

LABEL_43:

    return v46;
  }

  swift_endAccess();
  if (qword_27FD11B20 != -1)
  {
LABEL_45:
    swift_once();
  }

  v33 = sub_25EB6E1B8();
  __swift_project_value_buffer(v33, qword_27FD2EED0);
  v34 = a1;
  v35 = sub_25EB6E198();
  v36 = sub_25EB6E498();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47[0] = v39;
    *v37 = 136315394;
    *(v37 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD40, v47);
    *(v37 + 12) = 2112;
    *(v37 + 14) = v34;
    *v38 = v34;
    v40 = v34;
    _os_log_impl(&dword_25EA3A000, v35, v36, "%s: could not find graph for ID %@!", v37, 0x16u);
    sub_25EB0D660(v38, &qword_27FD120D0, &qword_25EB78E60);
    MEMORY[0x25F8C9C00](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x25F8C9C00](v39, -1, -1);
    MEMORY[0x25F8C9C00](v37, -1, -1);
  }

  return 0;
}

uint64_t PSSGBuilder.rootResources(forGraph:)(id a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___PSSGBuilder_cache];
  swift_beginAccess();
  v5 = *(v4 + 2);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = sub_25EAFD168(a1);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 8 * v6);
        swift_endAccess();

        return v8;
      }
    }
  }

  swift_endAccess();
  v9 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v76 = v9;
  v10 = sub_25EB0EE68(a1, *&v2[v9], sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (!v10)
  {
    swift_endAccess();
    if (qword_27FD11B20 == -1)
    {
LABEL_52:
      v56 = sub_25EB6E1B8();
      __swift_project_value_buffer(v56, qword_27FD2EED0);
      v57 = a1;
      v58 = sub_25EB6E198();
      v59 = sub_25EB6E498();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v81[0] = v62;
        *v60 = 136315394;
        *(v60 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD60, v81);
        *(v60 + 12) = 2112;
        *(v60 + 14) = v57;
        *v61 = v57;
        v63 = v57;
        _os_log_impl(&dword_25EA3A000, v58, v59, "%s: could not find graph for ID %@!", v60, 0x16u);
        sub_25EB0D660(v61, &qword_27FD120D0, &qword_25EB78E60);
        MEMORY[0x25F8C9C00](v61, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x25F8C9C00](v62, -1, -1);
        MEMORY[0x25F8C9C00](v60, -1, -1);
      }

      return 0;
    }

LABEL_64:
    swift_once();
    goto LABEL_52;
  }

  v11 = v10;
  swift_endAccess();
  v68 = MEMORY[0x277D84F90] >> 62;
  v69 = a1;
  if (MEMORY[0x277D84F90] >> 62 && sub_25EB6E5F8())
  {
    sub_25EB0EBE0(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v71 = v4;
  v80 = v12;
  a1 = [v11 waitInputs];
  type metadata accessor for PSSGResourceID(0);
  v13 = sub_25EB6E3D8();

  v70 = v11;
  if (v13 >> 62)
  {
    v14 = sub_25EB6E5F8();
    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_10:
      if (v14 >= 1)
      {
        v15 = 0;
        v16 = OBJC_IVAR___PSSGBuilder_resources;
        v77 = v13 & 0xC000000000000001;
        v73 = OBJC_IVAR___PSSGBuilder_resources;
        v74 = v13;
        v72 = v2;
        v75 = v14;
        while (1)
        {
          if (v77)
          {
            v19 = MEMORY[0x25F8C6D90](v15, v13);
          }

          else
          {
            v19 = *(v13 + 8 * v15 + 32);
          }

          v20 = v19;
          swift_beginAccess();
          v21 = *&v2[v16];
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = v20;
            v23 = sub_25EB6E7E8();

            if (!v23)
            {
              goto LABEL_12;
            }

            type metadata accessor for PSSGResource(v24);
            swift_dynamicCast();
            v25 = v79;
            if (!v79)
            {
              goto LABEL_12;
            }
          }

          else if (!*(v21 + 16) || (v26 = sub_25EAFD114(v20), (v27 & 1) == 0) || (v25 = *(*(v21 + 56) + 8 * v26)) == 0)
          {
LABEL_12:
            swift_endAccess();
LABEL_13:
            v17 = v20;
            sub_25EB26394(v81, v17);
            v18 = v81[0];

            goto LABEL_14;
          }

          swift_endAccess();
          v28 = [v25 producer];

          if (!v28)
          {
            goto LABEL_13;
          }

          swift_beginAccess();
          v29 = *&v2[v76];
          if ((v29 & 0xC000000000000001) != 0)
          {
            v30 = v28;
            v31 = sub_25EB6E7E8();

            if (!v31)
            {
              goto LABEL_38;
            }

            type metadata accessor for PSSGGraph(v32);
            swift_dynamicCast();
            v33 = v79;
            if (!v79)
            {
              goto LABEL_38;
            }
          }

          else if (!*(v29 + 16) || (v34 = sub_25EAFD168(v28), (v35 & 1) == 0) || (v33 = *(*(v29 + 56) + 8 * v34)) == 0)
          {
LABEL_38:
            swift_endAccess();
            if (qword_27FD11B20 != -1)
            {
              swift_once();
            }

            v43 = sub_25EB6E1B8();
            __swift_project_value_buffer(v43, qword_27FD2EED0);
            v44 = v28;
            v45 = sub_25EB6E198();
            v46 = sub_25EB6E498();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v81[0] = v49;
              *v47 = 136315394;
              *(v47 + 4) = sub_25EAFC354(0xD000000000000018, 0x800000025EB8DD60, v81);
              *(v47 + 12) = 2112;
              *(v47 + 14) = v44;
              *v48 = v28;
              v50 = v44;
              _os_log_impl(&dword_25EA3A000, v45, v46, "%s: could not find graph for ID %@!", v47, 0x16u);
              sub_25EB0D660(v48, &qword_27FD120D0, &qword_25EB78E60);
              v51 = v48;
              v16 = v73;
              MEMORY[0x25F8C9C00](v51, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v49);
              v52 = v49;
              v2 = v72;
              MEMORY[0x25F8C9C00](v52, -1, -1);
              MEMORY[0x25F8C9C00](v47, -1, -1);
            }

            else
            {
            }

            v13 = v74;
            v14 = v75;
            goto LABEL_14;
          }

          swift_endAccess();
          v36 = [v33 waitInputs];
          v37 = sub_25EB6E3D8();

          if (v37 >> 62)
          {
            v38 = sub_25EB6E5F8();
          }

          else
          {
            v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v38)
          {
            v39 = [v2 rootResourcesForGraph_];
            if (v39)
            {
              v40 = v39;
              sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
              v41 = sub_25EB6E438();

              v42 = v41;
            }

            else if (v68 && (v55 = MEMORY[0x277D84F90], sub_25EB6E5F8()))
            {
              sub_25EB0EBE0(v55);
            }

            else
            {
              v42 = MEMORY[0x277D84FA0];
            }

            sub_25EB0F39C(v42, type metadata accessor for PSSGResourceID, &qword_27FD11EA0, type metadata accessor for PSSGResourceID, sub_25EB26394);

            v14 = v75;
            v16 = v73;
          }

          else
          {
            v53 = v20;
            sub_25EB26394(v81, v53);

            v2 = v72;
            v54 = v81[0];

            v14 = v75;
          }

LABEL_14:
          if (v14 == ++v15)
          {
            goto LABEL_58;
          }
        }
      }

      __break(1u);
      goto LABEL_64;
    }
  }

LABEL_58:

  if (!*(v71 + 2))
  {
    v64 = sub_25EB0E57C(MEMORY[0x277D84F90]);
    swift_beginAccess();
    *(v71 + 2) = v64;
  }

  v8 = v80;
  result = swift_beginAccess();
  if (*(v71 + 2))
  {
    swift_bridgeObjectRetain_n();
    v66 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v71 + 2);
    *(v71 + 2) = 0x8000000000000000;
    sub_25EB2CB14(v80, v66, isUniquelyReferenced_nonNull_native, &unk_27FD11E90, &unk_25EB78CD0);

    *(v71 + 2) = v78;
    swift_endAccess();

    return v8;
  }

  __break(1u);
  return result;
}

id sub_25EB22B20(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  if (v8)
  {
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
    v9 = sub_25EB6E428();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void PSSGBuilder.graphs(forExecSession:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v29 = MEMORY[0x277D84F90];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v26 = v7;
  v14 = (v7 + 64) >> 6;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_25EB6E808() || (type metadata accessor for PSSGGraphID(0), swift_dynamicCast(), v19 = v28, v17 = v13, v18 = v8, !v28))
    {
LABEL_26:
      sub_25EB0EC08(v9);
      sub_25EB0CF6C(v29);

      return;
    }

LABEL_20:
    v20 = [v19 session];
    v21 = sub_25EB6E268();
    v23 = v22;

    if (v21 == a1 && v23 == a2)
    {

LABEL_9:
      sub_25EB6E6F8();
      sub_25EB6E728();
      sub_25EB6E738();
      sub_25EB6E708();
      goto LABEL_10;
    }

    v25 = sub_25EB6E988();

    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v13 = v17;
    v8 = v18;
  }

  v15 = v13;
  v16 = v8;
  v17 = v13;
  if (v8)
  {
LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v9 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_26;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t PSSGBuilder.isWaitInput(_:forGraph:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v8 = sub_25EB0EE68(a3, *(v3 + v7), sub_25EAFD168, type metadata accessor for PSSGGraph);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    v10 = [v9 inputs];

    type metadata accessor for PSSGGraphInput(v11);
    v12 = sub_25EB6E3D8();

    if (v12 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25EB6E5F8())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F8C6D90](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 resource];
        v19 = a1;
        v20 = a2;
        v21 = [v18 name];

        v22 = sub_25EB6E268();
        v24 = v23;

        a2 = v20;
        a1 = v19;
        if (v22 == v19 && v24 == a2)
        {
        }

        else
        {
          v26 = sub_25EB6E988();

          if ((v26 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        v27 = [v16 type];

        if (!v27)
        {

          return 1;
        }

LABEL_6:
        ++v14;
        if (v17 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

uint64_t sub_25EB231B8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x25F8C6D90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_25EB6E5F8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id PSSGBuilder.producerGraph(forResource:)(void *a1)
{
  v3 = OBJC_IVAR___PSSGBuilder_resources;
  swift_beginAccess();
  v4 = sub_25EB0EE68(a1, *(v1 + v3), sub_25EAFD114, type metadata accessor for PSSGResource);
  if (v4)
  {
    v5 = v4;
    swift_endAccess();
    v6 = [v5 producer];
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v6;
}

Swift::OpaquePointer_optional __swiftcall PSSGBuilder.graphsInTopologicalWaitOrder()()
{
  v2 = v0;
  v3 = v0 + OBJC_IVAR___PSSGBuilder_cache;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4)
  {

    goto LABEL_186;
  }

  v146 = v3;
  v6 = sub_25EB0E680(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR___PSSGBuilder_graphs;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v4 = 0;
    v10 = 0;
    v11 = sub_25EB6E768() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v8 + 32);
    v4 = ~v12;
    v9 = v8 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v8 + 64);
    v11 = v8;
  }

  v148 = 0;
  v15 = 0;
  v16 = (v4 + 64) >> 6;
  v147 = vdupq_n_s64(MEMORY[0x277D84F90]);
  v151 = v2;
  v152 = v9;
  v153 = v16;
  v155 = v11;
LABEL_10:
  v17 = v15;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v18 = v17;
  v19 = v10;
  v15 = v17;
  if (!v10)
  {
    while (1)
    {
      v15 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v15 >= v16)
      {
        goto LABEL_83;
      }

      v19 = *(v9 + 8 * v15);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

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
    goto LABEL_202;
  }

LABEL_15:
  v20 = (v19 - 1) & v19;
  v21 = (v15 << 9) | (8 * __clz(__rbit64(v19)));
  v4 = *(*(v11 + 56) + v21);
  v22 = *(*(v11 + 48) + v21);
  v159 = v4;
  v161 = v22;
  if (v22)
  {
    while (1)
    {
      v157 = v20;
      if (*(v6 + 16))
      {
        v4 = v6;
        sub_25EAFD168(v161);
        if (v27)
        {
          v1 = v159;
          goto LABEL_33;
        }
      }

      v28 = v161;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v163 = v6;
      v4 = v6;
      v30 = sub_25EAFD168(v28);
      v32 = *(v6 + 16);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      v1 = v159;
      if (v34)
      {
        goto LABEL_203;
      }

      v36 = v31;
      if (*(v6 + 24) < v35)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v4 = &v163;
      v40 = v30;
      sub_25EB2DEB0();
      v30 = v40;
      v6 = v163;
      if ((v36 & 1) == 0)
      {
LABEL_30:
        *(v6 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(*(v6 + 48) + 8 * v30) = v28;
        *(*(v6 + 56) + 16 * v30) = v147;
        v41 = *(v6 + 16);
        v34 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v34)
        {
          goto LABEL_206;
        }

        *(v6 + 16) = v42;
        goto LABEL_32;
      }

LABEL_28:
      v38 = (*(v6 + 56) + 16 * v30);
      v4 = *v38;
      v39 = MEMORY[0x277D84F90];
      *v38 = MEMORY[0x277D84F90];
      v38[1] = v39;

LABEL_32:
      v2 = v151;
LABEL_33:
      v43 = [v1 waitInputs];
      type metadata accessor for PSSGResourceID(0);
      v44 = sub_25EB6E3D8();

      if (!(v44 >> 62))
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v45 = sub_25EB6E5F8();
      if (v45)
      {
LABEL_38:
        v46 = 0;
        v150 = OBJC_IVAR___PSSGBuilder_resources;
        v149 = v45;
        while (1)
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x25F8C6D90](v46, v44);
          }

          else
          {
            if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v47 = *(v44 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_201;
          }

          swift_beginAccess();
          v4 = *(v2 + v150);
          if ((v4 & 0xC000000000000001) != 0)
          {
            v50 = v48;
            v4 = sub_25EB6E7E8();

            v45 = v149;
            if (!v4)
            {
              goto LABEL_39;
            }

            v164 = v4;
            type metadata accessor for PSSGResource(v51);
            swift_dynamicCast();
            v4 = v165;
            if (!v165)
            {
              goto LABEL_39;
            }
          }

          else if (!*(v4 + 16) || (v52 = sub_25EAFD114(v48), (v53 & 1) == 0) || (v4 = *(*(v4 + 56) + 8 * v52)) == 0)
          {
LABEL_39:
            swift_endAccess();
            goto LABEL_40;
          }

          swift_endAccess();
          v1 = [v4 producer];

          if (v1)
          {
            v4 = v6;
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v165 = v6;
            v56 = sub_25EAFD168(v161);
            v57 = *(v6 + 16);
            v58 = (v55 & 1) == 0;
            v59 = v57 + v58;
            if (__OFADD__(v57, v58))
            {
              goto LABEL_207;
            }

            v60 = v55;
            if (*(v4 + 24) >= v59)
            {
              if (v54)
              {
                if ((v55 & 1) == 0)
                {
                  goto LABEL_208;
                }
              }

              else
              {
                v4 = &v165;
                sub_25EB2DEB0();
                if ((v60 & 1) == 0)
                {
                  goto LABEL_208;
                }
              }
            }

            else
            {
              sub_25EB2C090(v59, v54);
              v4 = v165;
              v61 = sub_25EAFD168(v161);
              if ((v60 & 1) != (v62 & 1))
              {
                goto LABEL_214;
              }

              v56 = v61;
              if ((v60 & 1) == 0)
              {
                goto LABEL_208;
              }
            }

            v6 = v165;
            v163 = *(*(v165 + 56) + 16 * v56);
            v1 = v1;
            MEMORY[0x25F8C6A80]();
            if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_25EB6E3F8();
            }

            sub_25EB6E418();
            if (v163)
            {
              v63 = *(&v163 + 1);
              v4 = v6;
              v64 = (*(v6 + 56) + 16 * v56);
              *v64 = v163;
              v64[1] = v63;
            }

            else
            {
              v4 = v6;

              sub_25EB2C49C(v56, v6);
            }

            sub_25EB318AC(v148, 0);
            v65 = swift_isUniquelyReferenced_nonNull_native();
            *&v163 = v4;
            v66 = sub_25EAFD168(v1);
            v68 = *(v4 + 16);
            v69 = (v67 & 1) == 0;
            v34 = __OFADD__(v68, v69);
            v70 = v68 + v69;
            if (v34)
            {
              goto LABEL_209;
            }

            v71 = v67;
            if (*(v4 + 24) >= v70)
            {
              if (v65)
              {
                goto LABEL_72;
              }

              v79 = v66;
              sub_25EB2DEB0();
              v66 = v79;
              v6 = v163;
              if ((v71 & 1) == 0)
              {
LABEL_73:
                *(v6 + 8 * (v66 >> 6) + 64) |= 1 << v66;
                *(*(v6 + 48) + 8 * v66) = v1;
                *(*(v6 + 56) + 16 * v66) = v147;
                v73 = *(v6 + 16);
                v34 = __OFADD__(v73, 1);
                v74 = v73 + 1;
                if (v34)
                {
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
                  goto LABEL_214;
                }

                v75 = v66;
                *(v6 + 16) = v74;
                v76 = v1;
                v66 = v75;
              }
            }

            else
            {
              sub_25EB2C090(v70, v65);
              type metadata accessor for PSSGGraphID(0);
              v6 = v163;
              v66 = sub_25EAFD168(v1);
              if ((v71 & 1) != (v72 & 1))
              {
                goto LABEL_215;
              }

LABEL_72:
              if ((v71 & 1) == 0)
              {
                goto LABEL_73;
              }
            }

            v77 = *(v6 + 56) + 16 * v66;
            v78 = v161;
            MEMORY[0x25F8C6A80]();
            if (*((*(v77 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v77 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_25EB6E3F8();
            }

            v4 = v77 + 8;
            sub_25EB6E418();

            v148 = sub_25EB24528;
            v48 = v1;
            v2 = v151;
            v1 = v159;
            v45 = v149;
            goto LABEL_40;
          }

          v1 = v159;
LABEL_40:

          ++v46;
          v9 = v152;
          if (v49 == v45)
          {

            v16 = v153;
            v11 = v155;
            v10 = v157;
            goto LABEL_10;
          }
        }
      }

LABEL_35:

      v17 = v15;
      v11 = v155;
      v10 = v157;
      v16 = v153;
      if ((v155 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v4 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v23 = sub_25EB6E7F8();
      if (v23)
      {
        v4 = v24;
        v165 = v23;
        type metadata accessor for PSSGGraphID(0);
        v25 = swift_dynamicCast();
        v26 = v163;
        v165 = v4;
        type metadata accessor for PSSGGraph(v25);
        swift_dynamicCast();
        v159 = v163;
        v15 = v17;
        v20 = v10;
        v161 = v26;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_83;
    }

    sub_25EB2C090(v35, isUniquelyReferenced_nonNull_native);
    v4 = v163;
    v30 = sub_25EAFD168(v28);
    if ((v36 & 1) != (v37 & 1))
    {
LABEL_214:
      type metadata accessor for PSSGGraphID(0);
      sub_25EB6E9B8();
      __break(1u);
LABEL_215:
      v145 = sub_25EB6E9B8();
      __break(1u);
      goto LABEL_216;
    }

LABEL_27:
    v6 = v163;
    if ((v36 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_83:
  sub_25EB0EC08(v11);
  v80 = MEMORY[0x277D84F90];
  v81 = sub_25EB0E794(MEMORY[0x277D84F90]);
  *&v163 = v80;
  v165 = v80;
  v82 = v6 + 64;
  v83 = 1 << *(v6 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v6 + 64);
  v1 = (v83 + 63) >> 6;
  v154 = v6;

  v86 = 0;
  if (v85)
  {
    goto LABEL_88;
  }

  while (1)
  {
LABEL_89:
    v87 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
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
      __break(1u);
      goto LABEL_197;
    }

    if (v87 >= v1)
    {
      break;
    }

    v85 = *(v82 + 8 * v87);
    ++v86;
    if (v85)
    {
      while (1)
      {
        v88 = __clz(__rbit64(v85)) | (v87 << 6);
        v89 = *(*(v154 + 48) + 8 * v88);
        v90 = *(*(v154 + 56) + 16 * v88);
        v91 = v90 >> 62 ? sub_25EB6E5F8() : *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v92 = v89;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v81;
        v4 = v81;
        v94 = sub_25EAFD168(v92);
        v96 = *(v81 + 16);
        v97 = (v95 & 1) == 0;
        v34 = __OFADD__(v96, v97);
        v98 = v96 + v97;
        if (v34)
        {
          break;
        }

        v99 = v95;
        if (*(v81 + 24) >= v98)
        {
          if ((v93 & 1) == 0)
          {
            v4 = &v164;
            v104 = v94;
            sub_25EB2DD54();
            v94 = v104;
          }
        }

        else
        {
          sub_25EB2BE2C(v98, v93);
          v4 = v164;
          v94 = sub_25EAFD168(v92);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_214;
          }
        }

        v85 &= v85 - 1;
        v101 = v164;
        if (v99)
        {
          v81 = v164;
          *(v164[7] + 8 * v94) = v91;

          v86 = v87;
          if (!v85)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v164[(v94 >> 6) + 8] |= 1 << v94;
          *(v101[6] + 8 * v94) = v92;
          *(v101[7] + 8 * v94) = v91;
          v102 = v101[2];
          v34 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v34)
          {
            goto LABEL_204;
          }

          v81 = v101;
          v101[2] = v103;
          v86 = v87;
          if (!v85)
          {
            goto LABEL_89;
          }
        }

LABEL_88:
        v87 = v86;
      }

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
      v144 = sub_25EB6E5F8();
      goto LABEL_182;
    }
  }

  v1 = v154;

  v105 = 1 << *(v81 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v81 + 64);
  v108 = (v105 + 63) >> 6;

  v109 = 0;
  v110 = MEMORY[0x277D84F90];
  if (!v107)
  {
    goto LABEL_110;
  }

  do
  {
LABEL_108:
    while (1)
    {
      v111 = __clz(__rbit64(v107));
      v107 &= v107 - 1;
      v112 = v111 | (v109 << 6);
      if (!*(*(v81 + 56) + 8 * v112))
      {
        break;
      }

      if (!v107)
      {
        goto LABEL_110;
      }
    }

    v114 = *(*(v81 + 48) + 8 * v112);
    MEMORY[0x25F8C6A80]();
    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25EB6E3F8();
    }

    v4 = &v163;
    sub_25EB6E418();

    v110 = v163;
  }

  while (v107);
  while (1)
  {
LABEL_110:
    v113 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      goto LABEL_188;
    }

    if (v113 >= v108)
    {
      break;
    }

    v107 = *(v81 + 64 + 8 * v113);
    ++v109;
    if (v107)
    {
      v109 = v113;
      goto LABEL_108;
    }
  }

  v115 = v81;

  v162 = MEMORY[0x277D84F90];
LABEL_119:
  while (2)
  {
    v116 = v110 >> 62;
    if (!(v110 >> 62))
    {
      if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_180;
      }

LABEL_121:
      if ((v110 & 0xC000000000000001) != 0)
      {
        v117 = MEMORY[0x25F8C6D90](0, v110);
      }

      else
      {
        if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_189;
        }

        v117 = *(v110 + 32);
      }

      v118 = v117;
      if (v116)
      {
        if (v110 < 0)
        {
          v4 = v110;
        }

        else
        {
          v4 = v110 & 0xFFFFFFFFFFFFFF8;
        }

        if (!sub_25EB6E5F8())
        {
          goto LABEL_198;
        }

        if (sub_25EB6E5F8() < 1)
        {
          goto LABEL_199;
        }

        v119 = sub_25EB6E5F8();
      }

      else
      {
        v119 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v119)
        {
          goto LABEL_198;
        }
      }

      v4 = v119 - 1;
      if (__OFSUB__(v119, 1))
      {
        goto LABEL_190;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v163 = v110;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v116)
        {
          if (v4 > *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_140:
            v110 = sub_25EB6E6D8();
            *&v163 = v110;
          }

          sub_25EB30D6C(0, 1, 0);
          *&v163 = v110;
          v121 = v118;
          v4 = &v165;
          MEMORY[0x25F8C6A80]();
          if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25EB6E3F8();
          }

          sub_25EB6E418();
          if (!*(v1 + 16))
          {
            goto LABEL_191;
          }

          v162 = v165;
          v4 = v1;
          v122 = sub_25EAFD168(v121);
          if ((v123 & 1) == 0)
          {
            goto LABEL_192;
          }

          v4 = *(*(v1 + 56) + 16 * v122 + 8);
          if (v4 >> 62)
          {
            v124 = sub_25EB6E5F8();
            if (v124)
            {
LABEL_154:
              v160 = (v4 & 0xC000000000000001);
              v156 = v4 & 0xFFFFFFFFFFFFFF8;

              v1 = 0;
              v158 = v4;
              while (1)
              {
                if (v160)
                {
                  v125 = MEMORY[0x25F8C6D90](v1, v4);
                }

                else
                {
                  if (v1 >= *(v156 + 16))
                  {
                    goto LABEL_200;
                  }

                  v125 = *(v4 + 8 * v1 + 32);
                }

                v126 = v125;
                v127 = v1 + 1;
                if (__OFADD__(v1, 1))
                {
                  goto LABEL_193;
                }

                v128 = v121;
                v4 = v115;
                v129 = swift_isUniquelyReferenced_nonNull_native();
                v164 = v4;
                v131 = sub_25EAFD168(v126);
                v132 = *(v4 + 16);
                v133 = (v130 & 1) == 0;
                v134 = v132 + v133;
                if (__OFADD__(v132, v133))
                {
                  goto LABEL_194;
                }

                v135 = v130;
                if (*(v4 + 24) >= v134)
                {
                  if (v129)
                  {
                    if ((v130 & 1) == 0)
                    {
                      goto LABEL_195;
                    }
                  }

                  else
                  {
                    v4 = &v164;
                    sub_25EB2DD54();
                    if ((v135 & 1) == 0)
                    {
                      goto LABEL_195;
                    }
                  }
                }

                else
                {
                  sub_25EB2BE2C(v134, v129);
                  v4 = v164;
                  v136 = sub_25EAFD168(v126);
                  if ((v135 & 1) != (v137 & 1))
                  {
                    goto LABEL_214;
                  }

                  v131 = v136;
                  if ((v135 & 1) == 0)
                  {
                    goto LABEL_195;
                  }
                }

                v115 = v164;
                v138 = v164[7];
                v139 = *(v138 + 8 * v131);
                v34 = __OFSUB__(v139, 1);
                v140 = v139 - 1;
                if (v34)
                {
                  goto LABEL_196;
                }

                *(v138 + 8 * v131) = v140;
                if (*(v115 + 16))
                {
                  v141 = sub_25EAFD168(v126);
                  v121 = v128;
                  if ((v142 & 1) == 0 || *(*(v115 + 56) + 8 * v141))
                  {
                  }

                  else
                  {
                    v143 = v126;
                    MEMORY[0x25F8C6A80]();
                    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_25EB6E3F8();
                      v121 = v128;
                    }

                    sub_25EB6E418();

                    v110 = v163;
                  }
                }

                else
                {

                  v121 = v128;
                }

                ++v1;
                v4 = v158;
                if (v127 == v124)
                {

                  v1 = v154;
                  goto LABEL_119;
                }
              }
            }
          }

          else
          {
            v124 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v124)
            {
              goto LABEL_154;
            }
          }

          continue;
        }
      }

      else if (!v116)
      {
        goto LABEL_140;
      }

      sub_25EB6E5F8();
      goto LABEL_140;
    }

    break;
  }

  if (sub_25EB6E5F8())
  {
    if (!sub_25EB6E5F8())
    {
      goto LABEL_212;
    }

    if (!sub_25EB6E5F8())
    {
      goto LABEL_213;
    }

    goto LABEL_121;
  }

LABEL_180:

  v4 = v162;
  if (v162 >> 62)
  {
    goto LABEL_210;
  }

  v144 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_182:
  if (v144 == *(v1 + 16))
  {
  }

  else
  {

    v4 = 0;
  }

  *(v146 + 24) = v4;

  sub_25EB318AC(v148, 0);
LABEL_186:
  v145 = v4;
LABEL_216:
  result.value._rawValue = v145;
  result.is_nil = v5;
  return result;
}

void sub_25EB24528(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
}

uint64_t sub_25EB245A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    for (i = (a1 + 64); ; i += 5)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v10 = *(v3 - 2);
      v9 = *(v3 - 1);
      v11 = *v3;
      v12 = *(i - 4) == *(v3 - 4) && *(i - 3) == *(v3 - 3);
      if (!v12 && (sub_25EB6E988() & 1) == 0)
      {
        return 0;
      }

      if (!v7)
      {
        break;
      }

      if (!v9)
      {
        return 0;
      }

      if (v6 != v10 || v7 != v9)
      {
        v13 = sub_25EB6E988();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v8 != v11)
      {
        return 0;
      }

LABEL_7:
      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v9)
    {
      return result;
    }

LABEL_6:
    if (v8 != v11)
    {
      return result;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_25EB246BC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v26 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v30 = a2;
  v31 = a2 + 56;
  v27 = v6;
  v28 = result;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v29 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 32 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = a2;
      sub_25EB6EA28();

      sub_25EB6E2D8();
      sub_25EB6E2D8();
      v16 = sub_25EB6EA58();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      v20 = *(v30 + 48);
      while (1)
      {
        v21 = (v20 + 32 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v12 && v21[1] == v11;
        if (v24 || (sub_25EB6E988() & 1) != 0)
        {
          v25 = v22 == v14 && v23 == v13;
          if (v25 || (sub_25EB6E988() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v19;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v5 = v29;
      a2 = v30;
      v6 = v27;
      result = v28;
      if (!v29)
      {
        goto LABEL_8;
      }
    }

LABEL_29:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v26 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB248F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 32 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    sub_25EB6EA28();

    sub_25EB6E2D8();
    v33 = v17;
    sub_25EB6EA48();
    if (v16)
    {
      sub_25EB6E2D8();
    }

    v18 = sub_25EB6EA58();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_34:

      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v23 = (v22 + 32 * v20);
      v25 = v23[2];
      v24 = v23[3];
      v26 = *v23 == v15 && v23[1] == v14;
      if (!v26 && (sub_25EB6E988() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v24)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_31;
      }

LABEL_18:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    v27 = v25 == v33 && v24 == v16;
    if (!v27 && (sub_25EB6E988() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:

    v4 = v29;
    result = v30;
    v7 = v31;
    v2 = a2;
    v8 = v28;
  }

  while (v31);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_25EB24B58(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_25EB2E1A0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = type metadata accessor for PSSGResourceID(0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_25EB6E508();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_25EB6E518();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}