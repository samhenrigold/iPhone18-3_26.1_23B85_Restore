char *sub_258E15D60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888F8, &qword_258F0C0A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258E15EA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_258E15FD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_258E161B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEE00737574617453 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xEF73757461745365)
  {

    return 2;
  }

  else
  {
    v6 = sub_258F0AD80();

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

uint64_t sub_258E162E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EF8, &unk_258F0DBC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E15A3C();
  sub_258F0AED0();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    v8 = sub_258F0AC50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EC8, &qword_258F0DBB0);
    v11 = 1;
    sub_258E1657C();
    sub_258F0AC70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988EE0, &qword_258F0DBB8);
    v11 = 2;
    sub_258E16654();
    v10 = 0;
    sub_258F0AC20();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_258E1657C()
{
  result = qword_27F988F00;
  if (!qword_27F988F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EC8, &qword_258F0DBB0);
    sub_258E16600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F00);
  }

  return result;
}

unint64_t sub_258E16600()
{
  result = qword_27F988F08;
  if (!qword_27F988F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F08);
  }

  return result;
}

unint64_t sub_258E16654()
{
  result = qword_27F988F10;
  if (!qword_27F988F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988EE0, &qword_258F0DBB8);
    sub_258E166D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F10);
  }

  return result;
}

unint64_t sub_258E166D8()
{
  result = qword_27F988F18;
  if (!qword_27F988F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F18);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258E16770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E167B8(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileAssetDownloadErrorCodeFrequency(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MobileAssetDownloadErrorCodeFrequency(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_258E168B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_258E168F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258E1695C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E169A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258E16A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E16A70(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_258E16AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E16B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258E16B98(uint64_t *a1, int a2)
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

uint64_t sub_258E16BE0(uint64_t result, int a2, int a3)
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

unint64_t sub_258E16C30()
{
  result = qword_27F988F40;
  if (!qword_27F988F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F40);
  }

  return result;
}

unint64_t sub_258E16C88()
{
  result = qword_27F988F48;
  if (!qword_27F988F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F48);
  }

  return result;
}

unint64_t sub_258E16CE0()
{
  result = qword_27F988F50;
  if (!qword_27F988F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F50);
  }

  return result;
}

unint64_t sub_258E16D34()
{
  result = qword_27F988F60;
  if (!qword_27F988F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F60);
  }

  return result;
}

unint64_t sub_258E16D88()
{
  result = qword_27F988F70;
  if (!qword_27F988F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F68, &qword_258F0E238);
    sub_258E16E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F70);
  }

  return result;
}

unint64_t sub_258E16E0C()
{
  result = qword_27F988F78;
  if (!qword_27F988F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F78);
  }

  return result;
}

unint64_t sub_258E16E60()
{
  result = qword_27F988F88;
  if (!qword_27F988F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E16EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F88);
  }

  return result;
}

unint64_t sub_258E16EE4()
{
  result = qword_27F988F90;
  if (!qword_27F988F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988F90);
  }

  return result;
}

unint64_t sub_258E16F38()
{
  result = qword_27F988FA0;
  if (!qword_27F988FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FA0);
  }

  return result;
}

unint64_t sub_258E16F8C()
{
  result = qword_27F988FA8;
  if (!qword_27F988FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FA8);
  }

  return result;
}

unint64_t sub_258E16FE0()
{
  result = qword_27F988FB0;
  if (!qword_27F988FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FB0);
  }

  return result;
}

unint64_t sub_258E17034()
{
  result = qword_27F988FC0;
  if (!qword_27F988FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E170B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FC0);
  }

  return result;
}

unint64_t sub_258E170B8()
{
  result = qword_27F988FC8;
  if (!qword_27F988FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FC8);
  }

  return result;
}

uint64_t sub_258E1710C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C61697274 && a2 == 0xEE00656361707365;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F6C6C6F72 && a2 == 0xE700000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000258F19D40 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258E1727C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FF8, &qword_258F0E260);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16F38();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v38) = 0;
  v10 = sub_258F0AC50();
  v12 = v11;
  v31 = v10;
  LOBYTE(v32) = 1;
  sub_258E18628();
  sub_258F0AC70();
  v28 = v38;
  v27 = v39;
  v29 = v40;
  v26 = v41;
  v30 = v42;
  LOBYTE(v32) = 2;
  sub_258E1867C();
  sub_258F0AC70();
  v25 = v38;
  v24 = v39;
  v23 = v40;
  v55 = BYTE4(v38);
  v54 = BYTE4(v39);
  v53 = BYTE4(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FB8, &qword_258F0E250);
  v56 = 3;
  sub_258E186D0();
  sub_258F0AC20();
  (*(v6 + 8))(v9, v5);
  v21 = v52;
  *&v32 = v31;
  *(&v32 + 1) = v12;
  LODWORD(v33) = v28;
  v13 = v29;
  *(&v33 + 1) = v27;
  *&v34 = v29;
  *(&v34 + 1) = v26;
  *&v35 = v30;
  DWORD2(v35) = v25;
  v22 = v55;
  BYTE12(v35) = v55;
  v14 = v24;
  LODWORD(v36) = v24;
  v15 = v54;
  BYTE4(v36) = v54;
  v16 = v23;
  DWORD2(v36) = v23;
  v17 = v53;
  BYTE12(v36) = v53;
  v37 = v52;
  sub_258E187A8(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v38 = v31;
  v39 = v12;
  LODWORD(v40) = v28;
  v41 = v27;
  v42 = v13;
  v43 = v26;
  v44 = v30;
  v45 = v25;
  v46 = v22;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = v21;
  result = sub_258E187E0(&v38);
  v19 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v19;
  *(a2 + 64) = v36;
  *(a2 + 80) = v37;
  v20 = v33;
  *a2 = v32;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_258E17708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636F4C7465737361 && a2 == 0xEB00000000656C61;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6C61697274 && a2 == 0xEE00656361707365)
  {

    return 3;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258E17884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892D0, &qword_258F0EE58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BD3C();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v39) = 0;
  v10 = sub_258F0AC50();
  v12 = v11;
  v33 = v10;
  LOBYTE(v34) = 1;
  sub_258E1867C();
  sub_258F0AC70();
  v31 = v39;
  v30 = v40;
  v13 = v41;
  v53 = BYTE4(v39);
  v52 = BYTE4(v40);
  v51 = v42;
  LOBYTE(v39) = 2;
  v14 = sub_258F0AC50();
  v29 = v13;
  v32 = v15;
  v28 = v14;
  v54 = 3;
  v16 = sub_258F0AC50();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  *&v34 = v33;
  *(&v34 + 1) = v12;
  LODWORD(v35) = v31;
  v27 = v53;
  BYTE4(v35) = v53;
  DWORD2(v35) = v30;
  v26 = v52;
  BYTE12(v35) = v52;
  LODWORD(v36) = v29;
  v20 = v51;
  BYTE4(v36) = v51;
  v21 = v28;
  v22 = v32;
  *(&v36 + 1) = v28;
  *&v37 = v32;
  *(&v37 + 1) = v16;
  v38 = v19;
  sub_258E1BD90(&v34, &v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39 = v33;
  v40 = v12;
  v41 = v31;
  v42 = v27;
  v43 = v30;
  v44 = v26;
  v45 = v29;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v16;
  v50 = v19;
  result = sub_258E1BDC8(&v39);
  v24 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v24;
  *(a2 + 64) = v38;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  return result;
}

uint64_t sub_258E17C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_258F0AD80();

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

unint64_t sub_258E17D28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892C8, &qword_258F0EE50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BCE8();
  sub_258F0AED0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12[15] = 0;
  v8 = sub_258F0AC30();
  v12[14] = 1;
  v9 = sub_258F0AC30();
  v12[13] = 2;
  v10 = sub_258F0AC30();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v12[12] = BYTE4(v8) & 1;
  v12[8] = BYTE4(v9) & 1;
  v12[4] = BYTE4(v10) & 1;
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_258E17F24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D796F6C706564 && a2 == 0xEA0000000000746ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6150726F74636166 && a2 == 0xEA00000000006B63)
  {

    return 2;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_258E18054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9892C0, &qword_258F0EE48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1BC94();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = 0;
  v10 = sub_258F0AC80();
  v22 = 1;
  v11 = sub_258F0AC50();
  v13 = v12;
  v20 = v11;
  v21 = 2;
  v14 = sub_258F0AC50();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v10;
  *(a2 + 8) = v20;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_258E18268(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988FD0, &qword_258F0E258);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E16D34();
  sub_258F0AED0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F68, &qword_258F0E238);
  HIBYTE(v9) = 0;
  sub_258E18478();
  sub_258F0AC70();
  v8 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F80, &qword_258F0E240);
  HIBYTE(v9) = 1;
  sub_258E18550();
  sub_258F0AC20();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_258E18478()
{
  result = qword_27F988FD8;
  if (!qword_27F988FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F68, &qword_258F0E238);
    sub_258E184FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FD8);
  }

  return result;
}

unint64_t sub_258E184FC()
{
  result = qword_27F988FE0;
  if (!qword_27F988FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FE0);
  }

  return result;
}

unint64_t sub_258E18550()
{
  result = qword_27F988FE8;
  if (!qword_27F988FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988F80, &qword_258F0E240);
    sub_258E185D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FE8);
  }

  return result;
}

unint64_t sub_258E185D4()
{
  result = qword_27F988FF0;
  if (!qword_27F988FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988FF0);
  }

  return result;
}

unint64_t sub_258E18628()
{
  result = qword_27F989000;
  if (!qword_27F989000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989000);
  }

  return result;
}

unint64_t sub_258E1867C()
{
  result = qword_27F989008;
  if (!qword_27F989008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989008);
  }

  return result;
}

unint64_t sub_258E186D0()
{
  result = qword_27F989010;
  if (!qword_27F989010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988FB8, &qword_258F0E250);
    sub_258E18754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989010);
  }

  return result;
}

unint64_t sub_258E18754()
{
  result = qword_27F989018;
  if (!qword_27F989018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989018);
  }

  return result;
}

uint64_t sub_258E18810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7465537465737361 && a2 == 0xEA00000000006449;
  if (v3 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEC000000656D614ELL || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6569647561 && a2 == 0xEA00000000006449 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000258F19DE0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000258F19E10 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000258F19E30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_258E18A60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989060, &qword_258F0E288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A2DC();
  sub_258F0AED0();
  if (v2)
  {
    v39 = v2;
    v11 = 0;
  }

  else
  {
    LOBYTE(v45[0]) = 0;
    v10 = sub_258F0ABF0();
    v14 = v13;
    v15 = v10;
    LOBYTE(v45[0]) = 1;
    v16 = sub_258F0AC50();
    v39 = 0;
    v18 = v16;
    v38 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989070, &qword_258F0E290);
    LOBYTE(v40) = 2;
    sub_258E1A330();
    v19 = v39;
    sub_258F0AC20();
    if (!v19)
    {
      v36 = v18;
      v37 = v15;
      v20 = v45[0];
      LOBYTE(v45[0]) = 3;
      v21 = sub_258F0ABF0();
      v39 = 0;
      v23 = v22;
      v35 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989088, &qword_258F0E298);
      LOBYTE(v40) = 4;
      sub_258E1A408();
      v19 = v39;
      sub_258F0AC20();
      if (!v19)
      {
        v34 = a2;
        v24 = v45[0];
        LOBYTE(v45[0]) = 5;
        v48 = sub_258F0AC00();
        v49 = 6;
        v25 = sub_258F0AC00();
        v39 = 0;
        v26 = v25;
        (*(v6 + 8))(v9, v5);
        v28 = v37;
        v27 = v38;
        *&v40 = v37;
        *(&v40 + 1) = v14;
        v29 = v36;
        *&v41 = v36;
        *(&v41 + 1) = v38;
        *&v42 = v20;
        *(&v42 + 1) = v35;
        *&v43 = v23;
        *(&v43 + 1) = v24;
        LOBYTE(v44) = v48;
        HIBYTE(v44) = v26;
        sub_258E1A4E0(&v40, v45);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v45[0] = v28;
        v45[1] = v14;
        v45[2] = v29;
        v45[3] = v27;
        v45[4] = v20;
        v45[5] = v35;
        v45[6] = v23;
        v45[7] = v24;
        v46 = v48;
        v47 = v26;
        result = sub_258E1A518(v45);
        v30 = v43;
        v31 = v34;
        *(v34 + 32) = v42;
        *(v31 + 48) = v30;
        *(v31 + 64) = v44;
        v32 = v41;
        *v31 = v40;
        *(v31 + 16) = v32;
        return result;
      }
    }

    v39 = v19;
    (*(v6 + 8))(v9, v5);
    v11 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  if (v11)
  {
  }
}

uint64_t sub_258E18EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F537465737361 && a2 == 0xEB00000000656372;
  if (v4 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000258F19D60 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570537465737361 && a2 == 0xEE00726569666963 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065 || (sub_258F0AD80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_258F0AD80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000258F19D80 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000258F19DA0 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461507465737361 && a2 == 0xE900000000000068 || (sub_258F0AD80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F4C7465737361 && a2 == 0xEB00000000656C61)
  {

    return 8;
  }

  else
  {
    v6 = sub_258F0AD80();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_258E191CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989020, &qword_258F0E268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v37 - v8;
  v10 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_258E196C4();
  sub_258F0AED0();
  if (v2)
  {
    v49 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
LABEL_4:
  }

  v47 = v6;
  LOBYTE(v59[0]) = 0;
  v11 = v5;
  v13 = sub_258F0AC50();
  v46 = v14;
  LOBYTE(v59[0]) = 1;
  v15 = sub_258F0AC60();
  LOBYTE(v59[0]) = 2;
  v16 = sub_258F0ABF0();
  v78 = v15;
  v17 = v16;
  v45 = v18;
  LOBYTE(v59[0]) = 3;
  v19 = sub_258F0AC50();
  v21 = v20;
  v43 = v17;
  v44 = v19;
  LOBYTE(v59[0]) = 4;
  v22 = sub_258F0ABF0();
  v24 = v23;
  v42 = v22;
  LOBYTE(v59[0]) = 5;
  v41 = sub_258F0AC90();
  LOBYTE(v59[0]) = 6;
  v40 = sub_258F0AC90();
  LOBYTE(v59[0]) = 7;
  v25 = sub_258F0ABF0();
  v49 = 0;
  v27 = v26;
  v39 = v25;
  v79 = 8;
  sub_258E19718();
  v28 = v49;
  sub_258F0AC70();
  v49 = v28;
  if (v28)
  {
    (*(v47 + 8))(v9, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);

    goto LABEL_4;
  }

  v78 &= 1u;
  v29 = v78;
  (*(v47 + 8))(v9, v11);
  v47 = v76;
  v37 = v77;
  v38 = *(&v76 + 1);
  v30 = v45;
  *&v50 = v13;
  *(&v50 + 1) = v46;
  LOBYTE(v51) = v29;
  v31 = v43;
  *(&v51 + 1) = v43;
  *&v52 = v45;
  *(&v52 + 1) = v44;
  *&v53 = v21;
  *(&v53 + 1) = v42;
  *&v54 = v24;
  *(&v54 + 1) = v41;
  *&v55 = v40;
  *(&v55 + 1) = v39;
  *&v56 = v27;
  *(&v56 + 1) = v75;
  v57 = v76;
  v32 = v75;
  v58 = v77;
  sub_258E1976C(&v50, v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v59[0] = v13;
  v59[1] = v46;
  v60 = v78;
  v61 = v31;
  v62 = v30;
  v63 = v44;
  v64 = v21;
  v65 = v42;
  v66 = v24;
  v67 = v41;
  v68 = v40;
  v69 = v39;
  v70 = v27;
  v71 = v32;
  v72 = v47;
  v73 = v38;
  v74 = v37;
  result = sub_258E197A4(v59);
  v33 = v57;
  *(a2 + 96) = v56;
  *(a2 + 112) = v33;
  *(a2 + 128) = v58;
  v34 = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v34;
  v35 = v55;
  *(a2 + 64) = v54;
  *(a2 + 80) = v35;
  v36 = v51;
  *a2 = v50;
  *(a2 + 16) = v36;
  return result;
}

unint64_t sub_258E196C4()
{
  result = qword_27F989028;
  if (!qword_27F989028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989028);
  }

  return result;
}

unint64_t sub_258E19718()
{
  result = qword_27F989030;
  if (!qword_27F989030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989030);
  }

  return result;
}

unint64_t sub_258E197D4()
{
  result = qword_27F989040;
  if (!qword_27F989040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989040);
  }

  return result;
}

uint64_t sub_258E19828(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890C8, &qword_258F0E2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A6F8();
  sub_258F0AED0();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_258F0AC50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9890D8, &qword_258F0E2B0);
    v10[15] = 1;
    sub_258E1A74C();
    sub_258F0AC70();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_258E19A2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000258F19E60 == a2 || (sub_258F0AD80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEF73656369646E49 || (sub_258F0AD80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7465537465737361 && a2 == 0xEE00736567617355 || (sub_258F0AD80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C416567617375 && a2 == 0xEC00000073657361)
  {

    return 3;
  }

  else
  {
    v5 = sub_258F0AD80();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_258E19BB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989138, &unk_258F0E2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A9A4();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v19) = 0;
  v16 = sub_258F0AC50();
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989148, &qword_258F0F400);
  v18 = 1;
  sub_258E1ABA8(&qword_27F989150, MEMORY[0x277D84CF0], MEMORY[0x277D83978]);
  sub_258F0AC70();
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989158, &qword_258F0E2F0);
  v18 = 2;
  sub_258E1A9F8();
  sub_258F0AC20();
  v11 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989170, &qword_258F0E2F8);
  v18 = 3;
  sub_258E1AAD0();
  sub_258F0AC20();
  (*(v6 + 8))(v9, v5);
  v12 = v19;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v17;
  *a2 = v16;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v11;
  a2[4] = v12;
  return result;
}

