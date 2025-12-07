BOOL sub_2531FCD94(void *a1, uint64_t *a2)
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

void *sub_2531FCE14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2531FCE8C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2A30, &qword_253D48628);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FCEC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FCEFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FCF54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2531FCFA8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2D70, &qword_253D489B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FCFD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD020()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2531FD0CC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3010, &qword_253D48B98);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD0FC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD1B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FD248()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2531FD290(void *a1)
{
  [v1 setDispatchQueue_];
}

uint64_t sub_2531FD2EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD324()
{
  MEMORY[0x259C041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD360()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD398()
{
  MEMORY[0x259C041E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD3D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2531FD41C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2531FD42C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2531FD43C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD480()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD4C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD500()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FD54C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FD590()
{

  return MEMORY[0x2821FE8E8](v0, 242, 7);
}

uint64_t sub_2531FD5C8()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FD650()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD688()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2531FD6D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD708()
{
  v1 = sub_253CCFEE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2531FD7E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FD824()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2531FD86C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3658, &qword_253D49720);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD89C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FD8DC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3788, &qword_253D49848);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD90C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3798, &unk_253D49900);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2531FD954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FDA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

uint64_t sub_2531FDAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FDB94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FDC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FDD18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FDDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FDE98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

uint64_t sub_2531FDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FE018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FE0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2531FE19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2531FE4B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FE4F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FE534(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_253CD07E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2531FE5E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_253CD07E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2531FE6EC()
{
  v1 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() <= 0x16)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2531FE7F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2531FE830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3988, &qword_253D4A4F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FE908()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2531FE948()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A39A8, &qword_253D4A558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FEA28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEA60()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FEAA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2531FEAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3A98, &unk_253D4AAC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2531FEB90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2531FEC98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B70, &qword_253D49578);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2531FED4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2531FEDB0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2531FEDF8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2531FEDF8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2531FEE08()
{
  v1 = (type metadata accessor for NetworkDetectAccessory(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = sub_253CCFF58();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2531FEF30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2531FEF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CCFF58();
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

uint64_t sub_2531FF028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253CCFF58();
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

_OWORD *sub_2531FF150(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2531FF170(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2531FF1E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2531FF314()
{
  v1 = sub_253CD07E8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253200644(0, &qword_27F5A2820, off_27971A0D0);
  sub_253CD0C58();
  sub_253CD07F8();
  v5 = v0;
  v6 = sub_253CD07C8();
  v7 = sub_253CD0C78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136315138;
    v17 = 91;
    v18 = 0xE100000000000000;
    v19 = v9;
    v10 = [v5 logIdentifier];
    v11 = sub_253CD0968();
    v13 = v12;

    MEMORY[0x259C00940](v11, v13);

    MEMORY[0x259C00940](93, 0xE100000000000000);
    v14 = sub_253277BA8(v17, v18, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2531F8000, v6, v7, "%s Configuring swift extensions", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x259C040E0](v9, -1, -1);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t variable initialization expression of DiscoveryController.queue()
{
  v0 = sub_253CD0CE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_253CD0CC8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_253CD0838();
  MEMORY[0x28223BE20](v5 - 8);
  sub_253200644(0, &qword_281530E48, 0x277D85C78);
  sub_253CD0828();
  v7[1] = MEMORY[0x277D84F90];
  sub_253200360(&qword_281530E50, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2498, &unk_253D47D20);
  sub_2531FF83C();
  sub_253CD0E38();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  return sub_253CD0D28();
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

unint64_t sub_2531FF83C()
{
  result = qword_281530EC0;
  if (!qword_281530EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5A2498, &unk_253D47D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530EC0);
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

uint64_t variable initialization expression of DiscoveryController.logger()
{
  sub_253CD0968();

  return sub_253CD07D8();
}

uint64_t sub_2531FF984(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a3;
  return result;
}

uint64_t variable initialization expression of NetworkInfoController.logger()
{
  sub_253CD0968();

  return sub_253CD07D8();
}

uint64_t sub_2531FFAC0(uint64_t a1, int a2)
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

uint64_t sub_2531FFAE0(uint64_t result, int a2, int a3)
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

uint64_t sub_2531FFB1C(uint64_t a1, id *a2)
{
  result = sub_253CD0948();
  *a2 = 0;
  return result;
}

uint64_t sub_2531FFB94(uint64_t a1, id *a2)
{
  v3 = sub_253CD0958();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2531FFC14@<X0>(uint64_t *a2@<X8>)
{
  sub_253CD0968();
  v3 = sub_253CD0938();

  *a2 = v3;
  return result;
}

uint64_t sub_2531FFC58(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A2880, type metadata accessor for HMError, &unk_253D4826C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2531FFCC4(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A2880, type metadata accessor for HMError, &unk_253D4826C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2531FFD34(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);

  return MEMORY[0x28211CA68](a1, v2);
}

void *sub_2531FFDD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2531FFDFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2531FFEBC(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2531FFF28(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2531FFF94(void *a1, uint64_t a2)
{
  v4 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_253200048(uint64_t a1, uint64_t a2)
{
  v4 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2532000C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_253CD11C8();
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_253200124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25320060C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_253200164@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_253CD0938();

  *a2 = v3;
  return result;
}

uint64_t sub_2532001AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_253CD0968();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2532001D8(uint64_t a1)
{
  v2 = sub_253200360(&qword_27F5A28C0, type metadata accessor for Name, &unk_253D48384);
  v3 = sub_253200360(&qword_27F5A28C8, type metadata accessor for Name, &unk_253D48324);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_253200294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253200360(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_253200360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253200480()
{
  v0 = sub_253CD0968();
  v1 = MEMORY[0x259C00980](v0);

  return v1;
}

uint64_t sub_2532004BC(uint64_t a1)
{
  sub_253CD0968();
  sub_253CD09A8();
}

uint64_t sub_253200510()
{
  sub_253CD0968();
  sub_253CD11C8();
  sub_253CD09A8();
  v0 = sub_253CD11E8();

  return v0;
}

uint64_t sub_253200584(void *a1, uint64_t *a2)
{
  v2 = sub_253CD0968();
  v4 = v3;
  if (v2 == sub_253CD0968() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_253CD1118();
  }

  return v7 & 1;
}

uint64_t sub_25320060C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_253200644(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
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

void sub_2532009A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_253200A3C()
{
  result = qword_27F5A28A8;
  if (!qword_27F5A28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A28A8);
  }

  return result;
}

void sub_253200C54()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageDispatcher);
  v2 = *MEMORY[0x277CCF1C8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_253D48580;
  *(v3 + 32) = [objc_opt_self() policyWithEntitlements_];
  *(v3 + 40) = [objc_opt_self() policyWithEntitlementRequirement_];
  sub_253200644(0, &qword_281530E60, 0x277D0F838);
  v4 = sub_253CD0A38();

  [v1 registerForMessage:v2 receiver:v0 policies:v4 selector:sel_handleActiveAssertionUpdateStateMessage_];

  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
  v6 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport);
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidStartNotification_ name:@"HMDXPCClientConnectionDidStartNotification" object:v6];
  [v5 addObserver:v0 selector:sel_handleXPCConnectionDidInvalidateNotification_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:v6];
  v7 = HMDProcessMonitorProcessStateDidChangeNotification;
  v8 = [v6 processMonitor];
  [v5 addObserver:v0 selector:sel_handleProcessInfoStateChangedNotification_ name:v7 object:v8];
}

BOOL sub_253200EC0()
{
  v1 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v2 = *(v1 + 8);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_253CD0ED8();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = v3 != 0;
  os_unfair_lock_unlock(v1);
  return v4;
}

void sub_253200F28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_253CD07E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_253CD0888();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_253CD08A8();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    sub_253CD1078();
    __break(1u);
    return;
  }

  v14 = [a1 sendPolicyParameters];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [a1 inactiveUpdatingLevel];
    v18 = [a1 processInfo];
    v19 = [v18 shouldMonitor];

    if (v19)
    {
      v20 = [a1 processInfo];
      v21 = [v20 isForegrounded];

      if (v21)
      {
        if (!v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = 2;
      }
    }

    else if (v17 <= 1)
    {
      v17 = 1;
    }

    v28 = v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
    v29 = *(v28 + 16);
    if (*(v29 + 16) && (v30 = sub_253217CF0(a1), (v31 & 1) != 0))
    {
      v32 = *(*(*(v29 + 56) + 8 * v30) + 16);
      os_unfair_lock_unlock(v28);
      if (v32)
      {
LABEL_17:
        v33 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      os_unfair_lock_unlock(v28);
    }

    if (v17 == 2)
    {
      [a1 deactivate];
      if ([v16 isActive])
      {
        v33 = 0;
        goto LABEL_24;
      }

LABEL_29:

      return;
    }

    v33 = 0;
LABEL_23:
    [a1 activate];
    if (v33 != [v16 isActive])
    {
LABEL_24:
      v34 = [a1 sendPolicyParameters];
      [v34 mutableCopy];

      sub_253CD0E18();
      swift_unknownObjectRelease();
      sub_253200644(0, &qword_281530D30, off_27971A1D8);
      if (swift_dynamicCast())
      {
        v35 = v37;
        [v37 setActive_];
        [a1 updateSendPolicyParameters_];
        if (v33)
        {
          sub_253201488(a1);
        }

        else
        {
          sub_253201AE8(a1);
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_253211D58(ObjectType, &off_2864FA6E8);
  v22 = a1;
  v23 = sub_253CD07C8();
  v24 = sub_253CD0C98();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = [v22 sendPolicyParameters];
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&dword_2531F8000, v23, v24, "Connection's send policy parameters were not of type HMDHomeManagerXPCMessageSendPolicyParameters: %@", v25, 0xCu);
    sub_253206054(v26, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v26, -1, -1);
    MEMORY[0x259C040E0](v25, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

void sub_253201488(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v59 = sub_253CD07E8();
  v5 = *(v59 - 8);
  v6 = MEMORY[0x28223BE20](v59);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_253CD0888();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_253CD08A8();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v17 = v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v18 = a1;
  v19 = sub_25328683C(&v62, v18);

  if ((v19 & 1) == 0)
  {
    os_unfair_lock_unlock(v17);
    return;
  }

  v20 = *(v17 + 8);
  if ((v20 & 0xC000000000000001) == 0)
  {
    v21 = *(v20 + 16);
    if (*(v17 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v21 = sub_253CD0ED8();
  if (!*(v17 + 24))
  {
LABEL_5:
    v22 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser);
    v23 = v8;
    v24 = ObjectType;
    v25 = v5;
    v26 = v21;
    v27 = sub_253CD0938();
    v28 = [v22 beginActiveAssertionWithReason_];

    v21 = v26;
    v5 = v25;
    ObjectType = v24;
    v8 = v23;
    *(v17 + 24) = v28;
    swift_unknownObjectRelease();
  }

LABEL_6:
  os_unfair_lock_unlock(v17);
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v29 = v18;
  v30 = sub_253CD07C8();
  v31 = sub_253CD0CB8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v58 = v8;
    v33 = ObjectType;
    v34 = v5;
    v35 = v21;
    v36 = v32;
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v29;
    *v37 = v29;
    v38 = v29;
    _os_log_impl(&dword_2531F8000, v30, v31, "Adding active connection: %@", v36, 0xCu);
    sub_253206054(v37, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v37, -1, -1);
    v39 = v36;
    v21 = v35;
    v5 = v34;
    ObjectType = v33;
    v8 = v58;
    MEMORY[0x259C040E0](v39, -1, -1);
  }

  v40 = *(v5 + 8);
  v40(v10, v59);
  [v29 initiateRefresh];
  v41 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v29 added:1];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v29];

  if (v21 == 1)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v42 = sub_253CD07C8();
    v43 = sub_253CD0CB8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2531F8000, v42, v43, "Posting notification because first home manager connection has become active", v44, 2u);
      MEMORY[0x259C040E0](v44, -1, -1);
    }

    v40(v8, v59);
    v45 = MEMORY[0x277D84F98];
    v64 = MEMORY[0x277D84F98];
    v46 = sub_253CD0968();
    v48 = v47;
    v49 = [v29 clientIdentifier];
    if (v49)
    {
      v50 = v49;
      v51 = sub_253CD0968();
      v53 = v52;

      v63 = MEMORY[0x277D837D0];
      *&v62 = v51;
      *(&v62 + 1) = v53;
      sub_2531FF150(&v62, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v45;
      sub_25327A864(v61, v46, v48, isUniquelyReferenced_nonNull_native);

      v55 = v60;
    }

    else
    {
      sub_253279D58(v46, v48, &v62);

      sub_253206054(&v62, &qword_27F5A2AB0, &unk_253D4A560);
      v55 = v64;
    }

    v56 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_25322E744(v55);

    v57 = sub_253CD08B8();

    [v56 postNotificationName:@"HMDHomeManagerFirstProcessDidBecomeActiveNotification" object:v2 userInfo:v57];
  }
}

void sub_253201AE8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = sub_253CD0888();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_253CD08A8();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v17 = v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  v18 = sub_2532049C0(a1);
  if (!v18)
  {
    os_unfair_lock_unlock(v17);
    return;
  }

  v19 = *(v17 + 8);
  if ((v19 & 0xC000000000000001) == 0)
  {
    v20 = *(v19 + 16);
    if (!*(v17 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v20 = sub_253CD0ED8();
  if (*(v17 + 24))
  {
LABEL_5:
    [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser) endActiveAssertion_];
    *(v17 + 24) = 0;
    swift_unknownObjectRelease();
  }

LABEL_6:
  os_unfair_lock_unlock(v17);
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v21 = a1;
  v22 = sub_253CD07C8();
  v23 = sub_253CD0CB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = ObjectType;
    v25 = v6;
    v26 = v5;
    v27 = v20;
    v28 = v24;
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v21;
    *v29 = v21;
    v30 = v21;
    _os_log_impl(&dword_2531F8000, v22, v23, "Removing inactive connection: %@", v28, 0xCu);
    sub_253206054(v29, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v29, -1, -1);
    v31 = v28;
    v20 = v27;
    v5 = v26;
    v6 = v25;
    ObjectType = v50;
    MEMORY[0x259C040E0](v31, -1, -1);
  }

  v32 = *(v6 + 8);
  v32(v10, v5);
  v33 = [objc_allocWithZone(HMDActiveXPCConnectionLogEvent) initWithXPCConnection:v21 added:0];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter) submitLogEvent_];
  [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter) postNotificationName:@"HMDHomeManagerConnectionActiveStateUpdatedNotification" object:v21];

  if (!v20)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v34 = sub_253CD07C8();
    v35 = sub_253CD0CB8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2531F8000, v34, v35, "Posting notification because last home manager connection has become inactive", v36, 2u);
      MEMORY[0x259C040E0](v36, -1, -1);
    }

    v32(v51, v5);
    v37 = MEMORY[0x277D84F98];
    v56 = MEMORY[0x277D84F98];
    v38 = sub_253CD0968();
    v40 = v39;
    v41 = [v21 clientIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = sub_253CD0968();
      v45 = v44;

      v55 = MEMORY[0x277D837D0];
      *&v54 = v43;
      *(&v54 + 1) = v45;
      sub_2531FF150(&v54, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v37;
      sub_25327A864(v53, v38, v40, isUniquelyReferenced_nonNull_native);

      v47 = v52;
    }

    else
    {
      sub_253279D58(v38, v40, &v54);

      sub_253206054(&v54, &qword_27F5A2AB0, &unk_253D4A560);
      v47 = v56;
    }

    v48 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    sub_25322E744(v47);

    v49 = sub_253CD08B8();

    [v48 postNotificationName:@"HMDHomeManagerLastProcessDidBecomeInactiveNotification" object:v2 userInfo:v49];
  }
}

void sub_2532020D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v91 - v5;
  v6 = sub_253CD07E8();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v91 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v91 - v14;
  MEMORY[0x28223BE20](v13);
  v104 = &v91 - v16;
  v103 = sub_253CCFF58();
  v105 = *(v103 - 8);
  v17 = MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v91 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v91 - v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v91 - v23;
  v24 = sub_253CD0888();
  v29 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v26 = v27;
  (*(v29 + 104))(v26, *MEMORY[0x277D85200], v24);
  v28 = v27;
  LOBYTE(v27) = sub_253CD08A8();
  v30 = *(v29 + 8);
  LOBYTE(v29) = v29 + 8;
  v30(v26, v24);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = [a1 proxyConnection];
  v32 = a1;
  if (!v31)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v63 = a1;
    v64 = sub_253CD07C8();
    v65 = sub_253CD0C98();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&dword_2531F8000, v64, v65, "Could not find connection for active assertion message: %@", v66, 0xCu);
      sub_253206054(v67, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v67, -1, -1);
      MEMORY[0x259C040E0](v66, -1, -1);
    }

    (*(v107 + 8))(v9, v108);
    v69 = objc_opt_self();
    v70 = sub_253CD0938();
    v71 = [v69 hmErrorWithCode:2 description:0 reason:v70 suggestion:0];

    v62 = sub_253CCFE08();
    [v63 respondWithError_];

    goto LABEL_14;
  }

  v33 = v31;
  if (![v31 principalClass] || (swift_getObjCClassMetadata(), sub_253200644(0, &qword_281530E78, 0x277CD1A90), !swift_dynamicCastMetatype()))
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v55 = v33;
    v56 = sub_253CD07C8();
    v57 = sub_253CD0C98();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v33;
      v60 = v55;
      _os_log_impl(&dword_2531F8000, v56, v57, "Cannot update assertion for non-home-manager connection: %@", v58, 0xCu);
      sub_253206054(v59, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v59, -1, -1);
      MEMORY[0x259C040E0](v58, -1, -1);
    }

    (*(v107 + 8))(v12, v108);
    type metadata accessor for HMError(0);
    v110 = 48;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_2532060B4(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);
    sub_253CCFDF8();
    v61 = v109[0];
    v62 = sub_253CCFE08();

    [v32 respondWithError_];
LABEL_14:

    return;
  }

  v34 = [a1 uuidForKey_];
  if (!v34)
  {
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v72 = sub_253CD07C8();
    v73 = sub_253CD0C98();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2531F8000, v72, v73, "Could not find assertion UUID in update state message payload", v74, 2u);
      MEMORY[0x259C040E0](v74, -1, -1);
    }

    (*(v107 + 8))(v15, v108);
    type metadata accessor for HMError(0);
    v110 = 3;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_2532060B4(&qword_27F5A28B8, type metadata accessor for HMError, &unk_253D48450);
    sub_253CCFDF8();
    v75 = v109[0];
    v76 = sub_253CCFE08();

    [v32 respondWithError_];
    return;
  }

  v98 = v1;
  v35 = v106;
  v36 = v34;
  sub_253CCFF38();

  v37 = *MEMORY[0x277CCF1B8];
  v96 = v32;
  v97 = [v32 BOOLForKey_];
  v26 = v104;
  sub_253211D58(ObjectType, &off_2864FA6E8);
  v38 = v105;
  v39 = v102;
  v29 = v103;
  v94 = *(v105 + 16);
  v95 = v105 + 16;
  v94(v102, v35, v103);
  v40 = v33;
  v41 = sub_253CD07C8();
  v42 = sub_253CD0CB8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v109[0] = v93;
    *v43 = 136315650;
    sub_2532060B4(&qword_281531980, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = sub_253CD10E8();
    v26 = v45;
    v46 = v39;
    v47 = *(v105 + 8);
    v47(v46, v29);
    v48 = sub_253277BA8(v44, v26, v109);

    *(v43 + 4) = v48;
    *(v43 + 12) = 1024;
    v49 = v97;
    *(v43 + 14) = v97;
    *(v43 + 18) = 2112;
    *(v43 + 20) = v40;
    v50 = v92;
    *v92 = v33;
    v24 = v47;
    v51 = v40;
    _os_log_impl(&dword_2531F8000, v41, v42, "Updating assertion with UUID %s to %{BOOL}d for connection: %@", v43, 0x1Cu);
    sub_253206054(v50, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v50, -1, -1);
    v52 = v93;
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x259C040E0](v52, -1, -1);
    v53 = v43;
    v38 = v105;
    MEMORY[0x259C040E0](v53, -1, -1);

    (*(v107 + 8))(v104, v108);
    v54 = v98;
    v9 = v40;
  }

  else
  {

    v24 = *(v38 + 8);
    v24(v39, v29);
    (*(v107 + 8))(v26, v108);
    v54 = v98;
    v9 = v40;
    v49 = v97;
  }

  a1 = v54 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState;
  os_unfair_lock_lock((v54 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
  if (!v49)
  {
    v85 = sub_253202DEC(v109, v9);
    if (*v86)
    {
      v87 = v100;
      sub_253204B58(v106, v100);
      sub_253206054(v87, &unk_27F5A2AD0, &unk_253D486A0);
      (v85)(v109, 0);
    }

    else
    {
      (v85)(v109, 0);
      v90 = v100;
      (*(v38 + 56))(v100, 1, 1, v29);
      sub_253206054(v90, &unk_27F5A2AD0, &unk_253D486A0);
    }

    v26 = v96;
    goto LABEL_33;
  }

  v94(v101, v106, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = *(a1 + 16);
  v78 = v109[0];
  *(a1 + 16) = 0x8000000000000000;
  ObjectType = sub_253217CF0(v9);
  v80 = v78[2];
  v81 = (v79 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_35;
  }

  LOBYTE(v29) = v79;
  if (v78[3] >= v82)
  {
    v26 = v96;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

LABEL_36:
    sub_2532859EC();
    v78 = v109[0];
    goto LABEL_28;
  }

  sub_253283F7C(v82, isUniquelyReferenced_nonNull_native);
  v78 = v109[0];
  v83 = sub_253217CF0(v9);
  v26 = v96;
  if ((v29 & 1) == (v84 & 1))
  {
    ObjectType = v83;
LABEL_28:
    v88 = v99;
    *(a1 + 16) = v78;

    if ((v29 & 1) == 0)
    {
      sub_25327B000(ObjectType, v9, MEMORY[0x277D84FA0], *(a1 + 16));
      v89 = v9;
    }

    sub_253286A74(v88, v101);
    v29 = v103;
    v24(v88, v103);
LABEL_33:
    os_unfair_lock_unlock(a1);
    sub_253200F28(v9);
    [v26 respondWithSuccess];

    v24(v106, v29);
    return;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  sub_253CD1158();
  __break(1u);
}

uint64_t (*sub_253202DEC(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2532059E4(v4, a2);
  return sub_253202E64;
}

void sub_253202E64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_253202F18(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD07E8();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v43 - v13;
  v14 = sub_253CD0888();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_253CD08A8();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v20 = sub_253CCFD48();
  if (!v20)
  {
    v51 = 0u;
    v52 = 0u;
    v23 = v5;
    goto LABEL_14;
  }

  v21 = v20;
  v48 = sub_253CD0968();
  v49 = v22;
  sub_253CD0F58();
  v23 = v5;
  if (!*(v21 + 16) || (v24 = sub_253217D40(v50), (v25 & 1) == 0))
  {

    sub_253205FA4(v50);
    v51 = 0u;
    v52 = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v21 + 56) + 32 * v24, &v51);
  sub_253205FA4(v50);

  if (!*(&v52 + 1))
  {
LABEL_14:
    sub_253206054(&v51, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_15;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  if (swift_dynamicCast())
  {
    v26 = v50[0];
    if ([v50[0] principalClass] && (swift_getObjCClassMetadata(), sub_253200644(0, &qword_281530E78, 0x277CD1A90), swift_dynamicCastMetatype()))
    {
      v27 = v44;
      sub_253211D58(ObjectType, &off_2864FA6E8);
      v28 = v26;
      v29 = sub_253CD07C8();
      v30 = sub_253CD0C78();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_2531F8000, v29, v30, "Setting initial home manager policy parameters on connection: %@", v31, 0xCu);
        sub_253206054(v32, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v32, -1, -1);
        MEMORY[0x259C040E0](v31, -1, -1);
      }

      (*(v46 + 8))(v27, v47);
      v34 = [objc_allocWithZone(HMDHomeManagerXPCMessageSendPolicyParameters) initWithEntitlements:objc_msgSend(v28 options:{sel_entitlements), objc_msgSend(v28, sel_homeManagerOptions)}];
      [v28 updateSendPolicyParameters_];
      [v28 notifyOfExternallyManagedActivation];
      sub_253200F28(v28);
    }

    else
    {
    }

    return;
  }

LABEL_15:
  sub_253211D58(ObjectType, &off_2864FA6E8);
  (*(v6 + 16))(v8, a1, v23);
  v35 = sub_253CD07C8();
  v36 = sub_253CD0CA8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v37 = 136315138;
    *&v51 = sub_253CCFD48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
    v39 = sub_253CD0978();
    v41 = v40;
    (*(v6 + 8))(v8, v23);
    v42 = sub_253277BA8(v39, v41, v50);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2531F8000, v35, v36, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x259C040E0](v38, -1, -1);
    MEMORY[0x259C040E0](v37, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v23);
  }

  (*(v46 + 8))(v12, v47);
}

void sub_2532035CC(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD07E8();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = v55 - v13;
  v14 = sub_253CD0888();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_253CD08A8();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v20 = sub_253CCFD48();
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;
  v61 = sub_253CD0968();
  v62 = v22;
  sub_253CD0F58();
  if (!*(v21 + 16) || (v23 = sub_253217D40(v63), (v24 & 1) == 0))
  {

    sub_253205FA4(v63);
LABEL_13:
    v64 = 0u;
    v65 = 0u;
    goto LABEL_14;
  }

  sub_253205FF8(*(v21 + 56) + 32 * v23, &v64);
  sub_253205FA4(v63);

  if (!*(&v65 + 1))
  {
LABEL_14:
    sub_253206054(&v64, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_15;
  }

  sub_253200644(0, &qword_281530E30, off_27971A270);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_253211D58(ObjectType, &off_2864FA6E8);
    (*(v6 + 16))(v8, a1, v5);
    v32 = sub_253CD07C8();
    v33 = sub_253CD0CA8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136315138;
      *&v64 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v36 = sub_253CD0978();
      v38 = v37;
      (*(v6 + 8))(v8, v5);
      v39 = sub_253277BA8(v36, v38, v63);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2531F8000, v32, v33, "XPC connection did activate notification user info did not contain a HMDXPCClientConnection: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x259C040E0](v35, -1, -1);
      MEMORY[0x259C040E0](v34, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    (*(v59 + 8))(v12, v60);
    return;
  }

  v25 = v63[0];
  if ([v63[0] principalClass] && (swift_getObjCClassMetadata(), v55[1] = sub_253200644(0, &qword_281530E78, 0x277CD1A90), swift_dynamicCastMetatype()))
  {
    v26 = v58;
    v27 = (v58 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState);
    os_unfair_lock_lock((v58 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState));
    v28 = v25;
    sub_25327858C(0, v28);
    os_unfair_lock_unlock(v27);
    sub_253201AE8(v28);
    v56 = [v28 processInfo];
    v29 = [*(v26 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
    a1 = sub_253CD0A58();

    v55[0] = v28;
    if (a1 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
    {
      v31 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x259C00F30](v31, a1);
        }

        else
        {
          if (v31 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v40 = *(a1 + 8 * v31 + 32);
        }

        v41 = v40;
        v42 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        sub_253200644(0, &qword_281530D00, 0x277D82BB8);
        v43 = [v41 processInfo];
        v44 = sub_253CD0D88();

        if (v44)
        {
          v45 = [v41 principalClass];

          if (v45)
          {
            swift_getObjCClassMetadata();
            if (swift_dynamicCastMetatype())
            {

              return;
            }
          }
        }

        else
        {
        }

        ++v31;
        if (v42 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v46 = v57;
    sub_253211D58(ObjectType, &off_2864FA6E8);
    v47 = v56;
    v48 = sub_253CD07C8();
    v49 = sub_253CD0C78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_2531F8000, v48, v49, "Posting notification that no more client connections exist for process: %@", v50, 0xCu);
      sub_253206054(v51, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v51, -1, -1);
      MEMORY[0x259C040E0](v50, -1, -1);
    }

    (*(v59 + 8))(v46, v60);
    v53 = *(v58 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter);
    v54 = v47;
    [v53 postNotificationName:@"HMDHomeManagerClientProcessDisconnectedNotification" object:v54];
  }

  else
  {
  }
}

uint64_t sub_253203E08(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD07E8();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_253CD0888();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  LOBYTE(v16) = sub_253CD08A8();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v24 = sub_253CD0ED8();
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_27:
  }

  v18 = sub_253CCFD48();
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  v42 = sub_253CD0968();
  v43 = v20;
  sub_253CD0F58();
  if (!*(v19 + 16) || (v21 = sub_253217D40(v44), (v22 & 1) == 0))
  {

    sub_253205FA4(v44);
LABEL_18:
    v45 = 0u;
    v46 = 0u;
    goto LABEL_19;
  }

  sub_253205FF8(*(v19 + 56) + 32 * v21, &v45);
  sub_253205FA4(v44);

  if (!*(&v46 + 1))
  {
LABEL_19:
    sub_253206054(&v45, &qword_27F5A2AB0, &unk_253D4A560);
    goto LABEL_20;
  }

  sub_253200644(0, &qword_281530E70, off_27971A208);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_253211D58(ObjectType, &off_2864FA6E8);
    (*(v6 + 16))(v8, a1, v5);
    v31 = sub_253CD07C8();
    v32 = sub_253CD0CA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136315138;
      *&v45 = sub_253CCFD48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AB8, &unk_253D48690);
      v35 = sub_253CD0978();
      v37 = v36;
      (*(v6 + 8))(v8, v5);
      v38 = sub_253277BA8(v35, v37, v44);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2531F8000, v31, v32, "Process info state changed notification user info did not contain a HMDProcessInfo: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x259C040E0](v34, -1, -1);
      MEMORY[0x259C040E0](v33, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return (*(v40 + 8))(v11, v41);
  }

  v6 = v44[0];
  v23 = [*(v39 + OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport) connections];
  sub_253200644(0, &qword_281530E30, off_27971A270);
  v11 = sub_253CD0A58();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  v24 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_27;
  }

LABEL_9:
  result = sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  if (v24 >= 1)
  {
    for (i = 0; i != v24; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x259C00F30](i, v11);
      }

      else
      {
        v27 = *(v11 + 8 * i + 32);
      }

      v28 = v27;
      v29 = [v27 processInfo];
      v30 = sub_253CD0D88();

      if (v30)
      {
        sub_253200F28(v28);
      }
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_2532043EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_253CCFD58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFD18();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

HMDHomeManagerXPCClientConnectionsManagerFactory __swiftcall HMDHomeManagerXPCClientConnectionsManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for HomeManagerXPCClientConnectionsManager(uint64_t a1)
{
  result = qword_281531620;
  if (!qword_281531620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253204810(uint64_t a1)
{
  result = sub_253CCFF58();
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_253204928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_253204970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2532049C0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_253CD0F18();

    if (v6)
    {
      v7 = sub_253204FF4(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_253200644(0, &qword_281530E30, off_27971A270);
  v10 = sub_253CD0D78();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_253CD0D88();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25328A2C8();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_253205320(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_253204B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_253CD08F8();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_2532060B4(&qword_27F5A2AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_253CD0918();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25328A418();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2532054C0(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_253204E00(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_253CD0F18();

    if (v5)
    {
      v6 = sub_25320515C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253CD0908();
  v8 = sub_253CD11E8();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = sub_253CCFF28();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25328A650();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_2532057C8(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_253204FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_253CD0ED8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_253287808(v5, v4);
  v15 = v6;

  v7 = sub_253CD0D78();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_253200644(0, &qword_281530E30, off_27971A270);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_253CD0D88();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_253205320(v9);
  result = sub_253CD0D88();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25320515C(uint64_t a1, uint64_t a2)
{

  v3 = sub_253CD0ED8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_2532879F8(v4, v3);
  v13 = v5;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  sub_253CD0908();
  v6 = sub_253CD11E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_253CCFF28();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v8);
  sub_2532057C8(v8);
  result = sub_253CCFF28();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_253205320(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_253CD0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_253CD0D78();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2532054C0(int64_t a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_253CD0E58();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_253CD08F8();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_2532057C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_253CD0E58();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_253CD11C8();
        sub_253CCFF58();
        sub_2532060B4(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        sub_253CD0908();
        v10 = sub_253CD11E8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_2532059E4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_253205CF0(v5);
  v5[9] = sub_253205AE8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_253205A88;
}

void sub_253205A88(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_253205AE8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_253217CF0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2532859EC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_253283F7C(v16, a3 & 1);
    v11 = sub_253217CF0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_253200644(0, &qword_281530E30, off_27971A270);
    result = sub_253CD1158();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_253205C40;
}

void sub_253205C40(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      sub_25327B000(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_25327A1B0(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_253205CF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_253205D18;
}

id sub_253205D24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v7 = sub_253CCFF58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(v8 + 16);
  v14(&v27 - v12, a3, v7);
  v14(v11, v13, v7);
  v29 = [objc_opt_self() defaultTransport];
  v28 = [objc_opt_self() defaultCenter];
  v15 = type metadata accessor for HomeManagerXPCClientConnectionsManager(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_lockedState];
  *v17 = 0;
  v18 = MEMORY[0x277D84F98];
  *(v17 + 1) = MEMORY[0x277D84FA0];
  *(v17 + 2) = v18;
  *(v17 + 3) = 0;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_queue] = a1;
  v19 = v30;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageDispatcher] = v30;
  v14(&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_messageTargetUUID], v11, v7);
  v20 = v32;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_accessoryBrowser] = v31;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_logEventSubmitter] = v20;
  v21 = v28;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_xpcTransport] = v29;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy38HomeManagerXPCClientConnectionsManager_notificationCenter] = v21;
  v33.receiver = v16;
  v33.super_class = v15;
  v22 = a1;
  v23 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = *(v8 + 8);
  v25(v11, v7);
  v25(v13, v7);
  return v24;
}

uint64_t sub_253205FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_253206054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2532060B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_25320612C(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 uuid];
  sub_253CCFF38();

  LOBYTE(v8) = sub_253CCFF28();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    swift_unknownObjectRetain();
    return v2;
  }

  v10 = sub_253CCFF18();
  v11 = [v2 roomWithUUID_];

  if (v11)
  {
    return v11;
  }

  v12 = [v2 zones];
  sub_253200644(0, &qword_281530D10, off_27971A280);
  v13 = sub_253CD0A58();

  MEMORY[0x28223BE20](v14);
  *(&v32 - 2) = a1;
  v11 = sub_25323FE0C(sub_253207054, (&v32 - 4), v13);

  if (v11)
  {
    return v11;
  }

  result = [v2 actionSets];
  if (result)
  {
    v16 = result;
    sub_253200644(0, &qword_281530E90, off_279719FF0);
    v17 = sub_253CD0A58();

    MEMORY[0x28223BE20](v18);
    *(&v32 - 2) = a1;
    v11 = sub_25323FE0C(sub_253207180, (&v32 - 4), v17);

    if (v11)
    {
      return v11;
    }

    v19 = sub_253206668(a1);
    if (v19)
    {
      return v19;
    }

    v19 = sub_253206A30(a1);
    if (v19)
    {
      return v19;
    }

    result = [v2 mediaSystems];
    if (result)
    {
      v20 = result;
      sub_253200644(0, &qword_27F5A2AF0, off_27971A1A0);
      v21 = sub_253CD0A58();

      if (v21 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
      {
        v23 = 0;
        v35 = v21 & 0xFFFFFFFFFFFFFF8;
        v36 = v21 & 0xC000000000000001;
        v33 = i;
        v34 = v21;
        while (1)
        {
          if (v36)
          {
            v24 = MEMORY[0x259C00F30](v23, v21);
          }

          else
          {
            if (v23 >= *(v35 + 16))
            {
              goto LABEL_32;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          v38 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          v26 = [v24 messageTargetUUID];
          sub_253CCFF38();

          LOBYTE(v26) = sub_253CCFF28();
          v9(v7, v4);
          if (v26)
          {

            return v25;
          }

          v27 = [v25 settingsController];
          if (v27)
          {
            v37 = v25;
            v28 = v27;
            v2 = [v28 messageHandler];
            v29 = [v2 messageTargetUUID];
            sub_253CCFF38();

            LOBYTE(v29) = sub_253CCFF28();
            v9(v7, v4);
            if (v29)
            {

              v31 = v37;
LABEL_30:

              return v2;
            }

            v30 = sub_253CCFF18();
            v31 = [v28 settingForUUID_];

            if (v31)
            {
              goto LABEL_30;
            }

            swift_unknownObjectRelease();
            i = v33;
            v21 = v34;
          }

          else
          {
          }

          ++v23;
          if (v38 == i)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_34:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_253206668(void (**a1)(char *, uint64_t))
{
  v24 = sub_253CCFF58();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 triggers];
  if (!result)
  {
    goto LABEL_25;
  }

  v7 = result;
  sub_253200644(0, &qword_27F5A2B08, off_27971A250);
  v8 = sub_253CD0A58();

  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  v25 = v8 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v9 = 0;
  v26 = v8 & 0xC000000000000001;
  v23 = (v3 + 8);
  while (1)
  {
    if (v27 == v9)
    {

      return 0;
    }

    if (v26)
    {
      v13 = MEMORY[0x259C00F30](v9, v8);
    }

    else
    {
      if (v9 >= *(v25 + 16))
      {
        goto LABEL_22;
      }

      v13 = *(v8 + 8 * v9 + 32);
    }

    v14 = v13;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v25 = v8 & 0xFFFFFFFFFFFFFF8;
      v27 = sub_253CD0ED8();
      goto LABEL_4;
    }

    v15 = [v13 messageTargetUUID];
    sub_253CCFF38();

    LOBYTE(v15) = sub_253CCFF28();
    (*v23)(v5, v24);
    if (v15)
    {

      return v14;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      break;
    }

LABEL_5:
    v10 = [v14 actionSets];
    sub_253200644(0, &qword_281530E90, off_279719FF0);
    v11 = sub_253CD0A58();

    MEMORY[0x28223BE20](v12);
    *(&v23 - 2) = a1;
    v3 = sub_25323FE0C(sub_253207180, (&v23 - 4), v11);

    ++v9;
    if (v3)
    {

      return v3;
    }
  }

  v17 = v16;
  v18 = v14;
  result = [v17 events];
  if (result)
  {
    v19 = result;
    sub_253200644(0, &qword_27F5A2B10, off_27971A0B8);
    v20 = sub_253CD0A58();

    MEMORY[0x28223BE20](v21);
    *(&v23 - 2) = a1;
    v22 = sub_25323FE0C(sub_253207180, (&v23 - 4), v20);

    if (v22)
    {

      return v22;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_253206A30(uint64_t a1)
{
  v2 = v1;
  v42 = sub_253CCFF58();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [v2 accessories];
  sub_253200644(0, &qword_281530EA0, off_279719FE0);
  v7 = sub_253CD0A58();

  if (v7 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v9 = 0;
    v38 = v7 & 0xFFFFFFFFFFFFFF8;
    v39 = v7 & 0xC000000000000001;
    v40 = v4 + 1;
    while (1)
    {
      if (v39)
      {
        v10 = MEMORY[0x259C00F30](v9, v7);
      }

      else
      {
        if (v9 >= *(v38 + 16))
        {
          goto LABEL_28;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v43 = v9 + 1;
      v12 = [v10 uuid];
      v4 = v41;
      sub_253CCFF38();

      LOBYTE(v12) = sub_253CCFF28();
      v13 = *v40;
      (*v40)(v4, v42);
      if (v12)
      {

        return v11;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v4 = v11;
        v16 = [v15 services];
        sub_253200644(0, &qword_27F5A2B00, off_27971A228);
        v17 = sub_253CD0A58();

        MEMORY[0x28223BE20](v18);
        *(&v35 - 2) = a1;
        v19 = sub_25323FE0C(sub_253207180, (&v35 - 4), v17);

        if (v19)
        {

          return v19;
        }
      }

      else
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = v24;
          v4 = v11;
          v26 = [v25 settingsController];
          if (v26)
          {
            v37 = v4;
            v4 = v26;
            v36 = [v4 messageHandler];
            v27 = [v36 messageTargetUUID];
            v28 = v41;
            sub_253CCFF38();

            LOBYTE(v27) = sub_253CCFF28();
            v13(v28, v42);
            if (v27)
            {

              v33 = v37;

              return v36;
            }

            v29 = a1;
            v30 = sub_253CCFF18();
            v31 = [v4 settingForUUID_];

            v32 = v37;
            if (v31)
            {

              return v36;
            }

            swift_unknownObjectRelease();
            a1 = v29;
          }

          else
          {
          }
        }
      }

      v20 = [v11 accessoryProfiles];
      if (v20)
      {
        v21 = v20;
        sub_253200644(0, &qword_27F5A2AF8, off_279719FE8);
        v4 = sub_253CD0A58();

        MEMORY[0x28223BE20](v22);
        *(&v35 - 2) = a1;
        v23 = sub_25323FE0C(sub_253207180, (&v35 - 4), v4);

        if (v23)
        {

          return v23;
        }
      }

      else
      {
      }

      ++v9;
      if (v43 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:

  return 0;
}

uint64_t sub_253207074(id *a1, uint64_t a2)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 messageTargetUUID];
  sub_253CCFF38();

  v8 = sub_253CCFF28();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_25320727C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[3] = sub_253CD06F8();
  v22[4] = MEMORY[0x277D17D60];
  v22[0] = a2;
  v6 = qword_281530E80;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_2532074E4(v22, v21);
  v7 = sub_253CD06D8();
  v8 = objc_allocWithZone(v7);

  v9 = sub_253CD06C8();
  v10 = objc_allocWithZone(sub_253CD06B8());
  v11 = v9;
  v12 = sub_253CD0698();
  v13 = sub_253CD0938();
  v14 = [a1 preferenceForKey_];

  v15 = [v14 numberValue];
  if (v15)
  {
    [v15 doubleValue];
    sub_2532074E4(v22, v21);
    v16 = objc_allocWithZone(v7);

    v17 = sub_253CD06C8();
    sub_253CD0968();
    v18 = v17;
    sub_253CD06A8();
  }

  v19 = [objc_allocWithZone(sub_253CD0658()) init];
  sub_253CD0968();
  sub_253CD06A8();

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v12;
}

uint64_t sub_2532074E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_253207588(uint64_t a1)
{
  v3 = sub_253CCFEE8();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_253CCFF58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = result;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v40 = a1;
      swift_unknownObjectRetain();
      v16 = [v15 groupName];
      sub_253CD0968();

      v17 = [v15 homeUUID];
      sub_253CCFF38();

      v18 = [v15 accessoryUUID];
      sub_253CCFF38();

      v19 = sub_253CD04E8();

      v20 = *(v7 + 8);
      v20(v10, v6);
      v20(v12, v6);
      if (v19)
      {

        v21 = [v15 date];
        sub_253CCFEA8();

        v22 = sub_25323059C(v41, v19, v5);
LABEL_13:
        swift_unknownObjectRelease();

        return v22;
      }

      goto LABEL_18;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      swift_unknownObjectRetain();
      v25 = [v24 groupName];
      sub_253CD0968();

      v26 = [v24 homeUUID];
      sub_253CCFF38();

      v27 = sub_253CD04F8();

      (*(v7 + 8))(v12, v6);
      if (v27)
      {

        v28 = [v24 date];
LABEL_12:
        v32 = v28;
        sub_253CCFEA8();

        v22 = sub_25323059C(v41, v27, v5);
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        if (!v33)
        {
          v42 = 0;
          v43 = 0xE000000000000000;
          sub_253CD0FB8();
          MEMORY[0x259C00940](0xD00000000000001BLL, 0x8000000253D4D730);
          swift_getObjectType();
          v39 = sub_253CD1228();
          MEMORY[0x259C00940](v39);

          MEMORY[0x259C00940](0xD000000000000027, 0x8000000253D4D750);
          result = sub_253CD1078();
          __break(1u);
          return result;
        }

        v34 = v33;
        v35 = v1;
        swift_unknownObjectRetain();
        v36 = [v34 groupName];
        sub_253CD0968();

        v37 = sub_253CD0508();

        if (v37)
        {
          v38 = *(v35 + 32);
          v22 = sub_253230794(v41, v37, v38);
          swift_unknownObjectRelease();
          return v22;
        }

        goto LABEL_18;
      }

      v30 = v29;
      swift_unknownObjectRetain();
      v31 = [v30 groupName];
      sub_253CD0968();

      v27 = sub_253CD0508();

      if (v27)
      {

        v28 = [v30 date];
        goto LABEL_12;
      }
    }

LABEL_18:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_253207BD8()
{
  sub_25320833C(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_253207C5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, id, uint64_t))
{
  v32 = a7;
  v33 = a5;
  v28[2] = a4;
  v11 = sub_253CCFEE8();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_getObjectType();
  sub_253CD0528();
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = v31;
  v16 = v32(a1, a2, v14, a6);
  if (v15)
  {

    swift_unknownObjectRelease();

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v16;
    v28[1] = 0;
    v31 = v13;
    v32 = v11;
    [objc_opt_self() defaultSaveInterval];
    v20 = v19;
    v21 = [objc_opt_self() sharedInstance];
    if (v33)
    {
      sub_253CD04A8();
    }

    _s16CoreDataDelegateCMa();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v22 + 24) = v18;
    *(v22 + 32) = v14;
    v23 = objc_allocWithZone(ObjCClassFromObject);
    v24 = v14;

    v25 = [v23 initWithDelegate:v22 saveInterval:v21 uptimeProvider:v20];

    v26 = [v24 startOfCurrentDay];
    v27 = v31;
    sub_253CCFEA8();

    sub_253CD0478();

    (*(v30 + 8))(v27, v32);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v25;
  }
}

id sub_253207F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, id, uint64_t))
{
  v12 = sub_253CD0968();
  v14 = v13;
  if (a5)
  {
    a5 = sub_253CD0968();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  swift_unknownObjectRetain();
  return sub_253207C5C(v12, v14, v17, a5, v16, a6, a8);
}

id sub_25320817C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v12 = sub_253CCFEE8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_253CD04A8();
  }

  _s16CoreDataDelegateCMa();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v18 = a2;

  v19 = [v17 initWithDelegate:v16 saveInterval:a5 uptimeProvider:a7];

  v20 = [v18 startOfCurrentDay];
  sub_253CCFEA8();

  sub_253CD0478();

  (*(v13 + 8))(v15, v12);
  return v19;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_253208370(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2532083CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

id sub_253208528()
{
  v2.receiver = v0;
  v2.super_class = _s22DefaultSwiftExtensionsCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_253208594(void *a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1;
  *v5 = [v6 workQueue];
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = sub_253CD08A8();

  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void sub_2532086C0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v31 = a7;
  v33 = sub_253CCFF58();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253205FF8(a5, v35);
  v16 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  v18 = &v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v18 = 0xD00000000000003BLL;
  *(v18 + 1) = 0x8000000253D4D890;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  v19 = v32;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_nodeId] = a1;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_endpointId] = a2;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_clusterId] = a3;
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_attributeId] = a4;
  sub_253205FF8(v35, &v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a6;
  v20 = a6;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = [v19 uuid];
  sub_253CCFF38();

  v25 = sub_253CCFF18();
  (*(v13 + 8))(v15, v33);
  v34.receiver = v17;
  v34.super_class = v16;
  v26 = objc_msgSendSuper2(&v34, sel_initWithHomeUUID_, v25);

  __swift_destroy_boxed_opaque_existential_0(v35);
  v27 = [v19 logEventSubmitter];
  if (v27)
  {
    v28 = v27;
    if (v31)
    {
      v29 = sub_253CCFE08();
    }

    else
    {
      v29 = 0;
    }

    [v28 submitLogEvent:v26 error:v29];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_253208B60(void *a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uuid];
  sub_253CCFF38();

  v8 = [a1 workQueue];
  Controller = type metadata accessor for AccessoryInfoFetchController(0);
  v10 = objc_allocWithZone(Controller);
  *&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher] = 0;
  *&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController] = 0;
  (*(v4 + 16))(&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageTargetUUID], v6, v3);
  *&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageReceiveQueue] = v8;
  v15.receiver = v10;
  v15.super_class = Controller;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  (*(v4 + 8))(v6, v3);
  *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo7HMDHomeP33_957716E028C4BEBA7E0C7DA065DD87AC22DefaultSwiftExtensions_accessoryInfoFetchController] = v11;
  v12 = _s22DefaultSwiftExtensionsCMa();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_253208D18(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a6;
  v29 = a5;
  v30 = sub_253CCFF58();
  v12 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MatterAccessoryInvokeCommandLogEvent();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventName];
  *v17 = 0xD00000000000003ALL;
  *(v17 + 1) = 0x8000000253D4D850;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_nodeId] = a1;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_endpointId] = a2;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_clusterId] = a3;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_commandId] = a4;
  *&v16[OBJC_IVAR____TtC19HomeKitDaemonLegacy36MatterAccessoryInvokeCommandLogEvent_source] = v29;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = [v7 uuid];
  sub_253CCFF38();

  v22 = sub_253CCFF18();
  (*(v12 + 8))(v14, v30);
  v31.receiver = v16;
  v31.super_class = v15;
  v23 = objc_msgSendSuper2(&v31, sel_initWithHomeUUID_, v22);

  v24 = [v7 logEventSubmitter];
  if (v24)
  {
    v25 = v24;
    if (v28)
    {
      v26 = sub_253CCFE08();
    }

    else
    {
      v26 = 0;
    }

    [v25 submitLogEvent:v23 error:v26];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_253208F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_253208FB8, a4, 0);
}

uint64_t sub_253208FB8()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253209030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_253209054, a4, 0);
}

uint64_t sub_253209054()
{
  sub_253209690(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_253209148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v8[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532091EC, 0, 0);
}

uint64_t sub_2532091EC()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_253CD0B58();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v0[8] = sub_25324690C(0, 0, v1, &unk_253D488D0, v6);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_253209354;

  return MEMORY[0x282200460]();
}

uint64_t sub_253209354()
{

  return MEMORY[0x2822009F8](sub_25320946C, 0, 0);
}

uint64_t sub_25320946C()
{
  (*(v0 + 40))();

  v1 = *(v0 + 8);

  return v1();
}

void sub_253209690(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_253CD0E98();
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    sub_25320C584();
    sub_253CD0C28();
    v2 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
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

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_25320C5EC(v2);
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_253CD0E98();
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        sub_25320C584();
        sub_253CD0C28();
        a1 = v35;
        v17 = v36;
        v18 = v37;
        v19 = v38;
        v20 = v39;
      }

      else
      {
        v21 = -1 << *(a1 + 32);
        v17 = a1 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(a1 + 56);

        v19 = 0;
      }

      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v24 = v19;
        v25 = v20;
        v26 = v19;
        if (!v20)
        {
          break;
        }

LABEL_29:
        v27 = (v25 - 1) & v25;
        v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
LABEL_35:
          sub_25320C5EC(a1);
          return;
        }

        while (1)
        {
          sub_253209A1C(v28);

          v19 = v26;
          v20 = v27;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_253CD0F08())
          {
            sub_253200644(0, &qword_281530EA0, off_279719FE0);
            swift_dynamicCast();
            v28 = v29;
            v26 = v19;
            v27 = v20;
            if (v29)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_37;
        }

        if (v26 >= ((v18 + 64) >> 6))
        {
          goto LABEL_35;
        }

        v25 = *(v17 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      sub_25320A3BC(v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_253CD0F08();
      if (v16)
      {
        v29 = v16;
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        swift_dynamicCast();
        v15 = v35;
        v13 = v6;
        v14 = v7;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_253209A1C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_253CD07E8();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v77 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v78 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - v17;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_253217DFC(a1), v20 = v19, , (v20 & 1) != 0))
  {
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v21 = a1;
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C88();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v22, v23, "Ignoring request to monitor reachability for %@ as it is already tracked", v24, 0xCu);
      sub_253206054(v25, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v25, -1, -1);
      MEMORY[0x259C040E0](v24, -1, -1);
    }

    (*(v82 + 8))(v11, v83);
  }

  else
  {
    v79 = [a1 home];
    if (v79)
    {
      v27 = v5;
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v28 = a1;
      v29 = sub_253CD07C8();
      v30 = sub_253CD0C78();

      v31 = os_log_type_enabled(v29, v30);
      v80 = v28;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v85[0] = v77;
        *v32 = 136315138;
        v33 = [v28 uuid];
        sub_253CCFF38();

        sub_25320C52C();
        v34 = sub_253CD10E8();
        v36 = v35;
        (*(v27 + 8))(v7, v4);
        v37 = sub_253277BA8(v34, v36, v85);
        v28 = v80;

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2531F8000, v29, v30, "Starting monitoring of %s", v32, 0xCu);
        v38 = v77;
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x259C040E0](v38, -1, -1);
        MEMORY[0x259C040E0](v32, -1, -1);
      }

      v77 = *(v82 + 8);
      (v77)(v18, v83);
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsRemotelyReachableNotification" object:v28];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v28];
      v39 = [v28 home];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 isCurrentDevicePrimaryResident];
        v42 = &selRef_isReachable;
        if (!v41)
        {
          v42 = &selRef_isRemotelyReachable;
        }

        v43 = [v28 *v42];
      }

      else
      {
        v43 = 0;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_25327AB30(v43, v28, isUniquelyReferenced_nonNull_native);
      v51 = v84;
      *(v2 + 112) = v84;
      swift_endAccess();
      v52 = 1 << *(v51 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v51 + 64);
      v55 = (v52 + 63) >> 6;
      swift_retain_n();
      v56 = 0;
      while (v54)
      {
LABEL_27:
        v58 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v59 = *(*(v51 + 48) + ((v56 << 9) | (8 * v58)));
        sub_253200644(0, &qword_281530EA0, off_279719FE0);
        v60 = v59;
        if ((sub_253CD0D88() & 1) != 0 || (v61 = [v60 home]) == 0)
        {

          v28 = v80;
        }

        else
        {
          v62 = v61;
          sub_253200644(0, &unk_281530D20, off_27971A118);
          v63 = v79;
          v64 = sub_253CD0D88();

          v28 = v80;
          if (v64)
          {

            return;
          }
        }
      }

      while (1)
      {
        v57 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          return;
        }

        if (v57 >= v55)
        {
          break;
        }

        v54 = *(v51 + 64 + 8 * v57);
        ++v56;
        if (v54)
        {
          v56 = v57;
          goto LABEL_27;
        }
      }

      v65 = v78;
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v66 = v28;
      v67 = v79;
      v68 = v79;
      v69 = sub_253CD07C8();
      v70 = sub_253CD0C78();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = v28;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412546;
        *(v72 + 4) = v68;
        *(v72 + 12) = 2112;
        *(v72 + 14) = v66;
        *v73 = v67;
        v73[1] = v71;
        v74 = v66;
        v75 = v68;
        _os_log_impl(&dword_2531F8000, v69, v70, "Monitoring resident changes in %@ due to monitoring %@", v72, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AC8, &qword_253D48890);
        swift_arrayDestroy();
        MEMORY[0x259C040E0](v73, -1, -1);
        MEMORY[0x259C040E0](v72, -1, -1);
      }

      (v77)(v65, v83);
      v76 = *(v2 + 136);
      [v76 addObserver:v2 selector:sel_handlePrimaryResidentDeviceManagerUpdatePrimaryResidentWithNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v68, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v44 = a1;
      v45 = sub_253CD07C8();
      v46 = sub_253CD0C98();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v44;
        *v48 = v44;
        v49 = v44;
        _os_log_impl(&dword_2531F8000, v45, v46, "Accessory %@ to start monitoring is missing a home", v47, 0xCu);
        sub_253206054(v48, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v48, -1, -1);
        MEMORY[0x259C040E0](v47, -1, -1);
      }

      (*(v82 + 8))(v14, v83);
    }
  }
}

