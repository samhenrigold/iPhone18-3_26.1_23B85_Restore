uint64_t PlanksNDArray.__allocating_init(empty:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlanksNDArray.init(empty:)(a1);
  return v2;
}

void *PlanksNDArray.init(empty:)(uint64_t a1)
{
  v1[2] = sub_25E829EDC();
  swift_beginAccess();
  sub_25E829F4C();
  sub_25E829EAC();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25E82A940;
  *(v3 + 32) = a1 & (a1 >> 63);
  v1[3] = v3;
  v1[4] = &unk_28707E110;
  return v1;
}

uint64_t sub_25E7F73C8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_7:
    v7 = swift_allocObject();
    PlanksNDArray.init(empty:)(v6);
    swift_beginAccess();
    *(v7 + 24) = v1;

    v10[0] = 0;
    _s6Planks0A8OrderingO14computeStrides5shape5orderSaySiGAG_ACtFZ_0(v1, v10);
    v9 = v8;

    swift_beginAccess();
    *(v7 + 32) = v9;

    return v7;
  }

  return result;
}

uint64_t PlanksNDArray.__allocating_init(array:shape:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E7F73C8(a2);
  swift_beginAccess();
  *(v3 + 16) = a1;

  return v3;
}

uint64_t PlanksNDArray.__allocating_init(array2d:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_25E829F4C();
  if (sub_25E829F1C() < 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_25E829F5C();
  v4 = sub_25E829F1C();

  if (v4 < 1)
  {
LABEL_20:
    __break(1u);
LABEL_21:

    __break(1u);
    return result;
  }

  v22[0] = a1;
  MEMORY[0x28223BE20](v5);
  KeyPath = swift_getKeyPath();
  v7 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25E7F789C(sub_25E7F9148, KeyPath, v7, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      v22[0] = *(v10 + 8 * v12 + 32);
      if (!sub_25E7F7CBC(v22, a1, v3))
      {
        goto LABEL_21;
      }

      if (v11 == ++v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25E82A950;
  *(v13 + 32) = sub_25E829F1C();
  sub_25E829F5C();
  v14 = sub_25E829F1C();

  *(v13 + 40) = v14;
  v15 = sub_25E7F73C8(v13);

  if (!sub_25E829F1C())
  {
    goto LABEL_17;
  }

  v16 = 4;
  while (1)
  {
    v17 = v16 - 4;
    v18 = sub_25E829F0C();
    sub_25E829E9C();
    if ((v18 & 1) == 0)
    {
      break;
    }

    v20 = v16 - 3;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v22[3] = v19;
    swift_beginAccess();
    swift_getWitnessTable();
    sub_25E829F2C();
    swift_endAccess();
    ++v16;
    if (v20 == sub_25E829F1C())
    {
      goto LABEL_17;
    }
  }

  v19 = sub_25E82A10C();
  v20 = v16 - 3;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  return v15;
}

uint64_t sub_25E7F7868@<X0>(uint64_t *a4@<X8>)
{
  result = sub_25E829F1C();
  *a4 = result;
  return result;
}

uint64_t sub_25E7F789C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_25E829FBC();
  if (!v19)
  {
    return sub_25E829EDC();
  }

  v41 = v19;
  v45 = sub_25E82A14C();
  v32 = sub_25E82A15C();
  sub_25E82A12C();
  result = sub_25E829FAC();
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
      v22 = sub_25E82A00C();
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
      sub_25E82A13C();
      result = sub_25E829FDC();
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

BOOL sub_25E7F7CBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_25E829F4C();
  sub_25E829F5C();
  v4 = sub_25E829F1C();

  return v3 == v4;
}

uint64_t PlanksNDArray.__allocating_init(array3d:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_25E829F4C();
  sub_25E829F4C();
  if (sub_25E829F1C() < 1)
  {
    goto LABEL_29;
  }

  sub_25E829F5C();
  v4 = sub_25E829F1C();

  if (v4 < 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_25E829F5C();
  sub_25E829F5C();

  v5 = sub_25E829F1C();

  if (v5 < 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27[0] = a1;
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath();
  v8 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25E7F789C(sub_25E7F9688, KeyPath, v8, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_28;
      }

      v27[0] = *(v11 + 8 * v13 + 32);
      if (!sub_25E7F8228(v27, a1, v3))
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_9;
      }
    }

LABEL_32:

    __break(1u);
    return result;
  }

LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25E82A960;
  *(v14 + 32) = sub_25E829F1C();
  sub_25E829F5C();
  v15 = sub_25E829F1C();

  *(v14 + 40) = v15;
  sub_25E829F5C();
  sub_25E829F5C();

  v16 = sub_25E829F1C();

  *(v14 + 48) = v16;
  v17 = sub_25E7F73C8(v14);

  if (!sub_25E829F1C())
  {
    goto LABEL_26;
  }

  v18 = 0;
  while (1)
  {
    v19 = sub_25E829F0C();
    sub_25E829E9C();
    if ((v19 & 1) == 0)
    {
      break;
    }

    v20 = __OFADD__(v18++, 1);
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_14:
    if (sub_25E829F1C())
    {
      v21 = 4;
      do
      {
        v22 = v21 - 4;
        v23 = sub_25E829F0C();
        sub_25E829E9C();
        if (v23)
        {

          v25 = v21 - 3;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = sub_25E82A10C();
          v25 = v21 - 3;
          if (__OFADD__(v22, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v27[5] = v24;
        swift_beginAccess();
        swift_getWitnessTable();
        sub_25E829F2C();
        swift_endAccess();
        ++v21;
      }

      while (v25 != sub_25E829F1C());
    }

    if (v18 == sub_25E829F1C())
    {
      goto LABEL_26;
    }
  }

  sub_25E82A10C();
  v20 = __OFADD__(v18++, 1);
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_25:
  __break(1u);
LABEL_26:

  return v17;
}

uint64_t sub_25E7F81E4@<X0>(uint64_t *a4@<X8>)
{
  sub_25E829F4C();
  result = sub_25E829F1C();
  *a4 = result;
  return result;
}

BOOL sub_25E7F8228(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_25E829F4C();
  sub_25E829F4C();
  sub_25E829F5C();
  v4 = sub_25E829F1C();

  return v3 == v4;
}

uint64_t PlanksNDArray.isEmpty.getter()
{
  swift_beginAccess();
  sub_25E829F4C();
  swift_getWitnessTable();
  return sub_25E829FEC() & 1;
}

uint64_t PlanksNDArray.nbytes.getter()
{
  swift_beginAccess();

  sub_25E829EBC();

  return v1;
}

uint64_t sub_25E7F8428@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2 - result;
  if (!result)
  {
    v3 = 0;
  }

  *a3 = v3;
  return result;
}

uint64_t PlanksNDArray.subscript.getter(uint64_t x0_0)
{
  sub_25E7F8554(x0_0);
  swift_beginAccess();
  sub_25E829F5C();
  return swift_endAccess();
}

uint64_t sub_25E7F84F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  return sub_25E7F91C4(a1, v4);
}

uint64_t PlanksNDArray.subscript.setter(uint64_t a1, uint64_t a2)
{
  return sub_25E7F87C0(a1, a2, sub_25E7F91C4);
}

{
  return sub_25E7F87C0(a1, a2, sub_25E7F92D4);
}

uint64_t sub_25E7F8554(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  if (v3 == *(*(v1 + 24) + 16))
  {
    swift_beginAccess();
    result = 0;
    v5 = *(v1 + 32);
    v6 = *(v5 + 16);
    v7 = (v5 + 32);
    v8 = (a1 + 32);
    while (v6 && v3)
    {
      v9 = *v7 * *v8;
      if ((*v7 * *v8) >> 64 != v9 >> 63)
      {
        __break(1u);
        goto LABEL_11;
      }

      ++v8;
      ++v7;
      --v3;
      --v6;
      v10 = __OFADD__(result, v9);
      result += v9;
      if (v10)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t (*PlanksNDArray.subscript.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  PlanksNDArray.subscript.getter(a2);
  return sub_25E7F8734;
}

{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  PlanksNDArray.subscript.getter(a2);
  return sub_25E7F96AC;
}

uint64_t sub_25E7F8764(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  return sub_25E7F92D4(a1, v4);
}

uint64_t sub_25E7F87C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *v3;
  a3(a1, a2);
  v6 = *(*(*(v5 + 80) - 8) + 8);

  return v6(a1);
}

void sub_25E7F895C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    sub_25E7F91C4(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    sub_25E7F91C4(v4, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *PlanksNDArray.deinit()
{

  return v0;
}

uint64_t PlanksNDArray.__deallocating_deinit()
{
  PlanksNDArray.deinit();

  return swift_deallocClassInstance();
}

Planks::PlanksOrdering_optional __swiftcall PlanksOrdering.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E82A20C();

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

uint64_t PlanksOrdering.rawValue.getter()
{
  if (*v0)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x726F6A614D776F72;
  }
}

uint64_t sub_25E7F8B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x614D6E6D756C6F63;
  }

  else
  {
    v3 = 0x726F6A614D776F72;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000726F6ALL;
  }

  if (*a2)
  {
    v5 = 0x614D6E6D756C6F63;
  }

  else
  {
    v5 = 0x726F6A614D776F72;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726F6ALL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E82A32C();
  }

  return v8 & 1;
}

uint64_t sub_25E7F8C20()
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E7F8CAC(uint64_t a1)
{
  sub_25E829DDC();
}

uint64_t sub_25E7F8D24(uint64_t a1)
{
  sub_25E82A39C();
  sub_25E829DDC();

  return sub_25E82A3BC();
}

uint64_t sub_25E7F8DAC@<X0>(char *a2@<X8>)
{
  v3 = sub_25E82A20C();

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

void sub_25E7F8E0C(uint64_t *a1@<X8>)
{
  v2 = 0x726F6A614D776F72;
  if (*v1)
  {
    v2 = 0x614D6E6D756C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000726F6ALL;
  }

  *a1 = v2;
  a1[1] = v3;
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

uint64_t sub_25E7F8F64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

void _s6Planks0A8OrderingO14computeStrides5shape5orderSaySiGAG_ACtFZ_0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = *a2;
    if (v2)
    {
      v6 = sub_25E829EEC();
      *(v6 + 16) = v2;
      v7 = v6 + 32;
      memset_pattern16((v6 + 32), &unk_25E82A970, 8 * v2);
      if (v4)
      {
        v8 = 1;
        while (v8 != v2)
        {
          v9 = 0;
          v10 = v8 + 1;
          v11 = 1;
          do
          {
            v12 = *(a1 + 32 + 8 * v9);
            v13 = v11 * v12;
            if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
            {
              __break(1u);
              goto LABEL_23;
            }

            v11 *= v12;
            ++v9;
          }

          while (v8 != v9);
          if (v8 >= v2)
          {
            goto LABEL_27;
          }

          *(v7 + 8 * v8++) = v13;
          if (v10 == v2)
          {
            return;
          }
        }

LABEL_24:
        __break(1u);
      }

      else
      {
        v14 = 0;
        v15 = (a1 + 40);
        v16 = v2 - 1;
        while (v14 != v3)
        {
          if (v14 == v2)
          {
            goto LABEL_26;
          }

          v17 = v14 + 1;
          v18 = v15;
          v19 = v16;
          v20 = 1;
          do
          {
            v21 = *v18++;
            v22 = v20 * v21;
            if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v20 = v22;
            --v19;
          }

          while (v19);
          if (v14 >= v2)
          {
            goto LABEL_28;
          }

          *(v7 + 8 * v14) = v22;
          --v16;
          ++v15;
          ++v14;
          if (v17 == v3)
          {
            return;
          }
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v4)
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_25E7F916C(uint64_t *a1)
{

  swift_getAtKeyPath();
}

uint64_t sub_25E7F91C4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_25E7F8554(a2);

  swift_beginAccess();
  v6 = *(v4 + 80);
  sub_25E829F4C();
  sub_25E829ECC();
  v7 = v2[2];
  sub_25E7F8F64(v5, v7, v6);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v9 = v7;
  }

  (*(*(v6 - 8) + 24))(v9 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, v6);
  return swift_endAccess();
}

unint64_t sub_25E7F92DC()
{
  result = qword_27FD072B0;
  if (!qword_27FD072B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD072B0);
  }

  return result;
}

unint64_t sub_25E7F9334()
{
  result = qword_27FD072B8;
  if (!qword_27FD072B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD072C0, &qword_25E82AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD072B8);
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

uint64_t getEnumTagSinglePayload for PlanksOrdering(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlanksOrdering(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E7F9604()
{
  result = qword_27FD07348;
  if (!qword_27FD07348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07348);
  }

  return result;
}

uint64_t sub_25E7F96B4()
{
  v0 = sub_25E829CDC();
  __swift_allocate_value_buffer(v0, qword_27FD0A4B0);
  __swift_project_value_buffer(v0, qword_27FD0A4B0);
  return sub_25E829CCC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_25E7F97F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v6 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v8 = *v3;
    if (v8 > 5)
    {
      if (*v3 > 8u)
      {
        if (v8 == 9)
        {
          v14 = 0xE700000000000000;
          v13 = 0x323374616F6C66;
        }

        else if (v8 == 10)
        {
          v14 = 0xE700000000000000;
          v13 = 0x343674616F6C66;
        }

        else
        {
          v14 = 0xE400000000000000;
          v13 = 1819242338;
        }
      }

      else if (v8 == 6)
      {
        v14 = 0xE600000000000000;
        v13 = 0x3233746E6975;
      }

      else if (v8 == 7)
      {
        v14 = 0xE600000000000000;
        v13 = 0x3436746E6975;
      }

      else
      {
        v14 = 0xE700000000000000;
        v13 = 0x363174616F6C66;
      }
    }

    else
    {
      v9 = 0x3631746E6975;
      if (v8 == 4)
      {
        v9 = 0x38746E6975;
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v8 == 3)
      {
        v9 = 0x3436746E69;
        v10 = 0xE500000000000000;
      }

      v11 = 0x3631746E69;
      if (v8 != 1)
      {
        v11 = 0x3233746E69;
      }

      v12 = 0xE500000000000000;
      if (!*v3)
      {
        v11 = 947154537;
        v12 = 0xE400000000000000;
      }

      if (*v3 <= 2u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }

      if (*v3 <= 2u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }
    }

    if (v4 > 5)
    {
      v15 = 0x343674616F6C66;
      if (v4 != 10)
      {
        v15 = 1819242338;
      }

      v16 = 0xE400000000000000;
      if (v4 == 10)
      {
        v16 = 0xE700000000000000;
      }

      if (v4 == 9)
      {
        v15 = 0x323374616F6C66;
        v16 = 0xE700000000000000;
      }

      v17 = 0x363174616F6C66;
      if (v4 == 7)
      {
        v17 = 0x3436746E6975;
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (v4 == 6)
      {
        v17 = 0x3233746E6975;
        v18 = 0xE600000000000000;
      }

      v19 = v4 <= 8;
    }

    else
    {
      v15 = 0x3631746E6975;
      if (v4 == 4)
      {
        v15 = 0x38746E6975;
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE600000000000000;
      }

      if (v4 == 3)
      {
        v15 = 0x3436746E69;
        v16 = 0xE500000000000000;
      }

      v17 = 0x3631746E69;
      if (v4 != 1)
      {
        v17 = 0x3233746E69;
      }

      v18 = 0xE500000000000000;
      if (!v4)
      {
        v17 = 947154537;
        v18 = 0xE400000000000000;
      }

      v19 = v4 <= 2;
    }

    if (v19)
    {
      v20 = v17;
    }

    else
    {
      v20 = v15;
    }

    if (v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = v16;
    }

    if (v13 == v20 && v14 == v21)
    {

      return v6 != 0;
    }

    v5 = sub_25E82A32C();

    ++v3;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t FieldType.size.getter()
{
  if (*v0 - 1 > 9)
  {
    return 1;
  }

  else
  {
    return qword_25E82ACA8[(*v0 - 1)];
  }
}

uint64_t FieldType.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x323374616F6C66;
    v8 = 0x343674616F6C66;
    if (v1 != 10)
    {
      v8 = 1819242338;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x3233746E6975;
    v10 = 0x3436746E6975;
    if (v1 != 7)
    {
      v10 = 0x363174616F6C66;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 947154537;
    v3 = 0x3436746E69;
    v4 = 0x38746E6975;
    if (v1 != 4)
    {
      v4 = 0x3631746E6975;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x3631746E69;
    if (v1 != 1)
    {
      v5 = 0x3233746E69;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t PlanksReader.filePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  v4 = sub_25E829D6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlanksReader.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata);
  v2 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
  v4 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v5 = *(v1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 24);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

char *PlanksReader.init(filePath:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25E829D6C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v123 - v11;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___elementByName] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___chunksByElement] = 0;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___groupsByElement] = 0;

  MEMORY[0x25F8C0B50](a1, a2);
  v13 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  (*(v7 + 32))(&v3[OBJC_IVAR____TtC6Planks12PlanksReader_filePath], v12, v6);
  v128 = v7;
  v129 = v13;
  v14 = *(v7 + 16);
  v14(v10, &v3[v13], v6);
  v130 = 0;
  v131 = 16842752;
  sub_25E829D5C();
  v127 = *(v7 + 8);
  v127(v10, v6);
  v15 = OBJC_IVAR____TtC6Planks12PlanksReader_fd;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fd] = v133;
  v16 = sub_25E829D1C();
  if (v17)
  {
    LODWORD(v133) = v16;
    v18 = v16;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    v19 = swift_allocError();
    *v20 = v18;
    v27 = v127;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v28 = sub_25E829CDC();
    __swift_project_value_buffer(v28, qword_27FD0A4B0);

    MEMORY[0x25F8C14D0](v19);
    v29 = sub_25E829CBC();
    v30 = sub_25E82A02C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v127 = v3;
      v33 = v6;
      v34 = v27;
      v35 = v32;
      v36 = swift_slowAlloc();
      v133 = v36;
      *v31 = 138412546;
      MEMORY[0x25F8C14D0](v19);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v37;
      *v35 = v37;
      *(v31 + 12) = 2080;
      v38 = sub_25E7FFAF0(a1, a2, &v133);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_25E7F6000, v29, v30, "File error: %@ - %s", v31, 0x16u);
      sub_25E802774(v35, &qword_27FD07370, &qword_25E82AD20);
      v39 = v35;
      v27 = v34;
      v6 = v33;
      v3 = v127;
      MEMORY[0x25F8C1620](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x25F8C1620](v36, -1, -1);
      MEMORY[0x25F8C1620](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v126 = v14;
  v21 = OBJC_IVAR____TtC6Planks12PlanksReader_fileSize;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fileSize] = v16;
  if (v16 < 12)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v22 = sub_25E829CDC();
    __swift_project_value_buffer(v22, qword_27FD0A4B0);

    v23 = sub_25E829CBC();
    v24 = sub_25E82A02C();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *&v3[v21];

    _os_log_impl(&dword_25E7F6000, v23, v24, "Invalid fileSize: %lld", v25, 0xCu);
    v26 = v25;
LABEL_8:
    MEMORY[0x25F8C1620](v26, -1, -1);

LABEL_16:
    v27 = v127;
LABEL_17:
    v27(&v129[v3], v6);

    type metadata accessor for PlanksReader(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v41 = sub_25E801AA4(*&v3[v15], 1);
  v42 = sub_25E7FBFD0(v41, &unk_28707E2C8);
  if ((v42 & 1) == 0)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v46 = sub_25E829CDC();
    __swift_project_value_buffer(v46, qword_27FD0A4B0);

    v23 = sub_25E829CBC();
    v47 = sub_25E82A02C();

    if (os_log_type_enabled(v23, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v133 = v49;
      *v48 = 136315138;
      v50 = MEMORY[0x25F8C0C60](v41, MEMORY[0x277D84B78]);
      v52 = v51;

      v53 = sub_25E7FFAF0(v50, v52, &v133);

      *(v48 + 4) = v53;
      v54 = "Invalid magicValue begin: %s";
LABEL_26:
      _os_log_impl(&dword_25E7F6000, v23, v47, v54, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x25F8C1620](v49, -1, -1);
      v26 = v48;
      goto LABEL_8;
    }

LABEL_31:

    goto LABEL_16;
  }

  v43 = sub_25E801AA4(*&v3[v15], 0);

  if ((sub_25E7FBFD0(v43, &unk_28707E2C8) & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v55 = sub_25E829CDC();
    __swift_project_value_buffer(v55, qword_27FD0A4B0);

    v23 = sub_25E829CBC();
    v47 = sub_25E82A02C();

    if (os_log_type_enabled(v23, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v133 = v49;
      *v48 = 136315138;
      v56 = MEMORY[0x25F8C0C60](v43, MEMORY[0x277D84B78]);
      v58 = v57;

      v59 = sub_25E7FFAF0(v56, v58, &v133);

      *(v48 + 4) = v59;
      v54 = "Invalid magicValue end: %s";
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v44 = sub_25E801C34(*&v3[v15]);
  v60 = v126;
  if (v45)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v61 = sub_25E829CDC();
    __swift_project_value_buffer(v61, qword_27FD0A4B0);

    v62 = sub_25E829CBC();
    v63 = sub_25E82A02C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v60;
      v65 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v133 = v126;
      *v65 = 136315138;
      v64(v12, &v129[v3], v6);
      sub_25E801E34();
      v66 = sub_25E82A2EC();
      v68 = v67;
      v27 = v127;
      v127(v12, v6);
      v69 = sub_25E7FFAF0(v66, v68, &v133);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_25E7F6000, v62, v63, "Failed at reading metadata size for %s", v65, 0xCu);
      v70 = v126;
LABEL_37:
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x25F8C1620](v70, -1, -1);
      MEMORY[0x25F8C1620](v65, -1, -1);

      goto LABEL_17;
    }

    goto LABEL_43;
  }

  v71 = v44;
  type metadata accessor for PlanksReader(0);
  v125 = v71;
  static PlanksReader.readMetadata(_:metadataSize:)(v71, &v133);
  v79 = v134;
  if (!v134)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v72 = sub_25E829CDC();
    __swift_project_value_buffer(v72, qword_27FD0A4B0);

    v62 = sub_25E829CBC();
    v73 = sub_25E82A02C();

    if (os_log_type_enabled(v62, v73))
    {
      v74 = v60;
      v65 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v133 = v125;
      *v65 = 136315138;
      v74(v12, &v129[v3], v6);
      sub_25E801E34();
      v75 = sub_25E82A2EC();
      v77 = v76;
      v27 = v127;
      v127(v12, v6);
      v78 = sub_25E7FFAF0(v75, v77, &v133);

      *(v65 + 4) = v78;
      _os_log_impl(&dword_25E7F6000, v62, v73, "Failed at reading metadata for %s", v65, 0xCu);
      v70 = v125;
      goto LABEL_37;
    }

LABEL_43:

    goto LABEL_16;
  }

  v80 = v135;
  v81 = v136;
  v82 = &v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadata];
  v129 = v133;
  *v82 = v133;
  *(v82 + 1) = v79;
  *(v82 + 2) = v80;
  *(v82 + 3) = v81;
  *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadataSize] = v125;
  v83 = qword_27FD072A0;
  v123[0] = v79;

  v124 = v80;

  v128 = v81;

  if (v83 != -1)
  {
    swift_once();
  }

  v84 = sub_25E829CDC();
  v85 = __swift_project_value_buffer(v84, qword_27FD0A4B0);

  v123[1] = v85;
  v86 = sub_25E829CBC();
  v87 = sub_25E82A01C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v133 = v89;
    *v88 = 136315138;
    v126(v12, &v3[OBJC_IVAR____TtC6Planks12PlanksReader_filePath], v6);
    sub_25E801E34();
    v90 = sub_25E82A2EC();
    v92 = v91;
    v127(v12, v6);
    v93 = sub_25E7FFAF0(v90, v92, &v133);

    *(v88 + 4) = v93;
    _os_log_impl(&dword_25E7F6000, v86, v87, "PlanksReader file path: %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x25F8C1620](v89, -1, -1);
    MEMORY[0x25F8C1620](v88, -1, -1);
  }

  v94 = sub_25E829CBC();
  v95 = sub_25E82A01C();
  v96 = os_log_type_enabled(v94, v95);
  v97 = v124;
  v98 = v128;
  v99 = v129;
  if (v96)
  {
    v100 = swift_slowAlloc();
    *v100 = 134217984;
    *(v100 + 4) = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_fileSize];

    _os_log_impl(&dword_25E7F6000, v94, v95, "PlanksReader file size: %lld", v100, 0xCu);
    MEMORY[0x25F8C1620](v100, -1, -1);
  }

  else
  {
  }

  v101 = sub_25E829CBC();
  v102 = sub_25E82A01C();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 134217984;
    *(v103 + 4) = v125;
    _os_log_impl(&dword_25E7F6000, v101, v102, "PlanksReader file metadata size: %ld", v103, 0xCu);
    MEMORY[0x25F8C1620](v103, -1, -1);
  }

  v104 = v123[0];

  v105 = sub_25E829CBC();
  v106 = sub_25E82A01C();
  sub_25E801E8C(v99, v104, v97, v98);
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v107 = 136315138;
    v132 = v108;
    v133 = v129;
    v134 = v104;
    v135 = v97;
    v136 = v98;
    v109 = sub_25E7FC4FC();
    v111 = sub_25E7FFAF0(v109, v110, &v132);

    *(v107 + 4) = v111;
    v98 = v128;
    _os_log_impl(&dword_25E7F6000, v105, v106, "PlanksReader file metadata summary: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x25F8C1620](v108, -1, -1);
    MEMORY[0x25F8C1620](v107, -1, -1);
  }

  v112 = sub_25E829CBC();
  v113 = sub_25E82A01C();
  v114 = v129;
  sub_25E801E8C(v129, v104, v97, v98);
  if (os_log_type_enabled(v112, v113))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v133 = v116;
    *v115 = 136315138;
    v117 = sub_25E7FEA6C(v114, v104, v97, v98);
    v118 = v98;
    v119 = v117;
    v121 = v120;
    sub_25E801E8C(v114, v104, v97, v118);
    v122 = sub_25E7FFAF0(v119, v121, &v133);

    *(v115 + 4) = v122;
    _os_log_impl(&dword_25E7F6000, v112, v113, "PlanksReader file metadata: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x25F8C1620](v116, -1, -1);
    MEMORY[0x25F8C1620](v115, -1, -1);
  }

  else
  {

    sub_25E801E8C(v114, v104, v97, v98);
  }

  return v3;
}

uint64_t sub_25E7FAFF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v31 = v2;
  v32 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v23[0] = *v5;
    v23[1] = v8;
    v24[0] = v5[2];
    v9 = v24[0];
    *(v24 + 10) = *(v5 + 42);
    v20 = v23[0];
    v21 = v8;
    v22[0] = v9;
    *(v22 + 10) = *(v24 + 10);
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    *(v26 + 10) = *(v6 + 42);
    v13 = *(v26 + 10);
    v25[1] = v11;
    v26[0] = v12;
    v25[0] = v10;
    v17 = v10;
    v18 = v11;
    v19[0] = v12;
    *(v19 + 10) = v13;
    sub_25E8026B4(v23, v16);
    sub_25E8026B4(v25, v16);
    v14 = _s6Planks11ColumnChunkV2eeoiySbAC_ACtFZ_0(&v20, &v17);
    v27[0] = v17;
    v27[1] = v18;
    v28[0] = v19[0];
    *(v28 + 10) = *(v19 + 10);
    sub_25E80281C(v27);
    v29[0] = v20;
    v29[1] = v21;
    v30[0] = v22[0];
    *(v30 + 10) = *(v22 + 10);
    sub_25E80281C(v29);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v5 += 4;
    v6 += 4;
  }

  return 1;
}

uint64_t sub_25E7FB138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 8);
      v7 = *v4;
      v8 = *(v3 - 8);
      v9 = *v3;
      v10 = *(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2);
      if (!v10 && (sub_25E82A32C() & 1) == 0)
      {
        return 0;
      }

      if (v6 > 5)
      {
        if (v6 > 8)
        {
          if (v6 == 9)
          {
            v11 = 0xE700000000000000;
            v12 = 0x323374616F6C66;
            if (v8 <= 5)
            {
              goto LABEL_48;
            }
          }

          else if (v6 == 10)
          {
            v11 = 0xE700000000000000;
            v12 = 0x343674616F6C66;
            if (v8 <= 5)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v11 = 0xE400000000000000;
            v12 = 1819242338;
            if (v8 <= 5)
            {
LABEL_48:
              if (v8 > 2)
              {
                if (v8 == 3)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3436746E69)
                  {
                    goto LABEL_78;
                  }
                }

                else if (v8 == 4)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x38746E6975)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  v5 = 0xE600000000000000;
                  if (v12 != 0x3631746E6975)
                  {
                    goto LABEL_78;
                  }
                }
              }

              else if (v8)
              {
                if (v8 == 1)
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3631746E69)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  v5 = 0xE500000000000000;
                  if (v12 != 0x3233746E69)
                  {
                    goto LABEL_78;
                  }
                }
              }

              else
              {
                v5 = 0xE400000000000000;
                if (v12 != 947154537)
                {
                  goto LABEL_78;
                }
              }

              goto LABEL_6;
            }
          }
        }

        else if (v6 == 6)
        {
          v11 = 0xE600000000000000;
          v12 = 0x3233746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xE600000000000000;
          v12 = 0x3436746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE700000000000000;
          v12 = 0x363174616F6C66;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v6 > 2)
      {
        if (v6 == 3)
        {
          v11 = 0xE500000000000000;
          v12 = 0x3436746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else if (v6 == 4)
        {
          v11 = 0xE500000000000000;
          v12 = 0x38746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE600000000000000;
          v12 = 0x3631746E6975;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          v11 = 0xE500000000000000;
          v12 = 0x3631746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          v12 = 0x3233746E69;
          if (v8 <= 5)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        v12 = 947154537;
        if (v8 <= 5)
        {
          goto LABEL_48;
        }
      }

      if (v8 > 8)
      {
        if (v8 == 9)
        {
          v5 = 0xE700000000000000;
          if (v12 != 0x323374616F6C66)
          {
            goto LABEL_78;
          }
        }

        else if (v8 == 10)
        {
          v5 = 0xE700000000000000;
          if (v12 != 0x343674616F6C66)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v5 = 0xE400000000000000;
          if (v12 != 1819242338)
          {
            goto LABEL_78;
          }
        }
      }

      else if (v8 == 6)
      {
        v5 = 0xE600000000000000;
        if (v12 != 0x3233746E6975)
        {
          goto LABEL_78;
        }
      }

      else if (v8 == 7)
      {
        v5 = 0xE600000000000000;
        if (v12 != 0x3436746E6975)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v5 = 0xE700000000000000;
        if (v12 != 0x363174616F6C66)
        {
          goto LABEL_78;
        }
      }

LABEL_6:
      if (v11 == v5)
      {

        if (v7 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_78:
      v13 = sub_25E82A32C();

      result = 0;
      if ((v13 & 1) == 0 || v7 != v9)
      {
        return result;
      }

LABEL_8:
      v4 += 4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25E7FB578(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_187;
    }

    v6 = v4 + 40 * v3;
    if (*v6)
    {
      if (*v6 == 1)
      {
        v7 = 0xE400000000000000;
        v8 = 1635017060;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x7865646E69;
      }
    }

    else
    {
      v7 = 0xE600000000000000;
      v8 = 0x656C706D6973;
    }

    v9 = (v5 + 40 * v3);
    v10 = *v9;
    if (*v9)
    {
      if (v10 == 1)
      {
        v11 = 1635017060;
      }

      else
      {
        v11 = 0x7865646E69;
      }

      if (v10 == 1)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      v11 = 0x656C706D6973;
    }

    v13 = *(v6 + 8);
    v54 = *(v6 + 24);
    v55 = *(v6 + 16);
    v53 = *(v6 + 32);
    v14 = *(v9 + 1);
    v51 = *(v9 + 3);
    v52 = *(v9 + 2);
    v50 = *(v9 + 4);
    if (v8 == v11 && v7 == v12)
    {
    }

    else
    {
      v15 = sub_25E82A32C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_182;
      }
    }

    v16 = *(v13 + 16);
    if (v16 != *(v14 + 16))
    {
LABEL_182:

      return 0;
    }

    if (v16 && v13 != v14)
    {
      break;
    }

LABEL_164:
    ++v3;
    result = v55 == v52 && v54 == v51 && v53 == v50;
    if (result != 1 || v3 == v2)
    {
      return result;
    }
  }

  v47 = v5;
  v48 = v4;
  v49 = v2;
  if (*(v13 + 16))
  {
    v17 = 0;
    v56 = v16 - 1;
    v18 = 32;
    while (1)
    {
      v19 = *(v13 + v18);
      v20 = *(v13 + v18 + 16);
      v21 = *(v13 + v18 + 32);
      *&v60[10] = *(v13 + v18 + 42);
      v59 = v20;
      *v60 = v21;
      v58 = v19;
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_186;
      }

      v23 = *(v14 + v18 + 16);
      v22 = *(v14 + v18 + 32);
      v24 = *(v14 + v18);
      *&v63[10] = *(v14 + v18 + 42);
      v62 = v23;
      *v63 = v22;
      v61 = v24;
      if (v58 != v24 && (sub_25E82A32C() & 1) == 0 || v59 != v62 || v60[0] != v63[0])
      {
        goto LABEL_182;
      }

      if (v60[1] == 2)
      {
        if (v63[1] != 2)
        {
          goto LABEL_182;
        }

        sub_25E8026B4(&v58, v57);
        sub_25E8026B4(&v61, v57);
      }

      else
      {
        if (v63[1] == 2)
        {
          goto LABEL_182;
        }

        v25 = (v60[1] & 1) != 0 ? 0x657A69746E617571 : 0x6572706D6F636E75;
        v26 = (v60[1] & 1) != 0 ? 0xE900000000000064 : 0xEC00000064657373;
        v27 = (v63[1] & 1) != 0 ? 0x657A69746E617571 : 0x6572706D6F636E75;
        v28 = (v63[1] & 1) != 0 ? 0xE900000000000064 : 0xEC00000064657373;
        if (v25 == v27 && v26 == v28)
        {
          sub_25E8026B4(&v58, v57);
          sub_25E8026B4(&v61, v57);
        }

        else
        {
          v29 = sub_25E82A32C();
          sub_25E8026B4(&v58, v57);
          sub_25E8026B4(&v61, v57);

          if ((v29 & 1) == 0)
          {
            goto LABEL_181;
          }
        }
      }

      v30 = *&v60[24];
      v31 = *&v63[24];
      if (v60[24] == 12)
      {
        break;
      }

      if (v63[24] == 12 || *&v60[8] != *&v63[8] || *&v60[16] != *&v63[16])
      {
LABEL_181:
        sub_25E80281C(&v61);
        sub_25E80281C(&v58);
        goto LABEL_182;
      }

      if (v60[24] > 5u)
      {
        if (v60[24] > 8u)
        {
          if (v60[24] == 9)
          {
            v32 = 0xE700000000000000;
            v33 = 0x323374616F6C66;
          }

          else if (v60[24] == 10)
          {
            v32 = 0xE700000000000000;
            v33 = 0x343674616F6C66;
          }

          else
          {
            v32 = 0xE400000000000000;
            v33 = 1819242338;
          }
        }

        else if (v60[24] == 6)
        {
          v32 = 0xE600000000000000;
          v33 = 0x3233746E6975;
        }

        else if (v60[24] == 7)
        {
          v32 = 0xE600000000000000;
          v33 = 0x3436746E6975;
        }

        else
        {
          v32 = 0xE700000000000000;
          v33 = 0x363174616F6C66;
        }
      }

      else if (v60[24] > 2u)
      {
        if (v60[24] == 3)
        {
          v32 = 0xE500000000000000;
          v33 = 0x3436746E69;
        }

        else if (v60[24] == 4)
        {
          v32 = 0xE500000000000000;
          v33 = 0x38746E6975;
        }

        else
        {
          v32 = 0xE600000000000000;
          v33 = 0x3631746E6975;
        }
      }

      else if (v60[24])
      {
        v32 = 0xE500000000000000;
        if (v60[24] == 1)
        {
          v33 = 0x3631746E69;
        }

        else
        {
          v33 = 0x3233746E69;
        }
      }

      else
      {
        v32 = 0xE400000000000000;
        v33 = 947154537;
      }

      if (v63[24] > 5u)
      {
        if (v63[24] > 8u)
        {
          if (v63[24] == 9)
          {
            v34 = 0xE700000000000000;
            v35 = 0x323374616F6C66;
          }

          else if (v63[24] == 10)
          {
            v34 = 0xE700000000000000;
            v35 = 0x343674616F6C66;
          }

          else
          {
            v34 = 0xE400000000000000;
            v35 = 1819242338;
          }
        }

        else if (v63[24] == 6)
        {
          v34 = 0xE600000000000000;
          v35 = 0x3233746E6975;
        }

        else if (v63[24] == 7)
        {
          v34 = 0xE600000000000000;
          v35 = 0x3436746E6975;
        }

        else
        {
          v34 = 0xE700000000000000;
          v35 = 0x363174616F6C66;
        }
      }

      else if (v63[24] > 2u)
      {
        if (v63[24] == 3)
        {
          v34 = 0xE500000000000000;
          v35 = 0x3436746E69;
        }

        else if (v63[24] == 4)
        {
          v34 = 0xE500000000000000;
          v35 = 0x38746E6975;
        }

        else
        {
          v34 = 0xE600000000000000;
          v35 = 0x3631746E6975;
        }
      }

      else if (v63[24])
      {
        v34 = 0xE500000000000000;
        if (v63[24] == 1)
        {
          v35 = 0x3631746E69;
        }

        else
        {
          v35 = 0x3233746E69;
        }
      }

      else
      {
        v34 = 0xE400000000000000;
        v35 = 947154537;
      }

      if (v33 == v35 && v32 == v34)
      {
      }

      else
      {
        v36 = sub_25E82A32C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_181;
        }
      }

      v37 = v30 >> 8;
      if (v30 >> 8 > 5)
      {
        if (v30 >> 8 > 8)
        {
          if (v37 == 9)
          {
            v38 = 0xE700000000000000;
            v39 = 0x323374616F6C66;
          }

          else if (v37 == 10)
          {
            v38 = 0xE700000000000000;
            v39 = 0x343674616F6C66;
          }

          else
          {
            v38 = 0xE400000000000000;
            v39 = 1819242338;
          }
        }

        else if (v37 == 6)
        {
          v38 = 0xE600000000000000;
          v39 = 0x3233746E6975;
        }

        else if (v37 == 7)
        {
          v38 = 0xE600000000000000;
          v39 = 0x3436746E6975;
        }

        else
        {
          v38 = 0xE700000000000000;
          v39 = 0x363174616F6C66;
        }
      }

      else if (v30 >> 8 > 2)
      {
        if (v37 == 3)
        {
          v38 = 0xE500000000000000;
          v39 = 0x3436746E69;
        }

        else if (v37 == 4)
        {
          v38 = 0xE500000000000000;
          v39 = 0x38746E6975;
        }

        else
        {
          v38 = 0xE600000000000000;
          v39 = 0x3631746E6975;
        }
      }

      else if (v37)
      {
        v38 = 0xE500000000000000;
        if (v37 == 1)
        {
          v39 = 0x3631746E69;
        }

        else
        {
          v39 = 0x3233746E69;
        }
      }

      else
      {
        v38 = 0xE400000000000000;
        v39 = 947154537;
      }

      v40 = v31 >> 8;
      if (v31 >> 8 > 5)
      {
        if (v31 >> 8 > 8)
        {
          if (v40 == 9)
          {
            v41 = 0xE700000000000000;
            v42 = 0x323374616F6C66;
          }

          else if (v40 == 10)
          {
            v41 = 0xE700000000000000;
            v42 = 0x343674616F6C66;
          }

          else
          {
            v41 = 0xE400000000000000;
            v42 = 1819242338;
          }
        }

        else if (v40 == 6)
        {
          v41 = 0xE600000000000000;
          v42 = 0x3233746E6975;
        }

        else if (v40 == 7)
        {
          v41 = 0xE600000000000000;
          v42 = 0x3436746E6975;
        }

        else
        {
          v41 = 0xE700000000000000;
          v42 = 0x363174616F6C66;
        }
      }

      else if (v31 >> 8 > 2)
      {
        if (v40 == 3)
        {
          v41 = 0xE500000000000000;
          v42 = 0x3436746E69;
        }

        else if (v40 == 4)
        {
          v41 = 0xE500000000000000;
          v42 = 0x38746E6975;
        }

        else
        {
          v41 = 0xE600000000000000;
          v42 = 0x3631746E6975;
        }
      }

      else if (v40)
      {
        v41 = 0xE500000000000000;
        if (v40 == 1)
        {
          v42 = 0x3631746E69;
        }

        else
        {
          v42 = 0x3233746E69;
        }
      }

      else
      {
        v41 = 0xE400000000000000;
        v42 = 947154537;
      }

      if (v39 == v42 && v38 == v41)
      {

LABEL_158:
        sub_25E80281C(&v61);
        result = sub_25E80281C(&v58);
        goto LABEL_160;
      }

      v43 = sub_25E82A32C();

      sub_25E80281C(&v61);
      result = sub_25E80281C(&v58);
      if ((v43 & 1) == 0)
      {
        goto LABEL_182;
      }

LABEL_160:
      if (v56 == v17)
      {

        v4 = v48;
        v2 = v49;
        v5 = v47;
        goto LABEL_164;
      }

      v18 += 64;
      if (++v17 >= *(v13 + 16))
      {
        goto LABEL_185;
      }
    }

    if (v63[24] != 12)
    {
      goto LABEL_181;
    }

    goto LABEL_158;
  }

LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
  return result;
}

uint64_t sub_25E7FBFD0(uint64_t result, uint64_t a2)
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

uint64_t static PlanksReader.readMetadataSize(_:)(uint64_t a1)
{
  result = sub_25E801C34(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void static PlanksReader.readMetadata(_:metadataSize:)(unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E82993C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E829D1C();
  if (v11)
  {
    LODWORD(v36) = v10;
    v12 = v10;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v13 = v12;
    return;
  }

  v14 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_8;
  }

  if (v14 > 0)
  {
    v15 = swift_slowAlloc();
    v16 = sub_25E829CFC();
    if (v17)
    {
      LODWORD(v36) = v16;
      v18 = v16;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v19 = v18;
    }

    else
    {
      sub_25E82997C();
      swift_allocObject();
      sub_25E82996C();
      (*(v7 + 104))(v9, *MEMORY[0x277CC86D0], v6);
      sub_25E82994C();
      v24 = sub_25E7FD9F4(v15, a2);
      v26 = v25;
      sub_25E801EDC();
      sub_25E82995C();
      if (v3)
      {
        sub_25E801F30(v24, v26);
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v27 = sub_25E829CDC();
        __swift_project_value_buffer(v27, qword_27FD0A4B0);
        MEMORY[0x25F8C14D0](v3);
        v28 = sub_25E829CBC();
        v29 = sub_25E82A02C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          MEMORY[0x25F8C14D0](v3);
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&dword_25E7F6000, v28, v29, "Failed at parsing metadata: %@", v30, 0xCu);
          sub_25E802774(v31, &qword_27FD07370, &qword_25E82AD20);
          MEMORY[0x25F8C1620](v31, -1, -1);
          MEMORY[0x25F8C1620](v30, -1, -1);
        }

        else
        {
        }

        v33 = 0;
        v35 = 0;
        v34 = 0uLL;
      }

      else
      {
        sub_25E801F30(v24, v26);

        v33 = v36;
        v34 = v37;
        v35 = v38;
      }

      *a3 = v33;
      *(a3 + 8) = v34;
      *(a3 + 24) = v35;
    }

    MEMORY[0x25F8C1620](v15, -1, -1);
    return;
  }

  if (qword_27FD072A0 != -1)
  {
    goto LABEL_22;
  }

