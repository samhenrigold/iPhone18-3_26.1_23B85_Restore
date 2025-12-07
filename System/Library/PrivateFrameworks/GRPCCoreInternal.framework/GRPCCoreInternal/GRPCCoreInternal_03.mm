uint64_t sub_24DC6DD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(255, a3, a3, a4);
  sub_24DCB50A4();

  swift_getWitnessTable();
  sub_24DCB4F64();

  return v5;
}

BOOL sub_24DC6DE5C(uint64_t a1, uint64_t a2)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5104();
  v5 = sub_24DCB5414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v11 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a2, v9, v10);
  (*(v6 + 16))(v8, a1 + *(v11 + 32), v5);
  v12 = (*(*(v4 - 8) + 48))(v8, 1, v4) != 1;
  (*(v6 + 8))(v8, v5);
  return v12;
}

uint64_t sub_24DC6DFD0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = sub_24DCB5104();
  v7 = sub_24DCB5414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v13 = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a3, v11, v12);
  (*(v8 + 16))(v10, a2 + *(v13 + 32), v7);
  LODWORD(a2) = (*(*(v6 - 8) + 48))(v10, 1, v6);
  result = (*(v8 + 8))(v10, v7);
  if (a2 != 1)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }

  return result;
}

uint64_t sub_24DC6E1C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC2FD00;

  return sub_24DC6141C(a1, v5, v4);
}

unint64_t sub_24DC6E294()
{
  result = qword_27F19F088;
  if (!qword_27F19F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F088);
  }

  return result;
}

uint64_t sub_24DC6E2E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC334F4;

  return sub_24DC5F824(a1, v5, v4);
}

void *sub_24DC6E3E4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0C8, &qword_24DCBB130);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24DC6E5D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0C0, &qword_24DCBB128);
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

uint64_t sub_24DC6E700(unint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_24DC6E754(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    sub_24DCB4C34();
    v12 = sub_24DCB5424();
    v14 = v13;
    MEMORY[0x28223BE20](v12);
    result = sub_24DCB4F34();
    if (v16 == 1)
    {
      result = sub_24DC6EA90(a4, v12, v14, a5, a6, a7);
    }

    v15[1] = a3;
  }

  return result;
}

uint64_t sub_24DC6E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  result = MEMORY[0x28223BE20](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v14 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v15(v13 + v20, v13 + ((v26 - 1) & ~v24), v17);
  if (v9)
  {
    return (*(v11 + 32))(a9, v17, a6);
  }

  return result;
}

uint64_t sub_24DC6E9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_24DCB4DB4();
  WitnessTable = swift_getWitnessTable();
  return sub_24DC6EA90(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t sub_24DC6EA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_24DCB5414();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v29 = &v24 - v14;
  v25 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v24 - v18;
  v27 = a2;
  v28 = a4;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  sub_24DCB4F34();
  if (v38 != 1)
  {
    return v37;
  }

  (*(v25 + 16))(v16, a1, a5);
  v20 = sub_24DCB4F14();
  swift_getAssociatedConformanceWitness();
  v21 = v29;
  sub_24DCB5444();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  v22 = (*(*(v28 - 8) + 48))(v21, 1);
  result = (*(v30 + 8))(v21, v31);
  if (v22 == 1)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC6EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 16) & ~*(*(v14 - 8) + 80)), v13);
  if (v9)
  {
    return (*(v11 + 32))(a9, v13, a6);
  }

  return result;
}

void *sub_24DC6EEC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24DC6EEE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC6EEE0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0D0, &qword_24DCBB138);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F090, &qword_24DCBA478) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_24DC6F0D0(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x2530363C0);
  }
}

uint64_t sub_24DC6F10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24DCB5374();
  if (v8 <= 0)
  {

    return MEMORY[0x28214E790](a2);
  }

  else
  {
    v9 = v8;
    v10 = sub_24DCB4C54();
    v11 = MEMORY[0x28223BE20](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x28223BE20](v11);
    v15[2] = a2;
    v15[3] = sub_24DC72600;
    v15[4] = v12;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DC6E884(sub_24DC72624, v15, v10, MEMORY[0x277CFB918], a2, v13, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], v16);

    return v10;
  }
}

uint64_t sub_24DC6F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = a2;
  v9 = sub_24DC66AB0(a3, a2, a3, a5);
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions._Subscriber(0, a3, v10, v11);
  v12 = sub_24DCB4FF4();
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(0, a3, v13, v14);
  result = sub_24DCB4FF4();
  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = v12;
  *(a4 + 24) = 0;
  *(a4 + 32) = result;
  *(a4 + 40) = a1;
  *(a4 + 48) = v6 & 1;
  return result;
}

uint64_t sub_24DC6F324@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v6 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v6;
  *(a4 + 24) = v5;
  *(a4 + 32) = v7;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3 & 1;
}

uint64_t sub_24DC6F478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, *(v4 + 16), a3, a4);
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24DCB4F74() & 1;
}

uint64_t sub_24DC6F5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(0, *(v4 + 16), a3, a4);
  swift_getWitnessTable();
  return sub_24DCB5454() & 1;
}

uint64_t sub_24DC6F66C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(255, *(v4 + 16), a3, a4);
  sub_24DCB50A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24DCB4F74() & 1;
}

uint64_t sub_24DC6F728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC6F798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A8, &qword_24DCBA490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24DC6F8AC()
{
  result = qword_27F19F0B0;
  if (!qword_27F19F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F0B0);
  }

  return result;
}

uint64_t sub_24DC6F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC6F9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC6FA88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for _BroadcastSequenceStateMachine(255, *a1, a3, a4);
  return sub_24DCB4C04();
}

uint64_t sub_24DC6FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal30_BroadcastSequenceStateMachineV0E0Oyx_G(uint64_t a1)
{
  if ((*(a1 + 72) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 72) & 7;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24DC6FB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v2 = sub_24DCB5104();
  result = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(319, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    result = sub_24DCB5904();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC6FC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DCB5104();
  v9 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v6, v7, v8);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = sub_24DCB5904();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24DC6FDC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5104();
  v11 = type metadata accessor for _BroadcastSequenceStateMachine._OneOrMany(0, v8, v9, v10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = sub_24DCB5904();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 28);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_24DC6FF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC6FF70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24DC6FFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC6FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC70038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 73))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 72);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DC70084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DC700DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_24DC70108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC7015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC70198(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24DC701E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24DC70220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24DC70280(uint64_t *a1, int a2)
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

uint64_t sub_24DC702C8(uint64_t result, int a2, int a3)
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

uint64_t sub_24DC70318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC70354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24DC7039C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC70418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, *(a3 + 16), a3, a4);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 2)
  {
    return v7 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7049C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(0, *(a4 + 16), a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, a3, v7);
}

