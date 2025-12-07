BOOL sub_2262B7ECC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2262B7F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2262B8058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2262B8170()
{
  v1 = sub_22634F51C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2262B8250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VisualAction(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2262B831C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VisualAction(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2262B83D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for VisualAction.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2262B8480(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for VisualAction.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2262B8524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2263500DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2263500AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2262B8614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2263500DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2263500AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2262B8710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22634EECC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_22634FDDC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2262B8850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22634EEFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22634EECC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_22634FDDC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2262B89A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634EECC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2262B8A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634EECC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2262B8A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22634EEFC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = sub_22634FDFC();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[14]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2262B8BDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22634EEFC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = sub_22634FDFC();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[13];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_2262B8D3C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2262B8E38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B8F98()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_2262B8FD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2262B8FEC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B902C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9078()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B90C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2262B91A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B91E8()
{
  v1 = sub_22634F17C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_2262B92DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9318()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9350()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2262B9398(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634F51C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2262B9404(uint64_t a1, uint64_t a2)
{
  v4 = sub_22634F51C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2262B9474(uint64_t a1, uint64_t a2)
{
  result = sub_226325D04(qword_28137F890, a2, type metadata accessor for RemoteCustomActionExecutor, &unk_2263551F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2262B94CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9504()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B953C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_2262B963C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2262B9768()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B97A0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2262B9810()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2262B9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22634F1AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2262B9934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22634F1AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_2262B99F0()
{
  MEMORY[0x22AA7D640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2262B9A28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2262B9A68()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9B2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_2262B9D54()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2262B9FDC()
{
  v0 = sub_2263502EC();
  __swift_allocate_value_buffer(v0, qword_27D793ED8);
  __swift_project_value_buffer(v0, qword_27D793ED8);
  return sub_2263502DC();
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

uint64_t sub_2262BA11C(uint64_t a1, int a2)
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

uint64_t sub_2262BA13C(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28137DFD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28137DFD8);
    }
  }
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

uint64_t type metadata accessor for ActionContext(uint64_t a1)
{
  result = qword_28137F270;
  if (!qword_28137F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2262BA288(uint64_t a1)
{
  sub_22634EEFC();
  if (v1 <= 0x3F)
  {
    sub_2262BA32C(319);
    if (v2 <= 0x3F)
    {
      sub_2262BA384();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2262BA32C(uint64_t a1)
{
  if (!qword_28137E140[0])
  {
    sub_22634F47C();
    v1 = sub_22635085C();
    if (!v2)
    {
      atomic_store(v1, qword_28137E140);
    }
  }
}

void sub_2262BA384()
{
  if (!qword_28137E030)
  {
    v0 = sub_22635085C();
    if (!v1)
    {
      atomic_store(v0, &qword_28137E030);
    }
  }
}

uint64_t sub_2262BA3DC()
{
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](0);
  return sub_226350D0C();
}

uint64_t sub_2262BA420(uint64_t a1)
{
  sub_226350CEC();
  MEMORY[0x22AA7CDB0](0);
  return sub_226350D0C();
}

uint64_t sub_2262BA4E8()
{
  v1 = v0;
  v2 = sub_22635004C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFEC();

  v6 = sub_22635003C();
  v7 = sub_22635075C();

  v8 = &unk_281380000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    sub_22634EEFC();
    sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_226350C1C();
    v13 = sub_226345004(v11, v12, &v22);
    v8 = &unk_281380000;

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2262B6000, v6, v7, "Session %s destroyed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x22AA7D570](v10, -1, -1);
    MEMORY[0x22AA7D570](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = v8[222];
  v15 = sub_22634EEFC();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_sessionStart;
  v17 = sub_22634EECC();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v18 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  v19 = sub_22634FCDC();
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2262BA8C0()
{
  sub_2262BA4E8();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for Session(uint64_t a1)
{
  result = qword_28137E568;
  if (!qword_28137E568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2262BA940(uint64_t a1)
{
  result = sub_22634EEFC();
  if (v2 <= 0x3F)
  {
    result = sub_22634EECC();
    if (v3 <= 0x3F)
    {
      result = sub_22634FCDC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Session.Event(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Session.Event(_WORD *result, int a2, int a3)
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

unint64_t sub_2262BABB8()
{
  result = qword_27D792FE8;
  if (!qword_27D792FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792FE8);
  }

  return result;
}

uint64_t sub_2262BAC18@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v5 = sub_22634EEFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2262BAC94()
{
  sub_22634EEFC();
  sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v0);

  MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
  return 0x286E6F6973736553;
}

uint64_t sub_2262BADA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F6FC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BAEDC, v2, 0);
}

uint64_t sub_2262BAEDC()
{
  v45 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[8];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[3];
    sub_22634FFEC();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[8];
    if (v8)
    {
      v38 = v0[7];
      v39 = v5;
      v43 = v0[12];
      v14 = v0[5];
      v13 = v0[6];
      v41 = v7;
      v42 = v0[9];
      v15 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v44);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD000000000000018, 0x80000002263565F0, &v44);
      *(v15 + 22) = 2080;
      v39(v38, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v44);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v41, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v40, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v11 + 8))(v43, v42);
    }

    else
    {
      v34 = v0[5];
      v35 = v0[6];

      (*(v35 + 8))(v12, v34);
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v44);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD000000000000018, 0x80000002263565F0, &v44);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  sub_22634FB8C();
  sub_22634F73C();

  v36 = v0[1];

  return v36();
}

uint64_t sub_2262BB364(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v3[68] = swift_task_alloc();
  v4 = sub_22634F57C();
  v3[69] = v4;
  v3[70] = *(v4 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v3[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793088, &qword_226351F40);
  v3[74] = swift_task_alloc();
  v5 = sub_22634F3DC();
  v3[75] = v5;
  v3[76] = *(v5 - 8);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v6 = type metadata accessor for ActionContext(0);
  v3[79] = v6;
  v3[80] = *(v6 - 8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793090, &qword_226351F48);
  v3[83] = swift_task_alloc();
  v3[84] = *(type metadata accessor for RankedVisualAction(0) - 8);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793098, &qword_226351F50);
  v3[89] = v7;
  v3[90] = *(v7 - 8);
  v3[91] = swift_task_alloc();
  v8 = type metadata accessor for VisualAction(0);
  v3[92] = v8;
  v3[93] = *(v8 - 8);
  v3[94] = swift_task_alloc();
  v9 = sub_22634FDFC();
  v3[95] = v9;
  v3[96] = *(v9 - 8);
  v3[97] = swift_task_alloc();
  v10 = sub_22634F5DC();
  v3[98] = v10;
  v3[99] = *(v10 - 8);
  v3[100] = swift_task_alloc();
  v11 = sub_22634F5BC();
  v3[101] = v11;
  v3[102] = *(v11 - 8);
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v12 = sub_22634F51C();
  v3[110] = v12;
  v13 = *(v12 - 8);
  v3[111] = v13;
  v3[112] = *(v13 + 64);
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v14 = sub_22634EEFC();
  v3[116] = v14;
  v3[117] = *(v14 - 8);
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v3[120] = swift_task_alloc();
  v3[121] = swift_task_alloc();
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v15 = sub_22634EECC();
  v3[125] = v15;
  v3[126] = *(v15 - 8);
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v3[129] = type metadata accessor for Analytics(0);
  v3[130] = swift_task_alloc();
  v16 = sub_22634F6DC();
  v3[131] = v16;
  v3[132] = *(v16 - 8);
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v17 = sub_22635004C();
  v3[135] = v17;
  v3[136] = *(v17 - 8);
  v3[137] = swift_task_alloc();
  v3[138] = swift_task_alloc();
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BBB7C, v2, 0);
}

uint64_t sub_2262BBB7C()
{
  v93 = v0;
  *(v0 + 1128) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration;
  if (sub_22634FCBC())
  {
    v1 = *(v0 + 1072);
    v2 = *(v0 + 1056);
    v3 = *(v0 + 1048);
    v4 = *(v0 + 528);
    sub_22634FFEC();
    v5 = *(v2 + 16);
    v5(v1, v4, v3);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    v12 = *(v0 + 1072);
    if (v8)
    {
      v83 = *(v0 + 1064);
      v84 = v5;
      v89 = *(v0 + 1120);
      v13 = *(v0 + 1056);
      v14 = *(v0 + 1048);
      v86 = v7;
      v88 = *(v0 + 1080);
      v15 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v92 = v85;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v92);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226356550, &v92);
      *(v15 + 22) = 2080;
      v84(v83, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v92);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v86, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v85, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v10 + 8))(v89, v88);
    }

    else
    {
      v34 = *(v0 + 1056);
      v35 = *(v0 + 1048);

      (*(v34 + 8))(v12, v35);
      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1112);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1080);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v92 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v92);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226356550, &v92);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0 + 1040);
  v37 = *(v0 + 1032);
  v38 = *(v0 + 1024);
  v39 = *(v0 + 1008);
  v90 = *(v0 + 1000);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 872);
  v87 = *(v0 + 864);
  v43 = *(v0 + 536);
  v44 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v45 = v37[5];
  v46 = *(v40 + 16);
  *(v0 + 1136) = v46;
  *(v0 + 1144) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46(&v36[v45], v43 + v44, v41);
  sub_22634F6CC();
  v47 = v37[6];
  *(v0 + 148) = v47;
  v48 = &v36[v47];
  *v48 = 0;
  v48[8] = 1;
  v49 = v37[7];
  *(v0 + 1456) = v49;
  v50 = &v36[v49];
  v50[2] = 0u;
  v50[3] = 0u;
  *v50 = 0u;
  v50[1] = 0u;
  v51 = v37[8];
  *(v0 + 1460) = v51;
  v36[v51] = 2;
  v52 = &v36[v37[9]];
  *v52 = 0;
  v52[1] = 0;
  v36[v37[10]] = 3;
  v53 = v37[11];
  *(v0 + 1464) = v53;
  v36[v53] = 2;
  v54 = v37[12];
  v55 = sub_22634F47C();
  (*(*(v55 - 8) + 56))(&v36[v54], 1, 1, v55);
  *&v36[v37[14]] = MEMORY[0x277D84F98];
  *&v36[v37[15]] = MEMORY[0x277D84F90];
  v36[v37[16]] = 0;
  *v36 = 0;
  sub_22634EEAC();
  sub_2262EB938(0, v38);
  v56 = *(v39 + 8);
  *(v0 + 1152) = v56;
  *(v0 + 1160) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v38, v90);
  sub_22634EEEC();
  sub_22634F5EC();
  sub_22634F4AC();
  sub_22634F4FC();
  sub_2262D66FC(v42, v87, &qword_27D793018, &unk_2263552F0);
  v57 = sub_22634FA8C();
  *(v0 + 1168) = v57;
  v58 = *(v57 - 8);
  *(v0 + 1176) = v58;
  v59 = *(v58 + 48);
  *(v0 + 1184) = v59;
  *(v0 + 1192) = (v58 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v60 = v59(v87, 1, v57);
  v61 = *(v0 + 864);
  if (v60 == 1)
  {
    sub_2262D67D8(*(v0 + 864), &qword_27D793018, &unk_2263552F0);
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v62 = sub_22634FA7C();
    v63 = v64;
    (*(v58 + 8))(v61, v57);
  }

  *(v0 + 1208) = v63;
  *(v0 + 1200) = v62;
  v65 = *(v0 + 1024);
  v66 = *(v0 + 1000);
  v67 = *(v0 + 536);
  sub_2262D5F20(*(v0 + 848), &v36[v54]);

  *v52 = v62;
  v52[1] = v63;
  sub_22634EEAC();
  sub_2262EB938(3, v65);
  v56(v65, v66);
  v68 = *(v67 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionProviders);
  *(v0 + 1216) = v68;
  v69 = v68[2];
  *(v0 + 1224) = v69;
  if (v69)
  {
    *(v0 + 1240) = MEMORY[0x277D84F90];
    *(v0 + 1232) = 0;
    *(v0 + 1248) = v68[4];
    v70 = v68[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22634F6BC();
    v91 = (*(v70 + 16) + **(v70 + 16));
    v72 = swift_task_alloc();
    *(v0 + 1256) = v72;
    *v72 = v0;
    v72[1] = sub_2262BC4EC;
    v73 = *(v0 + 920);
    v74 = *(v0 + 832);

    return v91(v73, v74, ObjectType, v70);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    *(v0 + 1272) = MEMORY[0x277D84F90];
    v77 = *(v0 + 832);
    v78 = *(v0 + 816);
    v79 = *(v0 + 808);
    sub_22634F6BC();
    sub_22634F5AC();
    v80 = *(v78 + 8);
    *(v0 + 1280) = v80;
    *(v0 + 1288) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v77, v79);
    v81 = swift_task_alloc();
    *(v0 + 1296) = v81;
    *v81 = v0;
    v81[1] = sub_2262BC9A4;
    v82 = *(v0 + 800);

    return sub_2262BFB24(v76, v82);
  }
}

uint64_t sub_2262BC4EC(uint64_t a1)
{
  v2 = *(*v1 + 832);
  v3 = *(*v1 + 816);
  v4 = *(*v1 + 808);
  v5 = *(*v1 + 536);
  *(*v1 + 1264) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262BC660, v5, 0);
}

void *sub_2262BC660()
{
  v1 = v0[158];
  result = v0[155];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[155];
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_2262DC944(result, v11, 1, v0[155]);
    v6 = result;
    v7 = result[3] >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 16);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v6 + 16) = v10;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v12 = v0[154];
  v13 = v0[153];
  swift_unknownObjectRelease();
  if (v12 + 1 == v13)
  {
    v0[159] = v6;
    v14 = v0[104];
    v15 = v0[102];
    v16 = v0[101];
    sub_22634F6BC();
    sub_22634F5AC();
    v17 = *(v15 + 8);
    v0[160] = v17;
    v0[161] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v16);
    v18 = swift_task_alloc();
    v0[162] = v18;
    *v18 = v0;
    v18[1] = sub_2262BC9A4;
    v19 = v0[100];

    return sub_2262BFB24(v6, v19);
  }

  else
  {
    v20 = v0[154] + 1;
    v0[155] = v6;
    v0[154] = v20;
    v21 = v0[152] + 16 * v20;
    v0[156] = *(v21 + 32);
    v22 = *(v21 + 40);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22634F6BC();
    v27 = (*(v22 + 16) + **(v22 + 16));
    v24 = swift_task_alloc();
    v0[157] = v24;
    *v24 = v0;
    v24[1] = sub_2262BC4EC;
    v25 = v0[115];
    v26 = v0[104];

    return v27(v25, v26, ObjectType, v22);
  }
}

uint64_t sub_2262BC9A4(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 792);
  v4 = *(*v1 + 784);
  v5 = *(*v1 + 536);
  *(*v1 + 1304) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2262BCB3C, v5, 0);
}

