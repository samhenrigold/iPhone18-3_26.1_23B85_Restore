void Tensor.isScalar.getter()
{
  if (*(*(*(*v0 + 16) + 152) + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v2)
      {
        break;
      }

      if (v1 == 1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t Tensor.scalars<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *v3;
  v14 = *(a3 + 32);
  v33 = a1;
  v15 = OUTLINED_FUNCTION_23_0();
  v16 = v14(v15);
  Tensor.scalarType.getter(v16);
  v18 = (*(v17 + 32))(&v35);
  if (v34 == v35)
  {
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_20_6();
    *(v19 - 16) = v13;
    v20 = sub_25BCB68CC();

    sub_25BAA4214(sub_25BB41738, v34, v20);

    return v13;
  }

  else
  {
    v22 = *(v13 + 16);
    OUTLINED_FUNCTION_10();
    swift_retain_n();
    v23 = sub_25BA928B4();
    [v23 lock];

    OUTLINED_FUNCTION_6_19();
    sub_25BA92920(v24, v25, v26, v27);
    [*(v22 + 224) unlock];

    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_23_0();
    v14(v28);
    (*(v8 + 104))(v12, *MEMORY[0x277D84660], v6);
    Tensor.cast(to:roundingRule:)();
    (*(v8 + 8))(v12, v6);
    OUTLINED_FUNCTION_21_7();
    v21 = Tensor.scalars<A>(as:)(v29, v30, v31);
  }

  return v21;
}

uint64_t sub_25BB3F4D8(uint64_t a1)
{
  OUTLINED_FUNCTION_22();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_25BAA6EB0();

  return v2;
}

uint64_t Tensor.place(on:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_25BAA51C8(*(*v1 + 16) + 168, v28);
  if (v29)
  {
    if (sub_25BAD1FB0(v31, *(a1 + 40)))
    {
      v5 = v29;
      v6 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v7 = (*(v6 + 24))(a1, v5, v6);
      result = sub_25BABF0A8(v28);
      if (v7)
      {
        return result;
      }
    }

    else
    {
      sub_25BABF0A8(v28);
    }
  }

  else
  {
    sub_25BAA6FBC(v28, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  v9 = *(v4 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v10 = sub_25BA928B4();
  [v10 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v11, v12, v13, v14);
  [*(v9 + 224) unlock];

  v16 = v28[0];
  v15 = v28[1];
  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v17 = qword_281557400;
  v18 = *(v4 + 16);
  v27 = *(v18 + 152);
  v26 = *(v18 + 160);
  sub_25BABEF40(a1, v28);
  swift_unknownObjectRetain();
  sub_25BCB617C();
  sub_25BC72A84(&v27, &v26, v28, v17, v16, v15);
  v20 = v19;
  sub_25BAA6FBC(v28, &qword_27FBB6730, &qword_25BCBC4B0);

  v21 = type metadata accessor for TensorRepresentation();
  sub_25BABEF40(a1, v28);
  ObjectType = swift_getObjectType();
  v23 = swift_unknownObjectRetain();
  LOBYTE(v27) = 1;
  v24 = sub_25BC5FAD0(v23, v28, 0x100000000uLL, v21, ObjectType, v20);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  sub_25BAA6EB0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *v2 = v25;
  return result;
}

void sub_25BB3F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v12 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v12);

  v13 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v13, v14, v15, v16);
  if (v11)
  {
    [v9[28] unlock];
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v17 v18];

    swift_getObjectType();
    v19 = OUTLINED_FUNCTION_5_17();
    v20(v19);
    OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3F8A8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v4 = v2;

  v6 = sub_25BA928B4();
  [v6 lock];

  v7 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v7, v8, v9, v10);
  [*(v4 + 224) unlock];

  if (v3)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = sub_25BA928B4();
    [v11 lock];

    ObjectType = swift_getObjectType();
    v13 = *(v16 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
    v13(&v15, a1, v17, v14, ObjectType, v16);
    [*(v4 + 224) unlock];
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v12 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v12);

  v13 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v13, v14, v15, v16);
  [v9[28] unlock];

  if (v11)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v17 v18];

    swift_getObjectType();
    v19 = OUTLINED_FUNCTION_5_17();
    v20(v19);
    [v9[28] unlock];
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_8_14();
  }
}

void sub_25BB3FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_7_14();

  v12 = sub_25BA928B4();
  OUTLINED_FUNCTION_9_10(v12);

  v13 = OUTLINED_FUNCTION_1_19();
  sub_25BA92920(v13, v14, v15, v16);
  if (v11)
  {
    [v9[28] unlock];

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    swift_unknownObjectRetain();
    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v17 v18];

    swift_getObjectType();
    v19 = OUTLINED_FUNCTION_5_17();
    v20(v19);
    OUTLINED_FUNCTION_27_6();
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_8_14();
  }
}

uint64_t Tensor.resolve(descriptor:)(uint64_t a1)
{
  v2 = *(*v1 + 16);
  sub_25BCB617C();
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v3 = sub_25BA928B4();
  [v3 lock];

  OUTLINED_FUNCTION_21_7();
  sub_25BA92920(v4, v5, v6, v7);
  [*(v2 + 224) unlock];

  return swift_unknownObjectRelease();
}

void TensorScalar.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(*(*(*a1 + 16) + 152) + 16))
  {
    goto LABEL_6;
  }

  do
  {
    OUTLINED_FUNCTION_0();
    if (!v8)
    {
      __break(1u);
      return;
    }
  }

  while (v6 != 1);
  if (v7 != 1)
  {

    v9 = 1;
  }

  else
  {
LABEL_6:
    Tensor.scalar<A>(as:)(a2, a2, a3);

    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(a4, v9, 1, a2);
}

uint64_t sub_25BB3FD94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_17;
  }

  v5 = *(*(a2 + 16) + 152);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 1;
    v9 = *(v5 + 16);
    while (1)
    {
      v10 = *v7++;
      v11 = v8 * v10;
      if ((v8 * v10) >> 64 != (v8 * v10) >> 63)
      {
        break;
      }

      v8 = v11;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 1;
LABEL_8:
    if ((*(*(a3 - 8) + 72) * v11) >> 64 != (*(*(a3 - 8) + 72) * v11) >> 63)
    {
      goto LABEL_16;
    }

    if (!v6)
    {
LABEL_13:
      sub_25BCB631C();
      sub_25BCB632C();
      swift_getWitnessTable();
      result = sub_25BCB68DC();
      *a4 = result;
      return result;
    }

    v12 = (v5 + 32);
    v13 = 1;
    while (1)
    {
      v14 = *v12++;
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      v13 = v15;
      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t Tensor.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = OUTLINED_FUNCTION_5_17();
  sub_25BAA4214(v4, v5, a3);
}

uint64_t Tensor.withUnsafeMutableBytes<A>(_:)()
{
  v2 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:

    OUTLINED_FUNCTION_21_7();
    sub_25BC5F0C8(v22, v23, v24);
  }

  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v6 = sub_25BA928B4();
  [v6 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v7, v8, v9, v10);
  if (!v1)
  {
    [*(v5 + 224) unlock];
    OUTLINED_FUNCTION_10();

    v12 = v26[0];
    v11 = v26[1];
    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v13 = qword_281557400;
    v14 = *(v4 + 16);
    v28 = *(v14 + 152);
    v27 = *(v14 + 160);
    sub_25BAA51C8(v14 + 168, v26);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v28, &v27, v26, v13, v12, v11);
    v16 = v15;
    sub_25BAA6FBC(v26, &qword_27FBB6730, &qword_25BCBC4B0);

    v17 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(*(v4 + 16) + 168, v26);
    ObjectType = swift_getObjectType();
    v19 = swift_unknownObjectRetain();
    LOBYTE(v28) = 1;
    v20 = sub_25BC5FAD0(v19, v26, 0x100000000uLL, v17, ObjectType, v16);
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *v2 = v21;
    goto LABEL_6;
  }

  [*(v5 + 224) unlock];

  __break(1u);
  return result;
}

uint64_t ContiguousArray<A>.resolve(descriptor:)(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v10 = a1[1];
  v11 = *a1;
  v12 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(a2 + 16);

  v4 = 0;
  while (v3 != v4)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_15;
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_18;
    }

    v5 = *(*(v2 + 8 * v4 + 32) + 16);
    swift_retain_n();

    sub_25BA928B4();
    OUTLINED_FUNCTION_15_9();
    [v6 v7];

    swift_beginAccess();
    sub_25BA9323C((v5 + 5), v13);
    if (v15 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v14);
LABEL_9:
      [v5[28] unlock];

      ++v4;
    }

    else
    {
      if (v15 == 2)
      {
        sub_25BA9778C(v13);
        goto LABEL_9;
      }

      sub_25BA9778C(v13);
      [v5[28] unlock];

      MEMORY[0x25F876F40](v8);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      OUTLINED_FUNCTION_5_17();
      sub_25BCB680C();
      v12 = v16;
      ++v4;
    }
  }

  v2 = v12;
  if (!sub_25BA9AC54(v12))
  {
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13[0] = v11;
  v13[1] = v10;
  sub_25BACEFC8(v2, v13);
}

uint64_t Tensor.customMirror.getter()
{
  v1 = sub_25BCB7A8C();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v19 = *v0;
  v11 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB8, &qword_25BCBF750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE70;
  *(v12 + 32) = 0x6570616873;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 72) = &type metadata for TensorShape;
  *(v12 + 48) = *(*(v11 + 16) + 152);
  *(v12 + 80) = 0x795472616C616373;
  *(v12 + 88) = 0xEA00000000006570;
  v18 = v11;
  v13 = Tensor.scalarType.getter(v12);
  *(v12 + 120) = swift_getMetatypeMetadata();
  *(v12 + 96) = v13;
  v14 = *MEMORY[0x277D84C10];
  v15 = sub_25BCB7A7C();
  OUTLINED_FUNCTION_9_3();
  (*(v16 + 104))(v10, v14, v15);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v1);

  sub_25BCB617C();
  return sub_25BCB7ADC();
}

uint64_t sub_25BB40608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x795472616C616373 && a2 == 0xEA00000000006570;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1635017060 && a2 == 0xE400000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x800000025BCDB9D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_25BB40780(char a1)
{
  result = 0x6570616873;
  switch(a1)
  {
    case 1:
      result = 0x795472616C616373;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BB40804@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BADEF2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB40830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BB40778(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_25BB40864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB40608(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_25BB408AC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BADEF2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB408D4(uint64_t a1)
{
  v2 = sub_25BB41758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB40910(uint64_t a1)
{
  v2 = sub_25BB41758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB4094C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_25BCB741C();
  __swift_allocate_value_buffer(v3, qword_28154C1C8);
  v4 = __swift_project_value_buffer(v3, qword_28154C1C8);
  sub_25BCB73FC();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB40A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_25BCB741C();
  __swift_allocate_value_buffer(v3, qword_27FBB4870);
  v4 = __swift_project_value_buffer(v3, qword_27FBB4870);
  sub_25BCB73FC();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4890, &qword_25BCBF758);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB41758();
  sub_25BCB7B6C();
  v32[0] = *(*(v10 + 16) + 152);
  LOBYTE(v29) = 0;
  sub_25BB417AC();
  sub_25BCB617C();
  sub_25BCB779C();
  if (!v2)
  {

    v32[0] = v10;
    Tensor.scalarType.getter(v11);
    (*(v12 + 32))(&v29);
    LOBYTE(v27) = 1;
    sub_25BB41800();
    sub_25BCB779C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_25BCB7B5C();
    if (qword_28154C1E0 != -1)
    {
      swift_once();
    }

    v14 = sub_25BCB741C();
    v15 = __swift_project_value_buffer(v14, qword_28154C1C8);
    sub_25BB3EF70(v15, v13, &v27);

    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48A0, &qword_25BCBF770);
      if (swift_dynamicCast())
      {
        if (*(&v30 + 1))
        {
          sub_25BA97060(&v29, v32);
          v16 = v33;
          v17 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          *&v29 = v10;
          v18 = sub_25BCB771C();
          (*(v17 + 8))(&v29, v18, v16, v17);

          LOBYTE(v29) = 3;
          sub_25BCB775C();

          __swift_destroy_boxed_opaque_existential_1(v32);
          return (*(v6 + 8))(v9, v4);
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    else
    {
      sub_25BAA6FBC(&v27, &qword_27FBB40F8, &qword_25BCBF760);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    v19 = sub_25BAA6FBC(&v29, &qword_27FBB4898, &qword_25BCBF768);
    MEMORY[0x28223BE20](v19);
    *(&v27 - 2) = v9;

    sub_25BAA82DC(sub_25BB41854, (&v27 - 2), v20, v21, v22, v23, v24, v25, v27);

    return (*(v6 + 8))(v9, v4);
  }

  return (*(v6 + 8))(v9, v4);
}

void sub_25BB40F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BCB59BC();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CC92A8], v6);
    v9 = MEMORY[0x25F876200](a1, a2 - a1, v8);
    v11 = v10;
    v12[0] = v9;
    v12[1] = v10;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4890, &qword_25BCBF758);
    sub_25BB41DB0();
    sub_25BCB779C();
    sub_25BB0D160(v9, v11);
  }

  else
  {
    __break(1u);
  }
}

void *Tensor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48A8, &qword_25BCBF778);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB41758();
  sub_25BCB7B2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25BB41870();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB76AC();
  v8 = v42;
  sub_25BB418C4();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB76AC();
  v9 = v42;
  LOBYTE(v48[0]) = 2;
  sub_25BB41918();
  OUTLINED_FUNCTION_3_15();
  sub_25BCB765C();
  if (*(&v42 + 1) >> 60 != 15)
  {
    *&v46 = v42;
    LOBYTE(v51) = v42;
    OUTLINED_FUNCTION_19_1();
    Tensor.init(shape:data:scalarType:on:)(&v46, v22, v23, &v51, &v42, v48);
    v24 = OUTLINED_FUNCTION_4_18();
    v25(v24);
    v26 = v48[0];
    goto LABEL_15;
  }

  LOBYTE(v42) = 3;
  v39 = sub_25BCB766C();
  v40 = v9;
  v41 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_25BCB7B1C();
  if (qword_27FBB3388 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v13 = sub_25BCB741C();
    v14 = __swift_project_value_buffer(v13, qword_27FBB4870);
    sub_25BB3EF70(v14, v12, &v46);

    if (!v47)
    {

      sub_25BAA6FBC(&v46, &qword_27FBB40F8, &qword_25BCBF760);
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48C0, &qword_25BCBF790);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
LABEL_18:

LABEL_19:
      sub_25BAA6FBC(&v42, &qword_27FBB48B0, &unk_25BCBF780);
      v27 = sub_25BCB71BC();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130);
      *v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48C0, &qword_25BCBF790);
      sub_25BCB763C();
      *&v42 = 0;
      *(&v42 + 1) = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD0000000000000CALL, 0x800000025BCDB880);
      v30 = sub_25BCB740C();
      MEMORY[0x25F876C90](v30);

      MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDB950);
      sub_25BCB71AC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84170], v27);
      swift_willThrow();
      v6 = OUTLINED_FUNCTION_4_18();
      v7(v6);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (!*(&v43 + 1))
    {
      goto LABEL_18;
    }

    sub_25BA97060(&v42, v48);
    v12 = v49;
    v15 = v50;
    result = __swift_project_boxed_opaque_existential_1(v48, v49);
    v16 = *(v8 + 16);
    if (!v16)
    {
      break;
    }

    v17 = (v8 + 32);
    v18 = 1;
    v19 = v40;
    while (1)
    {
      v20 = *v17++;
      v21 = v18 * v20;
      if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
      {
        break;
      }

      v18 = v21;
      if (!--v16)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v21 = 1;
  v19 = v40;
LABEL_21:
  v38 = v15;
  if ((v19 - 1) > 0xA)
  {
    v31 = 1;
  }

  else
  {
    v31 = qword_25BCBFA28[(v19 - 1)];
  }

  v32 = v31 * v21;
  if ((v31 * v21) >> 64 == (v31 * v21) >> 63)
  {
    sub_25BCB763C();
    v33 = (*(v38 + 8))(v39, v41, v32);
    v35 = v34;

    v51 = v8;
    v45 = v40;
    OUTLINED_FUNCTION_19_1();
    Tensor.init(shape:data:scalarType:on:)(&v51, v33, v35, &v45, &v42, &v46);
    v36 = OUTLINED_FUNCTION_4_18();
    v37(v36);
    v26 = v46;
    __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_15:
    *a2 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25BB41758()
{
  result = qword_28154C1F8;
  if (!qword_28154C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1F8);
  }

  return result;
}

unint64_t sub_25BB417AC()
{
  result = qword_28154FF70;
  if (!qword_28154FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154FF70);
  }

  return result;
}

unint64_t sub_25BB41800()
{
  result = qword_2815501C0;
  if (!qword_2815501C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501C0);
  }

  return result;
}

unint64_t sub_25BB41870()
{
  result = qword_28154FF68;
  if (!qword_28154FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154FF68);
  }

  return result;
}

unint64_t sub_25BB418C4()
{
  result = qword_2815501B8;
  if (!qword_2815501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815501B8);
  }

  return result;
}

unint64_t sub_25BB41918()
{
  result = qword_281550338;
  if (!qword_281550338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550338);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Tensor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Tensor(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Tensor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Tensor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB41C48()
{
  result = qword_27FBB48C8;
  if (!qword_27FBB48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48C8);
  }

  return result;
}

unint64_t sub_25BB41CA0()
{
  result = qword_28154C1E8;
  if (!qword_28154C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1E8);
  }

  return result;
}

unint64_t sub_25BB41CF8()
{
  result = qword_28154C1F0;
  if (!qword_28154C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1F0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_25BB41DB0()
{
  result = qword_281550340;
  if (!qword_281550340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281550340);
  }

  return result;
}

uint64_t sub_25BB41E04(uint64_t a1)
{
  v5 = sub_25BAC4018();
  v6 = sub_25BB3EE04(v5, a1);
  if (!v6)
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v19 = xmmword_25BCBFA80;
    *(v19 + 16) = 0x4000;
    swift_willThrow();
    return v3;
  }

  v8 = v6;
  v9 = v7;
  ObjectType = swift_getObjectType();
  MEMORY[0x28223BE20](ObjectType);
  v21[2] = v8;
  v21[3] = v9;
  v11 = *(v9 + 56);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  v11(&v22, sub_25BB42814, v21, v12, ObjectType, v9);
  v13 = v22;
  v23 = *(v1 + 144);
  v14 = sub_25BC8FACC();
  sub_25BB4216C(v14, v1, v13, v14, v15, &v22);

  v16 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  v17 = *(v16 + 16);
  swift_retain_n();
  v18 = sub_25BA928B4();
  [v18 lock];

  sub_25BA92920(v17, 0, 0, &v22);
  if (!v2)
  {
    [*(v17 + 224) unlock];

    *(v3 + 32) = v22;
    swift_unknownObjectRelease();

    return v3;
  }

  [*(v17 + 224) unlock];

  __break(1u);
  return result;
}

void *sub_25BB42048@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ObjectType = swift_getObjectType();
  v10 = *(a4 + 8);
  v10(v15, ObjectType, a4);
  if (LOBYTE(v15[0]) != 2)
  {
    v10(v15, ObjectType, a4);
    BYTE4(v16) = 9;
    sub_25BA97890("applied(to:)", 12, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSTensorCreationOps.swift", 117, 2, 18, v13, v14, 0xD00000000000002CLL, 0x800000025BCDBAB0, v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v16, v17, v18, v19, v20);
  }

  if (a1)
  {
    v11 = (a2 - a1) / 4;
  }

  else
  {
    v11 = 0;
  }

  result = sub_25BC54B84(a1, v11);
  *a5 = result;
  return result;
}

uint64_t sub_25BB4216C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a1;
  v33 = a5;
  v30 = a3;
  v31 = a6;
  v8 = sub_25BCB6E8C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  sub_25BAC27B0(a2 + 56, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a4);
    (*(v28 + 8))(v13, v29);
    goto LABEL_6;
  }

  __swift_storeEnumTagSinglePayload(v13, 0, 1, a4);
  v21 = *(v14 + 32);
  v21(v20, v13, a4);
  sub_25BAC27B0(a2 + 96, &v37);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, a4);
    (*(v28 + 8))(v10, v29);
    (*(v14 + 8))(v20, a4);
LABEL_6:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v36 = v37;
    MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCDB9F0);
    swift_getMetatypeMetadata();
    v25 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v25);

    MEMORY[0x25F876C90](0x6020646E612027, 0xE700000000000000);
    sub_25BAC27B0(a2 + 56, &v37);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v26 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v26);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    v37 = v36;
    v41 = 9;
    sub_25BCB617C();
    sub_25BA97890("makeTensor(_:)", 14, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/BNNS/BNNSTensorCreationOps.swift", 117, 2, 28, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1));
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  v21(v17, v10, a4);
  v29 = &v28;
  *&v36 = *(a2 + 136);
  *&v37 = v30;
  MEMORY[0x28223BE20](v36);
  v22 = v33;
  *(&v28 - 6) = a4;
  *(&v28 - 5) = v22;
  *(&v28 - 4) = a2;
  *(&v28 - 3) = v20;
  *(&v28 - 2) = v17;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  sub_25BCB68CC();
  sub_25BB42854();
  swift_getWitnessTable();
  v34 = sub_25BCB665C();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  swift_getWitnessTable();
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  v23 = *(v14 + 8);
  v23(v17, a4);
  return (v23)(v20, a4);
}

uint64_t sub_25BB4268C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + 48);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v5;
    MEMORY[0x28223BE20](result);
    v15[2] = v7;
    v15[3] = v8;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    v13 = sub_25BB42928();
    result = sub_25BAB2B20(sub_25BB428B8, v15, v12, a3, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v14);
    *a4 = result;
  }

  return result;
}

unint64_t sub_25BB42794(uint64_t a1)
{
  result = sub_25BB427BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB427BC()
{
  result = qword_28154F488;
  if (!qword_28154F488)
  {
    type metadata accessor for OneHotOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F488);
  }

  return result;
}

unint64_t sub_25BB42854()
{
  result = qword_27FBB48E0;
  if (!qword_27FBB48E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48D0, &qword_25BCBFA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48E0);
  }

  return result;
}

uint64_t sub_25BB428B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == *(v2 + 32))
  {
    v3 = (v2 + 40);
  }

  else
  {
    v3 = (v2 + 48);
  }

  return (*(*(*(v2 + 16) - 8) + 16))(a2, *v3);
}