uint64_t sub_24DC70520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC705D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v4 = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_24DC70630(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_27;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v5 <= 3)
  {
    v6 = ((a2 - 2147483391) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *&a1[v5];
    if (v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (!*&a1[v5])
      {
        goto LABEL_27;
      }

LABEL_23:
      v11 = (v9 - 1) << (8 * v5);
      if (v5 <= 3)
      {
        v12 = *a1;
      }

      else
      {
        v11 = 0;
        v12 = *a1;
      }

      return (v12 | v11) + 0x7FFFFFFF;
    }

    v9 = a1[v5];
    if (a1[v5])
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  v13 = *(&a1[v4 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  if ((v13 + 1) >= 2)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_24DC70768(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (a3 < 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    if (v7 <= 3)
    {
      v8 = ((a3 - 2147483391) >> 8) + 1;
    }

    else
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }
  }

  if (a2 <= 0x7FFFFFFE)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      *(&a1[v6 + 8] & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  v11 = a2 - 0x7FFFFFFF;
  v12 = (a2 - 0x7FFFFFFF) >> 8;
  bzero(a1, v7);
  if (v7 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_27:
      if (v10 == 2)
      {
        *&a1[v7] = v13;
      }

      else
      {
        *&a1[v7] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v10)
  {
    a1[v7] = v13;
  }
}

uint64_t sub_24DC708F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  result = sub_24DCB5904();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(319, v1, v3, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC709C0(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = (v4 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v7 <= 3)
  {
    v8 = ((a2 - 2147483392) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v10 == 4)
  {
    v11 = *&a1[v7];
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else if (v10 == 2)
  {
    v11 = *&a1[v7];
    if (!*&a1[v7])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = a1[v7];
    if (!a1[v7])
    {
LABEL_8:
      v5 = *(&a1[v4 + 8] & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v12 = (v11 - 1) << (8 * v7);
  if (v7 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) ^ 0x80000000;
}

void sub_24DC70AE8(char *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (a3 < 0)
  {
    if (v8 <= 3)
    {
      v10 = ((a3 - 2147483392) >> 8) + 1;
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
      v9 = 1;
    }

    else
    {
      v9 = v11;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v12 = (a2 >> 8) & 0x7FFFFF;
    bzero(a1, (v7 & 0xFFFFFFFFFFFFFFF8) + 25);
    if (v8 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 1;
    }

    if (v8 <= 3)
    {
      *a1 = a2;
      if (v9 > 1)
      {
LABEL_27:
        if (v9 == 2)
        {
          *&a1[v8] = v13;
        }

        else
        {
          *&a1[v8] = v13;
        }

        return;
      }
    }

    else
    {
      *a1 = a2 & 0x7FFFFFFF;
      if (v9 > 1)
      {
        goto LABEL_27;
      }
    }

    if (v9)
    {
      a1[v8] = v13;
    }

    return;
  }

  v9 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_31;
  }

  *&a1[v8] = 0;
  if (a2)
  {
LABEL_32:
    *(&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) = a2 - 1;
  }
}

uint64_t sub_24DC70C68(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v1, v2, v3);
  sub_24DCB5414();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata3;
}

uint64_t sub_24DC70D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v5, v6, v7);
  sub_24DCB5414();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = (*(*(TupleTypeMetadata3 - 8) + 48))(a1, a2, TupleTypeMetadata3);
  if (v9 >= 2)
  {
    return v9 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC70E9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v7, v8, v9);
  sub_24DCB5414();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(*(TupleTypeMetadata3 - 8) + 56);

  return v11(a1, v6, a3, TupleTypeMetadata3);
}

uint64_t sub_24DC70FD4(uint64_t a1)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_24DC710BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = (*(*(TupleTypeMetadata2 - 8) + 48))(a1, a2, TupleTypeMetadata2);
  if (v6 >= 2)
  {
    return v6 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC711B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  sub_24DCB5904();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v8(a1, v6, a3, TupleTypeMetadata2);
}

uint64_t getEnumTagSinglePayload for Metadata.Index(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Metadata.Index(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_24DC7133C(uint64_t a1)
{
  sub_24DC714D8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_24DC713A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
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

uint64_t sub_24DC71434(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F098, &qword_24DCBA480);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void sub_24DC714D8(uint64_t a1)
{
  if (!qword_27F19F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F090, &qword_24DCBA478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F0A0, &qword_24DCBA488);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F19F0B8);
    }
  }
}

uint64_t sub_24DC71564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v4, a3, a4);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v4, v5, v6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v8 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t __swift_get_extra_inhabitant_index_73Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v6, a3, a4);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v6, v7, v8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = (*(*(TupleTypeMetadata2 - 8) + 48))(a1, a2, TupleTypeMetadata2);
  if (v10 >= 2)
  {
    return v10 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_74Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  type metadata accessor for _BroadcastSequenceStateMachine.ConsumerContinuations(255, v7, a3, a4);
  type metadata accessor for _BroadcastSequenceStateMachine.ProducerContinuations(255, v7, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v11(a1, v6, a3, TupleTypeMetadata2);
}

uint64_t sub_24DC71780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC717BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC71848(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_24DC7194C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_24DC71AD0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24DC71B2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_24DC71D00(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
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

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_24DC71F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC71FAC(uint64_t *a1, int a2)
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

uint64_t sub_24DC71FF4(uint64_t result, int a2, int a3)
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

uint64_t sub_24DC72030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for _BroadcastSequenceStateMachine.Subscriptions.ID(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for _BroadcastSequenceStateMachine.Elements.ID(319, v4, v6, v7);
    if (v9 <= 0x3F)
    {
      sub_24DCB5414();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
      sub_24DCB5104();
      result = sub_24DCB5414();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24DC7212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v6 = sub_24DCB5414();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24DC721F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  sub_24DCB5414();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB5104();
  v7 = sub_24DCB5414();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24DC722B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24DCB50A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC72330(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
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
      if (v11 >= 2)
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

  return (v5 | v10) + 255;
}

void sub_24DC72448(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

uint64_t sub_24DC72624(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_24DC72680@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = sub_24DCB53F4();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_24DC726F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {

    sub_24DC57738(a2, a3 & 1);
  }
}

uint64_t sub_24DC72800@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24DC728A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24DC72984(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  *(v2 + *(*v2 + 104)) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t *sub_24DC72A30(uint64_t a1)
{
  v2 = *v1;
  *(v1 + *(*v1 + 104)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t sub_24DC72AF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC2FD00;

  return MEMORY[0x282200308](a1, v4, v5);
}

uint64_t sub_24DC72BA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC72AF4(a1, a2);
}

uint64_t sub_24DC72C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  v9 = v8;
  LOBYTE(v8) = 0;
  atomic_compare_exchange_strong_explicit((v2 + *(v9 + 104)), &v8, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v8)
  {
    result = sub_24DCB55E4();
    __break(1u);
  }

  else
  {
    v10 = *(*v2 + 96);
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v10, v4);
    return (*(v5 + 32))(a2, v7, v4);
  }

  return result;
}

uint64_t sub_24DC72E58()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24DC72F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DC72C4C(a1, a2);
}

uint64_t sub_24DC72F58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC7300C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0D8, &qword_24DCBB270);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DC7303C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC730AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

char *sub_24DC731EC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_24DC73440(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_24DC73478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for MapRPCWriter(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_24DC7353C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(a2 + 24);
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = *(a2 + 32);
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC73658, 0, 0);
}

uint64_t sub_24DC73658()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v0[9] + 16))(v0[10], v1, v0[8]);
  (*(v1 + *(v2 + 52)))(v3);
  v4 = *(v0[3] + 40);
  v9 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_24DC59798;
  v7 = v0[7];
  v6 = v0[8];

  return v9(v7, v6, v4);
}

uint64_t sub_24DC73830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_24DCB54E4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC73900, 0, 0);
}

uint64_t sub_24DC73900()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v16 = *(v0 + 56);
  MEMORY[0x253035690](v2, *(v0 + 56));
  v4 = swift_task_alloc();
  *(v4 + 16) = v3[2];
  v5 = v3[3];
  *(v4 + 24) = v5;
  v6 = v3[4];
  *(v4 + 32) = v6;
  *(v4 + 40) = v2;
  v7 = v3[5];
  *(v4 + 48) = v7;
  *(v4 + 56) = v16;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_24DC59F28(sub_24DC73D8C, v4, v1, v5, v8, WitnessTable, MEMORY[0x277D84950], v0 + 16);
  *(v0 + 96) = v10;
  v11 = v10;
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  *(v0 + 24) = v11;
  v17 = (*(v7 + 24) + **(v7 + 24));
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  v13 = sub_24DCB50A4();
  v14 = swift_getWitnessTable();
  *v12 = v0;
  v12[1] = sub_24DC73BD8;

  return v17(v0 + 24, v13, v14, v6, v7);
}

uint64_t sub_24DC73BD8()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC73D20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24DC73D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC73D8C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 32);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v11 = *(v2 + 16);
  v12 = v6;
  v13 = v7;
  v9 = type metadata accessor for MapRPCWriter(0, &v11);
  result = (*(v8 + *(v9 + 52)))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_24DC73E20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC7353C(a1, a2);
}

uint64_t sub_24DC73EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return sub_24DC73830(a1, a4, a2, a3);
}

uint64_t sub_24DC73F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v33 = a8;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v19 = type metadata accessor for MapRPCWriter(0, &v34);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  (*(v12 + 16))(v14, v30, a6);
  (*(v12 + 32))(v25, v14, a6);
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v26 = &v25[*(type metadata accessor for MapRPCWriter(0, &v34) + 52)];
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  (*(v20 + 16))(v23, v25, v19);

  WitnessTable = swift_getWitnessTable();
  RPCWriter.init<A>(wrapping:)(v23, v19, WitnessTable, v33);
  return (*(v20 + 8))(v25, v19);
}

uint64_t sub_24DC741CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24DC74548();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC74254(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
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

_DWORD *sub_24DC74390(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 32) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 32) - 8) + 64);
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

unint64_t sub_24DC74548()
{
  result = qword_27F19F0E0;
  if (!qword_27F19F0E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F19F0E0);
  }

  return result;
}

uint64_t dispatch thunk of ServerTransport.listen(streamHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return v11(a1, a2, a3, a4);
}

uint64_t RPCWriter.init<A>(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t RPCWriter.write(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DC74768, 0, 0);
}

uint64_t sub_24DC74768()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_24DC5D330;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t RPCWriter.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_24DC748B8, 0, 0);
}

uint64_t sub_24DC748B8()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_24DC749E8;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_24DC749E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC74ADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return RPCWriter.write(_:)(a1);
}

uint64_t sub_24DC74B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC2FD00;

  return RPCWriter.write<A>(contentsOf:)(a1, v8, a2, a3);
}