void sub_25320A3BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_253217DFC(a1), v18 = v17, , (v18 & 1) != 0))
  {
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v19 = a1;
    v20 = sub_253CD07C8();
    v21 = sub_253CD0C88();

    v22 = os_log_type_enabled(v20, v21);
    v75 = ObjectType;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v20, v21, "Stopping monitoring of %@", v23, 0xCu);
      sub_253206054(v24, &qword_27F5A2AC8, &qword_253D48890);
      v26 = v24;
      ObjectType = v75;
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v23, -1, -1);
    }

    v73 = *(v6 + 8);
    v74 = v6 + 8;
    v73(v16, v5);
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsRemotelyReachableNotification" object:v19];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v19];
    swift_beginAccess();
    sub_253279DFC(v19);
    swift_endAccess();
    v27 = [v19 home];
    if (v27)
    {
      v76 = v27;
      v72 = v5;
      v28 = *(v2 + 112);
      v31 = *(v28 + 64);
      v30 = v28 + 64;
      v29 = v31;
      v32 = 1 << *(*(v2 + 112) + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & v29;
      v35 = (v32 + 63) >> 6;
      v77 = *(v2 + 112);
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
LABEL_19:
        v48 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v49 = *(*(v77 + 48) + ((v36 << 9) | (8 * v48)));
        v50 = [v49 home];
        if (v50)
        {
          v51 = v50;
          sub_253200644(0, &unk_281530D20, off_27971A118);
          v52 = v76;
          v53 = sub_253CD0D88();

          if (v53)
          {

            return;
          }
        }

        else
        {
        }
      }

      v46 = v75;
      while (1)
      {
        v47 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return;
        }

        if (v47 >= v35)
        {
          break;
        }

        v34 = *(v30 + 8 * v47);
        ++v36;
        if (v34)
        {
          v36 = v47;
          goto LABEL_19;
        }
      }

      v54 = v78;
      sub_253211D58(v46, &off_2864FA7A0);
      v55 = v76;
      v56 = v76;
      v57 = sub_253CD07C8();
      v58 = sub_253CD0C78();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        *(v59 + 4) = v56;
        *v60 = v55;
        v61 = v56;
        _os_log_impl(&dword_2531F8000, v57, v58, "No longer monitoring resident changes in %@", v59, 0xCu);
        sub_253206054(v60, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v60, -1, -1);
        MEMORY[0x259C040E0](v59, -1, -1);
      }

      v73(v54, v72);
      v62 = *(v2 + 136);
      [v62 removeObserver:v2 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v56, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v63 = v19;
      v64 = sub_253CD07C8();
      v65 = sub_253CD0C98();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v5;
        v68 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v68 = v19;
        v69 = v63;
        _os_log_impl(&dword_2531F8000, v64, v65, "Accessory %@ to stop monitoring is missing a home", v66, 0xCu);
        sub_253206054(v68, &qword_27F5A2AC8, &qword_253D48890);
        v70 = v68;
        v5 = v67;
        MEMORY[0x259C040E0](v70, -1, -1);
        MEMORY[0x259C040E0](v66, -1, -1);
      }

      v73(v12, v5);
    }
  }

  else
  {
    v37 = v6;
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v38 = a1;
    v39 = sub_253CD07C8();
    v40 = sub_253CD0C98();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v5;
      v43 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v43 = v38;
      v44 = v38;
      _os_log_impl(&dword_2531F8000, v39, v40, "Ignoring request to stop monitoring reachability for %@ as it was not being tracked", v41, 0xCu);
      sub_253206054(v43, &qword_27F5A2AC8, &qword_253D48890);
      v45 = v43;
      v5 = v42;
      MEMORY[0x259C040E0](v45, -1, -1);
      MEMORY[0x259C040E0](v41, -1, -1);
    }

    (*(v37 + 8))(v9, v5);
  }
}