unint64_t sub_25BB42928()
{
  result = qword_27FBB48F0;
  if (!qword_27FBB48F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB48F0);
  }

  return result;
}

unint64_t sub_25BB429B4()
{
  result = qword_28154BE60;
  if (!qword_28154BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE60);
  }

  return result;
}

uint64_t sub_25BB42A08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_50();
  v136 = v4;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_11();
  v133 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v117 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v130 = v11;
  OUTLINED_FUNCTION_7();
  v132 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v131 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50();
  v135 = v14;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_11();
  v139 = v16;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  v140 = v18;
  OUTLINED_FUNCTION_7();
  v19 = sub_25BCB520C();
  OUTLINED_FUNCTION_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  v128 = v23;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_1();
  v142 = v25;
  OUTLINED_FUNCTION_7();
  v26 = sub_25BCB512C();
  OUTLINED_FUNCTION_2();
  v138 = v27;
  MEMORY[0x28223BE20](v28);
  v141 = (&v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_25BAC4018();
  v31 = sub_25BB3EE04(v30, a1);
  if (!v31)
  {
    goto LABEL_23;
  }

  v33 = v31;
  v34 = v32;
  v35 = sub_25BAC4018();
  v36 = sub_25BB3EE04(v35, a1);
  v127 = v37;
  v137 = v36;
  if (!v36)
  {
    swift_unknownObjectRelease();
LABEL_23:
    v64 = 0x800000025BCDBAE0;
    v65 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v65);
    *v66 = 0xD000000000000015;
    v66[1] = 0x800000025BCDBAE0;
    OUTLINED_FUNCTION_13_9(v66, 0x4000);
    return v64;
  }

  v126 = v9;
  *v141 = 0;
  (*(v138 + 104))();
  v38 = *(v1 + 152);
  v134 = v21;
  v41 = *(v21 + 104);
  v40 = v21 + 104;
  v39 = v41;
  v42 = MEMORY[0x277D82E88];
  v43 = *(v1 + 160);
  if ((v43 & 1) == 0)
  {
    v42 = MEMORY[0x277D82E80];
  }

  if (v43 == 2)
  {
    v42 = MEMORY[0x277D82E90];
  }

  v44 = *v42;
  v123 = v40;
  v122 = v39;
  v39(v142, v44, v19);
  v45 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v47 = *(v34 + 8);
  sub_25BCB617C();
  v143 = ObjectType;
  (v47)(v144, ObjectType, v34);
  if (LOBYTE(v144[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v48))
  {
    v108 = v141;
    sub_25BBF4C44();
    v64 = v112;
    v114 = v113;
    v115 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v115);
    *v116 = v64;
    v116[1] = v114;
    OUTLINED_FUNCTION_13_9(v116, 24576);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v134 + 8))(v142, v19);
  }

  else
  {
    v124 = v45;
    v121 = v26;
    v125 = v19;
    v49 = v143;
    v50 = OUTLINED_FUNCTION_16_5();
    v47(v50);
    v51 = LOBYTE(v144[0]);
    v52 = *(v34 + 16);
    v53 = OUTLINED_FUNCTION_16_5();
    v52(v53);
    v151 = v144[0];
    v119 = TensorShape.subscript.getter(v38);

    OUTLINED_FUNCTION_16_5();
    v54 = sub_25BC5D23C();
    v120 = v51;
    if (v54 >= 2)
    {
      OUTLINED_FUNCTION_16_5();
      v55 = sub_25BC5D23C();
      if (v55 < 0)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        v144[1] = 0;
        v144[2] = 0;
        v144[0] = v49;
        v145 = -1;
        v147 = 0;
        v148 = 0;
        v146 = v58;
        v149 = -1;
        v150 = 4;
        OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v56, v57, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
      }

      v59 = v55;
      if (v55)
      {
        v49 = 0;
        v60 = 1;
        while (1)
        {
          if (v38 != v49)
          {
            (v52)(&v151, v143, v34);
            v58 = *(v151 + 16);
            if (v49 >= v58)
            {
              goto LABEL_42;
            }

            v61 = *(v151 + 8 * v49 + 32);

            v58 = v60 * v61;
            if ((v60 * v61) >> 64 != (v60 * v61) >> 63)
            {
              __break(1u);
              goto LABEL_41;
            }

            v60 *= v61;
          }

          if (v59 == ++v49)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v60 = 1;
LABEL_20:
    OUTLINED_FUNCTION_16_5();
    if (sub_25BC5D23C() < 2)
    {
      v67 = OUTLINED_FUNCTION_16_5();
      v52(v67);
      v63 = v144[0];
      if (!*(v144[0] + 16))
      {

        v63 = &unk_286D43BA8;
      }
    }

    else
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v63 = OUTLINED_FUNCTION_31(v62);
      OUTLINED_FUNCTION_18_12(v63, xmmword_25BCBAE70);
    }

    v68 = v127;
    sub_25BBF5F44(v63, 0);

    v69 = swift_getObjectType();
    if (sub_25BC5D23C() < 2)
    {
      (*(v68 + 16))(v144, v69, v68);
      if (!*(v144[0] + 16))
      {
      }
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v71 = OUTLINED_FUNCTION_31(v70);
      OUTLINED_FUNCTION_18_12(v71, xmmword_25BCBAE70);
    }

    v72 = v125;
    v73 = v131;
    v74 = v128;
    OUTLINED_FUNCTION_5_0();

    v122(v74, *MEMORY[0x277D82E90], v72);
    v75 = sub_25BCB51FC();
    v76 = *(v134 + 8);
    v134 += 8;
    v131 = v76;
    (v76)(v74, v72);
    v118 = v33;
    v117 = v34;
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_25BCBAE50;
      *(v77 + 32) = v60;
      v78 = v132;
      v79 = v135;
    }

    else
    {
      v78 = v132;
      v79 = v135;
      if (!*(MEMORY[0x277D84F90] + 16))
      {
      }
    }

    OUTLINED_FUNCTION_5_0();

    type metadata accessor for NativeTensorStorage(0);
    v144[0] = v124;
    LOBYTE(v151) = v120;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    v80 = v129;
    sub_25BBC0130(v81, v82, v83, v84);
    v128 = v85;
    v132 = v80;
    v86 = v73[2];
    v86(v130, v140, v78);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v78);
    v90 = v126;
    v86(v126, v139, v78);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v78);
    v86(v133, v79, v78);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v78);
    v97 = v136;
    v98 = __swift_storeEnumTagSinglePayload(v136, 1, 1, v78);
    v99 = v128;
    v129 = &v117;
    MEMORY[0x28223BE20](v98);
    v100 = v142;
    *(&v117 - 4) = v141;
    *(&v117 - 3) = v100;
    *(&v117 - 2) = v60;
    MEMORY[0x28223BE20](v101);
    v102 = v127;
    *(&v117 - 12) = v137;
    *(&v117 - 11) = v102;
    *(&v117 - 10) = v90;
    *(&v117 - 9) = v99;
    v104 = v103;
    *(&v117 - 8) = &off_286D4DBE0;
    *(&v117 - 7) = v103;
    *(&v117 - 6) = 0;
    *(&v117 - 5) = 0;
    *(&v117 - 4) = v97;
    *(&v117 - 3) = sub_25BB45574;
    *(&v117 - 2) = v105;

    v64 = v118;
    v106 = v132;
    sub_25BC675C0(sub_25BB45594, (&v117 - 14), MEMORY[0x277D84F78] + 8, &v152);
    if (!v106)
    {

      OUTLINED_FUNCTION_23_8();
      v110 = OUTLINED_FUNCTION_22_7();
      (v64)(v110);
      (v64)(v139, v78);
      (v64)(v140, v78);
      sub_25BB0EA20(v136);
      sub_25BB0EA20(v104);
      sub_25BB0EA20(v126);
      (v131)(v100, v125);
      (*(v138 + 8))(v141, v121);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v64 = OUTLINED_FUNCTION_31(v111);
      *(v64 + 16) = xmmword_25BCBAE50;
      *(v64 + 32) = v99;
      *(v64 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v64;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_23_8();
    v107 = OUTLINED_FUNCTION_22_7();
    (v64)(v107);
    (v64)(v139, v78);
    (v64)(v140, v78);
    sub_25BB0EA20(v136);
    sub_25BB0EA20(v104);
    sub_25BB0EA20(v126);
    v26 = v121;
    v108 = v141;
    (v131)(v142, v125);
  }

  (*(v138 + 8))(v108, v26);
  return v64;
}

uint64_t sub_25BB43628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_50();
  v173 = v5;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_11();
  v174 = v7;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_11();
  v179 = v9;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v154 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v178 = v14;
  OUTLINED_FUNCTION_7();
  v180 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v182 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50();
  v175 = v17;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_11();
  v185 = v19;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_11();
  v186 = v21;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_1();
  v188 = v23;
  OUTLINED_FUNCTION_7();
  v24 = sub_25BCB520C();
  OUTLINED_FUNCTION_2();
  v187 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_50();
  v181 = v27;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_1();
  v189 = v29;
  OUTLINED_FUNCTION_7();
  v30 = sub_25BCB512C();
  OUTLINED_FUNCTION_2();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_50();
  v176 = v34;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_1();
  v183 = v36;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v37 = sub_25BAC4018();
  v38 = sub_25BB3EE04(v37, a1);
  if (!v38)
  {
    goto LABEL_23;
  }

  v167 = v39;
  v177 = v38;
  v169 = v12;
  v171 = v32;
  v40 = sub_25BAC4018();
  v191 = sub_25BB3EE04(v40, a1);
  if (!v191)
  {
LABEL_22:
    swift_unknownObjectRelease();
LABEL_23:
    v70 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v70);
    *v71 = 0xD00000000000001ALL;
    v71[1] = 0x800000025BCDBB00;
    OUTLINED_FUNCTION_13_9(v71, 0x4000);
    return v2;
  }

  v42 = v41;
  v43 = sub_25BAC4018();
  v44 = sub_25BB3EE04(v43, a1);
  v166 = v45;
  v170 = v44;
  if (!v44)
  {
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  *v183 = 0;
  v47 = v171 + 104;
  v46 = *(v171 + 104);
  v160 = *MEMORY[0x277D82E48];
  v159 = v46;
  v46();
  v48 = *(v1 + 136);
  v49 = *(v187 + 104);
  v50 = MEMORY[0x277D82E88];
  v51 = *(v1 + 144);
  if ((v51 & 1) == 0)
  {
    v50 = MEMORY[0x277D82E80];
  }

  if (v51 == 2)
  {
    v50 = MEMORY[0x277D82E90];
  }

  v52 = *v50;
  v157 = *(v187 + 104);
  v158 = v187 + 104;
  v49(v189, v52, v24);
  v53 = v191;
  ObjectType = swift_getObjectType();
  v55 = *(v42 + 8);
  v190 = ObjectType;
  v164 = v55;
  v165 = v42 + 8;
  (v55)(v192, ObjectType, v42);
  if (LOBYTE(v192[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v56))
  {
    v148 = v183;
    sub_25BBF4C44();
    v150 = v149;
    v2 = v151;
    v152 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v152);
    *v153 = v150;
    v153[1] = v2;
    OUTLINED_FUNCTION_13_9(v153, 24576);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v187 + 8))(v189, v24);
    OUTLINED_FUNCTION_20_7();
    v141 = v148;
    v142 = v30;
    goto LABEL_45;
  }

  v156 = v47;
  v162 = v30;
  v57 = OUTLINED_FUNCTION_21_8();
  v164(v57);
  v155 = LOBYTE(v192[0]);
  v58 = OUTLINED_FUNCTION_21_8();
  v163 = v59;
  v184 = v60;
  (v60)(v58);
  v199 = v192[0];
  v61 = TensorShape.subscript.getter(v48);

  OUTLINED_FUNCTION_21_8();
  v62 = sub_25BC5D23C();
  v168 = v24;
  if (v62 < 2)
  {
    v68 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_21_8();
    v63 = sub_25BC5D23C();
    if (v63 < 0)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      v192[1] = 0;
      v192[2] = 0;
      v192[0] = v53;
      v193 = -1;
      v195 = 0;
      v196 = 0;
      v194 = v66;
      v197 = -1;
      v198 = 4;
      OUTLINED_FUNCTION_11_5("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v64, v65, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
    }

    v67 = v63;
    if (v63)
    {
      v53 = 0;
      v68 = 1;
      while (1)
      {
        if (v48 != v53)
        {
          v184(&v199, v190, v42);
          v66 = *(v199 + 16);
          if (v53 >= v66)
          {
            goto LABEL_48;
          }

          v69 = *(v199 + 8 * v53 + 32);

          v66 = v68 * v69;
          if ((v68 * v69) >> 64 != (v68 * v69) >> 63)
          {
            __break(1u);
            goto LABEL_47;
          }

          v68 *= v69;
        }

        if (v67 == ++v53)
        {
          goto LABEL_27;
        }
      }
    }

    v68 = 1;
  }

LABEL_27:
  v73 = v190;
  if (sub_25BC5D23C() < 2)
  {
    v184(v192, v73, v42);
    if (!*(v192[0] + 16))
    {
    }
  }

  else
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v75 = OUTLINED_FUNCTION_31(v74);
    *(v75 + 16) = xmmword_25BCBAE70;
    *(v75 + 32) = v68;
    *(v75 + 40) = v61;
  }

  OUTLINED_FUNCTION_5_0();

  v76 = swift_getObjectType();
  v77 = v166;
  if (sub_25BC5D23C() < 2)
  {
    (*(v77 + 16))(v192, v76, v77);
    if (!*(v192[0] + 16))
    {
    }
  }

  else
  {
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v79 = OUTLINED_FUNCTION_31(v78);
    *(v79 + 16) = xmmword_25BCBAE70;
    *(v79 + 32) = v68;
    *(v79 + 40) = v61;
  }

  v80 = v182;
  v81 = v185;
  v82 = MEMORY[0x277D82E90];
  OUTLINED_FUNCTION_5_0();

  v83 = *v82;
  v84 = v181;
  v85 = v168;
  v157(v181, v83, v168);
  v86 = sub_25BCB51FC();
  v157 = *(v187 + 8);
  v158 = v187 + 8;
  (v157)(v84, v85);
  v161 = v42;
  if (v86)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_25BCBAE50;
    *(v87 + 32) = v68;
    v88 = v180;
  }

  else
  {
    v88 = v180;
    if (!*(MEMORY[0x277D84F90] + 16))
    {
    }
  }

  OUTLINED_FUNCTION_5_0();

  v154 = sub_25BCB554C();
  v89 = v155;
  LOBYTE(v192[0]) = v155;
  sub_25BBF4F40();
  v90 = *(v80 + 16);
  v91 = v175;
  v90(v175, v188, v88);
  sub_25BCB6D8C();
  LOBYTE(v192[0]) = v89;
  sub_25BBF4F40();
  v90(v91, v81, v88);
  sub_25BCB6D8C();
  v92 = v176;
  *v176 = 0;
  v93 = v162;
  (v159)(v92, v160, v162);
  v2 = v88;
  v94 = v168;
  (*(v187 + 16))(v181, v189, v168);
  sub_25BCB6E0C();
  OUTLINED_FUNCTION_17_10();
  sub_25BCB6D6C();
  v187 = sub_25BCB553C();
  if (!v187)
  {
    v132 = v183;
    sub_25BBF4C44();
    v134 = v133;
    v136 = v135;
    v137 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v137);
    *v138 = v134;
    v138[1] = v136;
    OUTLINED_FUNCTION_13_9(v138, 0x8000);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v139 = *(v182 + 8);
    v139(v185, v2);
    v139(v186, v2);
    v139(v188, v2);
    (v157)(v189, v94);
    OUTLINED_FUNCTION_20_7();
    v141 = v132;
    v142 = v93;
LABEL_45:
    v140(v141, v142);
    return v2;
  }

  v181 = type metadata accessor for NativeTensorStorage(0);
  v95 = v190;
  v96 = v161;
  v184(v192, v190, v161);
  (v164)(&v199, v95, v96);
  OUTLINED_FUNCTION_17_10();
  v97 = v172;
  sub_25BBC0130(v98, v99, v100, v101);
  v184 = v102;
  v181 = v97;
  v103 = v188;
  v90(v178, v188, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v2);
  v90(v169, v186, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v2);
  v110 = v179;
  v90(v179, v185, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v2);
  v114 = v174;
  v90(v174, v103, v2);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v2);
  v118 = v173;
  v119 = __swift_storeEnumTagSinglePayload(v173, 1, 1, v2);
  v176 = &v154;
  MEMORY[0x28223BE20](v119);
  *(&v154 - 2) = v187;
  *(&v154 - 1) = v68;
  v2 = v114;
  v120 = v184;
  MEMORY[0x28223BE20](v121);
  v123 = v166;
  v122 = v167;
  *(&v154 - 14) = v170;
  *(&v154 - 13) = v123;
  v124 = v177;
  *(&v154 - 12) = v125;
  *(&v154 - 11) = v124;
  *(&v154 - 10) = v122;
  *(&v154 - 9) = v110;
  *(&v154 - 8) = v120;
  *(&v154 - 7) = &off_286D4DBE0;
  *(&v154 - 6) = v114;
  *(&v154 - 5) = 0;
  *(&v154 - 4) = 0;
  *(&v154 - 3) = v118;
  *(&v154 - 2) = sub_25BB45700;
  *(&v154 - 1) = v126;

  v127 = v178;
  v128 = v181;
  sub_25BC675C0(sub_25BB4571C, (&v154 - 16), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v128)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BB0EA20(v127);
    v129 = *(v182 + 8);
    v130 = v180;
    v129(v185, v180);
    v129(v186, v130);
    v129(v188, v130);
    (v157)(v189, v168);
    OUTLINED_FUNCTION_20_7();
    v131(v183, v162);
    sub_25BB0EA20(v118);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v179);
    sub_25BB0EA20(v169);
  }

  else
  {

    sub_25BB0EA20(v127);
    v143 = v2;
    v144 = *(v182 + 8);
    v145 = v180;
    v144(v185, v180);
    v144(v186, v145);
    v144(v188, v145);
    (v157)(v189, v168);
    OUTLINED_FUNCTION_20_7();
    v146(v183, v162);
    sub_25BB0EA20(v118);
    sub_25BB0EA20(v143);
    sub_25BB0EA20(v179);
    sub_25BB0EA20(v169);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v2 = OUTLINED_FUNCTION_31(v147);
    *(v2 + 16) = xmmword_25BCBAE50;
    *(v2 + 32) = v184;
    *(v2 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_25BB44498(uint64_t a1)
{
  result = sub_25BB4569C(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation, &unk_25BCD6EFC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB444F0(uint64_t a1)
{
  result = sub_25BB4569C(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation, &unk_25BCD6EFC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB44548(uint64_t a1, uint64_t a2, void *a3, const void *a4, size_t a5, const void *a6, int64_t a7)
{
  v47 = a7;
  v58 = a6;
  v50 = a4;
  v52 = a2;
  out = a3;
  v54 = a1;
  v8 = sub_25BCB54EC();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB520C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25BCB512C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB554C();
  v18 = *(v15 + 16);
  v51 = a5;
  v19 = v14;
  v20 = out;
  v18(v17, a5, v19);
  v21 = v54;
  (*(v11 + 16))(v13, v58, v10);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB553C())
  {
    v22 = *(v21 + 136);
    if (!v22 || (v23 = *(v52 + 136)) == 0 || !v20[17])
    {
      v25 = sub_25BCB547C();
      sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
      swift_allocError();
      v27 = v26;
      v28 = MEMORY[0x277D83090];
LABEL_8:
      (*(*(v25 - 8) + 104))(v27, *v28, v25);
      swift_willThrow();
    }

    out = v20[17];
    v58 = v23;
    memcpy(v56, v50, 0xB1uLL);
    if (sub_25BB456E4(v56) == 1)
    {
      v51 = 0;
      v24 = v46;
    }

    else
    {
      memcpy(v57, v56, sizeof(v57));
      v24 = v46;
      sub_25BCB6D7C();
      v35 = sub_25BCB54AC();
      v36 = v49;
      v37 = *(v48 + 8);
      v37(v24, v49);
      if (v35 == 1)
      {
        v51 = 1;
      }

      else
      {
        sub_25BCB6D7C();
        v38 = sub_25BBF66C4();
        result = (v37)(v24, v36);
        v51 = v47 * v38;
        if ((v47 * v38) >> 64 != (v47 * v38) >> 63)
        {
          __break(1u);
          return result;
        }
      }
    }

    v46 = sub_25BCB548C();
    sub_25BCB6D7C();
    v39 = sub_25BCB549C();
    v40 = v49;
    v41 = *(v48 + 8);
    v41(v24, v49);
    sub_25BCB6D7C();
    v42 = sub_25BCB549C();
    v41(v24, v40);
    memcpy(v55, v50, 0xB1uLL);
    if (sub_25BB456E4(v55) == 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = v55[17];
    }

    if (BNNSLossFilterApplyBatch(v46, v47, v22, v39, v58, v42, v43, v51, out, 0, 0))
    {
      v25 = sub_25BCB547C();
      sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
      swift_allocError();
      v27 = v44;
      v28 = MEMORY[0x277D83080];
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF4C44();
    v31 = v30;
    v33 = v32;
    sub_25BB0E2EC();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB44AC4(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6, size_t a7)
{
  v33 = a5;
  v34 = a7;
  v37[23] = *MEMORY[0x277D85DE8];
  v11 = sub_25BCB54EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 136) || (v15 = *(a2 + 136)) == 0)
  {
    v22 = sub_25BCB547C();
    sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
    swift_allocError();
    v24 = v26;
    v25 = MEMORY[0x277D83090];
    goto LABEL_9;
  }

  v29 = *(a1 + 136);
  v32 = v15;
  memcpy(&out_delta, a3, sizeof(out_delta));
  memcpy(&v35, a4, sizeof(v35));
  v31 = sub_25BCB548C();
  sub_25BCB6D7C();
  v30 = sub_25BCB549C();
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_25BCB6D7C();
  v28 = sub_25BCB549C();
  v16(v14, v11);
  sub_25BCB6D7C();
  v27 = sub_25BCB549C();
  v16(v14, v11);
  memcpy(v37, v33, 0xB1uLL);
  v17 = sub_25BB456E4(v37);
  v18 = v17 != 1;
  if (v17 == 1)
  {
    weights = 0;
  }

  else
  {
    weights = v37[17];
  }

  sub_25BCB6D7C();
  v20 = sub_25BCB549C();
  v16(v14, v11);
  result = BNNSLossFilterApplyBackwardBatch(v31, v34, v29, v30, &v35, v28, v32, v27, weights, v18, &out_delta, v20);
  if (result)
  {
    v22 = sub_25BCB547C();
    sub_25BB4569C(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
    swift_allocError();
    v24 = v23;
    v25 = MEMORY[0x277D83080];
LABEL_9:
    (*(*(v22 - 8) + 104))(v24, *v25, v22);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25BB44E2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_20(a1, a2, a3, a4, a5, a6, a7, a8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22]);
  sub_25BB45694(__src);
  memcpy(v10, __src, 0xB1uLL);
  return v8(v10);
}

uint64_t sub_25BB44E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_10();
  v16 = v15;
  v18 = v17;
  swift_getObjectType();
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = v16;
  return sub_25BC675C0(sub_25BB455C8, v20, MEMORY[0x277D84F78] + 8, v18);
}

uint64_t sub_25BB44F50@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  swift_getObjectType();
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a1;
  return sub_25BC675C0(sub_25BB455F4, v18, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB45010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v16[2] = sub_25BB45610;
    v16[3] = v17;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45678, v16, MEMORY[0x277D84F78] + 8, x8_0);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v18);
    memcpy(v19, v18, 0xB1uLL);
    return a5(a7, a8, a1, v19);
  }
}

uint64_t sub_25BB45178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_10();
  v17 = v16;
  v19 = v18;
  swift_getObjectType();
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v30 = v17;
  return sub_25BC675C0(sub_25BB4575C, v21, MEMORY[0x277D84F78] + 8, v19);
}

uint64_t sub_25BB45254@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  swift_getObjectType();
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a1;
  return sub_25BC675C0(sub_25BB45794, v19, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB45330@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10)
{
  swift_getObjectType();
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a1;
  return sub_25BC675C0(sub_25BB457C8, v18, MEMORY[0x277D84F78] + 8, x8_0);
}

uint64_t sub_25BB45404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = a9;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a10;
  v18[7] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v16[2] = sub_25BB457F0;
    v16[3] = v18;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v16, MEMORY[0x277D84F78] + 8, v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v19);
    memcpy(v20, v19, 0xB1uLL);
    return a5(a7, a8, a10, a1, v20);
  }
}