uint64_t sub_24DC74C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC74C98(char a1, char a2)
{
  if (*&aH[8 * a1] == *&aH[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24DCB57A4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24DC74D08(char a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC74D68(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC74DB0(uint64_t a1, char a2)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC74E0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC75CCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24DC74E74(uint64_t result, unsigned __int8 a2)
{
  v2 = a2;
  if (a2 > 2u)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    if ((result * 3600) >> 64 != (3600 * result) >> 63)
    {
      __break(1u);
      return result;
    }

    return sub_24DCB5964();
  }

  if (a2 != 1)
  {
    result *= 1000000000000000000;
    return result;
  }

  v2 = 60 * result;
  if ((result * 60) >> 64 == (60 * result) >> 63)
  {
    return sub_24DCB5964();
  }

  __break(1u);
LABEL_6:
  v3 = 1000000000000 * result;
  if (v2 != 4)
  {
    v3 = 1000000000 * result;
  }

  if (v2 != 3)
  {
    return v3;
  }

  result *= 1000000000000000;
  return result;
}

uint64_t sub_24DC74FA8(uint64_t a1, char a2)
{
  v2 = sub_24DCB5744();
  MEMORY[0x253035590](v2);

  sub_24DCB4D54();

  return 0;
}

uint64_t sub_24DC7504C(uint64_t a1, unint64_t a2)
{
  if ((sub_24DCB4E24() - 9) < 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_2;
  }

  v5 = sub_24DC3CAB4(1, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (!((v5 ^ v7) >> 14))
  {
    goto LABEL_14;
  }

  v12 = sub_24DC75C00(v5, v7, v9, v11, 10);
  if ((v13 & 0x100) != 0)
  {
    v15 = sub_24DC75668(v5, v7, v9, v11, 10);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_2:

    return 0;
  }

  v14 = v13;
  v15 = v12;

  if (v14)
  {
    goto LABEL_2;
  }

LABEL_10:
  result = sub_24DC751B4(a1, a2);
  if (!v18)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = v18;

  if (sub_24DC75CCC(v19, v20) == 6)
  {
    return 0;
  }

  result = v15;
  if (v15 > 0x5F5E0FF)
  {
    __break(1u);
LABEL_14:

    goto LABEL_2;
  }

  return result;
}

uint64_t sub_24DC751B4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24DCB4E34();
  return sub_24DCB4ED4();
}

unint64_t sub_24DC75234(unint64_t result)
{
  if (result > 0x5F5E0FF)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DC7524C(uint64_t a1, uint64_t a2)
{
  result = sub_24DCB5954();
  if (!result)
  {
    v5 = v3 / 1000000000.0;
    if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        result = v5;
        v4 = 5;
        return sub_24DC762F0(result, v4);
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result >= 100000000)
  {
    v4 = 2;
    return sub_24DC762F0(result, v4);
  }

  v6 = v3 / 1000000000.0;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v6 + 999) > 0x7CE)
  {
    if ((result * 1000) >> 64 == (1000 * result) >> 63)
    {
      v7 = 1000000 * result;
      if ((1000 * result * 1000) >> 64 == (1000000 * result) >> 63)
      {
        v8 = v6 / 1000;
        result = v8 + v7;
        if (!__OFADD__(v8, v7))
        {
          v4 = 4;
          return sub_24DC762F0(result, v4);
        }

        goto LABEL_28;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (result < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_24DC753C0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 == a3)
  {
    if (*&aH[8 * a2] == *&aH[8 * a4])
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_24DCB57A4();
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_24DC75438(uint64_t a1, uint64_t a2, char a3)
{
  MEMORY[0x253036020](a2);
  sub_24DCB4D44();
}

uint64_t sub_24DC75494(uint64_t a1, char a2)
{
  sub_24DCB58A4();
  MEMORY[0x253036020](a1);
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC75524(uint64_t a1)
{
  MEMORY[0x253036020](*v1);
  sub_24DCB4D44();
}

uint64_t sub_24DC75588(uint64_t a1)
{
  v2 = *v1;
  sub_24DCB58A4();
  MEMORY[0x253036020](v2);
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC755F8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_24DC74C98(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7561C(uint64_t a1)
{
  result = 60 * a1;
  if ((a1 * 60) >> 64 == result >> 63)
  {
    return sub_24DCB5964();
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC75644(uint64_t a1)
{
  result = 3600 * a1;
  if ((a1 * 3600) >> 64 == result >> 63)
  {
    return sub_24DCB5964();
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_24DC75668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_24DC764F0();

  result = sub_24DCB4EE4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_24DC329BC(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24DCB5504();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24DC75C00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_24DCB5504();
  }

  result = sub_24DC75E84(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_24DC75CCC(uint64_t a1, uint64_t a2)
{
  if (a1 == 72 && a2 == 0xE100000000000000 || (sub_24DCB57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 77 && a2 == 0xE100000000000000 || (sub_24DCB57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 83 && a2 == 0xE100000000000000 || (sub_24DCB57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 109 && a2 == 0xE100000000000000 || (sub_24DCB57A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 117 && a2 == 0xE100000000000000 || (sub_24DCB57A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 110 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_24DCB57A4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24DC75E84(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_24DC3312C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_24DCB4EA4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_24DC3312C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_24DC3312C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_24DCB4EA4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_24DC762F0(unint64_t result, unsigned __int8 a2)
{
  if (result < 1)
  {
    return 0;
  }

  while (result > 0x5F5E0FF)
  {
    if (a2 > 2u)
    {
      if (a2 == 4)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }

      v3 = 1000;
      if (a2 == 3)
      {
        a2 = 2;
      }

      else
      {
        a2 = v2;
      }
    }

    else if (a2 == 1)
    {
      a2 = 0;
      v3 = 60;
    }

    else
    {
      if (a2 != 2)
      {
        return 99999999;
      }

      a2 = 1;
      v3 = 60;
    }

    if (result % v3)
    {
      result = result / v3 + 1;
    }

    else
    {
      result /= v3;
    }
  }

  return result;
}

unint64_t sub_24DC7639C()
{
  result = qword_27F19F0E8;
  if (!qword_27F19F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F0E8);
  }

  return result;
}

unint64_t sub_24DC763F4()
{
  result = qword_27F19F0F0;
  if (!qword_27F19F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F0F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Timeout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Timeout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_24DC764F0()
{
  result = qword_27F19F0F8;
  if (!qword_27F19F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F0F8);
  }

  return result;
}

uint64_t RPCWriter.Closable.init<A>(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t RPCWriter.Closable.write(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DC765DC, 0, 0);
}

uint64_t sub_24DC765DC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_24DC5D330;
  v6 = v0[2];

  return v8(v6, v2, v4);
}

uint64_t RPCWriter.Closable.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_24DC76730, 0, 0);
}

uint64_t sub_24DC76730()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_24DC749E8;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v2, v4);
}

uint64_t sub_24DC76884()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_24DC769A8;

  return v6(v2, v3);
}

uint64_t sub_24DC769A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t RPCWriter.Closable.finish(throwing:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DC76ABC, 0, 0);
}

uint64_t sub_24DC76ABC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_24DC5D330;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_24DC76BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC334F4;

  return RPCWriter.Closable.finish()();
}

uint64_t sub_24DC76C74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC2FD00;

  return RPCWriter.Closable.finish(throwing:)(a1);
}

uint64_t sub_24DC76D08(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DC76D44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return RPCWriter.Closable.write(_:)(a1);
}

uint64_t sub_24DC76DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC2FD00;

  return RPCWriter.Closable.write<A>(contentsOf:)(a1, v8, a2, a3);
}

uint64_t sub_24DC76E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC76ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = v19;
  v8[36] = v20;
  v8[33] = v17;
  v8[34] = v18;
  v8[31] = v15;
  v8[32] = v16;
  v8[29] = a8;
  v8[30] = v14;
  v8[27] = a6;
  v8[28] = a7;
  v8[25] = a4;
  v8[26] = a5;
  v8[23] = a2;
  v8[24] = a3;
  v8[22] = a1;
  v10 = type metadata accessor for RPCResponsePart(0, v15, v18, a4);
  v8[37] = v10;
  v8[38] = *(v10 - 8);
  v8[39] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[40] = v11;
  *v11 = v8;
  v11[1] = sub_24DC7701C;

  return sub_24DC779F4((v8 + 2), a2 + 32, v15, v18);
}

uint64_t sub_24DC7701C()
{

  return MEMORY[0x2822009F8](sub_24DC77118, 0, 0);
}

uint64_t sub_24DC77118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = v4;
  RequestPart = type metadata accessor for ServerRPCExecutor.OnFirstRequestPart(0, *(v4 + 248), *(v4 + 272), a4);
  *(v4 + 328) = RequestPart;
  v6 = *(RequestPart - 8);
  *(v4 + 336) = v6;
  (*(v6 + 16))(v4 + 72, v4 + 16, RequestPart);
  if (*(v4 + 120))
  {
    v7 = *(v4 + 312);
    v8 = *(v4 + 296);
    v9 = *(v4 + 72);
    v10 = *(v4 + 80);
    v11 = *(v4 + 88);
    v13 = *(v4 + 96);
    v12 = *(v4 + 104);
    *(v4 + 360) = v11;
    *(v4 + 368) = v13;
    *(v4 + 376) = v12;
    v34 = v9;
    Status.Code.init(_:)(&v34);

    Status.init(code:message:)(&v35, v10, v11, &v33);
    v14 = v33;
    *(v4 + 384) = v33;
    *v7 = v14;
    v7[1] = v13;
    swift_storeEnumTagMultiPayload();

    v15 = swift_task_alloc();
    *(v4 + 392) = v15;
    *(v4 + 400) = type metadata accessor for RPCWriter.Closable(0, v8, v16, v17);
    *v15 = v4;
    v15[1] = sub_24DC775A4;
    v18 = *(v4 + 312);

    return RPCWriter.Closable.write(_:)(v18);
  }

  else
  {
    v20 = *(v4 + 184);
    v21 = *(v4 + 72);
    *(v4 + 344) = v21;
    v22 = *(v4 + 96);
    *(v4 + 128) = *(v4 + 80);
    *(v4 + 144) = v22;
    *(v4 + 160) = *(v4 + 112);
    *(v4 + 168) = v21;
    v23 = swift_task_alloc();
    *(v4 + 352) = v23;
    *v23 = v4;
    v23[1] = sub_24DC7738C;
    v25 = *(v4 + 256);
    v24 = *(v4 + 272);
    v27 = *(v4 + 224);
    v26 = *(v4 + 240);
    v28 = *(v4 + 208);
    v29 = *(v4 + 216);
    v30 = *(v4 + 192);
    v31 = *(v4 + 200);
    v32 = *(v4 + 176);
    v42 = *(v4 + 288);
    v40 = v25;
    v41 = v24;
    v38 = v27;
    v39 = v26;

    return sub_24DC78150(v32, (v4 + 168), v4 + 128, v20 + 72, v30, v31, v28, v29);
  }
}

uint64_t sub_24DC7738C()
{

  return MEMORY[0x2822009F8](sub_24DC774A4, 0, 0);
}

uint64_t sub_24DC774A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[41];
  v6 = v4[42];
  v7 = type metadata accessor for RPCRequestPart(255, v4[31], v4[34], a4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = type metadata accessor for RPCAsyncSequence.AsyncIterator(255, v7, v8, MEMORY[0x277D84950]);
  v12 = type metadata accessor for UnsafeTransfer(0, v9, v10, v11);
  (*(*(v12 - 8) + 8))(v4 + 16, v12);
  (*(v6 + 8))(v4 + 2, v5);

  v13 = v4[1];

  return v13();
}

uint64_t sub_24DC775A4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = v2[39];
  v6 = v2[38];
  v7 = v2[37];
  if (v0)
  {
    MEMORY[0x2530363B0](v0);
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_24DC77954, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[51] = v8;
    *v8 = v4;
    v8[1] = sub_24DC777A8;

    return RPCWriter.Closable.finish()();
  }
}

uint64_t sub_24DC777A8()
{

  return MEMORY[0x2822009F8](sub_24DC778A4, 0, 0);
}

uint64_t sub_24DC778A4()
{
  v1 = v0[47];
  v2 = v0[41];
  v3 = v0[42];

  MEMORY[0x2530363B0](v1);

  (*(v3 + 8))(v0 + 2, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DC77954()
{
  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_24DC777A8;

  return RPCWriter.Closable.finish()();
}

uint64_t sub_24DC779F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = type metadata accessor for RPCRequestPart(255, a3, a4, a4);
  v4[24] = sub_24DCB5414();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = sub_24DCB5904();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC77B14, 0, 0);
}

uint64_t sub_24DC77B14()
{
  v1 = MEMORY[0x277D84950];
  type metadata accessor for RPCAsyncSequence(0, *(v0 + 184), *(v0 + 200), MEMORY[0x277D84950]);
  v8 = *(v0 + 168);
  RPCAsyncSequence.makeAsyncIterator()((v0 + 72));
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *(v2 + 16) = v8;
  *(v2 + 32) = v0 + 72;
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_24DC77C24;
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  return sub_24DC8C5F4(v4, dword_24DCBB708, v2, v5, v6, v1);
}

uint64_t sub_24DC77C24()
{

  return MEMORY[0x2822009F8](sub_24DC77D3C, 0, 0);
}

uint64_t sub_24DC77D3C()
{
  v41 = v0;
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v4 = **(v0 + 224);
    v39 = *sub_24DC412F4();
    MEMORY[0x2530363C0](v4);
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v39, 0xD000000000000038, 0x800000024DCC5870, &v40, v4, v35);
    MEMORY[0x2530363B0](v4);
    (*(v3 + 8))(v1, v2);
    v5 = v36;
    v6 = v38;
    v7 = v37;
    *(v0 + 16) = v35[0];
    *(v0 + 24) = v5;
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    *(v0 + 64) = 1;
  }

  else
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 184);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v11 = *(v0 + 232);
      v12 = *(v0 + 208);
      v13 = *(v0 + 216);
      v39 = *sub_24DC41378();
      sub_24DC31044();
      RPCError.init(code:message:metadata:cause:)(&v39, 0xD00000000000001CLL, 0x800000024DCC58B0, &v40, 0, v35);
      (*(v13 + 8))(v11, v12);
      v14 = v36;
      v15 = v38;
      v16 = v37;
      *(v0 + 16) = v35[0];
      *(v0 + 24) = v14;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      *(v0 + 64) = 1;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = *(v0 + 232);
      v19 = *(v0 + 208);
      v20 = *(v0 + 216);
      if (EnumCaseMultiPayload == 1)
      {
        v39 = *sub_24DC41378();
        sub_24DC31044();
        RPCError.init(code:message:metadata:cause:)(&v39, 0xD000000000000078, 0x800000024DCC58D0, &v40, 0, v35);
        (*(v20 + 8))(v18, v19);
        v21 = v36;
        v22 = v38;
        v23 = v37;
        *(v0 + 16) = v35[0];
        *(v0 + 24) = v21;
        *(v0 + 32) = v23;
        *(v0 + 48) = v22;
        *(v0 + 64) = 1;
        (*(v10 + 8))(v8, v9);
      }

      else
      {
        v24 = *(v0 + 200);
        *(v0 + 16) = *v8;
        v25 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v9, v24, MEMORY[0x277D84950]);
        (*(*(v25 - 8) + 16))(v0 + 112, v0 + 72, v25);
        sub_24DC72ABC(v0 + 112, v25, v0 + 24);
        (*(v20 + 8))(v18, v19);
        *(v0 + 64) = 0;
      }
    }
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 184);
  v28 = *(v0 + 152);
  v29 = *(v0 + 16);
  v30 = *(v0 + 32);
  v31 = *(v0 + 48);
  *(v28 + 48) = *(v0 + 64);
  *(v28 + 16) = v30;
  *(v28 + 32) = v31;
  *v28 = v29;
  v32 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v27, v26, MEMORY[0x277D84950]);
  (*(*(v32 - 8) + 8))(v0 + 72, v32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24DC78150(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  *(v8 + 88) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 32) = a1;
  v9 = *a2;
  *(v8 + 152) = v15;
  *(v8 + 160) = v9;
  return MEMORY[0x2822009F8](sub_24DC781A4, 0, 0);
}

uint64_t sub_24DC781A4()
{
  v1 = sub_24DC7F2F4();
  v3 = v0[20];
  if (v4)
  {
    v0[2] = v3;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_24DC78444;
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[4];

    return sub_24DC787F4(v12, v0 + 2, v10, v11, v8, v9, v6, v7);
  }

  else
  {
    v0[3] = v3;
    v14 = v1;
    v15 = v2;
    v16 = swift_task_alloc();
    v0[21] = v16;
    *v16 = v0;
    v16[1] = sub_24DC78350;
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[4];

    return sub_24DC78538(v14, v15, v21, v0 + 3, v19, v20, v17, v18);
  }
}

uint64_t sub_24DC78350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC78444()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC78538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = *a4;
  *(v8 + 152) = v16;
  *(v8 + 160) = v9;
  return MEMORY[0x2822009F8](sub_24DC78594, 0, 0);
}

uint64_t sub_24DC78594()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v14 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144);
  v8 = *(v0 + 40);
  v9 = *(v0 + 56);
  v10 = *(v0 + 72);
  *(v4 + 16) = *(v0 + 96);
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = v14;
  *(v4 + 96) = v3;
  *(v4 + 104) = v1;
  *(v4 + 112) = v8;
  *(v4 + 128) = v9;
  *(v4 + 144) = v10;
  *(v4 + 160) = v2;
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_24DC786C8;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v11, v12);
}