LABEL_8:
  v20 = sub_25E829CDC();
  __swift_project_value_buffer(v20, qword_27FD0A4B0);
  v21 = sub_25E829CBC();
  v22 = sub_25E82A02C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v14;
    _os_log_impl(&dword_25E7F6000, v21, v22, "Invalid metadataOffset: %lld", v23, 0xCu);
    MEMORY[0x25F8C1620](v23, -1, -1);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
}

uint64_t sub_25E7FC4FC()
{
  sub_25E82A0FC();
  MEMORY[0x25F8C0BC0](0x6174654D656C6946, 0xEC00000061746164);
  MEMORY[0x25F8C0BC0](0x6E6F697372657628, 0xEA0000000000203ALL);
  v0 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v0);

  MEMORY[0x25F8C0BC0](0x616D65686373202CLL, 0xEF203A746E756F43);
  v1 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v1);

  MEMORY[0x25F8C0BC0](0xD000000000000012, 0x800000025E82C5F0);
  v2 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v2);

  MEMORY[0x25F8C0BC0](0xD000000000000011, 0x800000025E82C610);
  v3 = sub_25E82A2EC();
  MEMORY[0x25F8C0BC0](v3);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return 0;
}

uint64_t PlanksReader.deinit()
{
  if ((sub_25E829D2C() & 0x100000000) != 0)
  {
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
  }

  v1 = OBJC_IVAR____TtC6Planks12PlanksReader_filePath;
  v2 = sub_25E829D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PlanksReader.__deallocating_deinit()
{
  PlanksReader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_25E7FC83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet;
  if (*(v4 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet))
  {
    v6 = *(v4 + OBJC_IVAR____TtC6Planks12PlanksReader____lazy_storage___fieldSet);
  }

  else
  {
    v7 = FileMetadata.fieldNames.getter();
    v6 = sub_25E80203C(v7);

    *(v4 + v5) = v6;
  }

  return v6;
}

uint64_t (*sub_25E7FC900(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v4;
  *a1 = sub_25E7FC83C(a1, a2, a3, a4);
  return sub_25E7FC948;
}

void *sub_25E7FC974(uint64_t a1)
{
  if (qword_27FD072A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v2 = sub_25E829CDC();
    __swift_project_value_buffer(v2, qword_27FD0A4B0);
    v3 = sub_25E829CBC();
    v4 = sub_25E82A01C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25E7F6000, v3, v4, "Building elementByName index", v5, 2u);
      MEMORY[0x25F8C1620](v5, -1, -1);
    }

    v6 = sub_25E818734(MEMORY[0x277D84F90]);
    v7 = *(a1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 8);
    v30 = *(v7 + 16);
    if (!v30)
    {
      return v6;
    }

    v8 = 0;
    v9 = (v7 + 56);
    while (v8 < *(v7 + 16))
    {
      v12 = *(v9 - 3);
      a1 = *(v9 - 2);
      v13 = *(v9 - 8);
      v14 = *v9;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_25E800EB4(v12, a1);
      v18 = v6[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_21;
      }

      v22 = v17;
      if (v6[3] < v21)
      {
        sub_25E8177B8(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_25E800EB4(v12, a1);
        if ((v22 & 1) != (v23 & 1))
        {
          result = sub_25E82A37C();
          __break(1u);
          return result;
        }

LABEL_14:
        if (v22)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v28 = v16;
      sub_25E8181A0();
      v16 = v28;
      if (v22)
      {
LABEL_6:
        v10 = v16;

        v11 = v6[7] + 32 * v10;
        *v11 = v12;
        *(v11 + 8) = a1;
        *(v11 + 16) = v13;
        *(v11 + 24) = v14;

        goto LABEL_7;
      }

LABEL_15:
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v24 = (v6[6] + 16 * v16);
      *v24 = v12;
      v24[1] = a1;
      v25 = v6[7] + 32 * v16;
      *v25 = v12;
      *(v25 + 8) = a1;
      *(v25 + 16) = v13;
      *(v25 + 24) = v14;
      v26 = v6[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_22;
      }

      v6[2] = v27;
LABEL_7:
      ++v8;
      v9 += 4;
      if (v30 == v8)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }
}

uint64_t (*sub_25E7FCC2C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FC954();
  return sub_25E7FCC74;
}

void *sub_25E7FCCA0(uint64_t a1)
{
  if (qword_27FD072A0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v2 = sub_25E829CDC();
  __swift_project_value_buffer(v2, qword_27FD0A4B0);
  v3 = sub_25E829CBC();
  v4 = sub_25E82A01C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25E7F6000, v3, v4, "Building chunksByElement index", v5, 2u);
    MEMORY[0x25F8C1620](v5, -1, -1);
  }

  v6 = sub_25E818854(MEMORY[0x277D84F90]);
  v7 = *(a1 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v41 = 0;
  v42 = 0;
  v40 = v7;

  sub_25E7FD05C(&v37);
  a1 = v38;
  if (!v38)
  {
    v8 = 0;
LABEL_28:

    sub_25E802944(v8, 0);
    return v6;
  }

  v8 = 0;
  v35 = v37;
  while (1)
  {
    v34 = *(a1 + 16);
    if (v34)
    {
      break;
    }

LABEL_6:

    sub_25E7FD05C(&v37);
    v35 = v37;
    a1 = v38;
    if (!v38)
    {
      goto LABEL_28;
    }
  }

  v9 = 0;
  v10 = (a1 + 32);
  while (1)
  {
    if (v9 >= *(a1 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v12 = v10[1];
    v11 = v10[2];
    v13 = *v10;
    *&v39[10] = *(v10 + 42);
    v38 = v12;
    *v39 = v11;
    v37 = v13;
    v14 = v13;
    sub_25E8026B4(&v37, &v36);
    sub_25E802944(v8, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v6;
    v17 = sub_25E800EB4(v14, *(&v14 + 1));
    v18 = v6[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_30;
    }

    v21 = v16;
    if (v6[3] < v20)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = v36;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_25E81832C();
      v6 = v36;
      if (v21)
      {
LABEL_17:
        sub_25E80281C(&v37);
        goto LABEL_21;
      }
    }

LABEL_19:
    v6[(v17 >> 6) + 8] |= 1 << v17;
    *(v6[6] + 16 * v17) = v14;
    *(v6[7] + 8 * v17) = MEMORY[0x277D84F90];
    v24 = v6[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_31;
    }

    v6[2] = v26;
LABEL_21:
    v27 = v6[7];
    v28 = *(v27 + 8 * v17);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + 8 * v17) = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_25E7FF6BC(0, *(v28 + 2) + 1, 1, v28, &qword_27FD073E8, &qword_25E82ADB8);
      *(v27 + 8 * v17) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_25E7FF6BC((v30 > 1), v31 + 1, 1, v28, &qword_27FD073E8, &qword_25E82ADB8);
      *(v27 + 8 * v17) = v28;
    }

    v32 = &v28[16 * v31];
    *(v32 + 4) = v35;
    *(v32 + 5) = v9;
    *(v28 + 2) = v31 + 1;
    v10 += 4;
    v8 = sub_25E7FD0CC;
    if (v34 == ++v9)
    {
      goto LABEL_6;
    }
  }

  sub_25E817A90(v20, isUniquelyReferenced_nonNull_native);
  v22 = sub_25E800EB4(v14, *(&v14 + 1));
  if ((v21 & 1) == (v23 & 1))
  {
    v17 = v22;
    v6 = v36;
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  result = sub_25E82A37C();
  __break(1u);
  return result;
}

void sub_25E7FD05C(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 40 * v2;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v4 + 64);
    v1[1] = v2 + 1;
    v9 = v1[2];
    if (!__OFADD__(v9, 1))
    {
      v1[2] = v9 + 1;
      *a1 = v9;
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 40) = v8;

      return;
    }
  }

  __break(1u);
}

uint64_t (*sub_25E7FD0F4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FCC80();
  return sub_25E7FD13C;
}

uint64_t sub_25E7FD168(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

void *sub_25E7FD1D0()
{
  if (qword_27FD072A0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v0 = sub_25E829CDC();
  __swift_project_value_buffer(v0, qword_27FD0A4B0);
  v1 = sub_25E829CBC();
  v2 = sub_25E82A01C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25E7F6000, v1, v2, "Building groupsByElement index", v3, 2u);
    MEMORY[0x25F8C1620](v3, -1, -1);
  }

  v4 = sub_25E818868(MEMORY[0x277D84F90]);
  v5 = sub_25E7FCC80();
  v6 = 0;
  v7 = v5 + 64;
  v55 = v5 + 64;
  v56 = v5;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v54 = v11;
  while (1)
  {
    if (!v10)
    {
      while (1)
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v13 >= v11)
        {

          return v4;
        }

        v10 = *(v7 + 8 * v13);
        ++v6;
        if (v10)
        {
          v58 = v4;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v58 = v4;
    v13 = v6;
LABEL_16:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = (*(v56 + 48) + 16 * v14);
    v16 = v15[1];
    v57 = *v15;
    v17 = *(*(v56 + 56) + 8 * v14);
    v18 = *(v17 + 16);
    v59 = v16;
    if (v18)
    {
      v60 = MEMORY[0x277D84F90];

      sub_25E81F1EC(0, v18, 0);
      v19 = v60;
      v20 = v60[2];
      v21 = 32;
      do
      {
        v22 = *(v17 + v21);
        v60 = v19;
        v23 = *(v19 + 24);
        if (v20 >= v23 >> 1)
        {
          sub_25E81F1EC((v23 > 1), v20 + 1, 1);
          v19 = v60;
        }

        *(v19 + 16) = v20 + 1;
        *(v19 + 8 * v20 + 32) = v22;
        v21 += 16;
        ++v20;
        --v18;
      }

      while (v18);

      v16 = v59;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v24 = MEMORY[0x25F8C0D70](*(v19 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
    v25 = v24;
    v26 = *(v19 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = v24 + 56;
      do
      {
        while (1)
        {
          v29 = *(v19 + 32 + 8 * v27++);
          v30 = sub_25E82A38C();
          v31 = -1 << *(v25 + 32);
          v32 = v30 & ~v31;
          if ((*(v28 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            break;
          }

LABEL_30:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v60 = v25;
          sub_25E80096C(v29, v32, isUniquelyReferenced_nonNull_native);
          v25 = v60;
          if (v27 == v26)
          {
            goto LABEL_32;
          }

          v28 = (v60 + 7);
        }

        v33 = ~v31;
        while (*(*(v25 + 48) + 8 * v32) != v29)
        {
          v32 = (v32 + 1) & v33;
          if (((*(v28 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      while (v27 != v26);
LABEL_32:

      v16 = v59;
    }

    else
    {
    }

    v35 = *(v25 + 16);
    if (v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
      v36 = swift_allocObject();
      v37 = _swift_stdlib_malloc_size(v36);
      v38 = v37 - 32;
      if (v37 < 32)
      {
        v38 = v37 - 25;
      }

      v36[2] = v35;
      v36[3] = 2 * (v38 >> 3);
      v39 = sub_25E801990(&v60, v36 + 4, v35, v25);
      sub_25E80293C(v60);
      if (v39 != v35)
      {
        goto LABEL_52;
      }
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v58;
    v41 = sub_25E800EB4(v57, v16);
    v43 = *(v58 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_51;
    }

    v47 = v42;
    if (*(v58 + 24) < v46)
    {
      break;
    }

    if ((v40 & 1) == 0)
    {
      v52 = v41;
      sub_25E818340();
      v41 = v52;
    }

LABEL_46:
    v10 &= v10 - 1;
    if (v47)
    {
      v12 = v41;

      v4 = v60;
      *(v60[7] + 8 * v12) = v36;
    }

    else
    {
      v4 = v60;
      v60[(v41 >> 6) + 8] |= 1 << v41;
      v49 = (v4[6] + 16 * v41);
      *v49 = v57;
      v49[1] = v16;
      *(v4[7] + 8 * v41) = v36;
      v50 = v4[2];
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_53;
      }

      v4[2] = v51;
    }

    v6 = v13;
    v11 = v54;
    v7 = v55;
  }

  sub_25E817AA4(v46, v40);
  v41 = sub_25E800EB4(v57, v16);
  if ((v47 & 1) == (v48 & 1))
  {
    goto LABEL_46;
  }

  result = sub_25E82A37C();
  __break(1u);
  return result;
}

uint64_t (*sub_25E7FD70C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_25E7FD148();
  return sub_25E7FD754;
}

uint64_t static PlanksReader.readFilesize(_:)()
{
  result = sub_25E829D1C();
  if (v1)
  {
    v2 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v2;
    *v3 = v2;
  }

  return result;
}

uint64_t static PlanksReader.validateMagic(_:)(uint64_t a1)
{
  v2 = sub_25E801AA4(a1, 1);
  v3 = sub_25E7FBFD0(v2, &unk_28707E2C8);

  if ((v3 & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v5 = sub_25E829CDC();
    __swift_project_value_buffer(v5, qword_27FD0A4B0);
    v6 = sub_25E829CBC();
    v7 = sub_25E82A02C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Invalid file magic begin.";
    goto LABEL_7;
  }

  v4 = sub_25E801AA4(a1, 0);
  v11 = sub_25E7FBFD0(v4, &unk_28707E2C8);

  if ((v11 & 1) == 0)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v12 = sub_25E829CDC();
    __swift_project_value_buffer(v12, qword_27FD0A4B0);
    v6 = sub_25E829CBC();
    v7 = sub_25E82A02C();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Invalid file magic end.";
LABEL_7:
    _os_log_impl(&dword_25E7F6000, v6, v7, v9, v8, 2u);
    MEMORY[0x25F8C1620](v8, -1, -1);
LABEL_8:

    return 0;
  }

  return 1;
}

unint64_t sub_25E7FD9F4(_BYTE *__src, unint64_t a2)
{
  result = 0;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      return sub_25E801F84(__src, &__src[a2]);
    }

    else
    {
      sub_25E829A0C();
      swift_allocObject();
      sub_25E8299CC();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25E829A1C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

void sub_25E7FDAA4()
{
  v1 = sub_25E829D6C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25E829D2C();
  if ((v5 & 0x100000000) != 0)
  {
    v23 = v5;
    v6 = v5;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    *v8 = v6;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v9 = sub_25E829CDC();
    __swift_project_value_buffer(v9, qword_27FD0A4B0);
    MEMORY[0x25F8C14D0](v7);
    v10 = sub_25E829CBC();
    v11 = sub_25E82A02C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v12 = 136315394;
      (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC6Planks12PlanksReader_filePath, v1);
      sub_25E801E34();
      v13 = sub_25E82A2EC();
      v15 = v14;
      (*(v2 + 8))(v4, v1);
      v16 = sub_25E7FFAF0(v13, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2112;
      MEMORY[0x25F8C14D0](v7);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v17;
      v18 = v20;
      *v20 = v17;
      _os_log_impl(&dword_25E7F6000, v10, v11, "Failed at closing PlanksReader(%s): %@", v12, 0x16u);
      sub_25E802774(v18, &qword_27FD07370, &qword_25E82AD20);
      MEMORY[0x25F8C1620](v18, -1, -1);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25F8C1620](v19, -1, -1);
      MEMORY[0x25F8C1620](v12, -1, -1);

      return;
    }
  }
}

uint64_t sub_25E7FDDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E7FCC80();
  if (*(v4 + 16) && (v5 = sub_25E800EB4(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = *(v7 + 16);
    if (v8)
    {
      v17 = MEMORY[0x277D84F90];
      sub_25E81F1EC(0, v8, 0);
      v9 = v17;
      v10 = *(v17 + 16);
      v11 = 32;
      do
      {
        v12 = *(v7 + v11);
        v13 = *(v17 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_25E81F1EC((v13 > 1), v10 + 1, 1);
        }

        *(v17 + 16) = v10 + 1;
        *(v17 + 8 * v10 + 32) = v12;
        v11 += 16;
        ++v10;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    v15 = sub_25E8020D4(v9);

    v16 = *(v15 + 16);

    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25E7FDF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FD148();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {
    v12 = 0;
LABEL_13:

    return v12;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = *(v9 + 16);
  if (!v11)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
  v14 = *(v13 + 16);
  v15 = v13 + 32;
  v16 = 32;
  while (1)
  {
    v17 = 0;
    v18 = *(v9 + v16);
    if ((v18 & 0x8000000000000000) == 0 && v18 < v14)
    {
      v17 = *(v15 + 40 * v18 + 32);
    }

    v19 = __OFADD__(v12, v17);
    v12 += v17;
    if (v19)
    {
      break;
    }

    v16 += 8;
    if (!--v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25E7FE000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FD148();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = *(v9 + 16);
  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_17:

    v22 = v14;

    sub_25E800FE4(&v22);

    if (*(v22 + 2))
    {
      v21 = *(v22 + 4);

      return v21;
    }

    return 0;
  }

  v11 = *&v3[OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16];
  v12 = *(v11 + 16);
  v13 = (v9 + 32);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *v13++;
    v15 = v16;
    if ((v16 & 0x8000000000000000) == 0 && v15 < v12)
    {
      break;
    }

LABEL_6:
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  if (v15 < *(v11 + 16))
  {
    v17 = *(v11 + 32 + 40 * v15 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25E7FF4AC(0, *(v14 + 2) + 1, 1, v14);
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    v3 = (v19 + 1);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_25E7FF4AC((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v3;
    *&v14[8 * v19 + 32] = v17;
    goto LABEL_6;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25E7FE1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E7FCC80();
  if (*(v4 + 16) && (v5 = sub_25E800EB4(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    v8 = *(v7 + 16);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_25E7FE268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FCC80();
  if (*(v6 + 16) && (v7 = sub_25E800EB4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    v10 = *(v9 + 16);
    if (v10)
    {
      v30 = MEMORY[0x277D84F90];
      result = sub_25E81F20C(0, v10, 0);
      v12 = 0;
      v13 = v30;
      v14 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
      v15 = *(v14 + 16);
      v16 = v14 + 32;
      v17 = (v9 + 40);
      while (v12 < *(v9 + 16))
      {
        v18 = 0;
        v19 = *(v17 - 1);
        if ((v19 & 0x8000000000000000) == 0 && v19 < v15)
        {
          if (v19 >= *(v14 + 16))
          {
            goto LABEL_24;
          }

          v20 = *v17;
          if (*v17 < 0 || (v21 = *(v16 + 40 * v19 + 8), v20 >= *(v21 + 16)))
          {
            v18 = 0;
          }

          else
          {
            v18 = *(v21 + (v20 << 6) + 64);
          }
        }

        v23 = *(v30 + 16);
        v22 = *(v30 + 24);
        if (v23 >= v22 >> 1)
        {
          v29 = v16;
          result = sub_25E81F20C((v22 > 1), v23 + 1, 1);
          v16 = v29;
        }

        ++v12;
        *(v30 + 16) = v23 + 1;
        *(v30 + v23 + 32) = v18;
        v17 += 2;
        if (v10 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
LABEL_19:
      v24 = *(v13 + 16);
      v25 = (v13 + 32);
      do
      {
        v26 = v24;
        if (!v24)
        {
          break;
        }

        v27 = *v25++;
        --v24;
      }

      while ((v27 & 1) != 0);
      v28 = v26 == 0;

      return v28;
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_25E7FE458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25E7FCC80();
  if (*(v6 + 16) && (v7 = sub_25E800EB4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    v10 = *(v9 + 16);
    if (v10)
    {
      v29 = MEMORY[0x277D84F90];
      result = sub_25E81F20C(0, v10, 0);
      v12 = 0;
      v13 = *(v3 + OBJC_IVAR____TtC6Planks12PlanksReader_metadata + 16);
      v14 = v29;
      v15 = (v9 + 40);
      while (v12 < *(v9 + 16))
      {
        v16 = 0;
        v17 = *(v15 - 1);
        if ((v17 & 0x8000000000000000) == 0 && v17 < *(v13 + 16))
        {
          v16 = 0;
          v18 = *v15;
          if ((*v15 & 0x8000000000000000) == 0)
          {
            v19 = *(v13 + 32 + 40 * v17 + 8);
            if (v18 < *(v19 + 16))
            {
              v20 = *(v19 + (v18 << 6) + 65);
              if (v20 == 2)
              {
                v16 = 0;
              }

              else if (v20)
              {
                v21 = sub_25E82A32C();

                v16 = v21 ^ 1;
              }

              else
              {
                result = swift_bridgeObjectRelease_n();
                v16 = 0;
              }
            }
          }
        }

        v23 = *(v29 + 16);
        v22 = *(v29 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_25E81F20C((v22 > 1), v23 + 1, 1);
        }

        ++v12;
        *(v29 + 16) = v23 + 1;
        *(v29 + v23 + 32) = v16 & 1;
        v15 += 2;
        if (v10 == v12)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
LABEL_21:
      v24 = *(v14 + 16);
      v25 = (v14 + 32);
      do
      {
        v26 = v24;
        if (!v24)
        {
          break;
        }

        v27 = *v25++;
        --v24;
      }

      while ((v27 & 1) != 0);
      v28 = v26 == 0;

      return v28;
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_25E7FE6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25E7FC954();
  if (!*(v6 + 16) || (v7 = sub_25E800EB4(a1, a2), (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  v9 = *(v6 + 56) + 32 * v7;
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);

  if (!v10)
  {
LABEL_6:

    v11 = 12;
    goto LABEL_7;
  }

LABEL_7:
  *a3 = v11;
  return result;
}

uint64_t sub_25E7FE75C()
{
  v1 = sub_25E82A3EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = &type metadata for ColumnChunk;
  v5 = swift_allocObject();
  *&v21 = v5;
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = v0[2];
  *(v5 + 58) = *(v0 + 42);
  sub_25E8026B4(v0, v24);
  sub_25E82A3CC();
  v7 = sub_25E82A3DC();
  (*(v2 + 8))(v4, v1);
  v18[1] = v7;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v25 + 1))
  {
    v8 = MEMORY[0x277D84F90];
    do
    {
      v21 = v24[0];
      v22 = v24[1];
      v23 = v25;
      if (*(&v24[0] + 1))
      {
        v19 = 0;
        v20 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v21);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v22, *(&v23 + 1));
        sub_25E82A31C();
        v9 = v19;
        v10 = v20;
        sub_25E802774(&v21, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25E7FF5B0(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_25E7FF5B0((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v10;
      }

      else
      {
        sub_25E802774(&v21, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v25 + 1));
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  strcpy(v24, "ColumnChunk(");
  BYTE13(v24[0]) = 0;
  HIWORD(v24[0]) = -5120;
  *&v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v14 = sub_25E829DBC();
  v16 = v15;

  MEMORY[0x25F8C0BC0](v14, v16);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return *&v24[0];
}

uint64_t sub_25E7FEA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25E82A3EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v31 + 1) = &type metadata for FileMetadata;
  v12 = swift_allocObject();
  *&v30 = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_25E82A3CC();
  v13 = sub_25E82A3DC();
  (*(v9 + 8))(v11, v8);
  v24[1] = v13;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v32 + 1))
  {
    v14 = MEMORY[0x277D84F90];
    do
    {
      v27 = v30;
      v28 = v31;
      v29 = v32;
      if (*(&v30 + 1))
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v27);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v28, *(&v29 + 1));
        sub_25E82A31C();
        v15 = v25;
        v16 = v26;
        sub_25E802774(&v27, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_25E7FF5B0(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_25E7FF5B0((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        sub_25E802774(&v27, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v32 + 1));
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  strcpy(&v30, "FileMetadata(");
  HIWORD(v30) = -4864;
  *&v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v20 = sub_25E829DBC();
  v22 = v21;

  MEMORY[0x25F8C0BC0](v20, v22);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return v30;
}

uint64_t sub_25E7FED8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_25E82A3EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v31 + 1) = &type metadata for SchemaElement;
  v12 = swift_allocObject();
  *&v30 = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  sub_25E82A3CC();
  v13 = sub_25E82A3DC();
  (*(v9 + 8))(v11, v8);
  v24[1] = v13;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v32 + 1))
  {
    v14 = MEMORY[0x277D84F90];
    do
    {
      v27 = v30;
      v28 = v31;
      v29 = v32;
      if (*(&v30 + 1))
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v27);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v28, *(&v29 + 1));
        sub_25E82A31C();
        v15 = v25;
        v16 = v26;
        sub_25E802774(&v27, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_25E7FF5B0(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_25E7FF5B0((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16;
      }

      else
      {
        sub_25E802774(&v27, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v32 + 1));
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  strcpy(&v30, "SchemaElement(");
  HIBYTE(v30) = -18;
  *&v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v20 = sub_25E829DBC();
  v22 = v21;

  MEMORY[0x25F8C0BC0](v20, v22);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return v30;
}

uint64_t sub_25E7FF0A0()
{
  v1 = sub_25E82A3EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = &type metadata for RowGroup;
  v5 = swift_allocObject();
  *&v21 = v5;
  v6 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 32);
  sub_25E8028A8(v0, v24);
  sub_25E82A3CC();
  v7 = sub_25E82A3DC();
  (*(v2 + 8))(v4, v1);
  v18[1] = v7;
  sub_25E82A16C();
  sub_25E82A1FC();
  if (*(&v25 + 1))
  {
    v8 = MEMORY[0x277D84F90];
    do
    {
      v21 = v24[0];
      v22 = v24[1];
      v23 = v25;
      if (*(&v24[0] + 1))
      {
        v19 = 0;
        v20 = 0xE000000000000000;
        MEMORY[0x25F8C0BC0](v21);
        MEMORY[0x25F8C0BC0](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_0(&v22, *(&v23 + 1));
        sub_25E82A31C();
        v9 = v19;
        v10 = v20;
        sub_25E802774(&v21, &qword_27FD073B0, &qword_25E82AD88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25E7FF5B0(0, *(v8 + 2) + 1, 1, v8);
        }

        v12 = *(v8 + 2);
        v11 = *(v8 + 3);
        if (v12 >= v11 >> 1)
        {
          v8 = sub_25E7FF5B0((v11 > 1), v12 + 1, 1, v8);
        }

        *(v8 + 2) = v12 + 1;
        v13 = &v8[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v10;
      }

      else
      {
        sub_25E802774(&v21, &qword_27FD073B0, &qword_25E82AD88);
      }

      sub_25E82A1FC();
    }

    while (*(&v25 + 1));
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  *&v24[0] = 0x70756F7247776F52;
  *(&v24[0] + 1) = 0xE900000000000028;
  *&v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073A0, &qword_25E82AD80);
  sub_25E802710();
  v14 = sub_25E829DBC();
  v16 = v15;

  MEMORY[0x25F8C0BC0](v14, v16);

  MEMORY[0x25F8C0BC0](41, 0xE100000000000000);
  return *&v24[0];
}

uint64_t sub_25E7FF3A4@<X0>(_DWORD *a5@<X8>)
{
  result = sub_25E829CEC();
  if ((result & 0x100000000) != 0)
  {
    v7 = result;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t type metadata accessor for PlanksReader(uint64_t a1)
{
  result = qword_27FD07390;
  if (!qword_27FD07390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_25E7FF4AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD072A8, &qword_25E82C300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25E7FF5B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073B8, &unk_25E82C2E0);
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

char *sub_25E7FF6BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_25E7FF7B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C8, &qword_25E82AD98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E7FF8C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D0, &qword_25E82ADA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25E7FF9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25E7FFAF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E7FFC5C(v11, 0, 0, 1, a1, a2);
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
    sub_25E80299C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

unint64_t sub_25E7FFC08()
{
  result = qword_27FD07378;
  if (!qword_27FD07378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07378);
  }

  return result;
}

unint64_t sub_25E7FFC5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25E7FFD68(a5, a6);
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
    result = sub_25E82A11C();
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

void *sub_25E7FFD68(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E7FFDB4(a1, a2);
  sub_25E7FFEE4(&unk_28707E2F0);
  return v3;
}

void *sub_25E7FFDB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25E7FFFD0(v5, 0);
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

  result = sub_25E82A11C();
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
        v10 = sub_25E829DFC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E7FFFD0(v10, 0);
        result = sub_25E82A0EC();
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

uint64_t sub_25E7FFEE4(uint64_t result)
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

  result = sub_25E800044(result, v11, 1, v3);
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

void *sub_25E7FFFD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E800044(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
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

uint64_t sub_25E800138(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25E82A39C();
  sub_25E829DDC();
  v8 = sub_25E82A3BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25E82A32C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25E8007EC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25E800288(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_25E82A38C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_25E80096C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25E800368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0CC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25E82A39C();
      sub_25E829DDC();
      result = sub_25E82A3BC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E8005C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  result = sub_25E82A0CC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_25E82A38C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E8007EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25E800368(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25E81231C();
      goto LABEL_16;
    }

    sub_25E800A8C(v8 + 1);
  }

  v10 = *v4;
  sub_25E82A39C();
  sub_25E829DDC();
  result = sub_25E82A3BC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25E82A32C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25E82A36C();
  __break(1u);
  return result;
}

uint64_t sub_25E80096C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25E8005C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25E812478();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25E800CC4(v5 + 1);
  }

  v8 = *v3;
  result = sub_25E82A38C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25E82A36C();
  __break(1u);
  return result;
}

uint64_t sub_25E800A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F0, &qword_25E82ADC0);
  result = sub_25E82A0CC();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25E82A39C();

      sub_25E829DDC();
      result = sub_25E82A3BC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_25E800CC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073E0, &qword_25E82ADB0);
  result = sub_25E82A0CC();
  v5 = result;
  if (*(v3 + 16))
  {
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
      result = sub_25E82A38C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_25E800EB4(uint64_t a1, uint64_t a2)
{
  sub_25E82A39C();
  sub_25E829DDC();
  v4 = sub_25E82A3BC();

  return sub_25E800F2C(a1, a2, v4, v5);
}

unint64_t sub_25E800F2C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a3 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 16 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (sub_25E82A32C())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25E800FE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E801A90(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25E82A2DC();
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
          *(v13 + 1) = v14;
          v13 -= 8;
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
      v7 = sub_25E829EEC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25E801118(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25E801118(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25E801878(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_25E801684((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
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
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_25E7FF6BC(0, *(v8 + 16) + 1, 1, v8, &qword_27FD073D8, &qword_25E82ADA8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_25E7FF6BC((v29 > 1), v5 + 1, 1, v8, &qword_27FD073D8, &qword_25E82ADA8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_25E801684((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_25E801684(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_25E80188C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D8, &qword_25E82ADA8);
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

void *sub_25E801990(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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

uint64_t sub_25E801AA4(uint64_t a1, char a2)
{
  v5 = swift_slowAlloc();
  if (a2)
  {
    v6 = sub_25E829D1C();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = sub_25E829D1C();
    if (v8)
    {
LABEL_7:
      v10 = v6;
      sub_25E7FFC08();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v11 = v10;
      goto LABEL_8;
    }
  }

  v6 = sub_25E829D0C();
  if (!v2)
  {
    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073F8, &qword_25E82ADC8);
      a1 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(a1);
      *(a1 + 16) = 4;
      *(a1 + 24) = 2 * v13 - 64;
      *(a1 + 32) = *v5;
      MEMORY[0x25F8C1620](v5, -1, -1);
      return a1;
    }

    goto LABEL_7;
  }

LABEL_8:
  MEMORY[0x25F8C1620](v5, -1, -1);
  return a1;
}

uint64_t sub_25E801C34(uint64_t a1)
{
  v3 = swift_slowAlloc();
  v4 = sub_25E829D1C();
  if (v5)
  {
    goto LABEL_2;
  }

  v4 = sub_25E829D0C();
  if (v2)
  {
    goto LABEL_4;
  }

  if (v7)
  {
LABEL_2:
    v1 = v4;
    sub_25E7FFC08();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v6 = v1;
  }

  else
  {
    v9 = *v3;
    v1 = v9;
    if (v9 >> 25)
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v10 = sub_25E829CDC();
      __swift_project_value_buffer(v10, qword_27FD0A4B0);
      v11 = sub_25E829CBC();
      v12 = sub_25E82A02C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v9;
        _os_log_impl(&dword_25E7F6000, v11, v12, "Invalid metadataSize: %ld", v13, 0xCu);
        MEMORY[0x25F8C1620](v13, -1, -1);
      }

      v1 = 0;
    }
  }

LABEL_4:
  MEMORY[0x25F8C1620](v3, -1, -1);
  return v1;
}

unint64_t sub_25E801E34()
{
  result = qword_27FD07380;
  if (!qword_27FD07380)
  {
    sub_25E829D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07380);
  }

  return result;
}

void sub_25E801E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_25E801EDC()
{
  result = qword_27FD07388;
  if (!qword_27FD07388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07388);
  }

  return result;
}

uint64_t sub_25E801F30(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25E801F84(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_25E80203C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C0D70](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25E800138(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25E8020D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8C0D70](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_25E800288(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25E802148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_25E7FC83C(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_25E802180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E7FC954();
  *a1 = result;
  return result;
}

uint64_t sub_25E8021B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E7FCC80();
  *a1 = result;
  return result;
}

uint64_t sub_25E8021F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E7FD148();
  *a1 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t sub_25E802278(uint64_t a1)
{
  result = sub_25E829D6C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E80267C()
{

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

unint64_t sub_25E802710()
{
  result = qword_27FD073A8;
  if (!qword_27FD073A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD073A0, &qword_25E82AD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD073A8);
  }

  return result;
}

uint64_t sub_25E802774(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E802870()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25E802904()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E802944(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25E802954()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E80299C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ScalarType.description.getter()
{
  v1 = v0;
  v2 = sub_25E829B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D2CC80])
  {
    return 947154537;
  }

  if (v6 == *MEMORY[0x277D2CC88])
  {
    return 0x3631746E69;
  }

  if (v6 == *MEMORY[0x277D2CC90])
  {
    return 0x3233746E69;
  }

  if (v6 == *MEMORY[0x277D2CC98])
  {
    return 0x3436746E69;
  }

  if (v6 == *MEMORY[0x277D2CCA0])
  {
    return 0x38746E6975;
  }

  if (v6 == *MEMORY[0x277D2CCA8])
  {
    return 0x3631746E6975;
  }

  if (v6 == *MEMORY[0x277D2CCB0])
  {
    return 0x3233746E6975;
  }

  if (v6 == *MEMORY[0x277D2CCB8])
  {
    return 0x3436746E6975;
  }

  if (v6 == *MEMORY[0x277D2CCC0])
  {
    return 0x363174616F6C66;
  }

  if (v6 == *MEMORY[0x277D2CCD8])
  {
    return 0x363174616F6C6662;
  }

  if (v6 == *MEMORY[0x277D2CCC8])
  {
    return 0x323374616F6C66;
  }

  if (v6 == *MEMORY[0x277D2CCD0])
  {
    return 0x343674616F6C66;
  }

  if (v6 == *MEMORY[0x277D2CC78])
  {
    return 1819242338;
  }

  (*(v3 + 8))(v5, v2);
  return 0x6E776F6E6B6E75;
}

uint64_t ScalarType.init(fieldType:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E829B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, **(&unk_279A39B28 + *a1), v4);
  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t FieldType.init(scalarType:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25E829B8C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x277D2CC80])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x277D2CC88])
  {
    v7 = 1;
  }

  else if (result == *MEMORY[0x277D2CC90])
  {
    v7 = 2;
  }

  else if (result == *MEMORY[0x277D2CC98])
  {
    v7 = 3;
  }

  else if (result == *MEMORY[0x277D2CCA0])
  {
    v7 = 4;
  }

  else if (result == *MEMORY[0x277D2CCA8])
  {
    v7 = 5;
  }

  else if (result == *MEMORY[0x277D2CCB0])
  {
    v7 = 6;
  }

  else if (result == *MEMORY[0x277D2CCB8])
  {
    v7 = 7;
  }

  else if (result == *MEMORY[0x277D2CCC0])
  {
    v7 = 8;
  }

  else if (result == *MEMORY[0x277D2CCC8])
  {
    v7 = 9;
  }

  else if (result == *MEMORY[0x277D2CCD0])
  {
    v7 = 10;
  }

  else if (result == *MEMORY[0x277D2CC78])
  {
    v7 = 11;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v7 = 12;
  }

  *a2 = v7;
  return result;
}

uint64_t Array<A>.median()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = sub_25E829F1C();
  if (v12 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    v16 = *&a1;
    sub_25E829F4C();
    swift_getWitnessTable();
    sub_25E829E5C();
    sub_25E829F5C();
    if (v12)
    {

      sub_25E8032B4();
      sub_25E829D8C();
      *&result = v16;
    }

    else
    {
      sub_25E829F5C();

      sub_25E82A1AC();
      v13 = *(v5 + 8);
      v13(v8, a2);
      v13(v11, a2);
      sub_25E8032B4();
      sub_25E829D8C();
      *&result = v16 * 0.5;
    }
  }

  return result;
}

unint64_t sub_25E8032B4()
{
  result = qword_27FD07400;
  if (!qword_27FD07400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD07400);
  }

  return result;
}

uint64_t Array<A>.mean()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v2 = sub_25E829F1C();
  v3 = v2 - 1;
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0.0;
  v5 = 1;
  while (1)
  {
    sub_25E829F5C();
    sub_25E8032B4();
    sub_25E829D8C();
    v4 = v4 + (v8 - v4) / v5;
    if (!v3)
    {
      break;
    }

    --v3;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      return *&v4;
    }
  }

  return *&v4;
}

uint64_t Array<A>.stddev()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = sub_25E829F1C();
  if (v6 < 2)
  {
    return 0;
  }

  v14 = v6;
  result = Array<A>.mean()(a1, a2);
  if ((v8 & 1) == 0)
  {
    v9 = *&result;
    if (sub_25E829F1C())
    {
      v10 = 0;
      v11 = 0.0;
      while (1)
      {
        v12 = sub_25E829F0C();
        sub_25E829E9C();
        if (v12)
        {
          (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, a2);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = sub_25E82A10C();
          if (v5 != 8)
          {
            __break(1u);
            return result;
          }

          v15 = *&result;
          (*(v4 + 16))(&v14 - 2, &v15, a2);
          swift_unknownObjectRelease();
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        sub_25E8032B4();
        sub_25E829D8C();
        v11 = v11 + (v15 - v9) * (v15 - v9);
        ++v10;
        if (v13 == sub_25E829F1C())
        {
          return sqrt(v11 / v14);
        }
      }
    }

    v11 = 0.0;
    return sqrt(v11 / v14);
  }

  return result;
}

uint64_t PlanksWriter.writeBatch(_:label:as:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v191 = a3;
  v197 = a2;
  v188 = sub_25E82A30C();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v179 - v8;
  v10 = sub_25E829B8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v184 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v183 = &v179 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v195 = &v179 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v179 - v18;
  v194 = sub_25E829B9C();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25E829CAC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v185 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v179 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v179 - v28;
  if (sub_25E829C5C() != 2)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v33 = sub_25E829CDC();
    __swift_project_value_buffer(v33, qword_27FD0A4B0);
    v34 = v22;
    v35 = *(v22 + 16);
    v36 = v21;
    v35(v29, a1, v21);
    v37 = sub_25E829CBC();
    v38 = sub_25E82A02C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v196 = v36;
      v40 = v39;
      v41 = swift_slowAlloc();
      v200 = v41;
      *v40 = 136315138;
      v42 = v192;
      sub_25E829C7C();
      sub_25E807644(&qword_27FD07410, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD08]);
      v43 = v194;
      v44 = sub_25E82A2EC();
      v46 = v45;
      (*(v193 + 8))(v42, v43);
      (*(v34 + 8))(v29, v196);
      v47 = sub_25E7FFAF0(v44, v46, &v200);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_25E7F6000, v37, v38, "Invalid tensor shape: %s. Only 2D tensors supported.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x25F8C1620](v41, -1, -1);
      MEMORY[0x25F8C1620](v40, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v29, v36);
    }

    return 0;
  }

  v189 = v22;
  (*(v22 + 16))(v27, a1, v21);
  sub_25E8072C4(a4, v9);
  v30 = (*(v11 + 48))(v9, 1, v10);
  v196 = v21;
  v31 = v10;
  v182 = v11;
  if (v30 == 1)
  {
    sub_25E807334(v9);
    v32 = v195;
  }

  else
  {
    v48 = v19;
    (*(v11 + 32))(v19, v9, v31);
    v32 = v195;
    sub_25E829BFC();
    sub_25E807644(&qword_27FD07420, MEMORY[0x277D2CCE0], MEMORY[0x277D2CCE8]);
    v49 = sub_25E829DCC();
    v51 = v11 + 8;
    v50 = *(v11 + 8);
    v50(v32, v31);
    if (v49)
    {
      v10 = v31;
      v50(v19, v31);
    }

    else
    {
      sub_25E829BFC();
      v52 = sub_25E829B7C();
      v50(v32, v31);
      if ((v52 & 1) == 0)
      {
        v197 = v50;
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v72 = sub_25E829CDC();
        __swift_project_value_buffer(v72, qword_27FD0A4B0);
        v73 = v183;
        (*(v182 + 16))(v183, v48, v31);
        v74 = sub_25E829CBC();
        v75 = sub_25E82A02C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v194 = v48;
          v77 = v32;
          v78 = v76;
          v79 = swift_slowAlloc();
          v80 = v31;
          v179 = v31;
          v193 = v79;
          *v198 = v79;
          *v78 = 136315394;
          v81 = ScalarType.description.getter();
          v82 = v27;
          v84 = v83;
          v85 = v80;
          v86 = v197;
          v197(v73, v85);
          v87 = sub_25E7FFAF0(v81, v84, v198);

          *(v78 + 4) = v87;
          *(v78 + 12) = 2080;
          swift_beginAccess();
          sub_25E829BFC();
          v88 = ScalarType.description.getter();
          v90 = v89;
          v91 = v77;
          v92 = v179;
          v86(v91, v179);
          v93 = sub_25E7FFAF0(v88, v90, v198);

          *(v78 + 14) = v93;
          _os_log_impl(&dword_25E7F6000, v74, v75, "Invalid requested type %s for tensor of type: %s", v78, 0x16u);
          v94 = v193;
          swift_arrayDestroy();
          MEMORY[0x25F8C1620](v94, -1, -1);
          MEMORY[0x25F8C1620](v78, -1, -1);

          v86(v194, v92);
          (*(v189 + 8))(v82, v196);
          return 0;
        }

        v177 = v73;
        v178 = v197;
        v197(v177, v31);
        v178(v48, v31);
LABEL_28:
        (*(v189 + 8))(v27, v196);
        return 0;
      }

      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v53 = sub_25E829CDC();
      __swift_project_value_buffer(v53, qword_27FD0A4B0);
      v54 = v184;
      (*(v182 + 16))(v184, v19, v31);
      v55 = sub_25E829CBC();
      v56 = sub_25E82A01C();
      v57 = os_log_type_enabled(v55, v56);
      v181 = v51;
      if (v57)
      {
        v58 = swift_slowAlloc();
        v180 = v56;
        v59 = v27;
        v60 = v58;
        v183 = swift_slowAlloc();
        v200 = v183;
        *v60 = 136315394;
        swift_beginAccess();
        sub_25E829BFC();
        v61 = ScalarType.description.getter();
        v62 = v31;
        v64 = v63;
        v50(v195, v62);
        v65 = sub_25E7FFAF0(v61, v64, &v200);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v66 = ScalarType.description.getter();
        v68 = v67;
        v50(v54, v62);
        v69 = sub_25E7FFAF0(v66, v68, &v200);
        v31 = v62;
        v32 = v195;

        *(v60 + 14) = v69;
        _os_log_impl(&dword_25E7F6000, v55, v180, "Casting tensor of type %s to type %s.", v60, 0x16u);
        v70 = v183;
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v70, -1, -1);
        v71 = v60;
        v27 = v59;
        MEMORY[0x25F8C1620](v71, -1, -1);
      }

      else
      {

        v50(v54, v31);
      }

      swift_beginAccess();
      v95 = v187;
      v96 = v186;
      v97 = v188;
      (*(v187 + 104))(v186, *MEMORY[0x277D84660], v188);
      v98 = v185;
      sub_25E829C4C();
      (*(v95 + 8))(v96, v97);
      v99 = v48;
      v10 = v31;
      v50(v99, v31);
      swift_beginAccess();
      (*(v189 + 40))(v27, v98, v196);
    }
  }

  swift_beginAccess();
  sub_25E829BFC();
  FieldType.init(scalarType:)(v32, &v200);
  v100 = v200;
  v101 = v197;
  if (v200 == 12)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v102 = sub_25E829CDC();
    __swift_project_value_buffer(v102, qword_27FD0A4B0);
    v103 = sub_25E829CBC();
    v104 = sub_25E82A02C();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = v32;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v200 = v107;
      *v106 = 136315138;
      sub_25E829BFC();
      v108 = ScalarType.description.getter();
      v110 = v109;
      (*(v182 + 8))(v105, v10);
      v111 = sub_25E7FFAF0(v108, v110, &v200);

      *(v106 + 4) = v111;
      _os_log_impl(&dword_25E7F6000, v103, v104, "Invalid FieldType for tensor: %s", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x25F8C1620](v107, -1, -1);
      MEMORY[0x25F8C1620](v106, -1, -1);
    }

LABEL_27:

    goto LABEL_28;
  }

  v113 = v192;
  sub_25E829C7C();
  v188 = sub_25E829BBC();
  v114 = *(v193 + 8);
  v115 = v194;
  v114(v113, v194);
  sub_25E829C7C();
  v195 = sub_25E829BBC();
  v114(v113, v115);
  v116 = v191;

  v117 = v190;
  v118 = sub_25E816820();
  if (v118[2] && (v119 = sub_25E800EB4(v101, v116), (v120 & 1) != 0))
  {
    v121 = v118[7] + 32 * v119;
    v123 = *v121;
    v122 = *(v121 + 8);
    v124 = *(v121 + 16);
    v125 = *(v121 + 24);

    v200 = v123;
    *&v201 = v122;
    BYTE8(v201) = v124;
    v202 = v125;
    *v198 = v101;
    *&v198[8] = v116;
    v198[16] = v100;
    *&v198[24] = v195;
    if (!_s6Planks13SchemaElementV2eeoiySbAC_ACtFZ_0(&v200, v198, v126))
    {
      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v162 = sub_25E829CDC();
      __swift_project_value_buffer(v162, qword_27FD0A4B0);
      swift_bridgeObjectRetain_n();

      v103 = sub_25E829CBC();
      v163 = sub_25E82A02C();

      swift_bridgeObjectRelease_n();
      if (os_log_type_enabled(v103, v163))
      {
        v164 = swift_slowAlloc();
        LODWORD(v193) = v163;
        v165 = v101;
        v166 = v164;
        v167 = swift_slowAlloc();
        v194 = v27;
        v168 = v167;
        v200 = v167;
        *v166 = 136315650;
        *(v166 + 4) = sub_25E7FFAF0(v165, v116, &v200);
        *(v166 + 12) = 2080;
        v169 = sub_25E7FED8C(v123, v122, v124, v125);
        v171 = v170;

        v172 = sub_25E7FFAF0(v169, v171, &v200);

        *(v166 + 14) = v172;
        *(v166 + 22) = 2080;
        v173 = sub_25E7FED8C(v165, v116, v100, v195);
        v175 = v174;

        v176 = sub_25E7FFAF0(v173, v175, &v200);

        *(v166 + 24) = v176;
        _os_log_impl(&dword_25E7F6000, v103, v193, "Invalid batch label: %s with existing schema: %s vs %s", v166, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v168, -1, -1);
        MEMORY[0x25F8C1620](v166, -1, -1);

        (*(v189 + 8))(v194, v196);
        return 0;
      }

      goto LABEL_27;
    }

    LODWORD(v194) = v100;

    v117 = v190;
  }

  else
  {
    LODWORD(v194) = v100;
  }

  MEMORY[0x28223BE20](v127);
  *(&v179 - 4) = v117;
  *(&v179 - 3) = v101;
  *(&v179 - 2) = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07418, &qword_25E82AE08);
  v128 = v27;
  sub_25E829C2C();
  v130 = v200;
  v129 = v201;
  v131 = v117;
  v132 = v116;
  v134 = *(&v201 + 1);
  v133 = v202;
  *v198 = *v203;
  *&v198[10] = *&v203[10];
  if (!v201)
  {

    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v149 = sub_25E829CDC();
    __swift_project_value_buffer(v149, qword_27FD0A4B0);

    v150 = sub_25E829CBC();
    v151 = sub_25E82A02C();

    v152 = os_log_type_enabled(v150, v151);
    v153 = v189;
    if (v152)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v200 = v155;
      *v154 = 136315138;
      *(v154 + 4) = sub_25E7FFAF0(v197, v132, &v200);
      _os_log_impl(&dword_25E7F6000, v150, v151, "Failed at writing batch: %s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x25F8C1620](v155, -1, -1);
      MEMORY[0x25F8C1620](v154, -1, -1);
    }

    (*(v153 + 8))(v128, v196);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073C0, &qword_25E82AD90);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_25E82A940;
  *(v135 + 32) = v130;
  *(v135 + 40) = v129;
  *(v135 + 48) = v134;
  *(v135 + 56) = v133;
  *(v135 + 64) = *v198;
  *(v135 + 74) = *&v198[10];
  v136 = v131 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v137 = *(v136 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v136 + 16) = v137;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v137 = sub_25E7FF8C4(0, *(v137 + 2) + 1, 1, v137);
    *(v136 + 16) = v137;
  }

  v139 = v194;
  v141 = *(v137 + 2);
  v140 = *(v137 + 3);
  if (v141 >= v140 >> 1)
  {
    v137 = sub_25E7FF8C4((v140 > 1), v141 + 1, 1, v137);
  }

  *(v137 + 2) = v141 + 1;
  v142 = &v137[40 * v141];
  v142[32] = 1;
  *(v142 + 5) = v135;
  *(v142 + 6) = v134;
  v143 = v188;
  *(v142 + 7) = v133;
  *(v142 + 8) = v143;
  *(v136 + 16) = v137;
  swift_endAccess();
  v144 = *v136;
  v145 = *(v136 + 24);
  v201 = *(v136 + 8);
  v200 = v144;
  v202 = v145;
  v146 = FileMetadata.fieldNames.getter();
  v147 = v191;
  v199[0] = v197;
  v199[1] = v191;
  MEMORY[0x28223BE20](v146);
  *(&v179 - 2) = v199;
  v148 = sub_25E8073B0(sub_25E8074F0, (&v179 - 4), v146);

  if (v148)
  {

    (*(v189 + 8))(v128, v196);
    return 1;
  }

  else
  {
    swift_beginAccess();
    v156 = *(v136 + 8);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    *(v136 + 8) = v156;
    v158 = v189;
    if ((v157 & 1) == 0)
    {
      v156 = sub_25E7FF7B8(0, *(v156 + 2) + 1, 1, v156);
      *(v136 + 8) = v156;
    }

    v160 = *(v156 + 2);
    v159 = *(v156 + 3);
    if (v160 >= v159 >> 1)
    {
      v156 = sub_25E7FF7B8((v159 > 1), v160 + 1, 1, v156);
    }

    *(v156 + 2) = v160 + 1;
    v161 = &v156[32 * v160];
    *(v161 + 4) = v197;
    *(v161 + 5) = v147;
    v161[48] = v139;
    *(v161 + 7) = v195;
    *(v136 + 8) = v156;
    swift_endAccess();
    (*(v158 + 8))(v128, v196);
    return 1;
  }
}

uint64_t PlanksWriter.writeTensor(_:label:as:batchSize:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  v138 = a5;
  v144 = a4;
  v136 = sub_25E82A30C();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v129[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v149 = &v129[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v129[-v13];
  v151 = sub_25E829B8C();
  v139 = *(v151 - 1);
  v15 = MEMORY[0x28223BE20](v151);
  v132 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v131 = &v129[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v129[-v20];
  MEMORY[0x28223BE20](v19);
  v137 = &v129[-v22];
  v141 = sub_25E829B9C();
  v143 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v129[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_25E829CAC();
  *&v142 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v150 = &v129[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v133 = &v129[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v129[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v129[-v32];
  if (sub_25E829C5C() != 2)
  {
    if (qword_27FD072A0 != -1)
    {
LABEL_61:
      swift_once();
    }

    v47 = sub_25E829CDC();
    __swift_project_value_buffer(v47, qword_27FD0A4B0);
    v48 = v142;
    (*(v142 + 16))(v33, a1, v24);
    v40 = sub_25E829CBC();
    v49 = sub_25E82A02C();
    if (!os_log_type_enabled(v40, v49))
    {

      (*(v48 + 8))(v33, v24);
      return 0;
    }

    v50 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v153 = v151;
    *v50 = 136315138;
    v51 = v140;
    sub_25E829C7C();
    sub_25E807644(&qword_27FD07410, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD08]);
    v52 = v141;
    v53 = sub_25E82A2EC();
    v55 = v54;
    (*(v143 + 8))(v51, v52);
    (*(v48 + 8))(v33, v24);
    v56 = sub_25E7FFAF0(v53, v55, &v153);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_25E7F6000, v40, v49, "Invalid tensor shape: %s. Only 2D tensors supported.", v50, 0xCu);
    v57 = v151;
    __swift_destroy_boxed_opaque_existential_0(v151);
    MEMORY[0x25F8C1620](v57, -1, -1);
    v46 = v50;
    goto LABEL_10;
  }

  v148 = v31;
  v145 = v5;
  v34 = v5 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v35 = *(v34 + 24);
  v153 = *v34;
  v154 = *(v34 + 8);
  v155 = v35;
  v36 = FileMetadata.fieldNames.getter();
  v146 = a2;
  v152[0] = a2;
  v152[1] = a3;
  v147 = a3;
  MEMORY[0x28223BE20](v36);
  *&v129[-16] = v152;
  v37 = sub_25E8073B0(sub_25E807748, &v129[-32], v36);

  if (v37)
  {
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v38 = sub_25E829CDC();
    __swift_project_value_buffer(v38, qword_27FD0A4B0);
    v39 = v147;

    v40 = sub_25E829CBC();
    v41 = sub_25E82A02C();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v146;
    if (!v42)
    {
      goto LABEL_11;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v153 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_25E7FFAF0(v43, v39, &v153);
    _os_log_impl(&dword_25E7F6000, v40, v41, "Invalid tensor label: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x25F8C1620](v45, -1, -1);
    v46 = v44;
LABEL_10:
    MEMORY[0x25F8C1620](v46, -1, -1);
LABEL_11:

    return 0;
  }

  v58 = v148;
  (*(v142 + 16))(v148, a1, v24);
  sub_25E8072C4(v144, v14);
  v59 = v139;
  v60 = v151;
  if ((*(v139 + 48))(v14, 1, v151) == 1)
  {
    sub_25E807334(v14);
  }

  else
  {
    v61 = v137;
    (*(v59 + 32))(v137, v14, v60);
    v62 = v21;
    sub_25E829BFC();
    sub_25E807644(&qword_27FD07420, MEMORY[0x277D2CCE0], MEMORY[0x277D2CCE8]);
    v63 = sub_25E829DCC();
    v64 = v151;
    v65 = v63;
    v66 = *(v59 + 8);
    v66(v21, v151);
    if (v65)
    {
      v66(v61, v64);
    }

    else
    {
      sub_25E829BFC();
      v67 = sub_25E829B7C();
      v66(v21, v151);
      if ((v67 & 1) == 0)
      {
        if (qword_27FD072A0 != -1)
        {
          swift_once();
        }

        v87 = sub_25E829CDC();
        __swift_project_value_buffer(v87, qword_27FD0A4B0);
        v88 = v131;
        v89 = v151;
        (*(v59 + 16))(v131, v61, v151);
        v90 = sub_25E829CBC();
        v91 = sub_25E82A02C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v152[0] = v150;
          *v92 = 136315394;
          LODWORD(v149) = v91;
          v93 = ScalarType.description.getter();
          v95 = v94;
          v66(v88, v89);
          v96 = sub_25E7FFAF0(v93, v95, v152);

          *(v92 + 4) = v96;
          *(v92 + 12) = 2080;
          v97 = v148;
          swift_beginAccess();
          sub_25E829BFC();
          v98 = ScalarType.description.getter();
          v100 = v99;
          v66(v62, v89);
          v101 = sub_25E7FFAF0(v98, v100, v152);

          *(v92 + 14) = v101;
          _os_log_impl(&dword_25E7F6000, v90, v149, "Invalid requested type %s for tensor of type: %s", v92, 0x16u);
          v102 = v150;
          swift_arrayDestroy();
          MEMORY[0x25F8C1620](v102, -1, -1);
          MEMORY[0x25F8C1620](v92, -1, -1);

          v66(v137, v89);
          (*(v142 + 8))(v97, v24);
        }

        else
        {

          v66(v88, v89);
          v66(v61, v89);
          (*(v142 + 8))(v58, v24);
        }

        return 0;
      }

      if (qword_27FD072A0 != -1)
      {
        swift_once();
      }

      v68 = sub_25E829CDC();
      __swift_project_value_buffer(v68, qword_27FD0A4B0);
      v69 = *(v59 + 16);
      v70 = v132;
      v71 = v151;
      v69(v132, v61, v151);
      v72 = sub_25E829CBC();
      v73 = sub_25E82A01C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v131 = v72;
        v75 = v74;
        v144 = swift_slowAlloc();
        v153 = v144;
        *v75 = 136315394;
        swift_beginAccess();
        v130 = v73;
        sub_25E829BFC();
        v76 = ScalarType.description.getter();
        v77 = v62;
        v79 = v78;
        v66(v77, v71);
        v80 = sub_25E7FFAF0(v76, v79, &v153);

        *(v75 + 4) = v80;
        *(v75 + 12) = 2080;
        v81 = ScalarType.description.getter();
        v83 = v82;
        v66(v70, v71);
        v84 = sub_25E7FFAF0(v81, v83, &v153);

        *(v75 + 14) = v84;
        v85 = v131;
        _os_log_impl(&dword_25E7F6000, v131, v130, "Casting tensor of type %s to type %s.", v75, 0x16u);
        v86 = v144;
        swift_arrayDestroy();
        MEMORY[0x25F8C1620](v86, -1, -1);
        MEMORY[0x25F8C1620](v75, -1, -1);
      }

      else
      {

        v66(v70, v71);
      }

      swift_beginAccess();
      v103 = v135;
      v104 = v134;
      v105 = v136;
      (*(v135 + 104))(v134, *MEMORY[0x277D84660], v136);
      v21 = v133;
      sub_25E829C4C();
      (*(v103 + 8))(v104, v105);
      v66(v61, v151);
      swift_beginAccess();
      (*(v142 + 40))(v58, v21, v24);
    }
  }

  v144 = v24;
  swift_beginAccess();
  v106 = v140;
  sub_25E829C7C();
  v107 = sub_25E829BBC();
  v109 = (v143 + 8);
  v108 = *(v143 + 8);
  v110 = v141;
  v108(v106, v141);
  sub_25E829C7C();
  v33 = sub_25E829BBC();
  v108(v106, v110);
  if (v107 >= v138)
  {
    a1 = v138;
  }

  else
  {
    a1 = v107;
  }

  if (a1)
  {
    LODWORD(v143) = 0;
    v21 = 0;
    v111 = (v139 + 56);
    v109 = (v142 + 8);
    v142 = xmmword_25E82A950;
    v112 = v150;
    while (1)
    {
      v113 = v107 >= v21;
      if (a1 > 0)
      {
        v113 = v21 >= v107;
      }

      if (v113)
      {
        if ((v21 != v107) | v143 & 1)
        {
          goto LABEL_51;
        }

        v114 = (v21 + a1);
        if (__OFADD__(v21, a1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        LODWORD(v143) = 1;
        v24 = v21;
      }

      else
      {
        v114 = (v21 + a1);
        if (__OFADD__(v21, a1))
        {
          v24 = ((v21 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v24 = v21 + a1;
        }

        if (__OFADD__(v21, a1))
        {
          goto LABEL_58;
        }
      }

      if (v107 >= v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = v107;
      }

      if (v21 == v115)
      {
LABEL_51:
        (*v109)(v148, v144);
        return 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD073D8, &qword_25E82ADA8);
      v116 = swift_allocObject();
      *(v116 + 16) = v142;
      if (v115 < v21)
      {
        goto LABEL_59;
      }

      *(v116 + 32) = v21;
      *(v116 + 40) = v115;
      if (v33 < 0)
      {
        goto LABEL_60;
      }

      *(v116 + 48) = 0;
      *(v116 + 56) = v33;
      v152[3] = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07428, &qword_25E82AE10);
      sub_25E8076E4();
      sub_25E829C8C();

      v117 = v149;
      (*v111)(v149, 1, 1, v151);
      v118 = PlanksWriter.writeBatch(_:label:as:)(v112, v146, v147, v117);
      sub_25E807334(v117);
      if ((v118 & 1) == 0)
      {
        break;
      }

      (*v109)(v112, v144);
      v21 = v24;
    }

    if (qword_27FD072A0 != -1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    __break(1u);
LABEL_63:
    swift_once();
  }

  v120 = sub_25E829CDC();
  __swift_project_value_buffer(v120, qword_27FD0A4B0);
  v121 = sub_25E829CBC();
  v122 = sub_25E82A02C();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v144;
  v125 = v148;
  v126 = v150;
  if (v123)
  {
    v127 = swift_slowAlloc();
    *v127 = 134217984;
    *(v127 + 4) = v21;
    _os_log_impl(&dword_25E7F6000, v121, v122, "Failed at writing batch: %ld", v127, 0xCu);
    MEMORY[0x25F8C1620](v127, -1, -1);
  }

  v128 = *v109;
  (*v109)(v126, v124);
  v128(v125, v124);
  return 0;
}

uint64_t sub_25E805E88()
{
  result = *(v0 + 40);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 <= 0)
  {
    if (v3 < result)
    {
      goto LABEL_3;
    }
  }

  else if (result < v3)
  {
LABEL_3:
    v4 = __OFADD__(result, v2);
    v5 = result + v2;
    v6 = v4;
    v7 = 0x8000000000000000;
    if (v4)
    {
      v5 = (v5 >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v7 = 0;
    }

    *(v0 + 24) = v7;
    *(v0 + 32) = v6 ^ 1;
    *(v0 + 40) = v5;
    return result;
  }

  if (result != v3 || (*(v0 + 48) & 1) != 0)
  {
    return 0;
  }

  if ((*(v0 + 32) & 1) == 0 && *(v0 + 24) == 0x8000000000000000)
  {
    return 0;
  }

  *(v0 + 48) = 1;
  return result;
}

uint64_t PlanksWriter.writeBatch<A, B>(_:label:as:quantization:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v91 = a8;
  v94 = a5;
  v96 = a3;
  v95 = a2;
  v93 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v83[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = &v83[-v19];
  v20 = sub_25E829B9C();
  MEMORY[0x28223BE20](v20 - 8);
  v88 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_25E829CAC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = a1;
  v24 = sub_25E829C9C();
  v97[0] = v24;
  v25 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v27 = v93;
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v97, v94, a7, a6, v25, a12, a13, v93, &v98, a10, WitnessTable);
  v28 = v98;
  v97[0] = v24;
  LODWORD(v94) = v99;
  v84 = BYTE1(v99);
  v29 = quantizeArray<A, B, C>(_:parameters:)(v97, &v98, a7, a6, v25, a12, a13, v27);

  if (!v29)
  {
    v44 = v95;
    v45 = v96;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v46 = sub_25E829CDC();
    __swift_project_value_buffer(v46, qword_27FD0A4B0);

    v47 = sub_25E829CBC();
    v48 = sub_25E82A02C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v98 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_25E7FFAF0(v44, v45, &v98);
      _os_log_impl(&dword_25E7F6000, v47, v48, "Failed at quantizing batch: %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x25F8C1620](v50, -1, -1);
      MEMORY[0x25F8C1620](v49, -1, -1);
    }

    return 0;
  }

  sub_25E829C7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD07440, &qword_25E82AE20);
  sub_25E82A17C();

  v30 = v87;
  sub_25E829BDC();
  v31 = sub_25E829BEC();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_25E829C6C();
  v32 = v90;
  sub_25E829BCC();
  v33 = sub_25E829B8C();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v95;
  v35 = v96;
  v36 = v92;
  v37 = PlanksWriter.writeBatch(_:label:as:)(v23, v95, v96, v32);
  sub_25E807334(v32);
  if ((v37 & 1) == 0)
  {
LABEL_12:
    if (qword_27FD072A0 == -1)
    {
LABEL_13:
      v51 = sub_25E829CDC();
      __swift_project_value_buffer(v51, qword_27FD0A4B0);

      v52 = sub_25E829CBC();
      v53 = sub_25E82A02C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v98 = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_25E7FFAF0(v34, v35, &v98);
        _os_log_impl(&dword_25E7F6000, v52, v53, "Failed at writing quantizedTensor: %s.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x25F8C1620](v55, -1, -1);
        MEMORY[0x25F8C1620](v54, -1, -1);
      }

      (*(v85 + 8))(v23, v86);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_13;
  }

  v38 = v36 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v39 = v38 + 16;
  if (!*(*(v38 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  sub_25E8075B8(&v98);
  v35 = *(&v98 + 1);
  v93 = v38;
  if (*(&v98 + 1))
  {
    v41 = *(&v99 + 1);
    v40 = v99;
    v42 = *&v100[0];
    v43 = v98;
  }

  else
  {

    sub_25E80750C(*(*v39 + 16) - 1, &v98);
    v43 = v98;
    v35 = *(&v98 + 1);
    v41 = *(&v99 + 1);
    v40 = v99;
    v42 = *&v100[0];
  }

  swift_endAccess();
  v90 = v42;
  LODWORD(v91) = v43;
  v92 = v41;
  v95 = v40;
  v96 = v23;
  v57 = *(v35 + 16);

  if (v57)
  {
    v34 = 0;
    v58 = v35 + 66;
    v59 = MEMORY[0x277D84F90];
    v60 = v94 | (v84 << 8);
    while (v34 < *(v35 + 16))
    {
      v61 = *(v58 - 34);
      v62 = *(v58 - 18);
      v63 = *(v58 - 2);
      *(v100 + 10) = *(v58 + 8);
      v99 = v62;
      v100[0] = v63;
      v98 = v61;
      v64 = *(v58 - 34);
      v65 = *(v58 - 18);
      v105 = *(v58 - 2);
      v103 = v64;
      v104 = v65;
      v66 = *v58;
      v102 = *(v58 + 4);
      v101 = v66;
      sub_25E8026B4(&v98, v97);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_25E7FF9E4(0, *(v59 + 2) + 1, 1, v59);
      }

      v23 = *(v59 + 2);
      v67 = *(v59 + 3);
      if (v23 >= v67 >> 1)
      {
        v59 = sub_25E7FF9E4((v67 > 1), v23 + 1, 1, v59);
      }

      v34 = (v34 + 1);
      *(v59 + 2) = v23 + 1;
      v68 = &v59[64 * v23];
      v69 = v103;
      v70 = v104;
      v68[64] = v105;
      *(v68 + 2) = v69;
      *(v68 + 3) = v70;
      v68[65] = 1;
      v71 = v101;
      *(v68 + 35) = v102;
      *(v68 + 66) = v71;
      *(v68 + 72) = v28;
      *(v68 + 44) = v60;
      v58 += 64;
      if (v57 == v34)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_28:
  swift_bridgeObjectRelease_n();
  v72 = v93;
  swift_beginAccess();
  v73 = *(v72 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v72 + 16) = v73;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v73 = sub_25E7FF8C4(0, *(v73 + 2) + 1, 1, v73);
    *v39 = v73;
  }

  v75 = v96;
  v76 = v95;
  v77 = v92;
  v78 = v91;
  v79 = v90;
  v81 = *(v73 + 2);
  v80 = *(v73 + 3);
  if (v81 >= v80 >> 1)
  {
    v73 = sub_25E7FF8C4((v80 > 1), v81 + 1, 1, v73);
  }

  *(v73 + 2) = v81 + 1;
  v82 = &v73[40 * v81];
  v82[32] = v78;
  *(v82 + 5) = v59;
  *(v82 + 6) = v76;
  *(v82 + 7) = v77;
  *(v82 + 8) = v79;
  *v39 = v73;
  swift_endAccess();
  (*(v85 + 8))(v75, v86);

  return 1;
}

uint64_t PlanksWriter.writeTensor<A, B>(_:label:as:batchSize:quantization:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v95 = a6;
  v92 = a5;
  v97 = a3;
  v96 = a2;
  v94 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = &v84[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07438, &qword_25E82AE18);
  MEMORY[0x28223BE20](v19 - 8);
  v88 = &v84[-v20];
  v21 = sub_25E829B9C();
  MEMORY[0x28223BE20](v21 - 8);
  v89 = &v84[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_25E829CAC();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v24 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = a1;
  v25 = sub_25E829C9C();
  v98[0] = v25;
  v26 = sub_25E829F4C();
  WitnessTable = swift_getWitnessTable();
  v28 = v94;
  computeQuantizationParameters<A, B, C>(_:upperbound:)(v98, v95, a8, a7, v26, a13, a14, v94, &v99, a11, WitnessTable);
  v29 = v99;
  v98[0] = v25;
  LODWORD(v95) = v100;
  v85 = BYTE1(v100);
  v30 = quantizeArray<A, B, C>(_:parameters:)(v98, &v99, a8, a7, v26, a13, a14, v28);

  if (!v30)
  {
    v45 = v96;
    v46 = v97;
    if (qword_27FD072A0 != -1)
    {
      swift_once();
    }

    v47 = sub_25E829CDC();
    __swift_project_value_buffer(v47, qword_27FD0A4B0);

    v48 = sub_25E829CBC();
    v49 = sub_25E82A02C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v99 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_25E7FFAF0(v45, v46, &v99);
      _os_log_impl(&dword_25E7F6000, v48, v49, "Failed at quantizing batch: %s.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x25F8C1620](v51, -1, -1);
      MEMORY[0x25F8C1620](v50, -1, -1);
    }

    return 0;
  }

  sub_25E829C7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD07440, &qword_25E82AE20);
  sub_25E82A17C();

  v31 = v88;
  sub_25E829BDC();
  v32 = sub_25E829BEC();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  sub_25E829C6C();
  v33 = v91;
  sub_25E829BCC();
  v34 = sub_25E829B8C();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = v96;
  v36 = v97;
  v37 = v93;
  v38 = PlanksWriter.writeTensor(_:label:as:batchSize:)(v24, v96, v97, v33, v92);
  sub_25E807334(v33);
  if ((v38 & 1) == 0)
  {
LABEL_12:
    if (qword_27FD072A0 == -1)
    {
LABEL_13:
      v52 = sub_25E829CDC();
      __swift_project_value_buffer(v52, qword_27FD0A4B0);

      v53 = sub_25E829CBC();
      v54 = sub_25E82A02C();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v99 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_25E7FFAF0(v35, v36, &v99);
        _os_log_impl(&dword_25E7F6000, v53, v54, "Failed at writing quantizedTensor: %s.", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x25F8C1620](v56, -1, -1);
        MEMORY[0x25F8C1620](v55, -1, -1);
      }

      (*(v86 + 8))(v24, v87);
      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_13;
  }

  v39 = v37 + OBJC_IVAR____TtC6Planks12PlanksWriter_metadata;
  swift_beginAccess();
  v40 = v39 + 16;
  if (!*(*(v39 + 16) + 16))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  sub_25E8075B8(&v99);
  v36 = *(&v99 + 1);
  v94 = v39;
  if (*(&v99 + 1))
  {
    v42 = *(&v100 + 1);
    v41 = v100;
    v43 = *&v101[0];
    v44 = v99;
  }

  else
  {

    sub_25E80750C(*(*v40 + 16) - 1, &v99);
    v44 = v99;
    v36 = *(&v99 + 1);
    v42 = *(&v100 + 1);
    v41 = v100;
    v43 = *&v101[0];
  }

  swift_endAccess();
  v91 = v43;
  LODWORD(v92) = v44;
  v93 = v42;
  v96 = v41;
  v97 = v24;
  v58 = *(v36 + 16);

  if (v58)
  {
    v35 = 0;
    v59 = v36 + 66;
    v60 = MEMORY[0x277D84F90];
    v61 = v95 | (v85 << 8);
    while (v35 < *(v36 + 16))
    {
      v62 = *(v59 - 34);
      v63 = *(v59 - 18);
      v64 = *(v59 - 2);
      *(v101 + 10) = *(v59 + 8);
      v100 = v63;
      v101[0] = v64;
      v99 = v62;
      v65 = *(v59 - 34);
      v66 = *(v59 - 18);
      v106 = *(v59 - 2);
      v104 = v65;
      v105 = v66;
      v67 = *v59;
      v103 = *(v59 + 4);
      v102 = v67;
      sub_25E8026B4(&v99, v98);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_25E7FF9E4(0, *(v60 + 2) + 1, 1, v60);
      }

      v24 = *(v60 + 2);
      v68 = *(v60 + 3);
      if (v24 >= v68 >> 1)
      {
        v60 = sub_25E7FF9E4((v68 > 1), v24 + 1, 1, v60);
      }

      v35 = (v35 + 1);
      *(v60 + 2) = v24 + 1;
      v69 = &v60[64 * v24];
      v70 = v104;
      v71 = v105;
      v69[64] = v106;
      *(v69 + 2) = v70;
      *(v69 + 3) = v71;
      v69[65] = 1;
      v72 = v102;
      *(v69 + 35) = v103;
      *(v69 + 66) = v72;
      *(v69 + 72) = v29;
      *(v69 + 44) = v61;
      v59 += 64;
      if (v58 == v35)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_28:
  swift_bridgeObjectRelease_n();
  v73 = v94;
  swift_beginAccess();
  v74 = *(v73 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v73 + 16) = v74;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v74 = sub_25E7FF8C4(0, *(v74 + 2) + 1, 1, v74);
    *v40 = v74;
  }

  v76 = v97;
  v77 = v96;
  v78 = v93;
  v79 = v92;
  v80 = v91;
  v82 = *(v74 + 2);
  v81 = *(v74 + 3);
  if (v82 >= v81 >> 1)
  {
    v74 = sub_25E7FF8C4((v81 > 1), v82 + 1, 1, v74);
  }

  *(v74 + 2) = v82 + 1;
  v83 = &v74[40 * v82];
  v83[32] = v79;
  *(v83 + 5) = v60;
  *(v83 + 6) = v77;
  *(v83 + 7) = v78;
  *(v83 + 8) = v80;
  *v40 = v74;
  swift_endAccess();
  (*(v86 + 8))(v76, v87);

  return 1;
}

uint64_t sub_25E8072C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E807334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD07408, &unk_25E82C2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E8073B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_25E807498(void *a1, void *a2, __n128 a3)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E82A32C() & 1;
  }
}

uint64_t sub_25E80750C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25E80739C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v12 = *(v9 + 32);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = *(v9 + 16);
    *(a2 + 32) = v12;
    result = memmove(v9, (v9 + 40), 40 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

char *sub_25E8075B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 2);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = &v3[40 * v5];
      v8 = *v7;
      v9 = *(v7 + 3);
      *a1 = *(v7 - 8);
      *(a1 + 8) = v8;
      *(a1 + 16) = *(v7 + 8);
      *(a1 + 32) = v9;
      *(v3 + 2) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_25E80739C(v3);
    v3 = result;
    v5 = *(result + 2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}