uint64_t sub_2262BCB3C(uint64_t a1)
{
  v2 = *(v1 + 1152);
  v3 = *(v1 + 1024);
  v4 = *(v1 + 1000);
  v5 = *(v1 + 1040) + *(v1 + 148);
  v6 = *(*(v1 + 1304) + 16);
  *v5 = v6;
  *(v5 + 8) = 0;
  sub_22634EEAC();
  sub_2262EBFE0(3, v3);
  v2(v3, v4);
  sub_22634EEAC();
  sub_2262EB938(4, v3);
  v2(v3, v4);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = *(v1 + 1304);
    v22 = *(v1 + 752);
    v23 = MEMORY[0x277D84F90];
    v9 = *(v1 + 744);
    sub_226316630(0, v6, 0);
    v7 = v23;
    v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v12 = *(v1 + 752);
      sub_2262D5EB8(v10, v12, type metadata accessor for VisualAction);
      v13 = *v12;
      v14 = *(v22 + 8);

      sub_2262D6068(v12, type metadata accessor for VisualAction);
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226316630((v15 > 1), v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  v18 = sub_22630BD70(v7);
  *(v1 + 1312) = v18;

  sub_22634F4FC();
  v19 = swift_task_alloc();
  *(v1 + 1320) = v19;
  *v19 = v1;
  v19[1] = sub_2262BCD74;
  v20 = *(v1 + 840);

  return sub_2262C00A0(v18, v20);
}

uint64_t sub_2262BCD74(uint64_t a1)
{
  v2 = *(*v1 + 840);
  v3 = *(*v1 + 536);
  *(*v1 + 1328) = a1;

  sub_2262D67D8(v2, &qword_27D792FE0, &unk_226351C10);

  return MEMORY[0x2822009F8](sub_2262BCEDC, v3, 0);
}

uint64_t sub_2262BCEDC()
{
  v212 = *(v0 + 1184);
  v210 = *(v0 + 1168);
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 1000);
  v198 = v3;
  v199 = v1;
  v216 = *(v0 + 920);
  v4 = *(v0 + 912);
  v197 = v4;
  v207 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v201 = *(v0 + 760);
  v203 = *(v0 + 856);
  v8 = *(v0 + 536);
  v220 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap;
  *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap) = *(v0 + 1328);

  v9 = *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  v200 = *(v2 + 16);
  v200(v1, v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_sessionStart, v3);
  v196 = *(v207 + 16);
  *(v0 + 1336) = v196;
  *(v0 + 1344) = (v207 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v196(v4, v216, v5);
  v10 = *(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream);
  sub_2262D5E54(v8 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream, v0 + 216);
  v11 = v9;

  v205 = v10;
  sub_22634F6CC();
  v223 = v8;
  v208 = sub_2262C1608();
  v217 = v12;
  (*(v7 + 8))(v6, v201);
  v13 = *(v0 + 240);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v13);
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  *(v0 + 1352) = v15;
  (*(v14 + 16))();
  v16 = *v15;
  *(v0 + 280) = &type metadata for EngagementStream;
  *(v0 + 288) = &off_283979CE8;
  *(v0 + 256) = v16;
  type metadata accessor for VisualActionRanker(0);
  v17 = swift_allocObject();
  *(v0 + 1360) = v17;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, &type metadata for EngagementStream);
  v19 = off_283979D70;
  v20 = swift_task_alloc();
  v19[2](v20, v18, &type metadata for EngagementStream);
  v21 = *v20;
  *(v0 + 320) = &type metadata for EngagementStream;
  *(v0 + 328) = &off_283979CE8;
  *(v0 + 296) = v21;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount) = 0;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount) = 0;
  v22 = v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___weights;
  sub_2262D6284(v0 + 16);
  v23 = *(v0 + 64);
  *(v22 + 32) = *(v0 + 48);
  *(v22 + 48) = v23;
  *(v22 + 128) = *(v0 + 144);
  v24 = *(v0 + 128);
  *(v22 + 96) = *(v0 + 112);
  *(v22 + 112) = v24;
  v25 = *(v0 + 96);
  *(v22 + 64) = *(v0 + 80);
  *(v22 + 80) = v25;
  v26 = *(v0 + 32);
  *v22 = *(v0 + 16);
  *(v22 + 16) = v26;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker____lazy_storage___shouldScopeByAppInFocus) = 2;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kSevenDaysInSeconds) = 0x4122750000000000;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInDay) = 0x4038000000000000;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInWeek) = 0x4065000000000000;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_kHoursInMonth) = 0x4086D00000000000;
  *(v17 + 16) = v11;
  v200(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_sessionStart, v199, v198);
  v196(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_visualContext, v197, v5);
  sub_22634F4FC();
  sub_22634F4AC();
  if (v212(v203, 1, v210) == 1)
  {
    sub_2262D67D8(*(v0 + 856), &qword_27D793018, &unk_2263552F0);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v29 = *(v0 + 1176);
    v30 = *(v0 + 1168);
    v31 = *(v0 + 856);
    v27 = sub_22634FA7C();
    v28 = v32;
    (*(v29 + 8))(v31, v30);
  }

  v33 = (v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_minorLabel);
  *v33 = v27;
  v33[1] = v28;
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusStream) = v205;
  sub_2262D5E54(v0 + 296, v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_engagementStream);
  v34 = (v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocus);
  *v34 = v208;
  v34[1] = v217;
  if (v217)
  {

    v35 = sub_226326EC4(v208);

    *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_appInFocusExecutionCount) = v35;
  }

  v36 = *(v0 + 1152);
  v37 = *(v0 + 1016);
  v38 = *(v0 + 1000);
  v39 = *(v0 + 912);
  v40 = *(v0 + 888);
  v41 = *(v0 + 880);
  v214 = *(v0 + 536);
  v218 = *(v0 + 1304);
  v42 = sub_226326EC4(0);
  v43 = *(v40 + 8);
  *(v0 + 1368) = v43;
  *(v0 + 1376) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v39, v41);
  v36(v37, v38);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  *(v17 + OBJC_IVAR____TtC26VisualActionPredictionCore18VisualActionRanker_totalExecutionCount) = v42;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  v44 = *(v223 + v220);
  v45 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap;
  swift_beginAccess();

  v61 = sub_226325D50(v218, (v214 + v45), v44);
  v62 = *(v0 + 1280);
  v63 = *(v0 + 824);
  v64 = *(v0 + 808);
  v65 = *(v0 + 728);
  v66 = *(v0 + 720);
  v221 = *(v0 + 712);
  swift_endAccess();

  *(v0 + 496) = v61;
  sub_22634F6BC();
  sub_22634F58C();
  v62(v63, v64);
  v67 = (*(v66 + 88))(v65, v221);
  if (v67 == *MEMORY[0x277D78C70])
  {
    v68 = *(v0 + 728);
    (*(*(v0 + 720) + 96))(v68, *(v0 + 712));
    v72 = sub_2262FF0E4(*v68, v61);
    if (v71)
    {
      v75 = v71;
      v76 = v70;
      v77 = v69;
      sub_226350C5C();
      swift_unknownObjectRetain_n();
      v78 = swift_dynamicCastClass();
      if (!v78)
      {
        swift_unknownObjectRelease();
        v78 = MEMORY[0x277D84F90];
      }

      v79 = *(v78 + 16);

      if (__OFSUB__(v75 >> 1, v76))
      {
        __break(1u);
      }

      else if (v79 == (v75 >> 1) - v76)
      {
        v61 = swift_dynamicCastClass();
        v67 = swift_unknownObjectRelease();
        if (v61)
        {
          goto LABEL_27;
        }

        v61 = MEMORY[0x277D84F90];
LABEL_26:
        v67 = swift_unknownObjectRelease();
LABEL_27:
        *(v0 + 496) = v61;
        v74 = *(v61 + 16);
        if (!v74)
        {
          goto LABEL_37;
        }

LABEL_28:
        v80 = 0;
        v81 = *(v0 + 672);
        while (v80 < *(v61 + 16))
        {
          v82 = *(v0 + 704);
          sub_2262D5EB8(v61 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, v82, type metadata accessor for RankedVisualAction);
          v83 = sub_2262D699C();
          v67 = sub_2262D6068(v82, type metadata accessor for RankedVisualAction);
          if (v83)
          {
            v84 = *(v0 + 696);
            v85 = *(v0 + 664);
            sub_2262C19D4(v80, v84);
            sub_2262D5EB8(v84, v85, type metadata accessor for RankedVisualAction);
            v61 = *(v0 + 496);
            v86 = *(v61 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v86 >= *(v61 + 24) >> 1)
            {
              v61 = sub_2262DCC74(isUniquelyReferenced_nonNull_native, v86 + 1, 1, v61);
              *(v0 + 496) = v61;
            }

            v88 = *(v0 + 696);
            LOBYTE(v74) = 1;
            sub_2262D1ECC(0, 0, 1, *(v0 + 664));
            sub_2262D6068(v88, type metadata accessor for RankedVisualAction);
            goto LABEL_37;
          }

          if (v74 == ++v80)
          {
            LOBYTE(v74) = 0;
            goto LABEL_37;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      swift_unknownObjectRelease();
      v71 = v75;
      v70 = v76;
      v69 = v77;
    }

    sub_2263097F8(v72, v69, v70, v71);
    v61 = v73;
    goto LABEL_26;
  }

  if (v67 != *MEMORY[0x277D78C78])
  {
    v67 = (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
  }

  v74 = *(v61 + 16);
  if (v74)
  {
    goto LABEL_28;
  }

LABEL_37:
  *(v0 + 1384) = v61;
  v89 = *(v0 + 992);
  v90 = *(v0 + 536);
  *(*(v0 + 1040) + *(v0 + 1464)) = v74;
  v91 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
  swift_beginAccess();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v227 = *(v90 + v91);
  *(v90 + v91) = 0x8000000000000000;
  v93 = MEMORY[0x277D84F90];
  sub_2262E3900(MEMORY[0x277D84F90], v89, v92);
  *(v90 + v91) = v227;
  v67 = swift_endAccess();
  v94 = *(v61 + 16);
  *(v0 + 1392) = v94;
  if (!v94)
  {
    v113 = *(v0 + 1152);
    v114 = *(v0 + 1460);
    v115 = *(v0 + 1040);
    v116 = *(v0 + 1024);
    v117 = *(v0 + 1000);

    sub_22634EEAC();
    sub_2262EBFE0(4, v116);
    v113(v116, v117);
    *(v115 + v114) = 0;
    if ([objc_opt_self() isInternalBuild])
    {
      v118 = sub_22634FCBC();
      v119 = *(v0 + 1384);
      if (v118)
      {
        v120 = *(v0 + 1336);
        v121 = *(v0 + 920);
        v122 = *(v0 + 904);
        v123 = *(v0 + 888);
        v124 = *(v0 + 880);
        v222 = *(v0 + 848);
        v225 = *(v0 + 872);
        v125 = *(v0 + 584);
        v213 = *(v0 + 896);
        v126 = *(v0 + 536);
        v127 = sub_22635064C();
        (*(*(v127 - 8) + 56))(v125, 1, 1, v127);
        v120(v122, v121, v124);
        v128 = sub_2262D62A4(&qword_27D7930A0, type metadata accessor for Session, &unk_226351E38);
        v129 = (*(v123 + 80) + 40) & ~*(v123 + 80);
        v130 = swift_allocObject();
        *(v130 + 2) = v126;
        *(v130 + 3) = v128;
        *(v130 + 4) = v126;
        (*(v123 + 32))(&v130[v129], v122, v124);
        *&v130[(v213 + v129 + 7) & 0xFFFFFFFFFFFFFFF8] = v119;
        swift_retain_n();
        sub_2262FB4D4(0, 0, v125, &unk_226351F78, v130);

        sub_2262D67D8(v222, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v225, &qword_27D793018, &unk_2263552F0);
        goto LABEL_63;
      }

      v167 = *(v0 + 872);
      v168 = *(v0 + 848);

      sub_2262D67D8(v168, &qword_27D792FE0, &unk_226351C10);
      sub_2262D67D8(v167, &qword_27D793018, &unk_2263552F0);
    }

    else
    {
      v165 = *(v0 + 872);
      v166 = *(v0 + 848);

      sub_2262D67D8(v166, &qword_27D792FE0, &unk_226351C10);
      sub_2262D67D8(v165, &qword_27D793018, &unk_2263552F0);
    }

LABEL_63:

    sub_2262C1D18(0);
    sub_22634FFEC();
    v46 = MEMORY[0x277D84F90];

    v47 = sub_22635003C();
    v48 = sub_22635075C();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 1104);
    v51 = *(v0 + 1088);
    v52 = *(v0 + 1080);
    if (v49)
    {
      v53 = swift_slowAlloc();
      *v53 = 134349056;
      *(v53 + 4) = *(v46 + 16);

      _os_log_impl(&dword_2262B6000, v47, v48, "Returning %{public}ld predicted actions", v53, 0xCu);
      MEMORY[0x22AA7D570](v53, -1, -1);

      (*(v51 + 8))(v50, v52);
    }

    else
    {

      (*(v51 + 8))(v50, v52);
    }

    v195 = *(v0 + 1368);
    v192 = *(v0 + 1152);
    v188 = *(v0 + 1024);
    v189 = *(v0 + 1040);
    v190 = *(v0 + 1000);
    v54 = *(v0 + 936);
    v193 = *(v0 + 928);
    v194 = *(v0 + 992);
    v191 = *(v0 + 880);
    v55 = *(v0 + 576);
    v56 = *(v0 + 568);
    v57 = *(v0 + 560);
    v58 = *(v0 + 552);
    v187 = *(v0 + 920);
    sub_22634F4DC();
    sub_22634F48C();
    sub_22634F56C();
    (*(v57 + 16))(v56, v55, v58);
    sub_22634F6EC();
    sub_22634EEAC();
    sub_2262EBFE0(0, v188);
    v192(v188, v190);
    sub_2262EC7A0();
    (*(v57 + 8))(v55, v58);
    v195(v187, v191);
    (*(v54 + 8))(v194, v193);
    sub_2262D6068(v189, type metadata accessor for Analytics);

    v59 = *(v0 + 8);

    return v59();
  }

  v95 = *(v0 + 672);
  v96 = *(v0 + 536);
  v97 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  *(v0 + 1400) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  *(v0 + 1408) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  *(v0 + 1416) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager;
  v98 = *(v95 + 80);
  *(v0 + 1468) = v98;
  *(v0 + 1432) = v93;
  *(v0 + 1424) = 0;
  v99 = *(v0 + 1384);
  if (!*(v99 + 16))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v100 = *(v0 + 1136);
  v101 = *(v0 + 984);
  v61 = *(v0 + 976);
  v102 = *(v0 + 928);
  v103 = *(v0 + 688);
  v221 = *(v95 + 72);
  v224 = *(v0 + 680);
  sub_2262D5EB8(v99 + ((v98 + 32) & ~v98), v103, type metadata accessor for RankedVisualAction);
  sub_22634EEEC();
  v100(v61, v101, v102);
  swift_beginAccess();
  sub_2262D5EB8(v103, v224, type metadata accessor for RankedVisualAction);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v96 + v97);
  *(v0 + 504) = v105;
  *(v96 + v97) = 0x8000000000000000;
  v67 = sub_2263394D8(v61);
  v107 = *(v105 + 16);
  v108 = (v106 & 1) == 0;
  v109 = __OFADD__(v107, v108);
  v110 = v107 + v108;
  if (v109)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  LOBYTE(v61) = v106;
  if (*(v105 + 24) < v110)
  {
    v111 = *(v0 + 976);
    sub_226336C74(v110, v104);
    v67 = sub_2263394D8(v111);
    if ((v61 & 1) == (v112 & 1))
    {
      goto LABEL_47;
    }

LABEL_54:

    return sub_226350C8C();
  }

  if ((v104 & 1) == 0)
  {
    goto LABEL_68;
  }

  while (1)
  {
LABEL_47:
    v131 = *(v0 + 504);
    v226 = v131;
    if (v61)
    {
      v132 = *(v0 + 976);
      v133 = *(v0 + 936);
      v134 = *(v0 + 928);
      sub_2262D6510(*(v0 + 680), v131[7] + v67 * v221, type metadata accessor for RankedVisualAction);
      v135 = *(v133 + 8);
      v135(v132, v134);
    }

    else
    {
      v136 = *(v0 + 1136);
      v137 = *(v0 + 976);
      v138 = *(v0 + 936);
      v139 = *(v0 + 928);
      v140 = *(v0 + 680);
      v131[(v67 >> 6) + 8] |= 1 << v67;
      v141 = v67;
      v136(v131[6] + *(v138 + 72) * v67, v137, v139);
      sub_2262D6000(v140, v131[7] + v141 * v221, type metadata accessor for RankedVisualAction);
      v135 = *(v138 + 8);
      v67 = (v135)(v137, v139);
      v142 = v131[2];
      v109 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (v109)
      {
        __break(1u);
        goto LABEL_72;
      }

      v131[2] = v143;
    }

    v200 = v135;
    *(v0 + 1440) = v135;
    v221 = *(v0 + 1408);
    v215 = *(v0 + 1200);
    v211 = *(v0 + 1152);
    v144 = *(v0 + 1136);
    v145 = *(v0 + 1024);
    v206 = *(v0 + 1208);
    v209 = *(v0 + 1000);
    v146 = *(v0 + 984);
    v147 = *(v0 + 968);
    v148 = *(v0 + 928);
    v202 = *(v0 + 992);
    v204 = *(v0 + 848);
    v149 = *(v0 + 656);
    v219 = *(v0 + 648);
    v150 = *(v0 + 632);
    v61 = *(v0 + 536);
    *(v61 + *(v0 + 1400)) = v226;

    swift_endAccess();
    v144(v147, v146, v148);
    v144(v149, v202, v148);
    sub_2262D66FC(v204, v149 + v150[5], &qword_27D792FE0, &unk_226351C10);

    sub_22634EEAC();
    sub_22634EE5C();
    v152 = v151;
    v211(v145, v209);
    v153 = (v149 + v150[6]);
    *v153 = v215;
    v153[1] = v206;
    *(v149 + v150[7]) = v152;
    swift_beginAccess();
    sub_2262D6000(v149, v219, type metadata accessor for ActionContext);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v155 = *(v61 + v221);
    *(v0 + 512) = v155;
    *(v61 + v221) = 0x8000000000000000;
    v67 = sub_2263394D8(v147);
    v157 = *(v155 + 16);
    v158 = (v156 & 1) == 0;
    v109 = __OFADD__(v157, v158);
    v159 = v157 + v158;
    if (!v109)
    {
      break;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v169 = v67;
    sub_22633A370();
    v67 = v169;
  }

  LOBYTE(v139) = v156;
  v140 = (v0 + 512);
  if (*(v155 + 24) >= v159)
  {
    if (v154)
    {
      goto LABEL_58;
    }

LABEL_72:
    v170 = v67;
    sub_22633A334();
    v67 = v170;
    v162 = *v140;
    if (v139)
    {
      goto LABEL_59;
    }

    goto LABEL_73;
  }

  v160 = *(v0 + 968);
  sub_226336C38(v159, v154);
  v67 = sub_2263394D8(v160);
  if ((v139 & 1) != (v161 & 1))
  {
    goto LABEL_54;
  }

LABEL_58:
  v162 = *v140;
  if (v139)
  {
LABEL_59:
    v163 = *(v0 + 968);
    v164 = *(v0 + 928);
    sub_2262D6510(*(v0 + 648), v162[7] + *(*(v0 + 640) + 72) * v67, type metadata accessor for ActionContext);
    (v200)(v163, v164);
    goto LABEL_75;
  }

LABEL_73:
  v171 = *(v0 + 1136);
  v172 = *(v0 + 968);
  v173 = *(v0 + 936);
  v174 = *(v0 + 928);
  v175 = *(v0 + 648);
  v176 = *(v0 + 640);
  v162[(v67 >> 6) + 8] |= 1 << v67;
  v177 = v67;
  v171(v162[6] + *(v173 + 72) * v67, v172, v174);
  sub_2262D6000(v175, v162[7] + *(v176 + 72) * v177, type metadata accessor for ActionContext);
  result = (v200)(v172, v174);
  v178 = v162[2];
  v109 = __OFADD__(v178, 1);
  v179 = v178 + 1;
  if (v109)
  {
    __break(1u);
    return result;
  }

  v162[2] = v179;
LABEL_75:
  v180 = *(v0 + 1416);
  v181 = *(v0 + 536);
  *(v181 + *(v0 + 1408)) = v162;

  swift_endAccess();
  v182 = *(v181 + v180);
  v183 = swift_task_alloc();
  *(v0 + 1448) = v183;
  *v183 = v0;
  v183[1] = sub_2262BE7F8;
  v184 = *(v0 + 984);
  v185 = *(v0 + 920);
  v186 = *(v0 + 592);

  return sub_2262D7724(v186, v184, v185, v182);
}

uint64_t sub_2262BE7F8()
{
  v1 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_2262BE908, v1, 0);
}

uint64_t sub_2262BE908()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  if ((*(v2 + 48))(v4, 1, v3) != 1)
  {
    v172 = v0 + 336;
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v169 = *(v2 + 32);
    (v169)(v7, v4, v3);
    (*(v2 + 16))(v8, v7, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v0 + 1432);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2262DCEFC(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v176 = sub_2262DCEFC((v11 > 1), v12 + 1, 1, v10);
    }

    else
    {
      v176 = v10;
    }

    v13 = *(v0 + 1136);
    v14 = *(v0 + 992);
    v15 = *(v0 + 960);
    v16 = *(v0 + 928);
    v17 = *(v0 + 616);
    v18 = *(v0 + 608);
    v19 = *(v0 + 600);
    v176[2] = v12 + 1;
    (v169)(v176 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v12, v17, v19);
    v13(v15, v14, v16);
    v20 = sub_2262BA484(v172);
    v21 = sub_2262C1B08((v0 + 368));
    v1 = *(v0 + 984);
    if (*v22)
    {
      v5 = v22;
      v168 = v21;
      (*(v0 + 1136))(*(v0 + 952), v1, *(v0 + 928));
      v1 = *v5;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v1;
      v169 = v20;
      if (v23)
      {
        goto LABEL_9;
      }

      goto LABEL_51;
    }

    v36 = *(v0 + 1440);
    v37 = *(v0 + 960);
    v5 = *(v0 + 928);
    v165 = *(v0 + 624);
    v168 = *(v0 + 688);
    v38 = *(v0 + 608);
    v39 = *(v0 + 600);
    v21();
    v36(v37, v5);
    (v20)(v172, 0);
    (*(v38 + 8))(v165, v39);
    v36(v1, v5);
    v35 = v168;
    goto LABEL_13;
  }

  v5 = *(v0 + 688);
  (*(v0 + 1440))(*(v0 + 984), *(v0 + 928));
  sub_2262D6068(v5, type metadata accessor for RankedVisualAction);
  sub_2262D67D8(v4, &qword_27D793088, &qword_226351F40);
  for (i = *(v0 + 1432); ; i = v176)
  {
    v40 = *(v0 + 1424) + 1;
    if (v40 == *(v0 + 1392))
    {
      v41 = *(v0 + 1152);
      v42 = *(v0 + 1460);
      v43 = *(v0 + 1040);
      v44 = *(v0 + 1024);
      v45 = *(v0 + 1000);

      sub_22634EEAC();
      sub_2262EBFE0(4, v44);
      v41(v44, v45);
      *(v43 + v42) = 0;
      v177 = i;
      if ([objc_opt_self() isInternalBuild])
      {
        v46 = sub_22634FCBC();
        v47 = *(v0 + 1384);
        if (v46)
        {
          v48 = *(v0 + 1336);
          v49 = *(v0 + 920);
          v50 = *(v0 + 904);
          v51 = *(v0 + 888);
          v52 = *(v0 + 880);
          v170 = *(v0 + 848);
          v173 = *(v0 + 872);
          v53 = *(v0 + 584);
          v166 = *(v0 + 896);
          v54 = *(v0 + 536);
          v55 = sub_22635064C();
          (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
          v48(v50, v49, v52);
          v56 = sub_2262D62A4(&qword_27D7930A0, type metadata accessor for Session, &unk_226351E38);
          v57 = (*(v51 + 80) + 40) & ~*(v51 + 80);
          v58 = swift_allocObject();
          *(v58 + 2) = v54;
          *(v58 + 3) = v56;
          *(v58 + 4) = v54;
          v59 = v52;
          i = v177;
          (*(v51 + 32))(&v58[v57], v50, v59);
          *&v58[(v166 + v57 + 7) & 0xFFFFFFFFFFFFFFF8] = v47;
          swift_retain_n();
          sub_2262FB4D4(0, 0, v53, &unk_226351F78, v58);

          sub_2262D67D8(v170, &qword_27D792FE0, &unk_226351C10);
          sub_2262D67D8(v173, &qword_27D793018, &unk_2263552F0);
LABEL_41:

          sub_2262C1D18(0);
          sub_22634FFEC();

          v117 = sub_22635003C();
          v118 = sub_22635075C();
          v119 = os_log_type_enabled(v117, v118);
          v120 = *(v0 + 1104);
          v121 = *(v0 + 1088);
          v122 = *(v0 + 1080);
          if (v119)
          {
            v123 = swift_slowAlloc();
            *v123 = 134349056;
            *(v123 + 4) = i[2];

            _os_log_impl(&dword_2262B6000, v117, v118, "Returning %{public}ld predicted actions", v123, 0xCu);
            MEMORY[0x22AA7D570](v123, -1, -1);

            (*(v121 + 8))(v120, v122);
          }

          else
          {

            (*(v121 + 8))(v120, v122);
          }

          v156 = *(v0 + 1368);
          v153 = *(v0 + 1152);
          v149 = *(v0 + 1024);
          v150 = *(v0 + 1040);
          v151 = *(v0 + 1000);
          v124 = *(v0 + 936);
          v154 = *(v0 + 928);
          v155 = *(v0 + 992);
          v152 = *(v0 + 880);
          v125 = *(v0 + 576);
          v126 = *(v0 + 568);
          v127 = *(v0 + 560);
          v128 = *(v0 + 552);
          v148 = *(v0 + 920);
          sub_22634F4DC();
          sub_22634F48C();
          sub_22634F56C();
          (*(v127 + 16))(v126, v125, v128);
          sub_22634F6EC();
          sub_22634EEAC();
          sub_2262EBFE0(0, v149);
          v153(v149, v151);
          sub_2262EC7A0();
          (*(v127 + 8))(v125, v128);
          v156(v148, v152);
          (*(v124 + 8))(v155, v154);
          sub_2262D6068(v150, type metadata accessor for Analytics);

          v129 = *(v0 + 8);

          return v129();
        }

        v115 = *(v0 + 872);
        v116 = *(v0 + 848);

        sub_2262D67D8(v116, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v115, &qword_27D793018, &unk_2263552F0);
      }

      else
      {
        v78 = *(v0 + 872);
        v79 = *(v0 + 848);

        sub_2262D67D8(v79, &qword_27D792FE0, &unk_226351C10);
        sub_2262D67D8(v78, &qword_27D793018, &unk_2263552F0);
      }

      goto LABEL_41;
    }

    *(v0 + 1432) = i;
    *(v0 + 1424) = v40;
    v60 = *(v0 + 1384);
    if (v40 >= *(v60 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v61 = *(v0 + 1400);
    v62 = *(v0 + 1136);
    v63 = *(v0 + 984);
    v5 = *(v0 + 976);
    v64 = *(v0 + 928);
    v65 = *(v0 + 688);
    v176 = *(v0 + 680);
    v66 = *(v0 + 536);
    v174 = *(*(v0 + 672) + 72);
    v1 = type metadata accessor for RankedVisualAction;
    sub_2262D5EB8(v60 + ((*(v0 + 1468) + 32) & ~*(v0 + 1468)) + v174 * v40, v65, type metadata accessor for RankedVisualAction);
    sub_22634EEEC();
    v62(v5, v63, v64);
    swift_beginAccess();
    sub_2262D5EB8(v65, v176, type metadata accessor for RankedVisualAction);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v66 + v61);
    *(v0 + 504) = v68;
    *(v66 + v61) = 0x8000000000000000;
    v69 = sub_2263394D8(v5);
    v71 = *(v68 + 16);
    v72 = (v70 & 1) == 0;
    v73 = __OFADD__(v71, v72);
    v74 = v71 + v72;
    if (v73)
    {
      goto LABEL_49;
    }

    v75 = v70;
    if (*(v68 + 24) >= v74)
    {
      if ((v67 & 1) == 0)
      {
        v130 = v69;
        sub_22633A370();
        v69 = v130;
      }
    }

    else
    {
      v76 = *(v0 + 976);
      sub_226336C74(v74, v67);
      v69 = sub_2263394D8(v76);
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_33;
      }
    }

    v80 = *(v0 + 504);
    v176 = v80;
    if (v75)
    {
      v81 = *(v0 + 976);
      v82 = *(v0 + 936);
      v83 = *(v0 + 928);
      sub_2262D6510(*(v0 + 680), v80[7] + v69 * v174, type metadata accessor for RankedVisualAction);
      v84 = *(v82 + 8);
      v84(v81, v83);
    }

    else
    {
      v85 = *(v0 + 1136);
      v86 = *(v0 + 976);
      v87 = *(v0 + 936);
      v88 = *(v0 + 928);
      v89 = *(v0 + 680);
      v80[(v69 >> 6) + 8] |= 1 << v69;
      v90 = v69;
      v85(v80[6] + *(v87 + 72) * v69, v86, v88);
      sub_2262D6000(v89, v80[7] + v90 * v174, type metadata accessor for RankedVisualAction);
      v84 = *(v87 + 8);
      v91 = (v84)(v86, v88);
      v92 = v80[2];
      v73 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v73)
      {
        __break(1u);
        goto LABEL_53;
      }

      v80[2] = v93;
    }

    v157 = v84;
    *(v0 + 1440) = v84;
    v175 = *(v0 + 1408);
    v168 = *(v0 + 1160);
    v169 = *(v0 + 1200);
    v167 = *(v0 + 1152);
    v1 = *(v0 + 1136);
    v94 = *(v0 + 1024);
    v161 = *(v0 + 1208);
    v163 = *(v0 + 1000);
    v95 = *(v0 + 984);
    v96 = *(v0 + 968);
    v97 = *(v0 + 928);
    v158 = *(v0 + 992);
    v159 = *(v0 + 848);
    v98 = *(v0 + 656);
    v171 = *(v0 + 648);
    v99 = *(v0 + 632);
    v5 = *(v0 + 536);
    *(v5 + *(v0 + 1400)) = v176;

    swift_endAccess();
    v1(v96, v95, v97);
    v1(v98, v158, v97);
    sub_2262D66FC(v159, v98 + v99[5], &qword_27D792FE0, &unk_226351C10);

    sub_22634EEAC();
    sub_22634EE5C();
    v101 = v100;
    v167(v94, v163);
    v102 = (v98 + v99[6]);
    *v102 = v169;
    v102[1] = v161;
    *(v98 + v99[7]) = v101;
    swift_beginAccess();
    sub_2262D6000(v98, v171, type metadata accessor for ActionContext);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(v5 + v175);
    *(v0 + 512) = v104;
    *(v5 + v175) = 0x8000000000000000;
    v91 = sub_2263394D8(v96);
    v106 = *(v104 + 16);
    v107 = (v105 & 1) == 0;
    v73 = __OFADD__(v106, v107);
    v108 = v106 + v107;
    if (!v73)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v1 = sub_2262DCED4(0, *(v1 + 2) + 1, 1, v1);
    *v5 = v1;
LABEL_9:
    v25 = *(v1 + 2);
    v24 = *(v1 + 3);
    if (v25 >= v24 >> 1)
    {
      v1 = sub_2262DCED4((v24 > 1), v25 + 1, 1, v1);
      *v5 = v1;
    }

    v26 = *(v0 + 1440);
    v27 = *(v0 + 960);
    v28 = *(v0 + 952);
    v29 = *(v0 + 936);
    v30 = *(v0 + 928);
    v162 = *(v0 + 984);
    v164 = *(v0 + 688);
    v160 = *(v0 + 624);
    v31 = *(v0 + 608);
    v32 = *(v0 + 600);
    v33 = *(v29 + 32);
    *(v1 + 2) = v25 + 1;
    v33(v1 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, v28, v30);
    v168();
    v26(v27, v30);
    v169();
    v34 = *(v31 + 8);
    v5 = (v31 + 8);
    v34(v160, v32);
    v26(v162, v30);
    v35 = v164;
LABEL_13:
    sub_2262D6068(v35, type metadata accessor for RankedVisualAction);
  }

  LOBYTE(v88) = v105;
  v89 = (v0 + 512);
  if (*(v104 + 24) >= v108)
  {
    if (v103)
    {
      goto LABEL_37;
    }

LABEL_53:
    v131 = v91;
    sub_22633A334();
    v91 = v131;
    v112 = *v89;
    if (v88)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }

  v109 = *(v0 + 968);
  sub_226336C38(v108, v103);
  v91 = sub_2263394D8(v109);
  if ((v88 & 1) != (v110 & 1))
  {
LABEL_33:

    return sub_226350C8C();
  }

LABEL_37:
  v112 = *v89;
  if ((v88 & 1) == 0)
  {
LABEL_54:
    v132 = *(v0 + 1136);
    v133 = *(v0 + 968);
    v134 = *(v0 + 936);
    v135 = *(v0 + 928);
    v136 = *(v0 + 648);
    v137 = *(v0 + 640);
    v112[(v91 >> 6) + 8] |= 1 << v91;
    v138 = v91;
    v132(v112[6] + *(v134 + 72) * v91, v133, v135);
    sub_2262D6000(v136, v112[7] + *(v137 + 72) * v138, type metadata accessor for ActionContext);
    result = v157(v133, v135);
    v139 = v112[2];
    v73 = __OFADD__(v139, 1);
    v140 = v139 + 1;
    if (v73)
    {
      __break(1u);
      return result;
    }

    v112[2] = v140;
    goto LABEL_56;
  }

LABEL_38:
  v113 = *(v0 + 968);
  v114 = *(v0 + 928);
  sub_2262D6510(*(v0 + 648), v112[7] + *(*(v0 + 640) + 72) * v91, type metadata accessor for ActionContext);
  v157(v113, v114);
LABEL_56:
  v141 = *(v0 + 1416);
  v142 = *(v0 + 536);
  *(v142 + *(v0 + 1408)) = v112;

  swift_endAccess();
  v143 = *(v142 + v141);
  v144 = swift_task_alloc();
  *(v0 + 1448) = v144;
  *v144 = v0;
  v144[1] = sub_2262BE7F8;
  v145 = *(v0 + 984);
  v146 = *(v0 + 920);
  v147 = *(v0 + 592);

  return sub_2262D7724(v147, v145, v146, v143);
}

uint64_t sub_2262BFB24(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(type metadata accessor for VisualAction(0) - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262BFBF0, v2, 0);
}

uint64_t sub_2262BFBF0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 40);
    *(v0 + 72) = *(*(v0 + 32) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionEligibilityChecker);
    v4 = *(v3 + 80);
    *(v0 + 112) = v4;
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    *(v0 + 88) = 0;
    *(v0 + 96) = v6;
    *(v0 + 80) = v5;
    sub_2262D5EB8(v1 + ((v4 + 32) & ~v4), *(v0 + 56), type metadata accessor for VisualAction);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_2262BFD40;
    v8 = *(v0 + 56);
    v9 = *(v0 + 24);

    return sub_22634DAF0(v8, v9);
  }

  else
  {

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_2262BFD40(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 116) = a1;

  return MEMORY[0x2822009F8](sub_2262BFE58, v2, 0);
}

uint64_t sub_2262BFE58()
{
  if (*(v0 + 116))
  {
    sub_2262D5EB8(*(v0 + 56), *(v0 + 48), type metadata accessor for VisualAction);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_2262DC944(0, v2[2] + 1, 1, *(v0 + 96));
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_2262DC944((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = *(v0 + 80);
    v6 = *(v0 + 48);
    v7 = (*(v0 + 112) + 32) & ~*(v0 + 112);
    sub_2262D6068(*(v0 + 56), type metadata accessor for VisualAction);
    v2[2] = v4 + 1;
    sub_2262D6000(v6, v2 + v7 + v5 * v4, type metadata accessor for VisualAction);
  }

  else
  {
    sub_2262D6068(*(v0 + 56), type metadata accessor for VisualAction);
    v2 = *(v0 + 96);
  }

  v8 = *(v0 + 88) + 1;
  if (v8 == *(v0 + 64))
  {

    v9 = *(v0 + 8);

    return v9(v2);
  }

  else
  {
    *(v0 + 88) = v8;
    *(v0 + 96) = v2;
    sub_2262D5EB8(*(v0 + 16) + ((*(v0 + 112) + 32) & ~*(v0 + 112)) + *(v0 + 80) * v8, *(v0 + 56), type metadata accessor for VisualAction);
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_2262BFD40;
    v12 = *(v0 + 56);
    v13 = *(v0 + 24);

    return sub_22634DAF0(v12, v13);
  }
}

uint64_t sub_2262C00A0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22634FF9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930E0, &qword_226355500);
  v3[11] = swift_task_alloc();
  v5 = sub_22634FE2C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v3[17] = swift_task_alloc();
  v6 = sub_22634F47C();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262C02A4, v2, 0);
}

