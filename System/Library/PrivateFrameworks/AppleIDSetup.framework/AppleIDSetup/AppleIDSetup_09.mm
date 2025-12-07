uint64_t sub_240658CB0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t CustomTransport.Interface.__allocating_init(receiver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CustomTransport.Interface.init(receiver:)(a1, a2);
  return v4;
}

uint64_t sub_240658D50(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA978, &qword_24076F118);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v20 - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA980, &qword_24076F120);
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA988, &qword_24076F128);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  v16 = *(v15 - 8);
  (*(v16 + 56))(v14, 1, 1, v15);
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA958, &qword_24076F0F8);
  (*(v3 + 104))(v5, *MEMORY[0x277D85778], v22);
  sub_24075A484();
  (*(v6 + 32))(v2 + *(*v2 + 96), v8, v23);
  sub_2405B044C(v14, v12, &qword_27E4BA988, &qword_24076F128);
  result = (*(v16 + 48))(v12, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v2 + *(*v2 + 104), v12, v15);
    v18 = (v2 + *(*v2 + 112));
    v19 = v21;
    *v18 = v20;
    v18[1] = v19;
    sub_2405B8A50(v14, &qword_27E4BA988, &qword_24076F128);
    return v2;
  }

  return result;
}

uint64_t *CustomTransport.Interface.init(receiver:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v26 = *v2;
  v24 = *(v26 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v23 = sub_24075A404();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v21 = &v19 - v4;
  v25 = sub_24075A474();
  v22 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v19 - v5;
  v7 = sub_24075A434();
  v8 = sub_24075A714();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = *(v7 - 8);
  (*(v15 + 56))(&v19 - v13, 1, 1, v7);
  v27 = v24;
  v28 = *(v26 + 88);
  v29 = v14;
  (*(v3 + 104))(v21, *MEMORY[0x277D85778], v23);
  sub_24075A484();
  (*(v22 + 32))(v2 + *(*v2 + 96), v6, v25);
  (*(v9 + 16))(v12, v14, v8);
  result = (*(v15 + 48))(v12, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v2 + *(*v2 + 104), v12, v7);
    v17 = (v2 + *(*v2 + 112));
    v18 = v20;
    *v17 = v19;
    v17[1] = v18;
    (*(v9 + 8))(v14, v8);
    return v2;
  }

  return result;
}

uint64_t sub_2406594B4(uint64_t a1, uint64_t a2)
{
  sub_2405B8A50(a2, &qword_27E4BA988, &qword_24076F128);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_240659590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v5 = sub_24075A434();
  v6 = sub_24075A714();
  (*(*(v6 - 8) + 8))(a2, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a2, a1, v5);
  v7 = *(v9 + 56);

  return v7(a2, 0, 1, v5);
}

uint64_t sub_2406596DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_240659728, 0, 0);
}

uint64_t sub_240659728()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_240659824;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x8000000240787EB0, sub_240659DB8, v2, v4);
}

uint64_t sub_240659824()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_240659960, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_240659960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2406599C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA958, &qword_24076F0F8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA960, &qword_24076F100);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v6 + 56);
  sub_2405B044C(a3, v8, qword_27E4BA650, &qword_24076ED10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA968, &qword_24076F108);
  (*(*(v14 - 8) + 16))(&v8[v13], a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA970, &qword_24076F110);
  sub_24075A414();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_240659B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v15 = a1;
  v3 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v4 = sub_24075A374();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v7 = &v14 - v6;
  v8 = sub_24075A3E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(TupleTypeMetadata2 + 48);
  (*(*(v3 - 8) + 16))(v7, v14, v3);
  (*(*(v4 - 8) + 16))(&v7[v12], v15, v4);
  sub_24075A434();
  sub_24075A414();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_240659DC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240659DE4, 0, 0);
}

uint64_t sub_240659DE4()
{
  v1 = (v0[4] + *(*v0[4] + 112));
  v2 = *v1;
  v0[5] = v1[1];

  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_240659F04;
  v4 = v0[2];
  v5 = v0[3];

  return v7(v4, v5);
}

uint64_t sub_240659F04()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24065A07C;
  }

  else
  {
    v2 = sub_24065A018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24065A018()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24065A07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CustomTransport.Interface.deinit()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v2 = sub_24075A474();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_24075A434();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t CustomTransport.Interface.__deallocating_deinit()
{
  CustomTransport.Interface.deinit();

  return swift_deallocClassInstance();
}

uint64_t CustomTransport.Interface<>.init(receiver:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA648, &qword_24076ED00);
  swift_allocObject();
  return sub_240658D50(&unk_24076ECF8, v4);
}

uint64_t sub_24065A308(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v6 = sub_240759744();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  type metadata accessor for V1Command(0);
  v7 = swift_task_alloc();
  v3[6] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[7] = v8;
  v9 = *(v8 + 44);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v3[8] = v10;
  *v10 = v3;
  v10[1] = sub_24065A4C0;

  return v12(v7, a2 + v9);
}

uint64_t sub_24065A4C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24065A874;
  }

  else
  {
    v2 = sub_24065A5D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24065A5D4()
{
  sub_2407597A4();
  v1 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v2 = sub_2405BB3F4(0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v26 = v1;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_24065B728(v4, v1);

LABEL_4:
    v5 = sub_2405BB3F4(1);
    if (v6)
    {
      v7 = v5;
      v26 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v7, v1);
    }

    v8 = sub_2405BB3F4(2);
    if (v9)
    {
      v10 = v8;
      v26 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v10, v1);
    }

    v11 = sub_2405BB3F4(3);
    if (v12)
    {
      v13 = v11;
      v26 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v13, v1);
    }

    v15 = v0[4];
    v14 = v0[5];
    v4 = v0[3];
    sub_240759724();
    sub_240759704();
    v17 = v16;
    (*(v15 + 8))(v14, v4);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v18 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v18 < 1.84467441e19)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    sub_24065BBDC();
    v1 = v26;
  }

  v19 = v0[6];
  v20 = v0[7];
  v21 = v0[2];
  v22 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2405BCB30(v22, 0, isUniquelyReferenced_nonNull_native);

  sub_24065C7E4(v19, v21 + v20[11]);
  *(v21 + v20[9]) = 1;
  *(v21 + v20[10]) = v1;

  v24 = v0[1];

  return v24();
}

uint64_t sub_24065A874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CustomTransport.Interface<>.receiveIncoming(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_240759744();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BA650, &qword_24076ED10);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24065A9EC, 0, 0);
}

uint64_t sub_24065A9EC()
{
  sub_2407597A4();
  v1 = sub_2405BD7B0(MEMORY[0x277D84F90]);
  v2 = sub_2405BB3F4(0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v30 = v1;
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_24065B728(v4, v1);

LABEL_4:
    v5 = sub_2405BB3F4(1);
    if (v6)
    {
      v7 = v5;
      v30 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v7, v1);
    }

    v8 = sub_2405BB3F4(2);
    if (v9)
    {
      v10 = v8;
      v30 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v10, v1);
    }

    v11 = sub_2405BB3F4(3);
    if (v12)
    {
      v13 = v11;
      v30 = v1;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_24065BBDC();
      }

      sub_24065B728(v13, v1);
    }

    v15 = v0[6];
    v14 = v0[7];
    v4 = v0[5];
    sub_240759724();
    sub_240759704();
    v17 = v16;
    (*(v15 + 8))(v14, v4);
    v18 = v17 * 1000.0;
    if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v18 <= -1.0)
    {
      goto LABEL_23;
    }

    if (v18 < 1.84467441e19)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    sub_24065BBDC();
    v1 = v30;
  }

  v19 = v0[10];
  v20 = v0[8];
  v21 = v0[3];
  v22 = v0[4];
  v23 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2405BCB30(v23, 0, isUniquelyReferenced_nonNull_native);

  sub_24065BDE4(v21, v19 + v20[11]);
  *(v19 + v20[9]) = 1;
  *(v19 + v20[10]) = v1;
  v25 = swift_task_alloc();
  v0[11] = v25;
  *(v25 + 16) = v22;
  *(v25 + 24) = v19;
  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  v26[1] = sub_24065AD04;
  v28 = v0[8];
  v27 = v0[9];

  return MEMORY[0x2822008A0](v27, 0, 0, 0xD000000000000013, 0x8000000240787EB0, sub_24065BE48, v25, v28);
}

uint64_t sub_24065AD04()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24065AEF8;
  }

  else
  {

    v2 = sub_24065AE20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24065AE20()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[2];
  sub_2405B8A50(v0[10], qword_27E4BA650, &qword_24076ED10);
  sub_24065BDE4(v1 + *(v2 + 44), v3);
  sub_2405B8A50(v1, qword_27E4BA650, &qword_24076ED10);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24065AEF8()
{
  v1 = *(v0 + 80);

  sub_2405B8A50(v1, qword_27E4BA650, &qword_24076ED10);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CustomTransport.Activated.base.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_24057B5BC(v2, v3);
  sub_24057B5BC(v4, v5);
}

void *CustomTransport.Activated.messageSessionTemplate.getter()
{
  v0 = sub_24065BD28();
  v1 = v0;
  return v0;
}

uint64_t CustomTransport.Activated.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = *(v3 + 32);
  *(v4 + 32) = a3;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(v3 + 48);
  return MEMORY[0x2822009F8](sub_24065B0A4, 0, 0);
}

void sub_24065B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 56))
  {
    type metadata accessor for CustomTransport.Failure(0, *(*(v4 + 32) + 16), *(*(v4 + 32) + 24), a4);
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
    v6 = *(v4 + 8);

    v6();
  }

  else if (*(v4 + 40))
  {
    v7 = swift_task_alloc();
    *(v4 + 48) = v7;
    *v7 = v4;
    v7[1] = sub_2405D3110;
    v8 = *(v4 + 16);
    v9 = *(v4 + 24);

    sub_240659DC0(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CustomTransport.Activated.invalidate()()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  v3 = sub_24075A434();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-1] - v5;
  v7 = v1[1];
  v16 = *v1;
  v17 = v7;
  v8 = v1[2];
  v15[0] = *(v1 + 49);
  *(v15 + 3) = *(v1 + 13);
  v10 = v8;
  if (v8)
  {
    v9 = *(v1 + 7);
    (*(v4 + 16))(v6, v8 + *(*v8 + 104), v3);
    sub_24075A424();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      sub_24075A4A4();
    }

    v11[0] = v16;
    v11[1] = v17;
    v11[2] = v10;
    v12 = 1;
    *v13 = v15[0];
    *&v13[3] = *(v15 + 3);
    v14 = 0;
    (*(*(v2 - 8) + 8))(v11, v2);
  }

  else
  {
    __break(1u);
  }
}

void *sub_24065B3E8()
{
  v0 = sub_24065BD28();
  v1 = v0;
  return v0;
}

uint64_t sub_24065B414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return CustomTransport.Activated.send(_:)(a1, a2, a3);
}

void sub_24065B4C4(uint64_t a1)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  (*(*(a1 - 8) + 16))(&v4, v5, a1);
  CustomTransport.Activated.invalidate()();
}

uint64_t sub_24065B538(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24065C910;

  return v6(a1);
}

uint64_t sub_24065B630(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405C6C3C;

  return v6(a1);
}

uint64_t sub_24065B728(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24075A7B4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_24075AE64();
      MEMORY[0x245CC6BA0](v9);
      result = sub_24075AED4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_24065B8BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
  v2 = *v0;
  v3 = sub_24075A9E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2405BE44C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_24065BA70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
  v2 = *v0;
  v3 = sub_24075A9E4();
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

void *sub_24065BBDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
  v2 = *v0;
  v3 = sub_24075A9E4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_24065BD30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_24065A308(a1, a2, v6);
}

uint64_t sub_24065BDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24065BE6C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24065BEC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of Transport.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405DA4B0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_24065C084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C114(uint64_t a1, int a2)
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

uint64_t sub_24065C15C(uint64_t result, int a2, int a3)
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

uint64_t sub_24065C1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C210(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24075A374();
  swift_getTupleTypeMetadata2();
  result = sub_24075A474();
  if (v2 <= 0x3F)
  {
    result = sub_24075A434();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CustomTransport.Interface.receiveIncoming(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CustomTransport.Interface.receiveOutgoing(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405DA4B0;

  return v8(a1, a2);
}

uint64_t sub_24065C5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24065C624(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24065C680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24065C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24065C738(uint64_t a1, unsigned int a2)
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

uint64_t sub_24065C788(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24065C7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24065C848(uint64_t a1)
{
  v4 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_2406586FC(a1, v6, v5, v4);
}

uint64_t sub_24065C934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x4F64696C61766E69;
  }

  if (v2)
  {
    v4 = 0xEE00736E6F697470;
  }

  else
  {
    v4 = 0x8000000240785E70;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x4F64696C61766E69;
  }

  if (*a2)
  {
    v6 = 0x8000000240785E70;
  }

  else
  {
    v6 = 0xEE00736E6F697470;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24075ACF4();
  }

  return v8 & 1;
}

uint64_t sub_24065C9EC()
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24065CA80(uint64_t a1)
{
  sub_24075A114();
}

uint64_t sub_24065CB00(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_24065CB90@<X0>(char *a2@<X8>)
{
  v3 = sub_24075AA34();

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

void sub_24065CBF0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000240785E70;
  v3 = 0x4F64696C61766E69;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEE00736E6F697470;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24065CC40(uint64_t a1)
{
  *&v12 = sub_24075A0B4();
  *(&v12 + 1) = v2;
  sub_24075A814();
  if (*(a1 + 16) && (v3 = sub_2405BB338(v14), (v4 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v3, &v15);
    sub_2405BD160(v14);
  }

  else
  {
    sub_2405BD160(v14);
    v15 = 0u;
    v16 = 0u;
  }

  sub_24075A0B4();
  sub_24075A814();
  if (*(a1 + 16) && (v5 = sub_2405BB338(v14), (v6 & 1) != 0))
  {
    sub_2405BD1CC(*(a1 + 56) + 32 * v5, &v12);
    sub_2405BD160(v14);
    v7 = *(&v13 + 1) == 0;
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_2405BD160(v14);
    v12 = 0u;
    v13 = 0u;
    v7 = 1;
    v8 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_12;
    }
  }

  if (v7)
  {
    v9 = 1;
LABEL_14:

    sub_24065CE10();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
    goto LABEL_15;
  }

LABEL_12:
  if (v8 != 0 && !v7)
  {
    v9 = 0;
    goto LABEL_14;
  }

LABEL_15:
  sub_24065CE64(&v15);
  sub_24065CE64(&v12);
  return a1;
}

uint64_t sub_24065CDE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24065CC40(*v1);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24065CE10()
{
  result = qword_27E4BA990;
  if (!qword_27E4BA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA990);
  }

  return result;
}

uint64_t sub_24065CE64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E8, &qword_24076E1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24065CF00()
{
  result = qword_27E4BA998;
  if (!qword_27E4BA998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA998);
  }

  return result;
}

id FamilyRepairModel.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t FamilyRepairModel.familyMemberToken.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FamilyRepairModel.familyMemberDSID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FamilyRepairModel.familyMemberAltDSID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FamilyRepairModel.appProvidedContext.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FamilyRepairModel.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_24065D0B0(v2, v3, v4);
}

uint64_t sub_24065D0B0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24065D0C8();
  }

  return v3;
}

uint64_t FamilyRepairModel.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_240604E3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

uint64_t FamilyRepairModel.init(authenticationContext:familyMemberToken:familyMemberDSID:familyMemberAltDSID:appProvidedContext:shouldEnableLocationServices:isFinished:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t *a13)
{
  v19 = *a13;
  v22 = a13[1];
  v21 = *(a13 + 16);
  *a9 = a1;

  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 73) = a12;
  result = sub_240604E3C(0, 0, 255);
  *(a9 + 80) = v19;
  *(a9 + 88) = v22;
  *(a9 + 96) = v21;
  return result;
}