uint64_t sub_25BB4569C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BB456E4(uint64_t a1)
{
  if (*(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB45840(uint64_t a1)
{
  v3 = v1;
  v5 = sub_25BCB564C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = sub_25BAC4018();
  v8 = sub_25BB3EE04(v7, a1);
  if (!v8)
  {
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  v56 = v2;
  v12 = sub_25BAC4018();
  v13 = sub_25BB3EE04(v12, a1);
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v30 = sub_25BC7C674();
    v20 = v31;
    v32 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v32);
    *v33 = v30;
    v33[1] = v20;
    OUTLINED_FUNCTION_13_9(v33, 0x4000);
    return v20;
  }

  v15 = v14;
  v54 = v6;
  v57 = v13;
  ObjectType = swift_getObjectType();
  v17 = *(v11 + 8);
  v55 = ObjectType;
  v17((&v60 + 4), ObjectType, v11);
  if (BYTE4(v60) != 12 || *(v1 + 64) != 12)
  {
    v20 = sub_25BC7C674();
    v27 = v26;
    v28 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v28);
    *v29 = v20;
    v29[1] = v27;
    OUTLINED_FUNCTION_13_9(v29, 24576);
    swift_unknownObjectRelease();
LABEL_9:
    swift_unknownObjectRelease();
    return v20;
  }

  v17((&v60 + 3), v55, v11);
  v52 = BYTE3(v60);
  v18 = swift_getObjectType();
  v50 = *(v15 + 8);
  v51 = v18;
  v53 = v15;
  v19 = (v50)((&v60 + 2));
  if (v52 != BYTE2(v60))
  {
    v35 = sub_25BC7C674();
    v37 = v36;
    v17((&v60 + 1), v55, v11);
    v38 = BYTE1(v60);
    v50(&v60, v51, v53);
    v20 = v38 | (v60 << 8) | 0xA000u;
    v39 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v39);
    *v40 = v35;
    *(v40 + 8) = v37;
    *(v40 + 16) = v20;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v19);
  v20 = (&v49 - 8);
  *(&v49 - 6) = v10;
  *(&v49 - 5) = v11;
  v21 = v57;
  v22 = v53;
  *(&v49 - 4) = v57;
  *(&v49 - 3) = v22;
  *(&v49 - 2) = v3;
  sub_25BCB563C();
  v23 = v56;
  v56 = sub_25BCB562C();
  v24 = OUTLINED_FUNCTION_2_20();
  v25(v24);
  if (v23)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = *(v3 + 56);
    v42 = *(v3 + 64);
    type metadata accessor for NativeTensorStorage(0);
    v58 = v41;
    v59 = v42;
    sub_25BCB617C();
    sub_25BBC0130(&v58, &v59, 0, 0);
    v44 = v43;
    v45 = MEMORY[0x28223BE20](v43);
    v46 = v53;
    *(&v49 - 6) = v21;
    *(&v49 - 5) = v46;
    *(&v49 - 4) = v47;
    *(&v49 - 3) = v10;
    v48 = v56;
    *(&v49 - 2) = v11;
    *(&v49 - 1) = v48;
    (*(v11 + 64))(sub_25BB480BC, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25BCBAE50;
    *(v20 + 32) = v44;
    *(v20 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v20;
}

uint64_t sub_25BB45CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v37[1] = a4;
  v38 = a5;
  v7 = sub_25BCB56AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4918, &qword_25BCBFB30);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = v37 - v14;
  MEMORY[0x28223BE20](v15);
  v37[0] = v37 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v45, ObjectType, a3);
  v21 = *MEMORY[0x277D831D8];
  v22 = *(v8 + 104);
  v22(v10, v21, v7);
  v41 = v19;
  sub_25BCB578C();

  v23 = *(v8 + 8);
  v23(v10, v7);
  v24 = swift_getObjectType();
  (*(v38 + 16))(&v45, v24);
  v25 = v21;
  v26 = v37[0];
  v22(v10, v25, v7);
  sub_25BCB578C();

  v23(v10, v7);
  if (*(v40 + 130))
  {
    v27 = v39;
    v28 = v41;
    if (*(v40 + 130) == 1)
    {
      sub_25BCB56FC();
    }

    else
    {
      sub_25BCB570C();
    }
  }

  else
  {
    v27 = v39;
    v28 = v41;
    sub_25BCB56EC();
  }

  v30 = v43;
  v29 = v44;
  v31 = v42;
  v32 = *(v43 + 32);
  v32(v42, v27, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25BCBAE50;
  *(v33 + 56) = v29;
  *(v33 + 64) = sub_25BB48114();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
  v32(boxed_opaque_existential_0, v31, v29);
  v35 = *(v30 + 8);
  v35(v26, v29);
  v35(v28, v29);
  return v33;
}

uint64_t sub_25BB46100@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D831D8];
  v3 = sub_25BCB56AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BB46174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a8;
  return (*(a4 + 64))(sub_25BB480E0, v18, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB46280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE90;
  v50[0] = *(a3 + 16);
  sub_25BCB617C();
  v14 = sub_25BC6FC68();
  v16 = sub_25BBFCCC8(1, v14);
  v18 = v17;
  v20 = v19;
  v47 = v13;
  if (v19)
  {
    v46 = v15;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (__OFSUB__(v20 >> 1, v18))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v22 != (v20 >> 1) - v18)
    {
      goto LABEL_29;
    }

    v23 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v13 = v47;
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  while (1)
  {
    sub_25BABA62C(v16, v15, v18, v20);
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    sub_25BCB6C0C();
    memcpy((v13 + 32), __src, 0xA0uLL);
    ObjectType = swift_getObjectType();
    v25 = *(a7 + 16);
    v25(v50, ObjectType, a7);
    v25(v49, ObjectType, a7);
    v51 = v49[0];
    v26 = sub_25BC6FC68();

    v27 = sub_25BBFCCC8(1, v26);
    v16 = v28;
    v30 = v29;
    v20 = v31;
    if (v31)
    {
      v18 = sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = MEMORY[0x277D84F90];
      }

      a7 = *(v32 + 16);

      if (__OFSUB__(v20 >> 1, v30))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (a7 == (v20 >> 1) - v30)
      {
        v33 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v33)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    sub_25BABA62C(v27, v16, v30, v20);
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    sub_25BCB6C0C();
    memcpy((v47 + 192), v49, 0xA0uLL);
    v34 = swift_getObjectType();
    v35 = *(a11 + 16);
    v35(&v51, v34, a11);
    v18 = v51;
    v35(v50, v34, a11);
    v36 = sub_25BC6FC68();

    v37 = sub_25BBFCCC8(1, v36);
    v16 = v38;
    v40 = v39;
    v20 = v41;
    if ((v41 & 1) == 0)
    {
      goto LABEL_18;
    }

    a7 = sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x277D84F90];
    }

    v43 = *(v42 + 16);

    if (!__OFSUB__(v20 >> 1, v40))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_unknownObjectRelease();
    v13 = v47;
    v15 = v46;
  }

  if (v43 != (v20 >> 1) - v40)
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_25BABA62C(v37, v16, v40, v20);
    goto LABEL_24;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v44)
  {
    goto LABEL_25;
  }

LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  sub_25BCB6C0C();
  memcpy((v47 + 352), v50, 0xA0uLL);
  v51 = v47;
  sub_25BCB579C();
}

uint64_t sub_25BB46778(uint64_t a1)
{
  v5 = sub_25BAC4018();
  v6 = sub_25BB3EE04(v5, a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_25BAC4018();
  v11 = sub_25BB3EE04(v10, a1);
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v30 = sub_25BAD5B28();
    v32 = v31;
    v33 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v33);
    *v34 = v30;
    v34[1] = v32;
    OUTLINED_FUNCTION_13_9(v34, 0x4000);
    return v3;
  }

  v13 = v11;
  if (*(v1 + 64) != 12)
  {
    goto LABEL_14;
  }

  v14 = v12;
  ObjectType = swift_getObjectType();
  v51 = *(v9 + 8);
  v52 = ObjectType;
  v51((&v53 + 5), ObjectType, v9);
  v16 = BYTE5(v53);
  v17 = swift_getObjectType();
  v50 = v9;
  v18 = *(v14 + 8);
  v18((&v53 + 4), v17, v14);
  if (v16 != BYTE4(v53))
  {
    v35 = sub_25BAD5B28();
    v49 = v36;
    v51((&v53 + 3), v52, v50);
    v37 = BYTE3(v53);
    v3 = v13;
    v18((&v53 + 2), v17, v14);
    v38 = v37 | (BYTE2(v53) << 8) | 0xA000;
    v39 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v39);
    *v40 = v35;
    *(v40 + 8) = v49;
    *(v40 + 16) = v38;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_15:
    swift_unknownObjectRelease();
    return v3;
  }

  v48 = v14;
  v3 = v51;
  v51((&v53 + 1), v52, v50);
  v19 = sub_25BC8FACC();
  v20 = dynamic_cast_existential_3_conditional(v19, v19, MEMORY[0x277D82DD8], &protocol descriptor for TensorScalar, MEMORY[0x277D831D0]);
  if (v20)
  {
    v24 = v20;
    v25 = v23;
    v26 = v21;
    v27 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    v28 = sub_25BB46B50(v8, v50, v13, v48, v24, v24, v26, v27, v25);
    goto LABEL_12;
  }

  v51(&v53, v52, v50);
  v41 = sub_25BC8FACC();
  if (!dynamic_cast_existential_2_conditional(v41, v41, MEMORY[0x277D82DD8], &protocol descriptor for TensorScalar))
  {
LABEL_14:
    v42 = sub_25BAD5B28();
    v44 = v43;
    v45 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v45);
    *v46 = v42;
    v46[1] = v44;
    OUTLINED_FUNCTION_13_9(v46, 24576);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  v28 = sub_25BB46DDC(v8, v50, v13, v14);
LABEL_12:
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 16) = 0;
  }

  else
  {
    *(v3 + 32) = v28;
    *(v3 + 40) = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_25BB46B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a3;
  v42 = sub_25BCB564C();
  v15 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a6;
  v36 = a7;
  v43 = a6;
  v44 = a7;
  v37 = a8;
  v45 = a8;
  v46 = a9;
  v18 = a2;
  v19 = v39;
  v20 = v40;
  v34 = a9;
  v47 = a1;
  v48 = v18;
  v49 = v39;
  v50 = a4;
  v38 = a4;
  v51 = v40;
  sub_25BCB563C();
  v21 = v41;
  v22 = sub_25BCB562C();
  if (v21)
  {
    (*(v15 + 8))(v17, v42);
  }

  else
  {
    v23 = v22;
    (*(v15 + 8))(v17, v42);
    v24 = *(v20 + 56);
    v25 = *(v20 + 64);
    type metadata accessor for NativeTensorStorage(0);
    v53 = v24;
    v52[0] = v25;
    sub_25BCB617C();
    sub_25BBC0130(&v53, v52, 0, 0);
    a7 = v26;
    ObjectType = swift_getObjectType();
    v28 = MEMORY[0x28223BE20](ObjectType);
    v29 = v36;
    *(&v33 - 10) = v35;
    *(&v33 - 9) = v29;
    v30 = v34;
    *(&v33 - 8) = v37;
    *(&v33 - 7) = v30;
    v31 = v38;
    *(&v33 - 6) = v19;
    *(&v33 - 5) = v31;
    *(&v33 - 4) = a7;
    *(&v33 - 3) = a1;
    *(&v33 - 2) = v18;
    *(&v33 - 1) = v23;
    (*(v18 + 64))(sub_25BB4826C, v28);
  }

  return a7;
}

uint64_t sub_25BB46DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a4;
  v57 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - v9;
  MEMORY[0x28223BE20](v11);
  v52 = v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v49 - v14;
  v49[0] = sub_25BCB54EC();
  v51 = *(v49[0] - 8);
  MEMORY[0x28223BE20](v49[0]);
  v56 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = v49 - v18;
  MEMORY[0x28223BE20](v19);
  v61 = v49 - v20;
  ObjectType = swift_getObjectType();
  v22 = *(a2 + 16);
  v22(&v63, ObjectType, a2);
  v23 = *(v63 + 16);

  v55 = v10;
  v53 = a1;
  v49[1] = a2;
  v49[2] = ObjectType;
  if (v23)
  {
    v22(&v63, ObjectType, a2);
  }

  v24 = sub_25BCB50AC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
  sub_25BCB54FC();
  v25 = swift_getObjectType();
  v26 = v58;
  v27 = *(v58 + 16);
  v27(&v63, v25, v58);
  v28 = *(v63 + 16);

  if (v28)
  {
    v27(&v63, v25, v26);
  }

  v29 = v51;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
  sub_25BCB54FC();
  v31 = v55;
  v30 = v56;
  v32 = v52;
  if (*(*(v59 + 56) + 16))
  {
    sub_25BCB617C();
  }

  __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
  sub_25BCB54FC();
  type metadata accessor for NativeTensorStorage(0);
  v33 = v59;
  v63 = *(v59 + 56);
  v62 = *(v59 + 64);
  sub_25BCB617C();
  v34 = v50;
  sub_25BBC0130(&v63, &v62, 0, 0);
  v50 = v35;
  v51 = v34;
  v36 = *(v29 + 16);
  v37 = v49[0];
  v36(v32, v61, v49[0]);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v37);
  v36(v31, v60, v37);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v37);
  v38 = v54;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v50;
  v36(v54, v39, v37);
  v43 = __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
  MEMORY[0x28223BE20](v43);
  v44 = v58;
  v49[-8] = v57;
  v49[-7] = v44;
  v49[-6] = v40;
  v49[-5] = v42;
  v49[-4] = &off_286D4DBE0;
  v49[-3] = v38;
  v49[-2] = sub_25BB482C8;
  v49[-1] = v33;

  v45 = v51;
  sub_25BC675C0(sub_25BB0ED08, &v49[-10], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v45)
  {

    sub_25BB0EA20(v41);
    v46 = *(v29 + 8);
    v46(v56, v37);
    v46(v60, v37);
    v46(v61, v37);
  }

  else
  {

    sub_25BB0EA20(v41);
    v47 = *(v29 + 8);
    v47(v56, v37);
    v47(v60, v37);
    v47(v61, v37);
  }

  sub_25BB0EA20(v38);
  sub_25BB0EA20(v40);
  return v42;
}

uint64_t sub_25BB47434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v39 = a10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4918, &qword_25BCBFB30);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v39 - v14;
  v47 = sub_25BCB56AC();
  v15 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB577C();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v52, ObjectType, a3);
  sub_25BB46100(v17);
  v51 = v23;
  sub_25BCB578C();

  v25 = *(v15 + 8);
  v46 = v15 + 8;
  v26 = v47;
  v25(v17, v47);
  v27 = swift_getObjectType();
  (*(v49 + 16))(&v52, v27);
  sub_25BB46100(v17);
  sub_25BCB578C();

  v25(v17, v26);
  switch(*(v50 + 130))
  {
    case 1:
      v28 = v40;
      v29 = v20;
      sub_25BCB571C();
      break;
    case 2:
      v28 = v40;
      v29 = v20;
      sub_25BCB574C();
      break;
    case 3:
      v28 = v40;
      v29 = v20;
      sub_25BCB572C();
      break;
    case 4:
      v28 = v40;
      v29 = v20;
      sub_25BCB575C();
      break;
    case 5:
      v28 = v40;
      v29 = v20;
      sub_25BCB576C();
      break;
    default:
      v28 = v40;
      v29 = v20;
      sub_25BCB573C();
      break;
  }

  v30 = v45;
  v32 = v42;
  v31 = v43;
  v33 = v41;
  v34 = *(v44 + 32);
  v34(v43, v28, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_25BCBAE50;
  *(v35 + 56) = v30;
  *(v35 + 64) = sub_25BB48114();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v35 + 32));
  v34(boxed_opaque_existential_0, v31, v30);
  v37 = *(v33 + 8);
  v37(v29, v32);
  v37(v51, v32);
  return v35;
}