uint64_t sub_24DC786C8()
{

  return MEMORY[0x2822009F8](sub_24DC787E0, 0, 0);
}

uint64_t sub_24DC787F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[62] = v28;
  v8[63] = v29;
  v8[60] = v26;
  v8[61] = v27;
  v8[58] = v24;
  v8[59] = v25;
  v8[56] = v22;
  v8[57] = v23;
  v8[54] = a8;
  v8[55] = v21;
  v8[52] = a6;
  v8[53] = a7;
  v8[50] = a4;
  v8[51] = a5;
  v8[48] = a1;
  v8[49] = a3;
  v10 = type metadata accessor for RPCResponsePart(0, v24, v27, a4);
  v8[64] = v10;
  v8[65] = *(v10 - 8);
  v8[66] = swift_task_alloc();
  v11 = *(v25 - 8);
  v8[67] = v11;
  v8[68] = *(v11 + 64);
  v8[69] = swift_task_alloc();
  v13 = type metadata accessor for RPCRequestPart(255, v24, v27, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8[70] = v14;
  v15 = type metadata accessor for RPCAsyncSequence.AsyncIterator(255, v13, v14, MEMORY[0x277D84950]);
  v8[71] = v15;
  WitnessTable = swift_getWitnessTable();
  v8[72] = type metadata accessor for UncheckedAsyncIteratorSequence(255, v15, WitnessTable, v17);
  v8[73] = swift_getWitnessTable();
  v18 = sub_24DCB5774();
  v8[74] = v18;
  v8[75] = *(v18 - 8);
  v8[76] = swift_task_alloc();
  v8[77] = *a2;

  return MEMORY[0x2822009F8](sub_24DC78A6C, 0, 0);
}