uint64_t sub_2262C02A4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_2262D66FC(*(v0 + 48), v3, &qword_27D792FE0, &unk_226351C10);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v5 = *(v0 + 40);
    (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
    v6 = *(v5 + 32);
    *(v0 + 248) = v6;
    v7 = 1 << v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 56);
    v10 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager;
    *(v0 + 168) = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting;
    *(v0 + 176) = v10;

    v14 = 0;
    v15 = MEMORY[0x277D84F98];
    while (1)
    {
      *(v0 + 184) = v15;
      *(v0 + 192) = 0;
      if (!v9)
      {
        while (1)
        {
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v18 >= (((1 << *(v0 + 248)) + 63) >> 6))
          {
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

            v4 = *(v0 + 184);
            goto LABEL_47;
          }

          v17 = *(v0 + 40);
          v9 = *(v17 + 8 * v18 + 56);
          ++v14;
          if (v9)
          {
            v14 = v18;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v17 = *(v0 + 40);
LABEL_15:
      *(v0 + 200) = v9;
      *(v0 + 208) = v14;
      v19 = (*(v17 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
      v20 = *v19;
      *(v0 + 216) = *v19;
      v21 = v19[1];
      *(v0 + 224) = v21;

      if (v20 == sub_22634FFAC() && v21 == v22)
      {
        break;
      }

      v24 = sub_226350C4C();

      if (v24)
      {
        goto LABEL_29;
      }

      v25 = *(*(v0 + 56) + *(v0 + 168));
      if (!v25 || !*(v25 + 16))
      {
        goto LABEL_55;
      }

      sub_22633941C(v20, v21);
      if ((v26 & 1) == 0)
      {

LABEL_55:
        v12 = *(*(v0 + 56) + *(v0 + 176));
        *(v0 + 232) = v12;
        v11 = sub_2262C08D4;
        v13 = 0;

        return MEMORY[0x2822009F8](v11, v12, v13);
      }

      v27 = *(v0 + 96);
      v28 = *(v0 + 104);
      v29 = *(v0 + 88);

      sub_22634FE1C();
      if ((*(v28 + 48))(v29, 1, v27) == 1)
      {
        sub_2262D67D8(*(v0 + 88), &qword_27D7930E0, &qword_226355500);
        goto LABEL_55;
      }

      v30 = *(v0 + 184);
      (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
      v31 = sub_22634EB84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 24) = v30;
      v11 = sub_22633941C(v20, v21);
      v33 = *(v30 + 16);
      v34 = (v12 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_61;
      }

      v37 = v12;
      if (*(*(v0 + 184) + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = v11;
          sub_226339F9C();
          v11 = v56;
        }
      }

      else
      {
        sub_2263366F4(v36, isUniquelyReferenced_nonNull_native);
        v11 = sub_22633941C(v20, v21);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_50;
        }
      }

      v48 = v31;
      v49 = *(v0 + 128);
      v50 = *(v0 + 96);
      v51 = *(v0 + 104);
      if (v37)
      {
        v52 = v11;

        v15 = *(v0 + 24);
        *(v15[7] + 8 * v52) = v48;
        v11 = (*(v51 + 8))(v49, v50);
        goto LABEL_8;
      }

      v15 = *(v0 + 24);
      v15[(v11 >> 6) + 8] |= 1 << v11;
      v53 = (v15[6] + 16 * v11);
      *v53 = v20;
      v53[1] = v21;
      *(v15[7] + 8 * v11) = v48;
      v11 = (*(v51 + 8))(v49, v50);
      v54 = v15[2];
      v35 = __OFADD__(v54, 1);
      v47 = v54 + 1;
      if (v35)
      {
        goto LABEL_62;
      }

LABEL_43:
      v15[2] = v47;
LABEL_8:
      v14 = *(v0 + 208);
      v9 = (*(v0 + 200) - 1) & *(v0 + 200);
    }

LABEL_29:
    v39 = *(v0 + 184);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 32) = v39;
    v11 = sub_22633941C(v20, v21);
    v41 = *(v39 + 16);
    v42 = (v12 & 1) == 0;
    v35 = __OFADD__(v41, v42);
    v43 = v41 + v42;
    if (v35)
    {
      goto LABEL_59;
    }

    v44 = v12;
    if (*(*(v0 + 184) + 24) >= v43)
    {
      if ((v40 & 1) == 0)
      {
        v55 = v11;
        sub_226339F9C();
        v11 = v55;
        if (v44)
        {
LABEL_7:
          v16 = v11;

          v15 = *(v0 + 32);
          *(v15[7] + 8 * v16) = 3;
          goto LABEL_8;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_2263366F4(v43, v40);
      v11 = sub_22633941C(v20, v21);
      if ((v44 & 1) != (v12 & 1))
      {
LABEL_50:

        return sub_226350C8C();
      }
    }

    if (v44)
    {
      goto LABEL_7;
    }

LABEL_35:
    v15 = *(v0 + 32);
    v15[(v11 >> 6) + 8] |= 1 << v11;
    v45 = (v15[6] + 16 * v11);
    *v45 = v20;
    v45[1] = v21;
    *(v15[7] + 8 * v11) = 3;
    v46 = v15[2];
    v35 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v35)
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  sub_2262D67D8(*(v0 + 136), &qword_27D792FE0, &unk_226351C10);
  v4 = sub_2262FE004(MEMORY[0x277D84F90]);
LABEL_47:

  v57 = *(v0 + 8);

  return v57(v4);
}

uint64_t sub_2262C08D4()
{
  v1 = v0[24];
  sub_22632F498(v0[27], v0[28], v0[10]);
  v0[30] = v1;
  if (v1)
  {
    v2 = v0[7];

    v3 = sub_2262C10A4;
    v4 = v2;
  }

  else
  {
    v4 = v0[7];
    v3 = sub_2262C0988;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2262C0988()
{
  v84 = *(v0 + 216);
  v85 = *(v0 + 224);
  v1 = *(v0 + 184);
  v2 = *(v0 + 112);
  v9 = *(v0 + 120);
  v3 = *(v0 + 96);
  v7 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  sub_22634FF3C();
  (*(v5 + 8))(v4, v6);
  v8 = *(v7 + 32);
  LOBYTE(v7) = v7 + 32;
  v8(v9, v2, v3);
  LOBYTE(v9) = sub_22634EB84();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v1;
  v11 = sub_22633941C(v84, v85);
  v13 = *(v1 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v83 = v11;
    sub_226339F9C();
    v11 = v83;
    goto LABEL_8;
  }

  LOBYTE(v7) = v12;
  if (*(*(v0 + 184) + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  sub_2263366F4(v16, isUniquelyReferenced_nonNull_native);
  v11 = sub_22633941C(v18, v17);
  if ((v7 & 1) != (v19 & 1))
  {
LABEL_4:

    return sub_226350C8C();
  }

LABEL_8:
  v21 = v9;
  v22 = *(v0 + 224);
  if (v7)
  {
    v23 = *(v0 + 120);
    v9 = *(v0 + 96);
    v7 = *(v0 + 104);
    v24 = v11;

    v25 = *(v0 + 16);
    *(v25[7] + 8 * v24) = v21;
    v26 = *(v7 + 8);
    LOBYTE(v7) = v7 + 8;
    v11 = v26(v23, v9);
LABEL_12:
    v36 = *(v0 + 240);
    while (1)
    {
      v39 = *(v0 + 200);
      v38 = *(v0 + 208);
      *(v0 + 184) = v25;
      *(v0 + 192) = v36;
      v40 = (v39 - 1) & v39;
      if (!v40)
      {
        while (1)
        {
          v42 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v42 >= (((1 << *(v0 + 248)) + 63) >> 6))
          {
            break;
          }

          v41 = *(v0 + 40);
          v40 = *(v41 + 8 * v42 + 56);
          ++v38;
          if (v40)
          {
            v38 = v42;
            goto LABEL_20;
          }
        }

        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

        v81 = *(v0 + 184);

        v82 = *(v0 + 8);

        return v82(v81);
      }

      v41 = *(v0 + 40);
LABEL_20:
      *(v0 + 200) = v40;
      *(v0 + 208) = v38;
      v43 = (*(v41 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v40)))));
      v7 = *v43;
      *(v0 + 216) = *v43;
      v9 = v43[1];
      *(v0 + 224) = v9;

      if (v7 == sub_22634FFAC() && v9 == v44)
      {
        break;
      }

      v46 = sub_226350C4C();

      if (v46)
      {
LABEL_34:
        v61 = *(v0 + 184);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 32) = v61;
        v11 = sub_22633941C(v7, v9);
        v64 = *(v61 + 16);
        v65 = (v63 & 1) == 0;
        v15 = __OFADD__(v64, v65);
        v66 = v64 + v65;
        if (v15)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v67 = v63;
        if (*(*(v0 + 184) + 24) >= v66)
        {
          if (v62)
          {
            goto LABEL_39;
          }

          v79 = v11;
          sub_226339F9C();
          v11 = v79;
          if (v67)
          {
            goto LABEL_13;
          }

LABEL_40:
          v25 = *(v0 + 32);
          v25[(v11 >> 6) + 8] |= 1 << v11;
          v69 = (v25[6] + 16 * v11);
          *v69 = v7;
          v69[1] = v9;
          *(v25[7] + 8 * v11) = 3;
          v70 = v25[2];
          v15 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v15)
          {
            goto LABEL_62;
          }

          v25[2] = v71;
        }

        else
        {
          sub_2263366F4(v66, v62);
          v11 = sub_22633941C(v7, v9);
          if ((v67 & 1) != (v68 & 1))
          {
            goto LABEL_4;
          }

LABEL_39:
          if ((v67 & 1) == 0)
          {
            goto LABEL_40;
          }

LABEL_13:
          v37 = v11;

          v25 = *(v0 + 32);
          *(v25[7] + 8 * v37) = 3;
        }
      }

      else
      {
        v47 = *(*(v0 + 56) + *(v0 + 168));
        if (!v47 || !*(v47 + 16))
        {
          goto LABEL_56;
        }

        sub_22633941C(v7, v9);
        if ((v48 & 1) == 0)
        {

          goto LABEL_56;
        }

        v86 = v36;
        v49 = *(v0 + 96);
        v50 = *(v0 + 104);
        v51 = *(v0 + 88);

        sub_22634FE1C();
        if ((*(v50 + 48))(v51, 1, v49) == 1)
        {
          sub_2262D67D8(*(v0 + 88), &qword_27D7930E0, &qword_226355500);
LABEL_56:
          v32 = *(*(v0 + 56) + *(v0 + 176));
          *(v0 + 232) = v32;
          v11 = sub_2262C08D4;
          v33 = 0;

          return MEMORY[0x2822009F8](v11, v32, v33);
        }

        v52 = *(v0 + 184);
        (*(*(v0 + 104) + 32))(*(v0 + 128), *(v0 + 88), *(v0 + 96));
        v53 = sub_22634EB84();
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v52;
        v11 = sub_22633941C(v7, v9);
        v56 = *(v52 + 16);
        v57 = (v55 & 1) == 0;
        v15 = __OFADD__(v56, v57);
        v58 = v56 + v57;
        if (v15)
        {
          goto LABEL_63;
        }

        v59 = v55;
        if (*(*(v0 + 184) + 24) >= v58)
        {
          if ((v54 & 1) == 0)
          {
            v80 = v11;
            sub_226339F9C();
            v11 = v80;
          }
        }

        else
        {
          sub_2263366F4(v58, v54);
          v11 = sub_22633941C(v7, v9);
          if ((v59 & 1) != (v60 & 1))
          {
            goto LABEL_4;
          }
        }

        v72 = v53;
        v73 = *(v0 + 128);
        v74 = *(v0 + 96);
        v75 = *(v0 + 104);
        if (v59)
        {
          v7 = v11;

          v25 = *(v0 + 24);
          *(v25[7] + 8 * v7) = v72;
          v11 = (*(v75 + 8))(v73, v74);
        }

        else
        {
          v25 = *(v0 + 24);
          v25[(v11 >> 6) + 8] |= 1 << v11;
          v76 = (v25[6] + 16 * v11);
          *v76 = v7;
          v76[1] = v9;
          *(v25[7] + 8 * v11) = v72;
          v11 = (*(v75 + 8))(v73, v74);
          v77 = v25[2];
          v15 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v15)
          {
            goto LABEL_66;
          }

          v25[2] = v78;
        }

        v36 = v86;
      }
    }

    goto LABEL_34;
  }

  v27 = *(v0 + 216);
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v25 = *(v0 + 16);
  v25[(v11 >> 6) + 8] |= 1 << v11;
  v31 = (v25[6] + 16 * v11);
  *v31 = v27;
  v31[1] = v22;
  *(v25[7] + 8 * v11) = v9;
  v11 = (*(v30 + 8))(v28, v29);
  v34 = v25[2];
  v15 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v15)
  {
    v25[2] = v35;
    goto LABEL_12;
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return MEMORY[0x2822009F8](v11, v32, v33);
}

uint64_t sub_2262C10A4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 208);
  v5 = (*(v3 + 200) - 1) & *(v3 + 200);
  while (1)
  {
    *(v3 + 192) = 0;
    if (!v5)
    {
      break;
    }

    v8 = *(v3 + 40);
LABEL_10:
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    v10 = (*(v8 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    *(v3 + 216) = *v10;
    v12 = v10[1];
    *(v3 + 224) = v12;

    if (v11 == sub_22634FFAC() && v12 == v13)
    {

LABEL_24:
      v30 = *(v3 + 184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 32) = v30;
      a1 = sub_22633941C(v11, v12);
      v32 = *(v30 + 16);
      v33 = (a2 & 1) == 0;
      v26 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v26)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      v35 = a2;
      if (*(*(v3 + 184) + 24) < v34)
      {
        sub_2263366F4(v34, isUniquelyReferenced_nonNull_native);
        a1 = sub_22633941C(v11, v12);
        if ((v35 & 1) != (a2 & 1))
        {
LABEL_44:

          return sub_226350C8C();
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_29:
        if (v35)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v46 = a1;
        sub_226339F9C();
        a1 = v46;
        if (v35)
        {
LABEL_2:
          v6 = a1;

          v7 = *(v3 + 32);
          *(v7[7] + 8 * v6) = 3;
          goto LABEL_3;
        }
      }

      v7 = *(v3 + 32);
      v7[(a1 >> 6) + 8] |= 1 << a1;
      v36 = (v7[6] + 16 * a1);
      *v36 = v11;
      v36[1] = v12;
      *(v7[7] + 8 * a1) = 3;
      v37 = v7[2];
      v26 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v26)
      {
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    v15 = sub_226350C4C();

    if (v15)
    {
      goto LABEL_24;
    }

    v16 = *(*(v3 + 56) + *(v3 + 168));
    if (!v16 || !*(v16 + 16))
    {
      goto LABEL_49;
    }

    sub_22633941C(v11, v12);
    if ((v17 & 1) == 0)
    {

LABEL_49:
      a2 = *(*(v3 + 56) + *(v3 + 176));
      *(v3 + 232) = a2;
      a1 = sub_2262C08D4;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v18 = *(v3 + 96);
    v19 = *(v3 + 104);
    v20 = *(v3 + 88);

    sub_22634FE1C();
    if ((*(v19 + 48))(v20, 1, v18) == 1)
    {
      sub_2262D67D8(*(v3 + 88), &qword_27D7930E0, &qword_226355500);
      goto LABEL_49;
    }

    v21 = *(v3 + 184);
    (*(*(v3 + 104) + 32))(*(v3 + 128), *(v3 + 88), *(v3 + 96));
    v22 = sub_22634EB84();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v21;
    a1 = sub_22633941C(v11, v12);
    v24 = *(v21 + 16);
    v25 = (a2 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_55;
    }

    v28 = a2;
    if (*(*(v3 + 184) + 24) >= v27)
    {
      if ((v23 & 1) == 0)
      {
        v47 = a1;
        sub_226339F9C();
        a1 = v47;
      }
    }

    else
    {
      sub_2263366F4(v27, v23);
      a1 = sub_22633941C(v11, v12);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_44;
      }
    }

    v39 = v22;
    v40 = *(v3 + 128);
    v41 = *(v3 + 96);
    v42 = *(v3 + 104);
    if (v28)
    {
      v43 = a1;

      v7 = *(v3 + 24);
      *(v7[7] + 8 * v43) = v39;
      a1 = (*(v42 + 8))(v40, v41);
      goto LABEL_3;
    }

    v7 = *(v3 + 24);
    v7[(a1 >> 6) + 8] |= 1 << a1;
    v44 = (v7[6] + 16 * a1);
    *v44 = v11;
    v44[1] = v12;
    *(v7[7] + 8 * a1) = v39;
    a1 = (*(v42 + 8))(v40, v41);
    v45 = v7[2];
    v26 = __OFADD__(v45, 1);
    v38 = v45 + 1;
    if (v26)
    {
      goto LABEL_56;
    }

LABEL_38:
    v7[2] = v38;
LABEL_3:
    v4 = *(v3 + 208);
    v5 = (*(v3 + 200) - 1) & *(v3 + 200);
    *(v3 + 184) = v7;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v9 >= (((1 << *(v3 + 248)) + 63) >> 6))
    {
      break;
    }

    v8 = *(v3 + 40);
    v5 = *(v8 + 8 * v9 + 56);
    ++v4;
    if (v5)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  (*(*(v3 + 152) + 8))(*(v3 + 160), *(v3 + 144), a3);

  v48 = *(v3 + 184);

  v49 = *(v3 + 8);

  return v49(v48);
}

uint64_t sub_2262C1608()
{
  v1 = v0;
  v2 = sub_22634EECC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  v9 = sub_22634FDFC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D78CE0], v9);
  sub_2262D62A4(&unk_28137E088, MEMORY[0x277D78CF0], MEMORY[0x277D78D00]);
  sub_22635051C();
  sub_22635051C();
  (*(v10 + 8))(v12, v9);
  if (v30[1] == v30[0])
  {
    return sub_22634FFAC();
  }

  v14 = [objc_opt_self() currentAppInFocusStartEvent];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 bundleID];

    v17 = sub_22635046C();
    v19 = v18;

    if (v17 == sub_22634FFAC() && v19 == v20)
    {

      return v17;
    }

    v21 = v17;
    v22 = sub_226350C4C();

    if (v22)
    {
      return v21;
    }
  }

  v23 = *(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream);
  sub_22634EEAC();
  sub_22634EE7C();
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = sub_22634EE8C();
  v24(v8, v2);
  sub_22634EEAC();
  v26 = sub_22634EE8C();
  v24(v8, v2);
  v27 = [v23 getLastAppLaunchSessionBetweenStartDate:v25 endDate:v26];

  if (!v27)
  {
    return 0;
  }

  v28 = [v27 bundleID];

  v29 = sub_22635046C();
  return v29;
}