uint64_t sub_25BB47920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a5;
  v26 = a1;
  v27 = a2;
  v28 = a6;
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v32 = a8;
  return (*(a4 + 64))(sub_25BB48298, v21, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

void *sub_25BB47A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25BCBAE90;
  v19 = a2 - a1;
  if (!a1)
  {
    v19 = 0;
  }

  v65 = v19;
  v66 = v18;
  v69[0] = *(a3 + 16);
  sub_25BCB617C();
  v20 = sub_25BC6FC68();
  v21 = sub_25BBFCCC8(1, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v64 = a4;
  if (v26)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = MEMORY[0x277D84F90];
    }

    v29 = *(v28 + 16);

    if (__OFSUB__(v27 >> 1, v25))
    {
      goto LABEL_42;
    }

    if (v29 != (v27 >> 1) - v25)
    {
      goto LABEL_43;
    }

    v30 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    a4 = v64;
    v27 = v65;
    if (v30)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  while (1)
  {
    sub_25BABA62C(v21, v23, v25, v27);
    v27 = v65;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v21 = a13;
    sub_25BCB6C0C();
    result = memcpy((v66 + 32), __src, 0xA0uLL);
    v65 = a13;
    if (a4)
    {
      v32 = *(*(a13 - 8) + 72);
      if (!v32)
      {
        __break(1u);
        goto LABEL_41;
      }

      if (a5 - a4 == 0x8000000000000000 && v32 == -1)
      {
        __break(1u);
        goto LABEL_49;
      }
    }

    ObjectType = swift_getObjectType();
    v23 = *(a7 + 16);
    v23(v69, ObjectType, a7);
    v23(v68, ObjectType, a7);
    v70 = v68[0];
    v35 = sub_25BC6FC68();

    v21 = sub_25BBFCCC8(1, v35);
    v37 = v36;
    v39 = v38;
    v25 = v40;
    if (v40)
    {
      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v42 = swift_dynamicCastClass();
      if (!v42)
      {
        swift_unknownObjectRelease();
        v42 = MEMORY[0x277D84F90];
      }

      v43 = *(v42 + 16);

      if (__OFSUB__(v25 >> 1, v39))
      {
        __break(1u);
      }

      else if (v43 == (v25 >> 1) - v39)
      {
        v44 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v41 = a13;
        if (v44)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    sub_25BABA62C(v21, v37, v39, v25);
    v41 = a13;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    sub_25BCB6C0C();
    result = memcpy((v66 + 192), v68, 0xA0uLL);
    if (!a8)
    {
      goto LABEL_31;
    }

    v45 = *(v41 - 8);
    v27 = v41 - 8;
    v46 = *(v45 + 72);
    if (v46)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    a4 = v64;
  }

  if (a9 - a8 != 0x8000000000000000 || v46 != -1)
  {
LABEL_31:
    v48 = swift_getObjectType();
    v49 = *(a11 + 16);
    v49(&v70, v48, a11);
    v49(v69, v48, a11);
    v50 = sub_25BC6FC68();

    v51 = sub_25BBFCCC8(1, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    if ((v56 & 1) == 0)
    {
      goto LABEL_32;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);

    if (__OFSUB__(v57 >> 1, v55))
    {
      __break(1u);
    }

    else if (v59 == (v57 >> 1) - v55)
    {
      v60 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v60)
      {
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    swift_unknownObjectRelease();
LABEL_32:
    sub_25BABA62C(v51, v53, v55, v57);
LABEL_38:
    swift_unknownObjectRelease();
LABEL_39:
    sub_25BCB6C0C();
    memcpy((v66 + 352), v69, 0xA0uLL);
    v70 = v66;
    sub_25BCB579C();
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_25BB47FD0(uint64_t a1)
{
  result = sub_25BB48058(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB48014(uint64_t a1)
{
  result = sub_25BB48058(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB48058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25BB48114()
{
  result = qword_27FBB4928;
  if (!qword_27FBB4928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4918, &qword_25BCBFB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4928);
  }

  return result;
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t KeyTensorPairsRepresentable.tensors.getter(uint64_t a1, uint64_t a2)
{
  v9[9] = (*(a2 + 32))();
  v9[6] = a1;
  v9[7] = a2;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_25BAB2B20(sub_25BB485D0, v9, v4, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_25BB48420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v7 + 16))(&v17 - v12, a1, TupleTypeMetadata2, v11);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *&v13[v14];
  (*(*(AssociatedTypeWitness - 8) + 32))(v9, v13, AssociatedTypeWitness);
  *&v9[v14] = v15;
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, TupleTypeMetadata2);
}

uint64_t Tensor.init(_:computeDevice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_25BB48640, 0, 0);
}

uint64_t sub_25BB48640()
{
  sub_25BCB5F9C();
  v1 = sub_25BB58164();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = v0[5];
    v6 = sub_25BCB5FCC();
    v0[6] = v6;
    v7 = swift_task_alloc();
    v0[7] = v7;
    v7[2] = v6;
    v7[3] = v3;
    v7[4] = v4;
    v7[5] = v5;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_25BB487C4;

    return MEMORY[0x2821118D8](v0 + 2, sub_25BB48C00, v7, &type metadata for Tensor);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[3];
    sub_25BCB5FDC();
    OUTLINED_FUNCTION_6_4();
    (*(v12 + 8))(v9);
    sub_25BA9C2C8(v10);
    *v11 = 0;
    v13 = v0[1];

    return v13();
  }
}

void sub_25BB487C4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);
    sub_25BCB5FDC();
    OUTLINED_FUNCTION_6_4();
    (*(v4 + 8))(v3);

    MEMORY[0x2822009F8](sub_25BB48938, 0, 0);
  }
}

uint64_t sub_25BB48938()
{
  v1 = *(v0 + 40);
  **(v0 + 24) = *(v0 + 16);
  sub_25BA9C2C8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25BB489A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v16 = *(a5 + 32);
  sub_25BCB617C();
  v16(&v34, a4, a5);
  v17 = v34;
  sub_25BAA51C8(a6, v33);
  sub_25BAA51C8(v33, &v27);
  if (*(&v28 + 1))
  {
    v31[0] = v27;
    v31[1] = v28;
    v31[2] = v29;
    v32 = v30;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v26);

    sub_25BAA51C8(v26, v31);
    sub_25BAA4AF4(v26);
    if (*(&v28 + 1))
    {
      sub_25BA9C2C8(&v27);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v26[0] = a3;
  LOBYTE(v27) = v17;
  sub_25BC732C4(v26, &v27, v31, qword_281557400, a1, a2);
  if (v8)
  {

    sub_25BA9C2C8(v31);
    sub_25BA9C2C8(v33);

    __break(1u);
  }

  else
  {
    v19 = v18;

    sub_25BAA51C8(v31, v26);
    type metadata accessor for TensorRepresentation();
    v20 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v22 = swift_unknownObjectRetain();
    LOBYTE(v27) = 1;
    v23 = sub_25BAA5BB4(v22, v26, 0x100000000, v20, ObjectType, v19);
    type metadata accessor for TensorHandle();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v31);
    result = sub_25BA9C2C8(v33);
    *a7 = v24;
  }

  return result;
}

void *sub_25BB48C20(void *result, int a2, void *__src, uint64_t a4)
{
  if (result)
  {
    if (__src)
    {
      return memmove(result, __src, a4 - __src);
    }
  }

  return result;
}

uint64_t MLTensor.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  Tensor.scalarType.getter(a1);
  if (sub_25BB58194())
  {
    sub_25BCB617C();
    sub_25BCB5FBC();

    v3 = 0;
  }

  else
  {

    v3 = 1;
  }

  v4 = sub_25BCB5FDC();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_25BB48D0C(uint64_t a1, uint64_t a2)
{
  v9[2] = a1;
  v9[3] = a2;

  sub_25BAA82DC(sub_25BB48D88, v9, v2, v3, v4, v5, v6, v7, v9[0]);
}

void *sub_25BB48D88(void *__src, uint64_t a2)
{
  result = *(v2 + 16);
  if (result)
  {
    if (__src)
    {
      return memmove(result, __src, a2 - __src);
    }
  }

  return result;
}

uint64_t sub_25BB48DD0(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB48E54()
{
  OUTLINED_FUNCTION_8_15();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_7_15();
      break;
    case 2:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB48EE8()
{
  OUTLINED_FUNCTION_13_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_15();
      break;
    case 2:
      OUTLINED_FUNCTION_7_15();
      break;
    case 3:
      OUTLINED_FUNCTION_4_19();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB48F60()
{
  OUTLINED_FUNCTION_15_10();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_8_15();
      break;
    case 2:
      OUTLINED_FUNCTION_7_15();
      break;
    case 3:
      OUTLINED_FUNCTION_4_19();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_11_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49014(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB490E8(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49184(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49224(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB492DC(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB4932C(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB493AC(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49494(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49594(uint64_t a1, char a2)
{
  sub_25BABE12C(a2);
  sub_25BCB625C();
}

uint64_t sub_25BB495E8(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49644(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB496D0(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49758(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49810(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_13_10();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB498D4(uint64_t a1, unsigned __int8 a2)
{
  v2 = 12;
  switch(a2 >> 6)
  {
    case 1:
      v2 = (a2 & 0x3F) + 4;
      break;
    case 2:
      v2 = (a2 & 0x3F) + 8;
      break;
    case 3:
      return MEMORY[0x25F878200](v2);
    default:
      v2 = a2;
      break;
  }

  return MEMORY[0x25F878200](v2);
}

uint64_t sub_25BB4996C(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB499AC(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49A38()
{
  OUTLINED_FUNCTION_8_15();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_7_15();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_11_16();
      break;
    case 4:
      OUTLINED_FUNCTION_15_10();
      break;
    case 5:
      OUTLINED_FUNCTION_4_19();
      break;
    case 6:
      OUTLINED_FUNCTION_5_18();
      break;
    default:
      break;
  }

  sub_25BCB625C();
}

uint64_t sub_25BB49AEC(uint64_t a1)
{
  sub_25BCB625C();
}

uint64_t sub_25BB49B44(uint64_t a1)
{
  sub_25BCB625C();
}

void sub_25BB49C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("name", 4, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift", 114, 2, 9, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BB49CB0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    if (*(v0 + 88))
    {
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_25BB49D04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBAE40;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  if (*(v1 + 64))
  {

    MEMORY[0x25F876F40](v5);
    OUTLINED_FUNCTION_0_22();
    if (v6)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  else
  {
  }

  if (*(v1 + 72))
  {

    MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_0_22();
    if (v6)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (sub_25BB49CB0())
  {

    MEMORY[0x25F876F40](v8);
    OUTLINED_FUNCTION_0_22();
    if (v6)
    {
      OUTLINED_FUNCTION_1_20();
    }

    sub_25BCB680C();

    MEMORY[0x25F876F40](v9);
    OUTLINED_FUNCTION_0_22();
    if (v6)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  return v2;
}

uint64_t sub_25BB49E68()
{
  if (v0[21])
  {
    v1 = v0[21];
  }

  else
  {
    v1 = (*(*v0 + 392))();
    v0[21] = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB49EEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, _OWORD *a11)
{
  *(v11 + 104) = 0u;
  *(v11 + 40) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 145) = 0u;
  *(v11 + 161) = 1;
  *(v11 + 168) = 0;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  *(v11 + 64) = a6;
  *(v11 + 72) = a7;
  if (a8)
  {
    *(v11 + 80) = a8;
    *(v11 + 88) = a9;
  }

  *(v11 + 96) = a10 & 1;
  v12 = a11[1];
  *(v11 + 104) = *a11;
  *(v11 + 120) = v12;
  *(v11 + 136) = a11[2];
  *(v11 + 146) = *(a11 + 42);
  return v11;
}

void sub_25BB49F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 0;
  BYTE4(v8) = 10;
  sub_25BA97890("initResultDescriptorsArray()", 28, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift", 114, 2, 104, a8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v9, v10, v11, vars0, vars8);
}

uint64_t sub_25BB49FF4(uint64_t a1, uint64_t a2)
{
  v5 = sub_25BAC4018();
  if (v5 == sub_25BAC4018())
  {
    v2[6] = a2;
  }

  else
  {
    v6 = *(a1 + 16);
    if (sub_25BAC4018() == v6)
    {
      v2[7] = a2;
    }

    else if (v2[8] && (v7 = *(a1 + 16), sub_25BAC4018() == v7))
    {
      v2[8] = a2;
    }

    else if (v2[9] && (v8 = *(a1 + 16), sub_25BAC4018() == v8))
    {
      v2[9] = a2;
    }

    else if (v2[10] && (v9 = *(a1 + 16), sub_25BAC4018() == v9))
    {
      v2[10] = a2;
    }

    else
    {
      if (!v2[11])
      {
        return 0;
      }

      v10 = *(a1 + 16);
      if (sub_25BAC4018() != v10)
      {
        return 0;
      }

      v2[11] = a2;
    }
  }

  return 1;
}

uint64_t sub_25BB4A11C()
{

  return v0;
}

uint64_t sub_25BB4A174()
{
  sub_25BB4A11C();

  return swift_deallocClassInstance();
}

__n128 sub_25BB4A220@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 136);
  result = *(v1 + 146);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BB4A26C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 40);
  return result;
}

uint64_t sub_25BB4A2B4(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_25BB4A398(uint64_t a1)
{
  (*(*v1 + 168))();
  sub_25BCB625C();

  sub_25BCB79EC();
  swift_beginAccess();
  return MEMORY[0x25F878200](v1[40]);
}

uint64_t sub_25BB4A554()
{
  sub_25BA9D148(*(v0 + 176), *(v0 + 184));
}

uint64_t sub_25BB4A584()
{
  sub_25BB4A11C();
  sub_25BA9D148(*(v0 + 176), *(v0 + 184));

  return v0;
}

uint64_t sub_25BB4A5B0()
{
  sub_25BB4A584();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB4A620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBFBC0;
  v3 = v0[23];
  v4 = v0[24];
  *(v2 + 32) = v0[22];
  *(v2 + 40) = v4;
  v6 = v0[6];
  v5 = v0[7];
  *(v2 + 48) = v3;
  *(v2 + 56) = v6;
  *(v2 + 64) = v5;
  if (v1[8])
  {

    MEMORY[0x25F876F40](v7);
    OUTLINED_FUNCTION_0_22();
    if (v8)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  else
  {
  }

  if (v1[9])
  {

    MEMORY[0x25F876F40](v9);
    OUTLINED_FUNCTION_0_22();
    if (v8)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  if (sub_25BB49CB0())
  {

    MEMORY[0x25F876F40](v10);
    OUTLINED_FUNCTION_0_22();
    if (v8)
    {
      OUTLINED_FUNCTION_1_20();
    }

    sub_25BCB680C();

    MEMORY[0x25F876F40](v11);
    OUTLINED_FUNCTION_0_22();
    if (v8)
    {
      OUTLINED_FUNCTION_1_20();
    }

    OUTLINED_FUNCTION_10_11();
  }

  return v2;
}

void sub_25BB4A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_18_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE40;
  *(inited + 32) = v28[6];
  *(inited + 40) = v28[7];
  if (v28[8])
  {

    MEMORY[0x25F876F40](v30);
    OUTLINED_FUNCTION_6_21();
    if (v31)
    {
      OUTLINED_FUNCTION_9_12();
    }

    OUTLINED_FUNCTION_16_13();
  }

  else
  {
  }

  if (v28[9])
  {

    MEMORY[0x25F876F40](v32);
    OUTLINED_FUNCTION_6_21();
    if (v31)
    {
      OUTLINED_FUNCTION_9_12();
    }

    OUTLINED_FUNCTION_16_13();
  }

  if (sub_25BB49CB0())
  {

    MEMORY[0x25F876F40](v33);
    OUTLINED_FUNCTION_6_21();
    if (v31)
    {
      OUTLINED_FUNCTION_9_12();
    }

    sub_25BCB680C();

    MEMORY[0x25F876F40](v34);
    OUTLINED_FUNCTION_6_21();
    if (v31)
    {
      OUTLINED_FUNCTION_9_12();
    }

    OUTLINED_FUNCTION_16_13();
  }

  v35 = sub_25BAAF54C(inited);
  if (!v35)
  {
    goto LABEL_25;
  }

  v36 = v35;
  v43 = MEMORY[0x277D84F90];
  sub_25BB00520();
  if ((v36 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x25F8779B0](v37, inited);
      }

      else
      {
        v38 = *(inited + 8 * v37 + 32);
      }

      v39 = *(v38 + 152);
      v40 = *(v38 + 160);
      sub_25BCB617C();

      v41 = *(v43 + 16);
      if (v41 >= *(v43 + 24) >> 1)
      {
        sub_25BB00520();
      }

      ++v37;
      *(v43 + 16) = v41 + 1;
      v42 = v43 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v40;
    }

    while (v36 != v37);
LABEL_25:

    OUTLINED_FUNCTION_17_11();
    return;
  }

  __break(1u);
}

uint64_t sub_25BB4AB24(uint64_t a1, uint64_t a2)
{
  if ((sub_25BB49FF4(a1, a2) & 1) == 0)
  {
    v5 = v2 + 22;
    v6 = sub_25BAC4018();
    if (v6 != sub_25BAC4018())
    {
      v5 = v2 + 23;
      if (sub_25BAC4018() != *(a1 + 16))
      {
        if (sub_25BAC4018() != *(a1 + 16))
        {
          return 0;
        }

        v5 = v2 + 24;
      }
    }

    *v5 = a2;
  }

  return 1;
}

uint64_t sub_25BB4ABD8()
{
}

uint64_t sub_25BB4AC10()
{
  sub_25BB4A11C();

  return v0;
}

uint64_t sub_25BB4AC44()
{
  sub_25BB4AC10();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB4AC9C(uint64_t a1)
{
  result = sub_25BB4AD4C(&qword_27FBB4930, type metadata accessor for LSTMLayerGradientOperation, aX);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4ACF4(uint64_t a1)
{
  result = sub_25BB4AD4C(qword_27FBB4940, type metadata accessor for BaseLSTMLayerOperation, &unk_25BCBFD10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4AD4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB4ADA8()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 3;
  }

  return 2;
}

uint64_t sub_25BB4ADD4()
{
  result = sub_25BB49CB0();
  if (result)
  {
    sub_25BB4AE24(result);
    v2 = 2;
    if (*(v0 + 64))
    {
      v2 = 3;
    }

    if (*(v0 + 72))
    {
      return v2 + 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_25BB4AE24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BB4AE88()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_10(v0);
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v0 + 32);
}

uint64_t sub_25BB4AED4()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 <= 2)
  {
    OUTLINED_FUNCTION_2_21();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v0 + 48);
}

uint64_t sub_25BB4AF2C()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 <= 1)
  {
    OUTLINED_FUNCTION_2_21();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v0 + 40);
}

uint64_t sub_25BB4AF84()
{
  v0 = sub_25BB49D04();
  v1 = sub_25BB4ADD4();
  if (v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v1;
  sub_25BAB4D78(v1, (v0 & 0xC000000000000001) == 0, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8779B0](v3, v0);
  }

  else
  {
    v4 = *(v0 + 8 * v3 + 32);
  }

  v5 = *(v4 + 152);
  sub_25BCB617C();

  if (*(v5 + 16) <= 1uLL)
  {
LABEL_8:
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v8, v9, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v6 = *(v5 + 40);

  return v6;
}

uint64_t sub_25BB4B058()
{
  v1 = *(*(v0 + 56) + 152);
  if (!*(v1 + 16))
  {
    OUTLINED_FUNCTION_12_10(v1);
    OUTLINED_FUNCTION_3_0("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v3, v4, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  return *(v1 + 32) / 4;
}

uint64_t sub_25BB4B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB4B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_25BB4B120(*v4, a2, a3, *(a1 + 16));
  *a4 = result;
  return result;
}

uint64_t sub_25BB4B194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE3AC4(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_25BB4B1C0(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_25BB4B284(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_25BB4B23C;
}

void sub_25BB4B23C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_25BB4B284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v6 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  sub_25BCB733C();
  return sub_25BB4B344;
}

void sub_25BB4B344(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_25BB4B394(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_25BCB6A9C();
}

uint64_t sub_25BB4B400()
{
  sub_25BCB732C();
  swift_getWitnessTable();
  return sub_25BCB6B6C() & 1;
}

uint64_t sub_25BB4B488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_25BB4B128(*a1, *v5, a3, a4, *(a2 + 16));
  *a5 = result;
  return result;
}

uint64_t sub_25BB4B4C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25BB4B128(*a1, *v4, a3, a4, *(a2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_25BB4B4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 16) = v4;
  v6 = *(a1 + 16);
  v7 = v5;

  v10 = sub_25BB4B120(v7, v8, v9, v6);

  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_25BB4B56C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25BB4B5C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t sub_25BB4B61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_25BB4B614(*a1, *v5, a3, a4, *(a2 + 16));
  *a5 = result;
  return result;
}

uint64_t sub_25BB4B654(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_25BB4B614(*a1, *v4, a3, a4, *(a2 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_25BB4B68C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = sub_25BB4B140(*a1, a2, *a3, *v7, a5, a6, *(a4 + 16));
  *a7 = result;
  *(a7 + 8) = v10 & 1;
  return result;
}

uint64_t sub_25BB4B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_25BCB72AC();
  if (v14 != sub_25BCB72AC())
  {
    return 0;
  }

  result = sub_25BCB72AC();
  if ((result & 0x8000000000000000) == 0)
  {
    v16 = result;
    for (i = 0; ; ++i)
    {
      v18 = v16 == i;
      if (v16 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      v21 = i;
      result = sub_25BB4B7C8(&v21, a1, a2, a3, a4, a5, a6, a7, a8);
      if ((result & 1) == 0)
      {
        return v18;
      }
    }

    return v18;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25BB4B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_25BCB733C();
  sub_25BCB733C();
  v16 = sub_25BCB630C();
  v17 = *(v10 + 8);
  v17(v12, a8);
  v17(v15, a8);
  return v16 & 1;
}

uint64_t sub_25BB4B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_25BCB732C();

  swift_getWitnessTable();
  sub_25BCB666C();
}

uint64_t sub_25BB4B9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BCB79CC();
  sub_25BB4B938(v11, a1, v8, v9, a4, a5);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25BCB79CC();
  sub_25BB4B938(v9, *v3, v6, v7, *(a2 + 16), v5);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25BCB7A8C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4888, &unk_25BCD7200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - v12;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v14 = *MEMORY[0x277D84BF8];
  v15 = sub_25BCB7A7C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  type metadata accessor for Heap(0, a4, v16, v17);
  swift_getWitnessTable();
  sub_25BB4BC8C(v10);
  swift_retain_n();
  swift_retain_n();
  return sub_25BCB7ABC();
}

uint64_t sub_25BB4BC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_25BCB7A8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25BB4BD14(uint64_t a1)
{
  sub_25BCB732C();
  swift_getWitnessTable();
  sub_25BCB785C();
  return 0;
}

uint64_t sub_25BB4BFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB429B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB4C09C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 130);
  v4 = sub_25BCB52EC();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279971AA8 + v3);

  return v5(a1, v6, v4);
}

uint64_t sub_25BB4C114()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v101 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  v104 = OUTLINED_FUNCTION_20_8(v8, v9, v10, v11, v12, v13, v14, v15, v96[0]);
  OUTLINED_FUNCTION_2();
  v108 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16(v19, v20, v21, v22, v23, v24, v25, v26, v96[0]);
  MEMORY[0x28223BE20](v27);
  v36 = OUTLINED_FUNCTION_21_9(v28, v29, v30, v31, v32, v33, v34, v35, v96[0]);
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_50();
  v103 = v40;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v41);
  v43 = OUTLINED_FUNCTION_26_2(v42);
  if (!sub_25BB3EE04(v43, v1))
  {
    sub_25BAD5AC0();
    OUTLINED_FUNCTION_27_7();
    v49 = sub_25BB0E2EC();
    v50 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v49);
    OUTLINED_FUNCTION_15_11(v50, v51);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  v106 = v38;
  v107 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_25BCBAE50;
  v44 = v3;
  sub_25BB4C09C(v4);
  v102 = v3[7];
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  (v3)();
  if (LOBYTE(v111[0]) > 0xCu || (OUTLINED_FUNCTION_16_0(), v45) || v105 > 0xC || (OUTLINED_FUNCTION_23_9(), v45))
  {
    sub_25BBF5120();
    v92 = sub_25BB0E2EC();
    v93 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v92);
    OUTLINED_FUNCTION_13_11(v93, v94);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v86 = v4;
    goto LABEL_19;
  }

  v46 = OUTLINED_FUNCTION_16_14();
  (v3)(v46);
  LODWORD(v98) = LOBYTE(v111[0]);
  v47 = *(v2 + 16);
  v96[2] = v38;
  v47(v111, v38, v2);
  OUTLINED_FUNCTION_34_5();
  if (v48)
  {
    sub_25BCB617C();
  }

  else
  {
    v44 = &unk_286D436A8;
  }

  v52 = v102;
  sub_25BBF5A38(v44, 0);

  v53 = v102[2];
  v99 = v1;
  v96[1] = v2;
  if (v53)
  {
    sub_25BCB617C();
  }

  else
  {
    v52 = &unk_286D436D0;
  }

  v54 = v109;
  sub_25BBF5A38(v52, 0);

  v97 = sub_25BCB523C();
  v55 = v103;
  (*(v106 + 16))(v103, v4, v107);
  LOBYTE(v112) = v98;
  sub_25BBF4F40();
  v56 = OUTLINED_FUNCTION_11_17();
  v57 = v104;
  (v108)(v56);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v58 = OUTLINED_FUNCTION_12_11();
  (v108)(v58);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v111);
  OUTLINED_FUNCTION_38_4();
  v59 = sub_25BCB6E0C();
  v60 = OUTLINED_FUNCTION_42_3(v59);
  v103 = OUTLINED_FUNCTION_4_20(v60, v61, v62, v63);
  if (!v103)
  {

    sub_25BBF5120();
    v80 = sub_25BB0E2EC();
    v81 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v80);
    OUTLINED_FUNCTION_14_14(v81, v82);
    swift_unknownObjectRelease();
    v83 = OUTLINED_FUNCTION_6_22();
    v55(v83);
    v84 = OUTLINED_FUNCTION_10_12();
    v55(v84);
    OUTLINED_FUNCTION_29_6();
    v86 = v98;
LABEL_19:
    v85(v86, v107);
    goto LABEL_20;
  }

  type metadata accessor for NativeTensorStorage(0);
  v112 = v102;
  v110 = v2;
  sub_25BCB617C();
  OUTLINED_FUNCTION_19_10();
  v65 = v64;
  v66 = OUTLINED_FUNCTION_18_14();
  (v108)(v66);
  OUTLINED_FUNCTION_17_12(v109);
  v67 = v101;
  (v108)(v101, v109, v104);
  v68 = OUTLINED_FUNCTION_17_12(v101);
  v105 = v96;
  MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_35_3();
  *(v70 - 48) = v65;
  *(v70 - 40) = &off_286D4DBE0;
  *(v70 - 32) = v67;
  *(v70 - 24) = sub_25BB4D624;
  *(v70 - 16) = v71;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v72, v73, v74, v75);
  if (v0)
  {
    swift_unknownObjectRelease();

    sub_25BB0EA20(v54);
    v76 = OUTLINED_FUNCTION_6_22();
    v67(v76);
    v77 = OUTLINED_FUNCTION_10_12();
    v67(v77);
    v78 = OUTLINED_FUNCTION_5_19();
    v79(v78);
    sub_25BB0EA20(v67);
LABEL_20:
    *(v100 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  v97 = v65;

  sub_25BB0EA20(v54);
  v87 = *(v108 + 8);
  v87(v109, v57);
  v88 = OUTLINED_FUNCTION_10_12();
  (v87)(v88);
  v89 = OUTLINED_FUNCTION_5_19();
  v90(v89);
  sub_25BB0EA20(v67);
  v91 = v100;
  *(v100 + 32) = v97;
  *(v91 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4C7A8()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v96 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_8(v8, v9, v10, v11, v12, v13, v14, v15, v91);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16(v18, v19, v20, v21, v22, v23, v24, v25, v92);
  MEMORY[0x28223BE20](v26);
  v35 = OUTLINED_FUNCTION_21_9(v27, v28, v29, v30, v31, v32, v33, v34, v93);
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v39);
  v41 = OUTLINED_FUNCTION_26_2(v40);
  if (!sub_25BB3EE04(v41, v1))
  {
    sub_25BC66518();
    OUTLINED_FUNCTION_27_7();
    v47 = sub_25BB0E2EC();
    v48 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v47);
    OUTLINED_FUNCTION_15_11(v48, v49);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_25BCBAE50;
  sub_25BB4CD7C(MEMORY[0x277D82F18], MEMORY[0x277D82F10], v4);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  v3();
  if (v98[0] > 0xCu || (OUTLINED_FUNCTION_16_0(), v42) || v97 > 0xC || (OUTLINED_FUNCTION_23_9(), v42))
  {
    sub_25BBF5120();
    v87 = sub_25BB0E2EC();
    v88 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v87);
    OUTLINED_FUNCTION_13_11(v88, v89);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v82 = v4;
    goto LABEL_18;
  }

  v43 = OUTLINED_FUNCTION_16_14();
  (v3)(v43);
  v44 = OUTLINED_FUNCTION_24_6();
  v45(v44);
  OUTLINED_FUNCTION_34_5();
  if (v46)
  {
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_39_6();

  if (*(v1 + 2))
  {
    sub_25BCB617C();
  }

  else
  {
    v1 = &unk_286D43AB8;
  }

  OUTLINED_FUNCTION_46_3();

  v50 = sub_25BCB523C();
  v51 = OUTLINED_FUNCTION_28_6(v50);
  v52(v51);
  v98[736] = v35;
  sub_25BBF4F40();
  v53 = OUTLINED_FUNCTION_11_17();
  v35(v53);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v54 = OUTLINED_FUNCTION_12_11();
  v35(v54);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v98);
  OUTLINED_FUNCTION_38_4();
  v55 = sub_25BCB6E0C();
  v56 = OUTLINED_FUNCTION_42_3(v55);
  if (!OUTLINED_FUNCTION_4_20(v56, v57, v58, v59))
  {

    sub_25BBF5120();
    v76 = sub_25BB0E2EC();
    v77 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v76);
    OUTLINED_FUNCTION_14_14(v77, v78);
    swift_unknownObjectRelease();
    v79 = OUTLINED_FUNCTION_6_22();
    v1(v79);
    v80 = OUTLINED_FUNCTION_10_12();
    v1(v80);
    OUTLINED_FUNCTION_29_6();
    v82 = v94;
LABEL_18:
    v81(v82, v35);
    goto LABEL_19;
  }

  type metadata accessor for NativeTensorStorage(0);
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_19_10();
  v61 = v60;
  v62 = OUTLINED_FUNCTION_18_14();
  v35(v62);
  OUTLINED_FUNCTION_17_12(v37);
  v63 = OUTLINED_FUNCTION_44_3();
  v35(v63);
  v64 = OUTLINED_FUNCTION_17_12(v2);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_35_3();
  *(v66 - 48) = v61;
  *(v66 - 40) = &off_286D4DBE0;
  *(v66 - 32) = v2;
  *(v66 - 24) = sub_25BB4D6BC;
  *(v66 - 16) = v67;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v68, v69, v70, v71);
  if (v0)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47_5();
    v72 = OUTLINED_FUNCTION_6_22();
    v1(v72);
    v73 = OUTLINED_FUNCTION_10_12();
    v1(v73);
    v74 = OUTLINED_FUNCTION_5_19();
    v75(v74);
    sub_25BB0EA20(v96);
LABEL_19:
    *(v95 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_47_5();
  v83 = OUTLINED_FUNCTION_45_5();
  v61(v83);
  v84 = OUTLINED_FUNCTION_10_12();
  v61(v84);
  v85 = OUTLINED_FUNCTION_5_19();
  v86(v85);
  sub_25BB0EA20(v96);
  *(v95 + 32) = v3;
  *(v95 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4CD7C@<X0>(unsigned int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 130);
  v8 = sub_25BCB52EC();
  v9 = *(*(v8 - 8) + 104);
  if (v7)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  v11 = *v10;

  return v9(a3, v11, v8);
}

uint64_t sub_25BB4CE00()
{
  OUTLINED_FUNCTION_30_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_50();
  v96 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_8(v8, v9, v10, v11, v12, v13, v14, v15, v91);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_33_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16(v18, v19, v20, v21, v22, v23, v24, v25, v92);
  MEMORY[0x28223BE20](v26);
  v35 = OUTLINED_FUNCTION_21_9(v27, v28, v29, v30, v31, v32, v33, v34, v93);
  OUTLINED_FUNCTION_2();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v39);
  v41 = OUTLINED_FUNCTION_26_2(v40);
  if (!sub_25BB3EE04(v41, v1))
  {
    sub_25BC66544();
    OUTLINED_FUNCTION_27_7();
    v47 = sub_25BB0E2EC();
    v48 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v47);
    OUTLINED_FUNCTION_15_11(v48, v49);
    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_27_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_25BCBAE50;
  sub_25BB4CD7C(MEMORY[0x277D82F48], MEMORY[0x277D82EC0], v4);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_7_16();
  v3();
  if (v98[0] > 0xCu || (OUTLINED_FUNCTION_16_0(), v42) || v97 > 0xC || (OUTLINED_FUNCTION_23_9(), v42))
  {
    sub_25BBF5120();
    v87 = sub_25BB0E2EC();
    v88 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v87);
    OUTLINED_FUNCTION_13_11(v88, v89);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_29_6();
    v82 = v4;
    goto LABEL_18;
  }

  v43 = OUTLINED_FUNCTION_16_14();
  (v3)(v43);
  v44 = OUTLINED_FUNCTION_24_6();
  v45(v44);
  OUTLINED_FUNCTION_34_5();
  if (v46)
  {
    sub_25BCB617C();
  }

  OUTLINED_FUNCTION_39_6();

  if (*(v1 + 2))
  {
    sub_25BCB617C();
  }

  else
  {
    v1 = &unk_286D43A68;
  }

  OUTLINED_FUNCTION_46_3();

  v50 = sub_25BCB523C();
  v51 = OUTLINED_FUNCTION_28_6(v50);
  v52(v51);
  v98[736] = v35;
  sub_25BBF4F40();
  v53 = OUTLINED_FUNCTION_11_17();
  v35(v53);
  OUTLINED_FUNCTION_43_3();
  OUTLINED_FUNCTION_41_4();
  v54 = OUTLINED_FUNCTION_12_11();
  v35(v54);
  OUTLINED_FUNCTION_40_5();
  sub_25BB45648(v98);
  OUTLINED_FUNCTION_38_4();
  v55 = sub_25BCB6E0C();
  v56 = OUTLINED_FUNCTION_42_3(v55);
  if (!OUTLINED_FUNCTION_4_20(v56, v57, v58, v59))
  {

    sub_25BBF5120();
    v76 = sub_25BB0E2EC();
    v77 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v76);
    OUTLINED_FUNCTION_14_14(v77, v78);
    swift_unknownObjectRelease();
    v79 = OUTLINED_FUNCTION_6_22();
    v1(v79);
    v80 = OUTLINED_FUNCTION_10_12();
    v1(v80);
    OUTLINED_FUNCTION_29_6();
    v82 = v94;
LABEL_18:
    v81(v82, v35);
    goto LABEL_19;
  }

  type metadata accessor for NativeTensorStorage(0);
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_19_10();
  v61 = v60;
  v62 = OUTLINED_FUNCTION_18_14();
  v35(v62);
  OUTLINED_FUNCTION_17_12(v37);
  v63 = OUTLINED_FUNCTION_44_3();
  v35(v63);
  v64 = OUTLINED_FUNCTION_17_12(v2);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_8();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_35_3();
  *(v66 - 48) = v61;
  *(v66 - 40) = &off_286D4DBE0;
  *(v66 - 32) = v2;
  *(v66 - 24) = sub_25BB4D6BC;
  *(v66 - 16) = v67;

  OUTLINED_FUNCTION_3_16();
  sub_25BC675C0(v68, v69, v70, v71);
  if (v0)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47_5();
    v72 = OUTLINED_FUNCTION_6_22();
    v1(v72);
    v73 = OUTLINED_FUNCTION_10_12();
    v1(v73);
    v74 = OUTLINED_FUNCTION_5_19();
    v75(v74);
    sub_25BB0EA20(v96);
LABEL_19:
    *(v95 + 16) = 0;

    return OUTLINED_FUNCTION_31_4();
  }

  OUTLINED_FUNCTION_47_5();
  v83 = OUTLINED_FUNCTION_45_5();
  v61(v83);
  v84 = OUTLINED_FUNCTION_10_12();
  v61(v84);
  v85 = OUTLINED_FUNCTION_5_19();
  v86(v85);
  sub_25BB0EA20(v96);
  *(v95 + 32) = v3;
  *(v95 + 40) = &off_286D4DBE0;
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_31_4();
}

uint64_t sub_25BB4D3D4(uint64_t a1)
{
  result = sub_25BB4D65C(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation, &unk_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D42C(uint64_t a1)
{
  result = sub_25BB4D65C(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation, &unk_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D484(uint64_t a1)
{
  result = sub_25BB4D65C(qword_28154E988, type metadata accessor for ReductionOperation, &unk_25BCD29B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB4D4DC(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_25BBF5518(a5, 0);
  v11 = sub_25BBF5518(a6, 0);
  v12 = *(a1 + 136);
  if (v12 && (v13 = *(a2 + 136)) != 0)
  {
    v14 = v11;
    v15 = sub_25BCB548C();
    result = BNNSFilterApplyBatch(v15, a4, v12, v10, v13, v14);
    if (!result)
    {
      return result;
    }

    v17 = MEMORY[0x277D83080];
  }

  else
  {
    v17 = MEMORY[0x277D83090];
  }

  v18 = sub_25BCB547C();
  sub_25BB4D65C(&qword_27FBB40C8, MEMORY[0x277D83098], MEMORY[0x277D830A0]);
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, *v17, v18);
  return swift_willThrow();
}

uint64_t sub_25BB4D65C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_36_3()
{
  *(v2 - 72) = *(v0 + 80);
  *(v0 + 167) = v1;

  return sub_25BCB617C();
}

uint64_t OptimizerStateDictionary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v61 = a1;
  v58 = a4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v57 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v10, WitnessTable, v11);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = v53 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v53 - v21;
  v23 = type metadata accessor for AnyLayerVariablePathCache();
  v24 = sub_25BAB5DD8(a2, &type metadata for Parameter, 1, a2, &type metadata for Parameter, a3, &protocol witness table for Parameter);
  v62 = v10;
  if (v24)
  {
    v26 = a2;
    v27 = v61;
    v28 = a3;
  }

  else
  {
    v53[1] = v23;
    v29 = sub_25BCB604C();
    v68 = MEMORY[0x277D84FA0];
    v69 = v29;
    v67 = MEMORY[0x277D84FA0];
    v30 = v57;
    v31 = v61;
    (*(v7 + 16))(v57, v61, a2);
    v32 = swift_allocObject();
    v54 = a3;
    v55 = a2;
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    *(v32 + 32) = 1;
    *(v32 + 36) = 4;
    sub_25BAB1090(v30, sub_25BAB60FC, v32, v10, WitnessTable, v22);
    (*(v14 + 16))(v17, v22, v12);
    OUTLINED_FUNCTION_4_5();
    v33 = swift_getWitnessTable();
    v34 = v60;
    MEMORY[0x25F876DC0](v12, v33);
    v35 = MEMORY[0x277D84F90];
    v27 = v31;
    v36 = v34;
    for (i = v14; ; v14 = i)
    {
      v37 = v12;
      sub_25BAB173C(v12, &v63);
      v38 = v63;
      if (!v63)
      {
        break;
      }

      v39 = v64;
      v40 = v65;
      v41 = sub_25BCB681C();
      v63 = v38;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_45();
        sub_25BAB22A0();
        v35 = v44;
      }

      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_14_15(v42);
        sub_25BAB22A0();
        v35 = v45;
      }

      *(v35 + 16) = v43 + 1;
      *(v35 + 8 * v43 + 32) = v39;
      if ((v40 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v63, v41);
      }

      if (v40)
      {
        sub_25BAA2CDC(&v63, v41);
      }

      v36 = v60;
      v27 = v61;
      v12 = v37;
    }

    v46 = *(v14 + 8);
    i = v14 + 8;
    v57 = v46;
    (v46)(v36, v37);
    v28 = v54;
    v26 = v55;
    v63 = v55;
    v64 = &type metadata for Parameter;
    v65 = v54;
    v66 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths(0, &v63);
    sub_25BAB2794();
    v48 = v47;
    sub_25BAB61C4();
    OUTLINED_FUNCTION_18_15();
    sub_25BAB61CC(v48, v50, v51, v49);
    (v57)(v22, v37);
  }

  type metadata accessor for OptimizerStateDictionary.ParameterKey(255, v26, v28, v25);
  swift_getTupleTypeMetadata2();
  sub_25BCB67CC();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  *v58 = sub_25BCB614C();
  sub_25BAB9528();
  sub_25BCB681C();

  sub_25BCB61AC();
  sub_25BCB613C();

  return (*(v7 + 8))(v27, v26);
}

uint64_t sub_25BB4DC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for OptimizerStateDictionary.ParameterKey(255, a2, a3, a4);
  swift_getTupleTypeMetadata2();
  sub_25BCB67CC();
  swift_getWitnessTable();
  v14 = sub_25BCB614C();
  sub_25BCB736C();
  sub_25BCB618C();
  sub_25BCB61AC();
  result = sub_25BCB613C();
  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      *a5 = v14;
      return result;
    }

    v11 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v11)
    {
      v8 = v13;
      do
      {
LABEL_9:
        v11 &= v11 - 1;
        swift_retain_n();

        sub_25BCB6FEC();

        sub_25BCB61CC();
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB4DE84@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for OptimizerStateDictionary(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = OptimizerStateDictionary.subscript.getter(v5, v6);
  *a4 = v8;
  return result;
}

uint64_t sub_25BB4DEF0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v9 = *a1;
  v7 = type metadata accessor for OptimizerStateDictionary(0, v4, v5, a4);

  return OptimizerStateDictionary.subscript.setter(&v9, v6, v7);
}

uint64_t (*OptimizerStateDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  OptimizerStateDictionary.subscript.getter(a2, a3);
  return sub_25BB4DFCC;
}

uint64_t sub_25BB4DFCC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    OptimizerStateDictionary.subscript.setter(&v5, v3, v2);
  }

  else
  {
    v5 = *a1;

    return OptimizerStateDictionary.subscript.setter(&v5, v3, v2);
  }
}

uint64_t sub_25BB4E06C(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB4E0B4()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB4E12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E1A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB4E20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB4E2EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB4E0B4();
  *a1 = result;
  return result;
}

uint64_t sub_25BB4E324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BADF1E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB4E368@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB4E108();
  *a1 = result;
  return result;
}

uint64_t sub_25BB4E3C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB0716C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB4E3F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB4E444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t OptimizerStateDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v167 = a4;
  v7 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  v175 = v7;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator(0, v7, WitnessTable, v8);
  OUTLINED_FUNCTION_2();
  v173 = v10;
  v174 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v11);
  v172 = &v151 - v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v14);
  OUTLINED_FUNCTION_21_10();
  v160 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v159 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_0(&v151 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_1();
  v164 = v20;
  v171 = sub_25BCB741C();
  OUTLINED_FUNCTION_2();
  v169 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v24);
  OUTLINED_FUNCTION_9();
  v161 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v151 - v30;
  v166 = a2;
  v168 = a3;
  type metadata accessor for OptimizerStateDictionary.CodingKeys(255, a2, a3, v32);
  OUTLINED_FUNCTION_11_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_10();
  v33 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2();
  v165 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  v37 = &v151 - v36;
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v170;
  sub_25BCB7B2C();
  v40 = a1;
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v152 = v28;
  v41 = v169;
  v154 = v31;
  v170 = 0;
  v155 = v37;
  v156 = v33;
  v42 = v166;
  v43 = a1[3];
  v153 = v38;
  __swift_project_boxed_opaque_existential_1(v40, v43);
  v44 = sub_25BCB7B1C();
  v45 = v164;
  OUTLINED_FUNCTION_33_5();
  result = __swift_getEnumTagSinglePayload(v45, 1, v171);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = v41;
  v48 = *(v41 + 32);
  v49 = v162;
  v50 = v45;
  v51 = v171;
  v48(v162, v50, v171);
  sub_25BB3EF70(v49, v44, &v178);

  v52 = v47 + 8;
  v53 = *(v47 + 8);
  v53(v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
  v54 = v163;
  v55 = swift_dynamicCast();
  v56 = v168;
  if (v55)
  {
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v42);
    OUTLINED_FUNCTION_29_7();
    v58 = v154;
    (*(v57 + 32))(v154, v54, v42);
    v59 = type metadata accessor for AnyLayerVariablePathCache();
    v60 = OUTLINED_FUNCTION_20_9();
    v66 = sub_25BAB5DD8(v60, v61, v62, v63, v64, v56, v65);
    if (v66)
    {
      v67 = v66;
    }

    else
    {
      v171 = v59;
      v84 = v175;
      *&v177 = sub_25BCB604C();
      *&v176 = MEMORY[0x277D84FA0];
      v181 = MEMORY[0x277D84FA0];
      v85 = v152;
      (*(v28 + 2))(v152, v58, v42);
      v86 = swift_allocObject();
      *(v86 + 16) = v42;
      *(v86 + 24) = v56;
      *(v86 + 32) = 1;
      *(v86 + 36) = 4;
      OUTLINED_FUNCTION_29_7();
      sub_25BAB1090(v85, v87, v88, v84, WitnessTable, v89);
      v91 = v173;
      v90 = v174;
      v92 = OUTLINED_FUNCTION_102_1();
      v93(v92);
      OUTLINED_FUNCTION_4_5();
      v94 = swift_getWitnessTable();
      v95 = v172;
      MEMORY[0x25F876DC0](v90, v94);
      v96 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_25BAB173C(v90, &v178);
        v97 = v178;
        if (!v178)
        {
          break;
        }

        v98 = *(&v178 + 1);
        v99 = v179;
        v100 = sub_25BCB681C();
        *&v178 = v97;
        sub_25BCB68CC();

        sub_25BCB687C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_45();
          sub_25BAB22A0();
          v96 = v103;
        }

        v102 = *(v96 + 16);
        v101 = *(v96 + 24);
        if (v102 >= v101 >> 1)
        {
          OUTLINED_FUNCTION_14_15(v101);
          sub_25BAB22A0();
          v96 = v104;
        }

        *(v96 + 16) = v102 + 1;
        *(v96 + 8 * v102 + 32) = v98;
        if ((v99 & 0x400000000) != 0)
        {
          sub_25BAA2CDC(&v178, v100);
        }

        v95 = v172;
        if (v99)
        {
          sub_25BAA2CDC(&v178, v100);
        }

        v91 = v173;
        v90 = v174;
      }

      v105 = *(v91 + 8);
      v105(v95, v90);
      *&v178 = v42;
      *(&v178 + 1) = &type metadata for Parameter;
      v179 = v168;
      v180 = &protocol witness table for Parameter;
      v106 = OUTLINED_FUNCTION_23_10();
      type metadata accessor for LayerVariablePaths(v106, v107);
      OUTLINED_FUNCTION_32_5();
      sub_25BAB2794();
      v109 = v108;
      OUTLINED_FUNCTION_20_9();
      sub_25BAB61C4();
      OUTLINED_FUNCTION_18_15();
      sub_25BAB61CC(v109, v111, v112, v110);
      v113 = v90;
      v67 = v109;
      v105(v158, v113);
    }

    v114 = sub_25BC41DA0();

    *&v178 = v114;
    *&v176 = sub_25BAB9528();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    v116 = sub_25BCB68CC();
    v117 = sub_25BB5048C(&qword_27FBB4098, &qword_27FBB3F98, &unk_25BCC3720);
    OUTLINED_FUNCTION_7_2();
    v118 = swift_getWitnessTable();
    OUTLINED_FUNCTION_17_13();
    sub_25BCB793C();

    v176 = v177;
    *&v178 = v115;
    *(&v178 + 1) = v116;
    v179 = v117;
    v180 = v118;
    OUTLINED_FUNCTION_23_10();
    sub_25BCB715C();
    OUTLINED_FUNCTION_5_5();
    swift_getWitnessTable();
    sub_25BCB615C();
    v181 = sub_25BCB604C();
    LOBYTE(v177) = 0;
    sub_25BB504D0(&qword_27FBB49E8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v119 = v170;
    sub_25BCB76AC();
    if (v119)
    {

      v120 = OUTLINED_FUNCTION_8_17();
      v121(v120, v42);
      v82 = OUTLINED_FUNCTION_27_8();
LABEL_22:
      v83(v82);
LABEL_23:
      v40 = v153;
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    v172 = v118;
    v173 = v67;
    v122 = v178;
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
    LOBYTE(v177) = 1;
    sub_25BB5053C(&qword_27FBB49F8, sub_25BB1B9B0);
    result = sub_25BCB76AC();
    v170 = 0;
    v174 = v116;
    v124 = 0;
    v171 = v178;
    v125 = *(v122 + 16);
    for (i = (v122 + 40); ; i += 2)
    {
      v127 = v167;
      if (v125 == v124)
      {

        *&v178 = v181;
        *&v176 = v171;
        v132 = sub_25BB5048C(&qword_27FBB4A00, &qword_27FBB49F0, &unk_25BCC0140);
        OUTLINED_FUNCTION_17_13();
        v133 = v174;
        v134 = v172;
        sub_25BCB793C();

        v176 = v177;
        *&v178 = v133;
        *(&v178 + 1) = v123;
        v179 = v134;
        v180 = v132;
        OUTLINED_FUNCTION_23_10();
        sub_25BCB715C();
        OUTLINED_FUNCTION_5_5();
        swift_getWitnessTable();
        v135 = sub_25BCB615C();
        v136 = v166;
        sub_25BB4DC6C(v135, v166, v168, v137, &v178);

        v138 = OUTLINED_FUNCTION_8_17();
        v139(v138, v136);
        v140 = OUTLINED_FUNCTION_16_15();
        v141(v140);
        *v127 = v178;
        return __swift_destroy_boxed_opaque_existential_1(v153);
      }

      if (v124 >= *(v122 + 16))
      {
        break;
      }

      v128 = v122;
      v130 = *(i - 1);
      v129 = *i;
      *&v178 = v130;
      *(&v178 + 1) = v129;
      swift_bridgeObjectRetain_n();
      sub_25BCB61BC();

      v131 = v177;
      if (!v177)
      {

        v142 = sub_25BCB71BC();
        OUTLINED_FUNCTION_14_0(v142, MEMORY[0x277D841A0]);
        v144 = v143;
        v145 = v155;
        sub_25BCB763C();
        OUTLINED_FUNCTION_15_12();
        sub_25BCB70FC();
        OUTLINED_FUNCTION_26_9();
        OUTLINED_FUNCTION_13_12();
        MEMORY[0x25F876C90](v146 + 51, v147 | 0x8000000000000000);
        MEMORY[0x25F876C90](v130, v129);

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        sub_25BCB71AC();
        OUTLINED_FUNCTION_11_1();
        (*(v148 + 104))(v144);
        swift_willThrow();

        v149 = OUTLINED_FUNCTION_8_17();
        v150(v149, v166);
        (*(v165 + 8))(v145);
        goto LABEL_23;
      }

      ++v124;
      *&v178 = v131;
      result = sub_25BCB687C();
      v122 = v128;
    }

    __break(1u);
    goto LABEL_33;
  }

  v169 = v52;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v42);
  OUTLINED_FUNCTION_12_12();
  v68(v54, v160);
  v69 = v42;
  v70 = sub_25BCB71BC();
  v170 = OUTLINED_FUNCTION_14_0(v70, MEMORY[0x277D841A0]);
  v72 = v71;
  *v71 = type metadata accessor for OptimizerSerializationContext(0, v69, v56, v73);
  v175 = sub_25BCB763C();
  OUTLINED_FUNCTION_15_12();
  sub_25BCB70FC();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_13_12();
  MEMORY[0x25F876C90](v74 + 150, v75 | 0x8000000000000000);
  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_33_5();
  result = __swift_getEnumTagSinglePayload(v69, 1, v171);
  if (result != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48B8, &unk_25BCC0130);
    v76 = OUTLINED_FUNCTION_102_1();
    (v48)(v76);
    v77 = sub_25BCB740C();
    v79 = v78;
    v80 = OUTLINED_FUNCTION_102_1();
    (v53)(v80);
    MEMORY[0x25F876C90](v77, v79);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    sub_25BCB71AC();
    OUTLINED_FUNCTION_11_1();
    (*(v81 + 104))(v72);
    swift_willThrow();
    v82 = OUTLINED_FUNCTION_16_15();
    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t OptimizerStateDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  v179 = v6;
  WitnessTable = swift_getWitnessTable();
  v178 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v6, WitnessTable, v7);
  OUTLINED_FUNCTION_2();
  v161 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v10);
  v177 = v158 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v13);
  *&v165 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2();
  v164 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  v169 = v158 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D8, &unk_25BCC0120);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v18);
  v20 = v158 - v19;
  v170 = sub_25BCB741C();
  OUTLINED_FUNCTION_2();
  v175 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v23);
  v25 = v158 - v24;
  OUTLINED_FUNCTION_9();
  v168 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_9_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_0(v29);
  v30 = *(a2 + 24);
  v173 = v5;
  v174 = v30;
  type metadata accessor for OptimizerStateDictionary.CodingKeys(255, v5, v30, v31);
  OUTLINED_FUNCTION_11_18();
  swift_getWitnessTable();
  v172 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2();
  v166 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  v35 = v158 - v34;
  v176 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v171 = v35;
  sub_25BCB7B6C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = sub_25BCB7B5C();
  OUTLINED_FUNCTION_33_5();
  v37 = v170;
  result = __swift_getEnumTagSinglePayload(v20, 1, v170);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v175;
    v40 = *(v175 + 32);
    v40(v25, v20, v37);
    sub_25BB3EF70(v25, v36, &v182);

    v43 = *(v39 + 8);
    v42 = v39 + 8;
    v41 = v43;
    v43(v25, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
    v44 = v169;
    v45 = v173;
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_31_5();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v50 = v168;
      v51 = v167;
      (*(v168 + 32))(v167, v44, v45);
      v52 = type metadata accessor for AnyLayerVariablePathCache();
      OUTLINED_FUNCTION_31_5();
      v53 = v174;
      v58 = sub_25BAB5DD8(v54, v55, v56, v57, &type metadata for Parameter, v174, &protocol witness table for Parameter);
      if (v58)
      {
        v59 = v58;
      }

      else
      {
        v175 = v52;
        v80 = v179;
        *&v181 = sub_25BCB604C();
        *&v180 = MEMORY[0x277D84FA0];
        v185 = MEMORY[0x277D84FA0];
        v81 = *(v50 + 16);
        v82 = v158[0];
        v81(v158[0], v51, v45);
        v83 = swift_allocObject();
        *(v83 + 16) = v45;
        *(v83 + 24) = v53;
        *(v83 + 32) = 1;
        *(v83 + 36) = 4;
        OUTLINED_FUNCTION_29_7();
        sub_25BAB1090(v82, v84, v85, v80, WitnessTable, v86);
        v87 = OUTLINED_FUNCTION_102_1();
        v88 = v178;
        v89(v87);
        OUTLINED_FUNCTION_4_5();
        v90 = swift_getWitnessTable();
        MEMORY[0x25F876DC0](v88, v90);
        v91 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_25BAB173C(v178, &v182);
          v92 = v182;
          if (!v182)
          {
            break;
          }

          v94 = *(&v182 + 1);
          v93 = v183;
          v95 = sub_25BCB681C();
          *&v182 = v92;
          OUTLINED_FUNCTION_21_10();
          sub_25BCB68CC();

          sub_25BCB687C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAB22A0();
            v91 = v98;
          }

          v97 = *(v91 + 16);
          v96 = *(v91 + 24);
          if (v97 >= v96 >> 1)
          {
            OUTLINED_FUNCTION_14_15(v96);
            sub_25BAB22A0();
            v91 = v99;
          }

          *(v91 + 16) = v97 + 1;
          *(v91 + 8 * v97 + 32) = v94;
          if ((v93 & 0x400000000) != 0)
          {
            sub_25BAA2CDC(&v182, v95);
          }

          if (v93)
          {
            sub_25BAA2CDC(&v182, v95);
          }
        }

        v170 = *(v161 + 8);
        v100 = v178;
        v170(v177, v178);
        v45 = v173;
        *&v182 = v173;
        *(&v182 + 1) = &type metadata for Parameter;
        v183 = v174;
        v184 = &protocol witness table for Parameter;
        v101 = OUTLINED_FUNCTION_23_10();
        type metadata accessor for LayerVariablePaths(v101, v102);
        OUTLINED_FUNCTION_32_5();
        sub_25BAB2794();
        v59 = v103;
        OUTLINED_FUNCTION_31_5();
        sub_25BAB61C4();
        OUTLINED_FUNCTION_18_15();
        sub_25BAB61CC(v59, v105, v106, v104);
        v170(v160, v100);
      }

      *&v182 = sub_25BAB9528();

      v107 = sub_25BC41DA0();
      v170 = v59;

      *&v180 = v107;
      v108 = sub_25BCB68CC();
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
      OUTLINED_FUNCTION_7_2();
      v110 = swift_getWitnessTable();
      v111 = sub_25BB5048C(&qword_27FBB4098, &qword_27FBB3F98, &unk_25BCC3720);
      OUTLINED_FUNCTION_17_13();
      sub_25BCB793C();

      v180 = v181;
      *&v182 = v108;
      *(&v182 + 1) = v109;
      v169 = v109;
      v183 = v110;
      v184 = v111;
      OUTLINED_FUNCTION_23_10();
      sub_25BCB715C();
      OUTLINED_FUNCTION_5_5();
      swift_getWitnessTable();
      v175 = sub_25BCB615C();
      type metadata accessor for OptimizerStateDictionary.ParameterKey(0, v45, v174, v112);
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      v113 = sub_25BCB617C();
      v114 = v113;
      v115 = 0;
      v116 = v113 + 64;
      v117 = 1 << *(v113 + 32);
      v118 = -1;
      if (v117 < 64)
      {
        v118 = ~(-1 << v117);
      }

      v119 = v118 & *(v113 + 64);
      v120 = (v117 + 63) >> 6;
      v177 = MEMORY[0x277D84F90];
      v178 = MEMORY[0x277D84F90];
      while (v119)
      {
        v121 = v115;
LABEL_27:
        v122 = (*(v114 + 48) + ((v121 << 10) | (16 * __clz(__rbit64(v119)))));
        v110 = *v122;
        v123 = v122[1];
        v119 &= v119 - 1;
        *&v182 = v110;
        *(&v182 + 1) = v123;
        swift_retain_n();
        sub_25BCB61BC();

        v124 = v181;
        if (v181)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAA1B64();
            v178 = v133;
          }

          v125 = *(v178 + 16);
          v126 = v125 + 1;
          if (v125 >= *(v178 + 24) >> 1)
          {
            *(&v165 + 1) = v125 + 1;
            *&v165 = v125;
            sub_25BAA1B64();
            v126 = *(&v165 + 1);
            v125 = v165;
            v178 = v134;
          }

          v127 = v178;
          *(v178 + 16) = v126;
          *(v127 + 8 * v125 + 32) = v124;
          *&v181 = v110;

          sub_25BCB61BC();

          if (!*(&v182 + 1))
          {
LABEL_45:

            v147 = sub_25BCB71EC();
            v178 = OUTLINED_FUNCTION_14_0(v147, MEMORY[0x277D841C8]);
            v149 = v148;
            v177 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
            v151 = type metadata accessor for OptimizerSerializationContext(0, v173, v174, v150);
            v149[3] = swift_getMetatypeMetadata();
            *v149 = v151;
            v152 = v171;
            v138 = v172;
            sub_25BCB771C();
            OUTLINED_FUNCTION_15_12();
            sub_25BCB70FC();
            OUTLINED_FUNCTION_26_9();
            OUTLINED_FUNCTION_13_12();
            MEMORY[0x25F876C90](v153 + 14, v154 | 0x8000000000000000);
            *&v181 = v110;
            sub_25BCB784C();
            MEMORY[0x25F876C90](11872, 0xE200000000000000);
            sub_25BCB71AC();
            OUTLINED_FUNCTION_11_1();
            (*(v155 + 104))(v149);
            swift_willThrow();

            v156 = OUTLINED_FUNCTION_22_8();
            v157(v156);
            OUTLINED_FUNCTION_12_12();
            v78 = v152;
            goto LABEL_42;
          }

          v165 = v182;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45();
            sub_25BAB1E30();
            v177 = v135;
          }

          v128 = *(v177 + 16);
          v129 = v128 >= *(v177 + 24) >> 1;
          v164 = v128;
          v163 = v128 + 1;
          if (v129)
          {
            sub_25BAB1E30();
            v177 = v136;
          }

          v130 = v177;
          *(v177 + 16) = v163;
          v131 = v130 + 16 * v164;
          v132 = *(&v165 + 1);
          *(v131 + 32) = v165;
          *(v131 + 40) = v132;
          v115 = v121;
        }

        else
        {

          v115 = v121;
        }
      }

      while (1)
      {
        v121 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v121 >= v120)
        {
          break;
        }

        v119 = *(v116 + 8 * v121);
        ++v115;
        if (v119)
        {
          goto LABEL_27;
        }
      }

      *&v182 = v177;
      LOBYTE(v181) = 0;
      sub_25BB504D0(&qword_27FBB4A08, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      v137 = v171;
      v138 = v172;
      v139 = v162;
      sub_25BCB779C();
      if (v139)
      {

        v140 = OUTLINED_FUNCTION_22_8();
        v141(v140);
        OUTLINED_FUNCTION_12_12();
        v142 = OUTLINED_FUNCTION_27_8();
        v143(v142);
      }

      *&v182 = v178;
      LOBYTE(v181) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
      sub_25BB5053C(qword_27FBB4A10, sub_25BB1B95C);
      sub_25BCB779C();
      v144 = v173;
      v145 = v168;
      v146 = v167;

      (*(v145 + 8))(v146, v144);
      OUTLINED_FUNCTION_12_12();
      v78 = v137;
LABEL_42:
      v79 = v138;
      return v77(v78, v79);
    }

    v175 = v42;
    OUTLINED_FUNCTION_31_5();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    OUTLINED_FUNCTION_12_12();
    v64(v44, v165);
    v179 = sub_25BCB71EC();
    v178 = OUTLINED_FUNCTION_14_0(v179, MEMORY[0x277D841C8]);
    v66 = v65;
    v68 = type metadata accessor for OptimizerSerializationContext(0, v45, v174, v67);
    v66[3] = swift_getMetatypeMetadata();
    *v66 = v68;
    v177 = sub_25BCB771C();
    OUTLINED_FUNCTION_15_12();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_26_9();
    OUTLINED_FUNCTION_13_12();
    MEMORY[0x25F876C90](v69 + 150, v70 | 0x8000000000000000);
    v71 = *(&v165 + 1);
    OUTLINED_FUNCTION_33_5();
    result = __swift_getEnumTagSinglePayload(v71, 1, v37);
    if (result != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58);
      v72 = v163;
      v40(v163, v71, v37);
      v73 = sub_25BCB740C();
      v75 = v74;
      v41(v72, v37);
      MEMORY[0x25F876C90](v73, v75);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      sub_25BCB71AC();
      OUTLINED_FUNCTION_11_1();
      (*(v76 + 104))(v66);
      swift_willThrow();
      OUTLINED_FUNCTION_12_12();
      v78 = v171;
      v79 = v172;
      return v77(v78, v79);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB5048C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_7_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB504D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB5053C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    a2();
    OUTLINED_FUNCTION_27_8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB505B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_25BB505EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB506B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB507C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_25BB50ACC();
  result = sub_25BCB6E2C();
  *a3 = result;
  return result;
}