uint64_t sub_24DC78A6C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v19 = *(v0 + 504);
  v3 = *(v0 + 480);
  v24 = *(v0 + 488);
  v25 = *(v0 + 496);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 456);
  v18 = *(v0 + 448);
  v7 = *(v0 + 408);
  v22 = *(v0 + 384);
  v23 = *(v0 + 440);
  v20 = *(v0 + 424);
  v21 = vextq_s8(*(v0 + 608), *(v0 + 608), 8uLL);
  (*(*(*(v0 + 568) - 8) + 16))(v0 + 304, *(v0 + 392));
  *(v0 + 376) = sub_24DC72984(v0 + 304);
  (*(v2 + 16))(v1, v7, v4);
  v8 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v18;
  *(v9 + 3) = v6;
  *(v9 + 4) = v5;
  *(v9 + 5) = v4;
  *(v9 + 6) = v3;
  *(v9 + 7) = v24;
  *(v9 + 8) = v25;
  *(v9 + 9) = v19;
  (*(v2 + 32))(&v9[v8], v1, v4);
  sub_24DCB5274();

  v10 = swift_task_alloc();
  *(v0 + 624) = v10;
  *(v10 + 16) = v18;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v3;
  *(v10 + 56) = v24;
  *(v10 + 64) = v25;
  *(v10 + 72) = v19;
  *(v10 + 80) = v21;
  *(v10 + 96) = v22;
  *(v10 + 104) = v20;
  *(v10 + 120) = v23;
  v11 = swift_task_alloc();
  *(v0 + 632) = v11;
  v14 = type metadata accessor for StreamingServerResponse(0, v6, v12, v13);
  *(v0 + 640) = v14;
  *v11 = v0;
  v11[1] = sub_24DC78CF4;
  v15 = *(v0 + 560);
  v16 = MEMORY[0x277D84950];

  return sub_24DC8C5F4(v0 + 64, dword_24DCBB748, v10, v14, v15, v16);
}

uint64_t sub_24DC78CF4()
{

  return MEMORY[0x2822009F8](sub_24DC78E0C, 0, 0);
}

uint64_t sub_24DC78E0C()
{
  v45 = v0;
  v1 = *(v0 + 80);
  *(v0 + 112) = *(v0 + 64);
  v2 = *(v0 + 504);
  v3 = *(v0 + 448);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 105);
  *(v0 + 128) = v1;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 153) = v6;
  v7 = sub_24DCB5904();
  v8 = sub_24DC2E0D8();
  *(v0 + 648) = v8;
  v40 = *(v0 + 472);
  v41 = *(v0 + 456);
  v39 = *(v0 + 488);
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC7AE50, 0, v7, &type metadata for RPCError, v8, v0 + 16);
  sub_24DC7BD40(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 153));
  *(v0 + 160) = *(v0 + 16);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 57);
  *(v0 + 176) = *(v0 + 32);
  *(v0 + 192) = v9;
  *(v0 + 200) = v10;
  *(v0 + 201) = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v3;
  *(v12 + 24) = v41;
  *(v12 + 40) = v40;
  *(v12 + 56) = v39;
  *(v12 + 72) = v2;
  v13 = sub_24DCB5904();
  type metadata accessor for StreamingServerResponse.Contents(0, v41, v14, v15);
  sub_24DC2F064(sub_24DC7BDD0, v13, v0 + 208);

  sub_24DC7BDF8(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 201));
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  *(v0 + 656) = v16;
  *(v0 + 664) = v17;
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  *(v0 + 672) = v18;
  *(v0 + 680) = v19;
  v20 = *(v0 + 240);
  *(v0 + 688) = v20;
  v21 = *(v0 + 248);
  *(v0 + 58) = v21;
  if (v21)
  {
    v43 = v16;

    MEMORY[0x2530363C0](v20);
    Status.Code.init(_:)(&v43);

    Status.init(code:message:)(&v44, v17, v18, &v42);
    v22 = v42;

    sub_24DC7BD50(v16, v17, v18, v19, v20, 1);
    *(v0 + 712) = v22;
    v23 = *(v0 + 528);
    v24 = *(v0 + 512);
    *v23 = v22;
    v23[1] = v19;
    swift_storeEnumTagMultiPayload();

    v25 = swift_task_alloc();
    *(v0 + 720) = v25;
    *(v0 + 728) = type metadata accessor for RPCWriter.Closable(0, v24, v26, v27);
    *v25 = v0;
    v25[1] = sub_24DC7952C;
    v28 = *(v0 + 528);

    return RPCWriter.Closable.write(_:)(v28);
  }

  else
  {
    v30 = *(v0 + 416);
    v31 = *(v0 + 400);
    v32 = swift_task_alloc();
    *(v0 + 696) = v32;
    v33 = *(v0 + 464);
    v34 = *(v0 + 480);
    v35 = *(v0 + 496);
    *(v32 + 16) = *(v0 + 448);
    *(v32 + 32) = v33;
    *(v32 + 48) = v34;
    *(v32 + 64) = v35;
    *(v32 + 80) = v31;
    *(v32 + 88) = v16;
    *(v32 + 96) = v17;
    *(v32 + 104) = v18;
    *(v32 + 112) = v30;
    v36 = swift_task_alloc();
    *(v0 + 704) = v36;
    *v36 = v0;
    v36[1] = sub_24DC791F0;
    v37 = *(v0 + 560);
    v38 = MEMORY[0x277D84950];

    return sub_24DC8C5F4(v0 + 344, &unk_24DCBB758, v32, &type metadata for Metadata, v37, v38);
  }
}

uint64_t sub_24DC791F0()
{

  return MEMORY[0x2822009F8](sub_24DC79308, 0, 0);
}

uint64_t sub_24DC79308()
{
  v22 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 352);
  *(v0 + 360) = *(v0 + 344);
  *(v0 + 368) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F100, &qword_24DCBB760);
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC7B744, 0, v3, &type metadata for RPCError, v1, v0 + 256);
  sub_24DC7BF54(*(v0 + 360), *(v0 + 368));
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  if (v9)
  {
    v20 = *(v0 + 256);

    MEMORY[0x2530363C0](v8);
    Status.Code.init(_:)(&v20);

    Status.init(code:message:)(&v21, v4, v6, &v19);
    sub_24DC7BF60(v5, v4, v6, v7, v8, 1);
    v10 = v19;

    v11 = v7;
  }

  else
  {

    v10 = *sub_24DC43128();

    v11 = v5;
  }

  sub_24DC7BF60(v5, v4, v6, v7, v8, v9);
  *(v0 + 712) = v10;
  v12 = *(v0 + 528);
  v13 = *(v0 + 512);
  *v12 = v10;
  v12[1] = v11;
  swift_storeEnumTagMultiPayload();

  v14 = swift_task_alloc();
  *(v0 + 720) = v14;
  *(v0 + 728) = type metadata accessor for RPCWriter.Closable(0, v13, v15, v16);
  *v14 = v0;
  v14[1] = sub_24DC7952C;
  v17 = *(v0 + 528);

  return RPCWriter.Closable.write(_:)(v17);
}

uint64_t sub_24DC7952C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = v2[66];
  v6 = v2[65];
  v7 = v2[64];
  if (v0)
  {
    MEMORY[0x2530363B0](v0);
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_24DC79924, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[92] = v8;
    *v8 = v4;
    v8[1] = sub_24DC7972C;

    return RPCWriter.Closable.finish()();
  }
}

uint64_t sub_24DC7972C()
{

  return MEMORY[0x2822009F8](sub_24DC79828, 0, 0);
}

uint64_t sub_24DC79828()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 656);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  v9 = *(v0 + 592);

  sub_24DC7BD50(v6, v5, v4, v3, v2, v1);
  (*(v8 + 8))(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24DC79924()
{
  v1 = swift_task_alloc();
  *(v0 + 736) = v1;
  *v1 = v0;
  v1[1] = sub_24DC7972C;

  return RPCWriter.Closable.finish()();
}

uint64_t sub_24DC799C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v17;
  *(v8 + 256) = v15;
  *(v8 + 272) = v16;
  *(v8 + 224) = v13;
  *(v8 + 240) = v14;
  *(v8 + 192) = v11;
  *(v8 + 208) = v12;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 136) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  *(v8 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC79A8C, 0, 0);
}

uint64_t sub_24DC79A8C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = sub_24DCB51C4();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_24DC7CDA8(v2, v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v8 = *(v0 + 96);
  *(v7 + 112) = *(v0 + 80);
  *(v7 + 128) = v8;
  *(v7 + 144) = *(v0 + 112);
  v9 = *(v0 + 32);
  *(v7 + 48) = *(v0 + 16);
  *(v7 + 64) = v9;
  v10 = *(v0 + 64);
  *(v7 + 80) = *(v0 + 48);
  *(v7 + 96) = v10;
  sub_24DC7A1A0(v1, &unk_24DCBB940, v7);
  sub_24DC3DFD4(v1, &qword_27F19F050, &qword_24DCB9EB0);
  *(v0 + 128) = v3;
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_24DC79C34;
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);

  return sub_24DC787F4(v18, (v0 + 128), v16, v17, v14, v15, v12, v13);
}