uint64_t sub_25320ABA4(void *a1)
{
  v2 = v1;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v40 = sub_253CD07E8();
  v42 = *(v40 - 8);
  v4 = MEMORY[0x28223BE20](v40);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v6;
  v7 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v8 = *(v1 + 112);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (sub_25320B0BC(v16))
    {
      v17 = v16;
      MEMORY[0x259C00990]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_253CD0A78();
      }

      sub_253CD0A88();

      v7 = v44;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_24:
      v30 = sub_253CD0ED8();
      v18 = v41;
      if (v30)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v12 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_24;
  }

  v18 = v41;
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_253211D58(ObjectType, &off_2864FA7A0);

    v19 = v18;
    v20 = sub_253CD07C8();
    v21 = sub_253CD0C78();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 134218242;
      v24 = v42;
      if (v12)
      {
        v25 = sub_253CD0ED8();
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v40;
      *(v22 + 4) = v25;

      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v20, v21, "Notifying delegate of changes to %ld accessories' reachability for home %@", v22, 0x16u);
      sub_253206054(v23, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v23, -1, -1);
      MEMORY[0x259C040E0](v22, -1, -1);
    }

    else
    {

      v26 = v40;
      v24 = v42;
    }

    (*(v24 + 8))(v43, v26);
    if (!*(v2 + 120))
    {
    }

    v28 = off_2864FB740[0];
    _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
    swift_unknownObjectRetain();
    v28(v2, v7);

    return swift_unknownObjectRelease();
  }