id sub_25BB50844(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_25BB50890()
{
  v0 = sub_25BCB5F6C();
  __swift_allocate_value_buffer(v0, qword_27FBDB4C0);
  __swift_project_value_buffer(v0, qword_27FBDB4C0);
  return sub_25BCB5F5C();
}

uint64_t sub_25BB50984(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_25BCB5EEC();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_25BCB5ECC();
}

uint64_t sub_25BB50A34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25BCB5EEC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_25BB50ACC()
{
  result = qword_28154BD58;
  if (!qword_28154BD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28154BD58);
  }

  return result;
}

uint64_t sub_25BB50B10(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE40;
  *(v10 + 32) = sub_25BCB6A6C();
  *(v10 + 40) = sub_25BCB6A6C();
  sub_25BB50DF0();
  v11 = sub_25BCB672C();

  OUTLINED_FUNCTION_0_24();
  v13 = 4 * v12;
  v15 = *(v2 + 24);
  v14 = *(v2 + 32);
  sub_25BCB617C();
  v16 = sub_25BB50E34(v9, v11, v3, 1, v4 & 1, v13, v15, v14, a1, &selRef_resizeTensor_size_mode_centerResult_alignCorners_layout_name_);

  *(v7 + 32) = v16;
  return v7;
}

uint64_t sub_25BB50C94(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  sub_25BAB4D78(1uLL, v8 == 0, a2);
  if (v8)
  {
    v11 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v11 = *(a2 + 40);
  }

  v12 = v11;
  OUTLINED_FUNCTION_0_24();
  v14 = 4 * v13;
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  sub_25BCB617C();
  v17 = sub_25BB50E34(v10, v12, v3, 1, v4 & 1, v14, v16, v15, a1, &selRef_resizeWithGradientTensor_input_mode_centerResult_alignCorners_layout_name_);

  *(v7 + 32) = v17;
  return v7;
}