void FamilyRepairModel.Failure.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2407595C4();
  v5 = [v4 domain];
  v6 = sub_24075A0B4();
  v8 = v7;

  if (v6 == sub_24075A0B4() && v8 == v9)
  {

    v12 = 0;
  }

  else
  {
    v11 = sub_24075ACF4();

    v12 = v11 ^ 1;
  }

  v13 = [v4 description];
  v14 = sub_24075A0B4();
  v16 = v15;

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12 & 1;
}

uint64_t sub_24065D314()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x7245796C696D6166;
  }
}

uint64_t sub_24065D358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7245796C696D6166 && a2 == 0xEB00000000726F72;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24065D438(uint64_t a1)
{
  v2 = sub_24065EF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D474(uint64_t a1)
{
  v2 = sub_24065EF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24065D4B0(uint64_t a1)
{
  v2 = sub_24065EFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D4EC(uint64_t a1)
{
  v2 = sub_24065EFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24065D528(uint64_t a1)
{
  v2 = sub_24065EF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065D564(uint64_t a1)
{
  v2 = sub_24065EF58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyRepairModel.Failure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9A0, &qword_24076F2F0);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9A8, &qword_24076F2F8);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9B0, &qword_24076F300);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065EF04();
  sub_24075AF74();
  if (v13)
  {
    v26 = 1;
    sub_24065EF58();
    v14 = v20;
    sub_24075AB54();
    v15 = v22;
    sub_24075ABB4();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24065EFAC();
    sub_24075AB54();
    v16 = v19;
    sub_24075ABB4();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t FamilyRepairModel.Failure.hash(into:)(uint64_t a1)
{
  MEMORY[0x245CC6BA0](*(v1 + 16));

  return sub_24075A114();
}

uint64_t FamilyRepairModel.Failure.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t FamilyRepairModel.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9D0, &qword_24076F308);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9D8, &qword_24076F310);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9E0, &unk_24076F318);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24065EF04();
  v13 = v34;
  sub_24075AF34();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24075AB34();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_2405B8AF4();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24075A8C4();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
      *v26 = &type metadata for FamilyRepairModel.Failure;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24065EF58();
        sub_24075AA54();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24075AAC4();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24065EFAC();
        v28 = v7;
        sub_24075AA54();
        v19 = v33;
        v18 = v34;
        v21 = sub_24075AAC4();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_24065DE6C()
{
  v1 = *(v0 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v1);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24065DED0(uint64_t a1)
{
  MEMORY[0x245CC6BA0](*(v1 + 16));

  return sub_24075A114();
}

uint64_t sub_24065DF24(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24075AE64();
  MEMORY[0x245CC6BA0](v2);
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24065DF88()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6873696E69467369;
    if (v1 != 6)
    {
      v5 = 0x726F727265;
    }

    v6 = 0xD00000000000001CLL;
    if (v1 == 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 == 2)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000011;
    if (!*v0)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24065E094@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24065FF74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24065E0BC(uint64_t a1)
{
  v2 = sub_24065F3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24065E0F8(uint64_t a1)
{
  v2 = sub_24065F3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilyRepairModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9E8, &unk_24076F328);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v28 = *(v1 + 8);
  v29 = v9;
  v11 = *(v1 + 40);
  v26 = *(v1 + 32);
  v27 = v10;
  v12 = *(v1 + 56);
  v24 = *(v1 + 48);
  v25 = v11;
  v13 = *(v1 + 64);
  v22 = v12;
  v23 = v13;
  v33 = *(v1 + 72);
  v14 = *(v1 + 73);
  v15 = *(v1 + 88);
  v18 = *(v1 + 80);
  v19 = v15;
  v20 = *(v1 + 96);
  v21 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065F3EC();
  v16 = v8;
  sub_24075AF74();
  v30 = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_24065F53C(&qword_27E4B69A8, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();

  if (!v2)
  {
    v30 = v28;
    v31 = v29;
    v34 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F440();
    sub_24075ABE4();

    LOBYTE(v30) = 2;
    sub_24075ABB4();
    LOBYTE(v30) = 3;
    sub_24075ABB4();
    LOBYTE(v30) = 4;
    sub_24075ABB4();
    LOBYTE(v30) = 5;
    sub_24075ABC4();
    LOBYTE(v30) = 6;
    sub_24075ABC4();
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v34 = 7;
    sub_24065D0B0(v18, v19, v20);
    sub_24065F4E8();
    sub_24075AB94();
    sub_240604E3C(v30, v31, v32);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FamilyRepairModel.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 96);
  if (*v1)
  {
    sub_24075AE94();
    v5 = v2;
    sub_24075A6E4();

    if (v3)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_24075AE94();
LABEL_6:
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  sub_24075AE94();
  if (v4 == 255)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  MEMORY[0x245CC6BA0]((v4 & 1) != 0);

  return sub_24075A114();
}

uint64_t FamilyRepairModel.hashValue.getter()
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t FamilyRepairModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAA10, &qword_24076F348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24065F3EC();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_240604E3C(0, 0, 255);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v31) = 0;
    sub_24065F53C(&qword_27E4B69C0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v9 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA9F8, &qword_24076F338);
    LOBYTE(v31) = 1;
    sub_24065F58C();
    sub_24075AAF4();
    v10 = v39;
    v27 = v38;

    LOBYTE(v38) = 2;
    v26 = sub_24075AAC4();
    v30 = v11;
    LOBYTE(v38) = 3;
    v25 = sub_24075AAC4();
    v29 = v12;
    LOBYTE(v38) = 4;
    v24 = sub_24075AAC4();
    v28 = v13;
    LOBYTE(v38) = 5;
    v55 = sub_24075AAD4();
    LOBYTE(v38) = 6;
    HIDWORD(v23) = sub_24075AAD4();
    v56 = 7;
    sub_24065F6A0();
    sub_24075AAA4();
    v55 &= 1u;
    v14 = v55;
    HIDWORD(v23) = BYTE4(v23) & 1;
    (*(v6 + 8))(v8, v5);
    v16 = v52;
    v15 = v53;
    v17 = v54;
    sub_240604E3C(0, 0, 255);
    *&v31 = v9;
    *(&v31 + 1) = v27;
    *&v32 = v10;
    *(&v32 + 1) = v26;
    *&v33 = v30;
    *(&v33 + 1) = v25;
    *&v34 = v29;
    *(&v34 + 1) = v24;
    *&v35 = v28;
    BYTE8(v35) = v14;
    v18 = BYTE4(v23);
    BYTE9(v35) = BYTE4(v23);
    *&v36 = v16;
    *(&v36 + 1) = v15;
    v37 = v17;
    *(a2 + 96) = v17;
    v19 = v36;
    *(a2 + 64) = v35;
    *(a2 + 80) = v19;
    v20 = v32;
    *a2 = v31;
    *(a2 + 16) = v20;
    v21 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v21;
    sub_24065F6F4(&v31, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v9;
    v39 = v27;
    v40 = v10;
    v41 = v26;
    v42 = v30;
    v43 = v25;
    v44 = v29;
    v45 = v24;
    v46 = v28;
    v47 = v55;
    v48 = v18;
    v49 = v16;
    v50 = v15;
    v51 = v17;
    return sub_24065F72C(&v38);
  }
}

uint64_t sub_24065ECA8()
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24065ECEC(uint64_t a1)
{
  sub_24075AE64();
  FamilyRepairModel.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup17FamilyRepairModelV7FailureO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_24065D0C8();
    sub_24065D0C8();
    sub_240604E54(v3, v2);
    sub_240604E54(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v9 = sub_24075ACF4();
    sub_24065D0C8();
    sub_24065D0C8();
    sub_240604E54(v3, v2);
    sub_240604E54(v5, v4);
    return v9 & 1;
  }

LABEL_15:
  sub_24065D0C8();
  sub_24065D0C8();
  sub_240604E54(v3, v2);
  sub_240604E54(v3, v2);
  return 1;
}

unint64_t sub_24065EF04()
{
  result = qword_27E4BA9B8;
  if (!qword_27E4BA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9B8);
  }

  return result;
}

unint64_t sub_24065EF58()
{
  result = qword_27E4BA9C0;
  if (!qword_27E4BA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9C0);
  }

  return result;
}

unint64_t sub_24065EFAC()
{
  result = qword_27E4BA9C8;
  if (!qword_27E4BA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9C8);
  }

  return result;
}

BOOL _s12AppleIDSetup17FamilyRepairModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v39 = *(a2 + 48);
    v40 = *(a1 + 48);
    v41 = *(a2 + 40);
    v42 = *(a1 + 40);
    v36 = *(a2 + 64);
    v37 = *(a1 + 64);
    v38 = *(a2 + 56);
    v33 = *(a2 + 72);
    v34 = *(a1 + 72);
    v43 = *(a1 + 56);
    v31 = *(a2 + 73);
    v32 = *(a1 + 73);
    v26 = *(a2 + 96);
    v27 = *(a2 + 80);
    v28 = *(a2 + 88);
    v29 = *(a1 + 96);
    v30 = *(a1 + 80);
    v35 = *(a1 + 88);
    v12 = *(a2 + 16);
    v25 = *(a2 + 8);
    sub_240660214();
    v13 = v8;
    v14 = v3;
    v15 = sub_24075A6D4();

    v7 = v25;
    v9 = v12;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(a2 + 48);
    v40 = *(a1 + 48);
    v41 = *(a2 + 40);
    v42 = *(a1 + 40);
    v36 = *(a2 + 64);
    v37 = *(a1 + 64);
    v38 = *(a2 + 56);
    v33 = *(a2 + 72);
    v34 = *(a1 + 72);
    v43 = *(a1 + 56);
    v31 = *(a2 + 73);
    v32 = *(a1 + 73);
    v26 = *(a2 + 96);
    v27 = *(a2 + 80);
    v28 = *(a2 + 88);
    v29 = *(a1 + 96);
    v30 = *(a1 + 80);
    v35 = *(a1 + 88);
    if (v8)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = v43;
    if ((v2 != v7 || v4 != v9) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = v43;
    if (v9)
    {
      return 0;
    }
  }

  if ((v5 != v10 || v6 != v11) && (sub_24075ACF4() & 1) == 0 || (v42 != v41 || v40 != v39) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v38 && v37 == v36)
  {
    result = 0;
    v18 = v35;
    if (v34 != v33)
    {
      return result;
    }

    goto LABEL_25;
  }

  v19 = sub_24075ACF4();
  result = 0;
  v18 = v35;
  if ((v19 & 1) != 0 && ((v34 ^ v33) & 1) == 0)
  {
LABEL_25:
    if ((v32 ^ v31))
    {
      return result;
    }

    if (v29 == 255)
    {
      v20 = v30;
      sub_24065D0B0(v30, v18, 255);
      v21 = v26;
      if (v26 == 255)
      {
        sub_24065D0B0(v27, v28, 255);
        sub_240604E3C(v30, v18, 255);
        return 1;
      }

      v24 = v27;
      v23 = v28;
      sub_24065D0B0(v27, v28, v26);
    }

    else
    {
      v20 = v30;
      v47 = v30;
      v48 = v18;
      v49 = v29;
      v21 = v26;
      if (v26 != 255)
      {
        v44 = v27;
        v45 = v28;
        v46 = v26 & 1;
        sub_24065D0B0(v30, v18, v29);
        sub_24065D0B0(v27, v28, v26);
        sub_24065D0B0(v30, v18, v29);
        v22 = _s12AppleIDSetup17FamilyRepairModelV7FailureO2eeoiySbAE_AEtFZ_0(&v47, &v44);
        sub_240604E54(v44, v45);
        sub_240604E54(v47, v48);
        sub_240604E3C(v30, v18, v29);
        return (v22 & 1) != 0;
      }

      sub_24065D0B0(v30, v18, v29);
      v24 = v27;
      v23 = v28;
      sub_24065D0B0(v27, v28, 255);
      sub_24065D0B0(v30, v18, v29);
      sub_240604E54(v30, v18);
    }

    sub_240604E3C(v20, v18, v29);
    sub_240604E3C(v24, v23, v21);
    return 0;
  }

  return result;
}

unint64_t sub_24065F3EC()
{
  result = qword_27E4BA9F0;
  if (!qword_27E4BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BA9F0);
  }

  return result;
}

unint64_t sub_24065F440()
{
  result = qword_27E4BAA00;
  if (!qword_27E4BAA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F634(&qword_27E4B6458, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA00);
  }

  return result;
}

unint64_t sub_24065F4E8()
{
  result = qword_27E4BAA08;
  if (!qword_27E4BAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA08);
  }

  return result;
}

uint64_t sub_24065F53C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B69A0, &qword_24075DC30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24065F58C()
{
  result = qword_27E4BAA18;
  if (!qword_27E4BAA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BA9F8, &qword_24076F338);
    sub_24065F634(&qword_27E4BAA20, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA18);
  }

  return result;
}

uint64_t sub_24065F634(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6450, &qword_24076F340);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24065F6A0()
{
  result = qword_27E4BAA28;
  if (!qword_27E4BAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA28);
  }

  return result;
}

unint64_t sub_24065F79C()
{
  result = qword_27E4BAA30;
  if (!qword_27E4BAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA30);
  }

  return result;
}

unint64_t sub_24065F7F4()
{
  result = qword_27E4BAA38;
  if (!qword_27E4BAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA38);
  }

  return result;
}

uint64_t sub_24065F888(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24065F8DC()
{
  result = qword_27E4BAA40;
  if (!qword_27E4BAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA40);
  }

  return result;
}

unint64_t sub_24065F930()
{
  result = qword_27E4BAA48;
  if (!qword_27E4BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA48);
  }

  return result;
}

unint64_t sub_24065F984()
{
  result = qword_27E4BAA50;
  if (!qword_27E4BAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA50);
  }

  return result;
}

unint64_t sub_24065F9DC()
{
  result = qword_27E4BAA58;
  if (!qword_27E4BAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup17FamilyRepairModelV7FailureOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24065FA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24065FA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24065FB58()
{
  result = qword_27E4BAA60;
  if (!qword_27E4BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA60);
  }

  return result;
}

unint64_t sub_24065FBB0()
{
  result = qword_27E4BAA68;
  if (!qword_27E4BAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA68);
  }

  return result;
}

unint64_t sub_24065FC08()
{
  result = qword_27E4BAA70;
  if (!qword_27E4BAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA70);
  }

  return result;
}

unint64_t sub_24065FC60()
{
  result = qword_27E4BAA78;
  if (!qword_27E4BAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA78);
  }

  return result;
}

unint64_t sub_24065FCB8()
{
  result = qword_27E4BAA80;
  if (!qword_27E4BAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA80);
  }

  return result;
}

unint64_t sub_24065FD10()
{
  result = qword_27E4BAA88;
  if (!qword_27E4BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA88);
  }

  return result;
}

unint64_t sub_24065FD68()
{
  result = qword_27E4BAA90;
  if (!qword_27E4BAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA90);
  }

  return result;
}

unint64_t sub_24065FDC0()
{
  result = qword_27E4BAA98;
  if (!qword_27E4BAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAA98);
  }

  return result;
}

unint64_t sub_24065FE18()
{
  result = qword_27E4BAAA0;
  if (!qword_27E4BAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAA0);
  }

  return result;
}

unint64_t sub_24065FE70()
{
  result = qword_27E4BAAA8;
  if (!qword_27E4BAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAA8);
  }

  return result;
}

unint64_t sub_24065FEC8()
{
  result = qword_27E4BAAB0;
  if (!qword_27E4BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAB0);
  }

  return result;
}

unint64_t sub_24065FF20()
{
  result = qword_27E4BAAB8;
  if (!qword_27E4BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAB8);
  }

  return result;
}

uint64_t sub_24065FF74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000240786360 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787EE0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787F00 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240787F20 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240787F40 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000240787F60 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6873696E69467369 && a2 == 0xEA00000000006465 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_240660214()
{
  result = qword_27E4B7178;
  if (!qword_27E4B7178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B7178);
  }

  return result;
}