LABEL_25:

  v31 = v39;
  sub_253211D58(ObjectType, &off_2864FA7A0);
  v32 = v18;
  v33 = sub_253CD07C8();
  v34 = sub_253CD0C88();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_2531F8000, v33, v34, "No updated accessory reachability for home %@", v35, 0xCu);
    sub_253206054(v36, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v36, -1, -1);
    MEMORY[0x259C040E0](v35, -1, -1);
  }

  return (*(v42 + 8))(v31, v40);
}

uint64_t sub_25320B0BC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_253CD07E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  swift_beginAccess();
  v12 = *(v1 + 112);
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v13 = sub_253217DFC(a1);
  if ((v14 & 1) == 0)
  {

LABEL_9:
    sub_253211D58(ObjectType, &off_2864FA7A0);
    v21 = a1;
    v22 = sub_253CD07C8();
    v23 = sub_253CD0C78();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v22, v23, "Ignoring request to calculate reachability for %@ as it is not tracked", v24, 0xCu);
      sub_253206054(v25, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v25, -1, -1);
      MEMORY[0x259C040E0](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  v15 = *(*(v12 + 56) + v13);

  result = [a1 home];
  if (!result)
  {
    v20 = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

  v17 = result;
  v18 = [result isCurrentDevicePrimaryResident];
  v19 = &selRef_isReachable;
  if (!v18)
  {
    v19 = &selRef_isRemotelyReachable;
  }

  v20 = [a1 *v19];

  if (v15 == v20)
  {
    return 0;
  }

LABEL_15:
  sub_253211D58(ObjectType, &off_2864FA7A0);
  v27 = a1;
  v28 = sub_253CD07C8();
  v29 = sub_253CD0C88();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 67109378;
    *(v30 + 4) = v20;
    *(v30 + 8) = 2112;
    *(v30 + 10) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_2531F8000, v28, v29, "Widget reachability changed to %{BOOL}d for %@", v30, 0x12u);
    sub_253206054(v31, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v31, -1, -1);
    MEMORY[0x259C040E0](v30, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_25327AB30(v20, v27, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v35;
  swift_endAccess();
  return 1;
}

uint64_t sub_25320B4BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - v8;
  v10 = sub_253CCFD48();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v27[1] = sub_253CD0968();
  v27[2] = v12;
  sub_253CD0F58();
  if (!*(v11 + 16) || (v13 = sub_253217D40(v28), (v14 & 1) == 0))
  {

    sub_253205FA4(v28);
LABEL_9:
    v29 = 0u;
    v30 = 0u;
    return sub_253206054(&v29, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253205FF8(*(v11 + 56) + 32 * v13, &v29);
  sub_253205FA4(v28);

  if (!*(&v30 + 1))
  {
    return sub_253206054(&v29, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253200644(0, &unk_27F5A3380, off_27971A218);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v28[0];
    v17 = [v28[0] home];
    if (v17)
    {
      v18 = v17;
      v19 = sub_253CD0B58();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v1;
      v20[5] = v18;

      sub_25324690C(0, 0, v9, &unk_253D488B0, v20);
    }

    else
    {
      sub_253211D58(ObjectType, &off_2864FA7A0);
      v21 = v16;
      v22 = sub_253CD07C8();
      v23 = sub_253CD0C98();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_2531F8000, v22, v23, "Resident %@ is missing a home", v24, 0xCu);
        sub_253206054(v25, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v25, -1, -1);
        MEMORY[0x259C040E0](v24, -1, -1);
      }

      else
      {
        v26 = v22;
        v22 = v21;
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_25320B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25320B8B4, a4, 0);
}

uint64_t sub_25320B8B4()
{
  sub_25320ABA4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25320B92C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v67 = sub_253CCFD58();
  v5 = *(v67 - 8);
  v6 = MEMORY[0x28223BE20](v67);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v63 - v12;
  v13 = sub_253CD07E8();
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v63 - v21;
  sub_253CCFD38();
  if (v71[3])
  {
    sub_253200644(0, &qword_281530EA0, off_279719FE0);
    if (swift_dynamicCast())
    {
      v23 = v70;
      v24 = [v70 home];
      if (v24)
      {
        v25 = v24;
        v26 = sub_253CD0B58();
        (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
        v27 = swift_allocObject();
        v27[2] = 0;
        v27[3] = 0;
        v27[4] = v2;
        v27[5] = v25;

        sub_25324690C(0, 0, v22, &unk_253D488A0, v27);
      }

      else
      {
        v47 = v19;
        sub_253211D58(ObjectType, &off_2864FA7A0);
        v48 = v5;
        v49 = v66;
        v50 = v67;
        (*(v5 + 16))(v66, a1, v67);
        v51 = v23;
        v52 = sub_253CD07C8();
        v53 = sub_253CD0C98();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v71[0] = v63;
          *v54 = 138412546;
          *(v54 + 4) = v51;
          *v55 = v51;
          *(v54 + 12) = 2080;
          v65 = v51;
          v56 = sub_253CCFD28();
          v57 = sub_253CD0968();
          v64 = v47;
          v58 = v57;
          v60 = v59;

          (*(v48 + 8))(v49, v50);
          v61 = sub_253277BA8(v58, v60, v71);

          *(v54 + 14) = v61;
          _os_log_impl(&dword_2531F8000, v52, v53, "Accessory %@ is missing a home for notification %s", v54, 0x16u);
          sub_253206054(v55, &qword_27F5A2AC8, &qword_253D48890);
          MEMORY[0x259C040E0](v55, -1, -1);
          v62 = v63;
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x259C040E0](v62, -1, -1);
          MEMORY[0x259C040E0](v54, -1, -1);

          return (*(v69 + 8))(v64, v68);
        }

        else
        {

          (*(v48 + 8))(v49, v50);
          return (*(v69 + 8))(v47, v68);
        }
      }
    }
  }

  else
  {
    sub_253206054(v71, &qword_27F5A2AB0, &unk_253D4A560);
  }

  sub_253211D58(ObjectType, &off_2864FA7A0);
  v29 = *(v5 + 16);
  v30 = v67;
  v29(v11, a1, v67);
  v29(v8, a1, v30);
  v31 = sub_253CD07C8();
  v32 = sub_253CD0C98();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v66 = v17;
    v34 = v33;
    v65 = swift_slowAlloc();
    v70 = v65;
    *v34 = 136315394;
    LODWORD(v64) = v32;
    v35 = sub_253CCFD28();
    v36 = sub_253CD0968();
    v38 = v37;

    v39 = *(v5 + 8);
    v39(v11, v30);
    v40 = sub_253277BA8(v36, v38, &v70);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    sub_253CCFD38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
    v41 = sub_253CD0978();
    v43 = v42;
    v39(v8, v30);
    v44 = sub_253277BA8(v41, v43, &v70);

    *(v34 + 14) = v44;
    _os_log_impl(&dword_2531F8000, v31, v64, "%s is missing an accessory as its object: %s", v34, 0x16u);
    v45 = v65;
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v45, -1, -1);
    MEMORY[0x259C040E0](v34, -1, -1);

    return (*(v69 + 8))(v66, v68);
  }

  else
  {

    v46 = *(v5 + 8);
    v46(v8, v30);
    v46(v11, v30);
    return (*(v69 + 8))(v17, v68);
  }
}

uint64_t sub_25320C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_25320C7AC, a4, 0);
}