uint64_t sub_2262C19D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2262E8694(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RankedVisualAction(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_2262D6000(v11, a2, type metadata accessor for RankedVisualAction);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t (*sub_2262C1B08(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_22634EEFC();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2262D1A14(v4, v9);
  return sub_2262C1C20;
}

void sub_2262C1C20(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_2262C1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x2822009F8](sub_2262C1CB8, a4, 0);
}

uint64_t sub_2262C1CB8()
{
  sub_2262D4CDC(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2262C1D18(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793028, &qword_226351EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v201 = &v188 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793030, &qword_226351EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v200 = &v188 - v7;
  v8 = sub_22634EEFC();
  v209 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v204 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v188 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v188 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v188 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v188 - v20;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930D0, &unk_226352510);
  v22 = *(v208 - 8);
  v23 = MEMORY[0x28223BE20](v208);
  v199 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v207 = &v188 - v26;
  MEMORY[0x28223BE20](v25);
  v206 = (&v188 - v27);
  v190 = v2;
  v210 = v8;
  if (a1)
  {
    v192 = v21;
    v28 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
    swift_beginAccess();
    v189 = v28;

    v30 = sub_2262D4B1C(v29, a1);
    v188 = 0;
    v31 = v30;

    v32 = *(v31 + 16);
    if (v32)
    {
      v211 = MEMORY[0x277D84F90];
      sub_2263165F0(0, v32, 0);
      v205 = v211;
      v33 = v31 + 64;
      v34 = sub_2263508DC();
      v35 = 0;
      v197 = (v209 + 16);
      v196 = v209 + 32;
      v195 = v209 + 8;
      v191 = v31 + 72;
      v193 = v32;
      v198 = v31 + 64;
      v194 = v31;
      v36 = v210;
      while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v31 + 32))
      {
        v38 = v34 >> 6;
        if ((*(v33 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
        {
          goto LABEL_103;
        }

        v39 = *(v31 + 36);
        v202 = v35;
        v203 = v39;
        v41 = v208;
        v40 = v209;
        v42 = *(v208 + 48);
        v43 = v206;
        (*(v209 + 16))(v206, *(v31 + 48) + *(v209 + 72) * v34, v36);
        v44 = *(v31 + 56);
        v45 = (type metadata accessor for ActionContext(0) - 8);
        sub_2262D5EB8(v44 + *(*v45 + 72) * v34, v43 + v42, type metadata accessor for ActionContext);
        v46 = v207;
        (*(v40 + 32))(v207, v43, v36);
        sub_2262D6000(v43 + v42, v46 + *(v41 + 48), type metadata accessor for ActionContext);
        v47 = v199;
        sub_2262D6764(v46, v199, &qword_27D7930D0, &unk_226352510);
        v48 = v47 + *(v41 + 48);
        v49 = *(v48 + v45[9]);
        sub_2262D6068(v48, type metadata accessor for ActionContext);
        (*(v40 + 8))(v47, v36);
        v211 = v205;
        v51 = *(v205 + 16);
        v50 = *(v205 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2263165F0((v50 > 1), v51 + 1, 1);
          v205 = v211;
        }

        v52 = v205;
        *(v205 + 16) = v51 + 1;
        *(v52 + 8 * v51 + 32) = v49;
        v31 = v194;
        v37 = 1 << *(v194 + 32);
        v33 = v198;
        if (v34 >= v37)
        {
          goto LABEL_104;
        }

        v53 = *(v198 + 8 * v38);
        if ((v53 & (1 << v34)) == 0)
        {
          goto LABEL_105;
        }

        if (v203 != *(v194 + 36))
        {
          goto LABEL_106;
        }

        v54 = v53 & (-2 << (v34 & 0x3F));
        if (v54)
        {
          v37 = __clz(__rbit64(v54)) | v34 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v55 = v38 << 6;
          v56 = v38 + 1;
          v57 = (v191 + 8 * v38);
          while (v56 < (v37 + 63) >> 6)
          {
            v59 = *v57++;
            v58 = v59;
            v55 += 64;
            ++v56;
            if (v59)
            {
              sub_2262D67CC(v34, v203, 0);
              v37 = __clz(__rbit64(v58)) + v55;
              goto LABEL_5;
            }
          }

          sub_2262D67CC(v34, v203, 0);
        }

LABEL_5:
        v35 = v202 + 1;
        v34 = v37;
        if ((v202 + 1) == v193)
        {

          v8 = v210;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v205 = MEMORY[0x277D84F90];
LABEL_34:
    v34 = v204;
    v79 = *(v205 + 16);
    v2 = v190;
    if (!v79)
    {

      v119 = MEMORY[0x277D84F90];
      v90 = v209;
      v120 = *(MEMORY[0x277D84F90] + 16);
      if (!v120)
      {
      }

LABEL_88:
      v153 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
      v154 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
      v156 = *(v90 + 16);
      v155 = v90 + 16;
      v157 = *(v155 + 64);
      v202 = v119;
      v203 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
      v158 = v119 + ((v157 + 32) & ~v157);
      v159 = (v155 - 8);
      v160 = *(v155 + 56);
      v205 = v156;
      v206 = (v155 - 8);
      v209 = v155;
      v199 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
      v207 = v160;
      do
      {
        v208 = v120;
        (v205)(v34, v158, v8);
        swift_beginAccess();
        v164 = sub_2263394D8(v34);
        if (v165)
        {
          v166 = v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v168 = *(v2 + v153);
          v212 = v168;
          *(v2 + v153) = 0x8000000000000000;
          v169 = v2;
          v170 = v153;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22633A370();
            v168 = v212;
          }

          (*v159)(*(v168 + 48) + v166 * v207, v8);
          v171 = *(v168 + 56);
          v172 = type metadata accessor for RankedVisualAction(0);
          v173 = *(v172 - 8);
          v174 = v171 + *(v173 + 72) * v166;
          v175 = v200;
          sub_2262D6000(v174, v200, type metadata accessor for RankedVisualAction);
          sub_2262E2400(v166, v168);
          *(v169 + v170) = v168;

          (*(v173 + 56))(v175, 0, 1, v172);
          v8 = v210;
          v2 = v169;
          v34 = v204;
          v154 = v199;
        }

        else
        {
          v176 = type metadata accessor for RankedVisualAction(0);
          v175 = v200;
          (*(*(v176 - 8) + 56))(v200, 1, 1, v176);
        }

        sub_2262D67D8(v175, &qword_27D793030, &qword_226351EF0);
        swift_endAccess();
        swift_beginAccess();
        v177 = sub_2263394D8(v34);
        if (v178)
        {
          v179 = v177;
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v2 + v154);
          v212 = v181;
          *(v2 + v154) = 0x8000000000000000;
          v182 = v2;
          if (!v180)
          {
            sub_22633A334();
            v181 = v212;
          }

          v159 = v206;
          v163 = v207;
          (*v206)(*(v181 + 48) + v179 * v207, v8);
          v183 = *(v181 + 56);
          v184 = type metadata accessor for ActionContext(0);
          v185 = *(v184 - 8);
          v186 = v183 + *(v185 + 72) * v179;
          v162 = v201;
          sub_2262D6000(v186, v201, type metadata accessor for ActionContext);
          sub_2262E23E8(v179, v181);
          *(v182 + v154) = v181;

          (*(v185 + 56))(v162, 0, 1, v184);
          v8 = v210;
          v2 = v182;
          v34 = v204;
        }

        else
        {
          v161 = type metadata accessor for ActionContext(0);
          v162 = v201;
          (*(*(v161 - 8) + 56))(v201, 1, 1, v161);
          v159 = v206;
          v163 = v207;
        }

        sub_2262D67D8(v162, &qword_27D793028, &qword_226351EE8);
        swift_endAccess();
        (*v159)(v34, v8);
        v158 += v163;
        v120 = v208 - 1;
        v153 = v203;
      }

      while (v208 != 1);
    }

    v80 = *(v205 + 32);
    v81 = v79 - 1;
    if (v81)
    {
      v82 = (v205 + 40);
      do
      {
        v83 = *v82++;
        v84 = v83;
        if (v83 < v80)
        {
          v80 = v84;
        }

        --v81;
      }

      while (v81);
    }

    v86 = sub_2262D3ADC(v85, v80);

    v34 = *(v86 + 2);
    if (v34)
    {
      v211 = MEMORY[0x277D84F90];
      sub_226316650(0, v34, 0);
      v202 = v211;
      v87 = v86 + 64;
      v88 = sub_2263508DC();
      v89 = 0;
      v90 = v209;
      v196 = v209 + 16;
      v195 = v209 + 32;
      v189 = v86 + 72;
      v191 = v34;
      v193 = v86 + 64;
      v194 = v86;
      while ((v88 & 0x8000000000000000) == 0 && v88 < 1 << v86[32])
      {
        v93 = v88 >> 6;
        if ((*&v87[8 * (v88 >> 6)] & (1 << v88)) == 0)
        {
          goto LABEL_108;
        }

        v203 = 1 << v88;
        v197 = v89;
        v198 = *(v86 + 9);
        v94 = v208;
        v95 = *(v208 + 48);
        v96 = *(v86 + 6);
        v205 = *(v90 + 72);
        v97 = v206;
        v98 = v210;
        (*(v90 + 16))(v206, v96 + v205 * v88, v210);
        v99 = *(v86 + 7);
        v100 = v99 + *(*(type metadata accessor for ActionContext(0) - 8) + 72) * v88;
        v101 = v209;
        sub_2262D5EB8(v100, v97 + v95, type metadata accessor for ActionContext);
        v102 = *(v101 + 32);
        v103 = v207;
        v102(v207, v97, v98);
        v104 = v97 + v95;
        v34 = v192;
        sub_2262D6000(v104, v103 + *(v94 + 48), type metadata accessor for ActionContext);
        v105 = v103;
        v106 = v199;
        sub_2262D6764(v105, v199, &qword_27D7930D0, &unk_226352510);
        v107 = *(v94 + 48);
        v102(v34, v106, v98);
        sub_2262D6068(v106 + v107, type metadata accessor for ActionContext);
        v108 = v202;
        v211 = v202;
        v110 = *(v202 + 16);
        v109 = *(v202 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_226316650((v109 > 1), v110 + 1, 1);
          v101 = v209;
          v108 = v211;
        }

        *(v108 + 16) = v110 + 1;
        v111 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v202 = v108;
        v102(v108 + v111 + v110 * v205, v34, v98);
        v86 = v194;
        v91 = 1 << *(v194 + 32);
        if (v88 >= v91)
        {
          goto LABEL_109;
        }

        v87 = v193;
        v112 = *&v193[8 * v93];
        if ((v112 & v203) == 0)
        {
          goto LABEL_110;
        }

        if (v198 != *(v194 + 36))
        {
          goto LABEL_111;
        }

        v113 = v112 & (-2 << (v88 & 0x3F));
        if (v113)
        {
          v91 = __clz(__rbit64(v113)) | v88 & 0x7FFFFFFFFFFFFFC0;
          v8 = v210;
          v34 = v191;
          v92 = v197;
        }

        else
        {
          v114 = v93 << 6;
          v115 = v93 + 1;
          v116 = &v189[8 * v93];
          v8 = v210;
          v34 = v191;
          v92 = v197;
          while (v115 < (v91 + 63) >> 6)
          {
            v118 = *v116++;
            v117 = v118;
            v114 += 64;
            ++v115;
            if (v118)
            {
              sub_2262D67CC(v88, v198, 0);
              v91 = __clz(__rbit64(v117)) + v114;
              goto LABEL_43;
            }
          }

          sub_2262D67CC(v88, v198, 0);
        }

LABEL_43:
        v89 = v92 + 1;
        v88 = v91;
        v90 = v209;
        if (v89 == v34)
        {

          v2 = v190;
          v34 = v204;
          v119 = v202;
          v120 = *(v202 + 16);
          if (v120)
          {
            goto LABEL_88;
          }
        }
      }

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
      goto LABEL_112;
    }

    v119 = MEMORY[0x277D84F90];
    v2 = v190;
LABEL_84:
    v90 = v209;
LABEL_85:
    v34 = v204;
    v120 = *(v119 + 16);
    if (!v120)
    {
    }

    goto LABEL_88;
  }

  v60 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v61 = *(v2 + v60);
  v34 = *(v61 + 16);
  if (v34 < 0x3E9)
  {
    v119 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v205 = v19;
  v197 = v16;
  v198 = v13;
  v62 = sub_2262DD73C(v34, 0);
  v194 = v22;
  v63 = (v22[80] + 32) & ~v22[80];
  v64 = sub_2262DEF9C(&v211, v62 + v63, v34, v61);
  v65 = v211;
  swift_bridgeObjectRetain_n();
  sub_2262D66F4(v65);
  if (v64 == v34)
  {
    v211 = v62;
    v34 = 0;
    sub_2262D2058(&v211);

    v66 = v211[2];
    if (v66 >= 0x1F4)
    {
      v67 = 500;
    }

    else
    {
      v67 = v211[2];
    }

    v192 = v211;
    v68 = v211 + v63;
    v69 = MEMORY[0x277D84F90];
    v193 = v66;
    if (v66)
    {
      v211 = MEMORY[0x277D84F90];
      sub_226316650(0, v67, 0);
      v69 = v211;
      v203 = v209 + 16;
      v202 = *(v194 + 72);
      v70 = (v209 + 8);
      v199 = v209 + 32;
      v71 = v68;
      v72 = v67;
      while (v72)
      {
        v73 = v206;
        sub_2262D66FC(v71, v206, &qword_27D7930D0, &unk_226352510);
        v74 = v207;
        sub_2262D6764(v73, v207, &qword_27D7930D0, &unk_226352510);
        v75 = *(v208 + 48);
        v34 = v205;
        v76 = v210;
        (*v203)(v205, v74 + v75, v210);
        sub_2262D6068(v74 + v75, type metadata accessor for ActionContext);
        (*v70)(v74, v76);
        v211 = v69;
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_226316650((v77 > 1), v78 + 1, 1);
          v69 = v211;
        }

        *(v69 + 16) = v78 + 1;
        (*(v209 + 32))(v69 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v78, v34, v76);
        v71 += v202;
        if (!--v72)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_113;
    }

LABEL_63:
    v121 = sub_22630C040(v69);

    v122 = 0;
    v124 = v121 + 56;
    v123 = *(v121 + 56);
    v202 = v121;
    v125 = 1 << *(v121 + 32);
    v126 = -1;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    v34 = v126 & v123;
    v127 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
    v128 = (v125 + 63) >> 6;
    v90 = v209;
    v195 = v209 + 16;
    v205 = v209 + 8;
    v199 = v121 + 56;
    v196 = v128;
    while (v34)
    {
LABEL_73:
      v130 = *(v202 + 48);
      v203 = *(v90 + 72);
      v131 = v197;
      v132 = v210;
      (*(v90 + 16))(v197, v130 + v203 * (__clz(__rbit64(v34)) | (v122 << 6)), v210);
      swift_beginAccess();
      v133 = v90;
      v134 = sub_2263394D8(v131);
      v136 = v135;
      v137 = *(v133 + 8);
      v137(v131, v132);
      if (v136)
      {
        v138 = v134;
        v139 = v190;
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v141 = *(v139 + v127);
        v212 = v141;
        *(v139 + v127) = 0x8000000000000000;
        if (!v140)
        {
          sub_22633A6C4();
          v141 = v212;
        }

        v137(*(v141 + 48) + v138 * v203, v210);

        sub_2262E2768(v138, v141);
        *(v139 + v127) = v141;
      }

      v34 &= v34 - 1;
      swift_endAccess();
      v90 = v209;
      v124 = v199;
      v128 = v196;
    }

    while (1)
    {
      v129 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        break;
      }

      if (v129 >= v128)
      {

        if (!v193)
        {

          v119 = MEMORY[0x277D84F90];
          v2 = v190;
          v8 = v210;
          goto LABEL_85;
        }

        v211 = MEMORY[0x277D84F90];
        sub_226316650(0, v67, 0);
        v90 = v209;
        v142 = v211;
        v205 = *(v194 + 72);
        v143 = (v209 + 32);
        while (v67)
        {
          v144 = v206;
          sub_2262D66FC(v68, v206, &qword_27D7930D0, &unk_226352510);
          v145 = v207;
          sub_2262D6764(v144, v207, &qword_27D7930D0, &unk_226352510);
          v146 = *(v208 + 48);
          v147 = *v143;
          v148 = v198;
          v149 = v210;
          (*v143)(v198, v145, v210);
          sub_2262D6068(v145 + v146, type metadata accessor for ActionContext);
          v150 = v142;
          v211 = v142;
          v152 = *(v142 + 16);
          v151 = *(v142 + 24);
          if (v152 >= v151 >> 1)
          {
            sub_226316650((v151 > 1), v152 + 1, 1);
            v90 = v209;
            v150 = v211;
          }

          *(v150 + 16) = v152 + 1;
          v142 = v150;
          v147(v150 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v152, v148, v149);
          v34 = v204;
          v68 += v205;
          if (!--v67)
          {

            v2 = v190;
            v8 = v210;
            v119 = v142;
            v120 = *(v142 + 16);
            if (!v120)
            {
            }

            goto LABEL_88;
          }
        }

        goto LABEL_114;
      }

      v34 = *(v124 + 8 * v129);
      ++v122;
      if (v34)
      {
        v122 = v129;
        goto LABEL_73;
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2262C3288(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_22634F14C();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v5 = sub_22634F10C();
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v3[58] = swift_task_alloc();
  v6 = sub_22634FB0C();
  v3[59] = v6;
  v3[60] = *(v6 - 8);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793018, &unk_2263552F0);
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793020, &qword_226351EE0);
  v3[63] = swift_task_alloc();
  v3[64] = type metadata accessor for VisualAction.Kind(0);
  v3[65] = swift_task_alloc();
  v7 = sub_22634FB9C();
  v3[66] = v7;
  v3[67] = *(v7 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v8 = sub_22634FAEC();
  v3[71] = v8;
  v3[72] = *(v8 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v9 = type metadata accessor for VisualAction(0);
  v3[78] = v9;
  v3[79] = *(v9 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793028, &qword_226351EE8);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v10 = type metadata accessor for RankedVisualAction(0);
  v3[84] = v10;
  v3[85] = *(v10 - 8);
  v3[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793030, &qword_226351EF0);
  v3[87] = swift_task_alloc();
  v11 = sub_22634EEFC();
  v3[88] = v11;
  v3[89] = *(v11 - 8);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v12 = sub_22635007C();
  v3[93] = v12;
  v3[94] = *(v12 - 8);
  v3[95] = swift_task_alloc();
  v13 = sub_2263502EC();
  v3[96] = v13;
  v3[97] = *(v13 - 8);
  v3[98] = swift_task_alloc();
  v14 = sub_2263500AC();
  v3[99] = v14;
  v3[100] = *(v14 - 8);
  v3[101] = swift_task_alloc();
  v15 = sub_22634F3BC();
  v3[102] = v15;
  v3[103] = *(v15 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v16 = sub_22634FBEC();
  v3[106] = v16;
  v3[107] = *(v16 - 8);
  v3[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v17 = sub_22634F9BC();
  v3[113] = v17;
  v3[114] = *(v17 - 8);
  v3[115] = swift_task_alloc();
  v18 = sub_22634F51C();
  v3[116] = v18;
  v3[117] = *(v18 - 8);
  v3[118] = swift_task_alloc();
  v3[119] = swift_task_alloc();
  v19 = sub_22634F3DC();
  v3[120] = v19;
  v3[121] = *(v19 - 8);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793038, &qword_226351EF8);
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v20 = sub_22634FDFC();
  v3[131] = v20;
  v3[132] = *(v20 - 8);
  v3[133] = swift_task_alloc();
  v21 = sub_22634EECC();
  v3[134] = v21;
  v3[135] = *(v21 - 8);
  v3[136] = swift_task_alloc();
  v3[137] = swift_task_alloc();
  v3[138] = type metadata accessor for Analytics(0);
  v3[139] = swift_task_alloc();
  v22 = sub_22634F78C();
  v3[140] = v22;
  v3[141] = *(v22 - 8);
  v3[142] = swift_task_alloc();
  v3[143] = swift_task_alloc();
  v3[144] = swift_task_alloc();
  v23 = sub_22635004C();
  v3[145] = v23;
  v3[146] = *(v23 - 8);
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262C3DA0, v2, 0);
}

uint64_t sub_2262C3DA0()
{
  v251 = v0;
  if (sub_22634FCBC())
  {
    v1 = *(v0 + 1152);
    v2 = *(v0 + 1128);
    v3 = *(v0 + 1120);
    v4 = *(v0 + 392);
    sub_22634FFEC();
    v5 = *(v2 + 16);
    v5(v1, v4, v3);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 1168);
    v11 = *(v0 + 1160);
    v12 = *(v0 + 1152);
    if (v8)
    {
      v222 = *(v0 + 1144);
      v226 = v5;
      v245 = *(v0 + 1240);
      v13 = *(v0 + 1128);
      v14 = *(v0 + 1120);
      v235 = v7;
      v238 = *(v0 + 1160);
      v15 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v250[0] = v230;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, v250);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD00000000000001ALL, 0x8000000226356530, v250);
      *(v15 + 22) = 2080;
      v226(v222, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, v250);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v235, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v230, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v10 + 8))(v245, v238);
    }

    else
    {
      v34 = *(v0 + 1128);
      v35 = *(v0 + 1120);

      (*(v34 + 8))(v12, v35);
      (*(v10 + 8))(v9, v11);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1232);
    v27 = *(v0 + 1168);
    v28 = *(v0 + 1160);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v250[0] = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, v250);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD00000000000001ALL, 0x8000000226356530, v250);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0 + 1112);
  v37 = *(v0 + 1104);
  v38 = *(v0 + 1096);
  v39 = *(v0 + 1080);
  v208 = *(v0 + 1072);
  v210 = *(v0 + 1064);
  v40 = *(v0 + 1056);
  v218 = *(v0 + 1040);
  v239 = *(v0 + 840);
  v231 = *(v0 + 824);
  v246 = *(v0 + 816);
  v41 = *(v0 + 536);
  v213 = *(v0 + 1048);
  v215 = *(v0 + 528);
  (*(*(v0 + 712) + 16))(&v36[v37[5]], *(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id, *(v0 + 704));
  v42 = v37[13];
  sub_22634F77C();
  v43 = &v36[v37[6]];
  *v43 = 0;
  v43[8] = 1;
  v44 = v37[7];
  *(v0 + 1392) = v44;
  v45 = &v36[v44];
  v45[2] = 0u;
  v45[3] = 0u;
  *v45 = 0u;
  v45[1] = 0u;
  v46 = v37[8];
  *(v0 + 1396) = v46;
  v36[v46] = 2;
  v47 = &v36[v37[9]];
  *v47 = 0;
  v47[1] = 0;
  v36[v37[10]] = 3;
  v36[v37[11]] = 2;
  v48 = v37[12];
  v49 = sub_22634F47C();
  *(v0 + 1248) = v49;
  v50 = *(v49 - 8);
  *(v0 + 1256) = v50;
  (*(v50 + 56))(&v36[v48], 1, 1, v49);
  *&v36[v37[14]] = MEMORY[0x277D84F98];
  *&v36[v37[15]] = MEMORY[0x277D84F90];
  v36[v37[16]] = 0;
  *v36 = 1;
  sub_22634EEAC();
  sub_2262EB938(1, v38);
  v51 = *(v39 + 8);
  *(v0 + 1264) = v51;
  *(v0 + 1272) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v38, v208);
  sub_22634F77C();
  (*(v40 + 40))(&v36[v42], v210, v213);
  v52 = *(v41 + 56);
  *(v0 + 1280) = v52;
  *(v0 + 1288) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v52(v218, 1, 1, v215);
  sub_22634F74C();
  sub_22634F76C();
  sub_22634F75C();
  sub_22634F3CC();
  v53 = *(v231 + 88);
  if (v53(v239, v246) == *MEMORY[0x277D78670])
  {
    v54 = *(v0 + 896);
    v55 = *(v0 + 864);
    v56 = *(v0 + 856);
    v57 = *(v0 + 848);
    v58 = *(v0 + 840);
    v59 = *(v0 + 632);
    v60 = *(v0 + 624);
    (*(*(v0 + 824) + 96))(v58, *(v0 + 816));
    v61 = *(v56 + 32);
    v61(v55, v58, v57);
    v240 = sub_22634FBCC();
    v63 = v62;
    v61(v54 + v60[5], v55, v57);
    swift_storeEnumTagMultiPayload();
    *v54 = v240;
    v54[1] = v63;
    v64 = MEMORY[0x277D84F98];
    *(v54 + v60[6]) = MEMORY[0x277D84F98];
    *(v54 + v60[7]) = v64;
    *(v54 + v60[8]) = v64;
    (*(v59 + 56))(v54, 0, 1, v60);
    goto LABEL_28;
  }

  v65 = *(v0 + 832);
  v66 = *(v0 + 816);
  v67 = *(*(v0 + 824) + 8);
  v67(*(v0 + 840), v66);
  sub_22634F3CC();
  if (v53(v65, v66) == *MEMORY[0x277D78678])
  {
    v68 = *(v0 + 832);
    (*(*(v0 + 824) + 96))(v68, *(v0 + 816));
    *(v0 + 1296) = *v68;
    *(v0 + 1304) = v68[1];
    *(v0 + 336) = sub_22634F38C();
    *(v0 + 344) = v69;
    if (qword_27D792EA0 != -1)
    {
LABEL_55:
      swift_once();
    }

    v70 = *(v0 + 808);
    v71 = *(v0 + 800);
    v72 = *(v0 + 792);
    v73 = *(v0 + 784);
    v74 = *(v0 + 776);
    v75 = *(v0 + 768);
    v76 = *(v0 + 760);
    v77 = *(v0 + 752);
    v241 = *(v0 + 744);
    v78 = __swift_project_value_buffer(v75, qword_27D793ED8);
    (*(v74 + 16))(v73, v78, v75);
    sub_22635032C();
    (*(v71 + 104))(v70, *MEMORY[0x277D72148], v72);
    sub_22635008C();
    (*(v71 + 8))(v70, v72);
    v79 = sub_22635006C();
    v81 = v80;
    (*(v77 + 8))(v76, v241);
    *(v0 + 352) = v79;
    *(v0 + 360) = v81;
    sub_2262D61E0();
    LOBYTE(v79) = sub_22635087C();

    if (v79)
    {
      v82 = *(*(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_toolManager);
      *(v0 + 1312) = v82;

      return MEMORY[0x2822009F8](sub_2262C58BC, v82, 0);
    }
  }

  else
  {
    v67(*(v0 + 832), *(v0 + 816));
  }

  v83 = *(v0 + 400);
  sub_22634F39C();
  v84 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  swift_beginAccess();
  v85 = *(v83 + v84);
  v86 = *(v0 + 736);
  if (!*(v85 + 16))
  {
    (*(*(v0 + 712) + 8))(*(v0 + 736), *(v0 + 704));
LABEL_23:
    v92 = 1;
    goto LABEL_24;
  }

  v87 = sub_2263394D8(v86);
  v88 = *(v0 + 736);
  v89 = *(v0 + 712);
  v90 = *(v0 + 704);
  if ((v91 & 1) == 0)
  {

    (*(v89 + 8))(v88, v90);
    goto LABEL_23;
  }

  sub_2262D5EB8(*(v85 + 56) + *(*(v0 + 680) + 72) * v87, *(v0 + 696), type metadata accessor for RankedVisualAction);
  (*(v89 + 8))(v88, v90);

  v92 = 0;
LABEL_24:
  v93 = *(v0 + 696);
  v94 = *(v0 + 680);
  v95 = *(v0 + 672);
  (*(v94 + 56))(v93, v92, 1, v95);
  if ((*(v94 + 48))(v93, 1, v95))
  {
    sub_2262D67D8(*(v0 + 696), &qword_27D793030, &qword_226351EF0);
    v96 = 1;
  }

  else
  {
    v97 = *(v0 + 880);
    v98 = *(v0 + 696);
    v99 = *(v0 + 688);
    sub_2262D5EB8(v98, v99, type metadata accessor for RankedVisualAction);
    sub_2262D67D8(v98, &qword_27D793030, &qword_226351EF0);
    sub_2262D6000(v99, v97, type metadata accessor for VisualAction);
    v96 = 0;
  }

  v100 = *(v0 + 896);
  v101 = *(v0 + 880);
  (*(*(v0 + 632) + 56))(v101, v96, 1, *(v0 + 624));
  sub_2262D6764(v101, v100, &qword_27D793008, &unk_226351EC0);
LABEL_28:
  *(v0 + 1328) = 0;
  v102 = *(v0 + 1016);
  v103 = *(v0 + 968);
  v104 = *(v0 + 960);
  v105 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v106 = *(v103 + 8);
  *(v0 + 1336) = v106;
  *(v0 + 1344) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v106(v102, v104);
  v107 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v108 = *(v105 + v107);
  v109 = *(v0 + 728);
  if (*(v108 + 16))
  {

    v110 = sub_2263394D8(v109);
    v111 = *(v0 + 728);
    v112 = *(v0 + 712);
    v113 = *(v0 + 704);
    v114 = *(v0 + 664);
    if (v115)
    {
      v116 = v110;
      v242 = v106;
      v117 = *(v108 + 56);
      v118 = type metadata accessor for ActionContext(0);
      v119 = *(v118 - 8);
      v120 = v117 + *(v119 + 72) * v116;
      v106 = v242;
      sub_2262D5EB8(v120, v114, type metadata accessor for ActionContext);
      v121 = *(v112 + 8);
      v121(v111, v113);

      (*(v119 + 56))(v114, 0, 1, v118);
    }

    else
    {

      v121 = *(v112 + 8);
      v121(v111, v113);
      v124 = type metadata accessor for ActionContext(0);
      (*(*(v124 - 8) + 56))(v114, 1, 1, v124);
    }
  }

  else
  {
    v122 = *(v0 + 664);
    v121 = *(*(v0 + 712) + 8);
    v121(*(v0 + 728), *(v0 + 704));
    v123 = type metadata accessor for ActionContext(0);
    (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
  }

  v125 = *(v0 + 872);
  v126 = *(v0 + 632);
  v127 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v125, &qword_27D793008, &unk_226351EC0);
  if ((*(v126 + 48))(v125, 1, v127) == 1)
  {
    v236 = v121;
    v243 = v106;
    v128 = *(v0 + 1136);
    v129 = *(v0 + 1128);
    v130 = *(v0 + 1120);
    v131 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v129 + 16))(v128, v131, v130);
    v132 = sub_22635003C();
    v133 = sub_22635073C();
    v134 = os_log_type_enabled(v132, v133);
    v135 = *(v0 + 1176);
    v136 = *(v0 + 1168);
    v137 = *(v0 + 1160);
    v138 = *(v0 + 1136);
    v139 = *(v0 + 1128);
    v140 = *(v0 + 1120);
    if (v134)
    {
      v223 = v133;
      v141 = *(v0 + 1000);
      v232 = *(v0 + 1160);
      v142 = *(v0 + 720);
      v211 = *(v0 + 960);
      v143 = *(v0 + 704);
      v216 = *(v0 + 1120);
      v144 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v250[0] = v219;
      *v144 = 136315138;
      v227 = v135;
      sub_22634F74C();
      sub_22634F39C();
      v243(v141, v211);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v145 = sub_226350C1C();
      v147 = v146;
      v236(v142, v143);
      (*(v139 + 8))(v138, v216);
      v148 = sub_226345004(v145, v147, v250);

      *(v144 + 4) = v148;
      _os_log_impl(&dword_2262B6000, v132, v223, "Cannot find action for action id: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v219);
      MEMORY[0x22AA7D570](v219, -1, -1);
      MEMORY[0x22AA7D570](v144, -1, -1);

      (*(v136 + 8))(v227, v232);
    }

    else
    {

      (*(v139 + 8))(v138, v140);
      (*(v136 + 8))(v135, v137);
    }

    v203 = *(v0 + 1396);
    v201 = *(v0 + 1112);
    v202 = *(v0 + 1096);
    v205 = *(v0 + 1072);
    v206 = *(v0 + 1264);
    v233 = *(v0 + 1024);
    v237 = *(v0 + 1040);
    v224 = *(v0 + 952);
    v228 = *(v0 + 960);
    v217 = *(v0 + 936);
    v220 = *(v0 + 928);
    v209 = *(v0 + 912);
    v212 = *(v0 + 904);
    v214 = *(v0 + 920);
    v207 = *(v0 + 896);
    v204 = *(v0 + 664);
    v172 = *(v0 + 592);
    v173 = *(v0 + 576);
    v174 = *(v0 + 568);
    v175 = *(v0 + 528);
    v176 = (v201 + *(v0 + 1392));
    v177 = *MEMORY[0x277D78AC0];
    v178 = *(*(v0 + 536) + 104);
    v178(v172, v177, v175);
    (*(v173 + 104))(v172, *MEMORY[0x277D78A40], v174);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00], MEMORY[0x277D78B08]);
    v179 = swift_allocError();
    v178(v180, v177, v175);
    v181 = v179;
    sub_2262F3A84(0, 0, v249);

    v182 = *v176;
    v183 = v176[1];
    v184 = v176[3];
    *(v0 + 48) = v176[2];
    *(v0 + 64) = v184;
    *(v0 + 16) = v182;
    *(v0 + 32) = v183;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v185 = v249[1];
    *v176 = v249[0];
    v176[1] = v185;
    v186 = v249[3];
    v176[2] = v249[2];
    v176[3] = v186;
    *(v201 + v203) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v202);
    v206(v202, v205);
    sub_2262EC7A0();
    sub_2262D67D8(v204, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v207, &qword_27D793008, &unk_226351EC0);
    (*(v209 + 8))(v214, v212);
    (*(v217 + 8))(v224, v220);
    v243(v233, v228);
    sub_2262D67D8(v237, &qword_27D793038, &qword_226351EF8);
LABEL_48:
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v194 = *(v0 + 8);

    return v194();
  }

  v149 = *(v0 + 400);
  sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v150 = *(v149 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v150;
  v151 = *(v150 + 16);
  *(v0 + 1360) = v151;
  if (!v151)
  {
LABEL_41:
    v159 = *(v0 + 1264);
    v160 = *(v0 + 1096);
    v161 = *(v0 + 1072);
    v162 = *(v0 + 1040);
    v163 = *(v0 + 1032);
    v164 = *(v0 + 536);
    v165 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v160);
    v159(v160, v161);
    sub_2262EC7A0();
    sub_2262D66FC(v162, v163, &qword_27D793038, &qword_226351EF8);
    v166 = *(v164 + 48);
    v167 = v166(v163, 1, v165);
    v168 = *(v0 + 1032);
    v169 = *(v0 + 584);
    v170 = *(v0 + 536);
    v171 = *(v0 + 528);
    if (v167 == 1)
    {
      (*(v170 + 104))(v169, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v166(v168, 1, v171) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v170 + 32))(v169, *(v0 + 1032), *(v0 + 528));
    }

    v234 = *(v0 + 1336);
    v225 = *(v0 + 960);
    v229 = *(v0 + 1024);
    v221 = *(v0 + 952);
    v187 = *(v0 + 936);
    v188 = *(v0 + 928);
    v189 = *(v0 + 920);
    v190 = *(v0 + 912);
    v191 = *(v0 + 904);
    v192 = *(v0 + 896);
    v193 = *(v0 + 664);
    v244 = *(v0 + 640);
    v247 = *(v0 + 1040);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v193, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v192, &qword_27D793008, &unk_226351EC0);
    (*(v190 + 8))(v189, v191);
    (*(v187 + 8))(v221, v188);
    v234(v229, v225);
    sub_2262D67D8(v247, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v244, type metadata accessor for VisualAction);
    goto LABEL_48;
  }

  v152 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v152;
    v153 = *(v0 + 1352);
    if (v152 >= *(v153 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v154 = *(v0 + 640);
    v155 = v153 + 16 * v152;
    *(v0 + 1376) = *(v155 + 32);
    v156 = *(v155 + 40);
    ObjectType = swift_getObjectType();
    v158 = *(v156 + 16);
    swift_unknownObjectRetain();
    if (v158(v154, ObjectType, v156))
    {
      break;
    }

    swift_unknownObjectRelease();
    v152 = *(v0 + 1368) + 1;
    if (v152 == *(v0 + 1360))
    {
      goto LABEL_41;
    }
  }

  v248 = (*(v156 + 24) + **(v156 + 24));
  v195 = swift_task_alloc();
  *(v0 + 1384) = v195;
  *v195 = v0;
  v195[1] = sub_2262C6918;
  v196 = *(v0 + 952);
  v197 = *(v0 + 920);
  v198 = *(v0 + 640);
  v199 = *(v0 + 616);

  return v248(v199, v198, v196, v197, ObjectType, v156);
}