unint64_t sub_25BB50DF0()
{
  result = qword_28154BD90;
  if (!qword_28154BD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28154BD90);
  }

  return result;
}

id sub_25BB50E34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, SEL *a10)
{
  v16 = sub_25BCB633C();

  v17 = [a9 *a10];

  return v17;
}

uint64_t sub_25BB50EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 1)
  {
    goto LABEL_10;
  }

  v13 = sub_25BCB6ABC();
  v14 = v13 + a1;
  if (__OFADD__(v13, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_25BCB74CC("Fatal error", 11, 2, 0xD000000000000029, 0x800000025BCDBFE0, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Data/ConcurrentMap.swift", 100, 2, 21);
    __break(1u);
    return result;
  }

  if (v16 / a1 > 1)
  {
    MEMORY[0x28223BE20](v13);
    v21[0] = a4;
    v21[1] = a5;
    v22 = a6;
    v23 = v19;
    v24 = v20;
    v25 = v6;
    v26 = a2;
    v27 = a3;
    return sub_25BB6AD58();
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a2;
    v26 = a3;
    return sub_25BAB2B20(sub_25BB517A4, v21, a4, a5, MEMORY[0x277D84A98], a6, MEMORY[0x277D84AC0], v17);
  }
}

uint64_t sub_25BB51084(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = a3;
  result = sub_25BCB6EAC();
  if (result)
  {
    v10 = sub_25BAADFB0();
    MEMORY[0x28223BE20](v10);
    return sub_25BCB6CEC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25BB511A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a6;
  v69 = a7;
  v72 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v54 - v16;
  v70 = a9;
  v17 = *(a9 - 8);
  MEMORY[0x28223BE20](v18);
  v65 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a10;
  v73 = a8;
  v20 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = &v54 - v25;
  v26 = a1 * a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!a3)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v26 == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_25;
  }

  v28 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_22;
  }

  v29 = v28 * a2;
  if ((v28 * a2) >> 64 == (v28 * a2) >> 63)
  {
    if (v29 == 0x8000000000000000 && a3 == -1)
    {
      goto LABEL_26;
    }

    v59 = v15;
    v31 = v26 / a3;
    v32 = v29 / a3;
    v33 = v17;
    v34 = v24;
    sub_25BCB6AAC();
    sub_25BCB6ACC();
    v35 = *(v34 + 8);
    v57 = v34 + 8;
    v56 = v35;
    v35(v22, v20);
    v36 = *(v33 + 72);
    v37 = a5 + v36 * v31;
    v75 = v37;
    v64 = v36;
    v38 = a5 + v36 * v32;
    v83 = v38;
    v39 = sub_25BCB6E7C();
    WitnessTable = swift_getWitnessTable();
    if ((sub_25BCB62CC() & 1) == 0)
    {
      goto LABEL_24;
    }

    v55 = v20;
    v75 = v37;
    v76 = v38;
    v83 = v37;
    v84 = v38;
    v41 = sub_25BCB6BDC();
    v42 = swift_getWitnessTable();
    v43 = sub_25BB429B4();
    sub_25BCB6BEC();
    v60 = (v59 + 2);
    ++v59;
    v58 = (v33 + 32);
    v63 = v39;
    v62 = v41;
    v61 = v42;
    v44 = AssociatedTypeWitness;
    while (1)
    {
      sub_25BCB6BFC();
      v45 = v82;
      if (v82 == v75)
      {
        v56(v74, v55);
        return;
      }

      v81 = v82;
      sub_25BCB6BEC();
      sub_25BCB6BFC();
      if ((sub_25BCB62CC() & 1) == 0)
      {
        break;
      }

      v75 = v80;
      v76 = v79;
      v77 = v42;
      v78 = v43;
      v46 = swift_getWitnessTable();
      MEMORY[0x25F877340](&v81, &v75, v41, v46);
      v82 = v45 + v64;
      v47 = sub_25BCB6B8C();
      v48 = v66;
      (*v60)(v66);
      v47(&v75, 0);
      v49 = v43;
      v50 = WitnessTable;
      v51 = v65;
      v68(v48);
      v52 = v48;
      v42 = v61;
      (*v59)(v52, v44);
      v53 = v51;
      WitnessTable = v50;
      v43 = v49;
      (*v58)(v45, v53, v70);
      v41 = v62;
      sub_25BCB6AEC();
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_25BB5180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v24;
  a20 = v25;
  v130 = v21;
  v26 = v20;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v30 = OUTLINED_FUNCTION_6_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_11();
  v131 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_69_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  v37 = &v120 - v36;
  v38 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v132 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50();
  v134 = v41;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_11();
  v135 = v43;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v120 - v45;
  v47 = sub_25BAC4018();
  v48 = sub_25BB3EE04(v47, v28);
  v133 = v49;
  if (!v48)
  {
    goto LABEL_6;
  }

  v50 = v48;
  v51 = sub_25BAC4018();
  v126 = sub_25BB3EE04(v51, v28);
  if (!v126)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v56 = sub_25BB0E2EC();
    v57 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v56);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0480, v57, v58);
    goto LABEL_14;
  }

  v125 = v52;
  v129 = v50;
  if (v20[7])
  {
    v53 = sub_25BAC4018();
    v54 = sub_25BB3EE04(v53, v28);
    v124 = v55;
  }

  else
  {
    v54 = 0;
    v124 = 0;
  }

  type metadata accessor for NativeTensorStorage(0);
  v136 = v20[8];
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  v59 = v130;
  sub_25BBC0130(v60, v61, v62, v63);
  v65 = v64;
  v123 = v59;
  v66 = OUTLINED_FUNCTION_43(v20[5]);
  if (!v67)
  {
    goto LABEL_16;
  }

  v121 = *(v66 + 32);
  swift_getObjectType();
  OUTLINED_FUNCTION_8_18();
  v122 = v68;
  v69();
  OUTLINED_FUNCTION_48();
  v130 = v65;
  v127 = v54;
  if (!v70)
  {
  }

  v71 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5F44(v71, v72);

  v73 = sub_25BCB617C();
  sub_25BBA8A7C(v73);
  v128 = v46;
  v74 = *MEMORY[0x277D82DE0];
  v75 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3();
  (*(v76 + 104))(v37, v74, v75);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v75);
  sub_25BCB54FC();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v81 = OUTLINED_FUNCTION_5(v80);
  v120 = xmmword_25BCBAE50;
  *(v81 + 16) = xmmword_25BCBAE50;
  v82 = OUTLINED_FUNCTION_43(v26[6]);
  if (!v83)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_25();
    sub_25BCB617C();
    OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v118, v119, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v84 = v26;
  *(v81 + 32) = *(v82 + 32);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v75);
  v85 = v134;
  sub_25BCB54FC();
  v86 = v132;
  v87 = *(v132 + 16);
  v87(v22, v128, v38);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v38);
  v91 = v131;
  v87(v131, v135, v38);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v38);
  v87(v23, v85, v38);
  OUTLINED_FUNCTION_5_1();
  v98 = __swift_storeEnumTagSinglePayload(v95, v96, v97, v38);
  MEMORY[0x28223BE20](v98);
  *(&v120 - 4) = v130;
  *(&v120 - 3) = v84;
  *(&v120 - 2) = v121;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_14_1();
  v100 = v125;
  *(v101 - 64) = v126;
  *(v101 - 56) = v100;
  v102 = v127;
  *(v101 - 48) = v91;
  *(v101 - 40) = v102;
  *(v101 - 32) = v124;
  *(v101 - 24) = v23;
  *(v101 - 16) = sub_25BB57D98;
  *(v101 - 8) = v103;
  OUTLINED_FUNCTION_39_0();
  v104 = v123;
  sub_25BC675C0(v105, v106, v107, &a13);
  if (v104)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_2();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v22);
    v108 = *(v86 + 8);
    v109 = OUTLINED_FUNCTION_93_3();
    v108(v109);
    v110 = OUTLINED_FUNCTION_91_2();
    v108(v110);
    v111 = OUTLINED_FUNCTION_80_2();
    (v108)(v111, v38);
    sub_25BB0EA20(v23);
    sub_25BB0EA20(v91);
  }

  else
  {
    sub_25BB0EA20(v22);
    sub_25BB0EA20(v23);
    sub_25BB0EA20(v91);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v113 = OUTLINED_FUNCTION_31(v112);
    *(v113 + 16) = v120;
    *(v113 + 32) = v130;
    *(v113 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_2();
    swift_unknownObjectRelease();
    v114 = *(v86 + 8);
    v115 = OUTLINED_FUNCTION_93_3();
    v114(v115);
    v116 = OUTLINED_FUNCTION_91_2();
    v114(v116);
    v117 = OUTLINED_FUNCTION_80_2();
    (v114)(v117, v38);
  }

LABEL_14:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB51E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a6;
  v23 = a5;
  v21[3] = a3;
  v21[2] = a2;
  v21[4] = a1;
  v7 = sub_25BCB530C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = sub_25BCB54EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 16);
  if (v18[2])
  {
    sub_25BCB617C();
  }

  else
  {
    v18 = &unk_286D44228;
  }

  sub_25BBF5F44(v18, 0);

  (*(v15 + 16))(v13, v17, v14);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);

  sub_25BC6728C(v13);
  sub_25BB1A740(v22);
  sub_25BCB536C();
  (*(v8 + 104))(v10, *MEMORY[0x277D82F78], v7);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB535C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v19 = xmmword_25BCC0480;
    *(v19 + 16) = 0x8000;
    swift_willThrow();
  }

  sub_25BB1A750();

  sub_25BB0EA20(v13);
  return (*(v15 + 8))(v17, v14);
}