uint64_t sub_258E19EF0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  a4();
  sub_258F0AED0();
  if (!v5)
  {
    v13 = v16;
    v18 = 0;
    v12 = sub_258F0AC50();
    v17 = 1;
    sub_258F0AC50();
    (*(v13 + 8))(v11, v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

unint64_t sub_258E1A0E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989048, &qword_258F0E278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E1A288();
  sub_258F0AED0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11[15] = 0;
  v8 = sub_258F0AC80();
  v11[14] = 1;
  v9 = sub_258F0AC80();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8 | (v9 << 32);
}

unint64_t sub_258E1A288()
{
  result = qword_27F989050;
  if (!qword_27F989050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989050);
  }

  return result;
}

unint64_t sub_258E1A2DC()
{
  result = qword_27F989068;
  if (!qword_27F989068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989068);
  }

  return result;
}

unint64_t sub_258E1A330()
{
  result = qword_27F989078;
  if (!qword_27F989078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A3B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989078);
  }

  return result;
}

unint64_t sub_258E1A3B4()
{
  result = qword_27F989080;
  if (!qword_27F989080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989080);
  }

  return result;
}

unint64_t sub_258E1A408()
{
  result = qword_27F989090;
  if (!qword_27F989090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989090);
  }

  return result;
}

unint64_t sub_258E1A48C()
{
  result = qword_27F989098;
  if (!qword_27F989098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989098);
  }

  return result;
}

unint64_t sub_258E1A548()
{
  result = qword_27F9890A8;
  if (!qword_27F9890A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989070, &qword_258F0E290);
    sub_258E1A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890A8);
  }

  return result;
}

unint64_t sub_258E1A5CC()
{
  result = qword_27F9890B0;
  if (!qword_27F9890B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890B0);
  }

  return result;
}

unint64_t sub_258E1A620()
{
  result = qword_27F9890B8;
  if (!qword_27F9890B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989088, &qword_258F0E298);
    sub_258E1A6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890B8);
  }

  return result;
}

unint64_t sub_258E1A6A4()
{
  result = qword_27F9890C0;
  if (!qword_27F9890C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890C0);
  }

  return result;
}

unint64_t sub_258E1A6F8()
{
  result = qword_27F9890D0;
  if (!qword_27F9890D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890D0);
  }

  return result;
}

unint64_t sub_258E1A74C()
{
  result = qword_27F9890E0;
  if (!qword_27F9890E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890E0);
  }

  return result;
}

unint64_t sub_258E1A7D0()
{
  result = qword_27F9890E8;
  if (!qword_27F9890E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890E8);
  }

  return result;
}

unint64_t sub_258E1A824()
{
  result = qword_27F9890F8;
  if (!qword_27F9890F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9890D8, &qword_258F0E2B0);
    sub_258E1A8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9890F8);
  }

  return result;
}

unint64_t sub_258E1A8A8()
{
  result = qword_27F989100;
  if (!qword_27F989100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989100);
  }

  return result;
}

unint64_t sub_258E1A8FC()
{
  result = qword_27F989110;
  if (!qword_27F989110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989110);
  }

  return result;
}

unint64_t sub_258E1A950()
{
  result = qword_27F989128;
  if (!qword_27F989128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989128);
  }

  return result;
}

unint64_t sub_258E1A9A4()
{
  result = qword_27F989140;
  if (!qword_27F989140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989140);
  }

  return result;
}

unint64_t sub_258E1A9F8()
{
  result = qword_27F989160;
  if (!qword_27F989160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989160);
  }

  return result;
}

unint64_t sub_258E1AA7C()
{
  result = qword_27F989168;
  if (!qword_27F989168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989168);
  }

  return result;
}

unint64_t sub_258E1AAD0()
{
  result = qword_27F989178;
  if (!qword_27F989178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989178);
  }

  return result;
}

unint64_t sub_258E1AB54()
{
  result = qword_27F989180;
  if (!qword_27F989180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989180);
  }

  return result;
}

uint64_t sub_258E1ABA8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989148, &qword_258F0F400);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E1AC14()
{
  result = qword_27F989198;
  if (!qword_27F989198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989158, &qword_258F0E2F0);
    sub_258E1AC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989198);
  }

  return result;
}

unint64_t sub_258E1AC98()
{
  result = qword_27F9891A0;
  if (!qword_27F9891A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891A0);
  }

  return result;
}

unint64_t sub_258E1ACEC()
{
  result = qword_27F9891A8;
  if (!qword_27F9891A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989170, &qword_258F0E2F8);
    sub_258E1AD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891A8);
  }

  return result;
}

unint64_t sub_258E1AD70()
{
  result = qword_27F9891B0;
  if (!qword_27F9891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UAFAssetSet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UAFAssetSet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UAFAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UAFAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258E1B0D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E1B11C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_258E1B190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E1B1D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_258E1B2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258E1B2F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_258E1B350()
{
  result = qword_27F9891B8;
  if (!qword_27F9891B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891B8);
  }

  return result;
}

unint64_t sub_258E1B3A8()
{
  result = qword_27F9891C0;
  if (!qword_27F9891C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891C0);
  }

  return result;
}

unint64_t sub_258E1B400()
{
  result = qword_27F9891C8;
  if (!qword_27F9891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891C8);
  }

  return result;
}

unint64_t sub_258E1B458()
{
  result = qword_27F9891D0;
  if (!qword_27F9891D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891D0);
  }

  return result;
}

unint64_t sub_258E1B4B0()
{
  result = qword_27F9891D8;
  if (!qword_27F9891D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891D8);
  }

  return result;
}

unint64_t sub_258E1B508()
{
  result = qword_27F9891E0;
  if (!qword_27F9891E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891E0);
  }

  return result;
}

unint64_t sub_258E1B560()
{
  result = qword_27F9891E8;
  if (!qword_27F9891E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891E8);
  }

  return result;
}

unint64_t sub_258E1B5B8()
{
  result = qword_27F9891F0;
  if (!qword_27F9891F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891F0);
  }

  return result;
}

unint64_t sub_258E1B610()
{
  result = qword_27F9891F8;
  if (!qword_27F9891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9891F8);
  }

  return result;
}

unint64_t sub_258E1B668()
{
  result = qword_27F989200;
  if (!qword_27F989200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989200);
  }

  return result;
}

unint64_t sub_258E1B6C0()
{
  result = qword_27F989208;
  if (!qword_27F989208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989208);
  }

  return result;
}

unint64_t sub_258E1B718()
{
  result = qword_27F989210;
  if (!qword_27F989210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989210);
  }

  return result;
}

unint64_t sub_258E1B770()
{
  result = qword_27F989218;
  if (!qword_27F989218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989218);
  }

  return result;
}

unint64_t sub_258E1B7C8()
{
  result = qword_27F989220;
  if (!qword_27F989220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989220);
  }

  return result;
}

unint64_t sub_258E1B820()
{
  result = qword_27F989228;
  if (!qword_27F989228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989228);
  }

  return result;
}

unint64_t sub_258E1B878()
{
  result = qword_27F989230;
  if (!qword_27F989230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989230);
  }

  return result;
}

unint64_t sub_258E1B8D0()
{
  result = qword_27F989238;
  if (!qword_27F989238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989238);
  }

  return result;
}

unint64_t sub_258E1B928()
{
  result = qword_27F989240;
  if (!qword_27F989240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989240);
  }

  return result;
}

unint64_t sub_258E1B980()
{
  result = qword_27F989248;
  if (!qword_27F989248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989248);
  }

  return result;
}

unint64_t sub_258E1B9D8()
{
  result = qword_27F989250;
  if (!qword_27F989250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989250);
  }

  return result;
}

unint64_t sub_258E1BA30()
{
  result = qword_27F989258;
  if (!qword_27F989258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989258);
  }

  return result;
}

unint64_t sub_258E1BA88()
{
  result = qword_27F989260;
  if (!qword_27F989260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989260);
  }

  return result;
}

unint64_t sub_258E1BAE0()
{
  result = qword_27F989268;
  if (!qword_27F989268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989268);
  }

  return result;
}

unint64_t sub_258E1BB38()
{
  result = qword_27F989270;
  if (!qword_27F989270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989270);
  }

  return result;
}

unint64_t sub_258E1BB90()
{
  result = qword_27F989278;
  if (!qword_27F989278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989278);
  }

  return result;
}

unint64_t sub_258E1BBE8()
{
  result = qword_27F989280;
  if (!qword_27F989280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989280);
  }

  return result;
}

unint64_t sub_258E1BC40()
{
  result = qword_27F989288;
  if (!qword_27F989288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989288);
  }

  return result;
}

unint64_t sub_258E1BC94()
{
  result = qword_27F989298;
  if (!qword_27F989298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989298);
  }

  return result;
}

unint64_t sub_258E1BCE8()
{
  result = qword_27F9892A8;
  if (!qword_27F9892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892A8);
  }

  return result;
}

unint64_t sub_258E1BD3C()
{
  result = qword_27F9892B8;
  if (!qword_27F9892B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892B8);
  }

  return result;
}

unint64_t sub_258E1BDF8()
{
  result = qword_27F9892E0;
  if (!qword_27F9892E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsWorker.Subtask(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsWorker.Subtask(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ProductId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProductId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E1C110()
{
  result = qword_27F9892F0;
  if (!qword_27F9892F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892F0);
  }

  return result;
}

unint64_t sub_258E1C168()
{
  result = qword_27F9892F8;
  if (!qword_27F9892F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9892F8);
  }

  return result;
}

unint64_t sub_258E1C1C0()
{
  result = qword_27F989300;
  if (!qword_27F989300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989300);
  }

  return result;
}

unint64_t sub_258E1C218()
{
  result = qword_27F989308;
  if (!qword_27F989308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989308);
  }

  return result;
}

unint64_t sub_258E1C270()
{
  result = qword_27F989310;
  if (!qword_27F989310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989310);
  }

  return result;
}

unint64_t sub_258E1C2C8()
{
  result = qword_27F989318;
  if (!qword_27F989318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989318);
  }

  return result;
}

unint64_t sub_258E1C320()
{
  result = qword_27F989320;
  if (!qword_27F989320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989320);
  }

  return result;
}

unint64_t sub_258E1C378()
{
  result = qword_27F989328;
  if (!qword_27F989328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989328);
  }

  return result;
}

unint64_t sub_258E1C3D0()
{
  result = qword_27F989330;
  if (!qword_27F989330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989330);
  }

  return result;
}

unint64_t sub_258E1C428()
{
  result = qword_27F989338;
  if (!qword_27F989338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989338);
  }

  return result;
}

unint64_t sub_258E1C480()
{
  result = qword_27F989340;
  if (!qword_27F989340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989340);
  }

  return result;
}

unint64_t sub_258E1C4D8()
{
  result = qword_27F989348;
  if (!qword_27F989348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989348);
  }

  return result;
}

uint64_t sub_258E1C624(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of AssetPenetrationReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t AssetPenetrationSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E21CB8(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t AssetPenetrationSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258E21BF8(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258E1CA08(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = sub_258F0A370();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = *(type metadata accessor for AssetPenetrationData(0) - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E1CB40, 0, 0);
}

void sub_258E1CB40()
{
  v0[12] = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "AssetPenetrationSELFReporter reporting results for %ld events", v5, 0xCu);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[11];
  v7 = *(v6 + 16);
  v8 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService;
  v0[13] = v7;
  v0[14] = v8;
  if (v7)
  {
    v9 = v0[6];
    v0[15] = 0;
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    sub_258E02EF8(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v0[8]);
    v10 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[16] = v10;
    if (v10)
    {
      v11 = v10;
      v12 = v0[12];
      v14 = v0[7];
      v13 = v0[8];
      v16 = v0[4];
      v15 = v0[5];
      v17 = v0[2];
      v18 = v0[3];
      v30 = (v17 + v0[14]);
      v32 = v17;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v13, v14);
      (*(v16 + 16))(v15, v17 + v12, v18);
      v19 = sub_258E1D860(v14, v15);
      v0[17] = v19;
      [v11 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v13, v14);
      sub_258E1DC08(v14);
      v21 = v20;
      [v11 setEventMetadata_];

      v22 = v30[3];
      v23 = v30[4];
      __swift_project_boxed_opaque_existential_1(v30, v22);
      v31 = (*(v23 + 8) + **(v23 + 8));
      v24 = swift_task_alloc();
      v0[18] = v24;
      *v24 = v0;
      v24[1] = sub_258E1CF90;

      v31(v11, v32 + v12, v22, v23);
      return;
    }

    v25 = sub_258F0A350();
    v26 = sub_258F0A820();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_258DD8000, v25, v26, "Failed to generate event for asset penetration", v27, 2u);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v28 = v0[8];

    sub_258E02F5C(v28);
  }

  v29 = v0[1];

  v29();
}

uint64_t sub_258E1CF90()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_258E1D434;
  }

  else
  {
    v2 = sub_258E1D0A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E1D0A4()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 104);
  v3 = *(v0 + 120) + 1;
  result = sub_258E02F5C(*(v0 + 64));
  if (v3 != v2)
  {
    v5 = *(v0 + 120) + 1;
    *(v0 + 120) = v5;
    v6 = *(v0 + 88);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    sub_258E02EF8(v6 + ((*(*(v0 + 48) + 80) + 32) & ~*(*(v0 + 48) + 80)) + *(*(v0 + 48) + 72) * v5, *(v0 + 64));
    v7 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    *(v0 + 128) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 96);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v13 = *(v0 + 32);
      v12 = *(v0 + 40);
      v14 = *(v0 + 16);
      v15 = *(v0 + 24);
      v27 = (v14 + *(v0 + 112));
      v29 = v14;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v10, v11);
      (*(v13 + 16))(v12, v14 + v9, v15);
      v16 = sub_258E1D860(v11, v12);
      *(v0 + 136) = v16;
      [v8 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v10, v11);
      sub_258E1DC08(v11);
      v18 = v17;
      [v8 setEventMetadata_];

      v19 = v27[3];
      v20 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v19);
      v28 = (*(v20 + 8) + **(v20 + 8));
      v21 = swift_task_alloc();
      *(v0 + 144) = v21;
      *v21 = v0;
      v21[1] = sub_258E1CF90;

      return v28(v8, v29 + v9, v19, v20);
    }

    v22 = sub_258F0A350();
    v23 = sub_258F0A820();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258DD8000, v22, v23, "Failed to generate event for asset penetration", v24, 2u);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

    v25 = *(v0 + 64);

    sub_258E02F5C(v25);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258E1D434(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v7 = v1[16];
  v6 = v1[17];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report asset penetration event", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);

    v2 = v6;
  }

  else
  {
  }

  v9 = v1[13];
  v10 = v1[15] + 1;
  result = sub_258E02F5C(v1[8]);
  if (v10 != v9)
  {
    v12 = v1[15] + 1;
    v1[15] = v12;
    v13 = v1[11];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    sub_258E02EF8(v13 + ((*(v1[6] + 80) + 32) & ~*(v1[6] + 80)) + *(v1[6] + 72) * v12, v1[8]);
    v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v1[16] = v14;
    if (v14)
    {
      v15 = v14;
      v16 = v1[12];
      v18 = v1[7];
      v17 = v1[8];
      v20 = v1[4];
      v19 = v1[5];
      v21 = v1[2];
      v22 = v1[3];
      v34 = (v21 + v1[14]);
      v36 = v21;
      sub_258DEB8C8(0, &qword_27F989360, 0x277D591F0);
      sub_258E02EF8(v17, v18);
      (*(v20 + 16))(v19, v21 + v16, v22);
      v23 = sub_258E1D860(v18, v19);
      v1[17] = v23;
      [v15 setAssetSetStatusDigestReported_];
      sub_258DEB8C8(0, &qword_27F989368, 0x277D592B0);
      sub_258E02EF8(v17, v18);
      sub_258E1DC08(v18);
      v25 = v24;
      [v15 setEventMetadata_];

      v26 = v34[3];
      v27 = v34[4];
      __swift_project_boxed_opaque_existential_1(v34, v26);
      v35 = (*(v27 + 8) + **(v27 + 8));
      v28 = swift_task_alloc();
      v1[18] = v28;
      *v28 = v1;
      v28[1] = sub_258E1CF90;

      return v35(v15, v36 + v16, v26, v27);
    }

    v29 = sub_258F0A350();
    v30 = sub_258F0A820();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_258DD8000, v29, v30, "Failed to generate event for asset penetration", v31, 2u);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    v32 = v1[8];

    sub_258E02F5C(v32);
  }

  v33 = v1[1];

  return v33();
}