uint64_t sub_240660260()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAAC0);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAAC0);
  if (qword_27E4B5EE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B85A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_240660328(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2406603D0;

  return sub_2406619B8(a1);
}

uint64_t sub_2406603D0(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_240660660(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_240660734;

  return sub_2406619B8(v6);
}

uint64_t sub_240660734(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_2407595C4();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2406608E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240662428;

  return sub_240661CF8(a1);
}

uint64_t sub_240660B14(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_240662424;

  return sub_240661CF8(v6);
}

id SafetySettingsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SafetySettingsController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SafetySettingsController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_240660CC4(uint64_t a1)
{
  if ((sub_240674184(a1) & 1) == 0)
  {
    return 0;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  __swift_project_value_buffer(v1, qword_27E4BAAC0);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Safety settings already enabled - not showing safety settings", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  return 1;
}

uint64_t sub_240660F18(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E4B5F40 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_27E4BAAC0);
    v5 = sub_240759AC4();
    v16 = sub_24075A5D4();
    if (os_log_type_enabled(v5, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_240579000, v5, v16, "No account manager provided - not eligible for any flow", v17, 2u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    goto LABEL_26;
  }

  v5 = a3;
  v6 = [v5 userAgeRangeForAccount:a2];
  if (!a1 || a1 == 2)
  {
    if (v6 != 2 && v6 != 1)
    {
      v7 = v6;
      if (qword_27E4B5F40 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4BAAC0);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_25;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      if (a1)
      {
        v13 = 0xE800000000000000;
        v14 = 0x73676E6974746573;
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x7964647562;
      }

      v22 = sub_2405BBA7C(v14, v13, &v23);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_240579000, v9, v10, "Age range %lu not eligible for %s flow - not showing safety settings", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CC76B0](v12, -1, -1);
LABEL_24:
      MEMORY[0x245CC76B0](v11, -1, -1);
LABEL_25:

LABEL_26:
      return 0;
    }

    goto LABEL_17;
  }

  if (a1 == 1)
  {
    if (v6 != 2)
    {
      v19 = v6;
      if (qword_27E4B5F40 != -1)
      {
        swift_once();
      }

      v20 = sub_240759AE4();
      __swift_project_value_buffer(v20, qword_27E4BAAC0);
      v9 = sub_240759AC4();
      v21 = sub_24075A5D4();
      if (!os_log_type_enabled(v9, v21))
      {
        goto LABEL_25;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v19;
      _os_log_impl(&dword_240579000, v9, v21, "Age range %lu not eligible for mini-buddy flow - not showing safety settings", v11, 0xCu);
      goto LABEL_24;
    }

LABEL_17:

    return 1;
  }

  result = sub_24075AD64();
  __break(1u);
  return result;
}

uint64_t sub_2406612A8(void *a1)
{
  v2 = sub_24075A084();
  v3 = [a1 accountPropertyForKey_];

  if (v3)
  {
    sub_24075A754();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_2405B8A50(v14, &qword_27E4BA1E8, &qword_24076E1C0);
    goto LABEL_13;
  }

  sub_2406623D4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v4 = v11;
  if (![v11 BOOLValue])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BAAC0);
  v6 = sub_240759AC4();
  v7 = sub_24075A5D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240579000, v6, v7, "User has already seen safety screen - not showing safety settings", v8, 2u);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t sub_240661478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24066149C, 0, 0);
}

uint64_t sub_24066149C()
{
  v40 = v0;
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v39 = 13;
  if (((*(v3 + 8))(&v39, v2, v3) & 1) == 0)
  {
    if (qword_27E4B5F40 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_27E4BAAC0);
    v12 = sub_240759AC4();
    v13 = sub_24075A5D4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_30;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_29;
  }

  if (qword_27E4B5F40 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 16);
  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BAAC0);
  v6 = v4;
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *&v9[OBJC_IVAR___AISSafetySettingsContext_flowType];

    _os_log_impl(&dword_240579000, v7, v8, "Starting shouldPresentSafetySettings checks for flow type: %ld", v10, 0xCu);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {

    v7 = *(v0 + 16);
  }

  v16 = *(v0 + 24);

  if (!v16 || (v17 = [*(v0 + 24) primaryAuthKitAccount]) == 0)
  {
    v12 = sub_240759AC4();
    v13 = sub_24075A5D4();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_30:
      v36 = 0;
      goto LABEL_31;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No primary account found - not showing safety settings";
LABEL_29:
    _os_log_impl(&dword_240579000, v12, v13, v15, v14, 2u);
    MEMORY[0x245CC76B0](v14, -1, -1);
    goto LABEL_30;
  }

  v12 = v17;
  v18 = sub_240759AC4();
  v19 = sub_24075A5D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_240579000, v18, v19, "Primary account check passed", v20, 2u);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v21 = *(v0 + 40);

  if (sub_240660CC4(v21))
  {
    goto LABEL_30;
  }

  v22 = sub_240759AC4();
  v23 = sub_24075A5D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_240579000, v22, v23, "ScreenTime settings check passed", v24, 2u);
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  v26 = *(v0 + 16);
  v25 = *(v0 + 24);

  if ((sub_240660F18(*(v26 + OBJC_IVAR___AISSafetySettingsContext_flowType), v12, v25) & 1) == 0)
  {
    goto LABEL_30;
  }

  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_240579000, v27, v28, "Age eligibility check passed", v29, 2u);
    MEMORY[0x245CC76B0](v29, -1, -1);
  }

  if (sub_2406612A8(v12))
  {
    goto LABEL_30;
  }

  v30 = sub_240759AC4();
  v31 = sub_24075A5D4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_240579000, v30, v31, "Safety screen seen check passed", v32, 2u);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  v33 = sub_240759AC4();
  v34 = sub_24075A5D4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_240579000, v33, v34, "All checks passed - showing safety settings", v35, 2u);
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  v36 = 1;
LABEL_31:

  v37 = *(v0 + 8);

  return v37(v36);
}

uint64_t sub_2406619D8()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 104) = v1;
  v2 = type metadata accessor for FeatureManager();
  *(v0 + 16) = swift_initStaticObject();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for FeatureManager;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_240661AFC;
  v4 = *(v0 + 96);

  return sub_240661478(v4, v1, v0 + 16, v0 + 56);
}

uint64_t sub_240661AFC(char a1)
{
  v4 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v5 = v4[13];
    sub_2405B8A50((v4 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    return MEMORY[0x2822009F8](sub_240661C90, 0, 0);
  }

  else
  {
    v6 = v4[13];
    sub_2405B8A50((v4 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v7 = v4[1];

    return v7(a1 & 1);
  }
}

uint64_t sub_240661C90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240661D18()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 104) = v1;
  v2 = type metadata accessor for FeatureManager();
  *(v0 + 16) = swift_initStaticObject();
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for FeatureManager;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_240661E3C;
  v4 = *(v0 + 96);

  return sub_240661478(v4, v1, v0 + 16, v0 + 56);
}

uint64_t sub_240661E3C(char a1)
{
  v4 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v5 = v4[13];
    sub_2405B8A50((v4 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    return MEMORY[0x2822009F8](sub_240662420, 0, 0);
  }

  else
  {
    v6 = v4[13];
    sub_2405B8A50((v4 + 7), &qword_27E4BAAD8, qword_24076FBF0);

    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v7 = v4[1];

    return v7(a1 & 1);
  }
}

uint64_t dispatch thunk of SafetySettingsController.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063D29C;

  return v7(a1);
}

uint64_t dispatch thunk of SafetySettingsController.shouldPresentSafetySettingsUsingOnlyLocalChecks(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24063DDE8;

  return v7(a1);
}

uint64_t sub_24066226C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240660B14(v2, v3, v4);
}

uint64_t sub_240662320()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_240660660(v2, v3, v4);
}

unint64_t sub_2406623D4()
{
  result = qword_27E4B8910;
  if (!qword_27E4B8910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B8910);
  }

  return result;
}

id SafetySettingsContext.__allocating_init(flowType:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AISSafetySettingsContext_flowType] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SafetySettingsContext.init(flowType:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AISSafetySettingsContext_flowType] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SafetySettingsContext();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_240662618()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000025, 0x8000000240788000);
  sub_24075A994();
  MEMORY[0x245CC5E60](32032, 0xE200000000000000);
  return 0;
}

id SafetySettingsContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AISSetupContext.into(relaxed:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v237 = a2;
  v230 = type metadata accessor for SignInModel(0);
  MEMORY[0x28223BE20](v230);
  v231 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v235 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v234 = &v211 - v8;
  v229 = type metadata accessor for AuthenticationModel(0);
  MEMORY[0x28223BE20](v229);
  v236 = &v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v10 = sub_240759AE4();
  v11 = __swift_project_value_buffer(v10, qword_27E4B8518);
  v12 = v2;
  v238 = v11;
  v13 = sub_240759AC4();
  LODWORD(v240) = sub_24075A5C4();
  v14 = os_log_type_enabled(v13, v240);
  v15 = &unk_278CAD000;
  v16 = &unk_278CAD000;
  v17 = &unk_278CAD000;
  v18 = &unk_278CAD000;
  LODWORD(v228) = a1;
  if (v14)
  {
    v239 = v13;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v233 = swift_slowAlloc();
    *&v248 = v233;
    *v19 = 67113730;
    *(v19 + 4) = a1 & 1;
    *(v19 + 8) = 2080;
    v21 = [v12 requiredServiceTypes];
    type metadata accessor for AIDAServiceType(0);
    sub_240665FC0();
    sub_24075A534();

    v22 = sub_24075A544();
    v24 = v23;

    v25 = sub_2405BBA7C(v22, v24, &v248);

    *(v19 + 10) = v25;
    *(v19 + 18) = 2080;
    v26 = [v12 desiredServiceTypes];
    sub_24075A534();

    v27 = sub_24075A544();
    v29 = v28;

    v30 = sub_2405BBA7C(v27, v29, &v248);

    *(v19 + 20) = v30;
    *(v19 + 28) = 1024;
    LODWORD(v30) = [v12 0x1FD36857FLL];

    *(v19 + 30) = v30;
    *(v19 + 34) = 2112;
    v31 = [v12 messageSessionTemplate];
    *(v19 + 36) = v31;
    *v20 = v31;
    *(v19 + 44) = 2112;
    v32 = [v12 bleDevice];
    *(v19 + 46) = v32;
    v232 = v20;
    v20[1] = v32;
    *(v19 + 54) = 2048;
    v33 = [v12 localRole];

    *(v19 + 56) = v33;
    *(v19 + 64) = 2048;
    v34 = [v12 localRole];

    *(v19 + 66) = v34;
    *(v19 + 74) = 2080;
    v35 = [v12 fixedPIN];
    if (v35)
    {
      v36 = v35;
      v37 = sub_24075A0B4();
      v39 = v38;

      v40 = 0x296C6C756E28;
    }

    else
    {
      v39 = 0xE600000000000000;
      v40 = 0x296C6C756E28;
      v37 = 0x296C6C756E28;
    }

    v41 = sub_2405BBA7C(v37, v39, &v248);

    *(v19 + 76) = v41;
    *(v19 + 84) = 2080;
    v42 = [v12 targetAuthTag];
    v17 = &unk_278CAD000;
    v43 = v239;
    if (v42)
    {
      v44 = v42;
      v45 = sub_24075A0B4();
      v47 = v46;

      v40 = 0x296C6C756E28;
    }

    else
    {
      v47 = 0xE600000000000000;
      v45 = 0x296C6C756E28;
    }

    v48 = sub_2405BBA7C(v45, v47, &v248);

    *(v19 + 86) = v48;
    *(v19 + 94) = 1024;
    v49 = [v12 pinType];

    *(v19 + 96) = v49;
    *(v19 + 100) = 2048;
    v50 = [v12 deviceUserKind];

    *(v19 + 102) = v50;
    *(v19 + 110) = 1024;
    LODWORD(v50) = [v12 shouldCreateDeviceUser];

    *(v19 + 112) = v50;
    *(v19 + 116) = 1024;
    LODWORD(v50) = [v12 shouldSkipConfirmation];

    *(v19 + 118) = v50;
    *(v19 + 122) = 2080;
    v51 = [v12 candidateAccount];
    if (v51 && (v52 = v51, v53 = [v51 altDSID], v52, v53))
    {
      v54 = sub_24075A0B4();
      v56 = v55;

      v57 = v54;
      v40 = 0x296C6C756E28;
    }

    else
    {
      v56 = 0xE600000000000000;
      v57 = 0x296C6C756E28;
    }

    v58 = sub_2405BBA7C(v57, v56, &v248);

    *(v19 + 124) = v58;
    *(v19 + 132) = 2080;
    v59 = [v12 candidateAccount];
    if (v59 && (v60 = v59, v61 = [v59 username], v60, v61))
    {
      v62 = sub_24075A0B4();
      v64 = v63;

      v65 = v62;
      v40 = 0x296C6C756E28;
    }

    else
    {
      v64 = 0xE600000000000000;
      v65 = 0x296C6C756E28;
    }

    v66 = sub_2405BBA7C(v65, v64, &v248);

    *(v19 + 134) = v66;
    *(v19 + 142) = 2080;
    v67 = [v12 serverDeviceModel];
    if (v67)
    {
      v68 = v67;
      v40 = sub_24075A0B4();
      v70 = v69;
    }

    else
    {
      v70 = 0xE600000000000000;
    }

    v71 = sub_2405BBA7C(v40, v70, &v248);

    *(v19 + 144) = v71;
    *(v19 + 152) = 2048;
    v18 = &unk_278CAD000;
    v72 = [v12 currentDeviceAgeRange];

    *(v19 + 154) = v72;
    *(v19 + 162) = 1024;
    LODWORD(v72) = [v12 forceReplacePrimaryUser];

    *(v19 + 164) = v72;
    _os_log_impl(&dword_240579000, v43, v240, "Converting objc setup context with properties (relaxed: %{BOOL}d): {\n  requiredServiceTypes:%s,\n  desiredServiceTypes:%s,\n  shouldBackgroundDesiredServices:%{BOOL}d,\n  messageSessionTemplate:%@,\n  bleDevice:%@,\n  localRole:%lu,\n  remoteRole:%lu,\n  fixedPIN:%s,\n  targetAuthTag:%s,\n  pinType:%d,\n  deviceUserKind:%lu,\n  shouldCreateDeviceUser:%{BOOL}d,\n  shouldSkipConfirmation:%{BOOL}d,\n  candidateAltDSID:%s,\n  candidateUserName:%s,\n  serverDeviceModel:%s,\n  currentDeviceAgeRange:%lu,\n  forceReplacePrimaryUser:%{BOOL}d\n}", v19, 0xA8u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
    v73 = v232;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v73, -1, -1);
    v74 = v233;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v74, -1, -1);
    MEMORY[0x245CC76B0](v19, -1, -1);

    v16 = &unk_278CAD000;
    v15 = &unk_278CAD000;
  }

  else
  {
  }

  v75 = [v12 remoteRole];
  v76 = [v12 v15[337]];
  AISSetupContextRemoteRole.into(with:)(v12, [v12 remoteRole], &v248);
  v77 = v249;
  if ((v249 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || ((DWORD2(v249) | ((WORD6(v249) | (BYTE14(v249) << 16)) << 32)) & 0xF800000000) != 0)
  {
    v232 = v249;
    v233 = DWORD2(v249) | ((WORD6(v249) | (BYTE14(v249) << 16)) << 32);
    v221 = v75;
    v222 = v76;
    v239 = *(&v248 + 1);
    v240 = v248;
    v227 = v76 != 0;
    if (v228)
    {
      v89 = [v12 requiredServiceTypes];
      type metadata accessor for AIDAServiceType(0);
      sub_240665FC0();
      v90 = sub_24075A534();

      v91 = *(v90 + 16);

      if (!v91)
      {
        v92 = [v12 desiredServiceTypes];
        v93 = sub_24075A534();

        v94 = *(v93 + 16);

        if (!v94)
        {
          v95 = v18;
          v96 = sub_240759AC4();
          v97 = sub_24075A5F4();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            *v98 = 0;
            _os_log_impl(&dword_240579000, v96, v97, "Invalid AISSetupContext provided, no required/desired services specified. Defaulting for now (will be an error in the future).", v98, 2u);
            MEMORY[0x245CC76B0](v98, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9280, &unk_24076B550);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_240765570;
          v100 = *MEMORY[0x277CED1A0];
          *(v99 + 32) = *MEMORY[0x277CED1A0];
          v101 = v100;
          sub_240668A84(v99);
          swift_setDeallocating();
          sub_240668C78(v99 + 32);
          swift_deallocClassInstance();
          v102 = sub_24075A514();

          [v12 setRequiredServiceTypes_];

          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_240762420;
          v104 = *MEMORY[0x277CED1C0];
          *(v103 + 32) = *MEMORY[0x277CED1C0];
          v105 = *MEMORY[0x277CED1B0];
          *(v103 + 40) = *MEMORY[0x277CED1B0];
          v106 = v104;
          v107 = v105;
          sub_240668A84(v103);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v108 = sub_24075A514();

          [v12 setDesiredServiceTypes_];

          v18 = v95;
          v77 = v232;
          v16 = &unk_278CAD000;
        }
      }
    }

    v109 = v12;
    v110 = sub_240759AC4();
    v111 = sub_24075A5D4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = v18;
      v113 = swift_slowAlloc();
      *v113 = 67109120;
      *(v113 + 4) = [v109 supportsSplitAccounts];

      _os_log_impl(&dword_240579000, v110, v111, "supportsSplitAccounts: %{BOOL}d", v113, 8u);
      v114 = v113;
      v18 = v112;
      v77 = v232;
      MEMORY[0x245CC76B0](v114, -1, -1);
    }

    else
    {

      v110 = v109;
    }

    v115 = [v109 shouldCreateDeviceUser];
    v116 = v239;
    if (v115 && ![v109 deviceUserKind])
    {
      v117 = sub_240759AC4();
      v118 = sub_24075A5C4();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = v18;
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_240579000, v117, v118, "When asked to create user and user kind is specified as none, we will default to auto.", v120, 2u);
        v121 = v120;
        v18 = v119;
        v77 = v232;
        MEMORY[0x245CC76B0](v121, -1, -1);
      }

      [v109 setDeviceUserKind:1];
    }

    v122 = [v109 candidateAccount];
    if (v122)
    {
      v123 = v122;
      v124 = [v122 altDSID];

      if (v124)
      {
        v228 = sub_24075A0B4();
        v126 = v125;

        v127 = [v109 candidateAccount];
        if (v127)
        {
          v128 = v127;
          v129 = [v127 username];

          if (v129)
          {
            v130 = sub_24075A0B4();
            v224 = v131;
            v225 = v130;

            v132 = [v109 candidateAccount];
            if (v132 && (v133 = v132, v134 = [v132 formattedShortName], v133, v134))
            {
              v135 = sub_24075A0B4();
              v238 = v136;
            }

            else
            {
              v135 = 0;
              v238 = 0;
            }

            v210 = v240;
            v251 = 0u;
            v252 = 0u;
            v249 = 0u;
            v250 = 0u;
            v248 = 0u;
            sub_2405B8A50(&v248, &qword_27E4B6420, &qword_240768F00);
            v137 = v210;
LABEL_53:
            sub_240609C0C(v137, v116, v77, v233);
            v138 = [v109 v16[340]];
            if (v138)
            {
              v139 = v138;
              v140 = sub_24075A0B4();
              v219 = v141;
              v220 = v140;
            }

            else
            {
              v219 = 0;
              v220 = 0;
            }

            v142 = v222;
            v143 = [v109 targetAuthTag];
            if (v143)
            {
              v144 = v143;
              v222 = sub_24075A0B4();
              v218 = v145;
            }

            else
            {
              v222 = 0;
              v218 = 0;
            }

            v146 = [v109 pinType];
            if (v146 > 3)
            {
              if (v146 <= 6)
              {
                if (v146 != 4)
                {
                  if (v146 == 5)
                  {
                    v217 = 0;
                    v216 = 0;
                    goto LABEL_76;
                  }

                  goto LABEL_70;
                }

                v216 = 0;
                v217 = 4;
LABEL_76:
                v149 = v221 - 1;
                LODWORD(v221) = [v109 shouldSkipConfirmation];
                v223 = v135;
                if (v126)
                {

                  v215 = v135;
                }

                else
                {
                  v214 = 0;
                  v215 = 0;
                }

                v150 = v149 & 0xFFFFFFFFFFFFFFFDLL;
                v151 = [v109 v17[344]];
                v226 = v126;
                if (v151)
                {
                  v152 = v151;
                  v153 = sub_24075A0B4();
                  v212 = v154;
                  v213 = v153;
                }

                else
                {
                  v212 = 0;
                  v213 = 0;
                }

                v155 = v150 != 0;
                if (v142)
                {
                  v156 = 512;
                }

                else
                {
                  v156 = 513;
                }

                v157 = [v109 v18[345]];
                v241 = v156;
                v242 = 0uLL;
                v243 = xmmword_240768EF0;
                LOBYTE(v244) = 0;
                sub_240676624(&v248);
                sub_240604AE0(0, 0, 0, 0xA0u);
                sub_240609C34(0, 0, 0, 0);
                v158 = v233;
                if ((v233 & 0xC000000000) != 0)
                {
                  v159 = 0;
                  v160 = 0;
                  v158 = 0;
                  v161 = 1;
                }

                else
                {
                  v160 = v77 & 0xFF0000FFFFLL;
                  v161 = v239;
                  v162 = v240;
                  sub_240666040(v240, v239, v77, v233);
                  v159 = v162;
                }

                *(&v258[10] + 8) = v254;
                *(&v258[11] + 8) = v255;
                *(&v258[12] + 8) = v256;
                *(&v258[6] + 8) = v250;
                *(&v258[7] + 8) = v251;
                *(&v258[8] + 8) = v252;
                *(&v258[9] + 8) = v253;
                *(&v258[4] + 8) = v248;
                LOBYTE(v258[0]) = 0;
                BYTE1(v258[0]) = v155;
                *(&v258[0] + 1) = v222;
                *&v258[1] = v218;
                *(&v258[1] + 1) = v220;
                *&v258[2] = v219;
                *(&v258[2] + 1) = v217;
                LOBYTE(v258[3]) = v216;
                BYTE1(v258[3]) = v221;
                *&v258[4] = 0;
                *(&v258[3] + 1) = 0;
                WORD4(v258[13]) = v257;
                *(&v258[5] + 8) = v249;
                memset(&v258[14], 0, 32);
                *&v258[16] = v215;
                *(&v258[16] + 1) = v214;
                *&v258[17] = v213;
                *(&v258[17] + 1) = v212;
                v258[18] = v157;
                LOBYTE(v258[19]) = 0;
                *&v241 = v159;
                *(&v241 + 1) = v161;
                *&v242 = v160;
                BYTE14(v242) = BYTE6(v158);
                WORD6(v242) = WORD2(v158);
                DWORD2(v242) = v158;
                DiscoveryModel.update(withPeer:)(&v241);
                sub_240609C84(v159, v161);
                v163 = type metadata accessor for IdMSAccount(0);
                v164 = *(*(v163 - 8) + 56);
                v164(v234, 1, 1, v163);
                v165 = v229;
                type metadata accessor for AuthenticationModel.State(0);
                v166 = v236;
                swift_storeEnumTagMultiPayload();
                LODWORD(v222) = [v109 supportsSplitAccounts];
                v164(v166, 1, 1, v163);
                v167 = (v166 + v165[5]);
                v167[3] = 0u;
                v167[4] = 0u;
                v167[1] = 0u;
                v167[2] = 0u;
                *v167 = 0u;
                v168 = v165[8];
                v169 = (v166 + v165[7]);
                v170 = v165[9];
                v171 = (v166 + v165[11]);
                *v171 = 0;
                v171[1] = 0;
                sub_240590814(v234, v166);
                *(v166 + v165[6]) = 1;
                *v169 = 0;
                v169[1] = 0;
                *(v166 + v170) = v222;
                *(v166 + v168) = MEMORY[0x277D84F90];
                v164(v235, 1, 1, v163);
                v172 = [v109 requiredServiceTypes];
                type metadata accessor for AIDAServiceType(0);
                sub_240665FC0();
                v173 = sub_24075A534();

                v174 = [v109 desiredServiceTypes];
                v175 = sub_24075A534();

                LODWORD(v229) = [v109 shouldBackgroundDesiredServices];
                v176 = [v109 localSecret];
                if (v176)
                {
                  v177 = v176;
                  v178 = sub_24075A0B4();
                  v221 = v179;
                  v222 = v178;
                }

                else
                {
                  v221 = 0;
                  v222 = 0;
                }

                v180 = v233;
                v181 = [v109 localSecretType];
                v182 = [v109 deviceUserKind];
                v183 = [v109 shouldCreateDeviceUser]^ 1;
                if (v182 > 1)
                {
                  if (v182 == 3)
                  {
                    v184 = 2;
                    goto LABEL_98;
                  }

                  if (v182 == 2)
                  {
                    LODWORD(v220) = 3;
                    v183 = 1;
                    goto LABEL_101;
                  }
                }

                else
                {
                  if (!v182)
                  {
                    v183 = 0;
                    v184 = 3;
LABEL_98:
                    LODWORD(v220) = v184;
LABEL_101:
                    v233 = v175;
                    v234 = v173;
                    v219 = v183;
                    v185 = [v109 serverDeviceModel];
                    if (v185)
                    {
                      v186 = v185;
                      v187 = sub_24075A0B4();
                      v217 = v188;
                      v218 = v187;
                      sub_240666018(v240, v239, v232, v180);
                    }

                    else
                    {
                      sub_240666018(v240, v239, v232, v180);
                      v217 = 0;
                      v218 = 0;
                    }

                    v189 = v180;
                    v190 = v181 == 1;
                    v191 = v231;
                    v164(v231, 1, 1, v163);
                    v192 = v230;
                    v193 = (v191 + *(v230 + 20));
                    v193[4] = 0u;
                    v193[5] = 0u;
                    v193[2] = 0u;
                    v193[3] = 0u;
                    *v193 = 0u;
                    v193[1] = 0u;
                    v194 = (v191 + v192[10]);
                    *v194 = 0u;
                    *(v194 + 1) = 0u;
                    v195 = (v191 + v192[11]);
                    *(v191 + v192[13]) = 0;
                    v196 = v192[15];
                    v197 = (v191 + v192[14]);
                    *(v191 + v196) = 2;
                    v198 = (v191 + v192[17]);
                    *v198 = 0;
                    v198[1] = 0;
                    *(v191 + v192[18]) = 0;
                    sub_240590814(v235, v191);
                    v199 = v193[3];
                    v243 = v193[2];
                    v244 = v199;
                    v200 = v193[5];
                    v245 = v193[4];
                    v246 = v200;
                    v201 = v193[1];
                    v241 = *v193;
                    v242 = v201;
                    sub_2405B8A50(&v241, &qword_27E4B8D00, &qword_2407691E0);
                    *v193 = 0u;
                    v193[1] = 0u;
                    v193[2] = 0u;
                    v193[3] = 0u;
                    v193[4] = 0u;
                    v193[5] = 0u;
                    v202 = v233;
                    *(v191 + v192[6]) = v234;
                    *(v191 + v192[7]) = v202;
                    *(v191 + v192[8]) = 0;
                    *(v191 + v192[9]) = v229;
                    v203 = v221;
                    *v197 = v222;
                    v197[1] = v203;
                    *(v191 + v196) = v190;
                    v204 = v191 + v192[16];
                    *v204 = v219;
                    *(v204 + 8) = 0;
                    *(v204 + 16) = v220;
                    v205 = v191 + v192[19];
                    *(v205 + 32) = 0u;
                    *(v205 + 48) = 0u;
                    *v205 = 0u;
                    *(v205 + 16) = 0u;
                    *(v205 + 64) = 0;
                    *(v205 + 72) = 0xE000000000000000;
                    *(v205 + 80) = 0;
                    *(v205 + 88) = 0;
                    *(v205 + 96) = 0;
                    sub_240604C2C(*v194, v194[1], v194[2], v194[3]);
                    *v194 = 0u;
                    *(v194 + 1) = 0u;
                    v206 = v217;
                    *v195 = v218;
                    v195[1] = v206;
                    *(v191 + v192[12]) = 0;
                    v207 = v237;
                    *(v237 + 39) = 0;
                    *v207 = v227;
                    v208 = v239;
                    *(v207 + 8) = v240;
                    *(v207 + 16) = v208;
                    *(v207 + 24) = v232;
                    *(v207 + 38) = BYTE6(v189);
                    *(v207 + 36) = WORD2(v189);
                    *(v207 + 32) = v189;
                    *(v207 + 40) = 0u;
                    *(v207 + 56) = 0u;
                    *(v207 + 72) = 0u;
                    *(v207 + 88) = -1;
                    memcpy((v207 + 96), v258, 0x131uLL);
                    v209 = type metadata accessor for SetupModel(0);
                    sub_240668D90(v236, v207 + *(v209 + 36), type metadata accessor for AuthenticationModel);
                    sub_240668D90(v191, v207 + *(v209 + 40), type metadata accessor for SignInModel);
                    (*(*(v209 - 8) + 56))(v207, 0, 1, v209);
                    v247[0] = v228;
                    v247[1] = v226;
                    v247[2] = v225;
                    v247[3] = v224;
                    v247[4] = 0;
                    v247[5] = 0;
                    v247[6] = v223;
                    v247[7] = v238;
                    v247[8] = 0;
                    v247[9] = 0;
                    return sub_2405B8A50(v247, &qword_27E4B6420, &qword_240768F00);
                  }

                  if (v182 == 1)
                  {
                    v184 = 1;
                    goto LABEL_98;
                  }
                }

                result = sub_24075A9C4();
                __break(1u);
                return result;
              }

              if (v146 == 8)
              {
                v217 = 2;
                v148 = 2;
LABEL_75:
                v216 = v148;
                goto LABEL_76;
              }

LABEL_70:
              v216 = 2;
              v217 = 1;
              goto LABEL_76;
            }

            switch(v146)
            {
              case 1:
                v147 = 4;
                break;
              case 2:
                v147 = 6;
                break;
              case 3:
                v147 = 8;
                break;
              default:
                goto LABEL_70;
            }

            v217 = v147;
            v148 = 1;
            goto LABEL_75;
          }
        }
      }
    }

    v228 = 0;
    v126 = 0;
    v224 = 0;
    v225 = 0;
    v135 = 0;
    v238 = 0;
    v137 = v240;
    goto LABEL_53;
  }

  v78 = v12;
  v79 = sub_240759AC4();
  v80 = sub_24075A5E4();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    *(v81 + 4) = v78;
    *v82 = v78;
    v83 = v78;
    _os_log_impl(&dword_240579000, v79, v80, "Failed to convert %@ into SetupContext, remote role is invalid", v81, 0xCu);
    sub_2405B8A50(v82, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v82, -1, -1);
    MEMORY[0x245CC76B0](v81, -1, -1);
  }

  v84 = type metadata accessor for SetupModel(0);
  v85 = *(*(v84 - 8) + 56);
  v86 = v84;
  v87 = v237;

  return v85(v87, 1, 1, v86);
}

uint64_t SetupContext.Builder.MissingExpectedValue.description.getter()
{
  v1 = *v0;

  return v1;
}

double SetupContext.Builder.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a1 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 78) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 192;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 160) = &type metadata for AutomaticSetupModelExchange;
  *(a1 + 168) = &protocol witness table for AutomaticSetupModelExchange;
  v3 = swift_allocObject();
  *(a1 + 136) = v3;
  AutomaticSetupModelExchange.init(queue:)(0, (v3 + 16));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 295) = 0;
  return result;
}

void *SetupContext.Builder.requireServices(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_24066418C(v5);
  sub_2406685FC(a1);

  return memcpy(a2, v2, 0x139uLL);
}