uint64_t sub_2262C58BC()
{
  sub_2262F7F04(*(v0 + 1296), *(v0 + 1304), *(v0 + 888));
  *(v0 + 1320) = 0;
  v1 = *(v0 + 400);

  return MEMORY[0x2822009F8](sub_2262C5974, v1, 0);
}

uint64_t sub_2262C5974()
{
  v137 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  (*(*(v0 + 632) + 56))(v3, 0, 1, *(v0 + 624));
  sub_2262D6764(v3, v2, &qword_27D793008, &unk_226351EC0);
  *(v0 + 1328) = v1;
  v4 = *(v0 + 1016);
  v5 = *(v0 + 968);
  v6 = *(v0 + 960);
  v7 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v8 = *(v5 + 8);
  *(v0 + 1336) = v8;
  *(v0 + 1344) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v10 = *(v7 + v9);
  v11 = *(v0 + 728);
  if (*(v10 + 16))
  {

    v12 = sub_2263394D8(v11);
    v13 = *(v0 + 728);
    v14 = *(v0 + 712);
    v15 = *(v0 + 704);
    v16 = *(v0 + 664);
    if (v17)
    {
      v18 = v12;
      v130 = v8;
      v19 = *(v10 + 56);
      v20 = type metadata accessor for ActionContext(0);
      v21 = *(v20 - 8);
      v22 = v19 + *(v21 + 72) * v18;
      v8 = v130;
      sub_2262D5EB8(v22, v16, type metadata accessor for ActionContext);
      v23 = *(v14 + 8);
      v23(v13, v15);

      (*(v21 + 56))(v16, 0, 1, v20);
    }

    else
    {

      v23 = *(v14 + 8);
      v23(v13, v15);
      v26 = type metadata accessor for ActionContext(0);
      (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    }
  }

  else
  {
    v24 = *(v0 + 664);
    v23 = *(*(v0 + 712) + 8);
    v23(*(v0 + 728), *(v0 + 704));
    v25 = type metadata accessor for ActionContext(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  }

  v27 = *(v0 + 872);
  v28 = *(v0 + 632);
  v29 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v27, &qword_27D793008, &unk_226351EC0);
  if ((*(v28 + 48))(v27, 1, v29) == 1)
  {
    v128 = v23;
    v131 = v8;
    v30 = *(v0 + 1136);
    v31 = *(v0 + 1128);
    v32 = *(v0 + 1120);
    v33 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v31 + 16))(v30, v33, v32);
    v34 = sub_22635003C();
    v35 = sub_22635073C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 1176);
    v38 = *(v0 + 1168);
    v39 = *(v0 + 1160);
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1128);
    v42 = *(v0 + 1120);
    if (v36)
    {
      v119 = v35;
      v43 = *(v0 + 1000);
      v125 = *(v0 + 1160);
      v44 = *(v0 + 720);
      v111 = *(v0 + 960);
      v45 = *(v0 + 704);
      v114 = *(v0 + 1120);
      v46 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v136 = v116;
      *v46 = 136315138;
      v122 = v37;
      sub_22634F74C();
      sub_22634F39C();
      v131(v43, v111);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = sub_226350C1C();
      v49 = v48;
      v128(v44, v45);
      (*(v41 + 8))(v40, v114);
      v50 = sub_226345004(v47, v49, &v136);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2262B6000, v34, v119, "Cannot find action for action id: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x22AA7D570](v116, -1, -1);
      MEMORY[0x22AA7D570](v46, -1, -1);

      (*(v38 + 8))(v122, v125);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
      (*(v38 + 8))(v37, v39);
    }

    v105 = *(v0 + 1396);
    v103 = *(v0 + 1112);
    v104 = *(v0 + 1096);
    v107 = *(v0 + 1072);
    v108 = *(v0 + 1264);
    v126 = *(v0 + 1024);
    v129 = *(v0 + 1040);
    v120 = *(v0 + 952);
    v123 = *(v0 + 960);
    v115 = *(v0 + 936);
    v117 = *(v0 + 928);
    v110 = *(v0 + 912);
    v112 = *(v0 + 904);
    v113 = *(v0 + 920);
    v109 = *(v0 + 896);
    v106 = *(v0 + 664);
    v75 = *(v0 + 592);
    v76 = *(v0 + 576);
    v77 = *(v0 + 568);
    v78 = *(v0 + 528);
    v79 = (v103 + *(v0 + 1392));
    v80 = *MEMORY[0x277D78AC0];
    v81 = *(*(v0 + 536) + 104);
    v81(v75, v80, v78);
    (*(v76 + 104))(v75, *MEMORY[0x277D78A40], v77);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00], MEMORY[0x277D78B08]);
    v82 = swift_allocError();
    v81(v83, v80, v78);
    v84 = v82;
    sub_2262F3A84(0, 0, v135);

    v85 = *v79;
    v86 = v79[1];
    v87 = v79[3];
    *(v0 + 48) = v79[2];
    *(v0 + 64) = v87;
    *(v0 + 16) = v85;
    *(v0 + 32) = v86;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v88 = v135[1];
    *v79 = v135[0];
    v79[1] = v88;
    v89 = v135[3];
    v79[2] = v135[2];
    v79[3] = v89;
    *(v103 + v105) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v104);
    v108(v104, v107);
    sub_2262EC7A0();
    sub_2262D67D8(v106, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v109, &qword_27D793008, &unk_226351EC0);
    (*(v110 + 8))(v113, v112);
    (*(v115 + 8))(v120, v117);
    v131(v126, v123);
    sub_2262D67D8(v129, &qword_27D793038, &qword_226351EF8);
LABEL_21:
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v97 = *(v0 + 8);

    return v97();
  }

  v51 = *(v0 + 400);
  result = sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v53 = *(v51 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v53;
  v54 = *(v53 + 16);
  *(v0 + 1360) = v54;
  if (!v54)
  {
LABEL_14:
    v62 = *(v0 + 1264);
    v63 = *(v0 + 1096);
    v64 = *(v0 + 1072);
    v65 = *(v0 + 1040);
    v66 = *(v0 + 1032);
    v67 = *(v0 + 536);
    v68 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v63);
    v62(v63, v64);
    sub_2262EC7A0();
    sub_2262D66FC(v65, v66, &qword_27D793038, &qword_226351EF8);
    v69 = *(v67 + 48);
    v70 = v69(v66, 1, v68);
    v71 = *(v0 + 1032);
    v72 = *(v0 + 584);
    v73 = *(v0 + 536);
    v74 = *(v0 + 528);
    if (v70 == 1)
    {
      (*(v73 + 104))(v72, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v69(v71, 1, v74) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v73 + 32))(v72, *(v0 + 1032), *(v0 + 528));
    }

    v127 = *(v0 + 1336);
    v121 = *(v0 + 960);
    v124 = *(v0 + 1024);
    v118 = *(v0 + 952);
    v90 = *(v0 + 936);
    v91 = *(v0 + 928);
    v92 = *(v0 + 920);
    v93 = *(v0 + 912);
    v94 = *(v0 + 904);
    v95 = *(v0 + 896);
    v96 = *(v0 + 664);
    v132 = *(v0 + 640);
    v133 = *(v0 + 1040);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v96, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v95, &qword_27D793008, &unk_226351EC0);
    (*(v93 + 8))(v92, v94);
    (*(v90 + 8))(v118, v91);
    v127(v124, v121);
    sub_2262D67D8(v133, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v132, type metadata accessor for VisualAction);
    goto LABEL_21;
  }

  v55 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v55;
    v56 = *(v0 + 1352);
    if (v55 >= *(v56 + 16))
    {
      __break(1u);
      return result;
    }

    v57 = *(v0 + 640);
    v58 = v56 + 16 * v55;
    *(v0 + 1376) = *(v58 + 32);
    v59 = *(v58 + 40);
    ObjectType = swift_getObjectType();
    v61 = *(v59 + 16);
    swift_unknownObjectRetain();
    if (v61(v57, ObjectType, v59))
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v55 = *(v0 + 1368) + 1;
    if (v55 == *(v0 + 1360))
    {
      goto LABEL_14;
    }
  }

  v134 = (*(v59 + 24) + **(v59 + 24));
  v98 = swift_task_alloc();
  *(v0 + 1384) = v98;
  *v98 = v0;
  v98[1] = sub_2262C6918;
  v99 = *(v0 + 952);
  v100 = *(v0 + 920);
  v101 = *(v0 + 640);
  v102 = *(v0 + 616);

  return v134(v102, v101, v99, v100, ObjectType, v59);
}

uint64_t sub_2262C6918()
{
  v1 = *(*v0 + 400);

  return MEMORY[0x2822009F8](sub_2262C6A28, v1, 0);
}

uint64_t sub_2262C6A28()
{
  v373 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v3 + 16);
  v5(v2, *(v0 + 616), v4);
  v6 = (*(v3 + 88))(v2, v4);
  v363 = *(v0 + 1024);
  v7 = *(v0 + 968);
  v8 = *(v0 + 960);
  if (v6 != v1)
  {
    v36 = *(v0 + 992);
    v37 = *(v0 + 616);
    v38 = *(v0 + 600);
    v39 = *(v0 + 568);
    v353 = *(*(v0 + 576) + 8);
    v353(*(v0 + 608), v39);
    sub_22634FFEC();
    v336 = *(v7 + 16);
    v336(v36, v363, v8);
    v5(v38, v37, v39);
    v40 = sub_22635003C();
    v41 = sub_22635075C();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 1336);
    v44 = *(v0 + 1168);
    v356 = *(v0 + 1160);
    v365 = *(v0 + 1216);
    v344 = v5;
    if (v42)
    {
      v323 = v41;
      v45 = *(v0 + 1000);
      v46 = *(v0 + 992);
      v329 = *(v0 + 1168);
      v47 = *(v0 + 960);
      v305 = *(v0 + 592);
      v308 = *(v0 + 600);
      v48 = *(v0 + 568);
      v49 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      *&v372[0] = v317;
      *v49 = 136315394;
      v336(v45, v46, v47);
      v50 = sub_2263504CC();
      loga = v40;
      v52 = v51;
      v43(v46, v47);
      v53 = sub_226345004(v50, v52, v372);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v5(v305, v308, v48);
      v54 = sub_2263504CC();
      v56 = v55;
      v353(v308, v48);
      v57 = sub_226345004(v54, v56, v372);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_2262B6000, loga, v323, "Finished executing action %s with result %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v317, -1, -1);
      MEMORY[0x22AA7D570](v49, -1, -1);

      v58 = *(v329 + 8);
      v58(v365, v356);
    }

    else
    {
      v104 = *(v0 + 992);
      v105 = *(v0 + 960);
      v106 = *(v0 + 600);
      v107 = *(v0 + 568);

      v353(v106, v107);
      v43(v104, v105);
      v58 = *(v44 + 8);
      v58(v365, v356);
    }

    if ((sub_2262DBA6C() & 1) == 0)
    {
      sub_22634FFEC();
      v115 = sub_22635003C();
      v116 = sub_22635075C();
      v117 = os_log_type_enabled(v115, v116);
      v118 = *(v0 + 1208);
      v119 = *(v0 + 1160);
      if (v117)
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        v121 = "Skipping database insertion for non-predictable action";
LABEL_32:
        _os_log_impl(&dword_2262B6000, v115, v116, v121, v120, 2u);
        MEMORY[0x22AA7D570](v120, -1, -1);

        v58(v118, v119);
LABEL_62:
        v343 = *(v0 + 1336);
        v299 = *(v0 + 1264);
        v260 = *(v0 + 1096);
        v261 = *(v0 + 1072);
        v366 = *(v0 + 1040);
        v333 = *(v0 + 960);
        v338 = *(v0 + 1024);
        v262 = *(v0 + 936);
        v320 = *(v0 + 928);
        v326 = *(v0 + 952);
        v263 = *(v0 + 912);
        v310 = *(v0 + 904);
        logd = *(v0 + 920);
        v302 = *(v0 + 664);
        v304 = *(v0 + 896);
        v358 = *(v0 + 640);
        v264 = *(v0 + 616);
        v265 = *(v0 + 592);
        v266 = *(v0 + 568);
        *(*(v0 + 1112) + *(v0 + 1396)) = 0;
        sub_22634EEAC();
        sub_2262EBFE0(1, v260);
        v299(v260, v261);
        sub_2262EC7A0();
        v344(v265, v264, v266);
        sub_22634F7AC();
        swift_unknownObjectRelease();
        v353(v264, v266);
        sub_2262D67D8(v302, &qword_27D793028, &qword_226351EE8);
        sub_2262D67D8(v304, &qword_27D793008, &unk_226351EC0);
        (*(v263 + 8))(logd, v310);
        (*(v262 + 8))(v326, v320);
        v343(v338, v333);
        goto LABEL_63;
      }

LABEL_33:

      v58(v118, v119);
      goto LABEL_62;
    }

    v108 = *(v0 + 520);
    sub_2262D5EB8(*(v0 + 640) + *(*(v0 + 624) + 20), v108, type metadata accessor for VisualAction.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_2262D6068(v108, type metadata accessor for VisualAction.Kind);
    if (EnumCaseMultiPayload == 4)
    {
      v110 = *(v0 + 504);
      sub_22634FADC();
      v111 = sub_22634FA0C();
      v112 = *(v111 - 8);
      v113 = (*(v112 + 48))(v110, 1, v111);
      v114 = *(v0 + 504);
      if (v113 == 1)
      {
        sub_2262D67D8(*(v0 + 504), &qword_27D793020, &qword_226351EE0);
        goto LABEL_30;
      }

      v134 = sub_22634F9FC();
      (*(v112 + 8))(v114, v111);
      v135 = *(v134 + 16);

      if (!v135)
      {
LABEL_30:
        sub_22634FFEC();
        v115 = sub_22635003C();
        v116 = sub_22635075C();
        v149 = os_log_type_enabled(v115, v116);
        v118 = *(v0 + 1200);
        v119 = *(v0 + 1160);
        if (v149)
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          v121 = "Skipping database insertion for visual search action with no results";
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    v136 = *(v0 + 1064);
    v137 = *(v0 + 1056);
    v138 = *(v0 + 1048);
    v139 = *(v0 + 944);
    v140 = *(v0 + 936);
    v359 = *(v0 + 928);
    v141 = *(v0 + 496);
    v142 = *(v0 + 400);
    sub_22634F77C();
    v303 = sub_2262C1608();
    v340 = v143;
    (*(v137 + 8))(v136, v138);
    v368 = *(v142 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
    sub_22634F76C();
    sub_22634F4AC();
    (*(v140 + 8))(v139, v359);
    v144 = sub_22634FA8C();
    v145 = *(v144 - 8);
    v146 = (*(v145 + 48))(v141, 1, v144);
    v147 = *(v0 + 496);
    if (v146 == 1)
    {
      sub_2262D67D8(*(v0 + 496), &qword_27D793018, &unk_2263552F0);
      v148 = 0;
    }

    else
    {
      v151 = *(v0 + 480);
      v150 = *(v0 + 488);
      v152 = *(v0 + 472);
      sub_22634FA6C();
      (*(v145 + 8))(v147, v144);
      v148 = sub_22634FAFC();
      (*(v151 + 8))(v150, v152);
    }

    v153 = *(v0 + 656);
    v154 = *(v0 + 640);
    v155 = v154[1];
    v318 = *v154;
    sub_2262D66FC(*(v0 + 664), v153, &qword_27D793028, &qword_226351EE8);
    v156 = type metadata accessor for ActionContext(0);
    v157 = *(*(v156 - 8) + 48);
    if (v157(v153, 1, v156) == 1)
    {
      v158 = *(v0 + 656);
      v159 = &qword_27D793028;
      v160 = &qword_226351EE8;
    }

    else
    {
      v161 = *(v0 + 1256);
      v162 = *(v0 + 1248);
      v163 = *(v0 + 656);
      v164 = *(v0 + 464);
      sub_2262D66FC(v163 + *(v156 + 20), v164, &qword_27D792FE0, &unk_226351C10);
      sub_2262D6068(v163, type metadata accessor for ActionContext);
      if ((*(v161 + 48))(v164, 1, v162) != 1)
      {
        v165 = *(v0 + 1256);
        v166 = *(v0 + 1248);
        v167 = *(v0 + 464);
        v301 = sub_22634F46C();
        v331 = v168;
        (*(v165 + 8))(v167, v166);
LABEL_41:
        v169 = *(v0 + 648);
        sub_2262D66FC(*(v0 + 664), v169, &qword_27D793028, &qword_226351EE8);
        v170 = v157(v169, 1, v156);
        v171 = *(v0 + 648);
        if (v170 == 1)
        {
          sub_2262D67D8(*(v0 + 648), &qword_27D793028, &qword_226351EE8);
          v300 = 0;
          v325 = 0;
        }

        else
        {
          v172 = (v171 + *(v156 + 24));
          v300 = *v172;
          v325 = v172[1];

          sub_2262D6068(v171, type metadata accessor for ActionContext);
        }

        v173 = v155;
        if (*(*(v0 + 400) + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting + 8))
        {
          sub_22634EEAC();
        }

        else
        {
          sub_22634EE4C();
        }

        v174 = sub_2262DBE60();
        v360 = v148;
        v176 = v175;
        if (v148)
        {

          v178 = v148;
        }

        else
        {
          v178 = sub_22635059C();
          *(v178 + 16) = 512;
          bzero((v178 + 32), 0x800uLL);
        }

        v179 = *(v0 + 1328);
        v180 = sub_22630625C((v178 + 32), *(v178 + 16), v177);
        v182 = v181;

        sub_22634ED4C();
        swift_allocObject();
        sub_22634ED3C();

        sub_22634EE5C();
        *(v0 + 208) = v174;
        *(v0 + 216) = v176;
        *(v0 + 224) = v318;
        *(v0 + 232) = v173;
        *(v0 + 240) = v183;
        sub_2262D60C8();
        v184 = sub_22634ED2C();
        if (v179)
        {
          v369 = v179;
          v186 = *(v0 + 1264);
          v187 = *(v0 + 1088);
          v188 = *(v0 + 1072);

          sub_2262D611C(v180, v182);
          swift_bridgeObjectRelease_n();

          v186(v187, v188);
          v234 = *(v0 + 1024);
          v235 = *(v0 + 976);
          v236 = *(v0 + 960);
          sub_22634FFEC();
          v336(v235, v234, v236);
          v237 = sub_22635003C();
          v238 = sub_22635073C();
          v239 = os_log_type_enabled(v237, v238);
          v361 = *(v0 + 1336);
          v240 = *(v0 + 1184);
          v241 = *(v0 + 1168);
          v242 = *(v0 + 1160);
          if (v239)
          {
            v342 = *(v0 + 1184);
            v243 = *(v0 + 1000);
            v332 = *(v0 + 1160);
            v244 = *(v0 + 976);
            v245 = *(v0 + 960);
            v246 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            *&v372[0] = v247;
            *v246 = 136315138;
            v336(v243, v244, v245);
            v248 = sub_2263504CC();
            v250 = v249;
            v361(v244, v245);
            v251 = sub_226345004(v248, v250, v372);

            *(v246 + 4) = v251;
            _os_log_impl(&dword_2262B6000, v237, v238, "Could not insert action %s to vector database", v246, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v247);
            MEMORY[0x22AA7D570](v247, -1, -1);
            MEMORY[0x22AA7D570](v246, -1, -1);

            (*(v241 + 8))(v342, v332);
          }

          else
          {
            v252 = *(v0 + 976);
            v253 = *(v0 + 960);

            v361(v252, v253);
            (*(v241 + 8))(v240, v242);
          }

          v254 = (*(v0 + 1112) + *(v0 + 1392));
          sub_2262F3A84(0, 0, v372);

          v255 = *v254;
          v256 = v254[1];
          v257 = v254[3];
          *(v0 + 112) = v254[2];
          *(v0 + 128) = v257;
          *(v0 + 80) = v255;
          *(v0 + 96) = v256;
          sub_2262D67D8(v0 + 80, &qword_27D793048, &qword_226351F00);
          v258 = v372[1];
          *v254 = v372[0];
          v254[1] = v258;
          v259 = v372[3];
          v254[2] = v372[2];
          v254[3] = v259;
          goto LABEL_62;
        }

        v293 = v184;
        v294 = v185;
        v295 = v180;
        v296 = v182;
        v309 = *(v0 + 432);
        logb = *(v0 + 440);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793058, &qword_226351F08);
        v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793060, &qword_226351F10);
        v189 = v173;
        v306 = *(*(v297 - 8) + 72);
        v291 = v174;
        v190 = (*(*(v297 - 8) + 80) + 32) & ~*(*(v297 - 8) + 80);
        v292 = swift_allocObject();
        *(v292 + 16) = xmmword_226351C80;
        v191 = v292 + v190;
        v192 = (v292 + v190 + *(v297 + 48));
        v193 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_bundleIdAttribute;
        v194 = sub_22634F0EC();
        v195 = *(*(v194 - 8) + 16);
        v298 = v194;
        v196 = v368 + v193;
        v197 = v191;
        v290 = v191;
        v195(v191, v196, v194);
        v198 = v195;
        *v192 = v318;
        v192[1] = v189;
        v319 = *MEMORY[0x277D78288];
        isa = logb[13].isa;
        isa(v192);
        v199 = v197 + v306;
        v200 = *(v297 + 48);
        v195(v199, v368 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_timestampAttribute, v194);

        sub_22634EE5C();
        *(v199 + v200) = v201;
        (isa)(v199 + v200, *MEMORY[0x277D78280], v309);
        v202 = (v290 + 2 * v306 + *(v297 + 48));
        (v195)();
        *v202 = v291;
        v202[1] = v176;
        (isa)(v202, v319, v309);
        v203 = v290 + 3 * v306;
        v204 = *(v297 + 48);
        v198(v203, v368 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_isMissingEmbeddingAttribute, v298);

        *(v203 + v204) = v360 == 0;
        (isa)(v203 + v204, *MEMORY[0x277D78290], v309);
        v205 = sub_2262FECA0(v292);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v331)
        {
          v206 = *(v0 + 448);
          v207 = *(v0 + 456);
          v208 = *(v0 + 432);
          v209 = *(v0 + 440);
          v210 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_majorLabelAttribute;
          *v207 = v301;
          v207[1] = v331;
          (isa)(v207, v319, v208);
          (*(v209 + 32))(v206, v207, v208);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v372[0] = v205;
          v212 = v368;
          sub_2262E3E68(v206, v368 + v210, isUniquelyReferenced_nonNull_native);
          v205 = *&v372[0];
          v213 = v325;
          if (!v325)
          {
LABEL_55:
            if (v340)
            {
              v220 = *(v0 + 448);
              v221 = *(v0 + 456);
              v222 = *(v0 + 432);
              v223 = *(v0 + 440);
              v224 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_appInFocusAttribute;
              *v221 = v303;
              v221[1] = v340;
              (isa)(v221, v319, v222);
              (*(v223 + 32))(v220, v221, v222);
              v225 = swift_isUniquelyReferenced_nonNull_native();
              *&v372[0] = v205;
              sub_2262E3E68(v220, v212 + v224, v225);
              v205 = *&v372[0];
            }

            v226 = *(v0 + 720);
            v227 = *(v0 + 712);
            v228 = *(v0 + 704);
            v229 = *(v0 + 424);
            sub_22634EEEC();
            sub_22634EEDC();
            (*(v227 + 8))(v226, v228);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793068, &qword_226351F18);
            v230 = swift_allocObject();
            *(v230 + 16) = xmmword_226351C90;
            *(v230 + 32) = v295;
            *(v230 + 40) = v296;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793070, &qword_226351F20);
            v231 = swift_allocObject();
            *(v231 + 16) = xmmword_226351C90;
            *(v231 + 32) = v205;
            sub_2262D6170(v295, v296);
            sub_2262D6170(v293, v294);
            sub_22634F11C();
            v232 = swift_task_alloc();
            *(v232 + 16) = v229;
            sub_2262D148C(sub_2262D61C4, v232, v233);
            v341 = *(v0 + 1264);
            v268 = *(v0 + 1088);
            v269 = *(v0 + 1072);
            v370 = *(v0 + 1024);
            v327 = *(v0 + 984);
            v334 = *(v0 + 960);
            v270 = *(v0 + 416);
            v321 = *(v0 + 424);
            logc = *(v0 + 408);
            sub_2262D611C(v295, v296);
            sub_2262D611C(v293, v294);

            v341(v268, v269);
            (*(v270 + 8))(v321, logc);
            sub_22634FFEC();
            v336(v327, v370, v334);
            v271 = sub_22635003C();
            v272 = sub_22635071C();
            v273 = os_log_type_enabled(v271, v272);
            v274 = *(v0 + 1336);
            v275 = *(v0 + 1192);
            v276 = *(v0 + 1168);
            v277 = *(v0 + 1160);
            if (v273)
            {
              v362 = *(v0 + 1160);
              v371 = *(v0 + 1192);
              v278 = *(v0 + 1000);
              v279 = *(v0 + 984);
              v280 = *(v0 + 960);
              v281 = swift_slowAlloc();
              v335 = v274;
              v282 = swift_slowAlloc();
              *&v372[0] = v282;
              *v281 = 136315138;
              v336(v278, v279, v280);
              v283 = sub_2263504CC();
              v285 = v284;
              v335(v279, v280);
              v286 = sub_226345004(v283, v285, v372);

              *(v281 + 4) = v286;
              _os_log_impl(&dword_2262B6000, v271, v272, "Finished inserting action %s to vector database.", v281, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v282);
              MEMORY[0x22AA7D570](v282, -1, -1);
              MEMORY[0x22AA7D570](v281, -1, -1);

              (*(v276 + 8))(v371, v362);
            }

            else
            {
              v287 = *(v0 + 984);
              v288 = *(v0 + 960);

              v274(v287, v288);
              (*(v276 + 8))(v275, v277);
            }

            goto LABEL_62;
          }
        }

        else
        {
          v212 = v368;
          v213 = v325;
          if (!v325)
          {
            goto LABEL_55;
          }
        }

        v214 = *(v0 + 448);
        v215 = *(v0 + 456);
        v216 = *(v0 + 432);
        v217 = *(v0 + 440);
        v218 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_minorLabelAttribute;
        *v215 = v300;
        v215[1] = v213;
        (isa)(v215, v319, v216);
        (*(v217 + 32))(v214, v215, v216);
        v219 = swift_isUniquelyReferenced_nonNull_native();
        *&v372[0] = v205;
        sub_2262E3E68(v214, v212 + v218, v219);
        v205 = *&v372[0];
        goto LABEL_55;
      }

      v158 = *(v0 + 464);
      v159 = &qword_27D792FE0;
      v160 = &unk_226351C10;
    }

    sub_2262D67D8(v158, v159, v160);
    v301 = 0;
    v331 = 0;
    goto LABEL_41;
  }

  v9 = *(v0 + 1008);
  v10 = *(v0 + 608);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 536);
  v14 = *(v0 + 528);
  (*(*(v0 + 576) + 96))(v10, *(v0 + 568));
  v352 = *(v13 + 32);
  v352(v11, v10, v14);
  sub_22634FFEC();
  v355 = *(v13 + 16);
  v355(v12, v11, v14);
  v15 = *(v7 + 16);
  v15(v9, v363, v8);
  v16 = sub_22635003C();
  v17 = sub_22635073C();
  v349 = v16;
  v18 = os_log_type_enabled(v16, v17);
  v339 = *(v0 + 1336);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1168);
  v364 = *(v0 + 1160);
  v21 = *(v0 + 1008);
  if (v18)
  {
    log = *(v0 + 1000);
    v328 = *(v0 + 1224);
    v22 = *(v0 + 960);
    v23 = *(v0 + 552);
    v24 = *(v0 + 544);
    v322 = v17;
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v307 = v15;
    v27 = swift_slowAlloc();
    v316 = swift_slowAlloc();
    *&v372[0] = v316;
    *v27 = 136315394;
    v355(v24, v23, v26);
    v28 = sub_2263504CC();
    v30 = v29;
    (*(v25 + 8))(v23, v26);
    v31 = sub_226345004(v28, v30, v372);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v307(log, v21, v22);
    v32 = sub_2263504CC();
    v34 = v33;
    v339(v21, v22);
    v35 = sub_226345004(v32, v34, v372);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_2262B6000, v349, v322, "Error %s occurred while executing action %s.", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v316, -1, -1);
    MEMORY[0x22AA7D570](v27, -1, -1);

    (*(v20 + 8))(v328, v364);
  }

  else
  {
    v59 = *(v0 + 960);
    v60 = *(v0 + 552);
    v61 = *(v0 + 536);
    v62 = *(v0 + 528);

    v339(v21, v59);
    (*(v61 + 8))(v60, v62);
    (*(v20 + 8))(v19, v364);
  }

  v350 = *(v0 + 1280);
  v345 = *(v0 + 1040);
  v337 = *(v0 + 616);
  v63 = *(v0 + 576);
  v330 = *(v0 + 568);
  v64 = *(v0 + 560);
  v347 = v64;
  v65 = (*(v0 + 1112) + *(v0 + 1392));
  v66 = *(v0 + 528);
  sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00], MEMORY[0x277D78B08]);
  v67 = swift_allocError();
  v355(v68, v64, v66);
  v69 = sub_22634ED9C();
  v70 = [v69 domain];
  v357 = sub_22635046C();
  v324 = v71;

  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  v73 = *(v0 + 312);
  *(v0 + 320) = DynamicType;
  *(v0 + 328) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793078, &qword_226351F28);
  v74 = sub_2263504CC();
  v76 = v75;
  *(v0 + 376) = [v69 code];
  v77 = sub_226350C1C();
  v79 = v78;

  swift_unknownObjectRelease();
  (*(v63 + 8))(v337, v330);
  sub_2262D67D8(v345, &qword_27D793038, &qword_226351EF8);
  v80 = v65[3];
  v82 = *v65;
  v81 = v65[1];
  *(v0 + 176) = v65[2];
  *(v0 + 192) = v80;
  *(v0 + 144) = v82;
  *(v0 + 160) = v81;
  sub_2262D67D8(v0 + 144, &qword_27D793048, &qword_226351F00);

  *v65 = v357;
  *(v65 + 1) = v324;
  *(v65 + 2) = v74;
  *(v65 + 3) = v76;
  *(v65 + 4) = v77;
  *(v65 + 5) = v79;
  *(v65 + 6) = 0;
  *(v65 + 7) = 0;
  v352(v345, v347, v66);
  for (result = v350(v345, 0, 1, v66); ; result = swift_unknownObjectRelease())
  {
    v84 = *(v0 + 1368) + 1;
    if (v84 == *(v0 + 1360))
    {
      break;
    }

    *(v0 + 1368) = v84;
    v85 = *(v0 + 1352);
    if (v84 >= *(v85 + 16))
    {
      __break(1u);
      return result;
    }

    v86 = *(v0 + 640);
    v87 = v85 + 16 * v84;
    *(v0 + 1376) = *(v87 + 32);
    v88 = *(v87 + 40);
    ObjectType = swift_getObjectType();
    v90 = *(v88 + 16);
    swift_unknownObjectRetain();
    if (v90(v86, ObjectType, v88))
    {
      v367 = (*(v88 + 24) + **(v88 + 24));
      v129 = swift_task_alloc();
      *(v0 + 1384) = v129;
      *v129 = v0;
      v129[1] = sub_2262C6918;
      v130 = *(v0 + 952);
      v131 = *(v0 + 920);
      v132 = *(v0 + 640);
      v133 = *(v0 + 616);

      return v367(v133, v132, v130, v131, ObjectType, v88);
    }
  }

  v91 = *(v0 + 1264);
  v92 = *(v0 + 1096);
  v93 = *(v0 + 1072);
  v94 = *(v0 + 1040);
  v95 = *(v0 + 1032);
  v96 = *(v0 + 536);
  v97 = *(v0 + 528);
  *(*(v0 + 1112) + *(v0 + 1396)) = 1;
  sub_22634EEAC();
  sub_2262EBFE0(1, v92);
  v91(v92, v93);
  sub_2262EC7A0();
  sub_2262D66FC(v94, v95, &qword_27D793038, &qword_226351EF8);
  v98 = *(v96 + 48);
  v99 = v98(v95, 1, v97);
  v100 = *(v0 + 1032);
  v101 = *(v0 + 584);
  v102 = *(v0 + 536);
  v103 = *(v0 + 528);
  if (v99 == 1)
  {
    (*(v102 + 104))(v101, *MEMORY[0x277D78AE8], *(v0 + 528));
    if (v98(v100, 1, v103) != 1)
    {
      sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
    }
  }

  else
  {
    (*(v102 + 32))(v101, *(v0 + 1032), *(v0 + 528));
  }

  v354 = *(v0 + 1336);
  v348 = *(v0 + 960);
  v351 = *(v0 + 1024);
  v346 = *(v0 + 952);
  v122 = *(v0 + 936);
  v123 = *(v0 + 928);
  v124 = *(v0 + 920);
  v125 = *(v0 + 912);
  v126 = *(v0 + 904);
  v127 = *(v0 + 896);
  v128 = *(v0 + 664);
  v358 = *(v0 + 640);
  v366 = *(v0 + 1040);
  (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
  sub_22634F7AC();
  sub_2262D67D8(v128, &qword_27D793028, &qword_226351EE8);
  sub_2262D67D8(v127, &qword_27D793008, &unk_226351EC0);
  (*(v125 + 8))(v124, v126);
  (*(v122 + 8))(v346, v123);
  v354(v351, v348);
LABEL_63:
  sub_2262D67D8(v366, &qword_27D793038, &qword_226351EF8);
  sub_2262D6068(v358, type metadata accessor for VisualAction);
  sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

  v267 = *(v0 + 8);

  return v267();
}