uint64_t sub_25320C0B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_253CCFD58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFD18();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25320C1DC()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25320C270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C7A8;

  return sub_25320C078(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25320C378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_25320B894(a1, v4, v5, v7, v6);
}

uint64_t sub_25320C438()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_25320C52C()
{
  result = qword_281531980;
  if (!qword_281531980)
  {
    sub_253CCFF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281531980);
  }

  return result;
}

unint64_t sub_25320C584()
{
  result = qword_281530E98;
  if (!qword_281530E98)
  {
    sub_253200644(255, &qword_281530EA0, off_279719FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530E98);
  }

  return result;
}

uint64_t sub_25320C604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25320C7A8;

  return sub_253209148(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25320C6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25320C7A8;

  return sub_253209030(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25320C7B4(uint64_t a1)
{
  result = sub_253CD0DD8();
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

char *sub_25320C860()
{

  v1 = *(*v0 + 104);
  v2 = sub_253CD0DD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25320C8FC()
{
  sub_25320C860();

  return MEMORY[0x282200960](v0);
}

uint64_t HMDRemoteConnectivityMonitor.hasConnectivity.getter()
{
  v1 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  return v2;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v18.receiver = v9;
  v18.super_class = v4;
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v16;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimer:delegate:workQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v7 = &v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v7 = 0;
  v7[4] = 0;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = a2;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a3;
  *&v4[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a4;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  v8 = a2;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v12 = *&v10[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] setDelegateQueue_];

  swift_unknownObjectRelease();
  return v13;
}

char *HMDRemoteConnectivityMonitor.__allocating_init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v12 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v14 = &v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v14 = 0;
  v14[4] = 0;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v11;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v22.receiver = v13;
  v22.super_class = v12;
  v15 = v11;
  swift_unknownObjectRetain();
  v16 = a3;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  v18 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v19 = *&v17[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v20 = v17;
  [v19 setDelegate_];
  [*&v17[v18] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v20;
}

char *HMDRemoteConnectivityMonitor.init(failedMessagesThreshold:connectivityLostTimerInterval:delegate:workQueue:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];
  v8 = type metadata accessor for HMDRemoteConnectivityMonitor();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] = 0;
  v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] = 0;
  v10 = &v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity];
  *v10 = 0;
  v10[4] = 0;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold] = a1;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer] = v7;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate] = a2;
  *&v9[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue] = a3;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = v7;
  swift_unknownObjectRetain();
  v12 = a3;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer;
  v15 = *&v13[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer];
  v16 = v13;
  [v15 setDelegate_];
  [*&v13[v14] setDelegateQueue_];

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.underlyingConnectionChanged(connected:)(Swift::Bool connected)
{
  v3 = sub_253CD0888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_253CD08A8();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = connected;
    sub_25320D7F8();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageSucceeded()()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_253CD08A8();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer);
    if ([v7 isRunning])
    {
      [v7 suspend];
    }

    *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages) = 0;
    *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 0;
    sub_25320D7F8();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.sendMessageFailed()()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_253CD08A8();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages);
  if ((v7 & 0x8000000000000000) == 0 && v7 >= *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold))
  {
    goto LABEL_6;
  }

  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages) = v9;
  sub_25320D7F8();
LABEL_6:
  v10 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimer);
  if (([v10 isRunning] & 1) == 0)
  {
    [v10 resume];
  }
}