void sub_24066418C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_240666310(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *SetupContext.Builder.desireServices(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_24066418C(v5);
  sub_2406685FC(a1);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.requireService(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  sub_240666310(&v6, v4);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.desireService(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  sub_240666310(&v6, v4);

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.candidateAccountID(_:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v13[4] = a1[4];
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = v2[14];
  v14[2] = v2[13];
  v14[3] = v7;
  v14[4] = v2[15];
  v8 = v2[12];
  v14[0] = v2[11];
  v14[1] = v8;
  sub_2405AF99C(v13, &v12);
  sub_2405B8A50(v14, &qword_27E4B6420, &qword_240768F00);
  v9 = a1[3];
  v2[13] = a1[2];
  v2[14] = v9;
  v2[15] = a1[4];
  v10 = a1[1];
  v2[11] = *a1;
  v2[12] = v10;
  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder.enableProximitySetup()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 1;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;

  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 2;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder._enableProximitySetup(withTargetAuthTag:withCodeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  sub_240604AB8(*(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72) | ((*(v4 + 76) | (*(v4 + 78) << 16)) << 32));
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 1;
  *(v4 + 78) = 0;
  *(v4 + 76) = 192;
  *(v4 + 72) = 0;

  *(v4 + 96) = a1;
  *(v4 + 104) = a2;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;

  return memcpy(a4, v4, 0x139uLL);
}

void *sub_24066463C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72) | ((*(v4 + 76) | (*(v4 + 78) << 16)) << 32);
  v13 = a1;
  sub_240604AB8(v9, v10, v11, v12);
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = a1;
  *(v4 + 78) = BYTE6(a3);
  *(v4 + 76) = WORD2(a3);
  *(v4 + 72) = a3;
  *(v4 + 121) = a2;

  return memcpy(a4, v4, 0x139uLL);
}

void *SetupContext.Builder.restrictProximitySetup()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder.serverDeviceModel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v3[33] = a1;
  v3[34] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder.localDeviceSecret(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v3[35] = a1;
  v3[36] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder._userKind(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(a1 + 16);
  v9 = *(v2 + 40);
  sub_240668CD4(*a1, v5, v8);
  sub_240604C7C(v6, v7, v9);
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v8;

  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder._fixedPin(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v3[10] = a1;
  v3[11] = a2;

  return memcpy(a3, v3, 0x139uLL);
}

void *SetupContext.Builder._proximitySetupClient(for:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  *v15 = *a1;
  *&v15[15] = *(a1 + 15);
  v3 = *&v15[8];
  v12 = *v15;
  v4 = v15[30];
  v5 = *&v15[16] & 0xFF0000FFFFLL;
  v6 = (*&v15[24] | ((*&v15[28] | (v15[30] << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72) | ((*(v2 + 76) | (*(v2 + 78) << 16)) << 32);
  sub_240607D50(v15, v14);
  sub_240604AB8(v7, v8, v9, v10);
  *(v2 + 48) = v12;
  *(v2 + 56) = v3;
  *(v2 + 64) = v5;
  *(v2 + 78) = v4;
  *(v2 + 76) = WORD2(v6);
  *(v2 + 72) = v6;
  return memcpy(a2, v2, 0x139uLL);
}

void *SetupContext.Builder._proximitySetupClientIntercept()@<X0>(void *a1@<X8>)
{
  sub_240604AB8(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72) | ((*(v1 + 76) | (*(v1 + 78) << 16)) << 32));
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 2;
  *(v1 + 78) = 0;
  *(v1 + 76) = 192;
  *(v1 + 72) = 0;

  return memcpy(a1, v1, 0x139uLL);
}

void *SetupContext.Builder._context(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;

  *(v2 + 128) = v3;
  sub_240668CE8(v2 + 136, v27);
  if (v28)
  {
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAF0, &unk_24076FC50);
    if (swift_dynamicCast())
    {
      __src[6] = v24[6];
      __src[7] = v24[7];
      __src[8] = v24[8];
      __src[9] = v24[9];
      __src[2] = v24[2];
      __src[3] = v24[3];
      __src[4] = v24[4];
      __src[5] = v24[5];
      __src[0] = v24[0];
      __src[1] = v24[1];
      v7 = v25;
      memcpy(&__src[10] + 8, v26, 0x2E0uLL);
      *&__src[10] = v25;
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v8 = sub_240759AE4();
      __swift_project_value_buffer(v8, qword_27E4B8518);
      v9 = sub_240759AC4();
      v10 = sub_24075A5D4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136315138;
        swift_beginAccess();
        memcpy(__dst, __src, sizeof(__dst));
        v7 = __dst[20];
        memcpy(v22, __src, sizeof(v22));
        sub_240603884(__dst, v20);
        v13 = sub_24075A0E4();
        v15 = sub_2405BBA7C(v13, v14, &v21);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_240579000, v9, v10, "Applying main queue override on exchange: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x245CC76B0](v12, -1, -1);
        MEMORY[0x245CC76B0](v11, -1, -1);
      }

      sub_2406082EC();
      v16 = sub_24075A644();
      swift_beginAccess();
      *&__src[10] = v16;

      memcpy(v22, __src, sizeof(v22));
      v17 = swift_allocObject();
      memcpy((v17 + 16), __src, 0x388uLL);
      sub_240603884(v22, __dst);
      sub_2405B8A50(v2 + 136, &qword_27E4BAAE8, &qword_24076FC48);
      *(v2 + 136) = v17;
      *(v2 + 160) = &type metadata for AutomaticSetupModelExchange;
      *(v2 + 168) = &protocol witness table for AutomaticSetupModelExchange;
      memcpy(__dst, __src, sizeof(__dst));
      sub_240603930(__dst);
    }
  }

  else
  {
    v18 = v3;
    sub_2405B8A50(v27, &qword_27E4BAAE8, &qword_24076FC48);
  }

  return memcpy(v5, v2, 0x139uLL);
}

void *SetupContext.Builder.modelExchange<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *(&v12 + 1) = a2;
  v13 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_2405B8A50(v4 + 136, &qword_27E4BAAE8, &qword_24076FC48);
  v9 = v12;
  *(v4 + 136) = v11;
  *(v4 + 152) = v9;
  *(v4 + 168) = v13;
  return memcpy(a4, v4, 0x139uLL);
}

void SetupContext.Builder.build()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CD8, &qword_240768F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SetupModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 128);
  if (v11)
  {
    v12 = v11;
    AISSetupContext.into(relaxed:)(1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_240668E44(v2);
      sub_2405B8A50(v6, &qword_27E4B8CD8, &qword_240768F20);
      sub_240668E74();
      swift_allocError();
      swift_willThrow();

      return;
    }

    sub_240668D90(v6, v10, type metadata accessor for SetupModel);
  }

  else
  {
    sub_240668D58(v1, &v15);
    sub_240665178(v10);
  }

  sub_240668D90(v10, a1, type metadata accessor for SetupModel);
  v13 = type metadata accessor for SetupContext(0);
  sub_240668CE8(v2 + 136, a1 + *(v13 + 20));
  sub_240668E44(v2);
}

void *sub_240665178@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v59 - v4;
  v5 = *(v1 + 48);
  v6 = *(v1 + 76);
  v7 = *(v1 + 72) | ((v6 | (*(v1 + 78) << 16)) << 32);
  v72 = (v6 >> 6) >= 2u;
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v79 = *(v1 + 41);
  v10 = *(v1 + 80);
  v11 = *(v1 + 88);
  v12 = *(v1 + 104);
  v62 = *(v1 + 96);
  v65 = *(v1 + 112);
  v66 = v10;
  LODWORD(v64) = *(v1 + 120);
  LODWORD(v63) = *(v1 + 121);
  v13 = *(v1 + 264);
  v14 = *(v1 + 272);
  v69 = *(v2 + 304);
  v70 = v13;
  *&v82 = v79 ^ 1u | 0x200;
  *(&v82 + 1) = 0;
  v83 = 0uLL;
  v84 = xmmword_240768EF0;
  LOBYTE(v85) = 0;
  sub_240609C0C(v5, v9, v8, v7);
  v68 = v14;

  v67 = v11;

  sub_240676624(v89);
  sub_240604AE0(0, 0, 0, 0xA0u);
  sub_240609C34(0, 0, 0, 0);
  v77 = v7;
  v78 = v8;
  v75 = v5;
  v76 = HIDWORD(v7);
  v73 = v9;
  v74 = HIWORD(v7);
  if ((v7 & 0xC000000000) != 0)
  {
    v5 = 0;
    v15 = 0;
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v16 = v8;
    v15 = v8 & 0xFF0000FFFFLL;
    *&v82 = v5;
    *(&v82 + 1) = v9;
    *&v83 = v16;
    DWORD2(v83) = v7;
    BYTE14(v83) = BYTE6(v7);
    WORD6(v83) = WORD2(v7);
    sub_240607D50(&v82, &v81);
  }

  *&v88[21] = v89[6];
  *&v88[23] = v89[7];
  *&v88[25] = v89[8];
  *&v88[13] = v89[2];
  *&v88[15] = v89[3];
  *&v88[17] = v89[4];
  *&v88[19] = v89[5];
  *&v88[9] = v89[0];
  LOBYTE(v88[0]) = 0;
  BYTE1(v88[0]) = v72;
  v88[1] = v62;
  v88[2] = v12;
  v88[3] = v66;
  v88[4] = v67;
  v88[5] = v65;
  LOBYTE(v88[6]) = v64;
  BYTE1(v88[6]) = v63;
  v88[7] = 0;
  v88[8] = 0;
  LOWORD(v88[27]) = v90;
  *&v88[11] = v89[1];
  memset(&v88[28], 0, 48);
  v88[34] = v70;
  v88[35] = v68;
  v88[36] = v69;
  v88[37] = 0;
  LOBYTE(v88[38]) = 0;
  *&v82 = v5;
  *(&v82 + 1) = v9;
  *&v83 = v15;
  BYTE14(v83) = BYTE6(v7);
  WORD6(v83) = WORD2(v7);
  DWORD2(v83) = v7;
  DiscoveryModel.update(withPeer:)(&v82);
  sub_240609C84(v5, v9);
  v17 = type metadata accessor for IdMSAccount(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v21 = v80;
  v19(v80, 1, 1, v17);
  v65 = v20;
  v66 = v19;
  v22 = v19;
  v70 = type metadata accessor for SetupModel(0);
  v23 = v71;
  v24 = v71 + *(v70 + 36);
  v25 = type metadata accessor for AuthenticationModel(0);
  type metadata accessor for AuthenticationModel.State(0);
  swift_storeEnumTagMultiPayload();
  v22(v24, 1, 1, v17);
  v26 = (v24 + v25[5]);
  v26[3] = 0u;
  v26[4] = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  *v26 = 0u;
  v27 = v25[8];
  v28 = v23;
  v29 = (v24 + v25[7]);
  v30 = v25[9];
  v31 = (v24 + v25[11]);
  *v31 = 0;
  v31[1] = 0;
  sub_240590814(v21, v24);
  *(v24 + v25[6]) = 1;
  *v29 = 0;
  v29[1] = 0;
  *(v24 + v30) = 0;
  *(v24 + v27) = MEMORY[0x277D84F90];
  v32 = v21;
  v33 = v66;
  v66(v32, 1, 1, v17);
  v34 = *v2;
  v35 = *(v2 + 8);
  v72 = *(v2 + 16);
  LODWORD(v67) = *(v2 + 298);
  v36 = *(v2 + 288);
  v69 = *(v2 + 280);
  v64 = v36;
  LODWORD(v68) = *(v2 + 296);
  v38 = *(v2 + 24);
  v37 = *(v2 + 32);
  v59 = v35;
  v60 = v38;
  v62 = v34;
  v63 = v37;
  v39 = v28 + *(v70 + 40);
  v61 = *(v2 + 40);
  v33(v39, 1, 1, v17);
  v40 = type metadata accessor for SignInModel(0);
  v41 = (v39 + v40[5]);
  v41[4] = 0u;
  v41[5] = 0u;
  v41[2] = 0u;
  v41[3] = 0u;
  *v41 = 0u;
  v41[1] = 0u;
  v42 = (v39 + v40[10]);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v70 = v39 + v40[11];
  *(v39 + v40[13]) = 0;
  v43 = (v39 + v40[14]);
  v65 = v40[15];
  v66 = v43;
  *(v39 + v65) = 2;
  v44 = (v39 + v40[17]);
  *v44 = 0;
  v44[1] = 0;
  *(v39 + v40[18]) = 0;

  v45 = v62;

  v46 = v38;
  v47 = v63;
  LOBYTE(v38) = v61;
  sub_240668CD4(v46, v63, v61);
  sub_240590814(v80, v39);
  v48 = v41[3];
  v84 = v41[2];
  v85 = v48;
  v49 = v41[5];
  v86 = v41[4];
  v87 = v49;
  v50 = v41[1];
  v82 = *v41;
  v83 = v50;
  sub_2405B8A50(&v82, &qword_27E4B8D00, &qword_2407691E0);
  *v41 = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  v41[3] = 0u;
  v41[4] = 0u;
  v41[5] = 0u;
  *(v39 + v40[6]) = v45;
  *(v39 + v40[7]) = v59;
  *(v39 + v40[8]) = v67;
  *(v39 + v40[9]) = v72;
  v51 = v65;
  v52 = v66;
  v53 = v64;
  *v66 = v69;
  *(v52 + 1) = v53;
  *(v39 + v51) = v68;
  v54 = v39 + v40[16];
  *v54 = v60;
  *(v54 + 8) = v47;
  *(v54 + 16) = v38;
  v55 = v39 + v40[19];
  *(v55 + 32) = 0u;
  *(v55 + 48) = 0u;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0xE000000000000000;
  *(v55 + 80) = 0;
  *(v55 + 88) = 0;
  *(v55 + 96) = 0;
  sub_240604C2C(*v42, v42[1], v42[2], v42[3]);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v56 = v70;
  *v70 = 0;
  *(v56 + 8) = 0;
  *(v39 + v40[12]) = 0;
  LOBYTE(v39) = *(v2 + 312);
  sub_240668E44(v2);
  *v28 = v79;
  v57 = v73;
  *(v28 + 8) = v75;
  *(v28 + 16) = v57;
  *(v28 + 24) = v78;
  *(v28 + 38) = v74;
  LODWORD(v57) = v77;
  *(v28 + 36) = v76;
  *(v28 + 32) = v57;
  *(v28 + 40) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = -1;
  result = memcpy((v28 + 96), v88, 0x131uLL);
  *(v28 + 39) = v39;
  return result;
}

void AISSetupContextRemoteRole.into(with:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      goto LABEL_16;
    }

    if (a2 != 1)
    {
      goto LABEL_17;
    }

    v6 = [a1 bleDevice];
    if (!v6)
    {
      if (qword_27E4B5EB8 != -1)
      {
        swift_once();
      }

      v27 = sub_240759AE4();
      __swift_project_value_buffer(v27, qword_27E4B8518);
      v16 = sub_240759AC4();
      v25 = sub_24075A5E4();
      if (!os_log_type_enabled(v16, v25))
      {
        goto LABEL_35;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Failed to convert bleClient into RemoteRole: missing BLE Device on context";
LABEL_33:
      v20 = v25;
      v21 = v16;
      v22 = v18;
      v23 = 2;
LABEL_34:
      _os_log_impl(&dword_240579000, v21, v20, v19, v22, v23);
      MEMORY[0x245CC76B0](v18, -1, -1);
      goto LABEL_35;
    }

    v7 = v6;
    v8 = [v6 identifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_24075A0B4();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v28 = [v7 proximityServicePSM];
    v29 = [v7 nearbyActionType];
    v30 = [v7 nearbyActionFlags];
    AISDeviceClass.init(deviceClass:)([v7 nearbyActionDeviceClass]);
    v31 = v44;
    v32 = [v7 nearbyActionExtraData];
    if (v32)
    {
      v33 = v32;
      v34 = v30;
      v35 = v29;
      v36 = v28;
      v37 = v12;
      v38 = v10;
      v39 = sub_2407596C4();
      v41 = v40;

      v42 = sub_240665E94(v39, v41);
      v43 = v39;
      v10 = v38;
      v12 = v37;
      v28 = v36;
      v29 = v35;
      v30 = v34;
      v31 = v44;
      sub_2405BCD98(v43, v41);

      if ((v42 & 0x100) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    LOBYTE(v42) = 0;
LABEL_42:
    *a3 = v10;
    *(a3 + 8) = v12;
    *(a3 + 16) = v28 | (v29 << 32);
    *(a3 + 24) = v30;
    *(a3 + 30) = v42;
    v5 = v31 & 7;
    goto LABEL_43;
  }

  if (a2 == 2)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 1;
LABEL_16:
    *(a3 + 30) = 0;
    *(a3 + 24) = 0;
    v5 = 192;
    goto LABEL_43;
  }

  if (a2 == 3)
  {
    v13 = [a1 messageSessionTemplate];
    if (v13)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = v13;
      *(a3 + 30) = 0;
      *(a3 + 24) = 0;
      v5 = 64;
      goto LABEL_43;
    }

    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v24 = sub_240759AE4();
    __swift_project_value_buffer(v24, qword_27E4B8518);
    v16 = sub_240759AC4();
    v25 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v25))
    {
LABEL_35:

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0xFFFF00FFFF0000;
      *(a3 + 30) = 0;
      *(a3 + 28) = 0;
      *(a3 + 24) = 0;
      return;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Failed to convert preEstablishedClient into RemoteRole: missing messageSessionTemplate on context";
    goto LABEL_33;
  }

  if (a2 != 4)
  {
LABEL_17:
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v15 = sub_240759AE4();
    __swift_project_value_buffer(v15, qword_27E4B8518);
    v16 = sub_240759AC4();
    v17 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_35;
    }

    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a2;
    v19 = "Failed to convert unknown AISSetupContextRemoteRole into RemoteRole: %lu";
    v20 = v17;
    v21 = v16;
    v22 = v18;
    v23 = 12;
    goto LABEL_34;
  }

  v4 = [a1 messageSessionTemplate];
  if (!v4)
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v26 = sub_240759AE4();
    __swift_project_value_buffer(v26, qword_27E4B8518);
    v16 = sub_240759AC4();
    v25 = sub_24075A5E4();
    if (!os_log_type_enabled(v16, v25))
    {
      goto LABEL_35;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Failed to convert preEstablishedServer into RemoteRole: missing messageSessionTemplate on context";
    goto LABEL_33;
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v4;
  *(a3 + 30) = 0;
  *(a3 + 24) = 0;
  v5 = 128;
LABEL_43:
  *(a3 + 28) = v5;
}

id AISSetupContextDeviceUserKind.into(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = [a1 shouldCreateDeviceUser];
  v6 = result ^ 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *a3 = xmmword_24075D8C0;
      v7 = 3;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      *a3 = v6;
      *(a3 + 8) = 0;
      v7 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      v7 = 3;
LABEL_10:
      *(a3 + 16) = v7;
      return result;
    }

    if (a2 == 1)
    {
      *a3 = v6;
      *(a3 + 8) = 0;
      v7 = 1;
      goto LABEL_10;
    }
  }

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t AISSetupContextDeviceUserKind.into(onlyPersona:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *a3 = xmmword_24075D8C0;
      goto LABEL_6;
    }

    if (a2 == 3)
    {
      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
LABEL_6:
      *(a3 + 16) = 3;
      return result;
    }

    if (a2 == 1)
    {
      *a3 = result & 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }
  }

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t sub_240665E94(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_2407596A4();
  v4 = 0;
  return v3 | (v4 << 8);
}