uint64_t sub_24DC79C34()
{

  return MEMORY[0x2822009F8](sub_24DC79D30, 0, 0);
}

uint64_t sub_24DC79D30()
{
  sub_24DCB5164();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC79DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_24DCB55C4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC79E70, 0, 0);
}

uint64_t sub_24DC79E70(uint64_t a1)
{
  v2 = sub_24DCB59A4();
  v4 = v3;
  sub_24DCB5854();
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_24DC79F48;
  v7 = v1[2];
  v6 = v1[3];

  return sub_24DC539F0(v7, v6, v2, v4, 0);
}

uint64_t sub_24DC79F48()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24DC7A138;
  }

  else
  {
    v5 = sub_24DC7A0B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC7A0B8()
{

  ServerContext.RPCCancellationHandle.cancel()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7A138()
{
  MEMORY[0x2530363B0](*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_24DC7CF18(a1, v20 - v9);
  v11 = sub_24DCB51C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24DC3DFD4(v10, &qword_27F19F050, &qword_24DCB9EB0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_24DCB50D4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DCB51B4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_24DC7A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = v13;
  v7[8] = v14;
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *(a6 - 8);
  v7[10] = swift_task_alloc();
  v10 = type metadata accessor for RPCRequestPart(0, a6, v13, v9);
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC7A4DC, 0, 0);
}

uint64_t sub_24DC7A4DC()
{
  v12 = v0;
  (*(v0[12] + 16))(v0[13], v0[3], v0[11]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[7];
    v4 = v0[8];
    v6 = v0[5];
    v5 = v0[6];
    (*(v2 + 32))(v1, v0[13], v6);
    (*(v4 + 16))(v1, v6, v3, v5, v4);
    (*(v2 + 8))(v1, v6);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    v10 = *sub_24DC41378();
    sub_24DC31044();
    sub_24DC2E0D8();
    swift_allocError();
    RPCError.init(code:message:metadata:cause:)(&v10, 0xD0000000000000A0, 0x800000024DCC5980, &v11, 0, v8);
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24DC7A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v23;
  *(v8 + 168) = v22;
  *(v8 + 152) = v20;
  *(v8 + 160) = v21;
  *(v8 + 136) = v18;
  *(v8 + 144) = v19;
  *(v8 + 120) = a8;
  *(v8 + 128) = v17;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  v9 = type metadata accessor for RPCRequestPart(255, v18, v21, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  *(v8 + 192) = v10;
  v11 = type metadata accessor for RPCAsyncSequence.AsyncIterator(255, v9, v10, MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for UncheckedAsyncIteratorSequence(255, v11, WitnessTable, v13);
  swift_getWitnessTable();
  v14 = sub_24DCB5774();
  *(v8 + 200) = v14;
  *(v8 + 208) = *(v14 - 8);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC7A864, 0, 0);
}

uint64_t sub_24DC7A864()
{
  v20 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(*(v0 + 208) + 16);
  v18 = *(v0 + 72);
  v14 = *(v0 + 120);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);
  v15 = *(v0 + 168);
  v6(v1, v5, v2);

  swift_getWitnessTable();
  RPCAsyncSequence.init<A>(wrapping:)();
  StreamingServerRequest.init(metadata:messages:)(&v18, v19, v0 + 16);
  v7 = swift_allocObject();
  *(v0 + 224) = v7;
  *(v7 + 16) = v14;
  *(v7 + 32) = v17;
  *(v7 + 48) = v16;
  *(v7 + 64) = v15;
  *(v7 + 80) = v4;
  *(v7 + 88) = v3;

  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_24DC7AA14;
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);

  return sub_24DC7AD60(v12, v0 + 16, v10, v11, &unk_24DCBB928, v7, v9);
}

uint64_t sub_24DC7AA14()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(v2 + 240) = v0;

  v7 = type metadata accessor for StreamingServerRequest(0, v3, v5, v6);
  (*(*(v7 - 8) + 8))(v2 + 16, v7);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC7ABDC, 0, 0);
  }

  else
  {

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_24DC7ABDC()
{
  **(v0 + 184) = *(v0 + 240);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7AC4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24DC334F4;

  return v10(a1, a2, a3);
}

uint64_t sub_24DC7AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24DC2FD00;

  return sub_24DC7BFBC(a1, a2, a3, a4, 0, a5, a6, a7);
}

uint64_t sub_24DC7AE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  MEMORY[0x2530363C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F108, qword_24DCBB788);
  if (swift_dynamicCast())
  {
    sub_24DC5B2AC(v11, v14);
    v4 = v15;
    v5 = v16;
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v6);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v8);
    RPCError.init<A>(_:)(v8, v4, v5, a2);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24DC3DFD4(v11, &qword_27F19F110, &qword_24DCBB918);
    LOBYTE(v11[0]) = *sub_24DC412F4();
    sub_24DC31044();
    MEMORY[0x2530363C0](a1);
    return RPCError.init(code:message:metadata:cause:)(v11, 0xD000000000000026, 0x800000024DCC5950, v14, a1, a2);
  }
}

uint64_t sub_24DC7B014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v15;
  v8[18] = v16;
  v8[15] = v13;
  v8[16] = v14;
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = type metadata accessor for RPCResponsePart(0, v12, v14, a4);
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC7B100, 0, 0);
}

uint64_t sub_24DC7B100()
{
  v1 = v0[19];
  *v0[21] = v0[9];
  swift_storeEnumTagMultiPayload();

  v2 = swift_task_alloc();
  v0[22] = v2;
  v0[23] = type metadata accessor for RPCWriter.Closable(0, v1, v3, v4);
  *v2 = v0;
  v2[1] = sub_24DC7B1E0;
  v5 = v0[21];

  return RPCWriter.Closable.write(_:)(v5);
}

uint64_t sub_24DC7B1E0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 192) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24DC7B664;
  }

  else
  {
    v5 = sub_24DC7B350;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC7B350()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[8];
  WitnessTable = swift_getWitnessTable();
  sub_24DC9F22C(v9, v7, v6, v5, v1, v4, v2, WitnessTable, v0 + 2, v3);
  v14 = (v8 + *v8);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_24DC7B4C4;
  v12 = v0[7];

  return v14(v12, v0 + 2);
}