uint64_t sub_2262C8D24()
{
  v136 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 888);
  (*(*(v0 + 632) + 56))(v2, 1, 1, *(v0 + 624));
  sub_2262D6764(v2, v1, &qword_27D793008, &unk_226351EC0);
  *(v0 + 1328) = 0;
  v3 = *(v0 + 1016);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 400);
  sub_22634F74C();
  sub_22634F39C();
  v7 = *(v4 + 8);
  *(v0 + 1336) = v7;
  *(v0 + 1344) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  v8 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  swift_beginAccess();
  v9 = *(v6 + v8);
  v10 = *(v0 + 728);
  if (*(v9 + 16))
  {

    v11 = sub_2263394D8(v10);
    v12 = *(v0 + 728);
    v13 = *(v0 + 712);
    v14 = *(v0 + 704);
    v15 = *(v0 + 664);
    if (v16)
    {
      v17 = v11;
      v129 = v7;
      v18 = *(v9 + 56);
      v19 = type metadata accessor for ActionContext(0);
      v20 = *(v19 - 8);
      v21 = v18 + *(v20 + 72) * v17;
      v7 = v129;
      sub_2262D5EB8(v21, v15, type metadata accessor for ActionContext);
      v22 = *(v13 + 8);
      v22(v12, v14);

      (*(v20 + 56))(v15, 0, 1, v19);
    }

    else
    {

      v22 = *(v13 + 8);
      v22(v12, v14);
      v25 = type metadata accessor for ActionContext(0);
      (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
    }
  }

  else
  {
    v23 = *(v0 + 664);
    v22 = *(*(v0 + 712) + 8);
    v22(*(v0 + 728), *(v0 + 704));
    v24 = type metadata accessor for ActionContext(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  }

  v26 = *(v0 + 872);
  v27 = *(v0 + 632);
  v28 = *(v0 + 624);
  sub_2262D66FC(*(v0 + 896), v26, &qword_27D793008, &unk_226351EC0);
  if ((*(v27 + 48))(v26, 1, v28) == 1)
  {
    v127 = v22;
    v130 = v7;
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1128);
    v31 = *(v0 + 1120);
    v32 = *(v0 + 392);
    sub_2262D67D8(*(v0 + 872), &qword_27D793008, &unk_226351EC0);
    sub_22634FFEC();
    (*(v30 + 16))(v29, v32, v31);
    v33 = sub_22635003C();
    v34 = sub_22635073C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 1176);
    v37 = *(v0 + 1168);
    v38 = *(v0 + 1160);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1128);
    v41 = *(v0 + 1120);
    if (v35)
    {
      v118 = v34;
      v42 = *(v0 + 1000);
      v124 = *(v0 + 1160);
      v43 = *(v0 + 720);
      v110 = *(v0 + 960);
      v44 = *(v0 + 704);
      v113 = *(v0 + 1120);
      v45 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v135 = v115;
      *v45 = 136315138;
      v121 = v36;
      sub_22634F74C();
      sub_22634F39C();
      v130(v42, v110);
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_226350C1C();
      v48 = v47;
      v127(v43, v44);
      (*(v40 + 8))(v39, v113);
      v49 = sub_226345004(v46, v48, &v135);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2262B6000, v33, v118, "Cannot find action for action id: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x22AA7D570](v115, -1, -1);
      MEMORY[0x22AA7D570](v45, -1, -1);

      (*(v37 + 8))(v121, v124);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
    }

    v104 = *(v0 + 1396);
    v102 = *(v0 + 1112);
    v103 = *(v0 + 1096);
    v106 = *(v0 + 1072);
    v107 = *(v0 + 1264);
    v125 = *(v0 + 1024);
    v128 = *(v0 + 1040);
    v119 = *(v0 + 952);
    v122 = *(v0 + 960);
    v114 = *(v0 + 936);
    v116 = *(v0 + 928);
    v109 = *(v0 + 912);
    v111 = *(v0 + 904);
    v112 = *(v0 + 920);
    v108 = *(v0 + 896);
    v105 = *(v0 + 664);
    v74 = *(v0 + 592);
    v75 = *(v0 + 576);
    v76 = *(v0 + 568);
    v77 = *(v0 + 528);
    v78 = (v102 + *(v0 + 1392));
    v79 = *MEMORY[0x277D78AC0];
    v80 = *(*(v0 + 536) + 104);
    v80(v74, v79, v77);
    (*(v75 + 104))(v74, *MEMORY[0x277D78A40], v76);
    sub_22634F7AC();
    sub_2262D62A4(&qword_27D793040, MEMORY[0x277D78B00], MEMORY[0x277D78B08]);
    v81 = swift_allocError();
    v80(v82, v79, v77);
    v83 = v81;
    sub_2262F3A84(0, 0, v134);

    v84 = *v78;
    v85 = v78[1];
    v86 = v78[3];
    *(v0 + 48) = v78[2];
    *(v0 + 64) = v86;
    *(v0 + 16) = v84;
    *(v0 + 32) = v85;
    sub_2262D67D8(v0 + 16, &qword_27D793048, &qword_226351F00);

    v87 = v134[1];
    *v78 = v134[0];
    v78[1] = v87;
    v88 = v134[3];
    v78[2] = v134[2];
    v78[3] = v88;
    *(v102 + v104) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v103);
    v107(v103, v106);
    sub_2262EC7A0();
    sub_2262D67D8(v105, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v108, &qword_27D793008, &unk_226351EC0);
    (*(v109 + 8))(v112, v111);
    (*(v114 + 8))(v119, v116);
    v130(v125, v122);
    sub_2262D67D8(v128, &qword_27D793038, &qword_226351EF8);
LABEL_21:
    sub_2262D6068(*(v0 + 1112), type metadata accessor for Analytics);

    v96 = *(v0 + 8);

    return v96();
  }

  v50 = *(v0 + 400);
  result = sub_2262D6000(*(v0 + 872), *(v0 + 640), type metadata accessor for VisualAction);
  v52 = *(v50 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors);
  *(v0 + 1352) = v52;
  v53 = *(v52 + 16);
  *(v0 + 1360) = v53;
  if (!v53)
  {
LABEL_14:
    v61 = *(v0 + 1264);
    v62 = *(v0 + 1096);
    v63 = *(v0 + 1072);
    v64 = *(v0 + 1040);
    v65 = *(v0 + 1032);
    v66 = *(v0 + 536);
    v67 = *(v0 + 528);
    *(*(v0 + 1112) + *(v0 + 1396)) = 1;
    sub_22634EEAC();
    sub_2262EBFE0(1, v62);
    v61(v62, v63);
    sub_2262EC7A0();
    sub_2262D66FC(v64, v65, &qword_27D793038, &qword_226351EF8);
    v68 = *(v66 + 48);
    v69 = v68(v65, 1, v67);
    v70 = *(v0 + 1032);
    v71 = *(v0 + 584);
    v72 = *(v0 + 536);
    v73 = *(v0 + 528);
    if (v69 == 1)
    {
      (*(v72 + 104))(v71, *MEMORY[0x277D78AE8], *(v0 + 528));
      if (v68(v70, 1, v73) != 1)
      {
        sub_2262D67D8(*(v0 + 1032), &qword_27D793038, &qword_226351EF8);
      }
    }

    else
    {
      (*(v72 + 32))(v71, *(v0 + 1032), *(v0 + 528));
    }

    v126 = *(v0 + 1336);
    v120 = *(v0 + 960);
    v123 = *(v0 + 1024);
    v117 = *(v0 + 952);
    v89 = *(v0 + 936);
    v90 = *(v0 + 928);
    v91 = *(v0 + 920);
    v92 = *(v0 + 912);
    v93 = *(v0 + 904);
    v94 = *(v0 + 896);
    v95 = *(v0 + 664);
    v131 = *(v0 + 640);
    v132 = *(v0 + 1040);
    (*(*(v0 + 576) + 104))(*(v0 + 584), *MEMORY[0x277D78A40], *(v0 + 568));
    sub_22634F7AC();
    sub_2262D67D8(v95, &qword_27D793028, &qword_226351EE8);
    sub_2262D67D8(v94, &qword_27D793008, &unk_226351EC0);
    (*(v92 + 8))(v91, v93);
    (*(v89 + 8))(v117, v90);
    v126(v123, v120);
    sub_2262D67D8(v132, &qword_27D793038, &qword_226351EF8);
    sub_2262D6068(v131, type metadata accessor for VisualAction);
    goto LABEL_21;
  }

  v54 = 0;
  *(v0 + 1400) = *MEMORY[0x277D78A40];
  while (1)
  {
    *(v0 + 1368) = v54;
    v55 = *(v0 + 1352);
    if (v54 >= *(v55 + 16))
    {
      __break(1u);
      return result;
    }

    v56 = *(v0 + 640);
    v57 = v55 + 16 * v54;
    *(v0 + 1376) = *(v57 + 32);
    v58 = *(v57 + 40);
    ObjectType = swift_getObjectType();
    v60 = *(v58 + 16);
    swift_unknownObjectRetain();
    if (v60(v56, ObjectType, v58))
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v54 = *(v0 + 1368) + 1;
    if (v54 == *(v0 + 1360))
    {
      goto LABEL_14;
    }
  }

  v133 = (*(v58 + 24) + **(v58 + 24));
  v97 = swift_task_alloc();
  *(v0 + 1384) = v97;
  *v97 = v0;
  v97[1] = sub_2262C6918;
  v98 = *(v0 + 952);
  v99 = *(v0 + 920);
  v100 = *(v0 + 640);
  v101 = *(v0 + 616);

  return v133(v101, v100, v98, v99, ObjectType, v58);
}

uint64_t sub_2262C9CC4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_22634F34C();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for VisualAction(0);
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FF8, &qword_226351EA8);
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793000, &unk_226351EB0);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v7 = sub_22634FA5C();
  v3[49] = v7;
  v3[50] = *(v7 - 8);
  v3[51] = swift_task_alloc();
  v8 = sub_22634F47C();
  v3[52] = v8;
  v3[53] = *(v8 - 8);
  v3[54] = swift_task_alloc();
  v9 = type metadata accessor for ActionContext(0);
  v3[55] = v9;
  v3[56] = *(v9 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v10 = sub_2263502EC();
  v3[67] = v10;
  v3[68] = *(v10 - 8);
  v3[69] = swift_task_alloc();
  v11 = sub_2263500AC();
  v3[70] = v11;
  v3[71] = *(v11 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = type metadata accessor for VisualAction.Kind.SystemTool(0);
  v3[74] = swift_task_alloc();
  v3[75] = type metadata accessor for VisualAction.Kind(0);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = *(type metadata accessor for RankedVisualAction(0) - 8);
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v12 = sub_22634FDAC();
  v3[86] = v12;
  v3[87] = *(v12 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v13 = sub_22634FDCC();
  v3[90] = v13;
  v3[91] = *(v13 - 8);
  v3[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793008, &unk_226351EC0);
  v3[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0);
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v14 = sub_22634FDFC();
  v3[96] = v14;
  v3[97] = *(v14 - 8);
  v3[98] = swift_task_alloc();
  v15 = sub_22634EECC();
  v3[99] = v15;
  v3[100] = *(v15 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v16 = sub_22634EEFC();
  v3[105] = v16;
  v3[106] = *(v16 - 8);
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();
  v3[119] = type metadata accessor for Analytics(0);
  v3[120] = swift_task_alloc();
  v17 = sub_22634F72C();
  v3[121] = v17;
  v3[122] = *(v17 - 8);
  v3[123] = swift_task_alloc();
  v3[124] = swift_task_alloc();
  v18 = sub_22635004C();
  v3[125] = v18;
  v3[126] = *(v18 - 8);
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CA668, v2, 0);
}

void sub_2262CA668()
{
  v553 = v0;
  v542 = v0;
  if (sub_22634FCBC())
  {
    receiver = v0[62].receiver;
    v2 = v0[61].receiver;
    super_class = v0[60].super_class;
    v4 = v0[17].super_class;
    sub_22634FFEC();
    v5 = v2[2];
    v5(receiver, v4, super_class);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[68].receiver;
    v10 = v0[63].receiver;
    v11 = v0[62].super_class;
    v12 = v0[62].receiver;
    if (v8)
    {
      v519 = v0[61].super_class;
      v526 = v5;
      v543 = v0[68].receiver;
      v13 = v0[61].receiver;
      v14 = v0[60].super_class;
      v536 = v7;
      v538 = v0[62].super_class;
      v15 = swift_slowAlloc();
      v534 = swift_slowAlloc();
      v552[0] = v534;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, v552);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD000000000000019, 0x8000000226356510, v552);
      *(v15 + 22) = 2080;
      v526(v519, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      v13[1](v12, v14);
      v22 = sub_226345004(v19, v21, v552);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v536, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v534, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      v10[1](v543, v538);
    }

    else
    {
      v34 = v0[61].receiver;
      v35 = v0[60].super_class;

      v34[1](v12, v35);
      v10[1](v9, v11);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[67].super_class;
    v27 = v0[63].receiver;
    v28 = v0[62].super_class;
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v552[0] = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, v552);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD000000000000019, 0x8000000226356510, v552);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    v27[1](v26, v28);
  }

  v36 = v0[60].receiver;
  v37 = v0[59].super_class;
  v514 = v0[59].receiver;
  v38 = v0[53].receiver;
  v465 = v0[52].super_class;
  v480 = v0[52].receiver;
  v461 = v0[50].receiver;
  v486 = v0[49].super_class;
  v491 = v0[49].receiver;
  v496 = v0[48].super_class;
  v501 = v0[48].receiver;
  v505 = v0[47].super_class;
  v527 = v0[46].super_class;
  v539 = v0[46].receiver;
  v462 = v0[45].super_class;
  v544 = v0[45].receiver;
  v39 = v0[26].super_class;
  v537 = v0[26].receiver;
  v509 = v0[21].receiver;
  v520 = v0[20].super_class;
  v40 = v0[18].receiver;
  v41 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v42 = v38[2];
  v42(&v36[v37[5]], &v40[OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id]);
  v474 = v37[13];
  sub_22634F71C();
  v43 = &v36[v37[6]];
  *v43 = 0;
  v43[8] = 1;
  v44 = &v36[v37[7]];
  v44[2] = 0u;
  v44[3] = 0u;
  *v44 = 0u;
  v44[1] = 0u;
  v413 = v37[8];
  v36[v413] = 2;
  v45 = &v36[v37[9]];
  *v45 = 0;
  v45[1] = 0;
  v417 = v37[10];
  v36[v417] = 3;
  v36[v37[11]] = 2;
  v458 = *(v39 + 7);
  v458(&v36[v37[12]], 1, 1, v537);
  *&v36[v37[14]] = MEMORY[0x277D84F98];
  *&v36[v37[15]] = MEMORY[0x277D84F90];
  v36[v37[16]] = 0;
  *v36 = 2;
  v535 = v42;
  (v42)(v514, &v40[v41], v465);
  type metadata accessor for DataHarvester(0);
  v460 = swift_allocObject();
  v512 = v38[4];
  v512(v460 + OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID, v514, v465);
  sub_22634EEAC();
  sub_2262EB938(2, v480);
  v457 = v461[1];
  v457(v480, v486);
  sub_22634F71C();
  v418 = v36;
  (*(v496 + 5))(&v36[v474], v491, v501);
  sub_22634EEEC();
  v412 = v38[7];
  v412(v505, 1, 1, v465);
  v551 = MEMORY[0x277D84FA0];
  v502 = v509[7];
  v502(v527, 1, 1, v520);
  sub_22634F70C();
  v46 = sub_22634FDBC();
  v459 = *(v462 + 1);
  v459(v539, v544);
  v47 = MEMORY[0x277D78CC0];
  v48 = MEMORY[0x277D78CC8];
  if (*(v46 + 16))
  {
    v49 = v0[53].receiver;
    v50 = v0[43].super_class;
    v469 = v0[39].receiver;
    v454 = v0[38].super_class;
    v51 = v0[35].super_class;
    v506 = *(v46 + 16);
    v52 = v0[34].receiver;
    v466 = v0[20].super_class;
    v545 = v46 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v475 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
    v481 = v0[18].receiver;
    swift_beginAccess();
    v435 = 0;
    v53 = 0;
    v521 = *v47;
    v497 = *v48;
    v516 = (v50 + 96);
    v492 = (v49 + 8);
    v447 = (v52 + 16);
    v54 = v506;
    v442 = *MEMORY[0x277D72148];
    v438 = (v51 + 8);
    v440 = (v51 + 104);
    v487 = v46;
    while (1)
    {
      if (v53 >= *(v46 + 16))
      {
        goto LABEL_156;
      }

      v55 = v542[44].super_class;
      v56 = v542[43].receiver;
      (*(v50 + 2))(v55, v545 + *(v50 + 9) * v53, v56);
      v57 = (*(v50 + 11))(v55, v56);
      if (v57 != v521)
      {
        v72 = v542[44].super_class;
        v73 = v542[43].receiver;
        if (v57 == v497)
        {
          (*v516)(v542[44].super_class, v73);
          v74 = *(*v72 + 16);

          v62 = __OFADD__(v435, v74);
          v435 += v74;
          if (v62)
          {
            goto LABEL_158;
          }
        }

        else
        {
          (*(v50 + 1))(v542[44].super_class, v73);
        }

        goto LABEL_11;
      }

      v58 = v47;
      v59 = v542[58].receiver;
      v60 = v542[52].super_class;
      v61 = v542[44].super_class;
      (*v516)(v61, v542[43].receiver);
      v512(v59, v61, v60);
      v62 = __OFADD__(v435++, 1);
      if (v62)
      {
        goto LABEL_157;
      }

      v63 = *&v481[v475];
      if (!*(v63 + 16))
      {

        v64 = v542;
        goto LABEL_137;
      }

      v64 = v542;
      v65 = v542[58].receiver;

      v66 = sub_2263394D8(v65);
      if ((v67 & 1) == 0)
      {

        goto LABEL_136;
      }

      v68 = v542[42].super_class;
      v69 = v542[42].receiver;
      v70 = v542[38].super_class;
      sub_2262D5EB8(*(v63 + 56) + v469[9] * v66, v69, type metadata accessor for RankedVisualAction);

      sub_2262D6000(v69, v68, type metadata accessor for RankedVisualAction);
      sub_2262D5EB8(v68 + *(v466 + 5), v70, type metadata accessor for VisualAction.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v82 = *(v454 + 6);
          if (*(v454 + 1))
          {
            v64 = v542;
            v411 = v542[42].super_class;

            sub_2262D6068(v411, type metadata accessor for RankedVisualAction);
            goto LABEL_137;
          }

          v64 = v542;
          v83 = v542[58].receiver;
          v84 = v542[52].super_class;

          (*v492)(v83, v84);
        }

        else
        {
          v64 = v542;
          sub_2262D6000(v542[38].super_class, v542[37].receiver, type metadata accessor for VisualAction.Kind.SystemTool);
          if (qword_27D792EA0 != -1)
          {
            swift_once();
          }

          v75 = v542[37].receiver;
          v76 = v542[36].receiver;
          v77 = v542[35].receiver;
          v78 = v542[34].super_class;
          v79 = v542[33].super_class;
          v80 = __swift_project_value_buffer(v79, qword_27D793ED8);
          (*v447)(v78, v80, v79);
          sub_22635032C();
          (*v440)(v76, v442, v77);
          v81 = sub_22635009C();
          (*v438)(v76, v77);
          sub_2262D6068(v75, type metadata accessor for VisualAction.Kind.SystemTool);
          if (v81)
          {
            sub_2262D6068(v542[42].super_class, type metadata accessor for RankedVisualAction);
LABEL_136:

LABEL_137:
            sub_22634FFEC();
            v386 = sub_22635003C();
            v387 = sub_22635073C();
            if (os_log_type_enabled(v386, v387))
            {
              v388 = swift_slowAlloc();
              *v388 = 0;
              _os_log_impl(&dword_2262B6000, v386, v387, "Selected action is not predictable or missing from cache; skipping feedback request", v388, 2u);
              MEMORY[0x22AA7D570](v388, -1, -1);
            }

            v389 = v64[67].receiver;
            v390 = v64[63].receiver;
            v391 = v64[62].super_class;
            v392 = v64[58].receiver;
            v393 = v64[52].super_class;
            v394 = v542[52].receiver;
            v395 = v542[49].super_class;
            v550 = v542[47].super_class;

            v390[1](v389, v391);
            v418[v413] = 1;
            sub_22634EEAC();
            sub_2262EBFE0(2, v394);
            v396 = v394;
            v89 = v542;
            v457(v396, v395);
            sub_2262EC7A0();
            sub_22634F79C();

            v397 = *v492;
            (*v492)(v392, v393);
            sub_2262D67D8(v550, &qword_27D793010, &unk_226354CE0);
LABEL_148:
            v406 = v89[60].receiver;
            v407 = v89[46].super_class;
            v397(v89[58].super_class, v89[52].super_class);
            sub_2262D67D8(v407, &qword_27D793008, &unk_226351EC0);
            sub_2262D6068(v406, type metadata accessor for Analytics);

            v408 = v89->super_class;

            v408();
            return;
          }

          (*v492)(v542[58].receiver, v542[52].super_class);
        }

        v47 = v58;
      }

      else
      {
        v47 = v58;
        if (EnumCaseMultiPayload != 2)
        {
          v46 = v487;
          if (EnumCaseMultiPayload != 4)
          {
            v64 = v542;
            v409 = v542[38].super_class;
            sub_2262D6068(v542[42].super_class, type metadata accessor for RankedVisualAction);

            v410 = sub_22634FBEC();
            (*(*(v410 - 8) + 8))(v409, v410);
            goto LABEL_137;
          }

          v64 = v542;
          (*v492)(v542[58].receiver, v542[52].super_class);
          goto LABEL_35;
        }

        v64 = v542;
        v85 = v542[38].super_class;
        (*v492)(v542[58].receiver, v542[52].super_class);
        sub_2262D6068(v85, type metadata accessor for VisualAction.Kind);
      }

      v46 = v487;
LABEL_35:
      v86 = v64[46].super_class;
      v87 = v64[42].super_class;
      v88 = v64[20].super_class;
      sub_2262D67D8(v86, &qword_27D793008, &unk_226351EC0);
      sub_2262D6000(v87, v86, type metadata accessor for VisualAction);
      v502(v86, 0, 1, v88);
      v48 = MEMORY[0x277D78CC8];
      v54 = v506;
LABEL_11:
      if (v54 == ++v53)
      {
        goto LABEL_37;
      }
    }
  }

  v435 = 0;