void sub_240665F1C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_240665F90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_240665FC0()
{
  result = qword_280FAD720;
  if (!qword_280FAD720)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FAD720);
  }

  return result;
}

void sub_240666018(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || (a4 & 0xF800000000) != 0)
  {
    sub_240604AB8(a1, a2, a3, a4);
  }
}

id sub_240666040(id result, id a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0xFFFFFF00FFFF0000) != 0xFFFF00FFFF0000 || (a4 & 0xF800000000) != 0)
  {
    return sub_240609C0C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_240666068(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24075AE64();
  if (a2 <= 1)
  {
    if (!a2)
    {
      v7 = 0;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_42:
    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    v7 = 2;
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v7 = 3;
    goto LABEL_12;
  }

  if (a2 != 4)
  {
    goto LABEL_42;
  }

  v7 = 5;
LABEL_12:
  MEMORY[0x245CC6BA0](v7);
LABEL_13:
  v8 = sub_24075AED4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_240669184(a2);
    sub_240667120(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(v6 + 48);
    v13 = *(v12 + 8 * v10);
    if (v13 <= 1)
    {
      break;
    }

    switch(v13)
    {
      case 2:
        if (a2 == 2)
        {
          goto LABEL_39;
        }

        v14 = a2;
        v13 = 2;
        goto LABEL_33;
      case 3:
        if (a2 == 3)
        {
          goto LABEL_39;
        }

        v14 = a2;
        v13 = 3;
        goto LABEL_33;
      case 4:
        if (a2 == 4)
        {
          goto LABEL_39;
        }

        v14 = a2;
        v13 = 4;
        goto LABEL_33;
    }

LABEL_31:
    if (a2 < 5)
    {
      sub_240669184(a2);
      v14 = v13;
      goto LABEL_33;
    }

    sub_240669184(*(v12 + 8 * v10));
    sub_240669184(a2);
    sub_240669184(v13);
    v15 = sub_240753B98();
    sub_240669194(v13);
    sub_240669194(v13);
    sub_240669194(a2);
    if (v15)
    {
      v16 = a2;
      goto LABEL_40;
    }

LABEL_34:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_39;
      }

      v14 = a2;
      v13 = 1;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (a2)
  {
    v13 = 0;
    v14 = a2;
LABEL_33:
    sub_240669184(v14);
    sub_240669194(v13);
    sub_240669194(a2);
    goto LABEL_34;
  }

LABEL_39:
  sub_240669194(*(v12 + 8 * v10));
  v16 = v13;
LABEL_40:
  sub_240669194(v16);
  v19 = *(*(v6 + 48) + 8 * v10);
  *a1 = v19;
  sub_240669184(v19);
  return 0;
}

uint64_t sub_240666310(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v7 = sub_24075AED4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_24075A0B4();
      v13 = v12;
      if (v11 == sub_24075A0B4() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_24075ACF4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_2406673F8(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_2406664BC(_OWORD *a1, unint64_t *a2)
{
  v5 = *v2;
  sub_24075AE64();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[10];
  sub_24075A114();
  v36 = v2;
  if (v8 <= 1)
  {
    if (!v8)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      v9 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v9 = 2;
        goto LABEL_12;
      case 3:
        v9 = 3;
        goto LABEL_12;
      case 4:
        v9 = 5;
LABEL_12:
        MEMORY[0x245CC6BA0](v9);
        goto LABEL_13;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C();
LABEL_13:
  v37 = a2;
  v38 = *(a2 + 88);
  sub_24075AE94();
  v10 = sub_24075AED4();
  v11 = -1 << *(v5 + 32);
  v12 = v10 & ~v11;
  if ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v15 = (*(v5 + 48) + 96 * v12);
      v16 = v15[1];
      v42[0] = *v15;
      v42[1] = v16;
      v18 = v15[3];
      v17 = v15[4];
      v19 = v15[2];
      *&v43[9] = *(v15 + 73);
      v42[3] = v18;
      *v43 = v17;
      v42[2] = v19;
      if (v42[0] != __PAIR128__(v7, v6) && (sub_24075ACF4() & 1) == 0)
      {
        goto LABEL_17;
      }

      v20 = *&v43[16];
      if (*&v43[16] <= 1)
      {
        if (!*&v43[16])
        {
          if (v8)
          {
            sub_240669184(v8);
            v14 = 0;
            goto LABEL_16;
          }

LABEL_36:
          sub_2405F1048(v42, v40);
          sub_240669194(v20);
          sub_240669194(v20);
          goto LABEL_37;
        }

        if (*&v43[16] == 1)
        {
          if (v8 != 1)
          {
            sub_240669184(v8);
            v14 = 1;
            goto LABEL_16;
          }

          goto LABEL_36;
        }
      }

      else
      {
        switch(*&v43[16])
        {
          case 2:
            if (v8 != 2)
            {
              sub_240669184(v8);
              v14 = 2;
LABEL_16:
              sub_240669194(v14);
              sub_240669194(v8);
              goto LABEL_17;
            }

            goto LABEL_36;
          case 3:
            if (v8 != 3)
            {
              sub_240669184(v8);
              v14 = 3;
              goto LABEL_16;
            }

            goto LABEL_36;
          case 4:
            if (v8 != 4)
            {
              sub_240669184(v8);
              v14 = 4;
              goto LABEL_16;
            }

            goto LABEL_36;
        }
      }

      if (v8 < 5)
      {
        sub_240669184(v8);
        sub_240669184(v20);
        v14 = v20;
        goto LABEL_16;
      }

      sub_2405F1048(v42, v40);
      sub_240669184(v8);
      sub_240669184(v20);
      v22 = sub_240753B98();
      sub_240669194(v20);
      sub_240669194(v8);
      if ((v22 & 1) == 0)
      {
        sub_2405F10A4(v42);
        goto LABEL_17;
      }

LABEL_37:
      v21 = v43[24];
      sub_2405F10A4(v42);
      if (v21 == v38)
      {
        sub_2405F10A4(v37);
        v26 = (*(v5 + 48) + 96 * v12);
        v27 = v26[2];
        v28 = v26[3];
        v29 = v26[4];
        *(v41 + 9) = *(v26 + 73);
        v40[3] = v28;
        v41[0] = v29;
        v30 = v26[1];
        v40[0] = *v26;
        v40[1] = v30;
        v40[2] = v27;
        v31 = v26[1];
        *a1 = *v26;
        a1[1] = v31;
        v32 = v26[2];
        v33 = v26[3];
        v34 = v26[4];
        *(a1 + 73) = *(v26 + 73);
        a1[3] = v33;
        a1[4] = v34;
        a1[2] = v32;
        sub_2405F1048(v40, v39);
        return 0;
      }

LABEL_17:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v40[0] = *v36;
  sub_2405F1048(v37, v42);
  sub_2406675E0(v37, v12, isUniquelyReferenced_nonNull_native);
  *v36 = *&v40[0];
  v24 = *(v37 + 3);
  a1[2] = *(v37 + 2);
  a1[3] = v24;
  a1[4] = *(v37 + 4);
  *(a1 + 73) = *(v37 + 73);
  v25 = *(v37 + 1);
  result = 1;
  *a1 = *v37;
  a1[1] = v25;
  return result;
}

uint64_t sub_2406668A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  result = sub_24075A834();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v6 >= v11)
          {
            break;
          }

          v16 = v7[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v10 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v26 = 1 << *(v3 + 32);
        if (v26 >= 64)
        {
          bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v26;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24075AE64();
      if (v17 <= 1)
      {
        if (!v17)
        {
          v18 = 0;
          goto LABEL_26;
        }

        if (v17 == 1)
        {
          v18 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        switch(v17)
        {
          case 2:
            v18 = 2;
            goto LABEL_26;
          case 3:
            v18 = 3;
            goto LABEL_26;
          case 4:
            v18 = 5;
LABEL_26:
            MEMORY[0x245CC6BA0](v18);
            goto LABEL_27;
        }
      }

      MEMORY[0x245CC6BA0](4);
      sub_2405F115C();
LABEL_27:
      result = sub_24075AED4();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_240666B70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  result = sub_24075A834();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24075A0B4();
      sub_24075AE64();
      sub_24075A114();
      v18 = sub_24075AED4();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_240666DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  result = sub_24075A834();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v32;
        *(v3 + 16) = 0;
        break;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 96 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v34 = *(v18 + 16);
      v35 = *(v18 + 32);
      v36 = *(v18 + 48);
      v37 = *(v18 + 64);
      v21 = *(v18 + 80);
      v22 = *(v18 + 88);
      sub_24075AE64();
      sub_24075A114();
      if (v21 <= 1)
      {
        if (!v21)
        {
          v23 = 0;
          goto LABEL_26;
        }

        if (v21 == 1)
        {
          v23 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        switch(v21)
        {
          case 2:
            v23 = 2;
            goto LABEL_26;
          case 3:
            v23 = 3;
            goto LABEL_26;
          case 4:
            v23 = 5;
LABEL_26:
            MEMORY[0x245CC6BA0](v23);
            goto LABEL_27;
        }
      }

      MEMORY[0x245CC6BA0](4);
      sub_2405F115C();
LABEL_27:
      sub_24075AE94();
      result = sub_24075AED4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 96 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v34;
      *(v14 + 32) = v35;
      *(v14 + 48) = v36;
      *(v14 + 64) = v37;
      *(v14 + 80) = v21;
      *(v14 + 88) = v22;
      ++*(v5 + 16);
      v3 = v33;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_240667120(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_2406668A8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2406679A0();
      goto LABEL_45;
    }

    sub_240667DD0(v7 + 1);
  }

  v9 = *v3;
  sub_24075AE64();
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = 0;
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      v10 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v10 = 2;
        goto LABEL_19;
      case 3:
        v10 = 3;
        goto LABEL_19;
      case 4:
        v10 = 5;
LABEL_19:
        MEMORY[0x245CC6BA0](v10);
        goto LABEL_20;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C();
LABEL_20:
  v3 = v20;
  result = sub_24075AED4();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48);
      v3 = *(v13 + 8 * a2);
      if (v3 <= 1)
      {
        if (!v3)
        {
          if (!v6)
          {
            goto LABEL_49;
          }

          v3 = 0;
          v14 = v6;
          goto LABEL_40;
        }

        if (v3 == 1)
        {
          if (v6 == 1)
          {
            goto LABEL_49;
          }

          v14 = v6;
          v3 = 1;
          goto LABEL_40;
        }
      }

      else
      {
        switch(v3)
        {
          case 2:
            if (v6 == 2)
            {
              goto LABEL_49;
            }

            v14 = v6;
            v3 = 2;
            goto LABEL_40;
          case 3:
            if (v6 == 3)
            {
              goto LABEL_49;
            }

            v14 = v6;
            v3 = 3;
            goto LABEL_40;
          case 4:
            if (v6 == 4)
            {
              goto LABEL_49;
            }

            v14 = v6;
            v3 = 4;
            goto LABEL_40;
        }
      }

      if (v6 < 5)
      {
        sub_240669184(v6);
        v14 = v3;
LABEL_40:
        sub_240669184(v14);
        sub_240669194(v3);
        result = sub_240669194(v6);
        goto LABEL_41;
      }

      sub_240669184(*(v13 + 8 * a2));
      sub_240669184(v6);
      sub_240669184(v3);
      v15 = sub_240753B98();
      sub_240669194(v3);
      sub_240669194(v3);
      result = sub_240669194(v6);
      if (v15)
      {
        goto LABEL_50;
      }

LABEL_41:
      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_49:
    sub_240669194(v3);
    sub_240669194(v3);
LABEL_50:
    result = sub_24075AD84();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }

  return result;
}

uint64_t sub_2406673F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_240666B70(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_240667AF0();
      goto LABEL_16;
    }

    sub_240668070(v7 + 1);
  }

  v9 = *v3;
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v10 = sub_24075AED4();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for AIDAServiceType(0);
    do
    {
      v13 = sub_24075A0B4();
      v15 = v14;
      if (v13 == sub_24075A0B4() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_24075ACF4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_24075AD84();
  __break(1u);
  return result;
}

uint64_t sub_2406675E0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_240666DEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_240667C40();
      goto LABEL_50;
    }

    sub_2406682C4(v6 + 1);
  }

  v8 = *v3;
  sub_24075AE64();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 80);
  sub_24075A114();
  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = 0;
      goto LABEL_19;
    }

    if (v11 == 1)
    {
      v12 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        v12 = 2;
        goto LABEL_19;
      case 3:
        v12 = 3;
        goto LABEL_19;
      case 4:
        v12 = 5;
LABEL_19:
        MEMORY[0x245CC6BA0](v12);
        goto LABEL_20;
    }
  }

  MEMORY[0x245CC6BA0](4);
  sub_2405F115C();