uint64_t sub_24DC7B4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(v2 + 208) = v0;

  v7 = type metadata accessor for RPCWriter(0, v3, v5, v6);
  (*(*(v7 - 8) + 8))(v2 + 16, v7);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC7B6D4, 0, 0);
  }

  else
  {

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_24DC7B664()
{
  **(v0 + 144) = *(v0 + 192);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7B6D4()
{
  **(v0 + 144) = *(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7B744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *sub_24DC412F4();
  sub_24DC31044();
  MEMORY[0x2530363C0](a1);
  return RPCError.init(code:message:metadata:cause:)(&v6, 0, 0xE000000000000000, &v5, a1, a2);
}

uint64_t sub_24DC7B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  v11 = type metadata accessor for RPCRequestPart(255, a3, a4, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v13 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v11, v12, MEMORY[0x277D84950]);
  *v9 = v5;
  v9[1] = sub_24DC52874;

  return RPCAsyncSequence.AsyncIterator.next()(a1, v13);
}

uint64_t sub_24DC7B8AC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC334F4;

  return sub_24DC7B7A8(a1, v8, v6, v7, a2);
}

uint64_t sub_24DC7B970(uint64_t a1, uint64_t a2)
{
  v10 = v2[11];
  v11 = v2[10];
  v8 = v2[13];
  v9 = v2[12];
  v4 = v2[14];
  v5 = v2[15];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC2FD00;

  return sub_24DC799C0(v6, a2, v11, v10, v9, v8, v4, v5);
}

uint64_t sub_24DC7BA98()
{
  (*(*(*(v0 + 40) - 8) + 8))(v0 + ((*(*(*(v0 + 40) - 8) + 80) + 80) & ~*(*(*(v0 + 40) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_24DC7BB18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = (*(*(v7 - 8) + 80) + 80) & ~*(*(v7 - 8) + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC334F4;

  return sub_24DC7A3A8(a1, a2, v2 + v8, v9, v10, v6, v7);
}

uint64_t sub_24DC7BC1C(uint64_t a1)
{
  v12 = v1[2];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[15];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24DC334F4;

  return sub_24DC7A6C8(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_24DC7BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    JUMPOUT(0x2530363B0);
  }

  return sub_24DC7BD50(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t sub_24DC7BD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC7BDD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return sub_24DC7CC28(v3, v2, v4, v5, v6, v7);
}

uint64_t sub_24DC7BDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {

    JUMPOUT(0x2530363B0);
  }

  v8 = a6 & 1;

  return sub_24DC7BD50(a1, a2, a3, a4, a5, v8);
}

uint64_t sub_24DC7BE58(uint64_t a1)
{
  v13 = v1[3];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DC7B014(a1, v3, v4, v5, v7, v6, v8, v13);
}

uint64_t sub_24DC7BF54(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC7BF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC7BFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a8;
  v8[32] = v10;
  v8[29] = a6;
  v8[30] = a7;
  v8[27] = a4;
  v8[28] = a5;
  v8[25] = a2;
  v8[26] = a3;
  v8[24] = a1;
  return MEMORY[0x2822009F8](sub_24DC7BFF4, 0, 0);
}

void sub_24DC7BFF4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v2 + 16);
  if (v3 == v1)
  {
    v13 = (*(v0 + 232) + **(v0 + 232));
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = sub_24DC7C410;
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);

    v13(v7, v5, v6);
  }

  else
  {
    if (v3 > v1)
    {
      v8 = v1 + 1;
      v12 = *(v0 + 248);
      v14 = *(v0 + 232);
      sub_24DC5B208(v2 + 40 * v1 + 32, v0 + 16);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v10 = swift_task_alloc();
      *(v0 + 264) = v10;
      *(v10 + 16) = v12;
      *(v10 + 32) = v2;
      *(v10 + 40) = v8;
      *(v10 + 48) = v14;
      v15 = *(v9 + 8) + **(v9 + 8);
      v11 = swift_task_alloc();
      *(v0 + 272) = v11;
      *v11 = v0;
      v11[1] = sub_24DC7C290;

      __asm { BRAA            X8, X16 }
    }

    __break(1u);
  }
}

uint64_t sub_24DC7C290()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24DC7C504;
  }

  else
  {

    v2 = sub_24DC7C3AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC7C3AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24DC7C410()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24DC7C504()
{
  v29 = v0;
  v1 = *(v0 + 280);

  *(v0 + 176) = v1;
  MEMORY[0x2530363C0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 280);
  if (v2)
  {
    v4 = *(v0 + 192);
    MEMORY[0x2530363B0](*(v0 + 280));
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v26.n128_u8[0] = *(v0 + 56);
    v26.n128_u64[1] = v5;
    *&v27 = v6;
    *(&v27 + 1) = v7;
    v28 = v8;

    MEMORY[0x2530363C0](v8);
    nullsub_1();
    StreamingServerResponse.init(of:error:)(&v26, v4);

    MEMORY[0x2530363B0](v8);
    v9 = *(v0 + 176);
  }

  else
  {
    MEMORY[0x2530363B0](*(v0 + 176));
    *(v0 + 184) = v3;
    MEMORY[0x2530363C0](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F108, qword_24DCBB788);
    v10 = swift_dynamicCast();
    v11 = *(v0 + 280);
    v12 = *(v0 + 192);
    if (v10)
    {
      MEMORY[0x2530363B0](*(v0 + 280));
      sub_24DC5B2AC((v0 + 96), v0 + 136);
      v13 = *(v0 + 160);
      v14 = *(v0 + 168);
      v15 = __swift_project_boxed_opaque_existential_1((v0 + 136), v13);
      v16 = *(v13 - 8);
      v17 = swift_task_alloc();
      (*(v16 + 16))(v17, v15, v13);
      RPCError.init<A>(_:)(v17, v13, v14, v23);

      v26.n128_u8[0] = v23[0];
      v26.n128_u64[1] = v23[1];
      v27 = v24;
      v28 = v25;
      nullsub_1();
      StreamingServerResponse.init(of:error:)(&v26, v12);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      v9 = *(v0 + 184);
    }

    else
    {
      MEMORY[0x2530363B0](*(v0 + 184));
      v22 = *sub_24DC412F4();
      MEMORY[0x2530363C0](v11);
      sub_24DC31044();
      RPCError.init(code:message:metadata:cause:)(&v22, 0, 0xE000000000000000, v23, v11, &v26);
      v18 = v28;

      MEMORY[0x2530363C0](v18);
      nullsub_1();
      v19 = StreamingServerResponse.init(of:error:)(&v26, v12);
      MEMORY[0x2530363B0](v11, v19);

      v9 = v18;
    }
  }

  MEMORY[0x2530363B0](v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24DC7C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_24DC334F4;

  return sub_24DC7BFBC(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24DC7C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[4];
  v10 = v3[5];
  v12 = v3[6];
  v11 = v3[7];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_24DC2FD00;

  return sub_24DC7C854(a1, a2, a3, v9, v10, v12, v11, v8);
}

uint64_t sub_24DC7CA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC7CA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7CAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_24DC7CB20(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal17ServerRPCExecutorV0C12ExecutorTaskO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7CB5C(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 2)
  {
    return v4 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7CBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
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
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_24DC7CBEC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t sub_24DC7CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363C0);
  }
}

uint64_t sub_24DC7CCA8()
{

  return swift_deallocObject();
}

uint64_t sub_24DC7CCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 80);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC334F4;

  return sub_24DC7AC4C(a1, a2, a3, v8);
}

uint64_t sub_24DC7CE04()
{
  swift_unknownObjectRelease();

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  return swift_deallocObject();
}

uint64_t sub_24DC7CE74()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24DC334F4;

  return sub_24DC79DAC(v4, v5, v6, v2, v3, v0 + 48);
}

uint64_t sub_24DC7CF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DC7CF88()
{

  return swift_deallocObject();
}

uint64_t sub_24DC7CFC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC53800(a1, v4);
}

double sub_24DC7D078@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for ClientRequest(0, a2, a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v17 = *a1;
  (*(v9 + 16))(&v16 - v10, a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v9 + 32))(v13 + v12, v11, v8);

  nullsub_1();
  StreamingClientRequest.init(of:metadata:producer:)(&v17, &unk_24DCBB960, v13, &v18);
  (*(v9 + 8))(a1, v8);
  v14 = v19;
  result = *&v18;
  *a3 = v18;
  *(a3 + 16) = v14;
  return result;
}

uint64_t sub_24DC7D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for ClientRequest(0, a3, a3, a4) + 28);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  type metadata accessor for RPCWriter(0, a3, v9, v10);
  *v8 = v4;
  v8[1] = sub_24DC2FD00;

  return RPCWriter.write(_:)(a2 + v7);
}

uint64_t sub_24DC7D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ClientRequest(0, v5, a3, a4) - 8);
  v7 = (*(*v6 + 80) + 24) & ~*(*v6 + 80);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[9], v5);

  return swift_deallocObject();
}

uint64_t sub_24DC7D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for ClientRequest(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24DC2FD00;

  return sub_24DC7D210(a1, v4 + v9, v7, v11);
}

uint64_t ServerRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ServerRequest.init(metadata:message:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = *a1;
  v8 = type metadata accessor for ServerRequest(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

uint64_t StreamingServerRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t StreamingServerRequest.messages.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = type metadata accessor for RPCAsyncSequence(0, v4, v5, MEMORY[0x277D84950]);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + 8, v6);
}

uint64_t StreamingServerRequest.messages.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v6 = type metadata accessor for RPCAsyncSequence(0, v4, v5, MEMORY[0x277D84950]);
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + 8, a1, v6);
}

__n128 StreamingServerRequest.init(metadata:messages:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

double StreamingServerRequest.init(single:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for ServerRequest(0, a2, a3, a4);
  v10 = *(v9 + 28);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DC3ED1C(a1 + v10, a2, v11, MEMORY[0x277D84950], v14);
  (*(*(v9 - 8) + 8))(a1, v9);
  *a5 = v8;
  result = *v14;
  v13 = v14[1];
  *(a5 + 8) = v14[0];
  *(a5 + 24) = v13;
  *(a5 + 40) = v15;
  return result;
}

uint64_t ServerRequest.init(stream:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v5 = sub_24DCB5414();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = *(a3 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC7DA20, 0, 0);
}

uint64_t sub_24DC7DA20()
{
  v1 = v0[9];
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = MEMORY[0x277D84950];
  type metadata accessor for RPCAsyncSequence(0, v1, v2, MEMORY[0x277D84950]);
  RPCAsyncSequence.makeAsyncIterator()(v0 + 2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = type metadata accessor for RPCAsyncSequence.AsyncIterator(0, v1, v2, v3);
  v0[18] = v5;
  *v4 = v0;
  v4[1] = sub_24DC7DB2C;
  v6 = v0[13];

  return RPCAsyncSequence.AsyncIterator.next()(v6, v5);
}

uint64_t sub_24DC7DB2C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24DC7E2C0;
  }

  else
  {
    v2 = sub_24DC7DC40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC7DC40()
{
  v19 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = *(v2 + 48);
  v0[20] = v4;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[8];
    (*(v0[11] + 8))(v1, v0[10]);
    v17 = *sub_24DC41378();
    sub_24DC31044();
    sub_24DC2E0D8();
    swift_allocError();
    RPCError.init(code:message:metadata:cause:)(&v17, 0x7473207974706D45, 0xED00002E6D616572, &v18, 0, v6);
    swift_willThrow();
    v9 = type metadata accessor for StreamingServerRequest(0, v3, v7, v8);
    (*(*(v9 - 8) + 8))(v5, v9);
    (*(*(v0[18] - 8) + 8))(v0 + 2);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];
    v13 = *(v2 + 32);
    v0[22] = v13;
    v0[23] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v13(v12, v1, v3);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_24DC7DEB4;
    v15 = v0[18];
    v16 = v0[12];

    return RPCAsyncSequence.AsyncIterator.next()(v16, v15);
  }
}

