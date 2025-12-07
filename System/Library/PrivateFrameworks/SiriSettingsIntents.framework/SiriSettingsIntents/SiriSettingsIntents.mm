uint64_t sub_268CC0FC8()
{
  v5 = *(v0 + 32);
  v2 = *(v5 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v5);
  MEMORY[0x277D82BD8](*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_268CC1C38()
{

  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_268CC1C90()
{

  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_268CC1CF0()
{

  return swift_deallocObject();
}

uint64_t sub_268CC1FAC()
{

  return swift_deallocObject();
}

uint64_t sub_268CC20F4()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CC214C()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CC21A4()
{

  return swift_deallocObject();
}

uint64_t sub_268CC222C()
{

  return swift_deallocObject();
}

uint64_t sub_268CC2324()
{

  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_268CC2410(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC2540(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC2640(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC2770(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC2870(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC29A0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC2AA0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC2BD0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC2CD0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 24)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC2E00(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC2F00(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 32)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC3030(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 32)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC3130(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC3260(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC3360(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC3490(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC3590(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 32)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC36C0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 32)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC37C0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC38F0(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC39F0(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC3B20(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC3C20(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 24)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CC3D50(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC3FEC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = sub_268F99F64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_268CC4204()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = sub_268F99F64();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_268CC4750()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC4934()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC4FD0()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC5594()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC5738()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC5C24()
{
  v5 = *(v0 + 32);
  v2 = *(v5 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v5);
  MEMORY[0x277D82BD8](*(v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_268CC6C44()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CC74FC()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CC7654()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC76FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_268CC7744()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_268CC780C()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC7BA0()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CC7BF8()
{

  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_268CC7C50()
{
  v4 = sub_268F99214();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  MEMORY[0x277D82BD8](*(v0 + 16));

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_268CC7D50()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_268CC7DA8()
{

  return swift_deallocObject();
}

uint64_t sub_268CC7DF8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 80);
  v4 = (v1 + 40) & ~v1;

  v5 = sub_268F99214();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_268CC7F88()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCEE8, &unk_268FA2908) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC8368()
{
  v4 = sub_268F99214();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_268CC8450()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CC84A8()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC86CC(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1, a2, v11);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + a3[5], a2, v6);
    }

    else if (a2 == 0x7FFFFFFF)
    {
      v5 = -1;
      if (*(a1 + a3[6] + 8) < 0x100000000uLL)
      {
        v5 = *(a1 + a3[6] + 8);
      }

      return (v5 + 1);
    }

    else
    {
      v4 = sub_268F99414();
      if (a2 == *(*(v4 - 8) + 84))
      {
        return (*(*(v4 - 8) + 48))(a1 + a3[8], a2, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_268CC8930(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF48, &qword_268FA2B30);
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCF40, &qword_268FA2B28);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[5], a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = a2 - 1;
  }

  else
  {
    result = sub_268F99414();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(a1 + a4[8], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CC8B6C()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC8BBC()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC8C0C()
{

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_268CC9D50()
{
  v2 = *(sub_268F99F64() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CC9F28(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_268CCA058(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCA158(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_268CCA288(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCA388(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 24), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_268CCA4B8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCA5B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 24), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_268CCA6E8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 24), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCA7E8(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCA918(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCAA18(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 24)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCAB48(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 24)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCAC48(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCAD78(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCAE78(uint64_t a1, unsigned int a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  if (a2 == *(*(v6 - 8) + 84))
  {
    return (*(*(v6 - 8) + 48))(a1, a2, v6);
  }

  else
  {
    __break(1u);
  }

  return v3;
}

uint64_t sub_268CCAF3C(uint64_t a1, unsigned int a2, int a3)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_268CCB104()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_268CCB318()
{
  v2 = *(sub_268F9AC74() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_268CCB5D4()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CCB66C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_268CCB6B4()
{

  return swift_deallocObject();
}

uint64_t sub_268CCB9A8()
{

  return swift_deallocObject();
}

uint64_t sub_268CCC380(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_268F9A9C4();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_268CCC4E0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_268F9A9C4();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_268CCC640()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_268CCC688()
{

  return swift_deallocObject();
}

uint64_t sub_268CCC6D0()
{

  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_268CCC808()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CCC93C(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCCA6C(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCCB6C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v7 = *(a1 + 8);
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(a1 + *(a3 + 28), a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

uint64_t sub_268CCCC9C(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 28), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCCD9C(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 20)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCCECC(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCCFCC(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCD0FC(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCD1FC(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 40)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCD32C(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 40)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCD500()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CCD924()
{

  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_268CCD984()
{

  return swift_deallocObject();
}

uint64_t sub_268CCD9EC()
{

  return swift_deallocObject();
}

uint64_t sub_268CCDA54()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CCDAEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_268CCE300()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CCEF74()
{

  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_268CCF10C()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CCF164()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CCF1BC()
{

  MEMORY[0x277D82BD8](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_268CCF214()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_268CCF274()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_268CCF2D4()
{
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_268CCF334(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCF464(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCF564(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 36)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCF694(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 36)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCF794(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 28)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCF8C4(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCF9C4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v7 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v7 = *a1;
    }

    v3 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a2 == *(*(v5 - 8) + 84))
    {
      return (*(*(v5 - 8) + 48))(&a1[*(a3 + 44)], a2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return v6;
}

char *sub_268CCFAF4(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 44)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268CCFBF4(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v130 = a1;
  v128 = a2;
  v129 = a3;
  v145 = a4;
  v140 = a5;
  v149 = sub_268CD0F28;
  v153 = sub_268CD7608;
  v155 = sub_268CD7600;
  v157 = sub_268CD7600;
  v160 = sub_268CD7614;
  v121 = sub_268CD0F28;
  v122 = sub_268CD7608;
  v123 = sub_268CD7600;
  v124 = sub_268CD7600;
  v125 = sub_268CD7614;
  v126 = &unk_268F9C890;
  v183 = 0;
  v181 = 0;
  v182 = 0;
  v180 = 0;
  v127 = 0;
  v184 = a4;
  v131 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130, v128, v129, v145);
  v132 = &v70 - v131;
  v141 = *(v6 - 8);
  v142 = v6 - 8;
  v137 = v141;
  v138 = *(v141 + 64);
  v133 = (v138 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v6);
  v144 = &v70 - v133;
  v183 = v10;
  v181 = v11;
  v182 = v12;
  v180 = v5;
  v165 = sub_268F9B284();
  v164 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v164);
  v135 = *(v141 + 16);
  v136 = v141 + 16;
  v135(v144, v134, v145);
  v139 = *(v137 + 80);
  v150 = 32;
  v143 = (v139 + 32) & ~v139;
  v151 = 7;
  v13 = swift_allocObject();
  v14 = v140;
  v15 = v141;
  v16 = v143;
  v17 = v144;
  v152 = v13;
  *(v13 + 16) = v145;
  *(v13 + 24) = v14;
  v146 = *(v15 + 32);
  v147 = v15 + 32;
  v146(v13 + v16, v17);
  v148 = 17;
  v156 = swift_allocObject();
  *(v156 + 16) = 32;
  v158 = swift_allocObject();
  *(v158 + 16) = 8;
  v18 = swift_allocObject();
  v19 = v152;
  v154 = v18;
  *(v18 + 16) = v149;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v154;
  v161 = v20;
  *(v20 + 16) = v153;
  *(v20 + 24) = v21;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v159 = sub_268F9B734();
  v162 = v22;

  v23 = v156;
  v24 = v162;
  *v162 = v155;
  v24[1] = v23;

  v25 = v158;
  v26 = v162;
  v162[2] = v157;
  v26[3] = v25;

  v27 = v161;
  v28 = v162;
  v162[4] = v160;
  v28[5] = v27;
  sub_268CD0F7C();

  if (os_log_type_enabled(v164, v165))
  {
    v29 = v127;
    v114 = sub_268F9B3A4();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v115 = sub_268CD5448(0, v113, v113);
    v116 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v117 = &v170;
    v170 = v114;
    v118 = &v169;
    v169 = v115;
    v119 = &v168;
    v168 = v116;
    sub_268CD549C(2, &v170);
    sub_268CD549C(1, v117);
    v166 = v155;
    v167 = v156;
    sub_268CD54B0(&v166, v117, v118, v119);
    v120 = v29;
    if (v29)
    {

      __break(1u);
    }

    else
    {
      v166 = v157;
      v167 = v158;
      sub_268CD54B0(&v166, &v170, &v169, &v168);
      v111 = 0;
      v166 = v160;
      v167 = v161;
      sub_268CD54B0(&v166, &v170, &v169, &v168);
      v110 = 0;
      _os_log_impl(&dword_268CBE000, v164, v165, "%s handling intent", v114, 0xCu);
      sub_268CD54FC(v115, 0, v113);
      sub_268CD54FC(v116, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v112 = v110;
    }
  }

  else
  {
    v30 = v127;

    v112 = v30;
  }

  v100 = v112;
  MEMORY[0x277D82BD8](v164);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA40, &unk_268F9C870);
  v101 = 5;
  sub_268F9B734();
  v31 = v101;
  v103 = v32;
  *v32 = 1;
  v104 = 1;
  *(v32 + 8) = 0;
  *(v32 + 16) = 2;
  *(v32 + 24) = 0;
  *(v32 + 32) = 3;
  *(v32 + 40) = 0;
  *(v32 + 48) = v31;
  *(v32 + 56) = 0;
  *(v32 + 64) = 4;
  *(v32 + 72) = 0;
  sub_268CD0F7C();
  v108 = &v179;
  v179 = v33;
  v178 = v130;
  v34 = sub_268CD7620();
  v35 = SettingIntent.deviceCategory.getter(v34, &protocol witness table for INSetBinarySettingIntent);
  v107 = &v176;
  v176 = v35;
  v177 = v36 & 1 & v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA50, &qword_268F9E2F0);
  v106 = sub_268CD7684();
  sub_268CD7780();
  v109 = sub_268F9AFC4();
  sub_268CD7930(v108);
  if (v109)
  {
    v98 = 0;
    v37 = sub_268F9B0E4();
    (*(*(v37 - 8) + 56))(v132, 1);
    v135(v144, v134, v145);
    MEMORY[0x277D82BE0](v130);

    v95 = (v139 + 48) & ~v139;
    v96 = (v95 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v140;
    v40 = v95;
    v41 = v144;
    v42 = v145;
    v43 = v146;
    v99 = v38;
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v42;
    v38[5] = v39;
    v43(v38 + v40, v41);
    v44 = v97;
    v45 = v128;
    v46 = v129;
    v47 = v98;
    v48 = v132;
    v49 = v126;
    v50 = v99;
    *(v99 + v96) = v130;
    v51 = (v50 + v44);
    *v51 = v45;
    v51[1] = v46;
    sub_268CD3CE0(v47, v47, v48, v49, v50, MEMORY[0x277D84F78] + 8);
  }

  else
  {
    v94 = sub_268F9B294();
    v93 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v93);
    v135(v144, v134, v145);
    v84 = 32;
    v82 = (v139 + 32) & ~v139;
    v85 = 7;
    v53 = swift_allocObject();
    v54 = v140;
    v55 = v82;
    v56 = v144;
    v57 = v146;
    v86 = v53;
    *(v53 + 16) = v145;
    *(v53 + 24) = v54;
    v57(v53 + v55, v56);
    v83 = 17;
    v88 = swift_allocObject();
    *(v88 + 16) = 32;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v58 = swift_allocObject();
    v59 = v86;
    v87 = v58;
    *(v58 + 16) = v121;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v87;
    v91 = v60;
    *(v60 + 16) = v122;
    *(v60 + 24) = v61;
    v90 = sub_268F9B734();
    v92 = v62;

    v63 = v88;
    v64 = v92;
    *v92 = v123;
    v64[1] = v63;

    v65 = v89;
    v66 = v92;
    v92[2] = v124;
    v66[3] = v65;

    v67 = v91;
    v68 = v92;
    v92[4] = v125;
    v68[5] = v67;
    sub_268CD0F7C();

    if (os_log_type_enabled(v93, v94))
    {
      v69 = v100;
      v75 = sub_268F9B3A4();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v76 = sub_268CD5448(0, v74, v74);
      v77 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v78 = &v175;
      v175 = v75;
      v79 = &v174;
      v174 = v76;
      v80 = &v173;
      v173 = v77;
      sub_268CD549C(2, &v175);
      sub_268CD549C(1, v78);
      v171 = v123;
      v172 = v88;
      sub_268CD54B0(&v171, v78, v79, v80);
      v81 = v69;
      if (v69)
      {

        __break(1u);
      }

      else
      {
        v171 = v124;
        v172 = v89;
        sub_268CD54B0(&v171, &v175, &v174, &v173);
        v73 = 0;
        v171 = v125;
        v172 = v91;
        sub_268CD54B0(&v171, &v175, &v174, &v173);
        _os_log_impl(&dword_268CBE000, v93, v94, "%s host device is unsupported", v75, 0xCu);
        sub_268CD54FC(v76, 0, v74);
        sub_268CD54FC(v77, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v93);

    v71 = 0;
    sub_268CD795C();
    v72 = sub_268CD42AC(7, v71);
    v128();
    MEMORY[0x277D82BD8](v72);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_268CD0E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = a1;
  v9 = a2;
  v8 = *(a2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a1, a2, a4);
  v10 = v6 - v7;
  (*(v8 + 16))(v4);
  return sub_268F9AE64();
}

uint64_t sub_268CD0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v21;
  *(v8 + 96) = a8;
  *(v8 + 88) = a7;
  *(v8 + 80) = a6;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 32) = v8;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 193) = 0;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 56) = 0;
  v12 = *(a8 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v17 = *(v21 + 8);
  *(v8 + 144) = v17;
  v18 = (*(v17 + 32) + **(v17 + 32));
  v10 = swift_task_alloc();
  *(v16 + 152) = v10;
  *v10 = *(v16 + 32);
  v10[1] = sub_268CD1220;

  return v18(a8, v17);
}

uint64_t sub_268CD1220(__int16 a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 195) = a1;

  return MEMORY[0x2822009F8](sub_268CD134C, 0);
}

uint64_t sub_268CD134C()
{
  v61 = v0;
  v1 = *(v0 + 196);
  v2 = *(v0 + 195);
  *(v0 + 32) = v0;
  *(v0 + 193) = v2;
  *(v0 + 194) = v1 & 1;
  if (v1)
  {
    v23 = *(v55 + 195);
    v21 = *(v55 + 136);
    v19 = *(v55 + 104);
    v22 = *(v55 + 96);
    v18 = *(v55 + 64);
    v17 = *(v55 + 112);
    *(v55 + 192) = v23;
    v37 = sub_268F9B294();
    v8 = sub_268DC7AE8();
    oslog = *v8;
    MEMORY[0x277D82BE0](*v8);
    (*(v17 + 16))(v21, v18, v22);
    v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v19;
    (*(v17 + 32))(v24 + v20, v21);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    sub_268D2AAC0();

    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_268CD0F28;
    *(v25 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_268CD7608;
    *(v31 + 24) = v25;
    v32 = swift_allocObject();
    *(v32 + 16) = 64;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_268CD9898;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_268CD98A0;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_268CD98AC;
    *(v34 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v35 = v9;

    *v35 = sub_268CD7600;
    v35[1] = v29;

    v35[2] = sub_268CD7600;
    v35[3] = v30;

    v35[4] = sub_268CD7614;
    v35[5] = v31;

    v35[6] = sub_268CD7600;
    v35[7] = v32;

    v35[8] = sub_268CD7600;
    v35[9] = v33;

    v35[10] = sub_268CD98B8;
    v35[11] = v34;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v37))
    {
      buf = sub_268F9B3A4();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v15 = sub_268CD5448(1, v13, v13);
      v16 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v56 = buf;
      v57 = v15;
      v58 = v16;
      sub_268CD549C(2, &v56);
      sub_268CD549C(2, &v56);
      v59 = sub_268CD7600;
      v60 = v29;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      v59 = sub_268CD7600;
      v60 = v30;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      v59 = sub_268CD7614;
      v60 = v31;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      v59 = sub_268CD7600;
      v60 = v32;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      v59 = sub_268CD7600;
      v60 = v33;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      v59 = sub_268CD98B8;
      v60 = v34;
      sub_268CD54B0(&v59, &v56, &v57, &v58);
      _os_log_impl(&dword_268CBE000, oslog, v37, "%s audio device is unsupported. %@", buf, 0x16u);
      sub_268CD54FC(v15, 1, v13);
      sub_268CD54FC(v16, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }

    else
    {
    }

    v11 = *(v55 + 80);
    MEMORY[0x277D82BD8](oslog);

    v12 = sub_268DA9A7C(7, 0);
    v11();
    MEMORY[0x277D82BD8](v12);

    v10 = *(*(v55 + 32) + 8);

    return v10();
  }

  else
  {
    v50 = *(v55 + 195);
    v38 = *(v55 + 144);
    v40 = *(v55 + 136);
    v46 = *(v55 + 128);
    v45 = *(v55 + 104);
    v47 = *(v55 + 96);
    v42 = *(v55 + 64);
    v39 = *(v55 + 112);
    *(v55 + 200) = v50 & 1;
    v51 = (*(v38 + 24))();
    v52 = v3;
    v53 = v4;
    v54 = (*(v38 + 16))(v47);
    v43 = *(v39 + 16);
    v43(v40, v42, v47);
    v44 = *(v39 + 80);
    v41 = swift_allocObject();
    *(v55 + 160) = v41;
    *(v41 + 16) = v47;
    *(v41 + 24) = v45;
    v48 = *(v39 + 32);
    v48(v41 + ((v44 + 32) & ~v44), v40);
    v43(v46, v42, v47);
    v49 = swift_allocObject();
    *(v55 + 168) = v49;
    *(v49 + 16) = v47;
    *(v49 + 24) = v45;
    v48(v49 + ((v44 + 32) & ~v44), v46);
    v5 = swift_task_alloc();
    *(v55 + 176) = v5;
    *v5 = *(v55 + 32);
    v5[1] = sub_268CD213C;
    v6 = *(v55 + 72);
    v63 = 0;
    v64 = 1;
    v65 = sub_268CD99D4;
    v66 = v49;

    return sub_268DA9AE0(v50 & 1, v6, v51, v52, v53, v54 & 1, &unk_268F9D4B0, v41);
  }
}

uint64_t sub_268CD213C(uint64_t a1)
{
  v5 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  *(v5 + 32) = *v1;
  *(v5 + 184) = a1;

  sub_268CD9A28(sub_268CD99D4, v3);
  sub_268CD9A28(&unk_268F9D4B0, v4);

  return MEMORY[0x2822009F8](sub_268CD22C0, 0);
}

uint64_t sub_268CD22C0()
{
  v4 = v0[23];
  v3 = v0[10];
  v0[4] = v0;
  v0[7] = v4;

  v3(v4);

  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_268CD23E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  *(v4 + 40) = a3;
  *(v4 + 32) = a2;
  *(v4 + 95) = a1 & 1;
  *(v4 + 16) = v4;
  *(v4 + 88) = 0;
  *(v4 + 24) = 0;
  *(v4 + 89) = 0;
  v8 = *(a3 - 8);
  *(v4 + 56) = v8;
  *(v4 + 64) = *(v8 + 64);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 88) = a1 & 1;
  *(v4 + 24) = a2;
  v12 = (*(a4 + 16) + **(a4 + 16));
  v6 = swift_task_alloc();
  *(v9 + 80) = v6;
  *v6 = *(v9 + 16);
  v6[1] = sub_268CD25FC;

  return v12(a1 & 1, a3, a4);
}

uint64_t sub_268CD25FC(__int16 a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 96) = a1;

  return MEMORY[0x2822009F8](sub_268CD2728, 0);
}

uint64_t sub_268CD2728()
{
  v40 = v0;
  v1 = *(v0 + 97);
  v2 = *(v0 + 96);
  *(v0 + 16) = v0;
  *(v0 + 89) = v2;
  *(v0 + 90) = v1 & 1;
  *(v0 + 91) = v2;
  *(v0 + 92) = v1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBBF8, &qword_268F9D4B8);
  sub_268D2DFAC(v3, v0 + 94, v0 + 93);
  v16 = *(v34 + 72);
  v14 = *(v34 + 48);
  v17 = *(v34 + 40);
  v13 = *(v34 + 32);
  v18 = *(v34 + 95);
  v12 = *(v34 + 56);
  v33 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v32 = *v4;
  MEMORY[0x277D82BE0](*v4);
  (*(v12 + 16))(v16, v13, v17);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v14;
  (*(v12 + 32))(v19 + v15, v16);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_268CD0F28;
  *(v20 + 24) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_268CD7608;
  *(v27 + 24) = v20;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_268CD9ADC;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_268CD9AE8;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_268CD9AF4;
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_268CD9B00;
  *(v30 + 24) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v31 = v5;

  *v31 = sub_268CD7600;
  v31[1] = v25;

  v31[2] = sub_268CD7600;
  v31[3] = v26;

  v31[4] = sub_268CD7614;
  v31[5] = v27;

  v31[6] = sub_268CD7600;
  v31[7] = v28;

  v31[8] = sub_268CD7600;
  v31[9] = v29;

  v31[10] = sub_268CD9B0C;
  v31[11] = v30;
  sub_268CD0F7C();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_268F9B3A4();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v10 = sub_268CD5448(0, v8, v8);
    v11 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v10;
    v37 = v11;
    sub_268CD549C(2, &v35);
    sub_268CD549C(2, &v35);
    v38 = sub_268CD7600;
    v39 = v25;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    v38 = sub_268CD7600;
    v39 = v26;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    v38 = sub_268CD7614;
    v39 = v27;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    v38 = sub_268CD7600;
    v39 = v28;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    v38 = sub_268CD7600;
    v39 = v29;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    v38 = sub_268CD9B0C;
    v39 = v30;
    sub_268CD54B0(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_268CBE000, v32, v33, "%s set value to %{BOOL}d", buf, 0x12u);
    sub_268CD54FC(v10, 0, v8);
    sub_268CD54FC(v11, 1, MEMORY[0x277D84F70] + 8);
    sub_268F9B384();
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v32);

  v6 = *(*(v34 + 16) + 8);

  return v6();
}

id sub_268CD3218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a1;
  v56 = a2;
  v64 = a3;
  v59 = a4;
  v66 = sub_268CD0F28;
  v68 = sub_268CD7608;
  v72 = sub_268CD9A5C;
  v74 = sub_268CD98A0;
  v78 = sub_268CD98AC;
  v80 = sub_268CD7600;
  v82 = sub_268CD7600;
  v84 = sub_268CD7614;
  v86 = sub_268CD7600;
  v88 = sub_268CD7600;
  v91 = sub_268CD98B8;
  v103 = 0;
  v102 = 0;
  v54 = 0;
  v104 = a3;
  v60 = *(a3 - 8);
  v61 = a3 - 8;
  v57 = v60;
  v58 = *(v60 + 64);
  v55 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, 0);
  v63 = &v38 - v55;
  v103 = v4;
  v102 = v5;
  v96 = sub_268F9B284();
  v95 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v95);
  (*(v60 + 16))(v63, v56, v64);
  v6 = *(v57 + 80);
  v75 = 32;
  v62 = (v6 + 32) & ~v6;
  v76 = 7;
  v7 = swift_allocObject();
  v8 = v59;
  v9 = v60;
  v10 = v62;
  v11 = v63;
  v67 = v7;
  *(v7 + 16) = v64;
  *(v7 + 24) = v8;
  (*(v9 + 32))(v7 + v10, v11);
  v12 = v65;
  v73 = swift_allocObject();
  *(v73 + 16) = v65;
  sub_268D2AAC0();

  v70 = 17;
  v81 = swift_allocObject();
  *(v81 + 16) = 32;
  v83 = swift_allocObject();
  v71 = 8;
  *(v83 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v67;
  v69 = v13;
  *(v13 + 16) = v66;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v69;
  v85 = v15;
  *(v15 + 16) = v68;
  *(v15 + 24) = v16;
  v87 = swift_allocObject();
  *(v87 + 16) = 64;
  v89 = swift_allocObject();
  *(v89 + 16) = v71;
  v17 = swift_allocObject();
  v18 = v73;
  v77 = v17;
  *(v17 + 16) = v72;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v77;
  v79 = v19;
  *(v19 + 16) = v74;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v79;
  v92 = v21;
  *(v21 + 16) = v78;
  *(v21 + 24) = v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v90 = sub_268F9B734();
  v93 = v23;

  v24 = v81;
  v25 = v93;
  *v93 = v80;
  v25[1] = v24;

  v26 = v83;
  v27 = v93;
  v93[2] = v82;
  v27[3] = v26;

  v28 = v85;
  v29 = v93;
  v93[4] = v84;
  v29[5] = v28;

  v30 = v87;
  v31 = v93;
  v93[6] = v86;
  v31[7] = v30;

  v32 = v89;
  v33 = v93;
  v93[8] = v88;
  v33[9] = v32;

  v34 = v92;
  v35 = v93;
  v93[10] = v91;
  v35[11] = v34;
  sub_268CD0F7C();

  if (os_log_type_enabled(v95, v96))
  {
    v36 = v54;
    v46 = sub_268F9B3A4();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v45 = 1;
    v47 = sub_268CD5448(1, v44, v44);
    v48 = sub_268CD5448(v45, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v50 = &v101;
    v101 = v46;
    v51 = &v100;
    v100 = v47;
    v52 = &v99;
    v99 = v48;
    v49 = 2;
    sub_268CD549C(2, &v101);
    sub_268CD549C(v49, v50);
    v97 = v80;
    v98 = v81;
    sub_268CD54B0(&v97, v50, v51, v52);
    v53 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v97 = v82;
      v98 = v83;
      sub_268CD54B0(&v97, &v101, &v100, &v99);
      v43 = 0;
      v97 = v84;
      v98 = v85;
      sub_268CD54B0(&v97, &v101, &v100, &v99);
      v42 = 0;
      v97 = v86;
      v98 = v87;
      sub_268CD54B0(&v97, &v101, &v100, &v99);
      v41 = 0;
      v97 = v88;
      v98 = v89;
      sub_268CD54B0(&v97, &v101, &v100, &v99);
      v40 = 0;
      v97 = v91;
      v98 = v92;
      sub_268CD54B0(&v97, &v101, &v100, &v99);
      _os_log_impl(&dword_268CBE000, v95, v96, "%s failed to set value %@", v46, 0x16u);
      v39 = 1;
      sub_268CD54FC(v47, 1, v44);
      sub_268CD54FC(v48, v39, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v95);
  return sub_268DA9A7C(7, 0);
}

uint64_t sub_268CD3C98(char a1)
{
  sub_268CD9A64();
  result = swift_allocError();
  *v2 = a1;
  return result;
}

uint64_t sub_268CD3CE0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a1;
  v49 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v50 = a6;
  v51 = "Fatal error";
  v52 = "Unexpectedly found nil while unwrapping an Optional value";
  v53 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v54 = &unk_268F9D498;
  v55 = 0;
  v68 = a6;
  v56 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v6, v7, v8);
  v60 = &v17 - v56;

  v66 = v58;
  v67 = v59;
  sub_268CD95D4(v57, v60);
  v61 = sub_268F9B0E4();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  if ((*(v62 + 48))(v60, 1) == 1)
  {
    sub_268CD96FC(v60);
    v47 = 0;
  }

  else
  {
    v46 = sub_268F9B0D4();
    (*(v62 + 8))(v60, v61);
    v47 = v46;
  }

  v43 = v47 | 0x1C00;
  v45 = *(v59 + 16);
  v44 = *(v59 + 24);
  swift_unknownObjectRetain();

  if (v45)
  {
    v41 = v45;
    v42 = v44;
    v35 = v44;
    v36 = v45;
    swift_getObjectType();
    v37 = sub_268F9B0B4();
    v38 = v9;
    swift_unknownObjectRelease();
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v33 = v40;
  v34 = v39;

  if (v49)
  {
    v31 = v48;
    v32 = v49;
    v10 = v55;
    v28 = v49;
    v29 = sub_268F9AEA4();

    sub_268CD5570(v29 + 32, &v66, v50, &v64);
    if (v10)
    {
      __break(1u);
    }

    v27 = v64;

    v30 = v27;
  }

  else
  {
    v30 = 0;
  }

  v26 = v30;
  if (v30)
  {
    v20 = v26;
    v19 = v26;
    sub_268CD96FC(v57);

    v21 = v19;
  }

  else
  {

    sub_268CD96FC(v57);
    v22 = v66;
    v23 = v67;

    v11 = swift_allocObject();
    v12 = v22;
    v13 = v23;
    v14 = v34;
    v15 = v33;
    v24 = v11;
    v11[2] = v50;
    v11[3] = v12;
    v11[4] = v13;
    v25 = 0;
    if (v14 != 0 || v15 != 0)
    {
      v65[0] = 0;
      v65[1] = 0;
      v65[2] = v34;
      v65[3] = v33;
      v25 = v65;
    }

    v21 = swift_task_create();
  }

  v18 = v21;

  return v18;
}

id sub_268CD4350(uint64_t a1, uint64_t a2)
{
  v5 = [v2 initWithCode:a1 userActivity:?];
  MEMORY[0x277D82BD8](a2);
  return v5;
}

void sub_268CD44C4(uint64_t a2@<X8>)
{
  sub_268CD4500();
  *a2 = v2;
  *(a2 + 8) = v3 & 1;
}

uint64_t sub_268CD45EC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_268CD4634(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_268CD4634(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t sub_268CD466C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_268CD469C(*v1);
  *a1 = result;
  return result;
}

void sub_268CD4804(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_268CD48C0(uint64_t a1)
{
  sub_268CD93DC();
  sub_268CD945C();
  return sub_268F9B914();
}

uint64_t sub_268CD4AC4(uint64_t a1, uint64_t a2)
{
  sub_268CD93DC();
  sub_268CD945C();
  return sub_268F9B904();
}

uint64_t sub_268CD4B08(uint64_t a1, uint64_t a2)
{
  sub_268CD93DC();
  sub_268CD945C();
  return sub_268F9B8E4();
}

uint64_t sub_268CD4B4C(uint64_t a1, uint64_t a2)
{
  sub_268CD93DC();
  sub_268CD945C();
  return sub_268F9B8F4();
}

uint64_t sub_268CD4C6C(uint64_t a1)
{
  sub_268CD9554();
  sub_268CD945C();
  return sub_268F9B914();
}

uint64_t sub_268CD4E70(uint64_t a1, uint64_t a2)
{
  sub_268CD9554();
  sub_268CD945C();
  return sub_268F9B904();
}

uint64_t sub_268CD4EB4(uint64_t a1, uint64_t a2)
{
  sub_268CD9554();
  sub_268CD945C();
  return sub_268F9B8E4();
}

uint64_t sub_268CD4EF8(uint64_t a1, uint64_t a2)
{
  sub_268CD9554();
  sub_268CD945C();
  return sub_268F9B8F4();
}

uint64_t sub_268CD4F88(uint64_t a1)
{
  sub_268CDA184();
  sub_268CD945C();
  return sub_268F9B914();
}

uint64_t sub_268CD518C(uint64_t a1, uint64_t a2)
{
  sub_268CDA184();
  sub_268CD945C();
  return sub_268F9B904();
}

uint64_t sub_268CD51D0(uint64_t a1, uint64_t a2)
{
  sub_268CDA184();
  sub_268CD945C();
  return sub_268F9B8E4();
}

uint64_t sub_268CD5214(uint64_t a1, uint64_t a2)
{
  sub_268CDA184();
  sub_268CD945C();
  return sub_268F9B8F4();
}

uint64_t sub_268CD5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_268F9B3A4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268CD549C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268CD54FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_268F9B394();
    return sub_268F9B384();
  }

  return result;
}

uint64_t sub_268CD5570@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_268F9B584();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_268CD5730(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD5844;

  return v6(a1);
}

uint64_t sub_268CD5844()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_268CD5998(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_268CD5A34(v4, v5, a3);
  v8 = *a1;

  sub_268F9B3C4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_268CD5A34(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_268CD5BD8(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_268CD9C98(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_268CD9C98(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

void *sub_268CD5BD8(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_268F9B584();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_268CD5F90(v22, v17, v16);
        sub_268F9B3D4();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_268CD610C(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_268F9B504();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_268F9B584();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_268CD5F90(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_268F9B5A4();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_268F9B5A4();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_268CD610C(uint64_t a1, uint64_t a2)
{
  v7 = sub_268CD61C8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBC10, &unk_268F9D4C0);
  inited = swift_initStackObject();
  sub_268CD69D8(inited, 1);
  *v3 = 0;
  sub_268CD6A24();
  sub_268CD6A58(v4);

  v8 = sub_268CD6E00(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_268CD61C8(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_268F9AF24();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_268CD7320();
  }

  v10 = sub_268CD6E18(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_268F9B5A4();
    __break(1u);
    return sub_268CD7320();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_268CD6F5C(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_268F9B504();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_268CD6F5C(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_268F9B4C4();
  if (v2)
  {
LABEL_29:
    sub_268F9B584();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_268F9B584();
    __break(1u);
  }

  sub_268CD9D30(v17);
  return v10;
}

uint64_t sub_268CD69D8(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_268CD6A58(uint64_t a1)
{
  v18 = sub_268CD6E00(a1);
  v2 = sub_268CD6E00(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_268CD7350(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_268F9B5A4();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_268CD74BC(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_268F9B584();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_268F9B584();
    __break(1u);
    goto LABEL_21;
  }

  sub_268CD6F5C((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_268CD5564();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_268CD6E18(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBC10, &unk_268F9D4C0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_268CD6F5C(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_268F9B5A4();
    __break(1u);
  }

  result = sub_268F9B5A4();
  __break(1u);
  return result;
}

unint64_t sub_268CD70AC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D62DB90](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_268F9B584();
    __break(1u);
  }

  v5 = sub_268F9AF64();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_268CD7320()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_268CD7350(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_268CD6E18(v4, v6);
  if (v7)
  {
    sub_268CD74C4((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_268CD6F5C((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_268CD74C4(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_268F9B5A4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_268CD75EC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_268CD7620()
{
  v2 = qword_2802DCAC0;
  if (!qword_2802DCAC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCAC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268CD7684()
{
  v2 = qword_280FE2828;
  if (!qword_280FE2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802DBA50, &qword_268F9E2F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2828);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

unint64_t sub_268CD7780()
{
  v2 = qword_280FE27E0;
  if (!qword_280FE27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802DBA40, &unk_268F9C870);
    sub_268CD7818();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE27E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD7818()
{
  v2 = qword_280FE2808;
  if (!qword_280FE2808)
  {
    type metadata accessor for INDeviceCategory(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2808);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for INDeviceCategory(uint64_t a1)
{
  v5 = qword_280FE27F0;
  if (!qword_280FE27F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280FE27F0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268CD795C()
{
  v2 = qword_2802DBA60;
  if (!qword_2802DBA60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DBA60);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268CD79C0(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v14 = v1[4];
  v10 = (*(*(v14 - 8) + 80) + 48) & ~*(*(v14 - 8) + 80);
  v3 = (v10 + *(*(v14 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v11 = *(v1 + v3);
  v4 = (v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v4;
  v13 = v4[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268CD7B50;

  return sub_268CD0FC0(a1, v8, v9, v1 + v10, v11, v12, v13, v14);
}

uint64_t sub_268CD7B50()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_268CD7C78(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = v3;
  v8 = (*(a3 + 16) + **(a3 + 16));
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = *(v3 + 16);
  v4[1] = sub_268CD7DB8;

  return v8(a1 & 1, a2, a3);
}

uint64_t sub_268CD7DB8(__int16 a1)
{
  v6 = *v1;
  *(v6 + 16) = *v1;
  v4 = a1;
  v5 = HIBYTE(a1);

  LOBYTE(v7) = v4;
  HIBYTE(v7) = v5;
  v2 = *(*(v6 + 16) + 8);

  return v2(v7);
}

unint64_t type metadata accessor for ReadingOptions(uint64_t a1)
{
  v5 = qword_2802DBAD0;
  if (!qword_2802DBAD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAD0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for WritingOptions(uint64_t a1)
{
  v5 = qword_2802DBAD8;
  if (!qword_2802DBAD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAD8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INIntentResponseCode(uint64_t a1)
{
  v5 = qword_2802DBAE0;
  if (!qword_2802DBAE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAE0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ComparisonResult(uint64_t a1)
{
  v5 = qword_2802DBAE8;
  if (!qword_2802DBAE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAE8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for FLOWSchemaFLOWStatusReason(uint64_t a1)
{
  v5 = qword_2802DBAF0;
  if (!qword_2802DBAF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAF0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INGetSettingIntentResponseCode(uint64_t a1)
{
  v5 = qword_2802DBAF8;
  if (!qword_2802DBAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBAF8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INNumericSettingUnit(uint64_t a1)
{
  v5 = qword_2802DBB00;
  if (!qword_2802DBB00)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB00);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INBoundedSettingValue(uint64_t a1)
{
  v5 = qword_2802DBB08;
  if (!qword_2802DBB08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB08);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INSettingAction(uint64_t a1)
{
  v5 = qword_2802DBB10;
  if (!qword_2802DBB10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB10);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MGProductType(uint64_t a1)
{
  v5 = qword_2802DBB18;
  if (!qword_2802DBB18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INSetNumericSettingIntentResponseCode(uint64_t a1)
{
  v5 = qword_2802DBB20;
  if (!qword_2802DBB20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AFBluetoothDeviceSettingBooleanValue(uint64_t a1)
{
  v5 = qword_2802DBB28;
  if (!qword_2802DBB28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB28);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AFBluetoothDeviceSettingResponseStatus(uint64_t a1)
{
  v5 = qword_2802DBB30;
  if (!qword_2802DBB30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB30);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for BCBatteryDeviceAccessoryCategory(uint64_t a1)
{
  v5 = qword_2802DBB38;
  if (!qword_2802DBB38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB38);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for UNNotificationAnnouncementCarPlaySetting(uint64_t a1)
{
  v5 = qword_2802DBB40;
  if (!qword_2802DBB40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB40);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for UNNotificationSetting(uint64_t a1)
{
  v5 = qword_2802DBB48;
  if (!qword_2802DBB48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB48);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AXSMotionCuesMode(uint64_t a1)
{
  v5 = qword_2802DBB50;
  if (!qword_2802DBB50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INSetBinarySettingIntentResponseCode(uint64_t a1)
{
  v5 = qword_2802DBB58;
  if (!qword_2802DBB58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBB58);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INBinarySettingValue(uint64_t a1)
{
  v5 = qword_280FE27B0;
  if (!qword_280FE27B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280FE27B0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for INIntentSlotValueType(uint64_t a1)
{
  v5 = qword_280FE2788;
  if (!qword_280FE2788)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280FE2788);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268CD8B04()
{
  v2 = qword_2802DBB68;
  if (!qword_2802DBB68)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8B9C()
{
  v2 = qword_2802DBB70;
  if (!qword_2802DBB70)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8C34()
{
  v2 = qword_2802DBB78;
  if (!qword_2802DBB78)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8CCC()
{
  v2 = qword_2802DBB80;
  if (!qword_2802DBB80)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8D64()
{
  v2 = qword_2802DBB88;
  if (!qword_2802DBB88)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8DFC()
{
  v2 = qword_2802DBB90;
  if (!qword_2802DBB90)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8E94()
{
  v2 = qword_2802DBB98;
  if (!qword_2802DBB98)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8F2C()
{
  v2 = qword_2802DBBA0;
  if (!qword_2802DBBA0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD8FC4()
{
  v2 = qword_2802DBBA8;
  if (!qword_2802DBBA8)
  {
    type metadata accessor for BCBatteryDeviceAccessoryCategory(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD905C()
{
  v2 = qword_280FE2790;
  if (!qword_280FE2790)
  {
    type metadata accessor for INIntentSlotValueType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD90DC()
{
  v2 = qword_280FE27F8;
  if (!qword_280FE27F8)
  {
    type metadata accessor for INDeviceCategory(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE27F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD915C()
{
  v2 = qword_2802DBBB0;
  if (!qword_2802DBBB0)
  {
    type metadata accessor for INIntentSlotValueType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD91DC()
{
  v2 = qword_2802DBBB8;
  if (!qword_2802DBBB8)
  {
    type metadata accessor for INSetBinarySettingIntentResponseCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD925C()
{
  v2 = qword_2802DBBC0;
  if (!qword_2802DBBC0)
  {
    type metadata accessor for INBinarySettingValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD92DC()
{
  v2 = qword_2802DBBC8;
  if (!qword_2802DBBC8)
  {
    type metadata accessor for BCBatteryDeviceAccessoryCategory(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD935C()
{
  v2 = qword_2802DBBD0;
  if (!qword_2802DBBD0)
  {
    type metadata accessor for AFBluetoothDeviceSettingResponseStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD93DC()
{
  v2 = qword_2802DBBD8;
  if (!qword_2802DBBD8)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD945C()
{
  v2 = qword_2802DBBE0;
  if (!qword_2802DBBE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD94D4()
{
  v2 = qword_2802DBBE8;
  if (!qword_2802DBBE8)
  {
    type metadata accessor for INBoundedSettingValue(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD9554()
{
  v2 = qword_2802DBBF0;
  if (!qword_2802DBBF0)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBBF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_268CD95D4(const void *a1, void *a2)
{
  v6 = sub_268F9B0E4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268CD96FC(uint64_t a1)
{
  v3 = sub_268F9B0E4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268CD97A4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268CD5730(a1, v6);
}

uint64_t sub_268CD98C4(char a1)
{
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v5 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = *(v2 + 16);
  v3[1] = sub_268CD7B50;

  return sub_268CD23E4(a1 & 1, v1 + v5, v6, v7);
}

uint64_t sub_268CD9A28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_268CD9A64()
{
  v2 = qword_2802DBC00;
  if (!qword_2802DBC00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268CD9B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_268CD9B80();
  v5 = MEMORY[0x277D849A8];

  return sub_268F75374(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_268CD9B80()
{
  v2 = qword_2802DBC08;
  if (!qword_2802DBC08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC08);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_268CD9C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t type metadata accessor for Base64EncodingOptions(uint64_t a1)
{
  v5 = qword_2802DBC18;
  if (!qword_2802DBC18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBC18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for AFAnnouncementRequestTypes(uint64_t a1)
{
  v5 = qword_2802DBC20;
  if (!qword_2802DBC20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBC20);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CompareOptions(uint64_t a1)
{
  v5 = qword_2802DBC28;
  if (!qword_2802DBC28)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2802DBC28);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_268CD9F3C()
{
  v2 = qword_2802DBC30;
  if (!qword_2802DBC30)
  {
    type metadata accessor for AFAnnouncementRequestTypes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CD9FD4()
{
  v2 = qword_2802DBC38;
  if (!qword_2802DBC38)
  {
    type metadata accessor for AFAnnouncementRequestTypes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CDA06C()
{
  v2 = qword_2802DBC40;
  if (!qword_2802DBC40)
  {
    type metadata accessor for AFAnnouncementRequestTypes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CDA104()
{
  v2 = qword_2802DBC48;
  if (!qword_2802DBC48)
  {
    type metadata accessor for AFAnnouncementRequestTypes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CDA184()
{
  v2 = qword_2802DBC50;
  if (!qword_2802DBC50)
  {
    type metadata accessor for AFAnnouncementRequestTypes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DBC50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268CDA204()
{
  type metadata accessor for SetupHandler();
  result = sub_268CDA260();
  qword_2802F0728 = result;
  return result;
}

uint64_t *sub_268CDA29C()
{
  if (qword_2802DAF30 != -1)
  {
    swift_once();
  }

  return &qword_2802F0728;
}

uint64_t sub_268CDA2FC()
{
  v1 = *sub_268CDA29C();

  return v1;
}

uint64_t sub_268CDA350(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "Determining the type of setup.", 30, 2);

  MEMORY[0x277D82BD8](v6);

  sub_268CDA484();
  v8 = sub_268CD42AC(8, 0);
  a2();
  MEMORY[0x277D82BD8](v8);
}

unint64_t sub_268CDA484()
{
  v2 = qword_2802DE900;
  if (!qword_2802DE900)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE900);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268CDA54C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  if (a2 == 2)
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  else
  {
    v13[11] = MEMORY[0x277D839B0];
    *(v13 + 64) = a2 & 1;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = MEMORY[0x277D839B0];
  *(v13 + 112) = a3;
  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268CDA85C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsBinarySetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  if (a2 == 2)
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  else
  {
    v13[11] = MEMORY[0x277D839B0];
    *(v13 + 64) = a2 & 1;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = MEMORY[0x277D839B0];
  *(v13 + 112) = a3;
  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268CDAB54(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  if (a2 == 2)
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  else
  {
    v13[11] = MEMORY[0x277D839B0];
    *(v13 + 64) = a2 & 1;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = MEMORY[0x277D839B0];
  *(v13 + 112) = a3;
  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268CDAE64(uint64_t a1, char a2, char a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;

  if (a1)
  {
    v13[5] = type metadata accessor for SettingsMultiSetting(0);
    v13[2] = a1;
  }

  else
  {
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  v13[6] = sub_268F9AEF4();
  v13[7] = v6;
  if (a2 == 2)
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  else
  {
    v13[11] = MEMORY[0x277D839B0];
    *(v13 + 64) = a2 & 1;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;
  v13[17] = MEMORY[0x277D839B0];
  *(v13 + 112) = a3;
  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268CDB15C(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v5;
  *v5 = sub_268F9AEF4();
  v17[1] = v6;

  if (a1)
  {
    v17[5] = type metadata accessor for SettingsNumericSetting(0);
    v17[2] = a1;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v17[6] = sub_268F9AEF4();
  v17[7] = v7;

  if (a2)
  {
    v17[11] = sub_268F9AA44();
    v17[8] = a2;
  }

  else
  {
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
  }

  v17[12] = sub_268F9AEF4();
  v17[13] = v8;
  v12 = MEMORY[0x277D839B0];
  v17[17] = MEMORY[0x277D839B0];
  *(v17 + 112) = a3;
  v17[18] = sub_268F9AEF4();
  v17[19] = v9;
  v17[23] = v12;
  *(v17 + 160) = a4;
  v17[24] = sub_268F9AEF4();
  v17[25] = v10;
  v17[29] = v12;
  *(v17 + 208) = a5;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268CDB484(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v5;
  *v5 = sub_268F9AEF4();
  v17[1] = v6;

  if (a1)
  {
    v17[5] = type metadata accessor for SettingsNumericSetting(0);
    v17[2] = a1;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v17[6] = sub_268F9AEF4();
  v17[7] = v7;

  if (a2)
  {
    v17[11] = sub_268F9AA44();
    v17[8] = a2;
  }

  else
  {
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
  }

  v17[12] = sub_268F9AEF4();
  v17[13] = v8;
  v12 = MEMORY[0x277D839B0];
  v17[17] = MEMORY[0x277D839B0];
  *(v17 + 112) = a3;
  v17[18] = sub_268F9AEF4();
  v17[19] = v9;
  v17[23] = v12;
  *(v17 + 160) = a4;
  v17[24] = sub_268F9AEF4();
  v17[25] = v10;
  v17[29] = v12;
  *(v17 + 208) = a5;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268CDB794(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268CDB9C4(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = sub_268F9AA44();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268CDBBDC(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268CDBDD0(uint64_t a1, char a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsBinarySetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;
  v7[11] = MEMORY[0x277D839B0];
  *(v7 + 64) = a2;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t type metadata accessor for GetSettingIntentCATs(uint64_t a1)
{
  v2 = qword_280FE4BB8;
  if (!qword_280FE4BB8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268CDC020(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268CDC0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

void *sub_268CDC358(const void *a1, void *a2)
{
  v6 = sub_268F99144();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268CDC480(uint64_t a1)
{
  v3 = sub_268F99144();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268CDC528()
{
  type metadata accessor for GetBluetoothHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81F8 = result;
  return result;
}

uint64_t sub_268CDC590()
{
  v1 = *sub_268D35434();

  return v1;
}

uint64_t *sub_268CDC618()
{
  if (qword_280FE53E8 != -1)
  {
    swift_once();
  }

  return &qword_280FE81F8;
}

uint64_t sub_268CDC678()
{
  v1 = *sub_268CDC618();

  return v1;
}

uint64_t sub_268CDC6A8()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268CDC6E0(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return v6;
}

double sub_268CDC750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetBluetoothHandler handling intent", 35, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DB93EC();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268CDCC34, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268CDC968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = sub_268CDD064;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v25 = 0;
  v29 = sub_268F9AD14();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v18 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v28 = &v17 - v18;
  v33 = sub_268F9AD34();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v20, v21, v22);
  v32 = &v17 - v19;
  v46 = v7;
  v45 = v8;
  v43 = v9;
  v44 = v10;
  sub_268CDD000();
  v35 = sub_268F9B2C4();

  MEMORY[0x277D82BE0](v20);

  v11 = swift_allocObject();
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v11[2] = v24;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = v14;
  v41 = v15;
  v42 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = 0;
  v39 = sub_268D5BAEC;
  v40 = &block_descriptor;
  v34 = _Block_copy(&aBlock);

  sub_268D5D06C();
  sub_268D5D084();
  MEMORY[0x26D62DF20](v25, v32, v28, v34);
  (*(v26 + 8))(v28, v29);
  (*(v30 + 8))(v32, v33);
  _Block_release(v34);
  *&result = MEMORY[0x277D82BD8](v35).n128_u64[0];
  return result;
}

double sub_268CDCC68(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D37834();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

unint64_t sub_268CDD000()
{
  v2 = qword_280FE66D0;
  if (!qword_280FE66D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE66D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_268CDD0DC()
{
  v2 = qword_280FE2750;
  if (!qword_280FE2750)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2750);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268CDD140()
{
  v2 = qword_280FE2768;
  if (!qword_280FE2768)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2768);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268CDD1A4()
{
  v2 = qword_280FE2740;
  if (!qword_280FE2740)
  {
    sub_268CDD0DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CDD224()
{
  v2 = qword_280FE2880;
  if (!qword_280FE2880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2880);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268CDD29C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2;
}

uint64_t sub_268CDD300(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return swift_endAccess();
}

uint64_t sub_268CDD400()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268CDD444, 0);
}

uint64_t sub_268CDD444()
{
  v1 = v0[4];
  v0[2] = v0;
  v0[5] = *(v1 + 40);

  v2 = swift_task_alloc();
  *(v4 + 48) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CDD500;

  return sub_268D51CC4();
}

uint64_t sub_268CDD500(__int16 a1)
{
  v6 = *v1;
  *(v6 + 16) = *v1;
  v4 = a1;
  v5 = HIBYTE(a1);

  LOBYTE(v7) = v4;
  HIBYTE(v7) = v5;
  v2 = *(*(v6 + 16) + 8);

  return v2(v7);
}

uint64_t sub_268CDD680()
{
  type metadata accessor for GetConversationAwarenessHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDD6E0(v2, v0 & 1);
  qword_280FE8038 = result;
  return result;
}

uint64_t *sub_268CDD738()
{
  if (qword_280FE3030 != -1)
  {
    swift_once();
  }

  return &qword_280FE8038;
}

uint64_t sub_268CDD798()
{
  v1 = *sub_268CDD738();

  return v1;
}

uint64_t sub_268CDD7C8()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_268CDD800(uint64_t a1, char a2)
{
  v3 = sub_268DB97B4();
  v4 = v3[1];
  v5 = *(v3 + 16);
  *(v2 + 16) = *v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return v9;
}

uint64_t sub_268CDD978()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_268CD7DB8;

  return sub_268CDD400();
}

uint64_t sub_268CDDA50()
{
  type metadata accessor for SetLowPowerModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F0730 = result;
  return result;
}

uint64_t *sub_268CDDAB8()
{
  if (qword_2802DAF38 != -1)
  {
    swift_once();
  }

  return &qword_2802F0730;
}

uint64_t sub_268CDDB18()
{
  v1 = *sub_268CDDAB8();

  return v1;
}

uint64_t sub_268CDDB48(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v22 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v23 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v22, &dword_268CBE000, v23, "SetLowPowerModeHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v23);
  v25 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v25, &protocol witness table for INSetBinarySettingIntent);
  if (v4)
  {
    v18 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v18 = sub_268F9AE04();
  }

  MEMORY[0x277D82BE0](a1);
  if (v18)
  {
    v17 = 1;
  }

  else
  {
    SettingIntent.deviceCategory.getter(v25, &protocol witness table for INSetBinarySettingIntent);
    if (v5)
    {
      v16 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v16 = sub_268F9AE04();
    }

    v17 = v16;
  }

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](a1);
  if (v17)
  {
    v15 = 1;
  }

  else
  {
    SettingIntent.deviceCategory.getter(v25, &protocol witness table for INSetBinarySettingIntent);
    if (v6)
    {
      v14 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v14 = sub_268F9AE04();
    }

    v15 = v14;
  }

  MEMORY[0x277D82BD8](a1);
  if ((v15 & 1) == 0)
  {
    return sub_268CDE134(a2, a3);
  }

  v9 = sub_268D398B4();

  v7 = sub_268DB9814();
  v10 = *v7;
  v11 = v7[1];
  v12 = *(v7 + 16);
  v13 = *(v21 + 24);

  sub_268DAAB84(v9 & 1, a1, v10, v11, v12, v13 & 1, a2, a3, sub_268CDE2A4, v21, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268CDE2A4, v21);
}

uint64_t sub_268CDE0C4(char a1, uint64_t a2)
{

  sub_268D398F0(a1 & 1);
}

uint64_t sub_268CDE134(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "Low power mode is not supported on this device.", 47, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(3);
  v9 = sub_268DAB158(0, v7, v3);

  a1(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268CDE2CC()
{
  type metadata accessor for SetAXColorFiltersRedGreenHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F0738 = result;
  return result;
}

uint64_t *sub_268CDE334()
{
  if (qword_2802DAF40 != -1)
  {
    swift_once();
  }

  return &qword_2802F0738;
}

uint64_t sub_268CDE394()
{
  v1 = *sub_268CDE334();

  return v1;
}

uint64_t sub_268CDE3C4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXColorFiltersRedGreenHandler handling intent", 48, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3EBB4();

  v4 = sub_268DB9874();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268CDE60C, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268CDE60C, v8);
}

uint64_t sub_268CDE578(char a1, uint64_t a2)
{

  sub_268D3EBE4(a1 & 1);
}

uint64_t sub_268CDE634()
{
  v2 = *(v0 + qword_2802DBFD0);

  return v2;
}

uint64_t sub_268CDE668@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DBFD8;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268CDE6D4()
{
  v2 = *(v0 + qword_2802DBFE0);

  return v2;
}

uint64_t sub_268CDE730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_268CDE7C4()
{
  v2 = *(v0 + qword_2802DBFF8);

  return v2;
}

uint64_t sub_268CDE7F8()
{
  v2 = *(v0 + qword_2802DC000);

  return v2;
}

uint64_t sub_268CDE82C()
{
  v2 = *(v0 + qword_2802DC008);

  return v2;
}

uint64_t sub_268CDE860()
{
  v2 = *(v0 + qword_2802DC010);

  return v2;
}

uint64_t sub_268CDE894()
{
  v2 = *(v0 + qword_2802DC018);

  return v2;
}

uint64_t sub_268CDE8C8()
{
  v2 = *(v0 + qword_2802DC020);

  return v2;
}

uint64_t sub_268CDE8FC@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DC028;
  v2 = sub_268F99214();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268CDE968()
{
  v2 = *(v0 + qword_2802DC030);

  return v2;
}

uint64_t sub_268CDE99C()
{
  v2 = *(v0 + qword_2802DC038);

  return v2;
}

uint64_t sub_268CDE9D0()
{
  v2 = *(v0 + qword_2802DC040);

  return v2;
}

uint64_t sub_268CDEA04()
{
  v2 = *(v0 + qword_2802DC048);

  return v2;
}

uint64_t sub_268CDEA60()
{
  v2 = *(v0 + qword_2802F0740);

  return v2;
}

uint64_t sub_268CDEA94()
{
  v2 = *(v0 + qword_2802F0748);

  return v2;
}

uint64_t sub_268CDEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v160 = a1;
  v152 = a2;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v145 = a6;
  v153 = a7;
  v146 = a8;
  v161 = a9;
  v147 = a10;
  v148 = a11;
  v149 = a12;
  v150 = a13;
  v157 = a14;
  v158 = a15;
  v159 = a16;
  v151 = a17;
  v196 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v141 = *v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v133 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18, v19, v20, v21);
  v134 = &v73 - v133;
  v135 = 0;
  v136 = sub_268F99214();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135, v22, v23, v24);
  v140 = &v73 - v139;
  v154 = sub_268F9AB24();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v25 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v153, v152, v142, v143);
  v162 = &v73 - v25;
  v198 = *(v27 + qword_2802F0750);
  v197 = *(v27 + qword_2802F0750 + 8);
  v194 = v160;
  v195 = v28;
  v192 = v29;
  v193 = v30;
  v191 = v31;
  v190 = v32;
  v189 = v33;
  v188 = v34;
  v187 = v161;
  v186 = v35;
  v185 = v36;
  v184 = v37;
  v183 = v38;
  v182 = v157;
  v181 = v158;
  v180 = v159;
  v179 = v39;
  v196 = v17;
  v163 = v17;
  if (MEMORY[0x26D62DA00](v26))
  {
    v130 = sub_268F99874();
    v131 = sub_268F9B594();

    v132 = v131;
  }

  else
  {

    v132 = v153;
  }

  v40 = v154;
  v41 = v162;
  v42 = v155;
  v43 = v146;
  *(v163 + qword_2802DBFD0) = v132;
  v122 = v196;
  v120 = *(v42 + 16);
  v121 = v42 + 16;
  v120(v41, v43, v40);
  (*(v155 + 32))(v122 + qword_2802DBFD8, v162, v154);
  v124 = v196;
  sub_268F9AA44();
  v123 = v178;
  sub_268CDE730(v145, v178);
  v44 = sub_268F9AA14();
  v45 = v145;
  *(v124 + qword_2802DBFE0) = v44;
  v125 = v196;
  v126 = v177;
  sub_268CDE730(v45, v177);
  sub_268CDF978(v126, v125 + qword_2802DBFE8);
  sub_268F9AB14();
  sub_268CDF9B4();
  v129 = sub_268F9B8A4();
  v127 = *(v155 + 8);
  v128 = v155 + 8;
  v127(v162, v154);
  if (v129)
  {
    v102 = v196;
    v116 = 0;
    v101 = type metadata accessor for SetBinarySettingIntentCATs(0);
    v120(v162, v146, v154);
    v114 = sub_268F9A8C4();
    v100 = v171;
    sub_268CDE730(v145, v171);
    sub_268F9A894();
    v46 = sub_268F9A904();
    v47 = v116;
    *(v102 + qword_2802DBFF8) = v46;
    v105 = v196;
    v104 = type metadata accessor for SetBinarySettingIntentCATsSimple(v47);
    v120(v162, v146, v154);
    v103 = v170;
    sub_268CDE730(v145, v170);
    sub_268F9A894();
    v48 = sub_268F9A9F4();
    v49 = v116;
    *(v105 + qword_2802DC000) = v48;
    v108 = v196;
    v107 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v49);
    v120(v162, v146, v154);
    v106 = v168;
    sub_268CDE730(v145, v168);
    sub_268F9A894();
    v50 = sub_268F9A904();
    v169[3] = v107;
    v169[4] = &off_28798CE80;
    v169[0] = v50;
    sub_268CDF978(v169, v108 + qword_2802DBFF0);
    v111 = v196;
    v110 = type metadata accessor for SettingIntentCATs(v116);
    v120(v162, v146, v154);
    v109 = v167;
    sub_268CDE730(v145, v167);
    sub_268F9A894();
    v51 = sub_268F9A904();
    v52 = v116;
    *(v111 + qword_2802F0740) = v51;
    v115 = v196;
    v113 = type metadata accessor for SettingIntentCATsSimple(v52);
    v120(v162, v146, v154);
    v112 = v166;
    sub_268CDE730(v145, v166);
    sub_268F9A894();
    v53 = sub_268F9A9F4();
    v54 = v116;
    *(v115 + qword_2802F0748) = v53;
    v119 = v196;
    v118 = type metadata accessor for SettingIntentCATPatternsExecutor(v54);
    v120(v162, v146, v154);
    v117 = v164;
    sub_268CDE730(v145, v164);
    sub_268F9A894();
    v55 = sub_268F9A904();
    v165[3] = v118;
    v165[4] = &off_287992048;
    v165[0] = v55;
    sub_268CDF978(v165, v119 + qword_2802DC058);
  }

  else
  {
    v91 = v196;
    v97 = 0;
    type metadata accessor for SetBinarySettingIntentCATs(0);
    sub_268CDFA34();
    v56 = sub_268F9A904();
    v57 = v97;
    *(v91 + qword_2802DBFF8) = v56;
    v92 = v196;
    type metadata accessor for SetBinarySettingIntentCATsSimple(v57);
    sub_268CDFA34();
    v58 = sub_268F9A9F4();
    v59 = v97;
    *(v92 + qword_2802DC000) = v58;
    v94 = v196;
    v93 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v59);
    sub_268CDFA34();
    v60 = sub_268F9A904();
    v176[3] = v93;
    v176[4] = &off_28798CE80;
    v176[0] = v60;
    sub_268CDF978(v176, v94 + qword_2802DBFF0);
    v95 = v196;
    type metadata accessor for SettingIntentCATs(v97);
    sub_268CDFA34();
    v61 = sub_268F9A904();
    v62 = v97;
    *(v95 + qword_2802F0740) = v61;
    v96 = v196;
    type metadata accessor for SettingIntentCATsSimple(v62);
    sub_268CDFA34();
    v63 = sub_268F9A9F4();
    v64 = v97;
    *(v96 + qword_2802F0748) = v63;
    v99 = v196;
    v98 = type metadata accessor for SettingIntentCATPatternsExecutor(v64);
    sub_268CDFA34();
    v65 = sub_268F9A904();
    v175[3] = v98;
    v175[4] = &off_287992048;
    v175[0] = v65;
    sub_268CDF978(v175, v99 + qword_2802DC058);
  }

  v73 = v196;

  *(v73 + qword_2802DC008) = v161;
  v74 = v196;

  *(v74 + qword_2802DC010) = v147;
  v75 = v196;

  *(v75 + qword_2802DC018) = v148;
  v76 = v196;

  v66 = v140;
  v67 = v137;
  v68 = v150;
  v69 = v136;
  *(v76 + qword_2802DC020) = v149;
  v77 = v196;
  (*(v67 + 16))(v66, v68, v69);
  (*(v137 + 32))(v77 + qword_2802DC028, v140, v136);
  v78 = v196;

  *(v78 + qword_2802DC030) = v157;
  v79 = v196;

  *(v79 + qword_2802DC038) = v158;
  v80 = v196;

  *(v80 + qword_2802DC040) = v159;
  v81 = v196;

  v70 = v144;
  *(v81 + qword_2802DC048) = v151;
  v82 = v196;
  v83 = v174;
  sub_268CDE730(v70, v174);
  sub_268CDF978(v83, v82 + qword_2802DC050);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v86 = 0;
  v85 = sub_268F9B734();
  v84 = type metadata accessor for INIntentSlotValueType(v86);
  sub_268CDFA4C();
  v87 = sub_268F9ADA4();
  v88 = v173;
  sub_268CDE730(v144, v173);
  v89 = v172;
  sub_268CDE730(v145, v172);
  v71 = sub_268F99BD4();
  (*(*(v71 - 8) + 56))(v134, 1);
  v90 = sub_268F99AA4();

  v196 = v90;

  (*(v137 + 8))(v150, v136);

  v127(v146, v154);

  __swift_destroy_boxed_opaque_existential_0(v145);
  __swift_destroy_boxed_opaque_existential_0(v144);

  return v90;
}

unint64_t sub_268CDF9B4()
{
  v2 = qword_280FE6698;
  if (!qword_280FE6698)
  {
    sub_268F9AB24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE6698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268CDFA4C()
{
  v2 = qword_280FE2798;
  if (!qword_280FE2798)
  {
    type metadata accessor for INIntentSlotValueType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268CDFAE8(uint64_t *a1, char a2, char a3)
{
  v25 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v4 = *v3;
  v25 = a1;
  v24 = *(v4 + qword_2802F0750);
  v23 = *(v4 + qword_2802F0750 + 8);
  v22 = a2 & 1;
  v21 = a3 & 1;
  v20 = v3;
  if ((a3 & 1) != 0 || (v14 = *a1, v15 = a1[1], , v19[1] = 1, v5 = BinarySettingIdentifier.rawValue.getter(), v16 = MEMORY[0x26D62DB50](v14, v15, v5), , , (v16 & 1) == 0))
  {
    type metadata accessor for SettingsBinarySetting(0);
    v9 = *a1;
    v10 = a1[1];

    return SettingsBinarySetting.__allocating_init(settingId:value:)(v9, v10, a2 & 1);
  }

  else
  {

    v19[0] = 1;
    v13 = sub_268F47F9C(v19);

    if (v13 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v13 & 1;
    }

    if (v12 != 2)
    {
      sub_268D2CBA4(v12 & 1, 1);
    }

    type metadata accessor for SettingsBinarySetting(0);
    v6 = BinarySettingIdentifier.rawValue.getter();
    return SettingsBinarySetting.__allocating_init(settingId:value:)(v6, v7, 1u);
  }
}

uint64_t sub_268CDFDC0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v47 = v60;
  v41 = a1;
  v45 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v40 = sub_268D284BC;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v56 = 0;
  v48 = *v5;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v45, v6, v42, v43);
  v49 = (&v23 - v46);
  v66 = v8;
  v65 = v9;
  v64 = v10;
  v62 = v11;
  v63 = v12;
  v61 = v5;
  v60[1] = *(v48 + qword_2802F0750);
  v60[0] = *(v48 + qword_2802F0750 + 8);
  v50 = [v9 settingMetadata];
  if (v50)
  {
    v38 = v50;
    v34 = v50;
    v35 = [v50 settingId];
    *&v36 = sub_268F9AE24();
    *(&v36 + 1) = v13;
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    v37 = v36;
  }

  else
  {
    v37 = 0uLL;
  }

  v57 = v37;
  if (*(&v37 + 1))
  {
    v58 = v57;
  }

  else
  {
    v58._countAndFlagsBits = sub_268F9AEF4();
    v58._object = v14;
    if (v57._object)
    {
      sub_268CD9D30(&v57);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v58);
  v33 = v59;
  if (v59 != 65)
  {
    v32 = v33;
    v30 = v33;
    v56 = v33;
    v31 = *(v39 + qword_2802DC048);

    v51 = v30;
    sub_268F7C430();

    if (v52[3])
    {
      p_dst = &__dst;
      sub_268CDF978(v52, &__dst);
      v28 = v54;
      v29 = v55;
      __swift_project_boxed_opaque_existential_1(p_dst, v54);
      if ((*(v29 + 16))(v45, v28))
      {
        v26 = &__dst;
        v23 = v54;
        v24 = v55;
        __swift_project_boxed_opaque_existential_1(&__dst, v54);

        MEMORY[0x277D82BE0](v45);
        v15 = swift_allocObject();
        v16 = v44;
        v17 = v39;
        v18 = v41;
        v19 = v24;
        v20 = v15;
        v21 = v45;
        v25 = v20;
        v20[2] = v43;
        v20[3] = v16;
        v20[4] = v17;
        v20[5] = v18;
        v20[6] = v21;
        (*(v19 + 24))();

        return __swift_destroy_boxed_opaque_existential_0(v26);
      }

      __swift_destroy_boxed_opaque_existential_0(&__dst);
    }

    else
    {
      sub_268D28414(v52);
    }
  }

  sub_268CE05BC(v41, v45, v42, v49);
  v43(v49);
  sub_268D28378(v49);
}

uint64_t sub_268CE034C(void *a1, void (*a2)(char *), uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v22 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v33 = 0;
  v32 = 0;
  v24 = *a4;
  v23 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v22, v17, v18, v19);
  v25 = (&v16 - v23);
  v39 = v7;
  v37 = v8;
  v38 = v9;
  v36 = v10;
  v26 = 0;
  v35 = *(v24 + qword_2802F0750);
  v34 = *(v24 + qword_2802F0750 + 8);
  v33 = v11;
  v32 = v12;
  v13 = [v7 code];
  v29 = &v31;
  v31 = v13;
  v27 = &v30;
  v30 = 3;
  v28 = type metadata accessor for INSetBinarySettingIntentResponseCode(v26);
  sub_268CD91DC();
  if (sub_268F9B754())
  {

    MEMORY[0x277D82BE0](v22);
    sub_268CE05BC(v20, v21, v22, v25);
  }

  else
  {

    MEMORY[0x277D82BE0](v22);
    sub_268CE5980(v20, v21, v22, v25);
  }

  v14 = MEMORY[0x277D82BD8](v22);
  (v17)(v25, v14);
  sub_268D28378(v25);
}

void sub_268CE05BC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v370 = v449;
  v371 = a4;
  v392 = a1;
  v394 = a2;
  v393 = a3;
  v373 = "Providing verbose version of changedBinaryValueTo CAT for %@.";
  v374 = &dword_268CBE000;
  v375 = "SetBinarySettingIntentResponse response has invalid new value %@";
  v376 = "SetBinarySettingIntentResponse response has invalid old value %@";
  v481 = 0;
  v480 = 0;
  v479 = 0;
  v478 = 0;
  v477 = 0;
  v476 = 0;
  v474 = 0;
  v472 = 0;
  v471 = 0;
  v470 = 0;
  v468 = 0;
  v465 = 0;
  v464 = 0;
  v462 = 0;
  v463 = 0;
  v461 = 0;
  v460 = 0;
  v443 = 0;
  v444 = 0;
  v442 = 0;
  v439 = 0;
  v440 = 0;
  v438 = 0;
  v436 = 0;
  v437 = 0;
  v435 = 0;
  v434 = 0;
  v424 = 0;
  v425 = 0;
  v410 = *v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v377 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v378 = v125 - v377;
  v379 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - v377, v10, v11, v12);
  v380 = v125 - v379;
  v381 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - v379, v14, v15, v16);
  v382 = v125 - v381;
  v383 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - v381, v18, v19, v20);
  v384 = v125 - v383;
  v385 = sub_268F9AB24();
  v386 = *(v385 - 8);
  v387 = v385 - 8;
  v388 = (*(v386 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v385, v21, v22, v23);
  v389 = v125 - v388;
  v390 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - v388, v25, v26, v27);
  v391 = v125 - v390;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v407 = *(*(v395 - 8) + 64);
  v396 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v394, v393, v28, v29);
  v397 = (v125 - v396);
  v398 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v31, v125 - v396, v32);
  v399 = (v125 - v398);
  v400 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v34, v125 - v398, v35);
  v401 = (v125 - v400);
  v402 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v37, v125 - v400, v38);
  v403 = (v125 - v402);
  v404 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v40, v125 - v402, v41);
  v405 = (v125 - v404);
  v481 = v125 - v404;
  v406 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v43, v44, v45);
  v408 = (v125 - v406);
  v409 = (v407 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, v47, v125 - v406, v48);
  v411 = (v125 - v409);
  v480 = v125 - v409;
  v479 = v49;
  v478 = v50;
  v477 = v51;
  v476 = v4;
  v412 = *(v410 + qword_2802F0750);
  v475[2] = v412;
  v413 = *(v410 + qword_2802F0750 + 8);
  v475[1] = v413;
  v414 = v482;
  sub_268D23814(v50, v51, v482);
  memcpy(__dst, v414, sizeof(__dst));
  if (!__dst[1])
  {
    sub_268D284D4();
    v125[1] = 1;
    v122 = swift_allocError();
    v123 = v371;
    *v124 = 4;
    *v123 = v122;
    swift_storeEnumTagMultiPayload();
    return;
  }

  memcpy(v484, __dst, sizeof(v484));
  v369 = sub_268D2403C(*&v484[24], 0, 1);
  if (v369 == 2)
  {
    v134 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v134);
    v132 = sub_268F9B294();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v131 = sub_268F9B734();
    v129 = v112;
    MEMORY[0x277D82BE0](v393);
    v126 = v475;
    v475[0] = v393;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v127 = sub_268F9AE64();
    v128 = v113;
    v129[3] = MEMORY[0x277D837D0];
    v114 = sub_268CDD224();
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v129[4] = v114;
    *v117 = v115;
    v117[1] = v116;
    sub_268CD0F7C();
    v133 = v118;
    sub_268F9AC04(v376, 64, 2, v374, v134, v132);

    MEMORY[0x277D82BD8](v134);
    sub_268D284D4();
    v135 = 1;
    v119 = swift_allocError();
    v120 = v371;
    *v121 = 3;
    *v120 = v119;
    swift_storeEnumTagMultiPayload();
    sub_268CD9D30(v484);
    return;
  }

  v368 = v369;
  v366 = v369;
  v474 = v369 & 1;
  v367 = sub_268D2403C(*&v484[32], 0, 1);
  if (v367 == 2)
  {
    v144 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v144);
    v142 = sub_268F9B294();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v141 = sub_268F9B734();
    v139 = v102;
    MEMORY[0x277D82BE0](v393);
    v136 = &v473;
    v473 = v393;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v137 = sub_268F9AE64();
    v138 = v103;
    v139[3] = MEMORY[0x277D837D0];
    v104 = sub_268CDD224();
    v105 = v137;
    v106 = v138;
    v107 = v139;
    v139[4] = v104;
    *v107 = v105;
    v107[1] = v106;
    sub_268CD0F7C();
    v143 = v108;
    v145 = 2;
    sub_268F9AC04(v375, 64, 2, v374, v144, v142);

    MEMORY[0x277D82BD8](v144);
    sub_268D284D4();
    v146 = 1;
    v109 = swift_allocError();
    v110 = v371;
    *v111 = v145;
    *v110 = v109;
    swift_storeEnumTagMultiPayload();
    sub_268CD9D30(v484);
    return;
  }

  v365 = v367;
  v362 = v367;
  v472 = v367 & 1;
  v52 = sub_268CDFACC();
  v363 = sub_268CDFAE8(v484, v366 & 1, v52 & 1);
  v471 = v363;
  v364 = sub_268D24458(v366 & 1, v362 & 1);
  MEMORY[0x277D82BE0](v394);
  if (v364)
  {
    v420 = v394;
    v53 = sub_268CD7620();
    v359 = SettingIntent.settingIdentifier.getter(v53, &protocol witness table for INSetBinarySettingIntent);
    v360 = v54;

    v419 = 1;
    v358 = BinarySettingIdentifier.rawValue.getter();
    v361 = v55;

    v417[0] = v359;
    v417[1] = v360;
    *&v418 = v358;
    *(&v418 + 1) = v361;
    if (v360)
    {
      sub_268D28874(v417, v416);
      if (*(&v418 + 1))
      {
        v354 = &v415;
        v415 = v418;
        v355 = v416;
        v356 = MEMORY[0x26D62DB50](v416[0], v416[1], v418, *(&v418 + 1));
        sub_268CD9D30(v354);
        sub_268CD9D30(v355);
        sub_268CD9D30(v417);
        v357 = v356;
LABEL_11:
        v352 = v357 ^ 1;

        v353 = v352;
        goto LABEL_15;
      }

      sub_268CD9D30(v416);
    }

    else if (!*(&v418 + 1))
    {
      sub_268CD9D30(v417);
      v357 = 1;
      goto LABEL_11;
    }

    sub_268D28550(v417);
    v357 = 0;
    goto LABEL_11;
  }

  v353 = 0;
LABEL_15:
  v351 = v353;
  MEMORY[0x277D82BD8](v394);
  if ((v351 & 1) == 0)
  {
    v470 = 0;
    sub_268DAB218(v394);
    v295 = v469;
    v468 = v469;
    if (v469 == 65)
    {
      v293 = 0;
    }

    else
    {
      v294 = v295;
      v289 = v295;
      v442 = v295;
      v290 = *(v372 + qword_2802DC018);

      v441 = v289;
      v291 = sub_268E12DF8(&v441);
      v292 = v69;

      if ((v292 & 0xFF00) == 0x400)
      {
        v293 = 0;
      }

      else
      {
        v286 = v291;
        v287 = v292;
        v288 = BYTE1(v292);
        v282 = v288;
        v279 = v292;
        v280 = v291;
        v439 = v291;
        v440 = v292 & 0xFF01;
        v281 = *(v372 + qword_2802DC020);

        v285 = sub_268F23C10();

        v438 = v285;
        v283 = sub_268E127A4(v282);
        v284 = v70;
        v436 = v283;
        v437 = v70;
        MEMORY[0x277D82BE0](v285);
        if (v285)
        {
          v278 = v285;
          v274 = v285;

          v273 = sub_268F9AE14();

          v275 = [v274 integerForKey_];
          MEMORY[0x277D82BD8](v273);
          MEMORY[0x277D82BD8](v274);
          v276 = v275;
          v277 = 0;
        }

        else
        {
          v276 = 0;
          v277 = 1;
        }

        v272 = v276;
        if (v277)
        {
          v270 = 0;
        }

        else
        {
          v271 = v272;
          v269 = v271;
          v435 = v271;
          if (v279)
          {
            v270 = 0;
          }

          else
          {
            v268 = v280;
            v265 = v280;
            v434 = v280;
            v266 = *(v372 + qword_2802DC018);

            v267 = sub_268E12F10();

            sub_268D28814(v484, v433);
            if (v269 < v267)
            {
              v263 = &v431;
              v431 = v265;
              v485 = *&v484[16];
              v261 = &v430;
              v430 = *&v484[16];
              v262 = type metadata accessor for INBinarySettingValue(0);
              sub_268CD925C();
              v264 = sub_268F9B754();
            }

            else
            {
              v264 = 0;
            }

            v260 = v264;
            sub_268CD9D30(v484);
            if (v260)
            {
              MEMORY[0x277D82BE0](v285);
              if (v285)
              {
                v259 = v285;
                v257 = v285;
                v258 = v269 + 1;
                if (__OFADD__(v269, 1))
                {
                  __break(1u);
                  return;
                }

                v256 = sub_268F9AE14();

                [v257 setInteger:v258 forKey:v256];
                MEMORY[0x277D82BD8](v256);
                MEMORY[0x277D82BD8](v257);
              }

              v254 = *sub_268DC7B48();
              MEMORY[0x277D82BE0](v254);
              v252 = sub_268F9B284();
              v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
              v251 = sub_268F9B734();
              v249 = v72;
              sub_268D28814(v484, v432);
              v486 = *v484;
              *(v249 + 24) = MEMORY[0x277D837D0];
              v73 = sub_268CDD224();
              v74 = v249;
              *(v249 + 32) = v73;
              *v74 = v486;
              sub_268CD0F7C();
              v253 = v75;
              sub_268F9AC04(v373, 61, 2, v374, v254, v252);

              MEMORY[0x277D82BD8](v254);
              v470 = 1;
              v255 = 1;
            }

            else
            {
              v255 = 0;
            }

            v270 = v255;
          }
        }

        v248 = v270;

        MEMORY[0x277D82BD8](v285);
        v293 = v248;
      }
    }

    v245 = v293;
    v246 = *(v372 + qword_2802DC008);

    v467 = v295;
    v247 = sub_268E57758(&v467);

    if (v247)
    {
      v244 = 1;
    }

    else
    {
      v466 = v295;
      v244 = sub_268CE2BF4(&v466);
    }

    v237 = v244;

    v241 = 1;
    v465 = v237 & 1;
    v238 = [v394 temporalEventTrigger];
    v464 = v238;
    v239 = sub_268D25234(v238);
    v240 = v76;
    v462 = v239;
    v463 = v76;
    v242 = sub_268D245A8(v238);
    v461 = v242 & v241;
    v460 = 0;
    v459 = 0;
    v243 = [v394 settingMetadata];
    if (v243 && (v236 = v243, v234 = v243, v235 = [v243 targetApp], *&v77 = MEMORY[0x277D82BD8](v234).n128_u64[0], v235))
    {
      v233 = v235;
      v231 = v235;
      v78 = [v235 bundleIdentifier];
      v232 = v78;
      if (v78)
      {
        v230 = v232;
        v225 = v232;
        v226 = sub_268F9AE24();
        v227 = v79;
        MEMORY[0x277D82BD8](v225);
        v228 = v226;
        v229 = v227;
      }

      else
      {
        v228 = 0;
        v229 = 0;
      }

      v222 = v229;
      v221 = v228;
      MEMORY[0x277D82BD8](v231);
      v223 = v221;
      v224 = v222;
    }

    else
    {
      v223 = 0;
      v224 = 0;
    }

    v219 = v224;
    v220 = v223;
    if (v224)
    {
      v217 = v220;
      v218 = v219;
      v214 = v219;
      v212 = v220;
      v443 = v220;
      v444 = v219;
      sub_268F9A994();

      v459 = sub_268DE1C68(v212, v214);

      v213 = *(v372 + qword_2802DC040);

      v215 = sub_268DFFEC0(v212, v214);

      v460 = v215 & 1;

      v216 = v215;
    }

    else
    {
      v216 = 0;
    }

    v80 = v391;
    v203 = v216;
    v81 = sub_268DB98D4();
    v207 = *v81;
    v208 = v81[1];
    v209 = *(v81 + 16);
    v210 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v210);
    (*(v386 + 16))(v80, v372 + qword_2802DBFD8, v385);
    sub_268F9AB14();
    v206 = sub_268F9AB04();
    v205 = *(v386 + 8);
    v204 = v386 + 8;
    v205(v389, v385);
    v205(v391, v385);
    v211 = 1;
    sub_268DB9934(v207, v208, v209, v210, (v206 ^ 1) & 1);
    MEMORY[0x277D82BD8](v210);
    sub_268D284D4();
    v82 = swift_allocError();
    v83 = v405;
    *v84 = 1;
    *v83 = v82;
    swift_storeEnumTagMultiPayload();
    if (v237)
    {
      v202 = [v394 settingMetadata];
      if (v202)
      {
        v201 = v202;
        v195 = v202;
        v196 = [v202 settingId];
        v197 = sub_268F9AE24();
        v198 = v85;
        MEMORY[0x277D82BD8](v195);
        MEMORY[0x277D82BD8](v196);
        v199 = v197;
        v200 = v198;
      }

      else
      {
        v199 = 0;
        v200 = 0;
      }

      v193 = v200;
      v192 = v199;

      v451 = 45;
      v191 = BinarySettingIdentifier.rawValue.getter();
      v194 = v86;

      v449[0] = v192;
      v449[1] = v193;
      v449[2] = v191;
      v450 = v194;
      if (v193)
      {
        sub_268D28874(v449, &v447);
        if (v450)
        {
          v188 = &v446;
          v446 = v447;
          v87 = *(v370 + 1);
          v187 = &v445;
          v445 = v87;
          v189 = MEMORY[0x26D62DB50](v447, *(&v447 + 1), v87, *(&v87 + 1));
          sub_268CD9D30(v187);
          sub_268CD9D30(v188);
          sub_268CD9D30(v449);
          v190 = v189;
          goto LABEL_95;
        }

        sub_268CD9D30(&v447);
      }

      else if (!v450)
      {
        sub_268CD9D30(v449);
        v190 = 1;
LABEL_95:
        v186 = v190;

        if (v186)
        {
          v183 = *(v372 + qword_2802DBFF8);

          type metadata accessor for SettingsMultiSetting(0);
          sub_268D28814(v484, v448);
          v184 = sub_268E067CC(*v484, *&v484[8], v366 & 1);
          v185 = *(v372 + qword_2802DBFE0);

          if (sub_268F9AF14())
          {
            v88 = sub_268F9A9C4();
            (*(*(v88 - 8) + 56))(v384, 1);
          }

          else
          {

            v182 = 0;
            sub_268F9A9A4();
            v89 = sub_268F9A9C4();
            (*(*(v89 - 8) + 56))(v384, 0, 1);
          }

          v181 = v459;

          sub_268F5CD3C(v184, v362 & 1, v245 & 1, v185, v384, v242, v181, v203 & 1, v403);

          sub_268D28588(v384);

          sub_268D28630(v403, v405);
        }

        else
        {
          v179 = *(v372 + qword_2802DBFF8);

          v180 = *(v372 + qword_2802DBFE0);

          v90 = sub_268F9AF14();
          if (v90)
          {
            v91 = sub_268F9A9C4();
            (*(*(v91 - 8) + 56))(v382, 1);
          }

          else
          {

            v178 = 0;
            sub_268F9A9A4();
            v92 = sub_268F9A9C4();
            (*(*(v92 - 8) + 56))(v382, 0, 1);
          }

          v177 = v459;

          sub_268F5B534(v363, v362 & 1, v245 & 1, v180, v382, v242, v177, v401);

          sub_268D28588(v382);

          sub_268D28630(v401, v405);
        }

LABEL_129:
        v101 = sub_268DB98D4();
        v149 = *v101;
        v147 = v101[1];
        v148 = *(v101 + 16);
        v150 = *sub_268DC7BA8();
        MEMORY[0x277D82BE0](v150);
        sub_268DB9B78(v149, v147, v148, v150);
        MEMORY[0x277D82BD8](v150);
        sub_268D28718(v405, v371);
        sub_268D287E8(&v459);

        MEMORY[0x277D82BD8](v238);

        sub_268CD9D30(v484);
        return;
      }

      sub_268D28550(v449);
      v190 = 0;
      goto LABEL_95;
    }

    v176 = [v394 settingMetadata];
    if (v176)
    {
      v175 = v176;
      v169 = v176;
      v170 = [v176 settingId];
      v171 = sub_268F9AE24();
      v172 = v93;
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v170);
      v173 = v171;
      v174 = v172;
    }

    else
    {
      v173 = 0;
      v174 = 0;
    }

    v167 = v174;
    v166 = v173;

    v458 = 45;
    v165 = BinarySettingIdentifier.rawValue.getter();
    v168 = v94;

    v456[0] = v166;
    v456[1] = v167;
    *&v457 = v165;
    *(&v457 + 1) = v168;
    if (v167)
    {
      sub_268D28874(v456, v454);
      if (*(&v457 + 1))
      {
        v95 = *(v370 + 5);
        v162 = &v453;
        v453 = v95;
        v161 = &v452;
        v452 = v457;
        v163 = MEMORY[0x26D62DB50](v95, *(&v95 + 1), v457, *(&v457 + 1));
        sub_268CD9D30(v161);
        sub_268CD9D30(v162);
        sub_268CD9D30(v456);
        v164 = v163;
        goto LABEL_116;
      }

      sub_268CD9D30(v454);
    }

    else if (!*(&v457 + 1))
    {
      sub_268CD9D30(v456);
      v164 = 1;
LABEL_116:
      v160 = v164;

      if (v160)
      {
        v157 = *(v372 + qword_2802DBFF8);

        type metadata accessor for SettingsMultiSetting(0);
        sub_268D28814(v484, v455);
        v158 = sub_268E067CC(*v484, *&v484[8], v366 & 1);
        v159 = *(v372 + qword_2802DBFE0);

        if (sub_268F9AF14())
        {
          v96 = sub_268F9A9C4();
          (*(*(v96 - 8) + 56))(v380, 1);
        }

        else
        {

          v156 = 0;
          sub_268F9A9A4();
          v97 = sub_268F9A9C4();
          (*(*(v97 - 8) + 56))(v380, 0, 1);
        }

        v155 = v459;

        sub_268F5C108(v158, v362 & 1, v245 & 1, v159, v380, v242, v155, v203 & 1, v399);

        sub_268D28588(v380);

        sub_268D28630(v399, v405);
      }

      else
      {
        v153 = *(v372 + qword_2802DBFF8);

        v154 = *(v372 + qword_2802DBFE0);

        v98 = sub_268F9AF14();
        if (v98)
        {
          v99 = sub_268F9A9C4();
          (*(*(v99 - 8) + 56))(v378, 1);
        }

        else
        {

          v152 = 0;
          sub_268F9A9A4();
          v100 = sub_268F9A9C4();
          (*(*(v100 - 8) + 56))(v378, 0, 1);
        }

        v151 = v459;

        sub_268F5A9D4(v363, v362 & 1, v245 & 1, v154, v378, v242, v151, v397);

        sub_268D28588(v378);

        sub_268D28630(v397, v405);
      }

      goto LABEL_129;
    }

    sub_268D28550(v456);
    v164 = 0;
    goto LABEL_116;
  }

  v56 = v391;
  sub_268D284D4();
  v345 = 1;
  v57 = swift_allocError();
  v58 = v411;
  *v59 = 1;
  *v58 = v57;
  swift_storeEnumTagMultiPayload();
  v60 = sub_268DB98D4();
  v347 = *v60;
  v348 = v60[1];
  v349 = *(v60 + 16);
  v350 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v350);
  (*(v386 + 16))(v56, v372 + qword_2802DBFD8, v385);
  sub_268F9AB14();
  v346 = sub_268F9AB04();
  v344 = *(v386 + 8);
  v343 = v386 + 8;
  v344(v389, v385);
  v344(v391, v385);
  sub_268DB9934(v347, v348, v349, v350, (v346 ^ v345) & 1);
  MEMORY[0x277D82BD8](v350);
  if (sub_268D244E8(*&v484[16]))
  {
    sub_268D28814(v484, v423);
    v341 = *&v484[8];
    v339 = *v484;
    v422 = 45;
    v61 = BinarySettingIdentifier.rawValue.getter();
    v340 = v62;
    v342 = MEMORY[0x26D62DB50](v339, v341, v61);

    if (v342)
    {
      v338 = *(v372 + qword_2802DBFF8);

      type metadata accessor for SettingsMultiSetting(0);
      sub_268D28814(v484, v421);
      v337 = sub_268E067CC(*v484, *&v484[8], v366 & 1);
      v336 = *(v372 + qword_2802DBFE0);

      sub_268F60628(v337, v336);
    }

    else
    {
      v335 = *(v372 + qword_2802DBFF8);

      v334 = *(v372 + qword_2802DBFE0);

      sub_268F601E0(v363, v334);
    }

    sub_268D28630(v408, v411);
  }

  else
  {
    sub_268D28814(v484, v429);
    v332 = *&v484[8];
    v330 = *v484;
    v428 = 45;
    v63 = BinarySettingIdentifier.rawValue.getter();
    v331 = v64;
    v333 = MEMORY[0x26D62DB50](v330, v332, v63);

    if (v333)
    {
      v427 = 0;
      v329 = [v394 settingMetadata];
      if (v329 && (v328 = v329, v326 = v329, v327 = [v329 targetApp], *&v65 = MEMORY[0x277D82BD8](v326).n128_u64[0], v327))
      {
        v325 = v327;
        v323 = v327;
        v66 = [v327 bundleIdentifier];
        v324 = v66;
        if (v66)
        {
          v322 = v324;
          v317 = v324;
          v318 = sub_268F9AE24();
          v319 = v67;
          MEMORY[0x277D82BD8](v317);
          v320 = v318;
          v321 = v319;
        }

        else
        {
          v320 = 0;
          v321 = 0;
        }

        v314 = v321;
        v313 = v320;
        MEMORY[0x277D82BD8](v323);
        v315 = v313;
        v316 = v314;
      }

      else
      {
        v315 = 0;
        v316 = 0;
      }

      v311 = v316;
      v312 = v315;
      if (v316)
      {
        v309 = v312;
        v310 = v311;
        v308 = v311;
        v307 = v312;
        v424 = v312;
        v425 = v311;
        sub_268F9A994();

        v427 = sub_268DE1C68(v307, v308);
      }

      v305 = *(v372 + qword_2802DBFF8);

      type metadata accessor for SettingsMultiSetting(0);
      sub_268D28814(v484, v426);
      v304 = sub_268E067CC(*v484, *&v484[8], v366 & 1);
      v303 = *(v372 + qword_2802DBFE0);

      v306 = &v427;
      v302 = v427;

      sub_268F5F57C(v304, v303, v302);

      sub_268D28630(v408, v411);
      sub_268D287E8(v306);
    }

    else
    {
      v301 = *(v372 + qword_2802DBFF8);

      v300 = *(v372 + qword_2802DBFE0);

      sub_268F5F0A0(v363, v300);

      sub_268D28630(v408, v411);
    }
  }

  v68 = sub_268DB98D4();
  v298 = *v68;
  v296 = v68[1];
  v297 = *(v68 + 16);
  v299 = *sub_268DC7BA8();
  MEMORY[0x277D82BE0](v299);
  sub_268DB9B78(v298, v296, v297, v299);
  MEMORY[0x277D82BD8](v299);
  sub_268D28718(v411, v371);

  sub_268CD9D30(v484);
}

uint64_t sub_268CE2BF4(char *a1)
{
  v28 = 0;
  v27 = 0;
  v2 = *v1;
  v9 = *a1;
  v28 = v9;
  v27 = v1;
  v26 = *(v2 + qword_2802F0750);
  v25 = *(v2 + qword_2802F0750 + 8);
  v24 = v9;
  v23 = 3;
  sub_268D288B4(&v24, &v21);
  sub_268D288B4(&v23, &v22);
  if (v21 != 65)
  {
    sub_268D288B4(&v21, v10);
    if (v22 != 65)
    {
      sub_268D288C8();
      v8 = sub_268F9AE04();
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v22 != 65)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:
  if (v8)
  {
    v7 = 1;
    goto LABEL_21;
  }

  v20 = v9;
  v19 = 2;
  sub_268D288B4(&v20, &v17);
  sub_268D288B4(&v19, &v18);
  if (v17 == 65)
  {
    if (v18 == 65)
    {
      v6 = 1;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  sub_268D288B4(&v17, v11);
  if (v18 == 65)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_18;
  }

  v10[2] = v11[0];
  v10[1] = v18;
  sub_268D288C8();
  v6 = sub_268F9AE04();
LABEL_18:
  v7 = v6;
LABEL_21:
  if ((v7 & 1) == 0)
  {
    v16 = v9;
    v15 = 1;
    sub_268D288B4(&v16, &v13);
    sub_268D288B4(&v15, &v14);
    if (v13 == 65)
    {
      if (v14 == 65)
      {
        v4 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      sub_268D288B4(&v13, &v12);
      if (v14 != 65)
      {
        v11[2] = v12;
        v11[1] = v14;
        sub_268D288C8();
        v4 = sub_268F9AE04();
LABEL_29:
        v5 = v4;
        return v5 & 1;
      }
    }

    v4 = 0;
    goto LABEL_29;
  }

  v5 = 1;
  return v5 & 1;
}

uint64_t sub_268CE2F58(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v126 = &v143;
  v102 = a5;
  v101 = a4;
  v125 = a3;
  v124 = a2;
  v103 = a1;
  v113 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v130 = 0;
  v128 = 0;
  v97 = 0;
  v110 = *v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v99 = (*(*(v98 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v98, v6, v7);
  v100 = (&v64 - v99);
  v104 = sub_268F9AB24();
  v105 = *(v104 - 8);
  v106 = v105;
  v107 = *(v105 + 64);
  MEMORY[0x28223BE20](v103, v124, v125, v101);
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v64 - v109;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v111 = &v64 - v109;
  v140 = v12;
  v139 = v13;
  v138 = v14;
  v136 = v15;
  v137 = v16;
  v135 = v5;
  v134 = *(v110 + qword_2802F0750);
  v133 = *(qword_2802F0750 + v110 + 8);
  v123 = *sub_268DC7B48();
  v17 = v123;
  v121 = sub_268F9B284();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v112 = v118;
  v119 = sub_268F9B734();
  v116 = v18;
  v19 = v124;
  v132 = v124;
  v114 = sub_268CD7620();
  sub_268D28940();
  v115 = sub_268F9AE74();
  v117 = v20;
  v116[3] = MEMORY[0x277D837D0];
  v21 = sub_268CDD224();
  v22 = v115;
  v23 = v116;
  v24 = v117;
  v120 = v21;
  v116[4] = v21;
  *v23 = v22;
  v23[1] = v24;
  sub_268CD0F7C();
  v122 = v25;
  sub_268F9AC04("INSetBinarySettingIntent requires confirmation %@", 49, 2, &dword_268CBE000, v123, v121);

  sub_268D23814(v124, v125, v141);
  v26 = v126;
  v27 = v141[0];
  v145 = v142;
  *(v126 + 1) = v141[1];
  *v26 = v27;
  if (!v144)
  {

    sub_268D284D4();
    v60 = swift_allocError();
    v61 = v100;
    *v62 = 4;
    *v61 = v60;
    swift_storeEnumTagMultiPayload();
    v101(v100);
    sub_268D28378(v100);

    return v97;
  }

  v28 = v124;
  v29 = v126;
  v30 = *v126;
  v31 = *(v126 + 1);
  v146[4] = v145;
  *(v126 + 4) = v31;
  *(v29 + 3) = v30;
  sub_268DAB218(v28);
  v94 = v131;
  v130 = v131;
  v95 = v146[2];
  v32 = v125;
  if (v125)
  {
    v93 = v125;
    v89 = v125;
    v90 = [v125 oldValue];

    v91 = v90;
    v92 = 0;
  }

  else
  {
    v91 = 0;
    v92 = 1;
  }

  v88 = sub_268D2403C(v95, v91, v92 & 1);
  if (v88 == 2)
  {
    v69 = *sub_268DC7B48();
    v49 = v69;
    v67 = sub_268F9B294();
    v70 = 1;
    v66 = sub_268F9B734();
    v65 = v50;
    v51 = v125;
    v129 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v52 = sub_268F9AE64();
    v53 = v120;
    v54 = v65;
    v65[3] = MEMORY[0x277D837D0];
    v54[4] = v53;
    *v54 = v52;
    v54[1] = v55;
    sub_268CD0F7C();
    v68 = v56;
    sub_268F9AC04("SetBinarySettingIntent has invalid value %@ while making intent confirmation dialog", 83, 2, &dword_268CBE000, v69, v67);

    sub_268D284D4();
    v57 = swift_allocError();
    v58 = v100;
    *v59 = v70;
    *v58 = v57;
    swift_storeEnumTagMultiPayload();
    v101(v100);
    sub_268D28378(v100);

    sub_268CD9D30(v146);
    return v97;
  }

  v87 = v88;
  v86 = v88;
  v128 = v88 & 1;
  if (v94 == 65 || (v85 = v94, v94 != 45))
  {

    sub_268CE3F4C(v103, v124, v125, v100);
    v101(v100);
    sub_268D28378(v100);

    v73 = v97;
    goto LABEL_10;
  }

  v33 = v111;
  v34 = v97;
  v35 = sub_268DB98D4();
  v77 = *v35;
  v79 = v35[1];
  v80 = *(v35 + 16);
  v81 = *sub_268DC7BA8();
  v74 = v81;
  v36 = v81;
  (*(v106 + 16))(v33, v96 + qword_2802DBFD8, v104);
  sub_268F9AB14();
  v83 = sub_268F9AB04();
  v76 = *(v106 + 8);
  v75 = v106 + 8;
  v76(v108, v104);
  v76(v111, v104);
  v37 = v124;

  v78 = v146;
  sub_268D28814(v146, v127);

  v82 = &v64;
  MEMORY[0x28223BE20](v77, v79, v80, v81);
  v38 = v101;
  v39 = v83;
  *(&v64 - 6) = v40;
  *(&v64 - 5) = v41;
  *(&v64 - 4) = v42;
  *(&v64 - 24) = v43 & 1;
  *(&v64 - 2) = v38;
  *(&v64 - 1) = v44;
  sub_268DB944C(v45, v46, v47, v48, (v39 & 1) == 0, sub_268D289C0, (&v64 - 8), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v84 = v34;
  if (!v34)
  {

    sub_268CD9D30(v146);

    v73 = v84;
LABEL_10:
    v71 = v73;
    sub_268CD9D30(v146);
    return v71;
  }

  sub_268CD9D30(v146);

  __break(1u);
  return result;
}

void sub_268CE381C(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v44 = 0;
  v43 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v6 = *a2;
  v44 = a1;
  v43 = a2;
  v42 = *(v6 + qword_2802F0750);
  v41 = *(v6 + qword_2802F0750 + 8);
  v40 = a3;
  v39 = a4 & 1;
  v37 = a5;
  v38 = a6;
  v36 = 0;
  v33 = [a1 settingMetadata];
  if (v33 && (v27 = [v33 targetApp], *&v7 = MEMORY[0x277D82BD8](v33).n128_u64[0], v27))
  {
    v8 = [v27 bundleIdentifier];
    v26 = v8;
    if (v8)
    {
      v22 = sub_268F9AE24();
      v23 = v9;
      MEMORY[0x277D82BD8](v26);
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    MEMORY[0x277D82BD8](v27);
    v20 = v24;
    v21 = v25;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    sub_268F9A994();

    v36 = sub_268DE1C68(v20, v21);
  }

  v10 = sub_268DC7B48();
  v17 = *v10;
  MEMORY[0x277D82BE0](*v10);
  v16 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v15 = v11;
  v18 = v36;

  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0C0, &qword_268F9D9D0);
  v13 = sub_268F9AE64();
  v14 = v12;
  v15[3] = MEMORY[0x277D837D0];
  v15[4] = sub_268CDD224();
  *v15 = v13;
  v15[1] = v14;
  sub_268CD0F7C();
  sub_268F9AC04("Getting confirmation mode for announce notifications. App id: %@", 64, 2, &dword_268CBE000, v17, v16);

  MEMORY[0x277D82BD8](v17);

  sub_268D28814(a3, v34);

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  memcpy((v19 + 24), a3, 0x28uLL);
  *(v19 + 64) = a4;
  *(v19 + 72) = v18;
  *(v19 + 80) = a5;
  *(v19 + 88) = a6;
  sub_268E01C88(sub_268D2A878, v19);

  sub_268D287E8(&v36);
}

uint64_t sub_268CE3CCC(unsigned int a1, void *a2, uint64_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v21 = a2;
  v18 = a3;
  v26 = a4;
  v29 = a5;
  v27 = a6;
  v28 = a7;
  v42 = 0;
  v41 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v17 = *a2;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v21, v18, v26);
  v30 = &v16 - v16;
  v42 = v7;
  v41 = v8;
  v23 = 0;
  v40 = *(v17 + qword_2802F0750);
  v39 = *(v17 + qword_2802F0750 + 8);
  v38 = v9;
  v24 = 1;
  v37 = v10 & 1;
  v36 = v11;
  v34 = v12;
  v35 = v13;
  v33 = *(v8 + qword_2802DBFF8);

  type metadata accessor for SettingsBinarySetting(v23);
  v19 = *v18;
  v20 = v18[1];

  v25 = 0;
  v32 = SettingsBinarySetting.__allocating_init(settingId:value:)(v19, v20, 0);
  v31 = *(v21 + qword_2802DBFE0);

  sub_268DFC86C(v22);
  sub_268F9A9A4();
  v14 = sub_268F9A9C4();
  (*(*(v14 - 8) + 56))(v30, v25, v24);

  sub_268F5D8D4(v32, v26 & 1, v31, v30, v29, v27, v28);

  sub_268D28588(v30);
}

void sub_268CE3F4C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v122 = a4;
  v132 = a1;
  v153 = a2;
  v154 = a3;
  v150 = "INSetBinarySettingIntent requires confirmation %@";
  v148 = &dword_268CBE000;
  v124 = "SetBinarySettingIntent has invalid value %@ while making intent confirmation dialog";
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v170 = 0;
  v168 = 0;
  v167 = 0;
  v164 = 0;
  v165 = 0;
  v161 = 0;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v137 = *v4;
  v139 = 0;
  v125 = sub_268F9AB24();
  v126 = *(v125 - 8);
  v127 = v125 - 8;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125, v5, v6, v7);
  v129 = v48 - v128;
  v130 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48 - v128, v9, v10, v11);
  v131 = v48 - v130;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v134 = (*(*(v133 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132, v153, v154, v12);
  v135 = (v48 - v134);
  v136 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  v138 = v48 - v136;
  v177 = v48 - v136;
  v176 = v18;
  v175 = v19;
  v174 = v20;
  v173 = v4;
  v172[2] = *(v137 + qword_2802F0750);
  v172[1] = *(v137 + qword_2802F0750 + 8);
  v152 = *sub_268DC7B48();
  MEMORY[0x277D82BE0](v152);
  v149 = sub_268F9B284();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v146 = sub_268F9B734();
  v144 = v21;
  MEMORY[0x277D82BE0](v153);
  v141 = v172;
  v172[0] = v153;
  v140 = sub_268CD7620();
  sub_268D28940();
  v142 = sub_268F9AE74();
  v143 = v22;
  v144[3] = MEMORY[0x277D837D0];
  v23 = sub_268CDD224();
  v24 = v142;
  v25 = v143;
  v26 = v144;
  v147 = v23;
  v144[4] = v23;
  *v26 = v24;
  v26[1] = v25;
  sub_268CD0F7C();
  v151 = v27;
  sub_268F9AC04(v150, 49, 2, v148, v152, v149);

  MEMORY[0x277D82BD8](v152);
  v155 = v178;
  sub_268D23814(v153, v154, v178);
  memcpy(__dst, v155, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v180, __dst, sizeof(v180));
    sub_268DAB218(v153);
    v120 = v171;
    v170 = v171;
    v121 = v180[2];
    MEMORY[0x277D82BE0](v154);
    if (v154)
    {
      v119 = v154;
      v115 = v154;
      v116 = [v154 oldValue];
      MEMORY[0x277D82BD8](v115);
      v117 = v116;
      v118 = 0;
    }

    else
    {
      v117 = 0;
      v118 = 1;
    }

    v114 = sub_268D2403C(v121, v117, v118 & 1);
    if (v114 != 2)
    {
      v113 = v114;
      v112 = v114;
      v168 = v114 & 1;
      if (v120 == 65)
      {
LABEL_38:
        sub_268D284D4();
        v60 = 1;
        v32 = swift_allocError();
        v33 = v135;
        *v34 = 0;
        *v33 = v32;
        swift_storeEnumTagMultiPayload();
        sub_268D28718(v135, v138);
        goto LABEL_39;
      }

      v111 = v120;
      v110 = v120;
      if (v120 && v110 != 16)
      {
        if (v110 == 26)
        {
          v167 = 1;
          v95 = *(v123 + qword_2802DC018);

          v166 = v110;
          sub_268E12DF8(&v166);
          v96 = v30;

          if ((v96 & 0xFF00) == 0x400)
          {
            v92 = 0;
            v93 = 0;
          }

          else
          {
            v94 = BYTE1(v96);
            v92 = sub_268E127A4(SBYTE1(v96));
            v93 = v31;
          }

          v91 = v93;
          v90 = v92;
          v164 = v92;
          v165 = v93;

          if (v91)
          {
            v88 = v90;
            v89 = v91;
            v83 = v91;
            v84 = v90;
            v159 = v90;
            v160 = v91;
            v85 = *(v123 + qword_2802DC020);

            v86 = sub_268F23C10();

            if (v86)
            {
              v82 = v86;
              v78 = v86;

              v77 = sub_268F9AE14();

              v79 = [v78 integerForKey_];
              MEMORY[0x277D82BD8](v77);
              MEMORY[0x277D82BD8](v78);
              v80 = v79;
              v81 = 0;
            }

            else
            {
              v80 = 0;
              v81 = 1;
            }

            v157 = v80;
            v158 = v81 & 1;
            if (v81)
            {
              v76 = 0;
            }

            else
            {
              v76 = v157;
            }

            if (v76 < 1)
            {
              v75 = 1;
            }

            else
            {
              v167 = 0;
              v75 = 0;
            }

            v74 = v75;

            v87 = v74;
          }

          else
          {
            v87 = 1;
          }

          v70 = v87;
          v73 = *(v123 + qword_2802DBFF8);

          type metadata accessor for SettingsBinarySetting(0);
          sub_268D28814(v180, v163);
          v72 = SettingsBinarySetting.__allocating_init(settingId:value:)(v180[0], v180[1], 0);
          v71 = *(v123 + qword_2802DBFE0);

          sub_268F5D610(v72, v112 & 1, v71, v70 & 1);

          sub_268D28718(v135, v138);

          if (v91)
          {
            v68 = v90;
            v69 = v91;
            v64 = v91;
            v65 = v90;
            v161 = v90;
            v162 = v91;
            v66 = *(v123 + qword_2802DC020);

            v67 = sub_268F23C10();

            if (v67)
            {
              v63 = v67;
              v62 = v67;

              v61 = sub_268F9AE14();

              [v62 setInteger:1 forKey:v61];
              MEMORY[0x277D82BD8](v61);
              MEMORY[0x277D82BD8](v62);
            }
          }

          goto LABEL_39;
        }

        if (v110 == 29)
        {
          v109 = *(v123 + qword_2802DBFF8);

          v108 = *(v123 + qword_2802DBFE0);

          sub_268F5E414(v108);

          sub_268D28718(v135, v138);
LABEL_39:
          v35 = sub_268DB98D4();
          v58 = *v35;
          v56 = v35[1];
          v57 = *(v35 + 16);
          v59 = *sub_268DC7BA8();
          MEMORY[0x277D82BE0](v59);
          sub_268DB9B78(v58, v56, v57, v59);
          MEMORY[0x277D82BD8](v59);
          sub_268D28718(v138, v122);
          sub_268CD9D30(v180);
          return;
        }

        if (v110 != 51)
        {
          goto LABEL_38;
        }
      }

      v28 = v131;
      v29 = sub_268DB98D4();
      v100 = *v29;
      v101 = v29[1];
      v102 = *(v29 + 16);
      v103 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v103);
      (*(v126 + 16))(v28, v123 + qword_2802DBFD8, v125);
      sub_268F9AB14();
      v99 = sub_268F9AB04();
      v98 = *(v126 + 8);
      v97 = v126 + 8;
      v98(v129, v125);
      v98(v131, v125);
      sub_268DB9934(v100, v101, v102, v103, (v99 ^ 1) & 1);
      MEMORY[0x277D82BD8](v103);
      v107 = *(v123 + qword_2802DBFF8);

      type metadata accessor for SettingsBinarySetting(0);
      sub_268D28814(v180, v156);
      v104 = 0;
      v106 = SettingsBinarySetting.__allocating_init(settingId:value:)(v180[0], v180[1], 0);
      v105 = *(v123 + qword_2802DBFE0);

      sub_268F5D610(v106, v112 & 1, v105, v104 & 1);

      sub_268D28718(v135, v138);
      goto LABEL_39;
    }

    v54 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v54);
    v52 = sub_268F9B294();
    v51 = sub_268F9B734();
    v50 = v36;
    MEMORY[0x277D82BE0](v154);
    v49 = &v169;
    v169 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v37 = sub_268F9AE64();
    v38 = v147;
    v39 = v50;
    v50[3] = MEMORY[0x277D837D0];
    v39[4] = v38;
    *v39 = v37;
    v39[1] = v40;
    sub_268CD0F7C();
    v53 = v41;
    sub_268F9AC04(v124, 83, 2, v148, v54, v52);

    MEMORY[0x277D82BD8](v54);
    sub_268D284D4();
    v55 = 1;
    v42 = swift_allocError();
    v43 = v122;
    *v44 = 1;
    *v43 = v42;
    swift_storeEnumTagMultiPayload();
    sub_268CD9D30(v180);
  }

  else
  {
    sub_268D284D4();
    v48[1] = 1;
    v45 = swift_allocError();
    v46 = v122;
    *v47 = 4;
    *v46 = v45;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268CE4D44(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F0750);
  v20 = *(v13 + qword_2802F0750 + 8);

  sub_268CE4EB8(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

void sub_268CE4EB8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v70 = a4;
  v77 = a1;
  v79 = a2;
  v78 = a3;
  v72 = "SetBinarySettingIntentResponse response has invalid old value %@ while forming confirmation cancelled dialog.";
  v73 = &dword_268CBE000;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v93 = 0;
  v91 = 0;
  v87 = *v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v5, v6, v7);
  v76 = (v33 - v75);
  v100 = v33 - v75;
  v80 = sub_268F9AB24();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v84 = *(v81 + 64);
  v83 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v78, v8, v9);
  v85 = v33 - v83;
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v33 - v83, v12);
  v88 = v33 - v86;
  v99 = v13;
  v98 = v14;
  v97 = v15;
  v96 = v4;
  v95 = *(v87 + qword_2802F0750);
  v94 = *(v87 + qword_2802F0750 + 8);
  v89 = &v101;
  sub_268D23814(v14, v15, &v101);
  memcpy(__dst, v89, sizeof(__dst));
  if (!__dst[1])
  {
    goto LABEL_11;
  }

  memcpy(v103, __dst, sizeof(v103));
  MEMORY[0x277D82BE0](v78);
  if (v78)
  {
    v69 = v78;
    v65 = v78;
    v66 = [v78 oldValue];
    MEMORY[0x277D82BD8](v65);
    v67 = v66;
    v68 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 1;
  }

  v64 = v67;
  if (v68)
  {
    sub_268CD9D30(v103);
LABEL_11:
    sub_268D284D4();
    v33[3] = 1;
    v30 = swift_allocError();
    v31 = v70;
    *v32 = 4;
    *v31 = v30;
    swift_storeEnumTagMultiPayload();
    return;
  }

  v63 = v64;
  v93 = v64;
  v16 = sub_268D2403C(v64, 0, 1);
  v62 = v16;
  if (v16 == 2)
  {
    v42 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v42);
    v40 = sub_268F9B294();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v39 = sub_268F9B734();
    v37 = v20;
    MEMORY[0x277D82BE0](v78);
    v34 = &v92;
    v92 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v35 = sub_268F9AE64();
    v36 = v21;
    v37[3] = MEMORY[0x277D837D0];
    v22 = sub_268CDD224();
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v37[4] = v22;
    *v25 = v23;
    v25[1] = v24;
    sub_268CD0F7C();
    v41 = v26;
    sub_268F9AC04(v72, 109, 2, v73, v42, v40);

    MEMORY[0x277D82BD8](v42);
    sub_268D284D4();
    v43 = 1;
    v27 = swift_allocError();
    v28 = v70;
    *v29 = 3;
    *v28 = v27;
    swift_storeEnumTagMultiPayload();
    sub_268CD9D30(v103);
  }

  else
  {
    v61 = v62;
    v17 = v88;
    v52 = v62;
    v46 = 1;
    v91 = v62 & 1;
    v18 = sub_268DB98D4();
    v48 = *v18;
    v49 = v18[1];
    v50 = *(v18 + 16);
    v51 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v51);
    (*(v81 + 16))(v17, v71 + qword_2802DBFD8, v80);
    sub_268F9AB14();
    v47 = sub_268F9AB04();
    v45 = *(v81 + 8);
    v44 = v81 + 8;
    v45(v85, v80);
    v45(v88, v80);
    sub_268DB9934(v48, v49, v50, v51, (v47 ^ v46) & 1);
    MEMORY[0x277D82BD8](v51);
    v55 = *(v71 + qword_2802DBFF8);

    type metadata accessor for SettingsBinarySetting(0);
    v60 = v103;
    sub_268D28814(v103, &v90);
    v54 = SettingsBinarySetting.__allocating_init(settingId:value:)(v103[0], v103[1], v52 & 1);
    v53 = *(v71 + qword_2802DBFE0);

    sub_268F5FA58(v54, v53);

    v19 = sub_268DB98D4();
    v58 = *v19;
    v56 = v19[1];
    v57 = *(v19 + 16);
    v59 = *sub_268DC7BA8();
    MEMORY[0x277D82BE0](v59);
    sub_268DB9B78(v58, v56, v57, v59);
    MEMORY[0x277D82BD8](v59);
    sub_268D28A00(v76, v70);
    sub_268D28378(v76);
    sub_268CD9D30(v60);
  }
}

uint64_t sub_268CE580C(uint64_t a1, void *a2, void *a3, void (*a4)(char *), uint64_t a5)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v19 = a5;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v13 = *v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v15, v16, v17);
  v18 = (&v12 - v12);
  v27 = v6;
  v26 = v7;
  v25 = v8;
  v23 = v9;
  v24 = v10;
  v22 = v5;
  v21 = *(v13 + qword_2802F0750);
  v20 = *(v13 + qword_2802F0750 + 8);

  sub_268CE5980(v14, v15, v16, v18);
  v17(v18);
  sub_268D28378(v18);
}

uint64_t sub_268CE5980@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v58 = 0;
  countAndFlagsBits = 0;
  v55 = 0;
  v52 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v5 = *v4;
  v64 = a1;
  v63 = a2;
  v62 = a3;
  v61 = v4;
  v60 = *(v5 + qword_2802F0750);
  v59 = *(v5 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v37 = [a3 code];
    MEMORY[0x277D82BD8](a3);
    v38 = v37;
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if (v39)
  {
    v19 = sub_268DC7B48();
    v23 = *v19;
    MEMORY[0x277D82BE0](*v19);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetBinarySettingIntentResponse does not exist", 45, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    sub_268D284D4();
    v20 = swift_allocError();
    *v21 = 4;
    *a4 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v58 = v38;
    if (v38 == 6)
    {
      v56 = a2;
      v10 = sub_268CD7620();
      v31._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v10, &protocol witness table for INSetBinarySettingIntent);
      v31._object = v11;
      if (v11)
      {
        countAndFlagsBits = v31._countAndFlagsBits;
        v55 = v11;

        BinarySettingIdentifier.init(rawValue:)(v31);
        if (v53 != 65)
        {
          v52 = v53;
          v51 = v53;
          v50 = 16;
          sub_268D28AD4();
          v12 = sub_268F9B754();
          if (v12)
          {

            type metadata accessor for SettingsBinarySetting(0);

            v30 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31._countAndFlagsBits, v31._object, 0);
            v29 = *(v42 + qword_2802DBFE0);

            v13 = sub_268D2403C([a2 binaryValue], 0, 1);
            sub_268F54220(v30, v29, v13);
          }
        }
      }

      sub_268F537E4();
    }

    else if (v38 == 7)
    {
      v49 = a2;
      v7 = sub_268CD7620();
      v36._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v7, &protocol witness table for INSetBinarySettingIntent);
      v36._object = v8;
      if (v8)
      {
        v47 = v36._countAndFlagsBits;
        v48 = v8;

        BinarySettingIdentifier.init(rawValue:)(v36);
        if (v46 == 65)
        {
        }

        else
        {
          v45 = v46;
          v34 = *sub_268E79858();

          v44 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
          sub_268D28B4C();
          sub_268D288C8();
          v35 = sub_268F9AFC4();
          sub_268CD7930(&v44);
          if (v35)
          {

            type metadata accessor for SettingsBinarySetting(0);

            v33 = SettingsBinarySetting.__allocating_init(settingId:value:)(v36._countAndFlagsBits, v36._object, 0);
            v32 = *(v42 + qword_2802DBFE0);

            v9 = sub_268D2403C([a2 binaryValue], 0, 1);
            sub_268F54220(v33, v32, v9);
          }
        }
      }

      sub_268F537E4();
    }

    else if (v38 == 8)
    {
      return sub_268CE61E0(a2, a3, a4);
    }

    else
    {
      v14 = sub_268DC7B48();
      v28 = *v14;
      MEMORY[0x277D82BE0](*v14);
      v27 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v26 = v15;
      MEMORY[0x277D82BE0](a3);
      v57 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v24 = sub_268F9AE64();
      v25 = v16;
      v26[3] = MEMORY[0x277D837D0];
      v26[4] = sub_268CDD224();
      *v26 = v24;
      v26[1] = v25;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingIntentResponse contains unsupported error code: %@", 66, 2, &dword_268CBE000, v28, v27);

      MEMORY[0x277D82BD8](v28);
      sub_268D284D4();
      v17 = swift_allocError();
      *v18 = 7;
      *a4 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_268CE61E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v304 = a3;
  v317 = a1;
  v325 = a2;
  v306 = "SetBinarySettingIntentResponse 'other reason' error code contains unsupported error detail: %@";
  v307 = &dword_268CBE000;
  v308 = "SetBinarySettingIntentResponse 'appNotInstalledForAnnounceNotifications' error is missing app bundle id: %@";
  v309 = "SetBinarySettingIntentResponse contains error code 'other reason' but no details: %@";
  v369 = 0;
  v368 = 0;
  v367 = 0;
  v366 = 0;
  v363 = 0;
  v364 = 0;
  v359 = 0;
  v333 = 0;
  v334 = 0;
  v328 = 0;
  v326 = 0;
  v327 = 0;
  v323 = *v3;
  v310 = sub_268F9AB24();
  v311 = *(v310 - 8);
  v312 = v310 - 8;
  v313 = (*(v311 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v310, v4, v5, v6);
  v314 = &v118 - v313;
  v315 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v118 - v313, v8, v9, v10);
  v316 = &v118 - v315;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v320 = *(*(v318 - 8) + 64);
  v319 = (v320 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v325, v11, v12, v13);
  v321 = (&v118 - v319);
  v322 = (v320 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  v324 = (&v118 - v322);
  v369 = &v118 - v322;
  v368 = v18;
  v367 = v19;
  v366 = v3;
  v365[2] = *(v323 + qword_2802F0750);
  v365[1] = *(v323 + qword_2802F0750 + 8);
  MEMORY[0x277D82BE0](v19);
  if (v325)
  {
    v303 = v325;
    v301 = v325;
    v302 = [v325 errorDetail];
    if (v302)
    {
      v300 = v302;
      v295 = v302;
      v296 = sub_268F9AE24();
      v297 = v20;
      MEMORY[0x277D82BD8](v295);
      v298 = v296;
      v299 = v297;
    }

    else
    {
      v298 = 0;
      v299 = 0;
    }

    v292 = v299;
    v291 = v298;
    MEMORY[0x277D82BD8](v301);
    v293 = v291;
    v294 = v292;
  }

  else
  {
    v293 = 0;
    v294 = 0;
  }

  v289 = v294;
  v290 = v293;
  if (v294)
  {
    v287 = v290;
    v288 = v289;
    v284 = v289;
    v285 = v290;
    v363 = v290;
    v364 = v289;
    v286 = v370;
    sub_268D23814(v317, v325, v370);
    memcpy(__dst, v286, sizeof(__dst));
    if (__dst[1])
    {
      v263 = v372;
      memcpy(v372, __dst, sizeof(v372));
      v265 = 0;
      v264 = type metadata accessor for SettingsBinarySetting(0);
      sub_268D28814(v263, v362);
      v271 = v372[0];
      v270 = v372[1];
      v21 = [v317 binaryValue];
      v268 = &v361;
      v361 = v21;
      v266 = &v360;
      v360 = 1;
      v267 = type metadata accessor for INBinarySettingValue(v265);
      v269 = sub_268CD925C();
      v22 = sub_268F9B754();
      v276 = 1;
      v23 = SettingsBinarySetting.__allocating_init(settingId:value:)(v271, v270, v22 & 1);
      v24 = v316;
      v272 = v23;
      v359 = v23;
      v273 = sub_268D284D4();
      v25 = swift_allocError();
      v26 = v324;
      *v27 = 8;
      *v26 = v25;
      swift_storeEnumTagMultiPayload();
      v28 = sub_268DB98D4();
      v278 = *v28;
      v279 = v28[1];
      v280 = *(v28 + 16);
      v281 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v281);
      (*(v311 + 16))(v24, v305 + qword_2802DBFD8, v310);
      sub_268F9AB14();
      v277 = sub_268F9AB04();
      v275 = *(v311 + 8);
      v274 = v311 + 8;
      v275(v314, v310);
      v275(v316, v310);
      sub_268DB9934(v278, v279, v280, v281, (v277 ^ v276) & 1);
      MEMORY[0x277D82BD8](v281);

      v29 = sub_268E948B8(8);
      v282 = v358;
      v358[0] = v29;
      v358[1] = v30;
      v357[2] = v285;
      v357[3] = v284;
      v283 = MEMORY[0x26D62DB50](v29, v30, v285, v284);
      sub_268CD9D30(v282);
      if (v283)
      {

        v262 = *(v305 + qword_2802F0740);

        sub_268F55654();

        sub_268D28630(v321, v324);
      }

      else
      {

        v31 = sub_268E948B8(5);
        v260 = v357;
        v357[0] = v31;
        v357[1] = v32;
        v356[2] = v285;
        v356[3] = v284;
        v261 = MEMORY[0x26D62DB50](v31, v32, v285, v284);
        sub_268CD9D30(v260);
        if (v261)
        {

          v259 = *(v305 + qword_2802F0740);

          sub_268F54CC8();

          sub_268D28630(v321, v324);
        }

        else
        {

          v33 = sub_268E948B8(6);
          v257 = v356;
          v356[0] = v33;
          v356[1] = v34;
          v355[2] = v285;
          v355[3] = v284;
          v258 = MEMORY[0x26D62DB50](v33, v34, v285, v284);
          sub_268CD9D30(v257);
          if (v258)
          {

            v256 = *(v305 + qword_2802F0740);

            sub_268F54D8C();

            sub_268D28630(v321, v324);
          }

          else
          {

            v35 = sub_268E948B8(3);
            v254 = v355;
            v355[0] = v35;
            v355[1] = v36;
            v354[2] = v285;
            v354[3] = v284;
            v255 = MEMORY[0x26D62DB50](v35, v36, v285, v284);
            sub_268CD9D30(v254);
            if (v255)
            {

              v253 = [v317 settingMetadata];
              if (v253)
              {
                v252 = v253;
                v246 = v253;
                v247 = [v253 settingId];
                v248 = sub_268F9AE24();
                v249 = v37;
                MEMORY[0x277D82BD8](v246);
                MEMORY[0x277D82BD8](v247);
                v250 = v248;
                v251 = v249;
              }

              else
              {
                v250 = 0;
                v251 = 0;
              }

              v244 = v251;
              v245 = v250;
              if (!v251)
              {
                sub_268D28BD4();
                v232 = 1;
                v38 = swift_allocError();
                v39 = v321;
                *v40 = 2;
                *v39 = v38;
                swift_storeEnumTagMultiPayload();
                sub_268D28630(v321, v324);
                v41 = sub_268DB98D4();
                v235 = *v41;
                v233 = v41[1];
                v234 = *(v41 + 16);
                v236 = *sub_268DC7BA8();
                MEMORY[0x277D82BE0](v236);
                sub_268DB9B78(v235, v233, v234, v236);
                MEMORY[0x277D82BD8](v236);
                sub_268D28718(v324, v304);

                sub_268CD9D30(v372);
              }

              v242 = v245;
              v243 = v244;
              v241 = v244;
              v237 = v245;
              v326 = v245;
              v327 = v244;
              v240 = *(v305 + qword_2802F0740);

              v239 = SettingsBinarySetting.__allocating_init(settingId:value:)(v237, v241, 0);
              v238 = *(v305 + qword_2802DBFE0);

              sub_268F54220(v239, v238, 2);

              sub_268D28630(v321, v324);
            }

            else
            {

              v43 = sub_268E948B8(11);
              v230 = v354;
              v354[0] = v43;
              v354[1] = v44;
              v353[2] = v285;
              v353[3] = v284;
              v231 = MEMORY[0x26D62DB50](v43, v44, v285, v284);
              sub_268CD9D30(v230);
              if (v231)
              {

                v229 = *(v305 + qword_2802DBFF8);

                v228 = *(v305 + qword_2802DBFE0);

                v45 = sub_268CDD6D4();
                sub_268F5E9A8(v228, v45 & 1);

                sub_268D28630(v321, v324);
              }

              else
              {

                v46 = sub_268E948B8(12);
                v226 = v353;
                v353[0] = v46;
                v353[1] = v47;
                v352[2] = v285;
                v352[3] = v284;
                v227 = MEMORY[0x26D62DB50](v46, v47, v285, v284);
                sub_268CD9D30(v226);
                if (v227)
                {

                  v225 = *(v305 + qword_2802DBFF8);

                  v48 = sub_268E948B8(12);
                  v224 = v49;
                  sub_268F5ED20(v48, v49);

                  sub_268D28630(v321, v324);
                }

                else
                {

                  v50 = sub_268E948B8(15);
                  v222 = v352;
                  v352[0] = v50;
                  v352[1] = v51;
                  v351[2] = v285;
                  v351[3] = v284;
                  v223 = MEMORY[0x26D62DB50](v50, v51, v285, v284);
                  sub_268CD9D30(v222);
                  if (v223)
                  {

                    v221 = *(v305 + qword_2802DBFF8);

                    v52 = sub_268E948B8(15);
                    v220 = v53;
                    sub_268F5ED20(v52, v53);

                    sub_268D28630(v321, v324);
                  }

                  else
                  {

                    v54 = sub_268E948B8(13);
                    v218 = v351;
                    v351[0] = v54;
                    v351[1] = v55;
                    v350[2] = v285;
                    v350[3] = v284;
                    v219 = MEMORY[0x26D62DB50](v54, v55, v285, v284);
                    sub_268CD9D30(v218);
                    if (v219)
                    {

                      v217 = *(v305 + qword_2802DBFF8);

                      v56 = sub_268E948B8(13);
                      v216 = v57;
                      sub_268F5ED20(v56, v57);

                      sub_268D28630(v321, v324);
                    }

                    else
                    {

                      v58 = sub_268E948B8(18);
                      v214 = v350;
                      v350[0] = v58;
                      v350[1] = v59;
                      v349[2] = v285;
                      v349[3] = v284;
                      v215 = MEMORY[0x26D62DB50](v58, v59, v285, v284);
                      sub_268CD9D30(v214);
                      if (v215)
                      {

                        v213 = *(v305 + qword_2802DBFF8);

                        sub_268F5FEEC();

                        sub_268D28630(v321, v324);
                      }

                      else
                      {

                        v60 = sub_268E948B8(17);
                        v211 = v349;
                        v349[0] = v60;
                        v349[1] = v61;
                        v348[2] = v285;
                        v348[3] = v284;
                        v212 = MEMORY[0x26D62DB50](v60, v61, v285, v284);
                        sub_268CD9D30(v211);
                        if (v212)
                        {

                          v208 = *(v305 + qword_2802DC010);

                          sub_268DAB218(v317);
                          v329[0] = v329[1];
                          v209 = sub_268F397B4(v329);

                          v328 = v209;
                          v210 = *(v305 + qword_2802F0740);

                          sub_268F57498(v209, 0, 0);

                          sub_268D28630(v321, v324);
                        }

                        else
                        {

                          v62 = sub_268E948B8(2);
                          v206 = v348;
                          v348[0] = v62;
                          v348[1] = v63;
                          v347[2] = v285;
                          v347[3] = v284;
                          v207 = MEMORY[0x26D62DB50](v62, v63, v285, v284);
                          sub_268CD9D30(v206);
                          if (v207)
                          {

                            v205 = *(v305 + qword_2802DBFF8);

                            type metadata accessor for SettingsMultiSetting(0);
                            sub_268D28814(v372, v332);
                            v203 = v372[0];
                            v202 = v372[1];
                            v331 = [v317 binaryValue];
                            v330 = 1;
                            v64 = sub_268F9B754();
                            v204 = sub_268E067CC(v203, v202, v64 & 1);
                            sub_268F5A288(v204);

                            sub_268D28630(v321, v324);
                          }

                          else
                          {

                            v65 = sub_268E948B8(1);
                            v200 = v347;
                            v347[0] = v65;
                            v347[1] = v66;
                            v346[2] = v285;
                            v346[3] = v284;
                            v201 = MEMORY[0x26D62DB50](v65, v66, v285, v284);
                            sub_268CD9D30(v200);
                            if (v201)
                            {

                              v199 = *(v305 + qword_2802DBFF8);

                              sub_268F5A028();

                              sub_268D28630(v321, v324);
                            }

                            else
                            {

                              v67 = sub_268E948B8(9);
                              v197 = v346;
                              v346[0] = v67;
                              v346[1] = v68;
                              v345[2] = v285;
                              v345[3] = v284;
                              v198 = MEMORY[0x26D62DB50](v67, v68, v285, v284);
                              sub_268CD9D30(v197);
                              if (v198)
                              {

                                v196 = *(v305 + qword_2802DBFF8);

                                sub_268F59AB8();

                                sub_268D28630(v321, v324);
                              }

                              else
                              {

                                v69 = sub_268E948B8(0);
                                v194 = v345;
                                v345[0] = v69;
                                v345[1] = v70;
                                v344[2] = v285;
                                v344[3] = v284;
                                v195 = MEMORY[0x26D62DB50](v69, v70, v285, v284);
                                sub_268CD9D30(v194);
                                if (v195)
                                {

                                  v193 = [v317 settingMetadata];
                                  if (v193 && (v192 = v193, v190 = v193, v191 = [v193 targetApp], *&v71 = MEMORY[0x277D82BD8](v190).n128_u64[0], v191))
                                  {
                                    v189 = v191;
                                    v187 = v191;
                                    v72 = [v191 bundleIdentifier];
                                    v188 = v72;
                                    if (v72)
                                    {
                                      v186 = v188;
                                      v181 = v188;
                                      v182 = sub_268F9AE24();
                                      v183 = v73;
                                      MEMORY[0x277D82BD8](v181);
                                      v184 = v182;
                                      v185 = v183;
                                    }

                                    else
                                    {
                                      v184 = 0;
                                      v185 = 0;
                                    }

                                    v178 = v185;
                                    v177 = v184;
                                    MEMORY[0x277D82BD8](v187);
                                    v179 = v177;
                                    v180 = v178;
                                  }

                                  else
                                  {
                                    v179 = 0;
                                    v180 = 0;
                                  }

                                  v175 = v180;
                                  v176 = v179;
                                  if (v180)
                                  {
                                    v173 = v176;
                                    v174 = v175;
                                    v172 = v175;
                                    v169 = v176;
                                    v333 = v176;
                                    v334 = v175;
                                    v171 = *(v305 + qword_2802DBFF8);

                                    sub_268F9A994();

                                    v170 = sub_268DE1C68(v169, v172);
                                    sub_268F59858(v170);

                                    sub_268D28630(v321, v324);
                                  }

                                  else
                                  {
                                    v167 = *sub_268DC7B48();
                                    MEMORY[0x277D82BE0](v167);
                                    v165 = sub_268F9B294();
                                    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                                    v164 = sub_268F9B734();
                                    v162 = v74;
                                    MEMORY[0x277D82BE0](v317);
                                    v159 = &v335;
                                    v335 = v317;
                                    v158 = sub_268CD7620();
                                    sub_268D28940();
                                    v160 = sub_268F9AE74();
                                    v161 = v75;
                                    v162[3] = MEMORY[0x277D837D0];
                                    v76 = sub_268CDD224();
                                    v77 = v160;
                                    v78 = v161;
                                    v79 = v162;
                                    v162[4] = v76;
                                    *v79 = v77;
                                    v79[1] = v78;
                                    sub_268CD0F7C();
                                    v166 = v80;
                                    sub_268F9AC04(v308, 107, 2, v307, v167, v165);

                                    MEMORY[0x277D82BD8](v167);
                                    v168 = 1;
                                    v81 = swift_allocError();
                                    v82 = v321;
                                    *v83 = 1;
                                    *v82 = v81;
                                    swift_storeEnumTagMultiPayload();
                                    sub_268D28630(v321, v324);
                                  }
                                }

                                else
                                {

                                  v84 = sub_268E948B8(20);
                                  v156 = v344;
                                  v344[0] = v84;
                                  v344[1] = v85;
                                  v343[2] = v285;
                                  v343[3] = v284;
                                  v157 = MEMORY[0x26D62DB50](v84, v85, v285, v284);
                                  sub_268CD9D30(v156);
                                  if (v157)
                                  {

                                    v155 = *(v305 + qword_2802DBFF8);

                                    sub_268F5FD4C();

                                    sub_268D28630(v321, v324);
                                  }

                                  else
                                  {

                                    v86 = sub_268E948B8(7);
                                    v153 = v343;
                                    v343[0] = v86;
                                    v343[1] = v87;
                                    v342[2] = v285;
                                    v342[3] = v284;
                                    v154 = MEMORY[0x26D62DB50](v86, v87, v285, v284);
                                    sub_268CD9D30(v153);
                                    if (v154)
                                    {

                                      v152 = *(v305 + qword_2802F0740);

                                      sub_268D28814(v372, v336);
                                      v151 = SettingsBinarySetting.__allocating_init(settingId:value:)(v372[0], v372[1], 0);
                                      sub_268F5525C(v151);

                                      sub_268D28630(v321, v324);
                                    }

                                    else
                                    {

                                      v88 = sub_268E948B8(23);
                                      v149 = v342;
                                      v342[0] = v88;
                                      v342[1] = v89;
                                      v341[1] = v285;
                                      v341[2] = v284;
                                      v150 = MEMORY[0x26D62DB50](v88, v89, v285, v284);
                                      sub_268CD9D30(v149);
                                      if (v150)
                                      {

                                        v148 = *(v305 + qword_2802F0740);

                                        v143 = *(v305 + qword_2802DC030);

                                        v340 = v317;
                                        v90 = sub_268CD7620();
                                        v91 = SettingIntent.deviceCategory.getter(v90, &protocol witness table for INSetBinarySettingIntent);
                                        v146 = sub_268D3DD54(v91, v92 & 1);

                                        v147 = v337;
                                        sub_268CDE730(v305 + qword_2802DBFE8, v337);
                                        v145 = v338;
                                        v144 = v339;
                                        __swift_project_boxed_opaque_existential_1(v147, v338);
                                        v93 = sub_268F997F4();
                                        sub_268F5767C(v146 & 1, v93 & 1);
                                        __swift_destroy_boxed_opaque_existential_0(v147);
                                      }

                                      else
                                      {

                                        v141 = *sub_268DC7B48();
                                        MEMORY[0x277D82BE0](v141);
                                        v139 = sub_268F9B294();
                                        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                                        v138 = sub_268F9B734();
                                        v136 = v94;
                                        MEMORY[0x277D82BE0](v325);
                                        v133 = v341;
                                        v341[0] = v325;
                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
                                        v134 = sub_268F9AE64();
                                        v135 = v95;
                                        v136[3] = MEMORY[0x277D837D0];
                                        v96 = sub_268CDD224();
                                        v97 = v134;
                                        v98 = v135;
                                        v99 = v136;
                                        v136[4] = v96;
                                        *v99 = v97;
                                        v99[1] = v98;
                                        sub_268CD0F7C();
                                        v140 = v100;
                                        sub_268F9AC04(v306, 94, 2, v307, v141, v139);

                                        MEMORY[0x277D82BD8](v141);
                                        v142 = 1;
                                        v101 = swift_allocError();
                                        v102 = v321;
                                        *v103 = 8;
                                        *v102 = v101;
                                        swift_storeEnumTagMultiPayload();
                                      }

                                      sub_268D28630(v321, v324);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v104 = sub_268DB98D4();
      v131 = *v104;
      v129 = v104[1];
      v130 = *(v104 + 16);
      v132 = *sub_268DC7BA8();
      MEMORY[0x277D82BE0](v132);
      sub_268DB9B78(v131, v129, v130, v132);
      MEMORY[0x277D82BD8](v132);
      sub_268D28718(v324, v304);

      sub_268CD9D30(v372);
    }

    else
    {
      sub_268D284D4();
      v128 = 1;
      v105 = swift_allocError();
      v106 = v304;
      *v107 = 4;
      *v106 = v105;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v126 = *sub_268DC7B48();
    MEMORY[0x277D82BE0](v126);
    v124 = sub_268F9B294();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v123 = sub_268F9B734();
    v121 = v108;
    MEMORY[0x277D82BE0](v325);
    v118 = v365;
    v365[0] = v325;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v119 = sub_268F9AE64();
    v120 = v109;
    v121[3] = MEMORY[0x277D837D0];
    v110 = sub_268CDD224();
    v111 = v119;
    v112 = v120;
    v113 = v121;
    v121[4] = v110;
    *v113 = v111;
    v113[1] = v112;
    sub_268CD0F7C();
    v125 = v114;
    sub_268F9AC04(v309, 84, 2, v307, v126, v124);

    MEMORY[0x277D82BD8](v126);
    sub_268D284D4();
    v127 = 1;
    v115 = swift_allocError();
    v116 = v304;
    *v117 = 5;
    *v116 = v115;
    return swift_storeEnumTagMultiPayload();
  }
}