LABEL_20:
  v32 = *(v5 + 88);
  sub_24075AE94();
  result = sub_24075AED4();
  v13 = -1 << *(v8 + 32);
  a2 = result & ~v13;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v16 = (*(v8 + 48) + 96 * a2);
      v17 = v16[1];
      v34[0] = *v16;
      v34[1] = v17;
      v19 = v16[3];
      v18 = v16[4];
      v20 = v16[2];
      *&v35[9] = *(v16 + 73);
      v34[3] = v19;
      *v35 = v18;
      v34[2] = v20;
      if (v34[0] != __PAIR128__(v10, v9))
      {
        result = sub_24075ACF4();
        if ((result & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v21 = *&v35[16];
      if (*&v35[16] <= 1)
      {
        if (!*&v35[16])
        {
          if (v11)
          {
            sub_240669184(v11);
            v15 = 0;
            goto LABEL_23;
          }

LABEL_43:
          sub_2405F1048(v34, v33);
          sub_240669194(v21);
          sub_240669194(v21);
          goto LABEL_44;
        }

        if (*&v35[16] == 1)
        {
          if (v11 != 1)
          {
            sub_240669184(v11);
            v15 = 1;
            goto LABEL_23;
          }

          goto LABEL_43;
        }
      }

      else
      {
        switch(*&v35[16])
        {
          case 2:
            if (v11 != 2)
            {
              sub_240669184(v11);
              v15 = 2;
LABEL_23:
              sub_240669194(v15);
              result = sub_240669194(v11);
              goto LABEL_24;
            }

            goto LABEL_43;
          case 3:
            if (v11 != 3)
            {
              sub_240669184(v11);
              v15 = 3;
              goto LABEL_23;
            }

            goto LABEL_43;
          case 4:
            if (v11 != 4)
            {
              sub_240669184(v11);
              v15 = 4;
              goto LABEL_23;
            }

            goto LABEL_43;
        }
      }

      if (v11 < 5)
      {
        sub_240669184(v11);
        sub_240669184(v21);
        v15 = v21;
        goto LABEL_23;
      }

      sub_2405F1048(v34, v33);
      sub_240669184(v11);
      sub_240669184(v21);
      v23 = sub_240753B98();
      sub_240669194(v21);
      sub_240669194(v11);
      if ((v23 & 1) == 0)
      {
        result = sub_2405F10A4(v34);
        goto LABEL_24;
      }

LABEL_44:
      v22 = v35[24];
      result = sub_2405F10A4(v34);
      if (v22 == v32)
      {
        goto LABEL_54;
      }

LABEL_24:
      a2 = (a2 + 1) & v14;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v24 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v25 = (*(v24 + 48) + 96 * a2);
  v26 = *(v5 + 16);
  *v25 = *v5;
  v25[1] = v26;
  *(v25 + 73) = *(v5 + 73);
  v27 = *(v5 + 64);
  v25[3] = *(v5 + 48);
  v25[4] = v27;
  v25[2] = *(v5 + 32);
  v28 = *(v24 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_54:
    result = sub_24075AD84();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v30;
  }

  return result;
}

void *sub_2406679A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_240669184(v18);
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_240667AF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_240667C40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  v2 = *v0;
  v3 = sub_24075A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v25[9] = *(v18 + 73);
        v24[3] = v20;
        *v25 = v21;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x59uLL);
        result = sub_2405F1048(v24, &v23);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_240667DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB20, &qword_24076FF88);
  result = sub_24075A834();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_39:
    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_24075AE64();
    if (v16 <= 1)
    {
      if (!v16)
      {
        v17 = 0;
        goto LABEL_26;
      }

      if (v16 == 1)
      {
        v17 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v16)
      {
        case 2:
          v17 = 2;
          goto LABEL_26;
        case 3:
          v17 = 3;
          goto LABEL_26;
        case 4:
          v17 = 5;
LABEL_26:
          MEMORY[0x245CC6BA0](v17);
          goto LABEL_27;
      }
    }

    MEMORY[0x245CC6BA0](4);

    sub_2405F115C();
LABEL_27:
    result = sub_24075AED4();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v20);
        if (v24 != -1)
        {
          v12 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    *(*(v5 + 48) + 8 * v12) = v16;
    ++*(v5 + 16);
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_39;
    }

    v15 = *(v3 + 56 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_240668070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
  result = sub_24075A834();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_24075A0B4();
      sub_24075AE64();
      v18 = v17;
      sub_24075A114();
      v19 = sub_24075AED4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2406682C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB28, &qword_24076FF90);
  result = sub_24075A834();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_39:
    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = 1 << *(v3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v18 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_15:
    v21 = (*(v3 + 48) + 96 * (v18 | (v6 << 6)));
    v23 = v21[3];
    v22 = v21[4];
    v24 = v21[2];
    *&v41[9] = *(v21 + 73);
    v40 = v23;
    *v41 = v22;
    v39 = v24;
    v25 = v21[1];
    v37 = *v21;
    v38 = v25;
    sub_24075AE64();
    v26 = *&v41[16];
    sub_2405F1048(&v37, v36);
    sub_24075A114();
    if (v26 <= 1)
    {
      if (!v26)
      {
        v27 = 0;
        goto LABEL_26;
      }

      if (v26 == 1)
      {
        v27 = 1;
        goto LABEL_26;
      }
    }

    else
    {
      switch(v26)
      {
        case 2:
          v27 = 2;
          goto LABEL_26;
        case 3:
          v27 = 3;
          goto LABEL_26;
        case 4:
          v27 = 5;
LABEL_26:
          MEMORY[0x245CC6BA0](v27);
          goto LABEL_28;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C();
LABEL_28:
    sub_24075AE94();
    result = sub_24075AED4();
    v28 = -1 << *(v5 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
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
        v34 = *(v11 + 8 * v30);
        if (v34 != -1)
        {
          v12 = __clz(__rbit64(~v34)) + (v30 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

    v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v5 + 48) + 96 * v12);
    v14 = v38;
    *v13 = v37;
    v15 = v39;
    v16 = v40;
    v17 = *v41;
    *(v13 + 73) = *&v41[9];
    v13[3] = v16;
    v13[4] = v17;
    v13[1] = v14;
    v13[2] = v15;
    ++*(v5 + 16);
    v9 = v35;
  }

  v19 = v6;
  while (1)
  {
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_39;
    }

    v20 = *(v3 + 56 + 8 * v6);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v35 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_2406685FC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_240668714(v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_240668714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24075A0B4();
  sub_24075AE64();
  sub_24075A114();
  v4 = sub_24075AED4();

  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = sub_24075A0B4();
    v10 = v9;
    if (v8 == sub_24075A0B4() && v10 == v11)
    {
      break;
    }

    v13 = sub_24075ACF4();

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_240667AF0();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 8 * v6);
  sub_2406688A4(v6);
  *v2 = v18;
  return v14;
}

unint64_t sub_2406688A4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24075A7B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_24075A0B4();
        sub_24075AE64();
        v11 = v10;
        sub_24075A114();
        v12 = sub_24075AED4();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_240668A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BAB30, &qword_24076FF98);
    v3 = sub_24075A844();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_24075A0B4();
      sub_24075AE64();
      v27 = v7;
      sub_24075A114();
      v8 = sub_24075AED4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_24075A0B4();
        v18 = v17;
        if (v16 == sub_24075A0B4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_24075ACF4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_240668C78(uint64_t a1)
{
  type metadata accessor for AIDAServiceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240668CD4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_240668CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAAE8, &qword_24076FC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240668D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for SetupContext(uint64_t a1)
{
  result = qword_27E4BAB00;
  if (!qword_27E4BAB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240668E74()
{
  result = qword_27E4BAAF8;
  if (!qword_27E4BAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAAF8);
  }

  return result;
}

void sub_240668EFC(uint64_t a1)
{
  type metadata accessor for SetupModel(319);
  if (v1 <= 0x3F)
  {
    sub_240668F80(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240668F80(uint64_t a1)
{
  if (!qword_27E4BAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BAAF0, &unk_24076FC50);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4BAB10);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11SignInModelV14DeviceUserKindO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup18SetupModelExchange_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240669020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
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

uint64_t sub_240669068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240669130()
{
  result = qword_27E4BAB18;
  if (!qword_27E4BAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAB18);
  }

  return result;
}

unint64_t sub_240669184(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

unint64_t sub_240669194(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_2406691A4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_2406691C8, 0, 0);
}

uint64_t sub_2406691C8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2406692F0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB40, &unk_240770028);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240669558;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [v1 authenticateWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2406692F0(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t dispatch thunk of AKAppleIDAuthenticationControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24063D29C;

  return v9(a1, a2, a3);
}

uint64_t sub_240669558(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A30, &unk_240767EF0);
      v9 = sub_240759F74();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24066968C(uint64_t a1)
{
  v2 = [v1 accountsUsingService_];
  sub_24066B350();
  sub_24066B39C();
  v3 = sub_24075A534();

  return v3;
}

uint64_t sub_24066971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2405CE450;

  return sub_24066B09C(a1, a2, a3, a4);
}

void *AISCheckInHelper.__allocating_init(with:authenticationController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *AISCheckInHelper.init(with:authenticationController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_240669870()
{
  sub_240669A24();
  v2 = v1;
  *(v0 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_240669914;

  return sub_240669C74(v2);
}

uint64_t sub_240669914()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_240669A24()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v2 = (*(v1 + 8))(1);
  v3 = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_24075A7C4();
    sub_24066B350();
    sub_24066B39C();
    sub_24075A564();
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_24075A7D4() || (sub_24066B350(), swift_dynamicCast(), v16 = v18, v14 = v6, v15 = v7, !v18))
    {
LABEL_21:
      sub_24066B6F8(v3);
      return;
    }

LABEL_19:
    if ((*(v1 + 16))(v16, ObjectType, v1))
    {
      sub_24075A914();
      sub_24075A944();
      sub_24075A954();
      sub_24075A924();
    }

    else
    {
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_21;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_240669C74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_240669C94, 0, 0);
}

uint64_t sub_240669C94()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = sub_24075A9D4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_280FADA00);
    v9 = sub_240759AC4();
    v10 = sub_24075A604();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_23;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "No accounts to check in, we're done";
    goto LABEL_22;
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_280FADA00);

  v4 = sub_240759AC4();
  v5 = sub_24075A604();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v1 >> 62)
    {
      v7 = sub_24075A9D4();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_240579000, v4, v5, "Checking in %ld account(s)", v6, 0xCu);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  else
  {
  }

  if ([*(v0[3] + 32) respondsToSelector_])
  {
    v13 = swift_task_alloc();
    v0[4] = v13;
    *(v13 + 16) = *(v0 + 1);
    v14 = swift_task_alloc();
    v0[5] = v14;
    *v14 = v0;
    v14[1] = sub_24066A008;

    return MEMORY[0x282200600]();
  }

  v9 = sub_240759AC4();
  v10 = sub_24075A5E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Method unavailable. Cannot continue to check in accounts.";
LABEL_22:
    _os_log_impl(&dword_240579000, v9, v10, v12, v11, 2u);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

LABEL_23:

  v15 = v0[1];

  return v15();
}

uint64_t sub_24066A008()
{

  return MEMORY[0x2822009F8](sub_24057D000, 0, 0);
}

uint64_t sub_24066A120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24066A1CC, 0, 0);
}

uint64_t sub_24066A1CC()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24075A9D4())
  {
    v3 = 0;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v24 = *(v0 + 80) + 32;
    v25 = i;
    while (1)
    {
      if (v27)
      {
        v6 = MEMORY[0x245CC65B0](v3, *(v0 + 80));
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v6 = *(v24 + 8 * v3);
      }

      v1 = v6;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v28 = v3 + 1;
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = *(v0 + 88);
      v10 = sub_24075A3D4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v1;
      v12[5] = v9;
      sub_24066B568(v7, v8);
      LODWORD(v7) = (*(v11 + 48))(v8, 1, v10);
      v14 = v1;

      v15 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_24066B5D8(*(v0 + 96));
        if (!*v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_24075A3C4();
        (*(v11 + 8))(v15, v10);
        if (!*v13)
        {
LABEL_14:
          v16 = 0;
          v18 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_24075A344();
      v18 = v17;
      swift_unknownObjectRelease();
LABEL_15:
      v19 = **(v0 + 72);
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_2407701D8;
      *(v20 + 24) = v12;

      if (v18 | v16)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v19;
      v1 = swift_task_create();

      sub_24066B5D8(v5);
      ++v3;
      if (v28 == v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BAB50, &unk_2407701F0);
  *v21 = v0;
  v21[1] = sub_24066A56C;

  return MEMORY[0x2822002C8](0, 0, v22);
}

uint64_t sub_24066A56C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24066A698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_24066A6B8, 0, 0);
}

uint64_t sub_24066A6B8()
{
  v28 = v0;
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = v1;
    v4 = sub_24075A0B4();
    v6 = v5;

    *(v0 + 64) = v6;
    v7 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v26 = (*(v7 + 8) + **(v7 + 8));
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_24066A9D4;

    return v26(v4, v6, 0xD000000000000013, 0x8000000240788170, ObjectType, v7);
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 48);
    v12 = sub_240759AE4();
    __swift_project_value_buffer(v12, qword_280FADA00);
    v13 = v11;
    v14 = sub_240759AC4();
    v15 = sub_24075A5E4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 48);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315138;
      v19 = [v16 username];
      if (v19)
      {
        v20 = v19;
        v21 = sub_24075A0B4();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_2405BBA7C(v21, v23, &v27);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_240579000, v14, v15, "Skipping checking for account %s, account has no altDSID", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245CC76B0](v18, -1, -1);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_24066A9D4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24066AB10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24066AB10()
{
  v25 = v0;

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_280FADA00);
  v4 = v2;
  v5 = v1;
  v6 = sub_240759AC4();
  v7 = sub_24075A5E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    v11 = [v8 username];
    if (v11)
    {
      v12 = v11;
      v13 = sub_24075A0B4();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v17 = v0[10];
    v18 = sub_2405BBA7C(v13, v15, &v24);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_24075AE04();
    v21 = sub_2405BBA7C(v19, v20, &v24);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_240579000, v6, v7, "Account %s checked in with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  else
  {
    v16 = v0[10];
  }

  v22 = v0[1];

  return v22();
}

uint64_t AISCheckInHelper.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AISCheckInHelper.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AISAKAppleIDAuthenticationControllerProtocol.performCheckInForAccount(withAltDSID:event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405CE450;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AISCheckInHelper.checkinMAIDAccountsOnDevice()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2405DA4B0;

  return v4();
}

uint64_t sub_24066B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = sub_24075A084();
    v5[18] = v7;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  v5[18] = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_24075A084();
  }

LABEL_4:
  v5[19] = v6;
  v5[2] = v5;
  v5[3] = sub_24066B1F8;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
  v5[10] = MEMORY[0x277D85DD0];
  v5[11] = 1107296256;
  v5[12] = sub_240647D90;
  v5[13] = &block_descriptor_10;
  v5[14] = v8;
  [v4 performCheckInForAccountWithAltDSID:v7 event:v6 completion:v5 + 10];

  return MEMORY[0x282200938](v5 + 2);
}

uint64_t sub_24066B1F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v6 = *(v3 + 8);

  return v6();
}

unint64_t sub_24066B350()
{
  result = qword_27E4B63F8;
  if (!qword_27E4B63F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B63F8);
  }

  return result;
}

unint64_t sub_24066B39C()
{
  result = qword_27E4BAB48;
  if (!qword_27E4BAB48)
  {
    sub_24066B350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BAB48);
  }

  return result;
}

uint64_t sub_24066B3F4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return sub_24066A120(a1, a2, v7, v6);
}

uint64_t sub_24066B4A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2405DA4B0;

  return sub_24066A698(a1, v4, v5, v7, v6);
}

uint64_t sub_24066B568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24066B5D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24066B640(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_24065B630(a1, v4);
}