Swift::Void __swiftcall HMDRemoteConnectivityMonitor.timerDidFire(_:)(HMFTimer *a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_253CD08A8();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_25320DC70();
    if (sub_253CD0D88())
    {
      *(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired) = 1;
      sub_25320D7F8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25320D7F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_253CD07E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_253CD0888();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue];
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v12 = v11;
  LOBYTE(v11) = sub_253CD08A8();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection;
    if (v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection] == 1)
    {
      v14 = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages];
      v15 = 1;
      if ((v14 & 0x8000000000000000) == 0 && v14 >= *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessagesThreshold])
      {
        v15 = v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired] ^ 1;
      }
    }

    else
    {
      v15 = 0;
    }

    sub_253211D58(ObjectType, &off_2864FA938);
    v16 = v1;
    v17 = sub_253CD07C8();
    v18 = sub_253CD0C88();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109888;
      *(v19 + 4) = v15 & 1;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v1[v13];
      *(v19 + 14) = 2048;
      *(v19 + 16) = *(v16 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_failedMessages);
      *(v19 + 24) = 1024;
      *(v19 + 26) = *(&v16->isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_connectivityLostTimerFired);

      _os_log_impl(&dword_2531F8000, v17, v18, "Has connectivity: %{BOOL}d (has underlying connection: %{BOOL}d, failed messages, %ld, connectivity lost timer fired: %{BOOL}d)", v19, 0x1Eu);
      MEMORY[0x259C040E0](v19, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    (*(v4 + 8))(v6, v3);
    v20 = (v16 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity);
    os_unfair_lock_lock((v16 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity));
    if ((v15 & 1) == LOBYTE(v20[1]._os_unfair_lock_opaque))
    {
      os_unfair_lock_unlock(v20);
    }

    else
    {
      LOBYTE(v20[1]._os_unfair_lock_opaque) = v15 & 1;
      os_unfair_lock_unlock(v20);
      v21 = *(&v16->isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_delegate);
      if (v21)
      {
        [v21 hasConnectivityDidChangeFor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id HMDRemoteConnectivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMDRemoteConnectivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDRemoteConnectivityMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25320DC70()
{
  result = qword_281530D00;
  if (!qword_281530D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D00);
  }

  return result;
}

id sub_25320DD74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_25320DEA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_25320DFB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(v8, v9, v10);

  return v11;
}

id HMDHomeManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDHomeManagerDataSource()
{
  result = qword_27F5A2E08;
  if (!qword_27F5A2E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A2E08);
  }

  return result;
}

id sub_25320E6BC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25320E70C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_25320E74C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_25320E790(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_25320E8F4()
{
  v201 = MEMORY[0x277D84F98];
  v1 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_readWriteEvent);
  sub_253278690([v1 thSensorSSIDSame], 0xD000000000000010, 0x8000000253D4DEE0);
  sub_253278690([v1 thSensorIPv4AddressSameAsCachedIP], 0xD000000000000021, 0x8000000253D4DF00);
  sub_253278690([v1 thSensorIPv4NetworkSignatureSame], 0xD000000000000020, 0x8000000253D4DF30);
  sub_253278690([v1 thSensorIPv6AddressSameAsCachedIP], 0xD000000000000021, 0x8000000253D4DF60);
  sub_253278690([v1 thSensorIPv6NetworkSignatureSame], 0xD000000000000020, 0x8000000253D4DF90);
  sub_253278690([v1 thSensorReachableViaIDS], 0xD000000000000017, 0x8000000253D4DFC0);
  sub_253278690([v1 thSensorReachable], 0xD000000000000011, 0x8000000253D4DFE0);
  sub_253278690([v1 thSensorPrimaryInterfaceType], 0xD00000000000001ALL, 0x8000000253D4E000);
  sub_253278690([v1 thSensorPrimaryInterfaceName], 0xD00000000000001ALL, 0x8000000253D4E020);
  sub_253278690([v1 thSensorCachedSourceIPType], 0xD000000000000018, 0x8000000253D4E040);
  sub_253278690([v1 thSensorDurationSecondsSinceLastStatusKitAssertion], 0xD00000000000002ALL, 0x8000000253D4E060);
  v2 = sub_253CD0968();
  v4 = v3;
  [v1 isCurrentDevicePrimaryResident];
  v5 = sub_253CD0AA8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v5, v2, v4, isUniquelyReferenced_nonNull_native);

  v7 = sub_253CD0968();
  v9 = v8;
  [v1 isCurrentDeviceAvailableResident];
  v10 = sub_253CD0AA8();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v10, v7, v9, v11);

  v12 = sub_253CD0968();
  v14 = v13;
  [v1 isPrimaryResidentReachable];
  v15 = sub_253CD0AA8();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v15, v12, v14, v16);

  v17 = sub_253CD0968();
  v19 = v18;
  [v1 isLocal];
  v20 = sub_253CD0AA8();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v20, v17, v19, v21);

  v22 = sub_253CD0968();
  v24 = v23;
  [v1 isResidentAvailable];
  v25 = sub_253CD0AA8();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v25, v22, v24, v26);

  v27 = v201;
  if ([v1 linkLayerType] != 4 && objc_msgSend(v1, sel_linkType) == 1)
  {
    v28 = [v1 expectedTransport];
    v29 = sub_253CD0968();
    v31 = v30;

    if (v29 != sub_253CD0968() || v31 != v32)
    {
      sub_253CD1118();
    }
  }

  v33 = sub_253CD0968();
  v35 = v34;
  v36 = sub_253CD0AA8();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v36, v33, v35, v37);

  v38 = sub_253CD0968();
  v40 = v39;
  [v1 triggerSource];
  v41 = sub_253CD0DE8();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v41, v38, v40, v42);

  v43 = sub_253CD0968();
  v45 = v44;
  [v1 timeIntervalSinceFirstFailure];
  v46 = sub_253CD0BE8();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v46, v43, v45, v47);

  v48 = sub_253CD0968();
  v50 = v49;
  [v1 noSessionDuration];
  v51 = sub_253CD0BE8();
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v51, v48, v50, v52);

  v53 = sub_253CD0968();
  v55 = v54;
  [v1 localDurationInMilliseconds];
  v56 = sub_253CD0C38();
  v57 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v56, v53, v55, v57);

  v58 = sub_253CD0968();
  v60 = v59;
  [v1 residentFirstDurationInMilliseconds];
  v61 = sub_253CD0C38();
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v61, v58, v60, v62);

  v63 = sub_253CD0968();
  v65 = v64;
  [v1 durationMilliseconds];
  v66 = sub_253CD0C38();
  v67 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v66, v63, v65, v67);

  v68 = sub_253CD0968();
  v70 = v69;
  [v1 hasSession];
  v71 = sub_253CD0AA8();
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v71, v68, v70, v72);

  v73 = sub_253CD0968();
  v75 = v74;
  [v1 isReachable];
  v76 = sub_253CD0AA8();
  v77 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v76, v73, v75, v77);

  v78 = sub_253CD0968();
  v80 = v79;
  [v1 recentSessionRetries];
  v81 = sub_253CD0C38();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v81, v78, v80, v82);

  v83 = sub_253CD0968();
  v85 = v84;
  [v1 topSessionFailureErrorCode];
  v86 = sub_253CD0C38();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v86, v83, v85, v87);

  v88 = sub_253CD0968();
  sub_253278690([v1 topSessionFailureErrorDomain], v88, v89);
  if ([v1 residentFirstError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    sub_253200644(0, &qword_27F5A2E98, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v90 = sub_253CD0968();
      v92 = v91;
      result = [v200 domain];
      if (!result)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v94 = result;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v94, v90, v92, v95);

      v96 = sub_253CD0968();
      v98 = v97;
      [v200 code];
      v99 = sub_253CD0C38();
      v100 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v99, v96, v98, v100);
    }
  }

  if ([v1 residentFirstUnderlyingError])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2E90, &qword_253D4A320);
    sub_253200644(0, &qword_27F5A2E98, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v101 = sub_253CD0968();
      v103 = v102;
      result = [v200 domain];
      if (!result)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      v104 = result;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v104, v101, v103, v105);

      v106 = sub_253CD0968();
      v108 = v107;
      [v200 code];
      v109 = sub_253CD0C38();
      v110 = swift_isUniquelyReferenced_nonNull_native();
      sub_25327AC9C(v109, v106, v108, v110);
    }
  }

  v111 = sub_253CD0968();
  v113 = v112;
  [v1 isNetworkAvailable];
  v114 = sub_253CD0AA8();
  v115 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v114, v111, v113, v115);

  v116 = sub_253CD0968();
  v118 = v117;
  [v1 hasSucceededOnce];
  v119 = sub_253CD0AA8();
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v119, v116, v118, v120);

  v121 = sub_253CD0968();
  v123 = v122;
  [v1 hasFailedOnce];
  v124 = sub_253CD0AA8();
  v125 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v124, v121, v123, v125);

  v126 = sub_253CD0968();
  v128 = v127;
  [v1 isSSIDSameAsLastSuccessRequest];
  v129 = sub_253CD0AA8();
  v130 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v129, v126, v128, v130);

  v131 = sub_253CD0968();
  v133 = v132;
  [v1 isBSSIDSameAsLastSuccessRequest];
  v134 = sub_253CD0AA8();
  v135 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v134, v131, v133, v135);

  v136 = sub_253CD0968();
  v138 = v137;
  [v1 isPrimaryResidentAvailable];
  v139 = sub_253CD0AA8();
  v140 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v139, v136, v138, v140);

  v141 = sub_253CD0968();
  sub_253278690([v1 wifiAccessPointOUI], v141, v142);
  if (![v1 isCurrentDevicePrimaryResident])
  {
    goto LABEL_23;
  }

  v143 = sub_253CD0968();
  v145 = v144;
  result = [v1 timeIntervalSinceCurrentDeviceAsPrimary];
  if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v146 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v146 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v147 = sub_253CD0C38();
  v148 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v147, v143, v145, v148);

  if (isHomePod())
  {
    v149 = sub_253CD0968();
    v151 = v150;
    [v1 mediaSystemConfiguration];
    v152 = sub_253CD0DE8();
    v153 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v152, v149, v151, v153);
  }

LABEL_23:
  if ([v1 hasEnabledResidents])
  {
    v154 = sub_253CD0968();
    v156 = v155;
    result = [v1 timeIntervalSincePrimaryChanged];
    if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v157 > -9.22337204e18)
      {
        if (v157 < 9.22337204e18)
        {
          v158 = sub_253CD0C38();
          v159 = swift_isUniquelyReferenced_nonNull_native();
          sub_25327AC9C(v158, v154, v156, v159);

          v160 = sub_253CD0968();
          v162 = v161;
          result = [v1 timeIntervalSincePrimaryLost];
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v163 > -9.22337204e18)
            {
              if (v163 < 9.22337204e18)
              {
                v164 = sub_253CD0C38();
                v165 = swift_isUniquelyReferenced_nonNull_native();
                sub_25327AC9C(v164, v160, v162, v165);

                v166 = sub_253CD0968();
                v168 = v167;
                [v1 percentageOfLocalReachableResidents];
                v169 = sub_253CD0C38();
                v170 = swift_isUniquelyReferenced_nonNull_native();
                sub_25327AC9C(v169, v166, v168, v170);

                goto LABEL_31;
              }

              goto LABEL_44;
            }

LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_31:
  if ([v1 isCurrentDeviceAvailableResident])
  {
    v171 = sub_253CD0968();
    v173 = v172;
    [v1 isThreadNetworkUpInHome];
    v174 = sub_253CD0AA8();
    v175 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v174, v171, v173, v175);

    v176 = sub_253CD0968();
    v178 = v177;
    [v1 threadPreferredNetworkExistsInHome];
    v179 = sub_253CD0AA8();
    v180 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v179, v176, v178, v180);
  }

  v181 = sub_253CD0968();
  v183 = v182;
  [v1 threadNetworkConnectionState];
  v184 = sub_253CD0C38();
  v185 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v184, v181, v183, v185);

  v186 = sub_253CD0968();
  v188 = v187;
  [v1 threadNetworkNodeType];
  v189 = sub_253CD0C38();
  v190 = swift_isUniquelyReferenced_nonNull_native();
  sub_25327AC9C(v189, v186, v188, v190);

  if ([v1 isIPAccessoryServer])
  {
    v191 = sub_253CD0968();
    sub_253278690([v1 ipSocketIPType], v191, v192);
    v193 = sub_253CD0968();
    sub_253278690([v1 ipSocketUpdateType], v193, v194);
    v195 = sub_253CD0968();
    v197 = v196;
    [v1 isSeenOnBonjour];
    v198 = sub_253CD0AA8();
    v199 = swift_isUniquelyReferenced_nonNull_native();
    sub_25327AC9C(v198, v195, v197, v199);

    return v201;
  }

  return v27;
}

id sub_25320FECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25320FFA0()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A2EA0);
  __swift_project_value_buffer(v0, qword_27F5A2EA0);
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_2532100B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2F60, &unk_253D48AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_253D48A50;
  *(v0 + 32) = sub_253200644(0, &qword_27F5A2F68, off_27971A050);
  result = sub_253200644(0, &unk_27F5A2F70, off_27971A058);
  *(v0 + 40) = result;
  qword_27F5B7850 = v0;
  return result;
}

uint64_t sub_2532102CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_253210310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_startMutex;
  *v6 = 0;
  *(v6 + 4) = 0;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_logEventDispatcher) = a1;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_countersManager) = a2;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dailyScheduler) = a3;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_dateProvider) = a4;
  *(v5 + OBJC_IVAR___HMDCameraRecordingEventObserver_currentHomeDataSource) = a5;
  v8.super_class = HMDCameraRecordingEventObserver;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_253210420(_BYTE *a1, void *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_27F5A2418 != -1)
    {
      swift_once();
    }

    v4 = sub_253CD07E8();
    __swift_project_value_buffer(v4, qword_27F5A2EA0);
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2531F8000, v5, v6, "Starting", v7, 2u);
      MEMORY[0x259C040E0](v7, -1, -1);
    }

    v8 = [a2 logEventDispatcher];
    if (qword_27F5A2420 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2F58, &qword_253D48A98);
    v9 = sub_253CD0A38();
    [v8 addObserver:a2 forEventClasses:v9];
    swift_unknownObjectRelease();

    v10 = [a2 dailyScheduler];
    [v10 registerDailyTaskRunner_];

    *a1 = 1;
  }
}

_BYTE *sub_253210674(_BYTE *result, void *a2)
{
  if (*result == 1)
  {
    v3 = result;
    if (qword_27F5A2418 != -1)
    {
      swift_once();
    }

    v4 = sub_253CD07E8();
    __swift_project_value_buffer(v4, qword_27F5A2EA0);
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2531F8000, v5, v6, "Stopping", v7, 2u);
      MEMORY[0x259C040E0](v7, -1, -1);
    }

    [objc_msgSend(a2 logEventDispatcher)];
    result = swift_unknownObjectRelease();
    *v3 = 0;
  }

  return result;
}

void sub_253210880(void *a1)
{
  v2 = v1;
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 dateProvider];
  v9 = [v8 startOfCurrentDay];

  sub_253CCFEA8();
  v10 = [v2 countersManager];
  v11 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v12 = sub_253CD0938();
  v13 = sub_253CCFE98();
  v14 = [v11 initWithGroupName:v12 date:v13];

  v15 = [v10 objectForKeyedSubscript_];
  if ([a1 operationType] == 5)
  {
    v16 = sub_253CD0938();
    [v15 incrementEventCounterForEventName_];

    v17 = sub_253CD0938();
    [v15 incrementEventCounterForEventName:v17 withValue:{objc_msgSend(a1, sel_totalClipDurationMilliseconds)}];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

id sub_253210B68(uint64_t a1)
{
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = [objc_msgSend(v1 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  sub_253CCFF38();

  (*(v3 + 32))(v8, v6, v2);
  v10 = sub_253210CE0(v8);
  (*(v3 + 8))(v8, v2);
  return v10;
}

id sub_253210CE0(uint64_t a1)
{
  v3 = sub_253CCFF58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = [objc_msgSend(v1 currentHomeDataSource)];
  swift_unknownObjectRelease();
  if (v10)
  {
    sub_253CCFF38();

    if (sub_253CCFF28())
    {
      v11 = [v1 countersManager];
      v12 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
      v13 = sub_253CD0938();
      v14 = sub_253CCFE98();
      v15 = [v12 initWithGroupName:v13 date:v14];

      v16 = [v11 objectForKeyedSubscript_];
      v17 = sub_253CD0938();
      v29 = [v16 fetchEventCounterForEventName_];

      v18 = sub_253CD0938();
      v19 = [v16 fetchEventCounterForEventName_];

      v20 = sub_253CD0938();
      v21 = [v16 fetchEventCounterForEventName_];

      (*(v4 + 16))(v7, a1, v3);
      v22 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v29;
      *&v23[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v19;
      *&v23[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v21;
      v23[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 0;
      v24 = sub_253CCFF18();
      v30.receiver = v23;
      v30.super_class = v22;
      v25 = objc_msgSendSuper2(&v30, sel_initWithHomeUUID_, v24);

      v26 = *(v4 + 8);
      v26(v7, v3);
      v26(v9, v3);
      return v25;
    }

    (*(v4 + 8))(v9, v3);
  }

  return 0;
}

void sub_253211170(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 countersManager];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_253211A14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_253211534;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [v10 removeCounterGroupsBasedOnPredicate_];
  _Block_release(v13);
}

uint64_t sub_253211354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_253CCFEE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 groupName];
    v11 = sub_253CD0968();
    v13 = v12;

    v14 = [v9 date];
    sub_253CCFEA8();

    v15 = sub_253CCFEC8();
    (*(v5 + 8))(v7, v4);
    if (v15 == a3)
    {
      if (v11 == 0xD000000000000014 && 0x8000000253D4E0F0 == v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_253CD1118();
      }
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_253211534(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_253211720()
{
  v1 = v0;
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dateProvider];
  v7 = [v6 startOfCurrentDay];

  sub_253CCFEA8();
  v8 = sub_253CCFE98();
  v9 = [v1 logEventForCurrentHomeWithDate_];

  if (v9)
  {
    [objc_msgSend(v1 logEventDispatcher)];

    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

void __swiftcall HMDCameraRecordingEventObserver.init()(HMDCameraRecordingEventObserver *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_253211A14(uint64_t a1)
{
  v3 = *(sub_253CCFEE8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_253211354(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253211AC8()
{
  v1 = v0;
  v2 = sub_253CCFEE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dateProvider];
  v7 = [v6 startOfCurrentDay];

  sub_253CCFEA8();
  v8 = [v1 countersManager];
  v9 = objc_allocWithZone(HMDDateCounterGroupSpecifier);
  v10 = sub_253CD0938();
  v11 = sub_253CCFE98();
  v12 = [v9 initWithGroupName:v10 date:v11];

  v13 = [v8 objectForKeyedSubscript_];
  v14 = sub_253CD0938();
  [v13 incrementEventCounterForEventName_];

  return (*(v3 + 8))(v5, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_253211D58(uint64_t a1, uint64_t a2)
{
  sub_253CD0968();
  (*(a2 + 16))(a1, a2);

  return sub_253CD07D8();
}

uint64_t sub_253211E5C()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_281531050);
  __swift_project_value_buffer(v0, qword_281531050);
  sub_253CD0968();
  return sub_253CD07D8();
}

id sub_253211ED8()
{
  type metadata accessor for FindMyHandler(0);
  swift_allocObject();
  result = sub_253215D44();
  qword_281532BF0 = result;
  return result;
}

uint64_t sub_253211F4C()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253211FE8, v0, 0);
}

uint64_t sub_253211FE8()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD07E8();
  __swift_project_value_buffer(v1, qword_281531050);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Starting find my handler", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 112) == 1)
  {
    v6 = sub_253CD07C8();
    v7 = sub_253CD0C98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2531F8000, v6, v7, "Find my handler has already been started. Cannot start again.", v8, 2u);
      MEMORY[0x259C040E0](v8, -1, -1);
    }
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    *(v5 + 112) = 1;
    v11 = sub_253CD0B58();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_2532166A0();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    swift_retain_n();
    sub_25324690C(0, 0, v10, &unk_253D48BE0, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_253212230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_253CCFFF8();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3028, &qword_253D48BE8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3030, &qword_253D48BF0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3038, &qword_253D48BF8);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = sub_253CD0058();
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = sub_253CCFFC8();
  v4[29] = v10;
  v4[30] = *(v10 - 8);
  v4[31] = swift_task_alloc();
  v11 = sub_253CCFFD8();
  v4[32] = v11;
  v4[33] = *(v11 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532125D4, a4, 0);
}

uint64_t sub_2532125D4()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[30] + 104))(v0[31], *MEMORY[0x277D09060], v0[29]);
  sub_253CCFFE8();
  (*(v4 + 16))(v1, v2, v3);
  sub_253CD0088();
  swift_allocObject();
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_2532126EC;
  v6 = v0[34];

  return MEMORY[0x28215FBB8](v6);
}

uint64_t sub_2532126EC(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 56);
  *(*v1 + 296) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_253212860, v5, 0);
}

uint64_t sub_253212860()
{
  *(v0[7] + 120) = v0[37];

  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_253212918;
  v2 = v0[37];
  v3 = v0[24];

  return sub_2532148A0(v3, v2);
}

uint64_t sub_253212918()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_253212A28, v1, 0);
}