void sub_25BB52220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v28 = OUTLINED_FUNCTION_6_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_50();
  v193 = v29;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_11();
  v198 = v31;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_11();
  v192 = v33;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_1();
  v197 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  v39 = &v177 - v38;
  v195 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_50();
  v200 = v43;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_11();
  v199 = v45;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v46);
  v48 = &v177 - v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4_1();
  v202 = v50;
  v52 = OUTLINED_FUNCTION_89_2(v51);
  v53 = sub_25BB3EE04(v52, v26);
  if (!v53)
  {
    goto LABEL_11;
  }

  v55 = v54;
  v201 = v53;
  v56 = sub_25BAC4018();
  v57 = sub_25BB3EE04(v56, v26);
  OUTLINED_FUNCTION_78_2(v57, v58);
  if (!v59)
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v71 = sub_25BB0E2EC();
    v72 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v71);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0490, v72, v73);
    goto LABEL_12;
  }

  v191 = v55;
  v196 = v59;
  v190 = v20;
  v60 = sub_25BAC4018();
  v61 = sub_25BB3EE04(v60, v26);
  v189 = v62;
  if (!v61)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_2();
    goto LABEL_10;
  }

  v188 = v61;
  swift_getObjectType();
  OUTLINED_FUNCTION_19_11();
  v187 = v63;
  v64();
  OUTLINED_FUNCTION_64_3();
  if (!v66 & v65 || (OUTLINED_FUNCTION_16_0(), v66))
  {
    v172 = sub_25BB0E2EC();
    v173 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v172);
    *v174 = 0xD000000000000014;
    v174[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v173, v174);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_80_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = *(v190 + 64);
    v186 = v41;
    v185 = v48;
    if (v67)
    {
      v68 = sub_25BAC4018();
      v69 = sub_25BB3EE04(v68, v26);
      v182 = v70;
    }

    else
    {
      v69 = 0;
      v182 = 0;
    }

    type metadata accessor for NativeTensorStorage(0);
    ObjectType = swift_getObjectType();
    v75 = v194;
    v180 = *(v194 + 16);
    (v180)((v203 + 1), ObjectType, v194);
    v76 = *(v75 + 8);
    v181 = ObjectType;
    v76(&a10, ObjectType, v75);
    v77 = OUTLINED_FUNCTION_2_22();
    sub_25BBC0130(v77, v78, v79, v80);
    v184 = v81;
    v82 = swift_getObjectType();
    v83 = v189;
    (*(v189 + 16))(v203 + 1, v82, v189);
    (*(v83 + 8))(&a10, v82, v83);
    v84 = OUTLINED_FUNCTION_2_22();
    sub_25BBC0130(v84, v85, v86, v87);
    a10 = 0;
    v183 = v88;
    if (v69)
    {
      v89 = swift_getObjectType();
      v90 = v182;
      v91 = *(v182 + 16);
      swift_unknownObjectRetain();
      v91((v203 + 1), v89, v90);
      (*(v90 + 8))(v203, v89, v90);
      OUTLINED_FUNCTION_17_10();
      sub_25BBC0130(v92, v93, v94, v95);
      v97 = v96;
      v24 = v21;
      swift_unknownObjectRelease();
      a10 = v97;
    }

    v98 = v197;
    v99 = v190;
    v100 = OUTLINED_FUNCTION_43(*(v190 + 48));
    if (!v101)
    {
      goto LABEL_29;
    }

    v102 = *(v100 + 32);
    OUTLINED_FUNCTION_8_18();
    v103(v187);
    OUTLINED_FUNCTION_48();
    if (!v104)
    {
    }

    v105 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v105, v106);

    (v180)((v203 + 1), v181, v194);
    OUTLINED_FUNCTION_48();
    v178 = v102;
    if (!v107)
    {
    }

    v179 = v24;
    v181 = v69;
    v108 = v185;
    v109 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v109, v110);

    v111 = sub_25BCB617C();
    sub_25BBA8A7C(v111);
    v112 = *MEMORY[0x277D82DE0];
    v113 = sub_25BCB50AC();
    OUTLINED_FUNCTION_9_3();
    (*(v114 + 104))(v39, v112, v113);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v113);
    v118 = v199;
    sub_25BCB54FC();
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v120 = OUTLINED_FUNCTION_5(v119);
    *(v120 + 16) = xmmword_25BCBAE50;
    v121 = OUTLINED_FUNCTION_43(*(v99 + 56));
    if (!v122)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_25();
      sub_25BCB617C();
      OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v175, v176, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
    }

    *(v120 + 32) = *(v121 + 32);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v113);
    sub_25BCB54FC();
    v123 = *(v186 + 16);
    v124 = v195;
    v123(v98, v202, v195);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v124);
    v128 = v192;
    v123(v192, v108, v124);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v124);
    v132 = v108;
    v133 = v198;
    v123(v198, v118, v124);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v124);
    v137 = v193;
    v138 = v200;
    v123(v193, v200, v124);
    OUTLINED_FUNCTION_5_1();
    v142 = __swift_storeEnumTagSinglePayload(v139, v140, v141, v124);
    v180 = &v177;
    MEMORY[0x28223BE20](v142);
    OUTLINED_FUNCTION_49_5();
    *(v143 - 96) = v144;
    *(v143 - 88) = v132;
    *(v143 - 80) = v183;
    *(v143 - 72) = v118;
    *(v143 - 64) = &a10;
    *(v143 - 56) = v138;
    v145 = v197;
    v146 = v191;
    *(v143 - 48) = v201;
    *(v143 - 40) = v146;
    v147 = v190;
    *(v143 - 32) = v202;
    *(v143 - 24) = v147;
    *(v143 - 16) = v178;
    MEMORY[0x28223BE20](v145);
    v148 = v194;
    *(&v177 - 12) = v196;
    *(&v177 - 11) = v148;
    *(&v177 - 10) = v128;
    v149 = v189;
    *(&v177 - 9) = v188;
    *(&v177 - 8) = v149;
    *(&v177 - 7) = v133;
    v150 = v182;
    *(&v177 - 6) = v181;
    *(&v177 - 5) = v150;
    *(&v177 - 4) = v137;
    *(&v177 - 3) = sub_25BB57E00;
    *(&v177 - 2) = v151;
    OUTLINED_FUNCTION_39_0();
    v153 = v152;
    v154 = v179;
    sub_25BC675C0(v155, v156, v157, &v204);
    if (v154)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_22_9();
      swift_unknownObjectRelease();
      sub_25BB0EA20(v153);
      sub_25BB0EA20(v137);
      sub_25BB0EA20(v198);
      sub_25BB0EA20(v128);
      v158 = *(v186 + 8);
      v158(v200, v124);
      v158(v199, v124);
      v158(v185, v124);
      v158(v202, v124);
    }

    else
    {
      v159 = v183;
      v160 = v202;
      v161 = v185;
      v162 = v186;
      sub_25BB0EA20(v153);
      sub_25BB0EA20(v137);
      sub_25BB0EA20(v198);
      sub_25BB0EA20(v128);
      v163 = a10;
      if (a10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        *(swift_allocObject() + 16) = xmmword_25BCBAE90;
        OUTLINED_FUNCTION_49_5();
        v164[4] = v166;
        v164[5] = v165;
        v164[6] = v159;
        v164[7] = v165;
        v164[8] = v163;
        v164[9] = v165;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        *(swift_allocObject() + 16) = xmmword_25BCBAE70;
        OUTLINED_FUNCTION_49_5();
        v167[4] = v169;
        v167[5] = v168;
        v167[6] = v159;
        v167[7] = v168;
      }

      v170 = v195;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_80_2();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v171 = *(v162 + 8);
      v171(v200, v170);
      v171(v199, v170);
      v171(v161, v170);
      v171(v160, v170);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB52D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  v39 = a7;
  v41 = a5;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v35 = a1;
  v40 = a9;
  v34 = a14;
  v33 = a13;
  v32 = a12;
  v31 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - v23;
  v25 = sub_25BCB54EC();
  v26 = *(*(v25 - 8) + 16);
  v26(v24, a6, v25);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  v26(v21, a8, v25);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v25);
  v27 = *a10;
  if (*a10)
  {
    v28 = &off_286D4DBE0;
  }

  else
  {
    v28 = 0;
  }

  v26(v18, v31, v25);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
  v52 = v32;
  v53 = v33;
  v54 = v34;
  v55 = v35;
  v56 = v36;
  v57 = v37;
  v58 = v38;
  v43 = v39;
  v44 = &off_286D4DBE0;
  v45 = v21;
  v46 = v27;
  v47 = v28;
  v48 = v18;
  v49 = sub_25BB57E58;
  v50 = &v51;

  sub_25BB0E340(v24, sub_25BB5807C, v42, v40);
  sub_25BB0EA20(v24);

  sub_25BB0EA20(v18);
  return sub_25BB0EA20(v21);
}

uint64_t sub_25BB53054(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24[2] = a3;
  v24[0] = a1;
  v24[1] = a8;
  v25 = a6;
  v24[4] = a10;
  v30 = a11;
  v26 = a12;
  memcpy(v29, a2, sizeof(v29));
  v13 = sub_25BCB530C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25BCB54EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a5 + 8))(v27, ObjectType, a5);
  sub_25BBF4F40();
  (*(v18 + 16))(v20, v25, v17);
  sub_25BCB6D8C();
  sub_25BCB536C();
  (*(v14 + 104))(v16, *MEMORY[0x277D82F78], v13);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB535C())
  {
    memcpy(v27, v29, 0xB0uLL);
    sub_25BB45694(v27);
    memcpy(v28, v27, sizeof(v28));
    sub_25BCB529C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v23 = xmmword_25BCC0490;
    *(v23 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BB53974()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_61_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_34_6();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_14(v18, v19, v20, v21, v22, v23, v24, v25, v134);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_1();
  v27 = sub_25BAC4018();
  v28 = sub_25BB3EE04(v27, v4);
  if (!v28)
  {
    goto LABEL_8;
  }

  v30 = OUTLINED_FUNCTION_72_2(v28, v29);
  v31 = sub_25BB3EE04(v30, v4);
  if (!v31)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v36 = sub_25BB0E2EC();
    v37 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v36);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC04C0, v37, v38);
    goto LABEL_9;
  }

  v32 = OUTLINED_FUNCTION_109_2(v31);
  v33 = sub_25BB3EE04(v32, v4);
  if (!v33)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_2(v33, v34);
  if (*(v0 + 56))
  {
    v35 = sub_25BAC4018();
    sub_25BB3EE04(v35, v4);
  }

  v39 = OUTLINED_FUNCTION_23_11();
  if (!*(v39 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v40 = v39;
  sub_25BCB617C();

  swift_getObjectType();
  OUTLINED_FUNCTION_19_11();
  v42 = OUTLINED_FUNCTION_50_2(v41);
  v43(v42);
  OUTLINED_FUNCTION_64_3();
  if (!v45 & v44 || (OUTLINED_FUNCTION_16_0(), v45))
  {
    v129 = sub_25BB0E2EC();
    v130 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v129);
    *v131 = 0xD000000000000014;
    v131[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v130, v131);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_18();
  v46 = OUTLINED_FUNCTION_51_5();
  v47(v46);
  v48 = v136;
  if (!*(v136 + 2))
  {

    v48 = &unk_286D43D10;
  }

  OUTLINED_FUNCTION_87_2();

  swift_getObjectType();
  OUTLINED_FUNCTION_8_18();
  v49();
  OUTLINED_FUNCTION_40_6();
  if (!v50)
  {

    v48 = &unk_286D43D38;
  }

  sub_25BBF5F44(v48, 0);

  swift_getObjectType();
  OUTLINED_FUNCTION_45_6();
  v9();
  OUTLINED_FUNCTION_83_2();

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v52 = OUTLINED_FUNCTION_5(v51);
  v53 = OUTLINED_FUNCTION_27_9(v52, xmmword_25BCBAE50);
  (v9)(v53);
  v54 = OUTLINED_FUNCTION_81_2();
  if (!v55)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v132, v133, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v52[2].n128_u64[0] = *(v54 + 32);

  v56 = *MEMORY[0x277D82DF0];
  v57 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3();
  (*(v58 + 104))(v2, v56, v57);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v57);
  OUTLINED_FUNCTION_107_3();
  type metadata accessor for NativeTensorStorage(0);
  v62 = OUTLINED_FUNCTION_29_8();
  v63(v62);
  v64 = OUTLINED_FUNCTION_54_3();
  (v52)(v64);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_62_2();
  sub_25BBC0130(v65, v66, v67, v68);
  v70 = OUTLINED_FUNCTION_25_9(v69);
  v71(v70);
  v72 = OUTLINED_FUNCTION_38_5();
  (v52)(v72);
  v73 = OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_108_2(v73, v74, v75, v76);
  OUTLINED_FUNCTION_42_4(v77);
  if (v14)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_74_2();
    v78 = OUTLINED_FUNCTION_65_0();
    v57(v78);
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_49_5();
    v79();
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_62_2();
    sub_25BBC0130(v80, v81, v82, v83);
    v85 = v84;
    OUTLINED_FUNCTION_61_2();
    swift_unknownObjectRelease();
    v136 = v85;
  }

  v86 = OUTLINED_FUNCTION_28_7();
  v1(v86);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v14);
  v90 = OUTLINED_FUNCTION_79_2();
  v1(v90);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v14);
  v94 = OUTLINED_FUNCTION_58_3();
  v1(v94);
  OUTLINED_FUNCTION_5_1();
  v98 = __swift_storeEnumTagSinglePayload(v95, v96, v97, v14);
  OUTLINED_FUNCTION_103_2(v98, v99, v100, v101, v102, v103, v104, v105, v135);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_43_4();
  *(v107 - 136) = 0;
  OUTLINED_FUNCTION_12_13(v107);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_31_6(v109);
  *(v110 - 16) = sub_25BB57EAC;
  *(v110 - 8) = v111;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62_2();
  sub_25BC675C0(v112, v113, v114, v115);
  if (v40)
  {
    sub_25BB0EA20(v48);

    v116 = OUTLINED_FUNCTION_22_9();
    sub_25BB0EA20(v116);
    sub_25BB0EA20(v2);

    v117 = OUTLINED_FUNCTION_36_4();
    v48(v117);
    v118 = OUTLINED_FUNCTION_105_1();
    v48(v118);
    v119 = OUTLINED_FUNCTION_102_2();
    v48(v119);
    v120 = OUTLINED_FUNCTION_94_2();
    v48(v120);
    OUTLINED_FUNCTION_75_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_110_2();
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_25BB0EA20(v48);
  v121 = OUTLINED_FUNCTION_22_9();
  sub_25BB0EA20(v121);
  sub_25BB0EA20(v2);
  v122 = OUTLINED_FUNCTION_36_4();
  v48(v122);
  v123 = OUTLINED_FUNCTION_105_1();
  v48(v123);
  v124 = OUTLINED_FUNCTION_102_2();
  v48(v124);
  v125 = OUTLINED_FUNCTION_94_2();
  v48(v125);
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v126 = swift_allocObject();
  if (v136)
  {
    *(v126 + 16) = xmmword_25BCBAE90;
    v127 = OUTLINED_FUNCTION_6_23(v126, &off_286D4DBE0);
    v127[8] = v136;
    v127[9] = v128;
    OUTLINED_FUNCTION_98_2();
    swift_retain_n();

    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_98_2();
  }

  else
  {
    *(v126 + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_6_23(v126, &off_286D4DBE0);

    OUTLINED_FUNCTION_75_2();
  }

  OUTLINED_FUNCTION_60_2();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_9:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB547D0()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_61_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_34_6();
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_14(v18, v19, v20, v21, v22, v23, v24, v25, v133);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_1();
  v27 = sub_25BAC4018();
  v28 = sub_25BB3EE04(v27, v4);
  if (!v28)
  {
    goto LABEL_8;
  }

  v30 = OUTLINED_FUNCTION_72_2(v28, v29);
  v31 = sub_25BB3EE04(v30, v4);
  if (!v31)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v36 = sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v36);
    *v37 = 0xD000000000000013;
    *(v37 + 8) = 0x800000025BCDC030;
    *(v37 + 16) = 0x4000;
    swift_willThrow();
    goto LABEL_9;
  }

  v32 = OUTLINED_FUNCTION_109_2(v31);
  v33 = sub_25BB3EE04(v32, v4);
  if (!v33)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_2(v33, v34);
  if (*(v0 + 56))
  {
    v35 = sub_25BAC4018();
    sub_25BB3EE04(v35, v4);
  }

  v38 = OUTLINED_FUNCTION_23_11();
  if (!*(v38 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v39 = v38;
  sub_25BCB617C();

  swift_getObjectType();
  OUTLINED_FUNCTION_19_11();
  v41 = OUTLINED_FUNCTION_50_2(v40);
  v42(v41);
  OUTLINED_FUNCTION_64_3();
  if (!v44 & v43 || (OUTLINED_FUNCTION_16_0(), v44))
  {
    v128 = sub_25BB0E2EC();
    v129 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v128);
    *v130 = 0xD000000000000014;
    v130[1] = 0x800000025BCDC010;
    OUTLINED_FUNCTION_41_5(v129, v130);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_18();
  v45 = OUTLINED_FUNCTION_51_5();
  v46(v45);
  v47 = v135;
  if (!*(v135 + 2))
  {

    v47 = &unk_286D43D10;
  }

  OUTLINED_FUNCTION_87_2();

  swift_getObjectType();
  OUTLINED_FUNCTION_8_18();
  v48();
  OUTLINED_FUNCTION_40_6();
  if (!v49)
  {

    v47 = &unk_286D43D38;
  }

  sub_25BBF5F44(v47, 0);

  swift_getObjectType();
  OUTLINED_FUNCTION_45_6();
  v9();
  OUTLINED_FUNCTION_83_2();

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v51 = OUTLINED_FUNCTION_5(v50);
  v52 = OUTLINED_FUNCTION_27_9(v51, xmmword_25BCBAE50);
  (v9)(v52);
  v53 = OUTLINED_FUNCTION_81_2();
  if (!v54)
  {
LABEL_29:
    OUTLINED_FUNCTION_0_25();
    OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v131, v132, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
  }

  v51[2].n128_u64[0] = *(v53 + 32);

  v55 = *MEMORY[0x277D82DF0];
  v56 = sub_25BCB50AC();
  OUTLINED_FUNCTION_9_3();
  (*(v57 + 104))(v2, v55, v56);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v56);
  OUTLINED_FUNCTION_107_3();
  type metadata accessor for NativeTensorStorage(0);
  v61 = OUTLINED_FUNCTION_29_8();
  v62(v61);
  v63 = OUTLINED_FUNCTION_54_3();
  (v51)(v63);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_62_2();
  sub_25BBC0130(v64, v65, v66, v67);
  v69 = OUTLINED_FUNCTION_25_9(v68);
  v70(v69);
  v71 = OUTLINED_FUNCTION_38_5();
  (v51)(v71);
  v72 = OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_108_2(v72, v73, v74, v75);
  OUTLINED_FUNCTION_42_4(v76);
  if (v14)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_74_2();
    v77 = OUTLINED_FUNCTION_65_0();
    v56(v77);
    OUTLINED_FUNCTION_38_5();
    OUTLINED_FUNCTION_49_5();
    v78();
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_62_2();
    sub_25BBC0130(v79, v80, v81, v82);
    v84 = v83;
    OUTLINED_FUNCTION_61_2();
    swift_unknownObjectRelease();
    v135 = v84;
  }

  v85 = OUTLINED_FUNCTION_28_7();
  v1(v85);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v14);
  v89 = OUTLINED_FUNCTION_79_2();
  v1(v89);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v14);
  v93 = OUTLINED_FUNCTION_58_3();
  v1(v93);
  OUTLINED_FUNCTION_5_1();
  v97 = __swift_storeEnumTagSinglePayload(v94, v95, v96, v14);
  OUTLINED_FUNCTION_103_2(v97, v98, v99, v100, v101, v102, v103, v104, v134);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_43_4();
  *(v106 - 136) = 1;
  OUTLINED_FUNCTION_12_13(v106);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_31_6(v108);
  *(v109 - 16) = sub_25BB580DC;
  *(v109 - 8) = v110;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62_2();
  sub_25BC675C0(v111, v112, v113, v114);
  if (v39)
  {
    sub_25BB0EA20(v47);

    v115 = OUTLINED_FUNCTION_22_9();
    sub_25BB0EA20(v115);
    sub_25BB0EA20(v2);

    v116 = OUTLINED_FUNCTION_36_4();
    v47(v116);
    v117 = OUTLINED_FUNCTION_105_1();
    v47(v117);
    v118 = OUTLINED_FUNCTION_102_2();
    v47(v118);
    v119 = OUTLINED_FUNCTION_94_2();
    v47(v119);
    OUTLINED_FUNCTION_75_2();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_110_2();
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_25BB0EA20(v47);
  v120 = OUTLINED_FUNCTION_22_9();
  sub_25BB0EA20(v120);
  sub_25BB0EA20(v2);
  v121 = OUTLINED_FUNCTION_36_4();
  v47(v121);
  v122 = OUTLINED_FUNCTION_105_1();
  v47(v122);
  v123 = OUTLINED_FUNCTION_102_2();
  v47(v123);
  v124 = OUTLINED_FUNCTION_94_2();
  v47(v124);
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  v125 = swift_allocObject();
  if (v135)
  {
    *(v125 + 16) = xmmword_25BCBAE90;
    v126 = OUTLINED_FUNCTION_6_23(v125, &off_286D4DBE0);
    v126[8] = v135;
    v126[9] = v127;
    OUTLINED_FUNCTION_98_2();
    swift_retain_n();

    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_98_2();
  }

  else
  {
    *(v125 + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_6_23(v125, &off_286D4DBE0);

    OUTLINED_FUNCTION_75_2();
  }

  OUTLINED_FUNCTION_60_2();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_9:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB55024()
{
  OUTLINED_FUNCTION_17_1();
  v83 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = OUTLINED_FUNCTION_6_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_11();
  v10 = v9;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v11);
  v13 = v77 - v12;
  v14 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v86 = v18;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_11();
  v88 = v20;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v87 = v22;
  v24 = OUTLINED_FUNCTION_89_2(v23);
  v25 = sub_25BB3EE04(v24, v3);
  v85 = v26;
  if (!v25)
  {
    goto LABEL_6;
  }

  v27 = sub_25BAC4018();
  v28 = sub_25BB3EE04(v27, v3);
  v84 = v29;
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v36 = sub_25BB0E2EC();
    v37 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v36);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC04E0, v37, v38);
    goto LABEL_13;
  }

  v82 = v28;
  type metadata accessor for NativeTensorStorage(0);
  v90 = *(v0 + 64);
  v89 = *(v0 + 72);
  sub_25BCB617C();
  OUTLINED_FUNCTION_17_10();
  v30 = v83;
  sub_25BBC0130(v31, v32, v33, v34);
  v80 = v30;
  v83 = v35;
  if (*(*(v35 + 16) + 16))
  {
    sub_25BCB617C();
  }

  v81 = v7;
  v39 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v39, v40);

  swift_getObjectType();
  OUTLINED_FUNCTION_67_2();
  v79 = v41;
  v42();
  if (!*(v90 + 16))
  {
  }

  v43 = v10;
  v44 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v44, v45);

  swift_getObjectType();
  OUTLINED_FUNCTION_67_2();
  v46();
  if (!*(v90 + 16))
  {
  }

  v47 = v86;
  v48 = OUTLINED_FUNCTION_20_10();
  sub_25BBF5CD8(v48, v49);

  v78 = v16;
  v50 = *(v16 + 16);
  v51 = v13;
  v50(v13, v88, v14);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v14);
  v50(v43, v47, v14);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v14);
  v58 = v81;
  v59 = v87;
  v50(v81, v87, v14);
  OUTLINED_FUNCTION_5_1();
  v63 = __swift_storeEnumTagSinglePayload(v60, v61, v62, v14);
  v77[1] = v77;
  MEMORY[0x28223BE20](v63);
  v64 = v83;
  v65 = v84;
  v77[-8] = v82;
  v77[-7] = v65;
  v77[-6] = v43;
  v77[-5] = v64;
  v77[-4] = &off_286D4DBE0;
  v77[-3] = v58;
  v77[-2] = sub_25BB57FC0;
  v77[-1] = v0;
  v66 = v64;

  OUTLINED_FUNCTION_39_0();
  v67 = v80;
  sub_25BC675C0(v68, &v77[-10], v69, v70);
  if (v67)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_25BB0EA20(v51);
    v71 = *(v78 + 8);
    v71(v86, v14);
    v72 = OUTLINED_FUNCTION_8_8();
    (v71)(v72);
    v71(v59, v14);
    sub_25BB0EA20(v58);
    sub_25BB0EA20(v43);
  }

  else
  {

    sub_25BB0EA20(v51);
    sub_25BB0EA20(v58);
    sub_25BB0EA20(v43);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v74 = OUTLINED_FUNCTION_31(v73);
    *(v74 + 16) = xmmword_25BCBAE50;
    *(v74 + 32) = v66;
    *(v74 + 40) = &off_286D4DBE0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v75 = *(v78 + 8);
    v75(v86, v14);
    v76 = OUTLINED_FUNCTION_8_8();
    (v75)(v76);
    v75(v59, v14);
  }