uint64_t sub_24066B700()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4BAB58);
  v1 = __swift_project_value_buffer(v0, qword_27E4BAB58);
  if (qword_280FADA20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280FADA28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24066B7E4(uint64_t a1)
{
  sub_24075AE64();
  sub_24062785C(v3, *v1);
  return sub_24075AED4();
}

uint64_t RapportTransport.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RapportTransport.init(client:identifier:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for RapportTransport(0, a5, a6, a4);
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  v13 = *(v12 + 56);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v15 = *(*(v14 - 8) + 56);
  v15(a7 + v13, 1, 1, v14);
  result = (v15)(a7 + *(v12 + 60), 1, 1, v14);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  return result;
}

uint64_t RapportTransport.onReceive(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058CA60(v4[4], v4[5]);
  v4[4] = a1;
  v4[5] = a2;
  v9 = v4[6];
  v10 = v4[7];

  sub_24058CA60(v9, v10);
  v4[6] = 0;
  v4[7] = 0;
  v11 = *(*(a3 - 8) + 32);

  return v11(a4, v4, a3);
}

{
  sub_24058CA60(v4[4], v4[5]);
  v4[4] = 0;
  v4[5] = 0;
  sub_24058CA60(v4[6], v4[7]);
  v4[6] = a1;
  v4[7] = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t RapportTransport.onInvalidation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24058CA60(*(v4 + 64), *(v4 + 72));
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  (*(*(a3 - 8) + 32))(a4, v4, a3);
}

uint64_t RapportTransport.incomingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 56);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t sub_24066BBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RapportTransport.outgoingSigningIdentity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 60);
  sub_2405B8A50(v3 + v7, &qword_27E4B71C8, &unk_240762450);
  sub_24066BBD8(a1, v3 + v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, v3, a2);
}

uint64_t RapportTransport.build()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = &v26;
  v4 = v2[6];
  v3 = v2[7];
  if (v4)
  {
    v5 = v2[7];
  }

  else
  {
    v5 = 0;
  }

  v33 = v2[6];
  v34 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v39 = a1;
  v29 = v6;
  v30 = v7;
  sub_24057B5BC(v4, v3);
  v31 = v6;
  type metadata accessor for RapportTransport.MessageInfo(255, v6, v7, v8);
  v32 = sub_24075A714();
  swift_getFunctionTypeMetadata();
  sub_24075A714();
  v10 = type metadata accessor for RapportTransport.TypedReceiver(0, v6, v7, v9);
  sub_24062239C(sub_24066C07C, v28, MEMORY[0x277D84A98], v10, v11, &v35);
  v12 = sub_24058CA60(v4, v3);
  v13 = v36;
  if (v36 != 255)
  {
    v37 = v35;
LABEL_7:
    v17 = v37;
    sub_24066C120(v37, *(&v37 + 1), v13 & 1, v39, v26);
    return sub_2406718D4(v17, *(&v17 + 1), v13);
  }

  v27 = &v26;
  v15 = v2[5];
  v33 = v2[4];
  v14 = v33;
  v34 = v15;
  MEMORY[0x28223BE20](v12);
  v25[2] = v6;
  v25[3] = v7;
  sub_24057B5BC(v14, v15);
  v31 = v6;
  swift_getFunctionTypeMetadata();
  sub_24075A714();
  sub_24062239C(sub_24066C0C8, v25, MEMORY[0x277D84A98], v10, v16, &v37);
  sub_24058CA60(v14, v15);
  v13 = v38;
  if (v38 != 255)
  {
    goto LABEL_7;
  }

  (*(*(v39 - 8) + 8))(v2);
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v19 = sub_240759AE4();
  __swift_project_value_buffer(v19, qword_27E4BAB58);
  v20 = sub_240759AC4();
  v21 = sub_24075A5E4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_240579000, v20, v21, "Failed to build rapport transport, missing receiver", v22, 2u);
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  type metadata accessor for RapportTransport.Failure(0, v6, v7, v23);
  swift_getWitnessTable();
  swift_allocError();
  *v24 = 0;
  return swift_willThrow();
}

uint64_t sub_24066C0E4@<X0>(uint64_t *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
}

uint64_t sub_24066C120@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v102) = a3;
  v92 = a2;
  v91 = a1;
  v85 = a5;
  v101 = *(a4 - 8);
  v103 = *(v101 + 64);
  MEMORY[0x28223BE20](a1);
  v94 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v9 + 24);
  v107 = *(v9 + 16);
  v10 = v107;
  v12 = type metadata accessor for MessageUnpacker(0, v107, v11, v9);
  v99 = *(v12 - 8);
  v100 = v12;
  v89 = *(v99 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v98 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v78 - v18;
  v21 = type metadata accessor for MessagePacker(0, v10, v11, v20);
  v96 = *(v21 - 8);
  v97 = v21;
  v88 = *(v96 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v24;
  MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  v106 = *v6;
  v27 = a4;
  v93 = sub_24066CA9C(v106);
  sub_2407594B4();
  swift_allocObject();
  v82 = sub_2407594A4();
  sub_240759484();
  swift_allocObject();
  v81 = sub_240759474();
  swift_allocObject();
  v28 = sub_2407594A4();
  v86 = v27;
  sub_24066BBD8(v6 + *(v27 + 60), v19);
  v29 = v107;
  MessagePacker.init(encoder:signingIdentity:topicIdentifier:)(v28, v19, 0, 0, v107, v11, v26);
  swift_allocObject();
  v30 = sub_240759474();
  sub_24066BBD8(v6 + *(v27 + 56), v19);
  v31 = v29;
  v32 = v11;
  v104 = v11;
  MessageUnpacker.init(decoder:signingIdentity:topicIdentifier:)(v30, v19, 0, 0, v31, v11, v16);
  v90 = *(v6 + 24);
  [v106 setDispatchQueue_];
  v105 = v6;
  v87 = sub_24075A084();
  v34 = v98;
  v33 = v99;
  v35 = *(v99 + 16);
  v84 = v16;
  v36 = v100;
  v80 = v99 + 16;
  v79 = v35;
  v35(v98, v16, v100);
  v37 = v96;
  v38 = *(v96 + 16);
  v83 = v26;
  v39 = v97;
  v78[1] = v96 + 16;
  v78[0] = v38;
  v38(v24, v26, v97);
  v40 = v33;
  v41 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v42 = (v89 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v37 + 80) + v42 + 17) & ~*(v37 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v107;
  *(v44 + 24) = v32;
  (*(v40 + 32))(v44 + v41, v34, v36);
  v45 = v44 + v42;
  v46 = v91;
  v47 = v92;
  *v45 = v91;
  *(v45 + 8) = v47;
  *(v45 + 16) = v102 & 1;
  v48 = v37;
  v49 = v86;
  (*(v48 + 32))(v44 + v43, v95, v39);
  v112 = sub_240671F5C;
  v113 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v102 = &v110;
  v110 = sub_24066F148;
  v111 = &block_descriptor_46;
  v50 = _Block_copy(&aBlock);
  sub_240672090(v46, v47);

  v51 = v87;
  [v106 registerRequestID:v87 options:0 handler:v50];
  _Block_release(v50);

  v52 = v101;
  v53 = *(v101 + 16);
  v54 = v94;
  v53(v94, v105, v49);
  v55 = *(v52 + 80);
  v56 = swift_allocObject();
  v57 = v107;
  v58 = v104;
  *(v56 + 16) = v107;
  *(v56 + 24) = v58;
  v92 = *(v52 + 32);
  v92(v56 + ((v55 + 32) & ~v55), v54, v49);
  v112 = sub_240672098;
  v113 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_240644810;
  v111 = &block_descriptor_52_0;
  v59 = _Block_copy(&aBlock);

  [v106 setInvalidationHandler_];
  _Block_release(v59);
  v106 = v53;
  v53(v54, v105, v49);
  v60 = (v55 + 40) & ~v55;
  v61 = swift_allocObject();
  v62 = v104;
  v61[2] = v57;
  v61[3] = v62;
  v63 = v93;
  v61[4] = v93;
  v64 = v49;
  v92(v61 + v60, v54, v49);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_240672108;
  *(v65 + 24) = v61;
  v112 = sub_240635D44;
  v113 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2406C0E30;
  v111 = &block_descriptor_61_0;
  v66 = _Block_copy(&aBlock);
  v67 = v63;

  dispatch_sync(v90, v66);
  _Block_release(v66);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }

  else
  {
    v69 = v54;
    v70 = v105;
    v103 = v61;
    v71 = v64;
    v106(v54, v105, v64);
    v72 = v95;
    v73 = v83;
    v74 = v97;
    (v78[0])(v95, v83, v97);
    v75 = v98;
    v76 = v84;
    v77 = v100;
    v79(v98, v84, v100);
    sub_24066F33C(v69, v67, v72, v75, v107, v104, v85);

    (*(v99 + 8))(v76, v77);
    (*(v96 + 8))(v73, v74);
    (*(v101 + 8))(v70, v71);
  }

  return result;
}

id sub_24066CA9C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [objc_allocWithZone(MEMORY[0x277D02888]) init];
  [v4 setDispatchQueue_];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v21 = sub_2406723C0;
  v22 = v5;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_24066F988;
  v20 = &block_descriptor_90;
  v6 = _Block_copy(&v17);
  v7 = a1;
  v8 = v3;
  sub_24057B5BC(sub_2406723C0, v5);

  [v4 setRegisterRequestHandler_];
  _Block_release(v6);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v21 = sub_2406723C8;
  v22 = v9;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_24066FBB8;
  v20 = &block_descriptor_87;
  v10 = _Block_copy(&v17);
  v11 = v7;
  sub_24057B5BC(sub_2406723C8, v9);

  [v4 setDeregisterRequestHandler_];
  _Block_release(v10);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v8;
  v21 = sub_240672420;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_240670178;
  v20 = &block_descriptor_84;
  v13 = _Block_copy(&v17);
  v14 = v11;
  v15 = v8;
  sub_24057B5BC(sub_240672420, v12);

  [v4 setSendRequestHandler_];
  _Block_release(v13);

  return v4;
}

uint64_t sub_24066CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a8;
  v48 = a6;
  v49 = a7;
  v42 = a5;
  v51 = a3;
  v52 = a4;
  v46 = a1;
  v47 = a2;
  v44 = a11;
  v45 = a10;
  v11 = type metadata accessor for MessagePacker(0, a10, a11, a4);
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v41 = &v39 - v14;
  v17 = type metadata accessor for MessageUnpacker(0, a10, a11, v16);
  v39 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v39 - v23;
  v43 = &v39 - v23;
  v25 = sub_24075A3D4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v18 + 16))(v21, v42, v17);
  (*(v12 + 16))(v15, a9, v11);
  v26 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v27 = (v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v12 + 80) + v28 + 17) & ~*(v12 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v44;
  *(v31 + 4) = v45;
  *(v31 + 5) = v32;
  *(v31 + 6) = v46;
  (*(v18 + 32))(&v31[v26], v21, v39);
  v33 = v48;
  *&v31[v27] = v47;
  v34 = &v31[v28];
  v35 = v49;
  *v34 = v33;
  *(v34 + 1) = v35;
  v34[16] = v50 & 1;
  (*(v12 + 32))(&v31[v29], v41, v40);
  v36 = &v31[v30];
  v37 = v52;
  *v36 = v51;
  v36[1] = v37;

  sub_240672090(v33, v35);

  sub_240602F08(0, 0, v43, &unk_2407705F0, v31);
}

uint64_t sub_24066D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 944) = v15;
  *(v8 + 936) = v14;
  *(v8 + 928) = v13;
  *(v8 + 912) = v12;
  *(v8 + 145) = v11;
  *(v8 + 904) = a8;
  *(v8 + 896) = a7;
  *(v8 + 888) = a6;
  *(v8 + 880) = a5;
  *(v8 + 872) = a4;
  *(v8 + 952) = *(v14 - 8);
  *(v8 + 960) = swift_task_alloc();
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24066D1DC, 0, 0);
}

uint64_t sub_24066D1DC()
{
  v69 = v0;
  if (qword_27E4B5F48 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  *(v0 + 1000) = __swift_project_value_buffer(v1, qword_27E4BAB58);

  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v68[0] = v5;
    *v4 = 136315138;
    v6 = sub_240759F84();
    v8 = sub_2405BBA7C(v6, v7, v68);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_240579000, v2, v3, "Received incoming request to unpack: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CC76B0](v5, -1, -1);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v9 = *(v0 + 992);
  v10 = *(v0 + 872);
  v12 = type metadata accessor for MessageUnpacker(0, *(v0 + 936), *(v0 + 944), v11);
  MessageUnpacker.unpack(_:)(v10, v12, v9);
  v13 = *(v0 + 944);
  v14 = *(v0 + 936);
  v66 = *(v0 + 904);
  v15 = *(v0 + 896);
  *(v0 + 864) = *(v0 + 888);
  v16 = swift_task_alloc();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
  v18 = type metadata accessor for RapportTransport.MessageInfo(0, v14, v13, v17);
  sub_24062239C(sub_240672388, v16, MEMORY[0x277D84A98], v18, v19, v0 + 152);

  v20 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v20;
  *(v0 + 144) = *(v0 + 280);
  v21 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v21;
  v22 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v22;
  v23 = *(v0 + 168);
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v23;
  sub_240672090(v15, v66);
  v24 = sub_24075A714();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v26(v0 + 288, v0 + 16, v24);
  v27 = sub_240759AC4();
  v28 = sub_24075A5D4();
  sub_2406718EC(v15, v66);
  (*(v25 + 8))(v0 + 16, v24);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 944);
    v64 = v26;
    v30 = *(v0 + 936);
    v31 = *(v0 + 904);
    v32 = *(v0 + 896);
    v67 = v28;
    v33 = *(v0 + 145);
    v34 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v68[0] = v65;
    *v34 = 136315394;
    *(v0 + 832) = v32;
    *(v0 + 840) = v31;
    *(v0 + 848) = v33 & 1;
    sub_240672090(v32, v31);
    type metadata accessor for RapportTransport.TypedReceiver(0, v30, v29, v35);
    v36 = sub_24075A0E4();
    v38 = sub_2405BBA7C(v36, v37, v68);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    v39 = *(v0 + 128);
    *(v0 + 656) = *(v0 + 112);
    *(v0 + 672) = v39;
    *(v0 + 688) = *(v0 + 144);
    v40 = *(v0 + 64);
    *(v0 + 592) = *(v0 + 48);
    *(v0 + 608) = v40;
    v41 = *(v0 + 96);
    *(v0 + 624) = *(v0 + 80);
    *(v0 + 640) = v41;
    v42 = *(v0 + 32);
    *(v0 + 560) = *(v0 + 16);
    *(v0 + 576) = v42;
    v64(v0 + 696, v0 + 16, v24);
    v43 = sub_24075A0E4();
    v45 = sub_2405BBA7C(v43, v44, v68);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_240579000, v27, v67, "Handling incoming request with receiver (%s) and inMessageInfo: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v65, -1, -1);
    MEMORY[0x245CC76B0](v34, -1, -1);
  }

  v46 = *(v0 + 992);
  v47 = *(v0 + 976);
  v48 = *(v0 + 952);
  v49 = *(v0 + 936);
  v50 = *(v0 + 145);
  v51 = *(v48 + 16);
  *(v0 + 1008) = v51;
  *(v0 + 1016) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v47, v46, v49);
  v52 = *(v0 + 128);
  *(v0 + 520) = *(v0 + 112);
  *(v0 + 536) = v52;
  *(v0 + 552) = *(v0 + 144);
  v53 = *(v0 + 64);
  *(v0 + 456) = *(v0 + 48);
  *(v0 + 472) = v53;
  v54 = *(v0 + 96);
  *(v0 + 488) = *(v0 + 80);
  *(v0 + 504) = v54;
  v55 = *(v0 + 32);
  *(v0 + 424) = *(v0 + 16);
  *(v0 + 440) = v55;
  v56 = swift_task_alloc();
  *(v0 + 1024) = v56;
  *v56 = v0;
  v56[1] = sub_24066DB0C;
  v57 = *(v0 + 984);
  v58 = *(v0 + 976);
  v59 = *(v0 + 944);
  v60 = *(v0 + 936);
  v61 = *(v0 + 904);
  v62 = *(v0 + 896);

  return sub_24066EC24(v57, v58, v0 + 424, v62, v61, v50 & 1, v60, v59);
}