uint64_t sub_253212A28()
{
  v36 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = *(v2 + 48);
  v0[39] = v4;
  v0[40] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_253206054(v3, &qword_27F5A3008, &qword_253D48B90);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = sub_253CD07E8();
    __swift_project_value_buffer(v9, qword_281531050);
    v10 = *(v8 + 16);
    v10(v5, v6, v7);
    v11 = sub_253CD07C8();
    v12 = sub_253CD0C78();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v17 = 136315138;
      v31 = sub_253CD0038();
      v34 = v10;
      v19 = v18;
      v32 = v12;
      v20 = *(v15 + 8);
      v20(v14, v16);
      v21 = v20;
      v22 = sub_253277BA8(v31, v19, &v35);
      v10 = v34;

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2531F8000, v11, v32, "Found designated ME device %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x259C040E0](v33, -1, -1);
      MEMORY[0x259C040E0](v17, -1, -1);
    }

    else
    {

      v23 = *(v15 + 8);
      v23(v14, v16);
      v21 = v23;
    }

    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[23];
    v10(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_2532152E8(v27);
    sub_253206054(v27, &qword_27F5A3008, &qword_253D48B90);
    v21(v24, v25);
  }

  v28 = swift_task_alloc();
  v0[41] = v28;
  *v28 = v0;
  v28[1] = sub_253212D74;
  v29 = v0[19];

  return MEMORY[0x28215FB78](v29);
}

uint64_t sub_253212D74()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_253213CA0;
  }

  else
  {
    v4 = sub_253212EA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_253212EA0()
{
  sub_253CD0B78();
  v1 = sub_2532166A0();
  v2 = OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice;
  *(v0 + 344) = v1;
  *(v0 + 352) = v2;
  *(v0 + 384) = *MEMORY[0x277D091A0];
  *(v0 + 388) = *MEMORY[0x277D09178];
  *(v0 + 392) = *MEMORY[0x277D09198];
  *(v0 + 396) = *MEMORY[0x277D09180];
  v3 = *(v0 + 336);
  *(v0 + 360) = @"HMDFMFStatusUpdateNotification";
  *(v0 + 368) = v3;
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_253212FC4;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x2822003E8](v6, v4, v1, v7);
}

uint64_t sub_253212FC4()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2532130D4, v1, 0);
}

void sub_2532130D4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = *(v0 + 8);

    v10();
    return;
  }

  v11 = *(v0 + 384);
  v12 = *(v0 + 96);
  (*(v3 + 32))(v12, v1, v2);
  v13 = (*(v3 + 88))(v12, v2);
  if (v13 != v11)
  {
    if (v13 == *(v0 + 388))
    {
      v29 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v29, *(v0 + 80));
      v30 = *v29;
      if (qword_281531048 != -1)
      {
        swift_once();
      }

      v31 = sub_253CD07E8();
      __swift_project_value_buffer(v31, qword_281531050);
      v32 = sub_253CD07C8();
      v33 = sub_253CD0C78();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_23;
      }

      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v30;
      v35 = "myLocation enabled: %{BOOL}d";
    }

    else
    {
      if (v13 != *(v0 + 392))
      {
        if (v13 == *(v0 + 396))
        {
          if (qword_281531048 != -1)
          {
            swift_once();
          }

          v57 = sub_253CD07E8();
          __swift_project_value_buffer(v57, qword_281531050);
          v58 = sub_253CD07C8();
          v59 = sub_253CD0C78();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_2531F8000, v58, v59, "FindMy Session created. Going to query the ME device.", v60, 2u);
            MEMORY[0x259C040E0](v60, -1, -1);
          }

          v61 = *(v0 + 344);
          v63 = *(v0 + 64);
          v62 = *(v0 + 72);
          v64 = *(v0 + 56);

          v65 = sub_253CD0B58();
          v66 = *(v65 - 8);
          (*(v66 + 56))(v62, 1, 1, v65);
          v67 = swift_allocObject();
          v67[2] = v64;
          v67[3] = v61;
          v67[4] = v64;
          sub_2532168A0(v62, v63, qword_27F5A2C48, &unk_253D48880);
          LODWORD(v62) = (*(v66 + 48))(v63, 1, v65);
          swift_retain_n();

          v68 = *(v0 + 64);
          if (v62 == 1)
          {
            sub_253206054(*(v0 + 64), qword_27F5A2C48, &unk_253D48880);
          }

          else
          {
            sub_253CD0B48();
            (*(v66 + 8))(v68, v65);
          }

          v81 = v67[2];
          swift_unknownObjectRetain();

          if (v81)
          {
            swift_getObjectType();
            v82 = sub_253CD0AB8();
            v84 = v83;
            swift_unknownObjectRelease();
          }

          else
          {
            v82 = 0;
            v84 = 0;
          }

          sub_253206054(*(v0 + 72), qword_27F5A2C48, &unk_253D48880);
          v85 = swift_allocObject();
          *(v85 + 16) = &unk_253D48C08;
          *(v85 + 24) = v67;
          if (v84 | v82)
          {
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v82;
            *(v0 + 40) = v84;
          }

          swift_task_create();
        }

        else
        {
          if (qword_281531048 != -1)
          {
            swift_once();
          }

          v69 = sub_253CD07E8();
          __swift_project_value_buffer(v69, qword_281531050);
          v70 = sub_253CD07C8();
          v71 = sub_253CD0C98();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_2531F8000, v70, v71, "FindMy async stream : unknown case", v72, 2u);
            MEMORY[0x259C040E0](v72, -1, -1);
          }

          v74 = *(v0 + 88);
          v73 = *(v0 + 96);
          v75 = *(v0 + 80);

          (*(v74 + 8))(v73, v75);
        }

        goto LABEL_24;
      }

      v37 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v37, *(v0 + 80));
      v38 = *v37;
      if (qword_281531048 != -1)
      {
        swift_once();
      }

      v39 = sub_253CD07E8();
      __swift_project_value_buffer(v39, qword_281531050);
      v32 = sub_253CD07C8();
      v33 = sub_253CD0C78();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_23:

LABEL_24:
        v40 = *(v0 + 368);
LABEL_43:
        *(v0 + 368) = v40;
        v76 = *(v0 + 344);
        v77 = *(v0 + 56);
        v78 = swift_task_alloc();
        *(v0 + 376) = v78;
        *v78 = v0;
        v78[1] = sub_253212FC4;
        v79 = *(v0 + 104);
        v80 = *(v0 + 112);

        MEMORY[0x2822003E8](v79, v77, v76, v80);
        return;
      }

      v34 = swift_slowAlloc();
      *v34 = 67109120;
      *(v34 + 4) = v38;
      v35 = "friendRequests allowed: %{BOOL}d";
    }

    _os_log_impl(&dword_2531F8000, v32, v33, v35, v34, 8u);
    MEMORY[0x259C040E0](v34, -1, -1);
    goto LABEL_23;
  }

  v14 = *(v0 + 176);
  v15 = *(v0 + 96);
  (*(*(v0 + 88) + 96))(v15, *(v0 + 80));
  sub_2532161F8(v15, v14);
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 168);
  v17 = *(v0 + 176);
  v18 = sub_253CD07E8();
  __swift_project_value_buffer(v18, qword_281531050);
  sub_2532168A0(v17, v16, &qword_27F5A3008, &qword_253D48B90);
  v19 = sub_253CD07C8();
  v20 = sub_253CD0C78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 200);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *(v0 + 48) = v26;
    *v25 = 136315138;
    sub_2532168A0(v23, v24, &qword_27F5A3008, &qword_253D48B90);
    if (v21(v24, 1, v22) == 1)
    {
      sub_253206054(*(v0 + 160), &qword_27F5A3008, &qword_253D48B90);
      v27 = 0xE400000000000000;
      v28 = 1701736302;
    }

    else
    {
      v41 = *(v0 + 200);
      v42 = *(v0 + 208);
      v43 = *(v0 + 160);
      v28 = sub_253CD0038();
      v27 = v44;
      (*(v42 + 8))(v43, v41);
    }

    sub_253206054(*(v0 + 168), &qword_27F5A3008, &qword_253D48B90);
    v45 = sub_253277BA8(v28, v27, (v0 + 48));

    *(v25 + 4) = v45;
    _os_log_impl(&dword_2531F8000, v19, v20, "meDevice changed: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C040E0](v26, -1, -1);
    MEMORY[0x259C040E0](v25, -1, -1);
  }

  else
  {
    v36 = *(v0 + 168);

    sub_253206054(v36, &qword_27F5A3008, &qword_253D48B90);
  }

  v46 = *(v0 + 368);
  v47 = *(v0 + 176);
  v48 = *(v0 + 56);
  v49 = (v48 + *(v0 + 352));
  os_unfair_lock_lock(v49);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  sub_253206054(v49 + v50, &qword_27F5A3008, &qword_253D48B90);
  sub_2532168A0(v47, v49 + v50, &qword_27F5A3008, &qword_253D48B90);
  os_unfair_lock_unlock(v49);
  v51 = sub_253216268(v47);
  os_unfair_lock_lock((v48 + 128));
  sub_2532153EC((v48 + 136), v51, (v0 + 400));
  os_unfair_lock_unlock((v48 + 128));
  if (!v46)
  {
    if (*(v0 + 400))
    {
      v52 = *(v0 + 56);
      v53 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
      os_unfair_lock_lock((v52 + 128));
      v54 = *(v52 + 136);
      os_unfair_lock_unlock((v52 + 128));
      v55 = [objc_opt_self() fmfStatusWithValue_];
      [v55 addToPayload_];

      v56 = v53;
      sub_253CD08C8();

      logAndPostNotification(*(v0 + 360), *(v0 + 56), 0);
    }

    sub_253206054(*(v0 + 176), &qword_27F5A3008, &qword_253D48B90);
    v40 = 0;
    goto LABEL_43;
  }
}

uint64_t sub_253213CA0()
{

  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = sub_253CD07E8();
  __swift_project_value_buffer(v2, qword_281531050);
  v3 = v1;
  v4 = sub_253CD07C8();
  v5 = sub_253CD0CA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[42];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2531F8000, v4, v5, "According to FindMy team this should never happen. Please file a radar if you see this. %@", v8, 0xCu);
    sub_253206054(v9, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v9, -1, -1);
    MEMORY[0x259C040E0](v8, -1, -1);
  }

  else
  {
  }

  *(v0[7] + 112) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_253213F30()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_253213FE4;

  return sub_2532140F4(v1);
}

uint64_t sub_253213FE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2532140F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_253CD0058();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253214204, v1, 0);
}

uint64_t sub_253214204()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = sub_253CD07E8();
  v0[10] = __swift_project_value_buffer(v1, qword_281531050);
  v2 = sub_253CD07C8();
  v3 = sub_253CD0C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2531F8000, v2, v3, "Going to query & process ME device", v4, 2u);
    MEMORY[0x259C040E0](v4, -1, -1);
  }

  v5 = v0[2];

  if (v5)
  {
    v6 = v0[2];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_25321443C;
    v8 = v0[5];

    return sub_2532148A0(v8, v6);
  }

  else
  {
    v10 = sub_253CD07C8();
    v11 = sub_253CD0CA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2531F8000, v10, v11, "Unable to open FindMyLocate session", v12, 2u);
      MEMORY[0x259C040E0](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_25321443C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_25321454C, v1, 0);
}

uint64_t sub_25321454C()
{
  v31 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_253206054(v3, &qword_27F5A3008, &qword_253D48B90);
    v4 = sub_253CD07C8();
    v5 = sub_253CD0C98();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2531F8000, v4, v5, "Unable to query the ME device from FindMyLocate", v6, 2u);
      MEMORY[0x259C040E0](v6, -1, -1);
    }
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    (*(v2 + 32))(v7, v3, v1);
    v9 = *(v2 + 16);
    v9(v8, v7, v1);
    v10 = sub_253CD07C8();
    v11 = sub_253CD0C78();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v16 = 136315138;
      v26 = sub_253CD0038();
      v28 = v9;
      v18 = v17;
      v29 = *(v14 + 8);
      v29(v13, v15);
      v19 = sub_253277BA8(v26, v18, &v30);
      v9 = v28;

      *(v16 + 4) = v19;
      _os_log_impl(&dword_2531F8000, v10, v11, "Found designated ME device %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C040E0](v27, -1, -1);
      MEMORY[0x259C040E0](v16, -1, -1);
    }

    else
    {

      v29 = *(v14 + 8);
      v29(v13, v15);
    }

    v20 = v0[9];
    v21 = v0[6];
    v22 = v0[7];
    v23 = v0[4];
    v9(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);
    sub_2532152E8(v23);

    sub_253206054(v23, &qword_27F5A3008, &qword_253D48B90);
    v29(v20, v21);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2532148A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_253CCFF58();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v3;
  v6[1] = sub_2532149C0;

  return MEMORY[0x28215FB40](a1, 1);
}