uint64_t sub_24DC7DEB4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24DC7E3BC;
  }

  else
  {
    v2 = sub_24DC7DFC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24DC7DFC8()
{
  v31 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = (*(v0 + 160))(v1, 1, *(v0 + 72));
  (*(v2 + 8))(v1, v3);
  if (v4 == 1)
  {
    v28 = *(v0 + 176);
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    (*(*(*(v0 + 144) - 8) + 8))(v0 + 16);
    v10 = *v8;
    v13 = type metadata accessor for StreamingServerRequest(0, v7, v11, v12);
    v14 = *(*(v13 - 8) + 8);

    v14(v8, v13);
    v28(v5, v6, v7);
    *v9 = v10;
    v17 = type metadata accessor for ServerRequest(0, v7, v15, v16);
    (*(*(v7 - 8) + 32))(&v9[*(v17 + 28)], v5, v7);
  }

  else
  {
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v29 = *sub_24DC41378();
    sub_24DC31044();
    sub_24DC2E0D8();
    swift_allocError();
    RPCError.init(code:message:metadata:cause:)(&v29, 0xD000000000000012, 0x800000024DCC5A30, &v30, 0, v23);
    swift_willThrow();
    v26 = type metadata accessor for StreamingServerRequest(0, v21, v24, v25);
    (*(*(v26 - 8) + 8))(v22, v26);
    (*(v20 + 8))(v19, v21);
    (*(*(*(v0 + 144) - 8) + 8))(v0 + 16);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24DC7E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[8];
  v6 = type metadata accessor for StreamingServerRequest(0, v4[9], a3, a4);
  (*(*(v6 - 8) + 8))(v5, v6);
  (*(*(v4[18] - 8) + 8))(v4 + 2);

  v7 = v4[1];

  return v7();
}

uint64_t sub_24DC7E3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[16];
  v6 = v4[14];
  v8 = v4[8];
  v7 = v4[9];
  v9 = type metadata accessor for StreamingServerRequest(0, v7, a3, a4);
  (*(*(v9 - 8) + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(*(v4[18] - 8) + 8))(v4 + 2);

  v10 = v4[1];

  return v10();
}

uint64_t sub_24DC7E4F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC7E578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_24DC7E6FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_24DC7E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC7E988@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, size_t a3@<X1>)
{
  result = sub_24DC7E9B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24DC7E9B0(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_24DCB5014();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t sub_24DC7EA24@<X0>(uint64_t *a4@<X8>)
{
  result = sub_24DCB50B4();
  *a4 = result;
  return result;
}

unint64_t sub_24DC7EB40()
{
  v28[0] = *v0;
  result = sub_24DC7EE58(2u);
  if (!v2)
  {
    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24DCB5504();
        v4 = v27;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_62;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_62;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_62;
                }

                ++v14;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_62;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_63;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_62;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_62;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v4) = 0;
LABEL_63:
          v29 = v4;
          v25 = v4;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_24DC7FCA0(result, v2, 10);
  v25 = v26;
LABEL_64:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_24DC7EE58(unsigned __int8 a1)
{
  Metadata.subscript.getter();

  sub_24DC8022C();
  sub_24DCB4F04();
  sub_24DC80280();
  sub_24DCB5444();

  return v2;
}

void sub_24DC7EF6C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x800000024DCC5A80;
    v3 = 0xD00000000000001ALL;

    Metadata.removeAllValues(forKey:)(*&v3);
  }

  else
  {
    v4._countAndFlagsBits = sub_24DCB5744();
    v5._object = 0x800000024DCC5A80;
    v5._countAndFlagsBits = 0xD00000000000001ALL;
    Metadata.replaceOrAddString(_:forKey:)(v4, v5);
  }
}

uint64_t sub_24DC7F024(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xD00000000000001ALL;
    }

    if (v3 == 1)
    {
      v5 = 0x800000024DCC5A60;
    }

    else
    {
      v5 = 0x800000024DCC5A80;
    }
  }

  else
  {
    v5 = 0xEC00000074756F65;
    v4 = 0x6D69742D63707267;
  }

  v6 = v5;
  Metadata.replaceOrAddString(_:forKey:)(*&a1, *&v4);
}

uint64_t sub_24DC7F0BC(unsigned __int8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (v1 == 1)
    {
      v3 = 0x800000024DCC5A60;
    }

    else
    {
      v3 = 0x800000024DCC5A80;
    }
  }

  else
  {
    v3 = 0xEC00000074756F65;
    v2 = 0x6D69742D63707267;
  }

  v4 = v3;
  Metadata.removeAllValues(forKey:)(*&v2);
}

void (*sub_24DC7F154(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = sub_24DC7EB40();
  *(a1 + 8) = v3 & 1;
  return sub_24DC7F1B8;
}

void sub_24DC7F1B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1._object = 0x800000024DCC5A80;
    v1._countAndFlagsBits = 0xD00000000000001ALL;
    Metadata.removeAllValues(forKey:)(v1);
  }

  else
  {
    *(a1 + 16) = *a1;
    v2._countAndFlagsBits = sub_24DCB5744();
    v3._object = 0x800000024DCC5A80;
    v3._countAndFlagsBits = 0xD00000000000001ALL;
    Metadata.replaceOrAddString(_:forKey:)(v2, v3);
  }
}

unint64_t sub_24DC7F274()
{
  v0 = sub_24DC7EE58(1u);
  if (v1)
  {
    return sub_24DC802D4(v0, v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC7F2F4()
{
  v0 = sub_24DC7EE58(0);
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  sub_24DC7504C(v2, v3);
  if (v4 == 6)
  {

    return 0;
  }

  else
  {
    v6 = sub_24DC74E70();

    return v6;
  }
}

void sub_24DC7F3A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x6D69742D63707267;
    v4 = 0xEC00000074756F65;

    Metadata.removeAllValues(forKey:)(*&v3);
  }

  else
  {
    sub_24DC7524C(a1, a2);
    sub_24DC8061C();
    v5._countAndFlagsBits = sub_24DCB5744();
    v6._countAndFlagsBits = 0x6D69742D63707267;
    v6._object = 0xEC00000074756F65;
    Metadata.replaceOrAddString(_:forKey:)(v5, v6);
  }
}

void (*sub_24DC7F468(uint64_t **a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[5] = v1;
  v5 = sub_24DC7EE58(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    sub_24DC7504C(v7, v8);
    if (v9 != 6)
    {
      v10 = sub_24DC74E70();
      v11 = v13;

      v12 = 0;
      goto LABEL_9;
    }
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
LABEL_9:
  *v4 = v10;
  v4[1] = v11;
  *(v4 + 16) = v12;
  return sub_24DC7F560;
}

void sub_24DC7F560(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v2._countAndFlagsBits = 0x6D69742D63707267;
    v2._object = 0xEC00000074756F65;
    Metadata.removeAllValues(forKey:)(v2);
  }

  else
  {
    *(v1 + 24) = sub_24DC7524C(*v1, *(v1 + 8));
    *(v1 + 32) = v3;
    sub_24DC8061C();
    v4._countAndFlagsBits = sub_24DCB5744();
    v5._countAndFlagsBits = 0x6D69742D63707267;
    v5._object = 0xEC00000074756F65;
    Metadata.replaceOrAddString(_:forKey:)(v4, v5);
  }

  free(v1);
}

uint64_t sub_24DC7F628(char a1)
{
  if (!a1)
  {
    return 0x6D69742D63707267;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_24DC7F68C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000016;
  v3 = *a1;
  v4 = 0x800000024DCC5A60;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x800000024DCC5A60;
  }

  else
  {
    v6 = 0x800000024DCC5A80;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D69742D63707267;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000074756F65;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x800000024DCC5A80;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6D69742D63707267;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000074756F65;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24DCB57A4();
  }

  return v11 & 1;
}

unint64_t sub_24DC7F770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24DC80670(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24DC7F7A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074756F65;
  v4 = 0xD000000000000016;
  v5 = 0x800000024DCC5A60;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x800000024DCC5A80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6D69742D63707267;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24DC7F80C()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC7F8BC(uint64_t a1)
{
  sub_24DCB4D44();
}

uint64_t sub_24DC7F958(uint64_t a1)
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FA04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  return sub_24DCB5984();
}

uint64_t sub_24DC7FA2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return MEMORY[0x253035FF0](1, a2, a3);
  }

  MEMORY[0x253035FF0](0);

  return sub_24DCB5994();
}

uint64_t sub_24DC7FA9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_24DCB58A4();
  if (a3)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FB18()
{
  v1 = *(v0 + 16);
  sub_24DCB58A4();
  if (v1)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FB90(uint64_t a1)
{
  if (*(v1 + 16))
  {
    return MEMORY[0x253035FF0](1);
  }

  MEMORY[0x253035FF0](0);

  return sub_24DCB5994();
}

uint64_t sub_24DC7FC08(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_24DCB58A4();
  if (v2)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB5994();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DC7FC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return sub_24DCB5984();
  }
}

unsigned __int8 *sub_24DC7FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_24DCB4EE4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24DC329BC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24DCB5504();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}