id sub_258E1D860(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetPenetrationData(0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_258F0CA20;
  sub_258DEB8C8(0, &qword_27F989380, 0x277D591E8);
  sub_258E02EF8(a1, v16);
  v27 = v5;
  (*(v5 + 16))(v8, a2, v4);
  v20 = v18;
  *(v19 + 32) = sub_258E1E240(v16, v8);
  v21 = sub_258F0A6A0();

  [v20 setDigests_];

  sub_258E02EF8(a1, v13);
  result = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v22 = result;
  if (*(v13 + 13))
  {
    v23 = sub_258F0A4E0();
    if ([v23 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v24 = 0;
    }

    else if ([v23 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v24 = 1;
    }

    else if ([v23 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v24 = 2;
    }

    else if ([v23 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v24 = 3;
    }

    else if ([v23 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v24 = 4;
    }

    else if ([v23 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v24 = 5;
    }

    else
    {
      v24 = 0;
    }

    [v22 setProgramCode_];
  }

  if (*(v13 + 9))
  {
    v25 = sub_258F0A4E0();
    [v22 setDeviceType_];
  }

  sub_258E02F5C(v13);
  [v20 setFixedDimensions_];

  (*(v27 + 8))(a2, v4);
  sub_258E02F5C(a1);
  return v20;
}

void sub_258E1DC08(char *a1)
{
  v2 = sub_258F09A20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - v9;
  v11 = sub_258F09A70();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - v18;
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v20)
  {
    sub_258E02F5C(a1);
    return;
  }

  v36 = v3;
  v37 = v2;

  sub_258F09A30();

  v21 = (*(v12 + 48))(v10, 1, v11);
  if (v21 == 1)
  {
    sub_258DE2184(v10, &qword_27F988730, &unk_258F0F8E0);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v23 = sub_258F09A50();
    v24 = [v22 0x1FB3D1262];

    [v20 setDeviceAggregationId_];
    (*(v12 + 8))(v19, v11);
  }

  sub_258F09B50();
  sub_258F099E0();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v25 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v25 >= 1.84467441e19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!is_mul_ok(v25, 0x3E8uLL))
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v20 setEventTimestampInMsSince1970_];
  sub_258E47ECC();
  v27 = v26;
  [v20 setAggregationInterval_];

  v28 = type metadata accessor for AssetPenetrationData(0);
  (*(v12 + 16))(v16, &a1[v28[13]], v11);
  v29 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v30 = sub_258F09A50();
  v31 = [v29 initWithNSUUID_];

  (*(v12 + 8))(v16, v11);
  [v20 setOddId_];

  v32 = &a1[v28[15]];
  if (v32[8])
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32;
  }

  [v20 setUserAggregationIdRotationTimestampMs_];
  v34 = &a1[v28[16]];
  if (v34[8])
  {
    v35 = 0;
  }

  else
  {
    v35 = *v34;
  }

  [v20 setUserAggregationIdExpirationTimestampMs_];
  sub_258E02F5C(a1);
  (*(v36 + 8))(v6, v37);
}

uint64_t sub_258E1E094()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));
}

uint64_t AssetPenetrationSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));
  return v0;
}

uint64_t AssetPenetrationSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

id sub_258E1E240(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetPenetrationData(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v14 = result;
    sub_258DEB8C8(0, &qword_27F989388, 0x277D591F8);
    sub_258E02EF8(a1, v12);
    (*(v5 + 16))(v8, a2, v4);
    v15 = v14;
    sub_258E1E408(v12, v8);
    v17 = v16;
    [v15 setDimensions_];

    (*(v5 + 8))(a2, v4);
    sub_258E02F5C(a1);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258E1E408(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v3 = sub_258F09A20();
  v129 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v128 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989390, &unk_258F159D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v126 - v8;
  v10 = sub_258F09AA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for AssetPenetrationData(0);
  v16 = MEMORY[0x28223BE20](v137, v15);
  *&v130 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v126 - v19);
  v21 = sub_258F0A370();
  v131 = *(v21 - 8);
  v132 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v138)
  {
    v127 = v3;
    v25 = MEMORY[0x277D84F90];
    v142 = sub_258DFBE24(MEMORY[0x277D84F90]);
    v141 = sub_258DFBE24(v25);
    v26 = *(a1 + 24);
    v135 = a1;
    if (v26)
    {
      v126 = *(a1 + 16);
      v133 = sub_258DEB8C8(0, &qword_27F9893A0, 0x277D5B1E0);
      v134 = v26;
      v27 = v20;
      v28 = v14;
      v29 = v11;
      v30 = v10;
      v31 = v9;
      v32 = *(v131 + 16);

      v32(v24, v136, v132);
      v9 = v31;
      v10 = v30;
      v11 = v29;
      v14 = v28;
      v20 = v27;

      a1 = v135;
      sub_258E1F240(v33, v24, &v142, &v141);
      v35 = v34;
      [v138 setAssetSetStatus_];

      if (!*(a1 + 136))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v126 = 0x526E776F6E6B6E55;
      v134 = 0xED00006E6F736165;
      if (!*(a1 + 136))
      {
LABEL_5:
        if ((*(a1 + 152) & 1) == 0)
        {
          [v138 setBuildInstallationTimestampInSecondsSince1970_];
        }

        sub_258DEB8C8(0, &qword_27F988AC8, 0x277D59248);
        sub_258E02EF8(a1, v20);
        v37 = sub_258E1FD24(v20);
        [v138 setAssistantDimensions_];

        v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        sub_258F09A80();
        v39 = sub_258F09A90();
        (*(v11 + 8))(v14, v10);
        [v38 setLocale_];

        v40 = sub_258F0A4E0();
        v133 = v38;
        [v38 setDateFormat_];

        sub_258F09B10();
        v41 = sub_258F09B40();
        v42 = *(v41 - 8);
        v43 = 0;
        if ((*(v42 + 48))(v9, 1, v41) != 1)
        {
          v43 = sub_258F09B20();
          (*(v42 + 8))(v9, v41);
        }

        [v133 setTimeZone_];

        v44 = v136;
        if (*(a1 + 56))
        {
          v45 = v128;
          sub_258F09B50();
          sub_258F099E0();
          v47 = v46;
          (*(v129 + 8))(v45, v127);
        }

        else
        {
          v47 = *(a1 + 48);
        }

        v48 = MEMORY[0x277D84F90];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_79;
        }

        if (v47 <= -1.0)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v47 >= 1.84467441e19)
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        [v138 setAssetSetStatusEventTimestampInSecondsSince1970_];
        v140 = v48;
        v49 = *(v137 + 68);
        if (*(a1 + v49))
        {
          v50 = *(a1 + v49);
        }

        else
        {
          v50 = v48;
        }

        v51 = *(v50 + 16);

        if (v51)
        {
          v52 = 0;
          v53 = (v50 + 40);
          v54 = &selRef_setSampledErrorAsset_;
          while (v52 < *(v50 + 16))
          {
            v55 = *(v53 - 1);
            v56 = *v53;
            v57 = [objc_allocWithZone(MEMORY[0x277D592B8]) v54[10]];
            if (!v57)
            {
              goto LABEL_82;
            }

            v58 = v57;
            v59 = [objc_allocWithZone(MEMORY[0x277D59360]) v54[10]];
            if (!v59)
            {
              goto LABEL_83;
            }

            v60 = v59;
            [v59 setTimestampInSecondsSince1970_];
            [v60 setStatusMessage_];
            [v58 setGmsAssetAvailabilityStatus_];

            v61 = v58;
            MEMORY[0x259C9DF50]();
            if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_258F0A6D0();
            }

            ++v52;
            sub_258F0A700();

            v53 += 2;
            v54 = &selRef_setSampledErrorAsset_;
            if (v51 == v52)
            {
              a1 = v135;
              v44 = v136;
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_77;
        }

LABEL_27:

        sub_258DEB8C8(0, &qword_27F989398, 0x277D592B8);
        v62 = sub_258F0A6A0();
        [v138 setClientProcessAssetAvailabilityStatus_];

        v63 = v142;
        v64 = v134;
        if (*(v142 + 16))
        {
        }

        else
        {
          v65 = *(v141 + 16);

          if (!v65)
          {
            (*(v131 + 8))(v44, v132);

            sub_258E02F5C(a1);

            goto LABEL_74;
          }
        }

        v66 = v130;
        sub_258E02EF8(a1, v130);

        v67 = sub_258F0A350();
        v68 = sub_258F0A800();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v139 = v70;
          *v69 = 134218242;
          v71 = *(v66 + 48);
          v72 = *(v66 + 56);
          sub_258E02F5C(v66);
          v73 = 0.0;
          if (!v72)
          {
            v73 = v71;
          }

          *(v69 + 4) = v73;
          *(v69 + 12) = 2080;
          v74 = sub_258DE3018(v126, v64, &v139);

          *(v69 + 14) = v74;
          _os_log_impl(&dword_258DD8000, v67, v68, "--- Conversion Summary for ODD Payload (Timestamp: %f, Reason: %s) ---", v69, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x259C9EF40](v70, -1, -1);
          MEMORY[0x259C9EF40](v69, -1, -1);
        }

        else
        {

          sub_258E02F5C(v66);
        }

        v76 = _swift_stdlib_bridgeErrorToNSError;
        if (*(v63 + 16))
        {
          v77 = 0;
          v78 = v63 + 64;
          v79 = 1 << *(v63 + 32);
          v80 = -1;
          if (v79 < 64)
          {
            v80 = ~(-1 << v79);
          }

          v81 = v80 & *(v63 + 64);
          v82 = (v79 + 63) >> 6;
          *&v75 = 136315394;
          v130 = v75;
          v137 = v63;
          while (v81)
          {
            v83 = v77;
LABEL_48:
            v84 = __clz(__rbit64(v81));
            v81 &= v81 - 1;
            v85 = v84 | (v83 << 6);
            v86 = (*(v63 + 48) + 16 * v85);
            v88 = *v86;
            v87 = v86[1];
            v134 = *(*(v63 + 56) + 8 * v85);

            v89 = sub_258F0A350();
            v90 = sub_258F0A800();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v139 = v92;
              *v91 = v130;
              v93 = sub_258DE3018(v88, v87, &v139);

              *(v91 + 4) = v93;
              *(v91 + 12) = 2048;
              *(v91 + 14) = v134;
              _os_log_impl(&dword_258DD8000, v89, v90, "ODD Payload - Asset Source Conversion: %s: %ld occurrences", v91, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v92);
              v94 = v92;
              a1 = v135;
              MEMORY[0x259C9EF40](v94, -1, -1);
              v95 = v91;
              v44 = v136;
              MEMORY[0x259C9EF40](v95, -1, -1);
            }

            else
            {
            }

            v77 = v83;
            v63 = v137;
          }

          while (1)
          {
            v83 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              break;
            }

            if (v83 >= v82)
            {

              v76 = _swift_stdlib_bridgeErrorToNSError;
              goto LABEL_54;
            }

            v81 = *(v78 + 8 * v83);
            ++v77;
            if (v81)
            {
              goto LABEL_48;
            }
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v96 = sub_258F0A350();
        v97 = sub_258F0A800();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_258DD8000, v96, v97, "ODD Payload - Asset Source Conversions: None.", v98, 2u);
          MEMORY[0x259C9EF40](v98, -1, -1);
        }

LABEL_54:
        v99 = v141;
        if (*(v141 + 16))
        {
          v100 = v141 + 64;
          v101 = 1 << *(v141 + 32);
          v102 = -1;
          if (v101 < 64)
          {
            v102 = ~(-1 << v101);
          }

          v103 = v102 & *(v141 + 64);
          v104 = (v101 + 63) >> 6;

          v105 = 0;
          *&v106 = *(v76 + 257);
          v130 = v106;
          v137 = v99;
          while (v103)
          {
            v107 = v105;
LABEL_65:
            v108 = __clz(__rbit64(v103));
            v103 &= v103 - 1;
            v109 = v108 | (v107 << 6);
            v110 = (*(v99 + 48) + 16 * v109);
            v112 = *v110;
            v111 = v110[1];
            v134 = *(*(v99 + 56) + 8 * v109);

            v113 = sub_258F0A350();
            v114 = sub_258F0A800();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v139 = v116;
              *v115 = v130;
              v117 = sub_258DE3018(v112, v111, &v139);

              *(v115 + 4) = v117;
              *(v115 + 12) = 2048;
              *(v115 + 14) = v134;
              _os_log_impl(&dword_258DD8000, v113, v114, "ODD Payload - Locale Conversion: %s: %ld occurrences", v115, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v116);
              v118 = v116;
              a1 = v135;
              MEMORY[0x259C9EF40](v118, -1, -1);
              v119 = v115;
              v44 = v136;
              MEMORY[0x259C9EF40](v119, -1, -1);
            }

            else
            {
            }

            v105 = v107;
            v99 = v137;
          }

          while (1)
          {
            v107 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              goto LABEL_78;
            }

            if (v107 >= v104)
            {

              goto LABEL_71;
            }

            v103 = *(v100 + 8 * v107);
            ++v105;
            if (v103)
            {
              goto LABEL_65;
            }
          }
        }

        v120 = sub_258F0A350();
        v121 = sub_258F0A800();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_258DD8000, v120, v121, "ODD Payload - Locale Conversions: None.", v122, 2u);
          MEMORY[0x259C9EF40](v122, -1, -1);
        }

LABEL_71:
        v123 = sub_258F0A350();
        v124 = sub_258F0A800();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_258DD8000, v123, v124, "--- End of Conversion Summary ---", v125, 2u);
          MEMORY[0x259C9EF40](v125, -1, -1);
        }

        (*(v131 + 8))(v44, v132);
        sub_258E02F5C(a1);
LABEL_74:

        return;
      }
    }

    v36 = sub_258F0A4E0();
    [v138 setPreviousSystemBuild_];

    goto LABEL_5;
  }

LABEL_84:
  __break(1u);
}

void sub_258E1F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v8)
  {
LABEL_108:
    __break(1u);
    return;
  }

  v98 = a2;
  v92[2] = a2;
  v92[3] = a3;
  v92[4] = a4;
  v93 = MEMORY[0x28223BE20](v8, v9);
  v94 = a1;
  v101 = sub_258EA8418(sub_258E21ED0, v92, a1);
  v10 = MEMORY[0x277D84F90];
  v100 = *(v101 + 16);
  if (!v100)
  {
    goto LABEL_36;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v99 = v101 + 32;
  while (1)
  {
    if (v11 >= *(v101 + 16))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
      goto LABEL_108;
    }

    v13 = *(v99 + 8 * v11);
    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_258F0AA20() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v12 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_35;
    }

LABEL_11:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v19 = v12 & 0xFFFFFFFFFFFFFF8;
        v20 = v12;
        if (v18 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_258F0AA20();
      goto LABEL_17;
    }

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_17:
    v20 = sub_258F0AB00();
    v19 = v20 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v103 = v20;
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v14)
    {
      v24 = v19;
      v25 = sub_258F0AA20();
      v19 = v24;
      v23 = v25;
      if (!v25)
      {
LABEL_4:

        v12 = v103;
        if (v15 > 0)
        {
          goto LABEL_96;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_4;
      }
    }

    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_101;
    }

    v102 = v15;
    v26 = v19 + 8 * v21 + 32;
    v97 = v19;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_105;
      }

      v95 = v12;
      v96 = v11;
      sub_258E21F2C(&qword_27F9893B0, &qword_27F988F38, &unk_258F0F3F0);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F38, &unk_258F0F3F0);
        v29 = sub_258E21B70(v107, i, v13);
        v31 = *v30;
        (v29)(v107, 0);
        *(v26 + 8 * i) = v31;
      }

      v11 = v96;
      v10 = MEMORY[0x277D84F90];
      v27 = v102;
    }

    else
    {
      sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
      v27 = v102;
      swift_arrayInitWithCopy();
    }

    v12 = v103;
    if (v27 > 0)
    {
      v32 = *(v97 + 16);
      v33 = __OFADD__(v32, v27);
      v34 = v32 + v27;
      if (v33)
      {
        goto LABEL_103;
      }

      *(v97 + 16) = v34;
    }

LABEL_5:
    if (++v11 == v100)
    {
      goto LABEL_36;
    }
  }

  v35 = sub_258F0AA20();
  v18 = v35 + v15;
  if (!__OFADD__(v35, v15))
  {
    goto LABEL_11;
  }

LABEL_35:
  __break(1u);