uint64_t sub_2532149C0()
{
  v2 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_253214BA0;
  }

  else
  {
    v3 = sub_253214AE8;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_253214AE8()
{
  v1 = *(v0 + 16);
  v2 = sub_253CD0058();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_253214BA0()
{
  if (qword_281531048 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_253CD07E8();
  v0[11] = __swift_project_value_buffer(v2, qword_281531050);
  v3 = v1;
  v4 = sub_253CD07C8();
  v5 = sub_253CD0C78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2531F8000, v4, v5, "Could not find the me device from cache %@. Going to force fetch from the FindMy daemon", v7, 0xCu);
    sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v8, -1, -1);
    MEMORY[0x259C040E0](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_253214D74;
  v12 = v0[2];

  return MEMORY[0x28215FB40](v12, 0);
}

uint64_t sub_253214D74()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_253214F60;
  }

  else
  {
    v4 = sub_253214EA0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_253214EA0()
{
  v1 = *(v0 + 16);
  v2 = sub_253CD0058();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_253214F60()
{
  v1 = v0[13];
  v2 = v1;
  v3 = sub_253CD07C8();
  v4 = sub_253CD0C98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2531F8000, v3, v4, "Unable to fetch the FindMy device from daemon. %@.", v6, 0xCu);
    sub_253206054(v7, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v7, -1, -1);
    MEMORY[0x259C040E0](v6, -1, -1);
  }

  if (isInternalBuild() && (v10 = [objc_opt_self() sharedPreferences], v11 = sub_253CD0938(), v12 = objc_msgSend(v10, sel_preferenceForKey_, v11), v11, v10, LODWORD(v10) = objc_msgSend(v12, sel_BOOLValue), v12, v10))
  {
    v13 = sub_253CD07C8();
    v14 = sub_253CD0C78();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2531F8000, v13, v14, "Preference 'fakeCurrentDeviceAsDesignatedMeDevice' is enabled, returning a fake device as Me device", v15, 2u);
      MEMORY[0x259C040E0](v15, -1, -1);
    }

    v16 = v0[13];
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v28 = v0[10];

    sub_253CCFF48();
    sub_253CCFF08();
    v21 = *(v20 + 8);
    v21(v17, v19);
    sub_253CCFF48();
    sub_253CCFF08();
    v21(v18, v19);
    sub_253CD0028();
    v22 = v28;
    v23 = 0;
  }

  else
  {
    v16 = v0[13];
    v22 = v0[10];
    v23 = 1;
  }

  v24 = v0[2];
  v25 = sub_253CD0058();
  (*(*(v25 - 8) + 56))(v24, v23, 1, v25);

  v26 = v0[1];

  return v26();
}

void sub_2532152E8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  sub_253206054(v3 + v4, &qword_27F5A3008, &qword_253D48B90);
  sub_2532168A0(a1, v3 + v4, &qword_27F5A3008, &qword_253D48B90);
  os_unfair_lock_unlock(v3);
  v5 = sub_253216268(a1);
  os_unfair_lock_lock((v1 + 128));
  sub_2532153EC((v1 + 136), v5, &v6);
  os_unfair_lock_unlock((v1 + 128));
  if (v6 == 1)
  {

    sub_25321571C();
  }
}

void sub_2532153EC(unint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  if (*a1 == a2)
  {
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v6 = sub_253CD07E8();
    __swift_project_value_buffer(v6, qword_281531050);
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = HMDFMFStatusAsString(a2);
      v12 = sub_253CD0968();
      v14 = v13;

      v15 = sub_253277BA8(v12, v14, &v35);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_2531F8000, v7, v8, "FMF status is not changing from %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x259C040E0](v10, -1, -1);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v18 = sub_253CD07E8();
    __swift_project_value_buffer(v18, qword_281531050);
    v19 = sub_253CD07C8();
    v20 = sub_253CD0C78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = HMDFMFStatusAsString(v5);
      v34 = a3;
      v24 = sub_253CD0968();
      v26 = v25;

      v27 = sub_253277BA8(v24, v26, &v35);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = HMDFMFStatusAsString(a2);
      v29 = sub_253CD0968();
      v31 = v30;

      v32 = v29;
      a3 = v34;
      v33 = sub_253277BA8(v32, v31, &v35);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_2531F8000, v19, v20, "FMF status is changing from %s to %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v22, -1, -1);
      MEMORY[0x259C040E0](v21, -1, -1);
    }

    *a1 = a2;
    v16 = 1;
  }

  *a3 = v16;
}

void sub_25321571C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  os_unfair_lock_lock((v0 + 128));
  v2 = *(v0 + 136);
  os_unfair_lock_unlock((v0 + 128));
  v3 = [objc_opt_self() fmfStatusWithValue_];
  [v3 addToPayload_];

  v4 = v1;
  sub_253CD08C8();

  logAndPostNotification(@"HMDFMFStatusUpdateNotification", v0, 0);
}

uint64_t sub_2532159D4(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_253215A50, a2, 0);
}

uint64_t sub_253215A50()
{
  v1 = *(v0[2] + 120);
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_253215B04;

  return sub_2532140F4(v1);
}

uint64_t sub_253215B04()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_253215C30, v1, 0);
}

uint64_t sub_253215C30()
{
  v1 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v1 + 128));
  v3 = *(v1 + 136);
  os_unfair_lock_unlock((v1 + 128));
  v4 = [objc_opt_self() fmfStatusWithValue_];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

id sub_253215D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v4 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  v5 = sub_253CD0058();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  *v4 = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3020, &qword_253D48BD0);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  sub_2532161F8(v3, v4 + v6);
  MyHandler = type metadata accessor for FindMyHandler(0);
  v10.receiver = v0;
  v10.super_class = MyHandler;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_253215EB8()
{

  v1 = v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0);
  sub_253206054(v1 + *(v2 + 28), &qword_27F5A3008, &qword_253D48B90);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

HMDFMFHandlerFactory __swiftcall HMDFMFHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for FindMyHandler(uint64_t a1)
{
  result = qword_27F5A2FF0;
  if (!qword_27F5A2FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253216058(uint64_t a1)
{
  sub_253216110(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_253216110(uint64_t a1)
{
  if (!qword_27F5A3000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A3008, &qword_253D48B90);
    v1 = sub_253CD0708();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5A3000);
    }
  }
}

unint64_t type metadata accessor for HMDFMFHandlerFactory()
{
  result = qword_27F5A3018;
  if (!qword_27F5A3018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5A3018);
  }

  return result;
}

uint64_t sub_2532161F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253216268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3008, &qword_253D48B90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_253CD0058();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_2532168A0(a1, v4, &qword_27F5A3008, &qword_253D48B90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_253206054(v4, &qword_27F5A3008, &qword_253D48B90);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v12 = sub_253CD07E8();
    __swift_project_value_buffer(v12, qword_281531050);
    v13 = sub_253CD07C8();
    v14 = sub_253CD0C78();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2531F8000, v13, v14, "There is no designated ME device on this account", v15, 2u);
      MEMORY[0x259C040E0](v15, -1, -1);
    }

    return 1;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_281531048 != -1)
    {
      swift_once();
    }

    v17 = sub_253CD07E8();
    __swift_project_value_buffer(v17, qword_281531050);
    (*(v6 + 16))(v9, v11, v5);
    v18 = sub_253CD07C8();
    v19 = sub_253CD0C78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v20 = 136315138;
      v21 = sub_253CD0038();
      v23 = v22;
      v24 = *(v6 + 8);
      v24(v9, v5);
      v25 = sub_253277BA8(v21, v23, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2531F8000, v18, v19, "Designated ME device : %s", v20, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x259C040E0](v26, -1, -1);
      MEMORY[0x259C040E0](v20, -1, -1);
    }

    else
    {

      v24 = *(v6 + 8);
      v24(v9, v5);
    }

    if (sub_253CD0008())
    {
      v24(v11, v5);
      return 2;
    }

    else
    {
      v27 = sub_253CD0048();
      v24(v11, v5);
      if (v27)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_2532166A0()
{
  result = qword_2815314C0;
  if (!qword_2815314C0)
  {
    type metadata accessor for FindMyHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815314C0);
  }

  return result;
}

uint64_t sub_2532166F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253212230(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2532167EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253213F10(a1, v4, v5, v6);
}

uint64_t sub_2532168A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_253216908(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25320C438;

  return sub_25324BD44(a1, v4);
}

uint64_t sub_2532169C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25320C438;

  return sub_2532159D4(v2, v3);
}

uint64_t sub_253216A6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25320C7A8;

  return sub_253227DD0(v2, v3, v4);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_253216B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253227EB8(a1, v4, v5, v6);
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v12[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_253CCFF18();
  v17.receiver = v12;
  v17.super_class = v6;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_253CCFF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter()
{
  v1 = v0;
  v2 = sub_253CCFF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C40;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000253D4E5E0;
  v7 = MEMORY[0x277D83B88];
  *(inited + 48) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions];
  *(inited + 72) = v7;
  strcpy((inited + 80), "numClipUploads");
  *(inited + 95) = -18;
  *(inited + 96) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads];
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x8000000253D4E600;
  *(inited + 144) = *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds];
  *(inited + 168) = v7;
  *(inited + 176) = 0x44495555656D6F68;
  *(inited + 184) = 0xE800000000000000;
  v8 = [v1 homeUUID];
  sub_253CCFF38();

  v9 = sub_253CCFF08();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 200) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000253D4E620;
  LOBYTE(v12) = v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent];
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v12;
  v13 = sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  return v13;
}

id CameraRecordingEventDailySummaryLogEvent.init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v6[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_253CCFF18();
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_253CCFF58();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_253CCFF58();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    v39 = 0;
    v14 = 1;
    goto LABEL_14;
  }

  v10 = sub_253217D84(0xD000000000000014, 0x8000000253D4E5E0);
  if ((v11 & 1) == 0)
  {
    v39 = 0;
    v14 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_14:
    v37 = 0;
    v38 = 0;
    v19 = 1;
    goto LABEL_22;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v10, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v12 = swift_dynamicCast();
  v13 = v42;
  if (!v12)
  {
    v13 = 0;
  }

  v39 = v13;
  v14 = v12 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v15 = sub_253217D84(0x5570696C436D756ELL, 0xEE007364616F6C70);
  if (v16)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v15, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    v17 = swift_dynamicCast();
    v18 = v42;
    if (!v17)
    {
      v18 = 0;
    }

    v38 = v18;
    v19 = v17 ^ 1;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v38 = 0;
    v19 = 1;
    if (!*(a1 + 16))
    {
LABEL_21:
      v37 = 0;
LABEL_22:
      v24 = 1;
      if (*(a1 + 16))
      {
        goto LABEL_23;
      }

LABEL_20:
      v25 = 0;
      goto LABEL_36;
    }
  }

  v20 = sub_253217D84(0xD00000000000001FLL, 0x8000000253D4E600);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v20, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v22 = swift_dynamicCast();
  v23 = v42;
  if (!v22)
  {
    v23 = 0;
  }

  v37 = v23;
  v24 = v22 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_23:
  v26 = sub_253217D84(0x44495555656D6F68, 0xE800000000000000);
  if (v27)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v26, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    if (swift_dynamicCast())
    {
      v25 = v43;
    }

    else
    {
      v25 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  v28 = sub_253217D84(0xD000000000000013, 0x8000000253D4E620);
  if (v29)
  {
    sub_253205FF8(*(a1 + 56) + 32 * v28, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    if (swift_dynamicCast())
    {
      v30 = v42;
    }

    else
    {
      v30 = 2;
    }

    if (v14)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:

  v30 = 2;
  if (v14)
  {
LABEL_39:

LABEL_40:
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_37:
  if (v19 || v24)
  {
    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_40;
  }

  sub_253CCFEF8();

  v32 = v40;
  if ((*(v40 + 48))(v6, 1, v7) == 1)
  {
    sub_25321869C(v6);
    goto LABEL_40;
  }

  (*(v32 + 32))(v9, v6, v7);
  if (v30 == 2)
  {
    (*(v32 + 8))(v9, v7);
    goto LABEL_40;
  }

  v33 = v38;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v39;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v33;
  *&v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v37;
  v2[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = v30;
  v34 = sub_253CCFF18();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v44, sel_initWithHomeUUID_, v34);

  (*(v32 + 8))(v9, v7);
  return v35;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent))
  {
    return 0xD000000000000047;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3070, &unk_253D48C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48C50;
  strcpy((inited + 32), "numClipUploads");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x8000000253D4E5E0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x8000000253D4E600;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_253218704(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A37E0, &qword_253D49550);
  swift_arrayDestroy();
  return v2;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_253CCFF18();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_253CCFF58();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_253CCFF18();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_253CCFF58();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id CameraRecordingEventDailySummaryLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_253217D40(uint64_t a1)
{
  v2 = sub_253CD0F38();

  return sub_25321807C(a1, v2);
}

unint64_t sub_253217D84(uint64_t a1, uint64_t a2)
{
  sub_253CD11C8();
  sub_253CD09A8();
  v4 = sub_253CD11E8();

  return sub_253218144(a1, a2, v4);
}

unint64_t sub_253217E4C(uint64_t a1)
{
  sub_253CCFF58();
  v2 = MEMORY[0x277CC95F0];
  sub_253219058(&qword_281531988, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_253CD08F8();
  return sub_2532183CC(a1, v3, MEMORY[0x277CC95F0], &qword_27F5A2AE0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_253217F20(uint64_t a1)
{
  sub_253CD11C8();
  sub_253244E38(a1);
  sub_253CD09A8();

  v2 = sub_253CD11E8();

  return sub_2532182C8(a1, v2);
}

unint64_t sub_253217FA8(uint64_t a1)
{
  sub_253CD0548();
  v2 = MEMORY[0x277D17D28];
  sub_253219058(&qword_27F5A3098, MEMORY[0x277D17D28], MEMORY[0x277D17D30]);
  v3 = sub_253CD08F8();
  return sub_2532183CC(a1, v3, MEMORY[0x277D17D28], &qword_27F5A30A0, v2, MEMORY[0x277D17D38]);
}

unint64_t sub_25321807C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2532190A0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C00EB0](v9, a1);
      sub_253205FA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_253218144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_253CD1118())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2532181FC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_253200644(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_253CD0D88();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2532182C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    while (1)
    {
      v7 = sub_253244E38(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_253244E38(v5) && v9 == v10)
      {
        break;
      }

      v12 = sub_253CD1118();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2532183CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_253219058(v23, v24, v25);
      v19 = sub_253CD0918();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_25321856C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2532168A0(v4, &v13, &unk_27F5A3B60, &unk_253D4AAD0);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF150(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25321869C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_253218704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E0, &qword_253D48D68);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_253217D84(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30D0, &qword_253D48D58);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25321897C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_253217D84(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A30C0, &qword_253D48D50);
    v3 = sub_253CD10C8();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_253217F20(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218B70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_253217D84(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}