LABEL_37:

  v89 = v542;
  v90 = v542[46].receiver;
  v91 = v542[45].receiver;
  sub_22634F70C();
  v92 = sub_22634FDBC();
  v459(v90, v91);
  v93 = v92;
  v433 = *(v92 + 16);
  if (!v433)
  {
LABEL_103:

    v316 = v89[53].receiver;
    v317 = v89[52].super_class;
    v318 = v89[47].receiver;
    sub_2262D66FC(v89[47].super_class, v318, &qword_27D793010, &unk_226354CE0);
    if (v316[6](v318, 1, v317) == 1)
    {
      v319 = v89[47].receiver;

      sub_2262D67D8(v319, &qword_27D793010, &unk_226354CE0);
LABEL_145:
      v400 = v89[52].receiver;
      v401 = v89[49].super_class;
      sub_22634EEAC();
      sub_22634EE7C();
      v457(v400, v401);
      sub_2262FF194();
      v457(v89[50].super_class, v89[49].super_class);
      if (v418[v417] == 3)
      {
        v418[v417] = 2;
      }

      v402 = v89[53].receiver;
      v403 = v89[52].receiver;
      v404 = v89[49].super_class;
      v405 = v89[47].super_class;
      v418[v413] = 0;
      sub_22634EEAC();
      sub_2262EBFE0(2, v403);
      v457(v403, v404);
      sub_2262EC7A0();
      sub_22634F79C();

      sub_2262D67D8(v405, &qword_27D793010, &unk_226354CE0);
      v397 = v402[1];
      goto LABEL_148;
    }

    v320 = v89[18].receiver;
    v512(v89[54].super_class, v89[47].receiver, v89[52].super_class);
    v321 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults;
    swift_beginAccess();
    v322 = *&v320[v321];
    if (*(v322 + 16))
    {
      v323 = v89[54].super_class;

      v324 = sub_2263394D8(v323);
      if (v325)
      {
        v326 = *(*(v322 + 56) + 8 * v324);

        v525 = *(v326 + 16);
        if (!v525)
        {
          v398 = v89;
          v399 = v89[53].receiver;

          v335 = v399[1];
LABEL_144:
          v335(v398[54].super_class, v398[52].super_class);

          v89 = v398;
          goto LABEL_145;
        }

        v327 = v89[63].receiver;
        v328 = v89[53].receiver;
        v329 = v89[48].super_class;
        v456 = v89[39].receiver;
        v444 = v89[27].super_class;
        v446 = v89[28].receiver;
        v330 = v89[25].receiver;
        v331 = v89[18].receiver;
        v332 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
        v515 = v326 + ((v328[80] + 32) & ~v328[80]);
        v511 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
        swift_beginAccess();
        v533 = v331;
        v453 = v332;
        swift_beginAccess();
        v504 = 0;
        v333 = 0;
        v541 = v551 + 56;
        v518 = v328;
        v334 = (v328 + 8);
        v513 = (v327 + 8);
        v449 = (v329 + 8);
        v451 = (v330 + 8);
        v508 = v326;
        while (1)
        {
          if (v333 >= *(v326 + 16))
          {
            goto LABEL_159;
          }

          v336 = v518[9];
          v535(v542[54].receiver, v515 + v336 * v333, v542[52].super_class);
          if (*(v551 + 16))
          {
            sub_2262D62A4(&qword_28137FA50, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            v337 = sub_22635040C();
            v338 = -1 << *(v551 + 32);
            v339 = v337 & ~v338;
            if ((*(v541 + ((v339 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v339))
            {
              v340 = ~v338;
              while (1)
              {
                v341 = v542[57].receiver;
                v342 = v542[52].super_class;
                v535(v341, *(v551 + 48) + v339 * v336, v342);
                sub_2262D62A4(&qword_28137FA40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                v343 = sub_22635044C();
                v335 = *v334;
                (*v334)(v341, v342);
                if (v343)
                {
                  break;
                }

                v339 = (v339 + 1) & v340;
                if (((*(v541 + ((v339 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v339) & 1) == 0)
                {
                  goto LABEL_118;
                }
              }

              v335(v542[54].receiver, v542[52].super_class);
              goto LABEL_111;
            }
          }

LABEL_118:
          v344 = *&v533[v511];
          if (*(v344 + 16))
          {
            v345 = v542[54].receiver;

            v346 = sub_2263394D8(v345);
            if (v347)
            {
              v348 = v542[31].super_class;
              v349 = v542[26].receiver;
              sub_2262D5EB8(*(v344 + 56) + v456[9] * v346, v542[39].super_class, type metadata accessor for RankedVisualAction);

              v458(v348, 1, 1, v349);
              v350 = *&v533[v453];
              if (*(v350 + 16))
              {
                v351 = v542[54].receiver;

                v352 = sub_2263394D8(v351);
                if (v353)
                {
                  v354 = v542[31].super_class;
                  v356 = v542[28].super_class;
                  v355 = v542[29].receiver;
                  sub_2262D5EB8(*(v350 + 56) + v446[9] * v352, v356, type metadata accessor for ActionContext);

                  sub_2262D67D8(v354, &qword_27D792FE0, &unk_226351C10);
                  sub_2262D6000(v356, v355, type metadata accessor for ActionContext);
                  sub_2262D66FC(v355 + *(v444 + 5), v354, &qword_27D792FE0, &unk_226351C10);
                  v357 = (v355 + *(v444 + 6));
                  v359 = *v357;
                  v358 = v357[1];

                  sub_2262D6068(v355, type metadata accessor for ActionContext);
LABEL_129:
                  sub_22634FFEC();
                  v376 = sub_22635003C();
                  v377 = sub_22635071C();
                  if (os_log_type_enabled(v376, v377))
                  {
                    v378 = swift_slowAlloc();
                    *v378 = 0;
                    _os_log_impl(&dword_2262B6000, v376, v377, "Sending data harvest event for rejected action not included in feedback request", v378, 2u);
                    MEMORY[0x22AA7D570](v378, -1, -1);
                  }

                  v379 = v542[64].receiver;
                  v380 = v542[62].super_class;

                  (*v513)(v379, v380);
                  if (__OFADD__(v435, v504))
                  {
                    goto LABEL_161;
                  }

                  v479 = v542[58].super_class;
                  v495 = v542[52].super_class;
                  v500 = v542[54].receiver;
                  v381 = v542[49].receiver;
                  v490 = v542[48].receiver;
                  v473 = v359;
                  v382 = v542[46].receiver;
                  v383 = v542[45].receiver;
                  v464 = v542[39].super_class;
                  v468 = v542[31].super_class;
                  v384 = v358;
                  v385 = v542[25].super_class;
                  v485 = v542[24].super_class;
                  LOBYTE(v552[0]) = 1;
                  sub_22634F71C();
                  sub_22634F70C();
                  sub_22634FD9C();
                  v459(v382, v383);
                  sub_22634B940(v464, v479, v435 + v504, v552, v468, v473, v384, v381);

                  (*v451)(v385, v485);
                  (*v449)(v381, v490);
                  sub_2262D67D8(v468, &qword_27D792FE0, &unk_226351C10);
                  sub_2262D6068(v464, type metadata accessor for RankedVisualAction);
                  v335 = *v334;
                  (*v334)(v500, v495);
                  if (__OFADD__(v504, 1))
                  {
                    goto LABEL_162;
                  }

                  ++v504;
                  goto LABEL_110;
                }
              }

              v359 = 0;
              v358 = 0;
              goto LABEL_129;
            }
          }

          v360 = v542[54].receiver;
          v361 = v542[53].super_class;
          v362 = v542[52].super_class;
          sub_22634FFEC();
          v535(v361, v360, v362);
          v363 = sub_22635003C();
          v364 = sub_22635073C();
          v365 = os_log_type_enabled(v363, v364);
          v366 = v542[63].super_class;
          v367 = v542[62].super_class;
          v368 = v542[54].receiver;
          v369 = v542[53].super_class;
          v370 = v542[52].super_class;
          if (v365)
          {
            v499 = v542[63].super_class;
            v371 = swift_slowAlloc();
            v484 = swift_slowAlloc();
            v552[0] = v484;
            *v371 = 136315138;
            sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v489 = v367;
            v494 = v368;
            v372 = sub_226350C1C();
            v374 = v373;
            v335 = *v334;
            (*v334)(v369, v370);
            v375 = sub_226345004(v372, v374, v552);

            *(v371 + 4) = v375;
            _os_log_impl(&dword_2262B6000, v363, v364, "Could not find cached action for %s", v371, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v484);
            MEMORY[0x22AA7D570](v484, -1, -1);
            MEMORY[0x22AA7D570](v371, -1, -1);

            (*v513)(v499, v489);
            v335(v494, v370);
          }

          else
          {

            v335 = *v334;
            (*v334)(v369, v370);
            (*v513)(v366, v367);
            v335(v368, v370);
          }

LABEL_110:
          v326 = v508;
LABEL_111:
          if (++v333 == v525)
          {

            v398 = v542;
            goto LABEL_144;
          }
        }
      }
    }

    (*(v89[53].receiver + 1))(v89[54].super_class, v89[52].super_class);

    goto LABEL_145;
  }

  v522 = v542[63].receiver;
  v463 = v542[53].receiver;
  v546 = v542[48].super_class;
  v94 = v542[43].super_class;
  v415 = v542[41].super_class;
  v437 = v542[40].super_class;
  v455 = v542[39].receiver;
  v425 = v542[27].super_class;
  v426 = v542[28].receiver;
  v95 = v542[26].super_class;
  v528 = v542[25].receiver;
  v96 = v542[22].receiver;
  v97 = v542[22].super_class;
  v98 = v542[21].receiver;
  v429 = v542[20].super_class;
  v99 = v48;
  v100 = v542[19].receiver;
  v101 = v542[18].receiver;
  v102 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap;
  v441 = &v101[OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting];
  v443 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream;
  v431 = v93 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v434 = v93;
  v507 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap;
  swift_beginAccess();
  v540 = v101;
  v452 = v102;
  swift_beginAccess();
  v103 = v434;
  v104 = 0;
  v430 = *MEMORY[0x277D78CC0];
  v510 = (v522 + 8);
  v423 = *v99;
  v416 = (v94 + 8);
  v432 = v94;
  v424 = (v94 + 96);
  v105 = v96;
  v498 = (v97 + 48);
  v503 = (v97 + 56);
  v445 = (v98 + 48);
  v422 = (v100 + 32);
  v421 = *MEMORY[0x277D785C8];
  v419 = (v100 + 8);
  v420 = (v100 + 104);
  v439 = (v95 + 48);
  v427 = (v95 + 8);
  v428 = (v95 + 16);
  v450 = (v528 + 8);
  v448 = (v546 + 8);
  v517 = (v463 + 8);
  v106 = __OFSUB__(v435, 1);
  v414 = v106;
  v493 = v96;
  while (1)
  {
    if (v104 >= *(v103 + 16))
    {
      goto LABEL_155;
    }

    v107 = v89[44].receiver;
    v108 = v89[43].receiver;
    v436 = v104;
    (*(v432 + 2))(v107, v431 + *(v432 + 9) * v104, v108);
    v109 = (*(v432 + 11))(v107, v108);
    if (v109 != v430)
    {
      break;
    }

    v110 = v89[57].super_class;
    v111 = v89[57].receiver;
    v112 = v89[56].super_class;
    v113 = v89[52].super_class;
    v114 = v89[44].receiver;
    (*v424)(v114, v89[43].receiver);
    v512(v110, v114, v113);
    v535(v112, v110, v113);
    sub_226309C44(v111, v112);
    v115 = *v517;
    (*v517)(v111, v113);
    v116 = *&v540[v507];
    if (*(v116 + 16))
    {
      v117 = v89[57].super_class;

      v118 = sub_2263394D8(v117);
      if (v119)
      {
        v120 = v89[41].super_class;
        v121 = v89[41].receiver;
        v122 = v89[33].receiver;
        v123 = v89[26].receiver;
        sub_2262D5EB8(*(v116 + 56) + v455[9] * v118, v121, type metadata accessor for RankedVisualAction);

        sub_2262D6000(v121, v120, type metadata accessor for RankedVisualAction);
        v458(v122, 1, 1, v123);
        v124 = *&v540[v452];
        if (*(v124 + 16))
        {
          v125 = v89[57].super_class;

          v126 = sub_2263394D8(v125);
          if (v127)
          {
            v128 = v89[52].super_class;
            v129 = v89[47].super_class;
            v130 = v89[33].receiver;
            v132 = v89[30].super_class;
            v131 = v89[31].receiver;
            sub_2262D5EB8(*(v124 + 56) + v426[9] * v126, v132, type metadata accessor for ActionContext);
            sub_2262D67D8(v129, &qword_27D793010, &unk_226354CE0);

            sub_2262D6000(v132, v131, type metadata accessor for ActionContext);
            sub_2262D5F90(v131 + *(v425 + 5), v130);
            v133 = (v131 + *(v425 + 6));
            v529 = *v133;
            v547 = v133[1];
            v512(v129, v131, v128);
            v412(v129, 0, 1, v128);
LABEL_93:
            v271 = v89[41].super_class;
            v272 = v89[33].receiver;
            v273 = v89[26].receiver;
            v418[v417] = 0;
            sub_2262D5E54(&v540[v443], &v89[3].super_class);
            v274 = __swift_project_boxed_opaque_existential_1(&v89[3].super_class, v89[5].receiver);
            v275 = sub_2262DBE60();
            v277 = v276;
            v278 = *v271;
            v279 = *(v415 + 1);
            if ((*v439)(v272, 1, v273))
            {

              v280 = 0;
              v281 = 0;
            }

            else
            {
              v282 = v89[33].receiver;
              v283 = v89[27].receiver;
              v284 = v542[26].receiver;
              (*v428)(v283, v282, v284);

              v280 = sub_22634F46C();
              v281 = v285;
              v286 = v284;
              v89 = v542;
              (*v427)(v283, v286);
            }

            if (v441[8])
            {
              sub_22634EEAC();
            }

            else
            {
              sub_22634EE4C();
            }

            v287 = v89[51].super_class;
            v288 = v542[49].super_class;
            sub_22634EE5C();
            v290 = v289;
            v457(v287, v288);
            v291 = type metadata accessor for VisualActionEvent();
            v292 = objc_allocWithZone(v291);
            *&v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
            v293 = &v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
            *v293 = v275;
            v293[1] = v277;
            v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = 0;
            v294 = &v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
            *v294 = v278;
            v294[1] = v279;
            v295 = &v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
            *v295 = v280;
            v295[1] = v281;
            v296 = &v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
            *v296 = v529;
            v296[1] = v547;
            *&v292[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v290;
            v542[16].receiver = v292;
            v542[16].super_class = v291;

            v297 = objc_msgSendSuper2(v542 + 16, sel_init);
            v298 = [*v274 source];
            [v298 sendEvent_];

            __swift_destroy_boxed_opaque_existential_1Tm(&v542[3].super_class);
            if (v414)
            {
              goto LABEL_160;
            }

            v472 = v542[58].super_class;
            v299 = v542[49].receiver;
            v300 = v542[46].receiver;
            v301 = v542[45].receiver;
            v302 = v542[41].super_class;
            v303 = v542[33].receiver;
            v304 = v542[32].super_class;
            v305 = v542[25].super_class;
            v478 = v542[24].super_class;
            v483 = v542[48].receiver;
            LOBYTE(v552[0]) = 0;
            sub_2262D66FC(v303, v304, &qword_27D792FE0, &unk_226351C10);
            sub_22634F71C();
            sub_22634F70C();
            sub_22634FD9C();
            v459(v300, v301);
            sub_22634B940(v302, v472, v435 - 1, v552, v304, v529, v547, v299);

            (*v450)(v305, v478);
            (*v448)(v299, v483);
            sub_2262D67D8(v304, &qword_27D792FE0, &unk_226351C10);
            sub_22634FFEC();
            v306 = sub_22635003C();
            v307 = sub_22635071C();
            if (os_log_type_enabled(v306, v307))
            {
              v308 = swift_slowAlloc();
              *v308 = 0;
              _os_log_impl(&dword_2262B6000, v306, v307, "Successfully sent conversion feedback event", v308, 2u);
              MEMORY[0x22AA7D570](v308, -1, -1);
            }

            v309 = v542[66].super_class;
            v310 = v542[62].super_class;
            v311 = v542[57].super_class;
            v312 = v542[52].super_class;
            v313 = v542[41].super_class;
            v314 = v542[33].receiver;

            (*v510)(v309, v310);
            sub_2262D6068(v313, type metadata accessor for RankedVisualAction);
            v115(v311, v312);
            v315 = v314;
            v89 = v542;
            sub_2262D67D8(v315, &qword_27D792FE0, &unk_226351C10);
            v105 = v493;
            goto LABEL_43;
          }
        }

        v529 = 0;
        v547 = 0;
        goto LABEL_93;
      }
    }

    v253 = v89[57].super_class;
    v254 = v89[56].receiver;
    v255 = v89[52].super_class;
    sub_22634FFEC();
    v535(v254, v253, v255);
    v256 = sub_22635003C();
    v257 = sub_22635073C();
    v258 = os_log_type_enabled(v256, v257);
    v259 = v89[66].receiver;
    v260 = v89[62].super_class;
    v261 = v89[57].super_class;
    v262 = v89[56].receiver;
    v263 = v89[52].super_class;
    if (v258)
    {
      v549 = v89[57].super_class;
      v264 = swift_slowAlloc();
      v265 = swift_slowAlloc();
      v552[0] = v265;
      *v264 = 136315138;
      sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v532 = v259;
      v266 = sub_226350C1C();
      v268 = v267;
      v115(v262, v263);
      v269 = sub_226345004(v266, v268, v552);
      v89 = v542;

      *(v264 + 4) = v269;
      _os_log_impl(&dword_2262B6000, v256, v257, "Could not find cached action for %s", v264, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v265);
      v270 = v265;
      v105 = v493;
      MEMORY[0x22AA7D570](v270, -1, -1);
      MEMORY[0x22AA7D570](v264, -1, -1);

      (*v510)(v532, v260);
      v115(v549, v263);
    }

    else
    {

      v115(v262, v263);
      (*v510)(v259, v260);
      v115(v261, v263);
    }

LABEL_43:
    v104 = v436 + 1;
    v103 = v434;
    if (v436 + 1 == v433)
    {
      goto LABEL_103;
    }
  }

  if (v109 != v423)
  {
    sub_22634FFEC();
    v246 = sub_22635003C();
    v247 = sub_22635073C();
    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      *v248 = 0;
      _os_log_impl(&dword_2262B6000, v246, v247, "Unknown feedback request", v248, 2u);
      MEMORY[0x22AA7D570](v248, -1, -1);
    }

    v249 = v89[64].super_class;
    v250 = v89[62].super_class;
    v251 = v89[44].receiver;
    v252 = v89[43].receiver;

    (*v510)(v249, v250);
    (*v416)(v251, v252);
    goto LABEL_43;
  }

  v134 = v89[44].receiver;
  (*v424)(v134, v89[43].receiver);
  v135 = *v134;

  sub_2262D5D0C(v136);

  v137 = 0;
  v138 = *(v135 + 16);
  v482 = v138;
  v488 = v135;
  while (v137 == v138)
  {
    v140 = 1;
    v141 = v138;
LABEL_58:
    v147 = v89[23].super_class;
    v148 = v89[24].receiver;
    v149 = v89[22].receiver;
    (*v503)(v147, v140, 1, v149);
    sub_2262D6764(v147, v148, &qword_27D793000, &unk_226351EB0);
    if ((*v498)(v148, 1, v149) == 1)
    {

      goto LABEL_43;
    }

    v150 = v89[24].receiver;
    v151 = *v150;
    v512(v89[55].super_class, v150 + v105[12], v89[52].super_class);
    v152 = *&v540[v507];
    v548 = v141;
    if (*(v152 + 16))
    {
      v153 = v89[55].super_class;

      v154 = sub_2263394D8(v153);
      if ((v155 & 1) == 0)
      {

        goto LABEL_65;
      }

      v530 = v151;
      v156 = v89[40].super_class;
      v157 = v89[40].receiver;
      v158 = v89[32].receiver;
      v159 = v89[26].receiver;
      sub_2262D5EB8(*(v152 + 56) + v455[9] * v154, v157, type metadata accessor for RankedVisualAction);

      sub_2262D6000(v157, v156, type metadata accessor for RankedVisualAction);
      v458(v158, 1, 1, v159);
      v160 = *&v540[v452];
      if (*(v160 + 16))
      {
        v161 = v89[55].super_class;

        v162 = sub_2263394D8(v161);
        if (v163)
        {
          v164 = v89[32].receiver;
          v166 = v89[29].super_class;
          v165 = v89[30].receiver;
          sub_2262D5EB8(*(v160 + 56) + v426[9] * v162, v166, type metadata accessor for ActionContext);

          sub_2262D6000(v166, v165, type metadata accessor for ActionContext);
          sub_2262D5F20(v165 + *(v425 + 5), v164);
          v167 = (v165 + *(v425 + 6));
          v169 = *v167;
          v168 = v167[1];

          sub_2262D6068(v165, type metadata accessor for ActionContext);
          goto LABEL_69;
        }
      }

      v169 = 0;
      v168 = 0;
LABEL_69:
      v187 = v89[46].super_class;
      v524 = v169;
      if (!(*v445)(v187, 1, v89[20].super_class))
      {
        v188 = v89[38].receiver;
        v189 = v89[21].super_class;
        sub_2262D5EB8(v187, v189, type metadata accessor for VisualAction);
        sub_2262D5EB8(v189 + *(v429 + 5), v188, type metadata accessor for VisualAction.Kind);
        v190 = swift_getEnumCaseMultiPayload();
        v191 = v89[38].receiver;
        v192 = v89[21].super_class;
        if (v190 == 2)
        {
          v194 = v89[19].super_class;
          v193 = v89[20].receiver;
          v195 = v89[18].super_class;
          (*v422)(v193, v89[38].receiver, v195);
          (*v420)(v194, v421, v195);
          v196 = MEMORY[0x22AA7B3E0](v193, v194);
          v197 = *v419;
          (*v419)(v194, v195);
          v197(v193, v195);
          sub_2262D6068(v192, type metadata accessor for VisualAction);
          if (v196)
          {
            v198 = v168;
            goto LABEL_81;
          }
        }

        else
        {
          sub_2262D6068(v89[21].super_class, type metadata accessor for VisualAction);
          sub_2262D6068(v191, type metadata accessor for VisualAction.Kind);
        }
      }

      v199 = v169;
      v477 = v168;
      v200 = v89[40].super_class;
      v201 = v89[32].receiver;
      v202 = v89[26].receiver;
      sub_2262D5E54(&v540[v443], &v89[1]);
      v470 = __swift_project_boxed_opaque_existential_1(&v89[1].receiver, v89[2].super_class);
      v203 = sub_2262DBE60();
      v205 = v204;
      v206 = *v200;
      v207 = *(v437 + 1);
      if ((*v439)(v201, 1, v202))
      {

        v208 = 0;
        v209 = 0;
      }

      else
      {
        v210 = v89[32].receiver;
        v211 = v89[27].receiver;
        v212 = v542[26].receiver;
        (*v428)(v211, v210, v212);

        v208 = sub_22634F46C();
        v209 = v213;
        v214 = v212;
        v89 = v542;
        (*v427)(v211, v214);
      }

      if (v441[8])
      {
        sub_22634EEAC();
      }

      else
      {
        sub_22634EE4C();
      }

      v215 = v89[51].receiver;
      v216 = v542[49].super_class;
      sub_22634EE5C();
      v218 = v217;
      v219 = v216;
      v89 = v542;
      v457(v215, v219);
      v220 = type metadata accessor for VisualActionEvent();
      v221 = objc_allocWithZone(v220);
      *&v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_dataVersion] = 0;
      v222 = &v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_actionId];
      *v222 = v203;
      v222[1] = v205;
      v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_outcome] = 1;
      v223 = &v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_bundleId];
      *v223 = v206;
      v223[1] = v207;
      v224 = &v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_majorLabel];
      *v224 = v208;
      v224[1] = v209;
      v225 = &v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_minorLabel];
      v198 = v477;
      *v225 = v199;
      v225[1] = v477;
      *&v221[OBJC_IVAR____TtC26VisualActionPredictionCore17VisualActionEvent_timestamp] = v218;
      v542[15].receiver = v221;
      v542[15].super_class = v220;

      v226 = objc_msgSendSuper2(v542 + 15, sel_init);
      v227 = [*v470 source];
      [v227 sendEvent_];

      __swift_destroy_boxed_opaque_existential_1Tm(&v542[1].receiver);
LABEL_81:
      v228 = v89;
      v229 = v89[58].super_class;
      v230 = v228[49].receiver;
      v231 = v228[46].receiver;
      v232 = v228[45].receiver;
      v233 = v228[40].super_class;
      v234 = v228[32].super_class;
      v235 = v228[32].receiver;
      v236 = v228[25].super_class;
      v467 = v228[24].super_class;
      v471 = v228[48].receiver;
      LOBYTE(v552[0]) = 1;
      sub_2262D66FC(v235, v234, &qword_27D792FE0, &unk_226351C10);
      sub_22634F71C();
      sub_22634F70C();
      sub_22634FD9C();
      v459(v231, v232);
      sub_22634B940(v233, v229, v530, v552, v234, v524, v198, v230);

      (*v450)(v236, v467);
      (*v448)(v230, v471);
      sub_2262D67D8(v234, &qword_27D792FE0, &unk_226351C10);
      sub_22634FFEC();
      v237 = sub_22635003C();
      v238 = sub_22635071C();
      if (os_log_type_enabled(v237, v238))
      {
        v239 = swift_slowAlloc();
        *v239 = 0;
        _os_log_impl(&dword_2262B6000, v237, v238, "Successfully sent rejection feedback event", v239, 2u);
        MEMORY[0x22AA7D570](v239, -1, -1);
      }

      v89 = v542;
      v240 = v542[65].super_class;
      v241 = v542[62].super_class;
      v242 = v542[55].super_class;
      v243 = v542[52].super_class;
      v244 = v542[40].super_class;
      v245 = v542[32].receiver;

      (*v510)(v240, v241);
      sub_2262D6068(v244, type metadata accessor for RankedVisualAction);
      (*v517)(v242, v243);
      sub_2262D67D8(v245, &qword_27D792FE0, &unk_226351C10);
      v135 = v488;
      v105 = v493;
      v138 = v482;
      v137 = v548;
    }

    else
    {
LABEL_65:
      v170 = v89[55].super_class;
      v171 = v89[55].receiver;
      v172 = v89[52].super_class;
      sub_22634FFEC();
      v535(v171, v170, v172);
      v173 = sub_22635003C();
      v174 = sub_22635073C();
      v175 = os_log_type_enabled(v173, v174);
      v523 = v89[62].super_class;
      v531 = v89[65].receiver;
      v176 = v89[55].super_class;
      v177 = v89[55].receiver;
      v178 = v89[52].super_class;
      if (v175)
      {
        v476 = v89[55].super_class;
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v552[0] = v180;
        *v179 = 136315138;
        sub_2262D62A4(&qword_28137FA38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v181 = sub_226350C1C();
        v183 = v182;
        v184 = *v517;
        (*v517)(v177, v178);
        v185 = sub_226345004(v181, v183, v552);
        v135 = v488;

        *(v179 + 4) = v185;
        _os_log_impl(&dword_2262B6000, v173, v174, "Could not find cached action for %s", v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v180);
        v186 = v180;
        v105 = v493;
        MEMORY[0x22AA7D570](v186, -1, -1);
        MEMORY[0x22AA7D570](v179, -1, -1);

        (*v510)(v531, v523);
        v184(v476, v178);
        v138 = v482;
        v89 = v542;
        v137 = v548;
      }

      else
      {

        v139 = *v517;
        (*v517)(v177, v178);
        (*v510)(v531, v523);
        v139(v176, v178);
        v137 = v548;
      }
    }
  }

  if (v137 < *(v135 + 16))
  {
    v142 = v89[52].super_class;
    v143 = v89[23].receiver;
    v144 = v89[23].super_class;
    v141 = v137 + 1;
    v145 = v135 + ((v463[80] + 32) & ~v463[80]) + *(v463 + 9) * v137;
    v146 = v105[12];
    *v143 = v137;
    v535(v143 + v146, v145, v142);
    sub_2262D6764(v143, v144, &qword_27D792FF8, &qword_226351EA8);
    v140 = 0;
    goto LABEL_58;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

uint64_t sub_2262CDB7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F34C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22634F68C();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = sub_22635004C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CDD10, v2, 0);
}

uint64_t sub_2262CDD10()
{
  v49 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[11];
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[3];
    sub_22634FFEC();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    if (v8)
    {
      v42 = v0[10];
      v43 = v5;
      v47 = v0[15];
      v14 = v0[8];
      v13 = v0[9];
      v45 = v7;
      v46 = v0[12];
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v48);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD000000000000029, 0x8000000226356490, &v48);
      *(v15 + 22) = 2080;
      v43(v42, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v48);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v45, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v44, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v11 + 8))(v47, v46);
    }

    else
    {
      v34 = v0[8];
      v35 = v0[9];

      (*(v35 + 8))(v12, v34);
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v48);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD000000000000029, 0x8000000226356490, &v48);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  v36 = v0[4];
  v37 = sub_22634F66C();
  v0[16] = *(v36 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister);
  swift_getObjectType();
  v0[17] = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  sub_22634F67C();
  v39 = sub_2263505BC();
  if (v37)
  {
    v40 = sub_2262CE1C8;
  }

  else
  {
    v40 = sub_2262CE30C;
  }

  return MEMORY[0x2822009F8](v40, v39, v38);
}