LABEL_36:

  sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
  v36 = sub_258F0A6A0();

  [v93 setUafAssetSets_];

  v37 = v94;
  v38 = *(v94 + 16);
  if (!v38)
  {

    v40 = MEMORY[0x277D84F90];
    v41 = v98;
    v64 = *(MEMORY[0x277D84F90] + 16);
    if (!v64)
    {
      goto LABEL_93;
    }

LABEL_60:
    v65 = 0;
    v66 = MEMORY[0x277D84F90];
    v67 = v40 + 32;
    v99 = v40;
    v95 = v40 + 32;
    v96 = v64;
    while (1)
    {
      if (v65 >= *(v40 + 16))
      {
        goto LABEL_97;
      }

      v68 = v66;
      v69 = *(v67 + 8 * v65);
      v70 = v69 >> 62;
      if (v69 >> 62)
      {
        v71 = sub_258F0AA20();
      }

      else
      {
        v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = v66 >> 62;
      if (v68 >> 62)
      {
        v73 = sub_258F0AA20();
      }

      else
      {
        v73 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v103 = v71;
      v33 = __OFADD__(v73, v71);
      v74 = v73 + v71;
      if (v33)
      {
        goto LABEL_98;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v100 = v65;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v72)
      {
        goto LABEL_74;
      }

LABEL_75:
      v77 = sub_258F0AB00();
      v76 = v77 & 0xFFFFFFFFFFFFFF8;
LABEL_76:
      v101 = v68;
      v102 = v77;
      v78 = *(v76 + 16);
      v79 = *(v76 + 24);
      if (v70)
      {
        v80 = sub_258F0AA20();
        if (!v80)
        {
LABEL_61:

          v66 = v102;
          if (v103 > 0)
          {
            goto LABEL_99;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v80 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v80)
        {
          goto LABEL_61;
        }
      }

      if (((v79 >> 1) - v78) < v103)
      {
        goto LABEL_102;
      }

      v81 = v76 + 8 * v78 + 32;
      if (v70)
      {
        if (v80 < 1)
        {
          goto LABEL_106;
        }

        v97 = v76;
        sub_258E21F2C(&qword_27F9893C0, &qword_27F988F28, &qword_258F0DBD8);
        for (j = 0; j != v80; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988F28, &qword_258F0DBD8);
          v84 = sub_258E21AF0(v106, j, v69);
          v86 = *v85;
          (v84)(v106, 0);
          *(v81 + 8 * j) = v86;
        }

        v67 = v95;
        v64 = v96;
        v82 = v103;
        v76 = v97;
      }

      else
      {
        sub_258DEB8C8(0, &qword_27F9893B8, 0x277D5B1F8);
        v82 = v103;
        swift_arrayInitWithCopy();
      }

      v66 = v102;
      if (v82 > 0)
      {
        v87 = *(v76 + 16);
        v33 = __OFADD__(v87, v82);
        v88 = v87 + v82;
        if (v33)
        {
          goto LABEL_104;
        }

        *(v76 + 16) = v88;
      }

LABEL_62:
      v40 = v99;
      v65 = v100 + 1;
      v41 = v98;
      if (v100 + 1 == v64)
      {
        goto LABEL_93;
      }
    }

    if (!v72)
    {
      v76 = v68 & 0xFFFFFFFFFFFFFF8;
      v77 = v68;
      if (v74 <= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

LABEL_74:
    sub_258F0AA20();
    goto LABEL_75;
  }

  v106[0] = v10;
  sub_258E14CF8(0, v38, 0);
  v39 = 0;
  v95 = v38;
  v96 = v37 + 32;
  v40 = v106[0];
  v41 = v98;
  do
  {
    if (v39 >= *(v37 + 16))
    {
      goto LABEL_100;
    }

    v42 = (v96 + 16 * v39);
    v43 = v42[1];
    if (v43)
    {
      v100 = v39;
      v44 = *v42;
      v105 = v10;
      v45 = *(v43 + 16);
      swift_bridgeObjectRetain_n();
      v97 = v44;

      v103 = v45;
      if (v45)
      {
        v99 = v40;
        v46 = 0;
        v101 = v43;
        v102 = v43 + 32;
        while (v46 < *(v43 + 16))
        {
          v47 = *(v102 + 24 * v46 + 16);
          v48 = objc_allocWithZone(MEMORY[0x277D5B1F8]);

          v49 = [v48 init];
          if (!v49)
          {
            goto LABEL_107;
          }

          v50 = v49;
          v51 = sub_258F0A4E0();
          [v50 setSubscriberName_];

          v52 = *(v47 + 16);
          if (v52)
          {
            v104 = v10;
            sub_258F0AB40();
            sub_258DEB8C8(0, &qword_27F9893C8, 0x277D5B1E8);
            v53 = (v47 + 64);
            do
            {
              v54 = *(v53 - 4);
              v55 = *(v53 - 3);
              v56 = *(v53 - 2);
              v57 = *(v53 - 1);
              v58 = *v53;
              v53 += 5;
              v107[0] = v54;
              v107[1] = v55;
              v107[2] = v56;
              v107[3] = v57;
              v107[4] = v58;

              sub_258E20380(v107);
              sub_258F0AB20();
              sub_258F0AB50();
              sub_258F0AB60();
              sub_258F0AB30();
              --v52;
            }

            while (v52);

            v10 = MEMORY[0x277D84F90];
          }

          else
          {
          }

          sub_258DEB8C8(0, &qword_27F9893C8, 0x277D5B1E8);
          v59 = sub_258F0A6A0();

          [v50 setSubscriptions_];

          MEMORY[0x259C9DF50]();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          ++v46;
          sub_258F0A700();
          v43 = v101;
          if (v46 == v103)
          {
            v60 = v105;
            v41 = v98;
            v40 = v99;
            v37 = v94;
            v38 = v95;
            goto LABEL_55;
          }
        }

        __break(1u);
        goto LABEL_95;
      }

      v60 = v10;
LABEL_55:

      swift_bridgeObjectRelease_n();
      v39 = v100;
    }

    else
    {
      v60 = v10;
    }

    v106[0] = v40;
    v62 = *(v40 + 16);
    v61 = *(v40 + 24);
    if (v62 >= v61 >> 1)
    {
      v63 = v39;
      sub_258E14CF8((v61 > 1), v62 + 1, 1);
      v39 = v63;
      v40 = v106[0];
    }

    ++v39;
    *(v40 + 16) = v62 + 1;
    *(v40 + 8 * v62 + 32) = v60;
  }

  while (v39 != v38);

  v64 = *(v40 + 16);
  if (v64)
  {
    goto LABEL_60;
  }

LABEL_93:

  sub_258DEB8C8(0, &qword_27F9893B8, 0x277D5B1F8);
  v89 = sub_258F0A6A0();

  v90 = v93;
  [v93 setUafAssetSubscriptions_];

  v91 = sub_258F0A370();
  (*(*(v91 - 8) + 8))(v41, v91);
}

id sub_258E1FD24(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    if (a1[11])
    {
      v4 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    if (*(a1 + *(type metadata accessor for AssetPenetrationData(0) + 56) + 8))
    {
      v5 = sub_258F0A4E0();
      if ([v5 isEqualToString:@"UNKNOWN"])
      {
        v6 = 0;
      }

      else if ([v5 isEqualToString:@"OPTED_IN"])
      {
        v6 = 1;
      }

      else if ([v5 isEqualToString:@"OPTED_OUT"])
      {
        v6 = 2;
      }

      else if ([v5 isEqualToString:@"DISMISSED"])
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      [v3 setDataSharingOptInStatus_];
    }

    v7 = a1[15];
    if (v7)
    {
      v8 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(a1[14], v7);
      [v3 setSiriInputLocale_];
    }

    sub_258E02F5C(a1);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_258E1FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_258F0A370();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v15;
  v21 = *(a1 + 64);
  v16 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v16;
  sub_258DEB8C8(0, &qword_27F9893A8, 0x277D5B1D8);
  (*(v11 + 16))(v14, a2, v10);
  sub_258E1A4E0(v20, v19);
  result = sub_258E1FFD4(v20, v14, a3, a4);
  *a5 = result;
  return result;
}

id sub_258E1FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    v10 = sub_258F0A4E0();
    [v9 setAssetSetName_];

    if (*(a1 + 8))
    {

      v11 = sub_258F0A4E0();
    }

    else
    {
      v11 = 0;
    }

    [v9 setAssetSetId_];

    v14 = *(a1 + 32);
    if (v14)
    {
      MEMORY[0x28223BE20](v12, v13);
      v26[2] = a2;
      v26[3] = a3;
      v26[4] = a4;

      sub_258EA86C8(sub_258E21FA4, v26, v14);

      sub_258DEB8C8(0, &qword_27F9893F8, 0x277D5B1C0);
      v15 = sub_258F0A6A0();
    }

    else
    {
      v15 = 0;
    }

    [v9 setAssets_];

    if (*(a1 + 48))
    {

      v16 = sub_258F0A4E0();
    }

    else
    {
      v16 = 0;
    }

    [v9 setAudienceId_];

    v17 = *(a1 + 56);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v27 = v9;
        v28 = a1;
        v29 = a2;
        v30 = MEMORY[0x277D84F90];
        result = sub_258F0AB40();
        v19 = 0;
        v20 = (v17 + 36);
        while (v19 < *(v17 + 16))
        {
          v22 = *(v20 - 1);
          v21 = *v20;
          result = [objc_allocWithZone(MEMORY[0x277D5B220]) init];
          if (!result)
          {
            goto LABEL_22;
          }

          ++v19;
          v23 = result;
          [v23 setMobileAssetDownloadErrorCode_];
          [v23 setTimesOccurred_];

          sub_258F0AB20();
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v20 += 2;
          if (v18 == v19)
          {
            a1 = v28;
            a2 = v29;
            v9 = v27;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_18:
      sub_258DEB8C8(0, &qword_27F9893F0, 0x277D5B220);
      v24 = sub_258F0A6A0();
    }

    else
    {
      v24 = 0;
    }

    [v9 setMobileAssetDownloadErrorCodeFrequencys_];

    [v9 setFromPreSoftwareUpdateStaging_];
    sub_258E1A518(a1);
    [v9 setExpensiveCellularDownloadRequested_];

    v25 = sub_258F0A370();
    (*(*(v25 - 8) + 8))(a2, v25);
    return v9;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_258E20380(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    v4 = sub_258F0A4E0();
    [v3 setSubscriptionName_];

    v5 = a1[2];
    v32 = v5;
    v6 = *(v5 + 16);
    if (v6)
    {
      v31 = MEMORY[0x277D84F90];
      sub_258F0AB40();
      v7 = v5 + 32;
      do
      {
        v7 += 4;
        sub_258F0AEB0();
        sub_258F0AB20();
        sub_258F0AB50();
        sub_258F0AB60();
        sub_258F0AB30();
        --v6;
      }

      while (v6);
    }

    sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
    v8 = sub_258F0A6A0();

    [v3 setAssetSetIndices_];

    v9 = a1[3];
    v31 = v9;
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v27 = a1;
        v28 = v3;
        v30 = MEMORY[0x277D84F90];
        result = sub_258F0AB40();
        v11 = 0;
        v12 = v9 + 56;
        while (v11 < *(v9 + 16))
        {
          v13 = objc_allocWithZone(MEMORY[0x277D5B1F0]);

          result = [v13 init];
          if (!result)
          {
            goto LABEL_27;
          }

          ++v11;
          v14 = result;
          v15 = sub_258F0A4E0();
          [v14 setUsageName_];

          v16 = sub_258F0A4E0();

          [v14 setUsageValue_];

          sub_258F0AB20();
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v12 += 32;
          if (v10 == v11)
          {
            v3 = v28;
            a1 = v27;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_12:
      sub_258DEB8C8(0, &qword_27F9893E8, 0x277D5B1F0);
      v17 = sub_258F0A6A0();
    }

    else
    {
      v17 = 0;
    }

    [v3 setAssetSetUsages_];

    v18 = a1[4];
    v30 = v18;
    if (v18)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        v29 = v3;
        result = sub_258F0AB40();
        v20 = 0;
        v21 = v18 + 56;
        while (v20 < *(v18 + 16))
        {
          v22 = objc_allocWithZone(MEMORY[0x277D5B200]);

          result = [v22 init];
          if (!result)
          {
            goto LABEL_28;
          }

          ++v20;
          v23 = result;
          v24 = sub_258F0A4E0();
          [v23 setAliasName_];

          v25 = sub_258F0A4E0();

          [v23 setAliasValue_];

          sub_258F0AB20();
          sub_258F0AB50();
          sub_258F0AB60();
          result = sub_258F0AB30();
          v21 += 32;
          if (v19 == v20)
          {

            sub_258DE2184(&v32, &qword_27F989148, &qword_258F0F400);
            sub_258DE2184(&v31, &qword_27F9893D0, &qword_258F0F408);
            sub_258DE2184(&v30, &qword_27F9893D8, &qword_258F0F410);
            v3 = v29;
            goto LABEL_23;
          }
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      sub_258DE2184(&v32, &qword_27F989148, &qword_258F0F400);
      sub_258DE2184(&v31, &qword_27F9893D0, &qword_258F0F408);
      sub_258DE2184(&v30, &qword_27F9893D8, &qword_258F0F410);
LABEL_23:
      sub_258DEB8C8(0, &qword_27F9893E0, 0x277D5B200);
      v26 = sub_258F0A6A0();
    }

    else
    {

      sub_258DE2184(&v32, &qword_27F989148, &qword_258F0F400);
      sub_258DE2184(&v31, &qword_27F9893D0, &qword_258F0F408);
      v26 = 0;
    }

    [v3 setUsageAliases_];

    return v3;
  }

LABEL_29:
  __break(1u);
  return result;
}

id sub_258E208EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a5;
  v9 = sub_258F0A370();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v14;
  v22 = *(a1 + 128);
  v15 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v15;
  v16 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v16;
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v17;
  sub_258DEB8C8(0, &qword_27F9893F8, 0x277D5B1C0);
  (*(v10 + 16))(v13, a2, v9);
  sub_258E1976C(v21, &v20);
  result = sub_258E20A58(v21, v13, a3, a4);
  *v19 = result;
  return result;
}

id sub_258E20A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v14)
  {
    __break(1u);
    goto LABEL_76;
  }

  v15 = v14;
  v16 = sub_258F0A4E0();
  [v15 setAssetName_];

  [v15 setIsAssetPathValid_];
  [v15 setAssetDownloadSizeInBytes_];
  v63 = v15;
  [v15 setAssetUnarchivedSizeInBytes_];
  v17 = *a1;
  v18 = *(a1 + 8);
  v61 = a2;
  v6 = sub_258E21854(*a1, v18);
  v20 = v19;

  MEMORY[0x259C9DEB0](v17, v18);

  MEMORY[0x259C9DEB0](0x27203E2D2027, 0xE600000000000000);
  MEMORY[0x259C9DEB0](v6, v20);
  MEMORY[0x259C9DEB0](39, 0xE100000000000000);
  v8 = 39;
  v7 = 0xE100000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a3;
  v64 = *a3;
  v9 = sub_258E2E9B4(39, 0xE100000000000000);
  v22 = v4[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
LABEL_11:
    sub_258ED84E0();
    v4 = v64;
    *a3 = v64;
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v10 = v21;
  if (v4[3] < v24)
  {
    sub_258ED541C(v24, isUniquelyReferenced_nonNull_native);
    v4 = v64;
    v25 = sub_258E2E9B4(39, 0xE100000000000000);
    if ((v10 & 1) != (v26 & 1))
    {
      goto LABEL_177;
    }

    v9 = v25;
    *a3 = v64;
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

  *a3 = v4;
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_258ED80C8(v9, 39, 0xE100000000000000, 0, v4);
LABEL_13:
  v27 = v4[7];
  v28 = *(v27 + 8 * v9);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 8 * v9) = v30;
    v31 = sub_258F0A4E0();

    v32 = v31;
    if ([v32 isEqualToString:@"UAFASSETSOURCE_UNKNOWN"])
    {
      v33 = 0;
      v34 = v63;
    }

    else
    {
      v34 = v63;
      if ([v32 isEqualToString:@"UAFASSETSOURCE_FACTORY_INSTALL"])
      {
        v33 = 1;
      }

      else if ([v32 isEqualToString:@"UAFASSETSOURCE_ROOT"])
      {
        v33 = 2;
      }

      else if ([v32 isEqualToString:@"UAFASSETSOURCE_TRIAL"])
      {
        v33 = 3;
      }

      else if ([v32 isEqualToString:@"UAFASSETSOURCE_MOBILE_ASSET"])
      {
        v33 = 4;
      }

      else
      {
        v33 = 0;
      }
    }

    [v34 setAssetSource_];
    if (*(a1 + 32))
    {

      v35 = sub_258F0A4E0();
    }

    else
    {
      v35 = 0;
    }

    [v34 setAssetSpecifier_];

    if (*(a1 + 64))
    {

      v36 = sub_258F0A4E0();
    }

    else
    {
      v36 = 0;
    }

    [v34 setAssetVersion_];

    if (*(a1 + 96))
    {

      v37 = sub_258F0A4E0();
    }

    else
    {
      v37 = 0;
    }

    [v34 setAssetPath_];

    v9 = *(a1 + 104);
    v8 = *(a1 + 112);
    v7 = *(a1 + 120);
    v6 = *(a1 + 128);
    v38 = sub_258F0A560();
    v40 = v39;
    v41 = sub_258F0A560();
    v43 = v42;
    MEMORY[0x259C9DEB0](v38, v40);

    isUniquelyReferenced_nonNull_native = 0xE100000000000000;
    MEMORY[0x259C9DEB0](95, 0xE100000000000000);
    MEMORY[0x259C9DEB0](v41, v43);

    a3 = 0x5F454C41434F4CLL;
    v10 = 0xE700000000000000;
    v4 = sub_258F0A4E0();
    if ([v4 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
    {
      v44 = 0;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_AR_AE"])
    {
      v44 = 1;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_AR_SA"])
    {
      v44 = 2;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_CA_ES"])
    {
      v44 = 3;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_CS_CZ"])
    {
      v44 = 4;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DA_DK"])
    {
      v44 = 5;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_AT"])
    {
      v44 = 6;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_CH"])
    {
      v44 = 7;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_DE_DE"])
    {
      v44 = 8;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_EL_GR"])
    {
      v44 = 9;
      goto LABEL_163;
    }

    if ([v4 isEqualToString:@"LOCALE_EN_AE"])
    {
      v44 = 10;
      goto LABEL_163;
    }
  }

  if ([v4 isEqualToString:{@"LOCALE_EN_AU", v61}])
  {
    v44 = 11;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_CA"])
  {
    v44 = 12;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_GB"])
  {
    v44 = 13;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_ID"])
  {
    v44 = 14;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_IE"])
  {
    v44 = 15;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_IN"])
  {
    v44 = 16;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_MY"])
  {
    v44 = 17;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v44 = 18;
    goto LABEL_163;
  }

  if ([v4 isEqualToString:@"LOCALE_EN_PH"])
  {
    v44 = 19;
    goto LABEL_163;
  }

LABEL_76:
  if ([v4 isEqualToString:@"LOCALE_EN_SG"])
  {
    v44 = 20;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_SA"])
  {
    v44 = 21;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_US"])
  {
    v44 = 22;
  }

  else if ([v4 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v44 = 23;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_CL"])
  {
    v44 = 24;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_CO"])
  {
    v44 = 25;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_ES"])
  {
    v44 = 26;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_MX"])
  {
    v44 = 27;
  }

  else if ([v4 isEqualToString:@"LOCALE_ES_US"])
  {
    v44 = 28;
  }

  else if ([v4 isEqualToString:@"LOCALE_FI_FI"])
  {
    v44 = 29;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_BE"])
  {
    v44 = 30;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_CA"])
  {
    v44 = 31;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_CH"])
  {
    v44 = 32;
  }

  else if ([v4 isEqualToString:@"LOCALE_FR_FR"])
  {
    v44 = 33;
  }

  else if ([v4 isEqualToString:@"LOCALE_HE_IL"])
  {
    v44 = 34;
  }

  else if ([v4 isEqualToString:@"LOCALE_HI_IN"])
  {
    v44 = 35;
  }

  else if ([v4 isEqualToString:@"LOCALE_HR_HR"])
  {
    v44 = 36;
  }

  else if ([v4 isEqualToString:@"LOCALE_HU_HU"])
  {
    v44 = 37;
  }

  else if ([v4 isEqualToString:@"LOCALE_ID_ID"])
  {
    v44 = 38;
  }

  else if ([v4 isEqualToString:@"LOCALE_IT_CH"])
  {
    v44 = 39;
  }

  else if ([v4 isEqualToString:@"LOCALE_IT_IT"])
  {
    v44 = 40;
  }

  else if ([v4 isEqualToString:@"LOCALE_JA_JP"])
  {
    v44 = 41;
  }

  else if ([v4 isEqualToString:@"LOCALE_KO_KR"])
  {
    v44 = 42;
  }

  else if ([v4 isEqualToString:@"LOCALE_MS_MY"])
  {
    v44 = 43;
  }

  else if ([v4 isEqualToString:@"LOCALE_NB_NO"])
  {
    v44 = 44;
  }

  else if ([v4 isEqualToString:@"LOCALE_NL_BE"])
  {
    v44 = 45;
  }

  else if ([v4 isEqualToString:@"LOCALE_NL_NL"])
  {
    v44 = 46;
  }

  else if ([v4 isEqualToString:@"LOCALE_PL_PL"])
  {
    v44 = 47;
  }

  else if ([v4 isEqualToString:@"LOCALE_PT_BR"])
  {
    v44 = 48;
  }

  else if ([v4 isEqualToString:@"LOCALE_PT_PT"])
  {
    v44 = 49;
  }

  else if ([v4 isEqualToString:@"LOCALE_RO_RO"])
  {
    v44 = 50;
  }

  else if ([v4 isEqualToString:@"LOCALE_RU_RU"])
  {
    v44 = 51;
  }

  else if ([v4 isEqualToString:@"LOCALE_SK_SK"])
  {
    v44 = 52;
  }

  else if ([v4 isEqualToString:@"LOCALE_SV_SE"])
  {
    v44 = 53;
  }

  else if ([v4 isEqualToString:@"LOCALE_TH_TH"])
  {
    v44 = 54;
  }

  else if ([v4 isEqualToString:@"LOCALE_TR_TR"])
  {
    v44 = 55;
  }

  else if ([v4 isEqualToString:@"LOCALE_UK_UA"])
  {
    v44 = 56;
  }

  else if ([v4 isEqualToString:@"LOCALE_VI_VN"])
  {
    v44 = 57;
  }

  else if ([v4 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v44 = 58;
  }

  else if ([v4 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v44 = 59;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v44 = 60;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v44 = 61;
  }

  else if ([v4 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v44 = 62;
  }

  else
  {
    v44 = 0;
  }

LABEL_163:

  [v63 setAssetLocale_];
  sub_258F0AAE0();

  MEMORY[0x259C9DEB0](v9, v8);

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](v7, v6);
  sub_258E197A4(a1);

  MEMORY[0x259C9DEB0](0x6573726170282027, 0xEE00272073612064);
  MEMORY[0x259C9DEB0](a3, v10);

  MEMORY[0x259C9DEB0](0x6E65203E2D202927, 0xEB00000000206D75);
  v45 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v45);

  v46 = isUniquelyReferenced_nonNull_native;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *a4;
  v50 = sub_258E2E9B4(39, v46);
  v51 = v48[2];
  v52 = (v49 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    __break(1u);
    goto LABEL_172;
  }

  LOBYTE(v6) = v49;
  if (v48[3] >= v53)
  {
    if (v47)
    {
      *a4 = v48;
      if (v49)
      {
        goto LABEL_170;
      }

LABEL_173:
      sub_258ED80C8(v50, 39, v46, 0, v48);
      goto LABEL_174;
    }

LABEL_172:
    sub_258ED84E0();
    *a4 = v48;
    if (v6)
    {
      goto LABEL_170;
    }

    goto LABEL_173;
  }

  sub_258ED541C(v53, v47);
  v54 = sub_258E2E9B4(39, v46);
  if ((v6 & 1) != (v55 & 1))
  {
    goto LABEL_177;
  }

  v50 = v54;
  *a4 = v48;
  if ((v6 & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_170:

LABEL_174:
  v56 = v48[7];
  v57 = *(v56 + 8 * v50);
  v29 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  if (!v29)
  {
    *(v56 + 8 * v50) = v58;
    v59 = sub_258F0A370();
    (*(*(v59 - 8) + 8))(v61, v59);
    return v63;
  }

  __break(1u);
LABEL_177:
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}

unint64_t sub_258E21854(uint64_t a1, unint64_t a2)
{
  v4 = 0xD000000000000016;
  if ((a1 != 0x6E776F6E6B6E55 || a2 != 0xE700000000000000) && (sub_258F0AD80() & 1) == 0)
  {
    v5 = 0xD00000000000001ELL;
    if (a1 == 0xD000000000000010 && 0x8000000258F19F60 == a2)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD000000000000013;
    if (a1 == 0x746F6F525FLL && a2 == 0xE500000000000000)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD000000000000014;
    if (a1 == 0x6C616972545FLL && a2 == 0xE600000000000000)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    v5 = 0xD00000000000001BLL;
    if (a1 == 0x5F656C69626F4D5FLL && a2 == 0xED00007465737341)
    {
      return v5;
    }

    if (sub_258F0AD80())
    {
      return v5;
    }

    else
    {

      v7 = sub_258F0A350();
      v8 = sub_258F0A800();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = v10;
        *v9 = 136315138;
        *(v9 + 4) = sub_258DE3018(a1, a2, &v11);
        _os_log_impl(&dword_258DD8000, v7, v8, "ODD Payload - Unmapped Biome asset source string: '%s', defaulting to UNKNOWN for proto conversion.", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x259C9EF40](v10, -1, -1);
        MEMORY[0x259C9EF40](v9, -1, -1);
      }
    }
  }

  return v4;
}

void (*sub_258E21AF0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C9E3B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258E21FC8;
  }

  __break(1u);
  return result;
}

void (*sub_258E21B70(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C9E3B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258E21BF0;
  }

  __break(1u);
  return result;
}

uint64_t sub_258E21BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E21CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetPenetrationSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258E21BF8(a1, v11, v12, a4, a5);
}

uint64_t type metadata accessor for AssetPenetrationSELFReporter(uint64_t a1)
{
  result = qword_27F989370;
  if (!qword_27F989370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E21E0C(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258E21ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  v7[1] = *(v2 + 16);
  v8 = v4;
  result = sub_258EA855C(sub_258E21F80, v7, v5);
  *a2 = result;
  return result;
}

uint64_t sub_258E21F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetPenetrationStatus.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, void (*a3)(char *, char *, void *), void (*a4)(char *, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_258E2203C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AssetPenetrationCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, void (*a3)(char *, char *, void *), void (*a4)(char *, uint64_t, uint64_t))
{
  v118 = a4;
  v117 = a3;
  v119 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v122 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v114 = &v98 - v10;
  v107 = sub_258F09B00();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v11);
  v104 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_258F09A20();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v13);
  v102 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_258F09A70();
  v126 = *(v138 - 1);
  v16 = MEMORY[0x28223BE20](v138, v15);
  v111 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v113 = &v98 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v98 - v22;
  v24 = sub_258F0A370();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v121 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v112 = &v98 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v115 = &v98 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v98 - v36;
  v39 = v25 + 2;
  v38 = v25[2];
  v124 = a2;
  v38(&v98 - v36, a2, v24);
  type metadata accessor for AssetPenetrationStatusDataProvider(0);
  v40 = swift_allocObject();
  v41 = v25[4];
  v109 = v37;
  v108 = v41;
  v41(v40 + OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger, v37, v24);
  v42 = v125;
  *(v125 + 16) = v40;
  v110 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v43 = v42;
  v38((v42 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger), a2, v24);
  sub_258F09A60();
  v44 = *(v126 + 32);
  v116 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v44(v43 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId, v23, v138);
  v45 = (v43 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_fbfBundleId);
  v46 = v118;
  *v45 = v117;
  v45[1] = v46;
  v47 = sub_258F0A1F0();
  swift_allocObject();
  v119 = v119;
  v48 = sub_258F0A1E0();
  *(&v136 + 1) = v47;
  v137 = MEMORY[0x277D04548];
  *&v135 = v48;
  v123 = v24;
  v118 = v38;
  v38(v115, v124, v24);
  v49 = sub_258F09C20();
  swift_allocObject();
  v50 = v120;
  v51 = sub_258F09BE0();
  if (v50)
  {
    v52 = v25[1];
    v53 = v123;
    v52(v124, v123);

    v54 = v125;

    v52(v54 + v110, v53);
    (*(v126 + 8))(&v116[v54], v138);

    type metadata accessor for AssetPenetrationStatus(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v51;
    v99 = v45;
    v100 = v25;
    v110 = (v25 + 4);
    v115 = 0;
    v56 = v102;
    sub_258F0A090();
    v57 = v104;
    sub_258F09AC0();
    v120 = v55;
    sub_258F09C10();
    (*(v106 + 8))(v57, v107);
    (*(v103 + 8))(v56, v105);
    v58 = v112;
    v59 = v123;
    v60 = v118;
    v118(v112, v124, v123);
    v117 = *(v126 + 16);
    v101 = v39;
    v61 = v113;
    v117(v113, &v116[v125], v138);
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
    v119 = v119;

    v62 = v114;
    sub_258E2203C(v114);
    v60(v121, v58, v59);
    sub_258DE20C0(v62, v122, &qword_27F988720, &qword_258F0B830);
    type metadata accessor for BiomeResultsWrapperFactory();
    v107 = swift_allocObject();
    v63 = type metadata accessor for CAAnalyticsEventSubmitter();
    v64 = swift_allocObject();
    v65 = v111;
    v66 = v138;
    v117(v111, v61, v138);
    sub_258DE20C0(&v135, v134, &qword_27F988BC0, &qword_258F0D148);
    v133[3] = v63;
    v133[4] = &off_286A2C648;
    v133[0] = v64;
    type metadata accessor for AssetPenetrationCalculator(0);
    v67 = swift_allocObject();
    v68 = __swift_mutable_project_boxed_opaque_existential_1(v133, v63);
    v116 = &v98;
    MEMORY[0x28223BE20](v68, v68);
    v70 = (&v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v71 + 16))(v70);
    v72 = *v70;
    v132[3] = v63;
    v132[4] = &off_286A2C648;
    v132[0] = v72;
    sub_258F09AC0();
    v60((v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger), v121, v123);
    sub_258DE20C0(v122, v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
    v73 = (v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService);
    v73[3] = v49;
    v73[4] = &off_286A2FA30;
    *v73 = v120;
    *(v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory) = v107;
    sub_258DE3FD8(v132, v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter);
    *(v67 + 16) = v119;
    v117((v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId), v65, v66);
    sub_258DE20C0(v134, &v127, &qword_27F988BC0, &qword_258F0D148);
    if (v128)
    {
      sub_258DE2184(v134, &qword_27F988BC0, &qword_258F0D148);
      v74 = *(v126 + 8);
      v75 = v138;
      v74(v111, v138);
      sub_258DE2184(v122, &qword_27F988720, &qword_258F0B830);
      v76 = v100[1];
      v126 = (v100 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v77 = v123;
      v76(v121, v123);
      sub_258DE2184(v114, &qword_27F988720, &qword_258F0B830);
      sub_258DE2184(&v135, &qword_27F988BC0, &qword_258F0D148);
      v74(v113, v75);
      v138 = v76;
      v76(v112, v77);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      sub_258DDA76C(&v127, &v129);
      v78 = v109;
      v79 = v77;
    }

    else
    {
      v80 = type metadata accessor for AssetEventsBiomeClient();
      v81 = swift_allocObject();
      *(v81 + 16) = MEMORY[0x277D84FA0];
      v131 = &off_286A2A7F8;
      v130 = v80;
      *&v129 = v81;
      sub_258DE2184(v134, &qword_27F988BC0, &qword_258F0D148);
      v82 = *(v126 + 8);
      v83 = v138;
      v82(v111, v138);
      sub_258DE2184(v122, &qword_27F988720, &qword_258F0B830);
      v84 = v100[1];
      v126 = (v100 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v85 = v123;
      v84(v121, v123);
      sub_258DE2184(v114, &qword_27F988720, &qword_258F0B830);
      sub_258DE2184(&v135, &qword_27F988BC0, &qword_258F0D148);
      v82(v113, v83);
      v138 = v84;
      v84(v112, v85);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      v79 = v85;
      if (v128)
      {
        sub_258DE2184(&v127, &qword_27F988BC0, &qword_258F0D148);
      }

      v78 = v109;
    }

    v86 = v108;
    v87 = v118;
    v88 = v99;
    sub_258DDA76C(&v129, v67 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient);
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    v54 = v125;
    *(v125 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator) = v67;
    v89 = v124;
    v87(v78, v124, v79);
    v91 = *v88;
    v90 = v88[1];

    v92 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v91, v90);
    type metadata accessor for AssetPenetrationSELFReporter(0);
    v93 = swift_allocObject();
    v94 = (v93 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_reportingService);
    v94[3] = type metadata accessor for SELFReportingService();
    v94[4] = &protocol witness table for SELFReportingService;
    *v94 = v92;
    v86(v93 + OBJC_IVAR____TtC16MetricsFramework28AssetPenetrationSELFReporter_logger, v78, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_258F0CA20;
    *(v95 + 32) = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989418, &qword_258F0F418);
    swift_allocObject();

    *&v135 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989420, qword_258F0F420);
    swift_allocObject();
    v96 = sub_258F09BC0();

    (v138)(v89, v79);
    *(v54 + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_reporter) = v96;
  }

  return v54;
}

uint64_t sub_258E23090(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E230B0, 0, 0);
}

uint64_t sub_258E230B0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E24130();
}

uint64_t sub_258E2314C(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E2317C, 0, 0);
}

uint64_t sub_258E2317C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E23248(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E23268, 0, 0);
}

uint64_t sub_258E23268()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_258E2331C;
  v2 = v0[2];

  return sub_258DFD938(v2);
}

uint64_t sub_258E2331C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E24030, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t AssetPenetrationStatus.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t AssetPenetrationStatus.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258E23660(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E23684, 0, 0);
}

uint64_t sub_258E23684()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E24130();
}

uint64_t sub_258E23720(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E23744, 0, 0);
}

uint64_t sub_258E23744()
{
  v0[4] = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework22AssetPenetrationStatus_calculator);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_258E237F8;
  v2 = v0[2];

  return sub_258DFD938(v2);
}

uint64_t sub_258E237F8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E23948, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258E23960(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E23994, 0, 0);
}

uint64_t sub_258E23994()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t type metadata accessor for AssetPenetrationStatus(uint64_t a1)
{
  result = qword_280CC51B0;
  if (!qword_280CC51B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E23B48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetPenetrationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E23B94(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AssetPenetrationStatus.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AssetPenetrationStatus.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AssetPenetrationStatus.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t AssetPenetrationStatusDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t AssetPenetrationStatusDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E24150(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: AssetPenetrationMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t AssetPenetrationStatusDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetPenetrationStatusDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34AssetPenetrationStatusDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E2432C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258E24130();
}

uint64_t type metadata accessor for AssetPenetrationStatusDataProvider(uint64_t a1)
{
  result = qword_27F989450;
  if (!qword_27F989450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of AssetPenetrationStatusDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t AssistantDeviceExperimentMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v101 = a4;
  v92 = a3;
  v99 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v96 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v91 = v84 - v11;
  v90 = sub_258F09B00();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v12);
  v87 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_258F09A20();
  v86 = *(v88 - 1);
  MEMORY[0x28223BE20](v88, v14);
  v85 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v102 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v103 = v84 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = v84 - v25;
  v27 = sub_258F09A70();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v17;
  v32 = *(v17 + 16);
  v94 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v32(v4 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger, a2, v16);
  sub_258F09A60();
  v33 = *(v28 + 32);
  v105 = v4;
  v93 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v95 = v27;
  v33(v4 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId, v31, v27);
  v34 = sub_258F0A1F0();
  swift_allocObject();
  v99 = v99;
  v35 = sub_258F0A1E0();
  v116 = v34;
  v117 = MEMORY[0x277D04548];
  v115 = v35;
  v104 = a2;
  v98 = v17 + 16;
  v97 = v32;
  v32(v26, a2, v16);
  v36 = sub_258F09C20();
  swift_allocObject();
  v37 = v100;
  v38 = sub_258F09BE0();
  v100 = v37;
  if (v37)
  {
    v39 = *(v118 + 8);
    v39(v104, v16);

    v40 = v105;
    v39(&v94[v105], v16);
    (*(v28 + 8))(v40 + v93, v95);
    type metadata accessor for AssistantDeviceExperimentMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v38;
    v42 = v85;
    sub_258F0A090();
    v43 = v87;
    sub_258F09AC0();
    v44 = v41;
    sub_258F09C10();
    (*(v89 + 8))(v43, v90);
    (*(v86 + 8))(v42, v88);
    v45 = v103;
    v46 = v104;
    v47 = v97;
    v97(v103, v104, v16);
    type metadata accessor for SiriDeviceExperimentMetricsDataProvider(0);
    v48 = swift_allocObject();
    v49 = *(v118 + 32);
    v93 = v118 + 32;
    v95 = v49;
    v49(v48 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger, v45, v16);
    *(v105 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider) = v48;
    v47(v45, v46, v16);
    v99 = v99;
    v84[1] = v44;

    v50 = v91;
    sub_258E25368(v91);
    v47(v102, v45, v16);
    sub_258DECF90(v50, v96);
    type metadata accessor for BiomeResultsWrapperFactory();
    v90 = swift_allocObject();
    v51 = type metadata accessor for CAAnalyticsEventSubmitter();
    v52 = swift_allocObject();
    sub_258F09F30();
    v89 = sub_258F09F20();
    v116 = v36;
    v117 = &off_286A2FA30;
    v115 = v44;
    v113 = v51;
    v114 = &off_286A2C648;
    v112 = v52;
    type metadata accessor for AssistantDeviceExperimentMetricsCalculator(0);
    v53 = swift_allocObject();
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v115, v36);
    v88 = v84;
    MEMORY[0x28223BE20](v54, v54);
    v56 = (v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = v16;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(&v112, v113);
    MEMORY[0x28223BE20](v59, v59);
    v61 = (v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61);
    v63 = *v56;
    v64 = *v61;
    v110 = v36;
    v111 = &off_286A2FA30;
    *&v109 = v63;
    v107 = v51;
    v108 = &off_286A2C648;
    *&v106 = v64;
    sub_258F09AC0();
    sub_258DED000(v50);
    v65 = *(v118 + 8);
    v118 += 8;
    v94 = v65;
    v66 = v103;
    (v65)(v103, v16);
    v95(v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v102, v16);
    sub_258E25BDC(v96, v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL);
    sub_258DDA76C(&v109, v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory) = v90;
    sub_258DDA76C(&v106, v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter) = v89;
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults) = v99;
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    *(v105 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_assistantDeviceExperimentMetricsCalculator) = v53;
    v67 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v68 = [v67 Metrics];
    swift_unknownObjectRelease();
    v69 = [v68 OnDeviceDigestExperimentMetrics];
    swift_unknownObjectRelease();
    v70 = [v69 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989480, &unk_258F0F6E8);
    swift_allocObject();
    v71 = sub_258F09B80();
    v72 = v104;
    v73 = v97;
    v97(v66, v104, v58);
    type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter(0);
    v74 = swift_allocObject();
    v91 = v74;
    *(v74 + 16) = v71;
    v96 = v71;
    v75 = v95;
    v95(v74 + OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger, v66, v58);
    v73(v66, v72, v58);

    v76 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v92, v101);
    v77 = v102;
    v73(v102, v72, v58);
    type metadata accessor for DeviceExperimentSELFEventConverter(0);
    v78 = swift_allocObject();
    v75(v78 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger, v77, v58);
    type metadata accessor for SiriDeviceExperimentMetricsSELFReporter(0);
    v79 = swift_allocObject();
    *(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v75(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger, v103, v58);
    *(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = v76;
    v80 = (v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    *v80 = sub_258E25C4C;
    v80[1] = v78;
    v40 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_258F0F6D0;
    *(v81 + 32) = v91;
    *(v81 + 40) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989488, &qword_258F0F6F8);
    swift_allocObject();

    v115 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989490, qword_258F0F700);
    swift_allocObject();
    v82 = sub_258F09BC0();

    (v94)(v104, v58);
    *(v40 + OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter) = v82;
  }

  return v40;
}

uint64_t sub_258E25368@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AssistantDeviceExperimentMetricsCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for AssistantDeviceExperimentMetrics(uint64_t a1)
{
  result = qword_27F9894C8;
  if (!qword_27F9894C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E254EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E2550C, 0, 0);
}

uint64_t sub_258E2550C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EC0A40();
}

uint64_t sub_258E255B0(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E255E0, 0, 0);
}

uint64_t sub_258E255E0()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E256AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E256CC, 0, 0);
}

uint64_t sub_258E256CC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258E267D0(v2);
}

uint64_t AssistantDeviceExperimentMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AssistantDeviceExperimentMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework32AssistantDeviceExperimentMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258E2594C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E25970, 0, 0);
}

uint64_t sub_258E25970()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EC0A40();
}

uint64_t sub_258E25A14(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E25A38, 0, 0);
}

uint64_t sub_258E25A38()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258E267D0(v2);
}

uint64_t sub_258E25ADC(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E25B10, 0, 0);
}

uint64_t sub_258E25B10()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258E25BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E25CEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssistantDeviceExperimentMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E25D30()
{
  result = qword_27F9894B8;
  if (!qword_27F9894B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9894B8);
  }

  return result;
}

unint64_t sub_258E25D84()
{
  result = qword_27F9894C0;
  if (!qword_27F9894C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9894C0);
  }

  return result;
}

uint64_t sub_258E25DE0(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E262A4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

double sub_258E262F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_258E2EA2C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_258DE4090(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t AssistantDeviceExperimentMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = sub_258F0A370();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11);
  sub_258DE20C0(a3, v10, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v37 = swift_allocObject();
  v16 = type metadata accessor for CAAnalyticsEventSubmitter();
  v17 = swift_allocObject();
  sub_258F09F30();
  v34 = sub_258F09F20();
  v18 = sub_258F09C20();
  v42[3] = v18;
  v42[4] = &off_286A2FA30;
  v42[0] = a4;
  v40 = v16;
  v41 = &off_286A2C648;
  v39[0] = v17;
  type metadata accessor for AssistantDeviceExperimentMetricsCalculator(0);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v42, v18);
  MEMORY[0x28223BE20](v20, v20);
  v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x28223BE20](v24, v24);
  v26 = (&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v22;
  v29 = *v26;
  v30 = (v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService);
  v30[3] = v18;
  v30[4] = &off_286A2FA30;
  *v30 = v28;
  v31 = (v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
  v31[3] = v16;
  v31[4] = &off_286A2C648;
  *v31 = v29;
  sub_258F09AC0();
  sub_258DE2184(v35, &qword_27F988720, &qword_258F0B830);
  (*(v12 + 8))(v36, v11);
  (*(v12 + 32))(v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v15, v11);
  sub_258E2EAD8(v10, v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_biomeResultsFactory) = v37;
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bugReporter) = v34;
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults) = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v19;
}

uint64_t type metadata accessor for AssistantDeviceExperimentMetricsCalculator(uint64_t a1)
{
  result = qword_27F989508;
  if (!qword_27F989508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E267D0(uint64_t a1)
{
  v2[197] = v1;
  v2[196] = a1;
  v3 = sub_258F09F40();
  v2[198] = v3;
  v2[199] = *(v3 - 8);
  v2[200] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[201] = v4;
  v2[202] = *(v4 - 8);
  v2[203] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894D8, &unk_258F0F8D0);
  v2[204] = v5;
  v2[205] = *(v5 - 8);
  v2[206] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v6 = type metadata accessor for EventMetadata(0);
  v2[212] = v6;
  v2[213] = *(v6 - 8);
  v2[214] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[215] = swift_task_alloc();
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v2[218] = swift_task_alloc();
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = type metadata accessor for CommonDigestElements(0);
  v2[223] = swift_task_alloc();
  v7 = sub_258F09A20();
  v2[224] = v7;
  v2[225] = *(v7 - 8);
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v8 = sub_258F0A2C0();
  v2[230] = v8;
  v2[231] = *(v8 - 8);
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v9 = sub_258F0A2F0();
  v2[234] = v9;
  v2[235] = *(v9 - 8);
  v2[236] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E26C50, 0, 0);
}

void sub_258E26C50()
{
  v307 = v0;
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v1 = sub_258F0A2D0();
  v2 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v1, v2, v4, "AssistantDeviceExperimentMetricsCalculatorSP", "", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];

  (*(v7 + 16))(v6, v5, v8);
  sub_258F0A330();
  swift_allocObject();
  v9 = sub_258F0A320();
  v10 = sub_258F0A350();
  v11 = sub_258F0A810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v10, v11, "SQL calculator invoked: AssistantDeviceExperimentMetricsCalculator", v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE0270();
  v13 = sub_258DE0428();
  v294 = v9;
  v14 = *(v0[197] + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults);
  v15 = sub_258F0A4E0();
  v16 = v0;
  v17 = [v14 BOOLForKey_];

  if (v17)
  {
    sub_258F09A10();
  }

  else
  {
    sub_258F09BB0();
  }

  v18 = v16[229];
  v19 = v16[225];
  v300 = v16;
  v20 = v16[224];
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v21 = *(v19 + 8);
  v21(v18, v20);
  v22 = v13;
  v23 = sub_258F0A4E0();
  LODWORD(v18) = [v14 BOOLForKey_];

  v24 = sub_258F0A350();
  v25 = sub_258F0A810();
  v26 = os_log_type_enabled(v24, v25);
  v293 = v21;
  if (v18)
  {
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v306[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v306);
      _os_log_impl(&dword_258DD8000, v24, v25, "%s: Include current date data for aggregation.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x259C9EF40](v28, -1, -1);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v29 = v300;
  }

  else
  {
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v306[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v306);
      _os_log_impl(&dword_258DD8000, v24, v25, "%s: current date data NOT included for aggregation.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v29 = v300;
    v32 = v22;
  }

  sub_258F0A050();

  v33 = sub_258F0A010();
  v34 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v291 = swift_allocObject();
  *(v291 + 16) = v34;
  sub_258F09B50();
  sub_258F09930();
  v292 = v22;
  if ((sub_258F0A070() & 1) == 0)
  {
    v295 = 0;
    v297 = 0;
    v299 = MEMORY[0x277D84F90];
LABEL_172:

    v204 = sub_258F0A350();
    v205 = sub_258F0A810();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 134217984;
      *(v206 + 4) = v299[2];

      _os_log_impl(&dword_258DD8000, v204, v205, "AssistantDeviceExperimentMetricsCalculator query yielded %ld results", v206, 0xCu);
      MEMORY[0x259C9EF40](v206, -1, -1);
    }

    else
    {
    }

    v207 = v29[206];
    v208 = v29[205];
    v209 = v29[204];
    v287 = v29[202];
    v301 = v29[199];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E8, &unk_258F0F8F0);
    v210 = *(v208 + 72);
    v211 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v212 = (swift_allocObject() + v211);
    v213 = *(v209 + 48);
    *v212 = v295;
    v214 = *MEMORY[0x277D5D998];
    v215 = sub_258F09EC0();
    v216 = v29;
    v217 = *(*(v215 - 8) + 104);
    v217(&v212[v213], v214, v215);
    v218 = *(v209 + 48);
    *&v212[v210] = v297;
    v282 = &v212[v210];
    v217(&v212[v210 + v218], *MEMORY[0x277D5D9A0], v215);
    v304 = *MEMORY[0x277D5D9C8];
    v303 = (v287 + 104);
    v219 = (v287 + 8);
    v296 = *MEMORY[0x277D5D9B8];
    v298 = (v301 + 104);
    v302 = (v301 + 8);
    sub_258DE20C0(v212, v207, &qword_27F9894D8, &unk_258F0F8D0);
    v220 = *v207;
    v221 = sub_258F09EB0();
    if (v220 >= 1)
    {
      sub_258E2C77C(v220, v221, v222);
    }

    v223 = v216[203];
    v224 = v216[201];

    sub_258F09EB0();
    v225 = *v303;
    (*v303)(v223, v304, v224);
    if (v220 < 1)
    {
    }

    else
    {
      v226 = v216[200];
      v227 = v216[198];
      (*v298)(v226, v296, v227);
      sub_258F09F10();

      (*v302)(v226, v227);
    }

    v228 = v216[206];
    v229 = *v219;
    (*v219)(v216[203], v216[201]);
    sub_258DE2184(v228, &qword_27F9894D8, &unk_258F0F8D0);
    sub_258DE20C0(v282, v228, &qword_27F9894D8, &unk_258F0F8D0);
    v230 = *v228;
    v231 = sub_258F09EB0();
    if (v230 >= 1)
    {
      sub_258E2C77C(v230, v231, v232);
    }

    v233 = v216[203];
    v234 = v216[201];

    sub_258F09EB0();
    v225(v233, v304, v234);
    if (v230 <= 0)
    {
    }

    else
    {
      v235 = v216[200];
      v236 = v216[198];
      (*v298)(v235, v296, v236);
      sub_258F09F10();

      (*v302)(v235, v236);
    }

    v237 = v216[206];
    v229(v216[203], v216[201]);
    sub_258DE2184(v237, &qword_27F9894D8, &unk_258F0F8D0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFCF28(v291, 1);
    v238 = v216[236];
    v270 = v216[235];
    v273 = v216[234];
    v265 = v216[230];
    v267 = v216[233];
    v261 = v216[228];
    v263 = v216[231];
    v305 = v216[227];
    v239 = v216[226];
    v240 = v216[224];
    v241 = v216[196];
    sub_258F0A0F0();
    sub_258F09BB0();
    v242 = sub_258F09B70();
    v293(v239, v240);

    v293(v305, v240);
    v293(v261, v240);
    *v241 = v242;
    v241[1] = MEMORY[0x277D84F90];
    v241[2] = v299;
    sub_258E29670(v238, "AssistantDeviceExperimentMetricsCalculatorSP", 44, 2, v294);

    (*(v263 + 8))(v267, v265);
    (*(v270 + 8))(v238, v273);

    v243 = v216[1];

    v243();
    return;
  }

  v295 = 0;
  v297 = 0;
  v247 = v29 + 194;
  v248 = v29 + 193;
  v245 = (v29 + 237);
  v246 = v29 + 195;
  v244 = v29 + 475;
  v281 = v29[222];
  v283 = v29[212];
  v250 = v29[209];
  v251 = v29[223];
  v249 = (v29[213] + 56);
  v299 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = sub_258F0A060();
    if (!v35)
    {
      goto LABEL_23;
    }

    v36 = v35;
    v37 = sub_258F0A350();
    v38 = sub_258F0A810();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v306[0] = v40;
      *v39 = 136315138;
      v41 = sub_258F0A420();
      v43 = sub_258DE3018(v41, v42, v306);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_258DD8000, v37, v38, "AssistantDeviceExperimentMetrics row data: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C9EF40](v40, -1, -1);
      MEMORY[0x259C9EF40](v39, -1, -1);
    }

    v29[171] = 0x5F746375646F7270;
    v29[172] = 0xEA00000000006469;
    sub_258F0AA80();
    if (!*(v36 + 16) || (v44 = sub_258E2EA2C((v29 + 7)), (v45 & 1) == 0))
    {

      sub_258E0F590((v29 + 7));
LABEL_43:
      v50 = sub_258F0A350();
      v55 = sub_258F0A820();
      if (!os_log_type_enabled(v50, v55))
      {
        goto LABEL_22;
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_258DD8000, v50, v55, "row does not have product Id", v56, 2u);
LABEL_45:
      MEMORY[0x259C9EF40](v56, -1, -1);
      goto LABEL_22;
    }

    sub_258DE4090(*(v36 + 56) + 32 * v44, (v29 + 77));
    sub_258E0F590((v29 + 7));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_43;
    }

    v46 = v29[165];
    v47 = v29[166];
    if ((v46 != 0x4E41545349535341 || v47 != 0xE900000000000054) && (sub_258F0AD80() & 1) == 0)
    {

      v50 = sub_258F0A350();
      v199 = sub_258F0A810();

      if (!os_log_type_enabled(v50, v199))
      {

        goto LABEL_23;
      }

      v200 = v46;
      v56 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v306[0] = v201;
      *v56 = 136315138;
      v202 = sub_258DE3018(v200, v47, v306);

      *(v56 + 4) = v202;
      _os_log_impl(&dword_258DD8000, v50, v199, "productId of ASSISTANT is only supported from this extension - skipping row with productId: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v201);
      MEMORY[0x259C9EF40](v201, -1, -1);
      goto LABEL_45;
    }

    v48 = sub_258E2990C(v36, v29[227], 0xD00000000000002ALL, 0x8000000258F1A590);
    v50 = v48;
    if ((v49 & 0x10000) != 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    v279 = v48;
    if (v49)
    {
      if (__OFADD__(v297, 1))
      {
        goto LABEL_190;
      }

      ++v297;
    }

    sub_258E2AD44(v36, sub_258EF07B0, &OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger, v29[223]);
    v29[153] = 0xD000000000000011;
    v29[154] = 0x8000000258F1A5C0;
    sub_258F0AA80();
    if (!*(v36 + 16) || (v51 = sub_258E2EA2C((v29 + 27)), (v52 & 1) == 0))
    {
      sub_258E0F590((v29 + 27));
LABEL_48:
      v278 = 0;
      v277 = 1;
      goto LABEL_49;
    }

    sub_258DE4090(*(v36 + 56) + 32 * v51, (v29 + 93));
    sub_258E0F590((v29 + 27));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v53 = sub_258F0A4E0();

    v54 = v53;
    if ([v54 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
    {
      v278 = 0;
    }

    else
    {
      if ([v54 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v203 = 1;
      }

      else if ([v54 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v203 = 2;
      }

      else
      {
        v203 = [v54 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"] ? 3 : 0;
      }

      v278 = v203;
    }

    v277 = 0;
LABEL_49:
    v275 = v46;
    v276 = v47;
    v57 = v29[221];
    v58 = sub_258F09A70();
    v59 = *(v58 - 8);
    v285 = *(v59 + 56);
    v285(v57, 1, 1, v58);
    v29[159] = 0xD000000000000015;
    v29[160] = 0x8000000258F189D0;
    sub_258F0AA80();
    v288 = v58;
    if (*(v36 + 16) && (v60 = sub_258E2EA2C((v29 + 42)), (v61 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v60, (v29 + 117));
      sub_258E0F590((v29 + 42));
      if (swift_dynamicCast())
      {
        v62 = v29[221];
        v63 = v29[220];
        sub_258F09A30();

        sub_258DE2184(v62, &qword_27F988730, &unk_258F0F8E0);
        v64 = v63;
        v58 = v288;
        sub_258E2EAD8(v64, v62, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590((v29 + 42));
    }

    v65 = v29[219];
    sub_258DE20C0(v29[221], v65, &qword_27F988730, &unk_258F0F8E0);
    v66 = *(v59 + 48);
    v67 = v66(v65, 1, v58);
    sub_258DE2184(v65, &qword_27F988730, &unk_258F0F8E0);
    if (v67 == 1)
    {
      v68 = sub_258F0A350();
      v69 = sub_258F0A820();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_258DD8000, v68, v69, "observed NilDeviceAggregationId", v70, 2u);
        MEMORY[0x259C9EF40](v70, -1, -1);
      }

      if (__OFADD__(v295, 1))
      {
        goto LABEL_191;
      }

      ++v295;
    }

    v71 = v288;
    v285(v29[218], 1, 1, v288);
    v29[147] = 0xD000000000000013;
    v29[148] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    if (*(v36 + 16) && (v72 = sub_258E2EA2C((v29 + 57)), (v73 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v72, (v29 + 129));
      sub_258E0F590((v29 + 57));
      if (swift_dynamicCast())
      {
        v74 = v29[220];
        v75 = v29[218];
        sub_258F09A30();

        sub_258DE2184(v75, &qword_27F988730, &unk_258F0F8E0);
        v76 = v75;
        v71 = v288;
        sub_258E2EAD8(v74, v76, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258E0F590((v29 + 57));
    }

    v77 = v29[217];
    sub_258DE20C0(v29[218], v77, &qword_27F988730, &unk_258F0F8E0);
    v78 = v66(v77, 1, v71);
    sub_258DE2184(v77, &qword_27F988730, &unk_258F0F8E0);
    if (v78 == 1)
    {
      v79 = sub_258F0A350();
      v80 = sub_258F0A820();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_258DD8000, v79, v80, "observed NilUserAggregationId", v81, 2u);
        MEMORY[0x259C9EF40](v81, -1, -1);
      }
    }

    v29[169] = 0xD000000000000029;
    v29[170] = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v36 + 16) && (v82 = sub_258E2EA2C((v29 + 72)), (v83 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v82, (v29 + 101));
      sub_258E0F590((v29 + 72));
      v84 = swift_dynamicCast();
      v85 = v84 ? *v247 : 0;
      v86 = v84 ^ 1;
    }

    else
    {
      sub_258E0F590((v29 + 72));
      v85 = 0;
      v86 = 1;
    }

    v29[163] = 0xD00000000000002BLL;
    v29[164] = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v36 + 16) && (v87 = sub_258E2EA2C((v29 + 2)), (v88 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v87, (v29 + 133));
      sub_258E0F590((v29 + 2));
      v89 = swift_dynamicCast();
      v90 = *v248;
      if (!v89)
      {
        v90 = 0;
      }

      v271 = v90;
      v91 = v89 ^ 1;
    }

    else
    {
      sub_258E0F590((v29 + 2));
      v271 = 0;
      v91 = 1;
    }

    v268 = v91;
    v92 = v29[221];
    v93 = v29[218];
    v94 = v29[216];
    v95 = v29[214];
    sub_258E2BACC(v36, v94);
    sub_258F09A60();
    v285(v95, 0, 1, v288);
    sub_258DE20C0(v92, v95 + v283[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v93, v95 + v283[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v96 <= -1.0)
    {
      goto LABEL_187;
    }

    if (v96 >= 1.84467441e19)
    {
      goto LABEL_188;
    }

    if (!is_mul_ok(v96, 0x3E8uLL))
    {
      goto LABEL_189;
    }

    v97 = v85;
    v98 = 1000 * v96;
    v99 = v300[214];
    v289 = v300[212];
    v100 = v300[208];
    v101 = v300[207];
    v102 = [objc_opt_self() sharedPreferences];
    v103 = [v102 longLivedIdentifierUploadingEnabled];

    v104 = v99 + v283[7];
    *v104 = v98;
    *(v104 + 8) = 0;
    *(v99 + v283[8]) = v279;
    v105 = v99 + v283[9];
    *v105 = v97;
    *(v105 + 8) = v86;
    v106 = v99 + v283[10];
    *v106 = v271;
    *(v106 + 8) = v268;
    v107 = v99 + v283[11];
    *v107 = 0;
    *(v107 + 4) = 1;
    *(v99 + v283[12]) = v103 ^ 1;
    type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    swift_allocObject();
    v108 = sub_258E3C08C();
    sub_258E2F64C(v99, v100, type metadata accessor for EventMetadata);
    (*v249)(v100, 0, 1, v289);
    sub_258E2EAD8(v100, v101, &qword_27F9894E0, &unk_258F106A0);
    v109 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v101, v108 + v109, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v110 = v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v110 = 2;
    *(v110 + 4) = 0;
    strcpy(v300 + 1256, "experiment_id");
    *(v300 + 635) = -4864;
    sub_258F0AA80();
    if (*(v36 + 16) && (v111 = sub_258E2EA2C((v300 + 67)), (v112 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v111, (v300 + 97));
      sub_258E0F590((v300 + 67));
      v113 = swift_dynamicCast();
      v114 = v300[145];
      v115 = v300[146];
      if (!v113)
      {
        v114 = 0;
        v115 = 0;
      }
    }

    else
    {
      sub_258E0F590((v300 + 67));
      v114 = 0;
      v115 = 0;
    }

    v116 = v300[220];
    v117 = v300[216];
    v118 = (v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    *v118 = v114;
    v118[1] = v115;

    sub_258DE20C0(v117, v116, &qword_27F988730, &unk_258F0F8E0);
    v119 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v116, v108 + v119, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy(v300 + 1528, "deployment_id");
    *(v300 + 771) = -4864;
    sub_258F0AA80();
    if (*(v36 + 16) && (v120 = sub_258E2EA2C((v300 + 62)), (v121 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v120, (v300 + 113));
      sub_258E0F590((v300 + 62));
      v122 = swift_dynamicCast();
      v123 = *v246;
      if (!v122)
      {
        v123 = 0;
      }

      v124 = v122 ^ 1;
    }

    else
    {
      sub_258E0F590((v300 + 62));
      v123 = 0;
      v124 = 1;
    }

    v125 = v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v125 = v123;
    *(v125 + 8) = v124;
    v300[143] = 0x745F656369766564;
    v300[144] = 0xEB00000000657079;
    sub_258F0AA80();
    if (*(v36 + 16) && (v126 = sub_258E2EA2C((v300 + 52)), (v127 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v126, (v300 + 125));
      sub_258E0F590((v300 + 52));
      v128 = swift_dynamicCast();
      v129 = v300[187];
      v130 = v300[188];
      if (!v128)
      {
        v129 = 0;
        v130 = 0;
      }
    }

    else
    {
      sub_258E0F590((v300 + 52));
      v129 = 0;
      v130 = 0;
    }

    v131 = (v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    *v131 = v129;
    v131[1] = v130;

    v132 = *(v251 + 44);
    v133 = v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v133 = *(v251 + 40);
    *(v133 + 4) = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v134 = type metadata accessor for ExperimentDigest(0);
    v135 = (*(*(v134 - 1) + 80) + 32) & ~*(*(v134 - 1) + 80);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_258F0B820;
    strcpy(v300 + 1208, "system_build");
    *(v300 + 1221) = 0;
    *(v300 + 611) = -5120;
    sub_258F0AA80();
    if (*(v36 + 16) && (v137 = sub_258E2EA2C((v300 + 47)), (v138 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v137, (v300 + 81));
      sub_258E0F590((v300 + 47));
      v139 = swift_dynamicCast();
      if (v139)
      {
        v140 = v300[185];
      }

      else
      {
        v140 = 0;
      }

      if (v139)
      {
        v141 = v300[186];
      }

      else
      {
        v141 = 0;
      }

      v284 = v141;
      v286 = v140;
    }

    else
    {
      sub_258E0F590((v300 + 47));
      v284 = 0;
      v286 = 0;
    }

    v280 = *(v251 + 8);
    v272 = *(v251 + 12);
    v269 = *v300[223];
    v266 = *(v251 + 4);
    v300[149] = 0xD000000000000012;
    v300[150] = 0x8000000258F1A600;
    sub_258F0AA80();
    if (*(v36 + 16) && (v142 = sub_258E2EA2C((v300 + 37)), (v143 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v142, (v300 + 121));
      sub_258E0F590((v300 + 37));
      v144 = swift_dynamicCast();
      if (v144)
      {
        v145 = v300[183];
      }

      else
      {
        v145 = 0;
      }

      if (v144)
      {
        v146 = v300[184];
      }

      else
      {
        v146 = 0;
      }

      v262 = v146;
      v264 = v145;
    }

    else
    {
      sub_258E0F590((v300 + 37));
      v262 = 0;
      v264 = 0;
    }

    v300[155] = 0xD000000000000013;
    v300[156] = 0x8000000258F1A620;
    sub_258F0AA80();
    if (*(v36 + 16) && (v147 = sub_258E2EA2C((v300 + 32)), (v148 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v147, (v300 + 109));
      sub_258E0F590((v300 + 32));
      v149 = swift_dynamicCast();
      v150 = v300[181];
      if (!v149)
      {
        v150 = 0;
      }

      v274 = v150;
      if (v149)
      {
        v151 = v300[182];
      }

      else
      {
        v151 = 0;
      }

      v260 = v151;
    }

    else
    {
      sub_258E0F590((v300 + 32));
      v274 = 0;
      v260 = 0;
    }

    v258 = *(v251 + 20);
    v259 = *(v251 + 16);
    v256 = *(v251 + 28);
    v257 = *(v251 + 24);
    v152 = *(v251 + 32);
    v300[161] = 0x616D6F645F627573;
    v300[162] = 0xEA00000000006E69;
    v153 = v152;
    sub_258F0AA80();
    if (*(v36 + 16) && (v154 = sub_258E2EA2C((v300 + 22)), (v155 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v154, (v300 + 105));
      sub_258E0F590((v300 + 22));
      v156 = swift_dynamicCast();
      if (v156)
      {
        v157 = v300[179];
      }

      else
      {
        v157 = 0;
      }

      if (v156)
      {
        v158 = v300[180];
      }

      else
      {
        v158 = 0;
      }

      v254 = v158;
      v255 = v157;
    }

    else
    {
      sub_258E0F590((v300 + 22));
      v254 = 0;
      v255 = 0;
    }

    sub_258DE20C0(v300[223] + *(v281 + 40), v300[215], &qword_27F988730, &unk_258F0F8E0);
    v300[167] = 0x746E635F6E727574;
    v300[168] = 0xE800000000000000;
    sub_258F0AA80();
    if (*(v36 + 16) && (v159 = sub_258E2EA2C((v300 + 17)), (v160 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v159, (v300 + 89));
      sub_258E0F590((v300 + 17));
      v161 = swift_dynamicCast();
      v162 = *v245;
      if (!v161)
      {
        v162 = 0;
      }

      v253 = v162;
      v163 = v161 ^ 1;
    }

    else
    {
      sub_258E0F590((v300 + 17));
      v253 = 0;
      v163 = 1;
    }

    v252 = v163;
    v290 = v136;
    v164 = v136 + v135;
    strcpy(v300 + 1384, "user_turn_cnt");
    *(v300 + 699) = -4864;
    sub_258F0AA80();
    if (*(v36 + 16) && (v165 = sub_258E2EA2C((v300 + 12)), (v166 & 1) != 0))
    {
      sub_258DE4090(*(v36 + 56) + 32 * v165, (v300 + 85));
      sub_258E0F590((v300 + 12));

      v167 = swift_dynamicCast();
      if (v167)
      {
        v168 = *v244;
      }

      else
      {
        v168 = 0;
      }

      v169 = v167 ^ 1;
    }

    else
    {

      sub_258E0F590((v300 + 12));
      v168 = 0;
      v169 = 1;
    }

    v170 = *(v300[223] + *(v281 + 44));
    *v164 = v275;
    *(v164 + 8) = v276;
    *(v164 + 16) = v286;
    *(v164 + 24) = v284;
    *(v164 + 32) = v280;
    *(v164 + 36) = v272;
    *(v164 + 40) = v269;
    *(v164 + 44) = v266;
    *(v164 + 48) = v264;
    *(v164 + 56) = v262;
    *(v164 + 64) = v274;
    *(v164 + 72) = v260;
    *(v164 + 80) = v259;
    *(v164 + 84) = v258;
    *(v164 + 88) = v257;
    *(v164 + 92) = v256;
    *(v164 + 112) = v255;
    *(v164 + 120) = v254;
    v171 = v300[215];
    *(v164 + 136) = v278;
    v172 = v300[211];
    *(v164 + 96) = v152;
    *(v164 + 104) = 0;
    v173 = v300[210];
    *(v164 + 128) = 0;
    *(v164 + 132) = 1;
    *(v164 + 140) = v277;
    *(v164 + 141) = 514;
    sub_258E2EAD8(v171, v164 + v134[19], &qword_27F988730, &unk_258F0F8E0);
    *(v164 + v134[20]) = 2;
    *(v164 + v134[21]) = 0;
    v174 = v164 + v134[22];
    *v174 = 0;
    *(v174 + 4) = 1;
    v175 = v164 + v134[23];
    *v175 = v253;
    *(v175 + 4) = v252;
    v176 = v164 + v134[24];
    *v176 = v168;
    *(v176 + 4) = v169;
    v177 = v164 + v134[25];
    *v177 = 0;
    *(v177 + 4) = 1;
    v178 = v164 + v134[26];
    *v178 = 0;
    *(v178 + 4) = 1;
    v179 = v164 + v134[27];
    *v179 = 0;
    *(v179 + 4) = 1;
    v180 = v164 + v134[28];
    *v180 = 0;
    *(v180 + 4) = 1;
    v181 = v164 + v134[29];
    *v181 = 0;
    *(v181 + 4) = 1;
    v182 = v164 + v134[30];
    *v182 = 0;
    *(v182 + 4) = 1;
    v183 = v164 + v134[31];
    *v183 = 0;
    *(v183 + 4) = 1;
    v184 = v164 + v134[32];
    *v184 = 0;
    *(v184 + 4) = 1;
    v185 = v164 + v134[33];
    *v185 = 0;
    *(v185 + 4) = 1;
    v186 = v164 + v134[34];
    *v186 = 0;
    *(v186 + 4) = 1;
    v187 = v164 + v134[35];
    *v187 = 0;
    *(v187 + 4) = 1;
    v188 = v164 + v134[36];
    *v188 = 0;
    *(v188 + 4) = 1;
    v189 = v164 + v134[37];
    *v189 = 1;
    *(v189 + 8) = 0u;
    *(v189 + 24) = 0u;
    *(v164 + v134[38]) = v170;
    *(v108 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v290;

    sub_258E3BDA4(v172);

    sub_258E2F64C(v172, v173, type metadata accessor for DeviceExperimentMetrics);
    v190 = v299;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = sub_258DE26CC(0, v299[2] + 1, 1, v299);
    }

    v192 = v190[2];
    v191 = v190[3];
    if (v192 >= v191 >> 1)
    {
      v299 = sub_258DE26CC((v191 > 1), v192 + 1, 1, v190);
    }

    else
    {
      v299 = v190;
    }

    v29 = v300;
    v193 = v300[223];
    v194 = v300[221];
    v195 = v300[218];
    v196 = v300[216];
    v197 = v300[214];
    v198 = v300[210];
    sub_258E2F6B4(v300[211], type metadata accessor for DeviceExperimentMetrics);
    sub_258E2F6B4(v197, type metadata accessor for EventMetadata);
    sub_258DE2184(v196, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v195, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v194, &qword_27F988730, &unk_258F0F8E0);
    sub_258E2F6B4(v193, type metadata accessor for CommonDigestElements);
    v299[2] = v192 + 1;
    sub_258E2EB40(v198, v299 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v192);
LABEL_23:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_172;
    }
  }

  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}

uint64_t sub_258E29670(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a2;
  v6 = sub_258F0A300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_258F0A2D0();
  sub_258F0A310();
  v23 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v11);
  }

  if ((a4 & 1) == 0)
  {
    v18 = v24;
    if (v24)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v16, v23, v21, v18, v19, v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v24 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFF800) != 0xD800)
  {
    if (v24 >> 16 <= 0x10)
    {
      v18 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_258E2990C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v69 = a3;
  v8 = sub_258F09A20();
  v70 = *(v8 - 8);
  v71 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v72 = &v67 - v14;
  v15 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v16 = qword_280CC6068;
  v73 = 0x61645F746E657665;
  v74 = 0xEA00000000006574;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v17 = sub_258E2EA2C(v75), (v18 & 1) == 0))
  {
    sub_258E0F590(v75);
    goto LABEL_18;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v17, v76);
  sub_258E0F590(v75);
  if (!swift_dynamicCast())
  {
LABEL_18:
    v73 = 0x61645F746E657665;
    v74 = 0xEA00000000006574;
    sub_258F0AA80();
    if (*(a1 + 16) && (v35 = sub_258E2EA2C(v75), (v36 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v35, v76);
      sub_258E0F590(v75);
      if (swift_dynamicCast())
      {
        v38 = v73;
        v37 = v74;

        v39 = sub_258F0A350();
        v40 = sub_258F0A820();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v75[0] = v42;
          *v41 = 136315138;
          v43 = sub_258DE3018(v38, v37, v75);

          *(v41 + 4) = v43;
          _os_log_impl(&dword_258DD8000, v39, v40, "event_date is %s which dateformatter cannot parse", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          MEMORY[0x259C9EF40](v42, -1, -1);
          MEMORY[0x259C9EF40](v41, -1, -1);
        }

        else
        {
        }

        return v15;
      }
    }

    else
    {
      sub_258E0F590(v75);
    }

    v44 = sub_258F0A350();
    v45 = sub_258F0A820();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_258DD8000, v44, v45, "event_date is not a string", v46, 2u);
      MEMORY[0x259C9EF40](v46, -1, -1);
    }

    return v15;
  }

  v68 = a4;
  v19 = v74;
  v67 = v73;
  v20 = sub_258F0A4E0();
  v21 = [v16 dateFromString_];

  if (!v21)
  {

    goto LABEL_18;
  }

  v22 = v19;
  v23 = v72;
  sub_258F09A00();

  sub_258F09930();
  v24 = sub_258F099F0();
  v25 = v68;
  if (v24)
  {
    v26 = *(v5 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_defaults);
    v27 = sub_258F0A4E0();
    LOBYTE(v26) = [v26 BOOLForKey_];

    if ((v26 & 1) == 0)
    {

      v56 = sub_258F0A350();
      v57 = sub_258F0A810();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v75[0] = v59;
        *v58 = 136315394;
        v60 = sub_258DE3018(v67, v22, v75);

        *(v58 + 4) = v60;
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_258DE3018(v69, v25, v75);
        _os_log_impl(&dword_258DD8000, v56, v57, "setting should skip to true for eventDate: %s and key %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v59, -1, -1);
        MEMORY[0x259C9EF40](v58, -1, -1);
      }

      else
      {
      }

      v65 = v71;
      v66 = *(v70 + 8);
      v66(v12, v71);
      v66(v23, v65);
      return v15;
    }
  }

  sub_258F099E0();
  v29 = v28;
  v69 = v15;
  if (v28 > -1.0 && v28 < 1.84467441e19 && v28 == trunc(v28))
  {

    v30 = v69;
    [v69 setStartTimestampInSecondsSince1970_];
    if (v30)
    {
      v76[0] = 0xD000000000000018;
      v76[1] = 0x8000000258F1A780;
      v31 = v69;
      sub_258F0AA80();
      if (*(a1 + 16) && (v32 = sub_258E2EA2C(v75), (v33 & 1) != 0))
      {
        sub_258DE4090(*(a1 + 56) + 32 * v32, v76);
        sub_258E0F590(v75);
        if (swift_dynamicCast())
        {
          v34 = v73;
        }

        else
        {
          v34 = 86400;
        }
      }

      else
      {
        v34 = 86400;
        sub_258E0F590(v75);
      }

      [v31 setNumberOfSeconds_];
    }

    v63 = v71;
    v64 = *(v70 + 8);
    v64(v12, v71);
    v64(v23, v63);
    return v69;
  }

  else
  {

    v48 = sub_258F0A350();
    v49 = sub_258F0A820();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315650;
      v76[0] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
      v52 = sub_258F0A550();
      v54 = sub_258DE3018(v52, v53, v75);

      *(v50 + 4) = v54;
      v23 = v72;
      *(v50 + 12) = 2048;
      *(v50 + 14) = v29;
      *(v50 + 22) = 2080;
      v55 = sub_258DE3018(v67, v22, v75);

      *(v50 + 24) = v55;
      _os_log_impl(&dword_258DD8000, v48, v49, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v51, -1, -1);
      MEMORY[0x259C9EF40](v50, -1, -1);
    }

    else
    {
    }

    sub_258E2C77C(1, 0xD00000000000001CLL, 0x8000000258F1A760);
    v61 = v71;
    v62 = *(v70 + 8);
    v62(v12, v71);
    v62(v23, v61);
    return v69;
  }
}

id sub_258E2A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t, unint64_t, unint64_t))
{
  v78 = a7;
  v87 = a5;
  v9 = v7;
  v83 = a4;
  v79 = a3;
  v81 = a2;
  v11 = sub_258F09B00();
  v80 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F09A20();
  v84 = *(v15 - 8);
  v85 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v86 = &v74 - v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v22 = qword_280CC6068;
  v88 = 0x61645F746E657665;
  v89 = 0xEA00000000006574;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v23 = sub_258E2EA2C(v90), (v24 & 1) == 0))
  {
    sub_258E0F590(v90);
    goto LABEL_18;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v23, v91);
  sub_258E0F590(v90);
  if (!swift_dynamicCast())
  {
LABEL_18:
    v88 = 0x61645F746E657665;
    v89 = 0xEA00000000006574;
    sub_258F0AA80();
    if (*(a1 + 16) && (v41 = sub_258E2EA2C(v90), (v42 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v41, v91);
      sub_258E0F590(v90);
      if (swift_dynamicCast())
      {
        v44 = v88;
        v43 = v89;

        v45 = sub_258F0A350();
        v46 = sub_258F0A820();

        if (!os_log_type_enabled(v45, v46))
        {

          return v21;
        }

        v47 = v21;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v90[0] = v49;
        *v48 = 136315138;
        v50 = sub_258DE3018(v44, v43, v90);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_258DD8000, v45, v46, "event_date is %s which dateformatter cannot parse", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x259C9EF40](v49, -1, -1);
        v51 = v48;
        v21 = v47;
        goto LABEL_26;
      }
    }

    else
    {
      sub_258E0F590(v90);
    }

    v45 = sub_258F0A350();
    v52 = sub_258F0A820();
    if (!os_log_type_enabled(v45, v52))
    {
LABEL_27:

      return v21;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_258DD8000, v45, v52, "event_date is not a string", v53, 2u);
    v51 = v53;
LABEL_26:
    MEMORY[0x259C9EF40](v51, -1, -1);
    goto LABEL_27;
  }

  v76 = a6;
  v77 = v21;
  v25 = v89;
  v75 = v88;
  v26 = sub_258F0A4E0();
  v27 = [v22 dateFromString_];

  if (!v27)
  {

    v21 = v77;
    goto LABEL_18;
  }

  v28 = v25;
  v29 = v86;
  sub_258F09A00();

  sub_258F09AC0();
  v30 = v82;
  sub_258F09930();
  (*(v80 + 8))(v14, v11);
  v31 = sub_258F099F0();
  v21 = v77;
  v32 = v83;
  if (v31)
  {
    v33 = *(v9 + *v76);
    v34 = sub_258F0A4E0();
    LOBYTE(v33) = [v33 BOOLForKey_];

    if ((v33 & 1) == 0)
    {
      v64 = v28;

      v65 = sub_258F0A350();
      v66 = sub_258F0A810();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v90[0] = v68;
        *v67 = 136315394;
        v69 = sub_258DE3018(v75, v64, v90);

        *(v67 + 4) = v69;
        v21 = v77;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_258DE3018(v79, v32, v90);
        _os_log_impl(&dword_258DD8000, v65, v66, "setting should skip to true for eventDate: %s and key %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v68, -1, -1);
        MEMORY[0x259C9EF40](v67, -1, -1);
      }

      else
      {
      }

      goto LABEL_42;
    }
  }

  sub_258F099E0();
  v36 = v35;
  if (v35 <= -1.0 || v35 >= 1.84467441e19 || v35 != trunc(v35))
  {

    v55 = sub_258F0A350();
    v56 = sub_258F0A820();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v90[0] = v58;
      *v57 = 136315650;
      v91[0] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
      v59 = sub_258F0A550();
      v61 = sub_258DE3018(v59, v60, v90);

      *(v57 + 4) = v61;
      v21 = v77;
      *(v57 + 12) = 2048;
      *(v57 + 14) = v36;
      *(v57 + 22) = 2080;
      v62 = sub_258DE3018(v75, v28, v90);

      *(v57 + 24) = v62;
      _os_log_impl(&dword_258DD8000, v55, v56, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v57, 0x20u);
      swift_arrayDestroy();
      v63 = v58;
      v29 = v86;
      MEMORY[0x259C9EF40](v63, -1, -1);
      MEMORY[0x259C9EF40](v57, -1, -1);
    }

    else
    {
    }

    v78(1, 0xD00000000000001CLL, 0x8000000258F1A760);
LABEL_42:
    v72 = v85;
    v73 = *(v84 + 8);
    v73(v30, v85);
    v73(v29, v72);
    return v21;
  }

  [v21 setStartTimestampInSecondsSince1970_];
  if (v21)
  {
    v91[0] = 0xD000000000000018;
    v91[1] = 0x8000000258F1A780;
    v37 = v21;
    sub_258F0AA80();
    if (*(a1 + 16) && (v38 = sub_258E2EA2C(v90), (v39 & 1) != 0))
    {
      sub_258DE4090(*(a1 + 56) + 32 * v38, v91);
      sub_258E0F590(v90);
      if (swift_dynamicCast())
      {
        v40 = v88;
      }

      else
      {
        v40 = 86400;
      }
    }

    else
    {
      v40 = 86400;
      sub_258E0F590(v90);
    }

    [v37 setNumberOfSeconds_];
  }

  v70 = v85;
  v71 = *(v84 + 8);
  v71(v30, v85);
  v71(v29, v70);
  return v21;
}

uint64_t sub_258E2AD44@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v82 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v79 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v79 - v16;
  strcpy(v90, "is_carplay");
  BYTE3(v90[1]) = 0;
  HIDWORD(v90[1]) = -369098752;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v18 = sub_258E2EA2C(v91), (v19 & 1) == 0))
  {
    sub_258E0F590(v91);
    goto LABEL_9;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v18, v92);
  sub_258E0F590(v91);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v88 = 0;
    LODWORD(v20) = 1;
    goto LABEL_10;
  }

  LODWORD(v20) = LODWORD(v90[0]) != 1;
  if (LODWORD(v90[0]) == 1)
  {
    v21 = 5;
  }

  else
  {
    v21 = 0;
  }

  v88 = v21;
LABEL_10:
  v90[0] = 0xD000000000000019;
  v90[1] = 0x8000000258F18AA0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v22 = sub_258E2EA2C(v91), (v23 & 1) == 0))
  {
    sub_258E0F590(v91);
    goto LABEL_16;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v22, v92);
  sub_258E0F590(v91);
  if (!swift_dynamicCast())
  {
LABEL_16:
    v87 = 1;
    goto LABEL_17;
  }

  v24 = sub_258F0A4E0();

  v25 = v24;
  if ([v25 isEqualToString:@"UNKNOWN"])
  {
    HIDWORD(v87) = 0;
  }

  else
  {
    if ([v25 isEqualToString:@"OPTED_IN"])
    {
      v71 = 1;
    }

    else if ([v25 isEqualToString:@"OPTED_OUT"])
    {
      v71 = 2;
    }

    else if ([v25 isEqualToString:@"DISMISSED"])
    {
      v71 = 3;
    }

    else
    {
      v71 = 0;
    }

    HIDWORD(v87) = v71;
  }

  LODWORD(v87) = 0;
LABEL_17:
  strcpy(v90, "asr_location");
  BYTE5(v90[1]) = 0;
  HIWORD(v90[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v26 = sub_258E2EA2C(v91), (v27 & 1) == 0))
  {
    sub_258E0F590(v91);
    goto LABEL_23;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v26, v92);
  sub_258E0F590(v91);
  if (!swift_dynamicCast())
  {
LABEL_23:
    v86 = 1;
    goto LABEL_24;
  }

  v28 = sub_258F0A4E0();

  v29 = v28;
  if ([v29 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
  {
    HIDWORD(v86) = 0;
  }

  else
  {
    if ([v29 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
    {
      v72 = 1;
    }

    else if ([v29 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
    {
      v72 = 2;
    }

    else
    {
      v72 = 0;
    }

    HIDWORD(v86) = v72;
  }

  LODWORD(v86) = 0;
LABEL_24:
  strcpy(v90, "nl_location");
  HIDWORD(v90[1]) = -352321536;
  sub_258F0AA80();
  if (*(a1 + 16) && (v30 = sub_258E2EA2C(v91), (v31 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v30, v92);
    sub_258E0F590(v91);
    if (swift_dynamicCast())
    {
      v32 = sub_258F0A4E0();

      v33 = v32;
      if ([v33 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
      {
        HIDWORD(v85) = 0;
      }

      else
      {
        if ([v33 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
        {
          v73 = 1;
        }

        else if ([v33 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
        {
          v73 = 2;
        }

        else
        {
          v73 = 0;
        }

        HIDWORD(v85) = v73;
      }

      LODWORD(v85) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    sub_258E0F590(v91);
  }

  v85 = 1;
LABEL_31:
  v84 = a2(a1);
  strcpy(v90, "program_code");
  BYTE5(v90[1]) = 0;
  HIWORD(v90[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v34 = sub_258E2EA2C(v91), (v35 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v34, v92);
    sub_258E0F590(v91);
    if (swift_dynamicCast())
    {
      v36 = sub_258F0A4E0();

      v37 = v36;
      if ([v37 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
      {
        v83 = 0;
      }

      else
      {
        if ([v37 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v74 = 1;
        }

        else if ([v37 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v74 = 2;
        }

        else if ([v37 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v74 = 3;
        }

        else if ([v37 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v74 = 4;
        }

        else if ([v37 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v74 = 5;
        }

        else
        {
          v74 = 0;
        }

        v83 = v74;
      }

      v38 = 0;
    }

    else
    {
      v83 = 0;
      v38 = 1;
    }
  }

  else
  {
    sub_258E0F590(v91);
    v83 = 0;
    v38 = 1;
  }

  v39 = sub_258F09A70();
  v40 = *(v39 - 8);
  (*(v40 + 56))(v17, 1, 1, v39);
  strcpy(v90, "codepath_id");
  HIDWORD(v90[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v41 = sub_258E2EA2C(v91), (v42 & 1) == 0))
  {
    sub_258E0F590(v91);
    goto LABEL_45;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v41, v92);
  sub_258E0F590(v91);
  if (!swift_dynamicCast())
  {
LABEL_45:
    v52 = sub_258F0A350();
    v53 = sub_258F0A820();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_258DD8000, v52, v53, "nil codePathId", v54, 2u);
      MEMORY[0x259C9EF40](v54, -1, -1);
    }

    goto LABEL_48;
  }

  v81 = v20;
  v43 = v90[1];
  v80 = v90[0];
  sub_258F09A30();
  sub_258DE2184(v17, &qword_27F988730, &unk_258F0F8E0);
  sub_258E2EAD8(v14, v17, &qword_27F988730, &unk_258F0F8E0);
  v44 = v82;
  sub_258DE20C0(v17, v82, &qword_27F988730, &unk_258F0F8E0);
  if ((*(v40 + 48))(v44, 1, v39) == 1)
  {
    sub_258DE2184(v44, &qword_27F988730, &unk_258F0F8E0);

    v45 = sub_258F0A350();
    v46 = sub_258F0A820();

    v82 = v45;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v91[0] = v48;
      *v47 = 136315138;
      v49 = sub_258DE3018(v80, v43, v91);

      *(v47 + 4) = v49;
      v50 = v46;
      v51 = v82;
      _os_log_impl(&dword_258DD8000, v82, v50, "Invalid codepath_id %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x259C9EF40](v48, -1, -1);
      MEMORY[0x259C9EF40](v47, -1, -1);
    }

    else
    {
    }

    LODWORD(v20) = v81;
  }

  else
  {

    sub_258DE2184(v44, &qword_27F988730, &unk_258F0F8E0);
    LODWORD(v20) = v81;
  }

LABEL_48:
  v55 = [objc_opt_self() sharedPreferences];
  v56 = [v55 longLivedIdentifierUploadingEnabled];

  if (!v56)
  {
    goto LABEL_55;
  }

  strcpy(v90, "turn_ids");
  BYTE1(v90[1]) = 0;
  WORD1(v90[1]) = 0;
  HIDWORD(v90[1]) = -402653184;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v57 = sub_258E2EA2C(v91), (v58 & 1) == 0))
  {
    sub_258E0F590(v91);
    goto LABEL_55;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v57, v92);
  sub_258E0F590(v91);
  if (!swift_dynamicCast())
  {
LABEL_55:
    v62 = sub_258F0A350();
    v63 = sub_258F0A800();
    if (!os_log_type_enabled(v62, v63))
    {
LABEL_58:

LABEL_59:
      v61 = 0;
      goto LABEL_60;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_258DD8000, v62, v63, "No turnIds found.", v64, 2u);
    v65 = v64;
LABEL_57:
    MEMORY[0x259C9EF40](v65, -1, -1);
    goto LABEL_58;
  }

  v60 = v90[0];
  v59 = v90[1];

  v61 = _s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(v60, v59);

  if (!v61)
  {

    v62 = sub_258F0A350();
    v75 = sub_258F0A820();

    if (!os_log_type_enabled(v62, v75))
    {

      goto LABEL_59;
    }

    v76 = swift_slowAlloc();
    v81 = v20;
    v20 = v76;
    v77 = swift_slowAlloc();
    v91[0] = v77;
    *v20 = 136315138;
    v78 = sub_258DE3018(v60, v59, v91);

    *(v20 + 4) = v78;
    _os_log_impl(&dword_258DD8000, v62, v75, "Invalid turn_ids %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x259C9EF40](v77, -1, -1);
    v65 = v20;
    LOBYTE(v20) = v81;
    goto LABEL_57;
  }

LABEL_60:
  v66 = HIDWORD(v87);
  *a4 = v88;
  *(a4 + 4) = v20;
  *(a4 + 8) = v66;
  v67 = HIDWORD(v86);
  *(a4 + 12) = v87;
  *(a4 + 16) = v67;
  v68 = HIDWORD(v85);
  *(a4 + 20) = v86;
  *(a4 + 24) = v68;
  *(a4 + 28) = v85;
  *(a4 + 32) = v84;
  *(a4 + 40) = v83;
  *(a4 + 44) = v38;
  v69 = type metadata accessor for CommonDigestElements(0);
  result = sub_258E2EAD8(v17, a4 + *(v69 + 40), &qword_27F988730, &unk_258F0F8E0);
  *(a4 + *(v69 + 44)) = v61;
  return result;
}