LABEL_13:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB55564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BCB544C();
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB543C())
  {
    sub_25BCB542C();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v5 = xmmword_25BCC04E0;
    *(v5 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB556A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + 16);
  sub_25BCB617C();
  if (v5 == 3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = a1;
    if (!isUniquelyReferenced_nonNull_native || *(a1 + 24) <= 7uLL)
    {
      sub_25BA96630(isUniquelyReferenced_nonNull_native, 4, 1, a1);
      a1 = v7;
      v12 = v7;
    }

    sub_25BCA5CE0(2, 2, 1, 1);
  }

  sub_25BBA8A7C(a1);
  v8 = *MEMORY[0x277D82DE8];
  v9 = sub_25BCB50AC();
  (*(*(v9 - 8) + 104))(v4, v8, v9);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
  return sub_25BCB54FC();
}

uint64_t sub_25BB55808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a8;
  v38 = a7;
  v35 = a6;
  v32 = a5;
  v47 = a3;
  v44 = a2;
  v43 = a1;
  v45 = a9;
  v42 = a10;
  v40 = a13;
  v41 = a11;
  v39 = a12;
  v36 = sub_25BCB530C();
  v14 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25BCB531C();
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_25BCB527C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v31 - v24;
  v26 = sub_25BCB54EC();
  (*(*(v26 - 8) + 16))(v25, v32, v26);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);

  sub_25BC6728C(v25);
  sub_25BB1A740(v46);
  v27 = MEMORY[0x277D82EA8];
  if ((v35 & 1) == 0)
  {
    v27 = MEMORY[0x277D82EB0];
  }

  (*(v20 + 104))(v22, *v27, v19);
  sub_25BCB52BC();
  v28 = v38;
  *v18 = v37;
  v18[1] = v28;
  (*(v16 + 104))(v18, *MEMORY[0x277D82F80], v33);
  (*(v14 + 104))(v34, *MEMORY[0x277D82F78], v36);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB52AC())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v29 = xmmword_25BCC04A0;
    *(v29 + 16) = 0x8000;
    swift_willThrow();
  }

  sub_25BB1A750();

  return sub_25BB0EA20(v25);
}

uint64_t sub_25BB55CC8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, int a7, _UNKNOWN **a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, char *a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  v80 = a8;
  v92 = a7;
  v88 = a6;
  v77 = a5;
  v87 = a3;
  v86 = a2;
  v89 = a1;
  v84 = a12;
  v83 = a11;
  v82 = a14;
  v81 = a13;
  v85 = a10;
  v79 = a9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  MEMORY[0x28223BE20](v23 - 8);
  v73 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v72 = &v70 - v26;
  MEMORY[0x28223BE20](v27);
  v71 = &v70 - v28;
  MEMORY[0x28223BE20](v29);
  v70 = &v70 - v30;
  v78 = sub_25BCB530C();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25BCB531C();
  v32 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v34 = (&v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_25BCB527C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25BCB54EC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(v77 + 8))(&v93, ObjectType);
  sub_25BBF4F40();
  v77 = *(v40 + 16);
  (v77)(v42, v88, v39);
  sub_25BCB6D8C();
  v44 = MEMORY[0x277D82EA8];
  if ((v92 & 1) == 0)
  {
    v44 = MEMORY[0x277D82EB0];
  }

  (*(v36 + 104))(v38, *v44, v35);
  sub_25BCB52BC();
  v45 = v80;
  *v34 = v79;
  v34[1] = v45;
  (*(v32 + 104))(v34, *MEMORY[0x277D82F80], v74);
  (*(v76 + 104))(v75, *MEMORY[0x277D82F78], v78);
  sub_25BCB6E0C();
  v46 = sub_25BCB6D6C();
  v68 = v47;
  v69 = v48;
  v66 = v46;
  v67 = v49;
  v65 = v81;
  v64 = v82;
  v63 = v83;
  v62 = v84;
  v50 = sub_25BCB52AC();
  if (v50)
  {
    v84 = a23;
    v82 = a22;
    v86 = a19;
    v85 = a17;
    v87 = a16;
    v83 = a15;
    v51 = v70;
    v81 = v50;
    v52 = v77;
    (v77)(v70, v88, v39);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v39);
    v53 = v71;
    v52(v71, a18, v39);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v39);
    v54 = v72;
    v52(v72, a20, v39);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v39);
    v55 = *a21;
    v56 = &off_286D4DBE0;
    if (!*a21)
    {
      v56 = 0;
    }

    v80 = v56;
    v57 = v73;
    v52(v73, v82, v39);
    v58 = __swift_storeEnumTagSinglePayload(v57, 0, 1, v39);
    v88 = &v70;
    MEMORY[0x28223BE20](v58);
    v69 = &v90;
    v59 = swift_getObjectType();
    MEMORY[0x28223BE20](v59);
    *(&v70 - 12) = v85;
    *(&v70 - 11) = &off_286D4DBE0;
    *(&v70 - 10) = v53;
    *(&v70 - 9) = v86;
    v62 = &off_286D4DBE0;
    v63 = v54;
    v64 = v55;
    v65 = v80;
    v66 = v57;
    v67 = sub_25BB57EC4;
    v68 = &v64;

    sub_25BC675C0(sub_25BB58094, (&v70 - 14), MEMORY[0x277D84F78] + 8, v91);
    sub_25BB0EA20(v51);

    sub_25BB0EA20(v57);
    sub_25BB0EA20(v54);
    return sub_25BB0EA20(v53);
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v61 = 0xD000000000000014;
    *(v61 + 8) = 0x800000025BCDC010;
    *(v61 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BB56504(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, __src, 0xB0uLL);
  sub_25BB45694(__dst);
  memcpy(v9, __dst, sizeof(v9));
  return sub_25BCB529C();
}

uint64_t sub_25BB565B8@<X0>(_DWORD *a1@<X8>)
{
  sub_25BB2B624(v1, &v36);
  if (v37)
  {
    if (v37 == 1)
    {
      v3 = MEMORY[0x277D82E10];
    }

    else
    {
      if (v37 == 2)
      {
        BYTE4(v30) = 0;
        OUTLINED_FUNCTION_76_1();
        sub_25BA97890(v8, v9, v10, v11, v12, v13, 514, v14, v21, 0xD00000000000004BLL, 0x800000025BCDC050, v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      }

      sub_25BA97060(&v36, v35);
      sub_25BAC27B0(v35, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (!swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        v22[0] = swift_getDynamicType();
        v22[1] = v35[4];
        v23 = xmmword_25BCC04F0;
        LOBYTE(v24) = 0;
        v25 = 10;
        LOBYTE(v26) = 0;
        BYTE4(v33) = 3;
        OUTLINED_FUNCTION_76_1();
        sub_25BADDD28(v15, v16, v17, v18, v19, v20, 504);
      }

      v4 = HIDWORD(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      *a1 = v4;
      v3 = MEMORY[0x277D82E00];
    }
  }

  else
  {
    v3 = MEMORY[0x277D82E08];
  }

  v5 = *v3;
  sub_25BCB50DC();
  OUTLINED_FUNCTION_9_3();
  return (*(v6 + 104))(a1, v5);
}

void sub_25BB56770()
{
  OUTLINED_FUNCTION_17_1();
  v71 = v1;
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_68_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_50();
  v16 = v15;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  v73 = v18;
  v20 = OUTLINED_FUNCTION_89_2(v19);
  v21 = sub_25BB3EE04(v20, v5);
  v72 = v22;
  if (v21)
  {
    v23 = *(v0 + 96);
    v24 = *(v3 + 104);
    v25 = *(v23 + 16);
    v70 = v13;
    if (v25 < 2)
    {
      v26 = 1;
    }

    else
    {
      v26 = *(v23 + 32);
    }

    v69 = v26;
    type metadata accessor for NativeTensorStorage(0);
    v74 = v24;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_10();
    v30 = v71;
    sub_25BBC0130(v31, v32, v33, v34);
    v36 = v35;
    v71 = v30;
    if (*(*(v35 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v37 = v16;
    v38 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v38, v39);

    swift_getObjectType();
    OUTLINED_FUNCTION_67_2();
    v67 = v40;
    v41(v40);
    if (!*(v23 + 16))
    {
    }

    v42 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v42, v43);

    v44 = v70;
    v45 = v37;
    v46 = *(v70 + 16);
    v68 = v45;
    v46(v10);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v11);
    (v46)(v2, v73, v11);
    OUTLINED_FUNCTION_5_1();
    v53 = __swift_storeEnumTagSinglePayload(v50, v51, v52, v11);
    MEMORY[0x28223BE20](v53);
    v54 = v69;
    *(&v67 - 2) = v3;
    *(&v67 - 1) = v54;
    MEMORY[0x28223BE20](v55);
    *(&v67 - 6) = v36;
    *(&v67 - 5) = &off_286D4DBE0;
    *(&v67 - 4) = v2;
    *(&v67 - 3) = sub_25BB58008;
    *(&v67 - 2) = v56;

    OUTLINED_FUNCTION_39_0();
    v57 = v71;
    sub_25BC675C0(v58, (&v67 - 8), v59, v60);
    if (v57)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v10);
      v61 = *(v44 + 8);
      v61(v68, v11);
      v62 = OUTLINED_FUNCTION_8_8();
      (v61)(v62);
      sub_25BB0EA20(v2);
    }

    else
    {

      sub_25BB0EA20(v10);
      sub_25BB0EA20(v2);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v64 = OUTLINED_FUNCTION_31(v63);
      *(v64 + 16) = xmmword_25BCBAE50;
      *(v64 + 32) = v36;
      *(v64 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v65 = *(v44 + 8);
      v65(v68, v11);
      v66 = OUTLINED_FUNCTION_8_8();
      (v65)(v66);
    }
  }

  else
  {
    v27 = sub_25BB0E2EC();
    v28 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v27);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0500, v28, v29);
  }

  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}

void sub_25BB56B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v5 = sub_25BCB50DC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_25BB565B8((&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v7 = *(a3 + 88);
  v10 = *(v7 + 16);
  v9 = (v7 + 16);
  v8 = v10;
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25BB00B14(0, v8, 0);
    v11 = *v9;
    v12 = v20;
    while (v11)
    {
      v13 = v11 - 1;
      if (v11 - 1 >= *v9)
      {
        goto LABEL_12;
      }

      v14 = *&v9[2 * v11];
      v20 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        v18 = v14;
        sub_25BB00B14(v15 > 1, v16 + 1, 1);
        v14 = v18;
        v12 = v20;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + 16 * v16 + 32) = v14;
      v11 = v13;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
    sub_25BCB514C();
    sub_25BCB6E0C();
    sub_25BCB6D6C();
    if (sub_25BCB513C())
    {
      sub_25BCB50CC();
    }

    else
    {
      sub_25BB0E2EC();
      swift_allocError();
      *v17 = xmmword_25BCC0500;
      *(v17 + 16) = 0x8000;
      swift_willThrow();
    }
  }
}

void sub_25BB56DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v22;
  a20 = v23;
  v133 = v21;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v27 = OUTLINED_FUNCTION_6_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v124 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_1();
  v134 = v35;
  v36 = sub_25BCB54EC();
  OUTLINED_FUNCTION_2();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_0();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_11();
  v139 = v44;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_11();
  v138 = v46;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v47);
  v49 = v124 - v48;
  v50 = sub_25BAC4018();
  v51 = sub_25BB3EE04(v50, v25);
  if (!v51)
  {
    goto LABEL_9;
  }

  v131 = v52;
  v136 = v51;
  v137 = v49;
  v132 = v20;
  v53 = sub_25BAC4018();
  v54 = sub_25BB3EE04(v53, v25);
  if (!v54)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v66 = sub_25BB0E2EC();
    v67 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v66);
    OUTLINED_FUNCTION_11_2(xmmword_25BCC0510, v67, v68);
    goto LABEL_20;
  }

  v56 = v54;
  v57 = v55;
  v130 = v38;
  ObjectType = swift_getObjectType();
  v59 = *(v57 + 8);
  v135 = ObjectType;
  v59(v140, ObjectType, v57);
  OUTLINED_FUNCTION_64_3();
  if (!v61 & v60 || (OUTLINED_FUNCTION_16_0(), v61))
  {
    v119 = sub_25BB0E2EC();
    v120 = OUTLINED_FUNCTION_14_0(&type metadata for BNNSDispatchError, v119);
    *v121 = xmmword_25BCC0510;
    OUTLINED_FUNCTION_41_5(v120, v121);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = v59;
    v62 = v135;
    v63 = sub_25BC5D23C();
    v129 = v42;
    v128 = v57 + 8;
    if (v63 < 2)
    {
      v126 = 1;
    }

    else
    {
      (*(v57 + 16))(&a10, v62, v57);
      v64 = OUTLINED_FUNCTION_81_2();
      if (!v65)
      {
        OUTLINED_FUNCTION_0_25();
        OUTLINED_FUNCTION_5_2("positiveAxis(fromAxis:from:rank:from:function:file:line:)", v122, v123, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift");
      }

      v126 = *(v64 + 32);
    }

    v69 = v130;
    v70 = *(v132 + 96);
    v71 = *(v132 + 104);
    type metadata accessor for NativeTensorStorage(0);
    v140[0] = v70;
    LOBYTE(a10) = v71;
    sub_25BCB617C();
    v72 = OUTLINED_FUNCTION_2_22();
    v73 = v133;
    sub_25BBC0130(v72, v74, v75, v76);
    v78 = v77;
    v125 = v73;
    if (*(*(v77 + 16) + 16))
    {
      sub_25BCB617C();
    }

    v79 = v138;
    v80 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v80, v81);

    swift_getObjectType();
    OUTLINED_FUNCTION_8_18();
    v124[1] = v82;
    v83();
    OUTLINED_FUNCTION_48();
    if (!v84)
    {
    }

    v85 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v85, v86);

    v87 = *(v69 + 16);
    v87(v139, v79, v36);
    (*(v57 + 16))(v140, v135, v57);
    OUTLINED_FUNCTION_48();
    v133 = v78;
    v124[0] = v56;
    if (!v88)
    {
    }

    v89 = v129;
    v90 = OUTLINED_FUNCTION_20_10();
    sub_25BBF5F44(v90, v91);

    v92 = v134;
    v87(v134, v138, v36);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v36);
    v87(v33, v89, v36);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v36);
    v87(v30, v137, v36);
    OUTLINED_FUNCTION_5_1();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v36);
    v102 = v133;

    v103 = v124[0];
    v127(v140, v135, v57);
    v104 = sub_25BBF4F40();
    MEMORY[0x28223BE20](v104);
    LODWORD(v124[-4]) = v105;
    v106 = v132;
    v124[-3] = v139;
    v124[-2] = v106;
    v124[-1] = v126;
    MEMORY[0x28223BE20](v105);
    OUTLINED_FUNCTION_14_1();
    *(v107 - 64) = v103;
    *(v107 - 56) = v57;
    *(v107 - 48) = v33;
    *(v107 - 40) = v102;
    *(v107 - 32) = &off_286D4DBE0;
    *(v107 - 24) = v30;
    *(v107 - 16) = sub_25BB58024;
    *(v107 - 8) = v108;
    OUTLINED_FUNCTION_39_0();
    v109 = v125;
    sub_25BC675C0(v110, v111, v112, &a11);
    if (v109)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_25BB0EA20(v92);
      v113 = *(v130 + 8);
      v113(v129, v36);
      v114 = OUTLINED_FUNCTION_93_3();
      (v113)(v114);
      v113(v137, v36);
      sub_25BB0EA20(v30);
      sub_25BB0EA20(v33);
    }

    else
    {

      sub_25BB0EA20(v92);
      sub_25BB0EA20(v30);
      sub_25BB0EA20(v33);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v117 = OUTLINED_FUNCTION_31(v116);
      *(v117 + 16) = xmmword_25BCBAE50;
      *(v117 + 32) = v102;
      *(v117 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v113 = *(v130 + 8);
      v113(v129, v36);
      v118 = OUTLINED_FUNCTION_93_3();
      (v113)(v118);
      v113(v137, v36);
    }

    v115 = OUTLINED_FUNCTION_91_2();
    (v113)(v115);
  }

LABEL_20:
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_16();
}