uint64_t sub_2262CE1C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_226322848(v4 + v0[17], v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2262CE268, v4, 0);
}

uint64_t sub_2262CE268()
{
  sub_22634F69C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2262CE30C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_2263212D0(v4 + v0[17], v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2262D6838, v4, 0);
}

uint64_t sub_2262CE3AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634FC7C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_22634FDFC();
  v3[8] = swift_task_alloc();
  v5 = sub_22634F7EC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_22634F83C();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_22634FC4C();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v8 = sub_22634F60C();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v9 = sub_22635004C();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CE680, v2, 0);
}

uint64_t sub_2262CE680()
{
  v47 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[21];
    v2 = v0[18];
    v3 = v0[19];
    v4 = v0[3];
    sub_22634FFEC();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    if (v8)
    {
      v40 = v0[20];
      v41 = v5;
      v45 = v0[25];
      v14 = v0[18];
      v13 = v0[19];
      v43 = v7;
      v44 = v0[22];
      v15 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v46);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD00000000000002DLL, 0x8000000226356460, &v46);
      *(v15 + 22) = 2080;
      v41(v40, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v46);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v43, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v42, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v11 + 8))(v45, v44);
    }

    else
    {
      v34 = v0[18];
      v35 = v0[19];

      (*(v35 + 8))(v12, v34);
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[22];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v46);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD00000000000002DLL, 0x8000000226356460, &v46);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FF0, &qword_226351E90);
  sub_22634F51C();
  *(swift_allocObject() + 16) = xmmword_226351C90;
  sub_22634F5EC();
  sub_22634F5FC();
  sub_22634F7BC();
  v36 = swift_task_alloc();
  v0[26] = v36;
  *v36 = v0;
  v36[1] = sub_2262CEBBC;
  v37 = v0[14];
  v38 = v0[11];

  return sub_2262CEEE4(v37, v38);
}

uint64_t sub_2262CEBBC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2262CED28, v4, 0);
}

uint64_t sub_2262CED28()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  sub_22634F81C();
  (*(v2 + 8))(v1, v3);
  v7 = sub_22634FC6C();
  (*(v5 + 8))(v4, v6);
  if (*(v7 + 16))
  {
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    (*(v9 + 16))(v8, v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10);

    sub_22634FC3C();
    (*(v9 + 8))(v8, v10);
  }

  else
  {
  }

  sub_22634F61C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_2262CEEE4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_22634FC7C();
  v3[12] = swift_task_alloc();
  v4 = sub_22634EECC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for Analytics(0);
  v3[17] = swift_task_alloc();
  v5 = sub_22634F7EC();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_22635004C();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CF0D4, v2, 0);
}

uint64_t sub_2262CF0D4()
{
  v69 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[21];
    v2 = v0[18];
    v3 = v0[19];
    v4 = v0[10];
    sub_22634FFEC();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    if (v8)
    {
      v62 = v0[20];
      v63 = v5;
      v67 = v0[25];
      v14 = v0[18];
      v13 = v0[19];
      v65 = v7;
      v66 = v0[22];
      v15 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v68 = v64;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v68);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356440, &v68);
      *(v15 + 22) = 2080;
      v63(v62, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v68);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v65, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v64, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v11 + 8))(v67, v66);
    }

    else
    {
      v34 = v0[18];
      v35 = v0[19];

      (*(v35 + 8))(v12, v34);
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[22];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v68);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356440, &v68);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  v37 = v0[16];
  v36 = v0[17];
  v39 = v0[14];
  v38 = v0[15];
  v40 = v0[13];
  v41 = v0[11];
  v42 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
  v43 = v37[5];
  v44 = sub_22634EEFC();
  (*(*(v44 - 8) + 16))(&v36[v43], v41 + v42, v44);
  sub_22634F7DC();
  v45 = &v36[v37[6]];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v36[v37[7]];
  v46[2] = 0u;
  v46[3] = 0u;
  *v46 = 0u;
  v46[1] = 0u;
  v61 = v37[8];
  v36[v61] = 2;
  v47 = &v36[v37[9]];
  *v47 = 0;
  v47[1] = 0;
  v36[v37[10]] = 3;
  v36[v37[11]] = 2;
  v48 = v37[12];
  v49 = sub_22634F47C();
  (*(*(v49 - 8) + 56))(&v36[v48], 1, 1, v49);
  *&v36[v37[14]] = MEMORY[0x277D84F98];
  *&v36[v37[15]] = MEMORY[0x277D84F90];
  v36[v37[16]] = 0;
  *v36 = 3;
  sub_22634EEAC();
  sub_2262EB938(5, v38);
  v50 = *(v39 + 8);
  v50(v38, v40);
  v51 = *(v41 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  type metadata accessor for VisualBundleRanker();
  inited = swift_initStackObject();
  __asm { FMOV            V0.2D, #0.5 }

  *(inited + 40) = _Q0;
  *(inited + 16) = _Q0;
  *(inited + 32) = v51;

  v58 = sub_22634F7CC();
  sub_2262E6EBC(v58);

  v36[v61] = 0;
  sub_22634EEAC();
  sub_2262EBFE0(5, v38);
  v50(v38, v40);
  sub_2262EC7A0();
  sub_22634FC5C();
  sub_22634F82C();
  swift_setDeallocating();

  sub_2262D6068(v36, type metadata accessor for Analytics);

  v59 = v0[1];

  return v59();
}

uint64_t sub_2262CF79C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2262CF7E0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22634F80C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CF918, v2, 0);
}

uint64_t sub_2262CF918()
{
  v51 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[12];
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[7];
    sub_22634FFEC();
    v5 = *(v3 + 16);
    v5(v1, v4, v2);

    v6 = sub_22635003C();
    v7 = sub_22635071C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[12];
    if (v8)
    {
      v44 = v0[11];
      v45 = v5;
      v49 = v0[16];
      v14 = v0[9];
      v13 = v0[10];
      v47 = v7;
      v48 = v0[13];
      v15 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v15 = 136315650;
      v16 = sub_226350D6C();
      v18 = sub_226345004(v16, v17, &v50);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356420, &v50);
      *(v15 + 22) = 2080;
      v45(v44, v12, v14);
      v19 = sub_2263504CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_226345004(v19, v21, &v50);

      *(v15 + 24) = v22;
      _os_log_impl(&dword_2262B6000, v6, v47, "%s.%s request = %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v46, -1, -1);
      MEMORY[0x22AA7D570](v15, -1, -1);

      (*(v11 + 8))(v49, v48);
    }

    else
    {
      v34 = v0[9];
      v35 = v0[10];

      (*(v35 + 8))(v12, v34);
      (*(v11 + 8))(v9, v10);
    }
  }

  else
  {
    sub_22634FFEC();

    v23 = sub_22635003C();
    v24 = sub_22635072C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[14];
    v26 = v0[15];
    v28 = v0[13];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 136315394;
      v31 = sub_226350D6C();
      v33 = sub_226345004(v31, v32, &v50);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_226345004(0xD00000000000001ELL, 0x8000000226356420, &v50);
      _os_log_impl(&dword_2262B6000, v23, v24, "%s.%s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v30, -1, -1);
      MEMORY[0x22AA7D570](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
  }

  v36 = *(v0[8] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase);
  v37 = sub_22634F7FC();
  if (v38)
  {
    v39 = v37;
    v40 = v38;

    sub_22630474C(v36, v36, v39, v40, v41);
  }

  else
  {
    sub_226304CC0(v36);
  }

  sub_22634F84C();

  v42 = v0[1];

  return v42();
}

uint64_t sub_2262CFE60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22634F93C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262CFF98, v2, 0);
}

uint64_t sub_2262CFF98()
{
  v44 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[8];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[3];
    sub_22634FFEC();
    v42 = *(v3 + 16);
    v42(v1, v4, v2);

    v5 = sub_22635003C();
    v6 = sub_22635071C();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[8];
    if (v7)
    {
      v37 = v0[7];
      v41 = v0[12];
      v13 = v0[5];
      v12 = v0[6];
      v39 = v6;
      v40 = v0[9];
      v14 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v14 = 136315650;
      v15 = sub_226350D6C();
      v17 = sub_226345004(v15, v16, &v43);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_226345004(0xD000000000000026, 0x80000002263563D0, &v43);
      *(v14 + 22) = 2080;
      v42(v37, v11, v13);
      v18 = sub_2263504CC();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_226345004(v18, v20, &v43);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_2262B6000, v5, v39, "%s.%s request = %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v38, -1, -1);
      MEMORY[0x22AA7D570](v14, -1, -1);

      (*(v10 + 8))(v41, v40);
    }

    else
    {
      v33 = v0[5];
      v34 = v0[6];

      (*(v34 + 8))(v11, v33);
      (*(v10 + 8))(v8, v9);
    }
  }

  else
  {
    sub_22634FFEC();

    v22 = sub_22635003C();
    v23 = sub_22635072C();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315394;
      v30 = sub_226350D6C();
      v32 = sub_226345004(v30, v31, &v43);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_226345004(0xD000000000000026, 0x80000002263563D0, &v43);
      _os_log_impl(&dword_2262B6000, v22, v23, "%s.%s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v29, -1, -1);
      MEMORY[0x22AA7D570](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
  }

  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream), *(v0[4] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream + 24));
  EngagementStream.clearAllData()();
  sub_22634F84C();

  v35 = v0[1];

  return v35();
}

uint64_t sub_2262D0460(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22634F88C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D0598, v2, 0);
}

uint64_t sub_2262D0598()
{
  v52 = v0;
  if (sub_22634FCBC())
  {
    v1 = v0[11];
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[6];
    sub_22634FFEC();
    v50 = *(v3 + 16);
    v50(v1, v4, v2);

    v5 = sub_22635003C();
    v6 = sub_22635071C();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    if (v7)
    {
      v45 = v0[10];
      v49 = v0[15];
      v13 = v0[8];
      v12 = v0[9];
      v47 = v6;
      v48 = v0[12];
      v14 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v14 = 136315650;
      v15 = sub_226350D6C();
      v17 = sub_226345004(v15, v16, &v51);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_226345004(0xD000000000000018, 0x8000000226356390, &v51);
      *(v14 + 22) = 2080;
      v50(v45, v11, v13);
      v18 = sub_2263504CC();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_226345004(v18, v20, &v51);

      *(v14 + 24) = v21;
      _os_log_impl(&dword_2262B6000, v5, v47, "%s.%s request = %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v46, -1, -1);
      MEMORY[0x22AA7D570](v14, -1, -1);

      (*(v10 + 8))(v49, v48);
    }

    else
    {
      v33 = v0[8];
      v34 = v0[9];

      (*(v34 + 8))(v11, v33);
      (*(v10 + 8))(v8, v9);
    }
  }

  else
  {
    sub_22634FFEC();

    v22 = sub_22635003C();
    v23 = sub_22635072C();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[13];
    v25 = v0[14];
    v27 = v0[12];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315394;
      v30 = sub_226350D6C();
      v32 = sub_226345004(v30, v31, &v51);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_226345004(0xD000000000000018, 0x8000000226356390, &v51);
      _os_log_impl(&dword_2262B6000, v22, v23, "%s.%s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v29, -1, -1);
      MEMORY[0x22AA7D570](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
  }

  v35 = sub_22634F86C();
  if (v35)
  {
    v36 = v35;
    v37 = v0[7];
    v38 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap;
    swift_beginAccess();
    *(v37 + v38) = v36;
  }

  v39 = sub_22634F87C();
  if ((v40 & 1) == 0)
  {
    v41 = v0[7] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting;
    *v41 = v39;
    *(v41 + 8) = 0;
  }

  v42 = sub_22634F85C();
  if (v42)
  {
    *(v0[7] + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting) = v42;
  }

  sub_22634F84C();

  v43 = v0[1];

  return v43();
}

uint64_t sub_2262D0AC4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_22634F91C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_22635004C();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2262D0BF0, v2, 0);
}

uint64_t sub_2262D0BF0(uint64_t a1)
{
  v45 = v1;
  v2 = v1[13];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[8];
  sub_22634FFEC();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);

  v7 = sub_22635003C();
  v8 = sub_22635071C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[15];
  v10 = v1[16];
  v13 = v1[13];
  v12 = v1[14];
  if (v9)
  {
    v37 = v1[12];
    v38 = v6;
    v42 = v1[16];
    v15 = v1[10];
    v14 = v1[11];
    v40 = v8;
    v41 = v1[14];
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v16 = 136315650;
    v17 = sub_226350D6C();
    v19 = sub_226345004(v17, v18, &v43);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_226345004(0xD000000000000021, 0x8000000226356340, &v43);
    *(v16 + 22) = 2080;
    v38(v37, v13, v15);
    v20 = sub_2263504CC();
    v22 = v21;
    (*(v14 + 8))(v13, v15);
    v23 = sub_226345004(v20, v22, &v43);

    *(v16 + 24) = v23;
    _os_log_impl(&dword_2262B6000, v7, v40, "%s.%s request = %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v39, -1, -1);
    MEMORY[0x22AA7D570](v16, -1, -1);

    (*(v11 + 8))(v42, v41);
  }

  else
  {
    v24 = v1[10];
    v25 = v1[11];

    (*(v25 + 8))(v13, v24);
    (*(v11 + 8))(v10, v12);
  }

  v26 = sub_22634F8EC();
  v27 = sub_22634F90C();
  v28 = sub_22634F8BC();
  v29 = sub_22634F8CC();
  v30 = sub_22634F8DC();
  v31 = sub_22634F8FC();
  v32 = sub_22634F8AC();
  sub_2262FF4F0(v26, v27, v28, v29, v30, v31, v32);

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_22635096C();

  v43 = 0xD00000000000001FLL;
  v44 = 0x8000000226356320;
  v33 = *(sub_22634F8EC() + 16);

  v1[6] = v33;
  v34 = sub_226350C1C();
  MEMORY[0x22AA7C5B0](v34);

  MEMORY[0x22AA7C5B0](0x73656972746E6520, 0xE90000000000002ELL);
  sub_22634F84C();

  v35 = v1[1];

  return v35();
}

uint64_t sub_2262D10DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  sub_22635096C();
  v33 = v24;
  MEMORY[0x22AA7C5B0](0xA3E5045533CLL, 0xE600000000000000);
  v4 = sub_2262DBE60();
  MEMORY[0x22AA7C5B0](v4);

  MEMORY[0x22AA7C5B0](0x203A65726F63530ALL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7930C8, &unk_226351F90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226351C90;
  v6 = type metadata accessor for RankedVisualAction(0);
  v7 = *(a1 + *(v6 + 24));
  v8 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v9 = 0xE400000000000000;
  v10 = sub_22635049C();
  MEMORY[0x22AA7C5B0](v10);

  MEMORY[0x22AA7C5B0](0xD000000000000015, 0x80000002263565D0);
  v11 = sub_2262D699C();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x22AA7C5B0](v13, v14);

  MEMORY[0x22AA7C5B0](0x657275746165460ALL, 0xEB00000000203A73);
  v15 = (a1 + *(v6 + 20));
  v16 = v15[7];
  v30 = v15[6];
  v31 = v16;
  v32 = *(v15 + 128);
  v17 = v15[3];
  v26 = v15[2];
  v27 = v17;
  v18 = v15[5];
  v28 = v15[4];
  v29 = v18;
  v19 = v15[1];
  v24 = *v15;
  v25 = v19;
  if (sub_2262D66D8(&v24) == 1)
  {
    v20 = 1701736270;
  }

  else
  {
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v20 = sub_2262D91E8();
    v9 = v21;
  }

  MEMORY[0x22AA7C5B0](v20, v9);

  v23 = *(&v33 + 1);
  *a2 = v33;
  a2[1] = v23;
  return result;
}

id sub_2262D1334(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22634EDDC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_22634EE0C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_22634EDAC();

    swift_willThrow();
    v9 = sub_22634EE0C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_2262D148C(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v4 = v3;
  v48 = a2;
  v49 = a3;
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22634F04C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22634EE0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = *(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_lock);
  os_unfair_lock_lock(v15 + 4);
  if (!*(v4 + OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly))
  {
    v41 = v7;
    v42 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase__clientDoNotUseDirectly;
    v40 = v5;
    v44 = v12;
    v45 = v15;
    v46 = v9;
    v17 = OBJC_IVAR____TtC26VisualActionPredictionCore14VectorDatabase_config;
    sub_22634F00C();
    v18 = v51;
    v19 = sub_22634F03C();
    if (v18)
    {
      v43 = *(v46 + 8);
      v43(v14, v8);
      v21 = sub_22634F02C();
      v23 = v22;
    }

    else
    {
      v21 = v19;
      v23 = v20;
      v43 = *(v46 + 8);
      v43(v14, v8);
    }

    v51 = v17;
    if (v21 == sub_22634F02C() && v23 == v24)
    {
    }

    else
    {
      v25 = sub_226350C4C();

      if ((v25 & 1) == 0)
      {
        v38 = sub_22630606C();
        v37 = v50;
        v36 = v38;
        v15 = v45;
LABEL_14:
        *(v4 + v42) = v36;
        swift_retain_n();

        v37(v36);

        goto LABEL_17;
      }
    }

    v26 = v51;
    v27 = v44;
    sub_22634F00C();
    v28 = objc_opt_self();
    v29 = [v28 defaultManager];
    sub_22634EDFC();
    v30 = sub_22635045C();

    v31 = [v29 fileExistsAtPath_];

    v15 = v45;
    if ((v31 & 1) == 0)
    {
      v32 = [v28 defaultManager];
      v33 = sub_22634EDDC();
      v52[0] = 0;
      v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v52];

      if ((v34 & 1) == 0)
      {
        v39 = v52[0];
        sub_22634EDAC();

        swift_willThrow();
        v43(v27, v8);
        goto LABEL_17;
      }

      v35 = v52[0];
      v26 = v51;
    }

    (*(v47 + 16))(v41, &v26[v4], v40);
    sub_22634EFFC();
    swift_allocObject();
    v36 = sub_22634EF9C();
    v43(v27, v8);
    v37 = v50;
    goto LABEL_14;
  }

  v50(v16);

LABEL_17:
  os_unfair_lock_unlock(v15 + 4);
}