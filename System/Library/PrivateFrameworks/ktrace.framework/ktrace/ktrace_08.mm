uint64_t sub_22EDF39AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22EE3CBA4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

char *sub_22EDF3BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953F8, &qword_22EE41EB8);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_22EDF3CD8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953E8, &qword_22EE41EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953F0, &qword_22EE41EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDF3E34(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22EDF3F8C(uint64_t a1)
{
  v2 = type metadata accessor for RecordingOptions.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22EDF3FE8()
{
  result = qword_27DA974E0;
  if (!qword_27DA974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA974E0);
  }

  return result;
}

double sub_22EDF403C(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_22EDF4064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95388, &qword_22EE416D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EDF40D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95388, &qword_22EE416D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EDF413C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646461 && a2 == 0xE500000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657474696D6FLL && a2 == 0xE700000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE900000000000073 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022EE48B20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022EE48B40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xE800000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7453796669746F6ELL && a2 == 0xEB00000000747261 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022EE48B60 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48B80 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65644B6E4F646E65 && a2 == 0xEF657A6953677562 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E45796669746F6ELL && a2 == 0xE900000000000064 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022EE48BA0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48BC0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48BE0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00676E69727544 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7355656661736E75 && a2 == 0xEA00000000006465 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48C00 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022EE48C20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022EE48C40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022EE48C60 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48C80 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_22EDF48A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_22EE3CA04();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22EDF48F0()
{
  result = qword_27DA974E8;
  if (!qword_27DA974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA974E8);
  }

  return result;
}

unint64_t sub_22EDF4944()
{
  result = qword_27DA974F0[0];
  if (!qword_27DA974F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA974F0);
  }

  return result;
}

uint64_t sub_22EDF4998(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022EE48CA0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022EE48CC0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F436B6E756863 && a2 == 0xEA0000000000746ELL || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022EE48CE0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE48D00 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_22EE3CBA4();

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

uint64_t sub_22EDF4BA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022EE48D20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022EE48D40 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE48D60 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_22EE3CBA4();

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

uint64_t sub_22EDF4CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79426465646E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022EE48A20 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022EE48A00 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022EE489D0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022EE489A0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE48980 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_22EE3CBA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_22EDF4F20()
{
  result = qword_27DA953B0;
  if (!qword_27DA953B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953B0);
  }

  return result;
}

uint64_t sub_22EDF4F74(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22EDF4F8C()
{
  result = qword_27DA953C0;
  if (!qword_27DA953C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953C0);
  }

  return result;
}

unint64_t sub_22EDF4FE4()
{
  result = qword_27DA953C8;
  if (!qword_27DA953C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953C8);
  }

  return result;
}

unint64_t sub_22EDF503C()
{
  result = qword_27DA953D0;
  if (!qword_27DA953D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953D0);
  }

  return result;
}

unint64_t sub_22EDF5094()
{
  result = qword_27DA953D8;
  if (!qword_27DA953D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953D8);
  }

  return result;
}

unint64_t sub_22EDF50EC()
{
  result = qword_27DA953E0;
  if (!qword_27DA953E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA953E0);
  }

  return result;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_22EDF51C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_22EDF5208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22EDF52B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EDF52D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.LostEvents(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.LostEvents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RecordInfo.EndReason(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.EndReason(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.EndReason(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EDF54A8(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22EDF54D8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
    *(result + 8) &= 1uLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x80;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22EDF5540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22EDF5588(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TimeSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.LostEvents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordInfo.LostEvents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StandardFile.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StandardFile.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordInfo.Usage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordInfo.Usage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22EDF5A30()
{
  result = qword_27DA97D00[0];
  if (!qword_27DA97D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA97D00);
  }

  return result;
}

unint64_t sub_22EDF5A88()
{
  result = qword_27DA97F10[0];
  if (!qword_27DA97F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA97F10);
  }

  return result;
}

unint64_t sub_22EDF5AE0()
{
  result = qword_27DA98120[0];
  if (!qword_27DA98120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98120);
  }

  return result;
}

unint64_t sub_22EDF5B38()
{
  result = qword_27DA98230;
  if (!qword_27DA98230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98230);
  }

  return result;
}

unint64_t sub_22EDF5B90()
{
  result = qword_27DA98238[0];
  if (!qword_27DA98238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98238);
  }

  return result;
}

unint64_t sub_22EDF5BE8()
{
  result = qword_27DA982C0;
  if (!qword_27DA982C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA982C0);
  }

  return result;
}

unint64_t sub_22EDF5C40()
{
  result = qword_27DA982C8[0];
  if (!qword_27DA982C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA982C8);
  }

  return result;
}

unint64_t sub_22EDF5C98()
{
  result = qword_27DA98350;
  if (!qword_27DA98350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA98350);
  }

  return result;
}

unint64_t sub_22EDF5CF0()
{
  result = qword_27DA98358[0];
  if (!qword_27DA98358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA98358);
  }

  return result;
}

uint64_t PlanSource.hashValue.getter()
{
  v1 = *v0;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v1);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF5DE4(uint64_t a1, double a2)
{
  result = sub_22EE120D8();
  v5 = result * a2;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_22EE12174();
  v6 = result * a1;
  if ((result * a1) >> 64 != (result * a1) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EDF5E88()
{
  if (*v0)
  {
    return 0x654D757043726570;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_22EDF5ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000022EE492B0 == a2 || (sub_22EE3CBA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x654D757043726570 && a2 == 0xEF62694D79726F6DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22EE3CBA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22EDF5FC4(uint64_t a1)
{
  v2 = sub_22EDF61C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF6000(uint64_t a1)
{
  v2 = sub_22EDF61C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF603C(void *a1, uint64_t a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95400, &qword_22EE41EE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF61C4();
  sub_22EE3CCE4();
  v12 = 0;
  sub_22EE3CB24();
  if (!v3)
  {
    v11 = 1;
    sub_22EE3CB34();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22EDF61C4()
{
  result = qword_27DA983F0;
  if (!qword_27DA983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA983F0);
  }

  return result;
}

uint64_t sub_22EDF6218@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_22EE0A210(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = result;
  }

  return result;
}

uint64_t sub_22EDF6268(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6C61635F72657375;
    v6 = 0x695F646165726874;
    v7 = 0x735F646165726874;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D5F6D6574737973;
    if (a1 != 9)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD00000000000001ALL;
    v3 = 0x666E695F6B736174;
    if (a1 != 6)
    {
      v3 = 0x616E735F6B736174;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22EDF6410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22EDF6268(*a1);
  v5 = v4;
  if (v3 == sub_22EDF6268(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22EE3CBA4();
  }

  return v8 & 1;
}

uint64_t sub_22EDF6498()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EDF6268(v1);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF64FC(uint64_t a1)
{
  sub_22EDF6268(*v1);
  sub_22EE3C1C4();
}

uint64_t sub_22EDF6550(uint64_t a1)
{
  v2 = *v1;
  sub_22EE3CC74();
  sub_22EDF6268(v2);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

unint64_t sub_22EDF65B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EE0A3BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22EDF65E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22EDF6268(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22EDF66BC(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22EE02350(0, v4, 0);
    v5 = v25;
    v6 = (a2 + 32);
    v7 = v25[1].u64[0];
    do
    {
      v9 = *v6++;
      v8 = v9;
      v26 = v5;
      v10 = v5[1].u64[1];
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_22EE02350((v10 > 1), v7 + 1, 1);
      }

      v12 = dword_22EE43634[v8];
      v5 = v26;
      v26[1].i64[0] = v11;
      v26[2].i32[v7++] = v12;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  if (v11 <= 7)
  {
    v13 = 0;
    v14 = 0;
LABEL_14:
    v21 = v11 - v13;
    v22 = 4 * v13 + 32;
    do
    {
      v14 |= *(v5->u32 + v22);
      v22 += 4;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFF8;
  v15 = v5 + 3;
  v16 = 0uLL;
  v17 = v11 & 0xFFFFFFFFFFFFFFF8;
  v18 = 0uLL;
  do
  {
    v16 = vorrq_s8(v15[-1], v16);
    v18 = vorrq_s8(*v15, v18);
    v15 += 2;
    v17 -= 8;
  }

  while (v17);
  v19 = vorrq_s8(v18, v16);
  v20 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v14 = v20.i32[0] | v20.i32[1];
  if (v11 != v13)
  {
    goto LABEL_14;
  }

LABEL_16:

  if (v3 > 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  result = kperf_action_samplers_set();
  if ((result & 0x80000000) != 0)
  {
    v23 = MEMORY[0x2318F5610]();
    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    strcpy(v24, "set samplers");
    v24[13] = 0;
    *(v24 + 7) = -5120;
    *(v24 + 4) = v23;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EDF68D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v75 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v1, 0);
  v2 = v75;
  v40 = a1 + 64;
  result = sub_22EE3C7C4();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v76 = *(a1 + 36);
    v38 = v1;
    v6 = 1;
    while (1)
    {
      v7 = v5 >> 6;
      if ((*(v40 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      if (v76 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v8 = (*(a1 + 48) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = (*(a1 + 56) + 200 * v5);
      v55[0] = *v11;
      v12 = v11[4];
      v14 = v11[1];
      v13 = v11[2];
      v55[3] = v11[3];
      v55[4] = v12;
      v55[1] = v14;
      v55[2] = v13;
      v15 = v11[8];
      v17 = v11[5];
      v16 = v11[6];
      v55[7] = v11[7];
      v55[8] = v15;
      v55[5] = v17;
      v55[6] = v16;
      v19 = v11[10];
      v18 = v11[11];
      v20 = v11[9];
      v56 = *(v11 + 24);
      v55[10] = v19;
      v55[11] = v18;
      v55[9] = v20;
      v21 = v11[11];
      v52 = v11[10];
      v53 = v21;
      v54 = *(v11 + 24);
      v22 = v11[7];
      v48 = v11[6];
      v49 = v22;
      v23 = v11[9];
      v50 = v11[8];
      v51 = v23;
      v24 = v11[3];
      v44 = v11[2];
      v45 = v24;
      v25 = v11[5];
      v46 = v11[4];
      v47 = v25;
      v26 = v11[1];
      v42 = *v11;
      v43 = v26;
      memmove(__dst, v11, 0xC8uLL);
      v59[0] = v9;
      v59[1] = v10;
      v70 = v52;
      v71 = v53;
      v72 = v54;
      v66 = v48;
      v67 = v49;
      v68 = v50;
      v69 = v51;
      v62 = v44;
      v63 = v45;
      v64 = v46;
      v65 = v47;
      v60 = v42;
      v61 = v43;
      v39 = v10;
      swift_bridgeObjectRetain_n();
      sub_22EE0C808(v55, v41);
      sub_22EE0C808(__dst, v41);
      sub_22EDDBA48(v59, &qword_27DA95620, &qword_22EE43558);
      v73[10] = __dst[10];
      v73[11] = __dst[11];
      v74 = v58;
      v73[6] = __dst[6];
      v73[7] = __dst[7];
      v73[8] = __dst[8];
      v73[9] = __dst[9];
      v73[2] = __dst[2];
      v73[3] = __dst[3];
      v73[4] = __dst[4];
      v73[5] = __dst[5];
      v73[0] = __dst[0];
      v73[1] = __dst[1];
      result = sub_22EE0D460(v73);
      v75 = v2;
      v28 = *(v2 + 16);
      v27 = *(v2 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22EDD2DD4((v27 > 1), v28 + 1, 1);
        v2 = v75;
      }

      *(v2 + 16) = v28 + 1;
      v29 = v2 + 16 * v28;
      *(v29 + 32) = v9;
      *(v29 + 40) = v39;
      v30 = 1 << *(a1 + 32);
      if (v5 >= v30)
      {
        goto LABEL_27;
      }

      v31 = *(v40 + 8 * v7);
      if ((v31 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (v76 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v5 & 0x3F));
      if (v32)
      {
        v5 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v7 << 6;
        v34 = v7 + 1;
        v35 = (a1 + 72 + 8 * v7);
        while (v34 < (v30 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_22ED972FC(v5, v76, 0);
            v5 = __clz(__rbit64(v36)) + v33;
            goto LABEL_19;
          }
        }

        result = sub_22ED972FC(v5, v76, 0);
        v5 = v30;
      }

LABEL_19:
      if (v6 == v38)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        ++v6;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22EDF6C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v92 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v1, 0);
  v2 = v92;
  v4 = v3 + 64;
  result = sub_22EE3C7C4();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v93 = *(v3 + 36);
    v41 = v3 + 72;
    v42 = v1;
    v7 = 1;
    v43 = v3 + 64;
    while (1)
    {
      v8 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v93 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v44 = v7;
      v9 = (*(v3 + 48) + 16 * v6);
      v45 = v2;
      v11 = *v9;
      v10 = v9[1];
      v12 = (*(v3 + 56) + 200 * v6);
      v60[0] = *v12;
      v13 = v12[4];
      v15 = v12[1];
      v14 = v12[2];
      v60[3] = v12[3];
      v60[4] = v13;
      v60[1] = v15;
      v60[2] = v14;
      v16 = v12[8];
      v18 = v12[5];
      v17 = v12[6];
      v60[7] = v12[7];
      v60[8] = v16;
      v60[5] = v18;
      v60[6] = v17;
      v20 = v12[10];
      v19 = v12[11];
      v21 = v12[9];
      v61 = *(v12 + 24);
      v60[10] = v20;
      v60[11] = v19;
      v60[9] = v21;
      v22 = v12[11];
      v57 = v12[10];
      v58 = v22;
      v59 = *(v12 + 24);
      v23 = v12[7];
      v53 = v12[6];
      v54 = v23;
      v24 = v12[9];
      v55 = v12[8];
      v56 = v24;
      v25 = v12[3];
      v49 = v12[2];
      v50 = v25;
      v26 = v12[5];
      v51 = v12[4];
      v52 = v26;
      v27 = v12[1];
      v47 = *v12;
      v48 = v27;
      memmove(__dst, v12, 0xC8uLL);
      v64[0] = v11;
      v64[1] = v10;
      v75 = v57;
      v76 = v58;
      v77 = v59;
      v71 = v53;
      v72 = v54;
      v73 = v55;
      v74 = v56;
      v67 = v49;
      v68 = v50;
      v69 = v51;
      v70 = v52;
      v65 = v47;
      v66 = v48;
      swift_bridgeObjectRetain_n();
      sub_22EE0C808(v60, v46);
      sub_22EE0C808(__dst, v46);
      sub_22EDDBA48(v64, &qword_27DA95620, &qword_22EE43558);
      v89 = __dst[10];
      v90 = __dst[11];
      v91 = v63;
      v85 = __dst[6];
      v86 = __dst[7];
      v87 = __dst[8];
      v88 = __dst[9];
      v81 = __dst[2];
      v82 = __dst[3];
      v83 = __dst[4];
      v84 = __dst[5];
      v79 = __dst[0];
      v80 = __dst[1];
      v28 = v11;
      v78[0] = v11;
      v2 = v45;
      v78[1] = v10;

      result = sub_22EDDBA48(v78, &qword_27DA95620, &qword_22EE43558);
      v92 = v45;
      v29 = v3;
      v31 = *(v45 + 16);
      v30 = *(v45 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_22EDD2DD4((v30 > 1), v31 + 1, 1);
        v2 = v92;
      }

      *(v2 + 16) = v31 + 1;
      v32 = v2 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v10;
      v33 = 1 << *(v29 + 32);
      if (v6 >= v33)
      {
        goto LABEL_27;
      }

      v3 = v29;
      v4 = v43;
      v34 = *(v43 + 8 * v8);
      if ((v34 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v93 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v35 = v34 & (-2 << (v6 & 0x3F));
      if (v35)
      {
        v6 = __clz(__rbit64(v35)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v8 << 6;
        v37 = v8 + 1;
        v38 = (v41 + 8 * v8);
        while (v37 < (v33 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_22ED972FC(v6, v93, 0);
            v6 = __clz(__rbit64(v39)) + v36;
            goto LABEL_19;
          }
        }

        result = sub_22ED972FC(v6, v93, 0);
        v6 = v33;
      }

LABEL_19:
      if (v44 == v42)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v7 = v44 + 1;
        if (v6 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22EDF7058(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v109 = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v2, 0);
    v4 = v1 + 64;
    result = sub_22EE3C7C4();
    v5 = result;
    if (result < 0 || result >= 1 << *(v1 + 32))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      result = v109;
      v6 = *(v1 + 36);
      v46 = v1 + 72;
      v47 = v2;
      v7 = 1;
      v48 = v6;
      v49 = v1 + 64;
      while (1)
      {
        v8 = v5 >> 6;
        if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          break;
        }

        if (v6 != *(v1 + 36))
        {
          goto LABEL_26;
        }

        v50 = v7;
        v9 = (*(v1 + 48) + 16 * v5);
        v11 = *v9;
        v10 = v9[1];
        v12 = (*(v1 + 56) + 200 * v5);
        v66[0] = *v12;
        v13 = v12[4];
        v15 = v12[1];
        v14 = v12[2];
        v66[3] = v12[3];
        v66[4] = v13;
        v66[1] = v15;
        v66[2] = v14;
        v16 = v12[8];
        v18 = v12[5];
        v17 = v12[6];
        v66[7] = v12[7];
        v66[8] = v16;
        v66[5] = v18;
        v66[6] = v17;
        v20 = v12[10];
        v19 = v12[11];
        v21 = v12[9];
        v67 = *(v12 + 24);
        v66[10] = v20;
        v66[11] = v19;
        v66[9] = v21;
        v22 = v12[11];
        v63 = v12[10];
        v64 = v22;
        v65 = *(v12 + 24);
        v23 = v12[7];
        v59 = v12[6];
        v60 = v23;
        v24 = v12[9];
        v61 = v12[8];
        v62 = v24;
        v25 = v12[3];
        v55 = v12[2];
        v56 = v25;
        v26 = v12[5];
        v57 = v12[4];
        v58 = v26;
        v27 = v12[1];
        v53 = *v12;
        v54 = v27;
        v110 = result;
        memmove(&__dst, v12, 0xC8uLL);
        v81[0] = v11;
        v81[1] = v10;
        v92 = v63;
        v93 = v64;
        v94 = v65;
        v88 = v59;
        v89 = v60;
        v90 = v61;
        v91 = v62;
        v84 = v55;
        v85 = v56;
        v86 = v57;
        v87 = v58;
        v82 = v53;
        v83 = v54;
        swift_bridgeObjectRetain_n();
        sub_22EE0C808(v66, &v51);
        sub_22EE0C808(&__dst, &v51);
        sub_22EDDBA48(v81, &qword_27DA95620, &qword_22EE43558);
        v98 = v70;
        v99 = v71;
        v102 = v74;
        v103 = v75;
        v100 = v72;
        v101 = v73;
        v108 = v80;
        v106 = v78;
        v107 = v79;
        v104 = v76;
        v105 = v77;
        v96 = __dst;
        v97 = v69;
        v95[0] = v11;
        v95[1] = v10;
        v28 = *(&__dst + 1);
        v29 = v69;
        v51 = v11;
        v52 = v10;

        MEMORY[0x2318F58F0](8250, 0xE200000000000000);
        MEMORY[0x2318F58F0](v28, v29);
        sub_22EDDBA48(v95, &qword_27DA95620, &qword_22EE43558);
        result = v110;
        v30 = v51;
        v31 = v52;
        v109 = v110;
        v32 = v1;
        v34 = *(v110 + 16);
        v33 = *(v110 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_22EDD2DD4((v33 > 1), v34 + 1, 1);
          result = v109;
        }

        *(result + 16) = v34 + 1;
        v35 = result + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v31;
        v36 = 1 << *(v32 + 32);
        if (v5 >= v36)
        {
          goto LABEL_27;
        }

        v1 = v32;
        v4 = v49;
        v37 = *(v49 + 8 * v8);
        if ((v37 & (1 << v5)) == 0)
        {
          goto LABEL_28;
        }

        v6 = v48;
        if (v48 != *(v1 + 36))
        {
          goto LABEL_29;
        }

        v38 = v37 & (-2 << (v5 & 0x3F));
        if (v38)
        {
          v5 = __clz(__rbit64(v38)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = v8 << 6;
          v40 = v8 + 1;
          v41 = (v46 + 8 * v8);
          while (v40 < (v36 + 63) >> 6)
          {
            v43 = *v41++;
            v42 = v43;
            v39 += 64;
            ++v40;
            if (v43)
            {
              v44 = result;
              sub_22ED972FC(v5, v48, 0);
              result = v44;
              v5 = __clz(__rbit64(v42)) + v39;
              goto LABEL_19;
            }
          }

          v45 = result;
          sub_22ED972FC(v5, v48, 0);
          result = v45;
          v5 = v36;
        }

LABEL_19:
        if (v50 == v47)
        {
          return result;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          v7 = v50 + 1;
          if (v5 < 1 << *(v1 + 32))
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_22EDF7464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22EE02370(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22EE3C7C4();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_22EE02370((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 32 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = MEMORY[0x277D84F98];
      *(v12 + 56) = 0;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_22ED972FC(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_22ED972FC(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_22EDF769C()
{
  sub_22EE3CC74();
  MEMORY[0x2318F6370](0);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF7708(uint64_t a1)
{
  sub_22EE3CC74();
  MEMORY[0x2318F6370](0);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF7760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7372656C706D6173 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22EE3CBA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22EDF77F4(uint64_t a1)
{
  v2 = sub_22EE0A408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7830(uint64_t a1)
{
  v2 = sub_22EE0A408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF786C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95408, &qword_22EE41EE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A408();
  sub_22EE3CCE4();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95410, &qword_22EE41EF0);
  sub_22EE0A45C();
  sub_22EE3CB44();
  return (*(v5 + 8))(v7, v4);
}

void *sub_22EDF79C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22EE0A534(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22EDF7A28()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E496E6F69746361;
  }
}

uint64_t sub_22EDF7A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022EE492D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF7B64(uint64_t a1)
{
  v2 = sub_22EE0A6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7BA0(uint64_t a1)
{
  v2 = sub_22EE0A6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22EDF7C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!HIDWORD(result))
  {
    if ((kperf_kdebug_action_set() & 0x80000000) != 0)
    {
      v12 = MEMORY[0x2318F5610]();
      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      *v13 = 0xD000000000000019;
      *(v13 + 8) = 0x800000022EE48FB0;
      *(v13 + 16) = v12;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v5 = kperf_kdebug_filter_create();
    sub_22EE3C184();
    v6 = kperf_kdebug_filter_add_desc();

    if (v6 < 0)
    {
      v8 = 0x800000022EE48FD0;
      v9 = MEMORY[0x2318F5610](v7);
      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v11 = 0xD00000000000001BLL;
    }

    else
    {
      if ((kperf_kdebug_filter_set() & 0x80000000) == 0)
      {
        return MEMORY[0x2318F7610](v5);
      }

      v8 = 0x800000022EE48FF0;
      v9 = MEMORY[0x2318F5610]();
      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v11 = 0xD000000000000019;
    }

    *v10 = v11;
    *(v10 + 8) = v8;
    *(v10 + 16) = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return MEMORY[0x2318F7610](v5);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22EDF7E3C()
{
  if (*v0)
  {
    return 0x4665736963657270;
  }

  else
  {
    return 0x6E496E6F69746361;
  }
}

uint64_t sub_22EDF7E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4665736963657270 && a2 == 0xED00007265746C69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF7F74(uint64_t a1)
{
  v2 = sub_22EE0A70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF7FB0(uint64_t a1)
{
  v2 = sub_22EE0A70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF7FEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95430, &qword_22EE41F00);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A70C();
  sub_22EE3CCE4();
  v13 = 0;
  sub_22EE3CB34();
  if (!v4)
  {
    v12 = 1;
    sub_22EE3CB04();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22EDF8180@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22EE0A760(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_22EDF81D0(char a1, unint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    sub_22EE3CBA4();
  }

  result = kperf_timer_lightweight_pet_set();
  if ((result & 0x80000000) != 0)
  {
    v4 = 0x800000022EE49010;
    v5 = 0xD000000000000018;
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = kperf_timer_pet_set();
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v4 = 0xED000072656D6974;
  v5 = 0x2054455020746573;
LABEL_9:
  v6 = MEMORY[0x2318F5610]();
  type metadata accessor for KTraceRecordError(0);
  sub_22EDD45F0();
  swift_allocError();
  *v7 = v5;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22EDF8314()
{
  if (*v0)
  {
    return 0x646E4972656D6974;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_22EDF834C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E4972656D6974 && a2 == 0xEA00000000007865)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF8430(uint64_t a1)
{
  v2 = sub_22EE0A90C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF846C(uint64_t a1)
{
  v2 = sub_22EE0A90C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF84A8(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95438, &qword_22EE41F08);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0A90C();
  sub_22EE3CCE4();
  v14 = a2 & 1;
  v13 = 0;
  sub_22EE0A960();
  sub_22EE3CB44();
  if (!v3)
  {
    v12 = 1;
    sub_22EE3CB34();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22EDF8648@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22EE0A9B4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_22EDF869C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696577746867696CLL;
  }

  else
  {
    v3 = 0x6C616E696769726FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000746867;
  }

  if (*a2)
  {
    v5 = 0x696577746867696CLL;
  }

  else
  {
    v5 = 0x6C616E696769726FLL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746867;
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
    v8 = sub_22EE3CBA4();
  }

  return v8 & 1;
}

uint64_t sub_22EDF874C()
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF87D8(uint64_t a1)
{
  sub_22EE3C1C4();
}

uint64_t sub_22EDF8850(uint64_t a1)
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF88D8@<X0>(char *a2@<X8>)
{
  v3 = sub_22EE3CA04();

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

void sub_22EDF8938(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E696769726FLL;
  if (*v1)
  {
    v2 = 0x696577746867696CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746867;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22EDF8A30(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a2 == -1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!is_mul_ok(a3, 0x3E8uLL))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v3 = result;
  kperf_ns_to_ticks();
  if (v3)
  {
    if ((kperf_lazy_wait_action_set() & 0x80000000) != 0)
    {
      v4 = "set lightweight PET mode";
      v5 = 0xD000000000000017;
    }

    else
    {
      result = kperf_lazy_wait_time_threshold_set();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v4 = "set up lazy wait action";
      v5 = 0xD00000000000001FLL;
    }
  }

  else
  {
    v5 = 0xD000000000000016;
    if ((kperf_lazy_cpu_action_set() & 0x80000000) != 0)
    {
      v4 = "set up lazy wait time threshold";
    }

    else
    {
      result = kperf_lazy_cpu_time_threshold_set();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v4 = "set up lazy CPU action";
      v5 = 0xD00000000000001ELL;
    }
  }

  v6 = v4 | 0x8000000000000000;
  v7 = MEMORY[0x2318F5610]();
  type metadata accessor for KTraceRecordError(0);
  sub_22EDD45F0();
  swift_allocError();
  *v8 = v5;
  *(v8 + 8) = v6;
  *(v8 + 16) = v7;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22EDF8B90()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E496E6F69746361;
  }
}

uint64_t sub_22EDF8BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E496E6F69746361 && a2 == 0xEB00000000786564;
  if (v6 || (sub_22EE3CBA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022EE492F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();

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

uint64_t sub_22EDF8CC0(uint64_t a1)
{
  v2 = sub_22EE0AB74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF8CFC(uint64_t a1)
{
  v2 = sub_22EE0AB74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF8D38(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v16[0] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a6)(v13);
  sub_22EE3CCE4();
  v18 = 0;
  v14 = v16[1];
  sub_22EE3CB34();
  if (!v14)
  {
    v17 = 1;
    sub_22EE3CB34();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22EDF8F08@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_22EE0ABC8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t sub_22EDF8F8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22EDE1B04(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22EE3CBA4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDF9130()
{
  v1 = 0x736E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6465726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_22EDF9184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EE0ADD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDF91AC(uint64_t a1)
{
  v2 = sub_22EE0AD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF91E8(uint64_t a1)
{
  v2 = sub_22EE0AD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF9224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95450, &unk_22EE41F18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0AD80();
  sub_22EE3CCE4();
  v16 = 0;
  sub_22EE3CB04();
  if (!v5)
  {
    v12[1] = v12[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FD8, qword_22EE400D0);
    sub_22EE0FAAC(&qword_27DA95458, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_22EE3CB44();
    v14 = 2;
    sub_22EE3CB14();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22EDF941C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22EE0AEEC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_22EDF9478(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_22EE3CBA4(), result = 0, (v7 & 1) != 0))
  {
    if (sub_22EDF8F8C(v2, v4))
    {
      return v3 ^ v5 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22EDF94F8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x694667756265646BLL;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0x746341667265706BLL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000013;
    }

    if (!a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7A614C667265706BLL;
    v2 = 0x7A614C667265706BLL;
    if (a1 != 9)
    {
      v2 = 0x72656469766F7270;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D6954667265706BLL;
    v4 = 0x746550667265706BLL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22EDF96A4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22EE3CBA4();
  }

  return v12 & 1;
}

uint64_t sub_22EDF9750(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_22EE3CC74();
  a3(v5);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF97D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_22EE3C1C4();
}

uint64_t sub_22EDF9844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_22EE3CC74();
  a4(v6);
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

unint64_t sub_22EDF98AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EE0B17C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22EDF98DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22EDF94F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22EDF9924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EE0B17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDF9958(uint64_t a1)
{
  v2 = sub_22EE0B328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF9994(uint64_t a1)
{
  v2 = sub_22EE0B328();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22EDF99D0(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  if (v4)
  {
    v5 = v2[3];

    v6 = sub_22EDD1088(v5, v4);
    if (!v3)
    {
      sub_22EDD1254(v6, 1);

      v7 = v2[6];
      if (v7)
      {
        v8 = v2[5];

        v9 = sub_22EDD1088(v8, v7);
        sub_22EDD1254(v9, 0);
      }
    }
  }

  else if (v2[6])
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    *v12 = a1;
    v12[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_22EDF9AEC(uint64_t result, void *a2, char a3)
{
  if (*(v3 + 16))
  {
    return result;
  }

  v5 = result;
  v6 = sub_22EDF5DE4(*(v3 + 8), *v3);
  ktrace_set_buffer_size(v5, v6);
  ktrace_set_coprocessor_tracing_enabled(v5, (*(v3 + 56) == 2) | *(v3 + 56) & 1);
  v7 = *(v3 + 64);
  if (!v7)
  {
LABEL_33:
    v29 = sub_22EE3C184();
    v30 = ktrace_session_provide(_:_:_:_:_:)(v5, v29 + 32, MEMORY[0x277D84F98], a2, 2);

    if (v30)
    {
      sub_22EDE37CC(aRequired_1);
      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      *v31 = 0x6465726975716552;
      v31[1] = 0xE800000000000000;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v32 = sub_22EE0B1C8(&unk_2843A2318);
    sub_22EDE37CC(aRequired_1);
    v33 = *(v3 + 152);
    if (!v33)
    {
    }

    v51 = *(v33 + 16);
    if (!v51)
    {
    }

    v34 = 0;
    v49 = a2;
    v50 = v33 + 32;
    v35 = v32 + 56;
    while (1)
    {
      v36 = (v50 + 32 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v36[2];
      if (*(v32 + 16))
      {
        sub_22EE3CC74();
        swift_bridgeObjectRetain_n();

        sub_22EE3C1C4();
        v40 = sub_22EE3CCC4();
        v41 = -1 << *(v32 + 32);
        v42 = v40 & ~v41;
        if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = (*(v32 + 48) + 16 * v42);
            v45 = *v44 == v38 && v44[1] == v37;
            if (v45 || (sub_22EE3CBA4() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_39;
        }

LABEL_49:
      }

      else
      {
      }

      v46 = sub_22EE3C184();
      v47 = ktrace_session_provide(_:_:_:_:_:)(v5, v46 + 32, v39, v49, a3 & 1);

      if (v47)
      {

        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        *v48 = v38;
        v48[1] = v37;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

LABEL_39:
      ++v34;

      if (v34 == v51)
      {
      }
    }
  }

  result = kperf_reset();
  v8 = *(v7 + 16);
  if (HIDWORD(v8))
  {
    goto LABEL_65;
  }

  v9 = a2;
  result = kperf_action_count_set();
  if (v8)
  {
    v10 = (v7 + 32);
    v11 = 1;
    v12 = v52;
    do
    {
      v13 = *v10;

      sub_22EDF66BC(v11, v13);

      if (v52)
      {
        return result;
      }

      ++v11;
      ++v10;
      --v8;
    }

    while (v8);
    v14 = *(v3 + 72);
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  v12 = v52;
  v14 = *(v3 + 72);
  if (v14)
  {
LABEL_11:
    v15 = *(v14 + 16);
    if (HIDWORD(v15))
    {
LABEL_66:
      __break(1u);
      return result;
    }

    result = kperf_timer_count_set();
    v16 = 0;
    v17 = (v14 + 40);
    while (1)
    {
      if (v15 == v16)
      {
        goto LABEL_22;
      }

      if ((*v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!is_mul_ok(*v17, 0x3E8uLL))
      {
        goto LABEL_61;
      }

      v18 = *(v17 - 1);
      kperf_ns_to_ticks();
      result = kperf_timer_period_set();
      if ((result & 0x80000000) != 0)
      {
        v21 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        *v22 = 0x6972657020746573;
        *(v22 + 8) = 0xEA0000000000646FLL;
        goto LABEL_58;
      }

      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_62;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      if (HIDWORD(v19))
      {
        goto LABEL_64;
      }

      result = kperf_timer_action_set();
      v17 += 2;
      ++v16;
      if ((result & 0x80000000) != 0)
      {
        v20 = 0x800000022EE48F90;
        v21 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        v23 = 0xD000000000000010;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_22:
  v24 = *(v3 + 96);
  a2 = v9;
  if (v24 && v24[2])
  {
    v25 = v24[4];
    v26 = v24[5];
    v27 = v24[6];

    sub_22EDF7C68(v25, v26, v27);

    if (v12)
    {
      return result;
    }

    a2 = v9;
  }

  v28 = *(v3 + 80);
  if (v28 == 2 || (result = sub_22EDF81D0(v28 & 1, *(v3 + 88)), !v12))
  {
    if ((*(v3 + 120) & 1) != 0 || (result = sub_22EDF8A30(0, *(v3 + 104), *(v3 + 112)), !v12))
    {
      if ((*(v3 + 144) & 1) != 0 || (result = sub_22EDF8A30(1, *(v3 + 128), *(v3 + 136)), !v12))
      {
        if ((kperf_sample_set() & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = 0x800000022EE490B0;
        v21 = MEMORY[0x2318F5610]();
        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        v23 = 0xD000000000000014;
LABEL_57:
        *v22 = v23;
        *(v22 + 8) = v20;
LABEL_58:
        *(v22 + 16) = v21;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

void *sub_22EDFA104(uint64_t a1)
{
  v2 = sub_22EE3C7C4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22EE09D84(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_22EDFA184(uint64_t a1)
{
  v2 = sub_22EE3C7C4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_22EE0B260(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_22EDFA200(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v9 = a1;
  if ((a4 & 1) == 0)
  {
    v23 = *(a1 + 64);
    if (v23 && *(v23 + 16) || (v24 = *(a1 + 72)) != 0 && *(v24 + 16) || *(a1 + 80) != 2 || (*(a1 + 16) & 1) == 0)
    {
      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v26 = v25;
      v103 = 0;
      v104 = 0xE000000000000000;
      sub_22EE3C864();
      MEMORY[0x2318F58F0](a2, a3);
      v27 = 0xD00000000000004CLL;
      v28 = 0x800000022EE49120;
      goto LABEL_87;
    }

    goto LABEL_37;
  }

  v10 = *(v4 + 64);
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    *(v6 + 64) = MEMORY[0x277D84F90];
    v11 = *(v6 + 72);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_34:
    v11 = MEMORY[0x277D84F90];
    *(v6 + 72) = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  v11 = *(v6 + 72);
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_4:
  v80 = a4;
  if (*(a1 + 72))
  {
    v12 = *(a1 + 72);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v100 = *(v12 + 16);
  if (v100)
  {
    v13 = *(a1 + 64);

    v14 = 0;
    v15 = (v12 + 40);
    v97 = v12;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_132;
      }

      v5 = *(v15 - 1);
      if (!v13)
      {
        break;
      }

      if (v5 >= *(v13 + 16))
      {

LABEL_100:
        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        v66 = v65;
        sub_22EE3C864();

        v67 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v67);

        MEMORY[0x2318F58F0](0x6579616C206E6920, 0xEA00000000002072);
        MEMORY[0x2318F58F0](a2, a3);
        MEMORY[0x2318F58F0](0xD00000000000001BLL, 0x800000022EE49170);
        v105 = v5;
        v68 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v68);

        *v66 = 0x2072656D6974;
        v66[1] = 0xE600000000000000;
        goto LABEL_88;
      }

      if (v5 < 0)
      {
        goto LABEL_133;
      }

      if (*(v10 + 16) > 0x1EuLL)
      {
        goto LABEL_86;
      }

      if (!v11)
      {
        goto LABEL_147;
      }

      if (*(v11 + 2) > 7uLL)
      {
LABEL_86:

        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        v26 = v61;
        sub_22EE3C864();

        v103 = 0x2072656D6974;
        v104 = 0xE600000000000000;
        v105 = v14;
        v62 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v62);

        MEMORY[0x2318F58F0](0x6579616C206E6920, 0xEA00000000002072);
        MEMORY[0x2318F58F0](a2, a3);
        v28 = 0x800000022EE49190;
        v27 = 0xD00000000000001ALL;
LABEL_87:
        MEMORY[0x2318F58F0](v27, v28);
        v63 = v104;
        *v26 = v103;
        v26[1] = v63;
LABEL_88:
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v9 = *v15;
      v16 = *(v13 + 32 + 8 * v5);
      v10 = *(v6 + 64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_22EE05BFC(0, *(v10 + 16) + 1, 1, v10);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_22EE05BFC((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v89[8] = v10;
      v19 = *(v10 + 16);
      v11 = v89[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_22EE06098(0, *(v11 + 2) + 1, 1, v11, &qword_27DA956D8, &qword_22EE435C8);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      v5 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v11 = sub_22EE06098((v20 > 1), v21 + 1, 1, v11, &qword_27DA956D8, &qword_22EE435C8);
      }

      ++v14;
      *(v11 + 2) = v5;
      v22 = &v11[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v9;
      v6 = v89;
      v89[9] = v11;
      v15 += 2;
      v12 = v97;
      if (v100 == v14)
      {
        goto LABEL_36;
      }
    }

    if (v5 < 0)
    {
      goto LABEL_136;
    }

    goto LABEL_100;
  }

LABEL_36:

  v9 = a1;
  a4 = v80;
LABEL_37:
  v29 = *(v9 + 152);
  if (v29)
  {
    if (*(v6 + 152))
    {
      v30 = *(v6 + 152);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v14 = *(v29 + 16);
    if (v14)
    {
      v81 = a4;
      v83 = v9;
      v13 = v29 + 32;

      v9 = 0;
      v84 = v13;
      v85 = v14;
      while (1)
      {
        v31 = v13 + 32 * v9;
        v10 = *v31;
        v5 = *(v31 + 8);
        v101 = *(v31 + 16);
        v90 = *(v31 + 24);
        v6 = *(v30 + 2);
        v94 = v5;
        if (!v6)
        {
LABEL_53:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_22EE05D08(0, v6 + 1, 1, v30);
          }

          v34 = *(v30 + 2);
          v33 = *(v30 + 3);
          if (v34 >= v33 >> 1)
          {
            v30 = sub_22EE05D08((v33 > 1), v34 + 1, 1, v30);
          }

          *(v30 + 2) = v34 + 1;
          v35 = &v30[32 * v34];
          *(v35 + 4) = v10;
          *(v35 + 5) = v94;
          *(v35 + 6) = v101;
          v35[56] = v90;
          goto LABEL_44;
        }

        v15 = 0;
        v11 = 0;
        while (1)
        {
          v32 = *(v15 + v30 + 32) == v10 && *(v15 + v30 + 40) == v5;
          if (v32 || (sub_22EE3CBA4() & 1) != 0)
          {
            break;
          }

          ++v11;
          v15 += 4;
          if (v6 == v11)
          {
            goto LABEL_53;
          }
        }

        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_22EE05A68(v30);
        }

        if (v11 >= *(v30 + 2))
        {
          goto LABEL_134;
        }

        v87 = v9;
        v88 = v30;
        v36 = v15 + v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *(v36 + 6);
        v103 = v10;
        v86 = v36;
        *(v36 + 6) = 0x8000000000000000;
        v38 = v101 + 64;
        v39 = -1 << *(v101 + 32);
        if (-v39 < 64)
        {
          v40 = ~(-1 << -v39);
        }

        else
        {
          v40 = -1;
        }

        v9 = v40 & *(v101 + 64);
        v41 = (63 - v39) >> 6;

        v42 = 0;
        v91 = v41;
LABEL_67:
        if (v9)
        {
          v98 = isUniquelyReferenced_nonNull_native;
          v14 = v42;
          goto LABEL_74;
        }

        v44 = v42;
        while (1)
        {
          v14 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            goto LABEL_117;
          }

          if (v14 >= v41)
          {
            break;
          }

          v9 = *(v38 + 8 * v14);
          ++v44;
          if (v9)
          {
            v98 = isUniquelyReferenced_nonNull_native;
LABEL_74:
            v45 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
            v46 = (*(v101 + 48) + v45);
            v5 = *v46;
            v47 = v46[1];
            v48 = (*(v101 + 56) + v45);
            v49 = v48[1];
            v96 = *v48;

            v6 = sub_22EDE1B04(v5, v47);
            v51 = *(v10 + 16);
            v52 = (v50 & 1) == 0;
            v53 = v51 + v52;
            if (!__OFADD__(v51, v52))
            {
              v13 = v50;
              if (*(v10 + 24) >= v53)
              {
                if ((v98 & 1) == 0)
                {
                  sub_22EE05548();
                }
              }

              else
              {
                sub_22EE04B40(v53, v98 & 1);
                v54 = sub_22EDE1B04(v5, v47);
                if ((v13 & 1) != (v55 & 1))
                {
                  goto LABEL_149;
                }

                v6 = v54;
              }

              v9 &= v9 - 1;
              v10 = v103;
              if (v13)
              {

                v43 = (*(v103 + 56) + 16 * v6);
                *v43 = v96;
                v43[1] = v49;

                goto LABEL_66;
              }

              *(v103 + 8 * (v6 >> 6) + 64) |= 1 << v6;
              v56 = (*(v10 + 48) + 16 * v6);
              *v56 = v5;
              v56[1] = v47;
              v57 = (*(v10 + 56) + 16 * v6);
              *v57 = v96;
              v57[1] = v49;
              v58 = *(v10 + 16);
              v59 = __OFADD__(v58, 1);
              v60 = v58 + 1;
              if (v59)
              {
                goto LABEL_131;
              }

              *(v10 + 16) = v60;
LABEL_66:
              isUniquelyReferenced_nonNull_native = 1;
              v42 = v14;
              v38 = v101 + 64;
              v5 = v94;
              v41 = v91;
              goto LABEL_67;
            }

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
            goto LABEL_137;
          }
        }

        v6 = v101;
        sub_22ED97F20(v101);

        *(v86 + 6) = v10;

        if (v90)
        {
          v9 = v87;
          v30 = v88;
          v13 = v84;
          v14 = v85;
          if (v11 >= *(v88 + 2))
          {
            goto LABEL_135;
          }

          *(v15 + v88 + 56) = 1;
        }

        else
        {
          v9 = v87;
          v30 = v88;
          v13 = v84;
          v14 = v85;
        }

LABEL_44:
        if (++v9 == v14)
        {

          v6 = v89;
          v9 = v83;
          a4 = v81;
          break;
        }
      }
    }

    *(v6 + 152) = v30;
  }

  v13 = *(v9 + 96);
  if (!v13)
  {
    return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
  }

  if (!*(v13 + 16))
  {
    v5 = *(v6 + 96);

    if (v5)
    {
LABEL_128:
      v103 = v5;
      sub_22EDFAF0C(v13);
      *(v6 + 96) = v103;
      return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
    }

    goto LABEL_103;
  }

  v10 = *(v13 + 32);
  v11 = *(v13 + 40);
  v15 = *(v13 + 48);
  v6 = *(v6 + 96);
  if (!v6 || !*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95460, &qword_22EE41F28);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22EE3F500;
    *(v5 + 32) = v10;
    *(v5 + 40) = v11;
    *(v5 + 48) = v15;

    v6 = v89;
LABEL_127:
    *(v6 + 96) = v5;
    if (v5)
    {
      goto LABEL_128;
    }

LABEL_103:
    *(v6 + 96) = v13;
    return sub_22EDD1B30(*(v9 + 160), *(v9 + 168));
  }

  v14 = *(v6 + 32);
  v5 = *(v6 + 48);
  if (v14 != v10)
  {
    if (a4)
    {
      v69 = v89[8];
      if (v69)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_141;
        }

        v70 = *(v69 + 16);
        if (v10 >= v70)
        {
          goto LABEL_142;
        }

        if (v14 >= v70)
        {
          goto LABEL_143;
        }

        v71 = *(v69 + 32 + 8 * v10);

        v102 = v5;

        v73 = sub_22EE0B2B4(v72);

        v105 = v73;
        v74 = *(v71 + 16);
        if (v74)
        {

          v75 = 32;
          do
          {
            sub_22EE02814(&v103, *(v71 + v75++));
            --v74;
          }

          while (v74);

          v73 = v105;
        }

        v76 = *(v73 + 16);
        if (v76)
        {
          v92 = sub_22EE064A8(*(v73 + 16), 0);
          v77 = sub_22EE09E18(&v103, v92 + 32, v76, v73);
          v78 = v103;
          v99 = v77;

          sub_22ED97F20(v78);
          if (v99 != v76)
          {
            goto LABEL_146;
          }

          v10 = v92;
        }

        else
        {

          v10 = MEMORY[0x277D84F90];
        }

        v6 = v89[8];
        v5 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_120;
      }

      goto LABEL_148;
    }

LABEL_117:
    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    *v79 = 0xD000000000000048;
    v79[1] = 0x800000022EE490D0;
    goto LABEL_88;
  }

  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (!*(v6 + 16))
      {
        goto LABEL_138;
      }
    }

    else
    {
LABEL_137:
      v6 = sub_22EE05A40(v6);
      if (!*(v6 + 16))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }
    }

    v10 = v6 + 40;
    MEMORY[0x2318F58F0](44, 0xE100000000000000);
    v89[12] = v6;
    v6 = v89;

    v5 = v89[12];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v5 + 16))
      {
        goto LABEL_126;
      }

      goto LABEL_140;
    }

LABEL_139:
    v5 = sub_22EE05A40(v5);
    if (*(v5 + 16))
    {
LABEL_126:
      MEMORY[0x2318F58F0](v11, v15);

      goto LABEL_127;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    v6 = sub_22EE05A54(v6);
LABEL_120:
    if (v14 >= *(v6 + 16))
    {
      break;
    }

    *(v6 + 8 * v14 + 32) = v10;

    v89[8] = v6;
    v6 = v89[12];
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  result = sub_22EE3CBE4();
  __break(1u);
  return result;
}

uint64_t sub_22EDFAF0C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EE05ADC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22EDFB004(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EE05D08(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22EDFB0F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_22ED80F70(v11))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    memcpy(__dst, (*(v1 + 48) + 328 * (v9 | (v8 << 6))), 0x141uLL);
    sub_22ED80E90(__dst, v11);
    sub_22EE02C5C(__src, __dst);
    memcpy(v11, __src, 0x141uLL);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDFB208(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 && v2[2])
  {
    v4 = v2[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (v2[2])
      {
LABEL_5:
        v2[4] = v4;
        v2[5] = a1;
        *(v1 + 72) = v2;
        return result;
      }
    }

    else
    {
      result = sub_22EE05A7C(v2);
      v2 = result;
      if (*(result + 16))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22EDFB2CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95468, &qword_22EE41F30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0B328();
  sub_22EE3CCE4();
  v12 = *v3;
  v13 = *(v3 + 16);
  v11 = 0;
  sub_22EE0B37C();
  sub_22EE3CAD4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_22EE3CA94();
    LOBYTE(v12) = 2;
    sub_22EE3CA94();
    LOBYTE(v12) = 3;
    sub_22EE3CAA4();
    *&v12 = *(v3 + 8);
    v11 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95480, &qword_22EE41F38);
    sub_22EE0B3D0();
    sub_22EE3CAD4();
    *&v12 = *(v3 + 9);
    v11 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95498, &qword_22EE41F40);
    sub_22EE0B4A8();
    sub_22EE3CAD4();
    v12 = v3[5];
    v11 = 6;
    sub_22EE0B580();
    sub_22EE3CAD4();
    *&v12 = *(v3 + 12);
    v11 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954B8, &qword_22EE41F48);
    sub_22EE0B5D4();
    sub_22EE3CAD4();
    v12 = *(v3 + 104);
    v13 = *(v3 + 120);
    v11 = 8;
    sub_22EE0B6AC();
    sub_22EE3CAD4();
    v12 = v3[8];
    v13 = *(v3 + 144);
    v11 = 9;
    sub_22EE3CAD4();
    *&v12 = *(v3 + 19);
    v11 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954D8, &qword_22EE41F50);
    sub_22EE0B700();
    sub_22EE3CAD4();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_22EDFB6C4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22EE0B878(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_22EDFB740()
{
  v1 = 0x736973706F6E7973;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73657361696C61;
  }
}

uint64_t sub_22EDFB79C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22EE0C2CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22EDFB7C4(uint64_t a1)
{
  v2 = sub_22EE0C1F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDFB800(uint64_t a1)
{
  v2 = sub_22EE0C1F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDFB83C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA954F0, &qword_22EE41F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0C1F4();
  sub_22EE3CCE4();
  *&v21 = *v3;
  LOBYTE(v20[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EE0DA88(&qword_27DA954F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22EE3CAD4();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    sub_22EE3CB04();
    v9 = *(v3 + 136);
    v10 = *(v3 + 168);
    v32[8] = *(v3 + 152);
    v32[9] = v10;
    v32[10] = *(v3 + 184);
    v11 = *(v3 + 72);
    v12 = *(v3 + 104);
    v32[4] = *(v3 + 88);
    v32[5] = v12;
    v32[6] = *(v3 + 120);
    v32[7] = v9;
    v13 = *(v3 + 40);
    v32[0] = *(v3 + 24);
    v32[1] = v13;
    v32[2] = *(v3 + 56);
    v32[3] = v11;
    v14 = *(v3 + 136);
    v15 = *(v3 + 168);
    v29 = *(v3 + 152);
    v30 = v15;
    v31 = *(v3 + 184);
    v16 = *(v3 + 72);
    v17 = *(v3 + 104);
    v25 = *(v3 + 88);
    v26 = v17;
    v27 = *(v3 + 120);
    v28 = v14;
    v18 = *(v3 + 40);
    v21 = *(v3 + 24);
    v22 = v18;
    v23 = *(v3 + 56);
    v24 = v16;
    v33 = 2;
    sub_22EE0C1BC(v32, v20);
    sub_22EE0C248();
    sub_22EE3CB44();
    v20[8] = v29;
    v20[9] = v30;
    v20[10] = v31;
    v20[4] = v25;
    v20[5] = v26;
    v20[6] = v27;
    v20[7] = v28;
    v20[0] = v21;
    v20[1] = v22;
    v20[2] = v23;
    v20[3] = v24;
    sub_22EE0C29C(v20);
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_22EDFBB20@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22EE0C3E4(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_22EDFBBBC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701667182;
    v7 = 0xD000000000000010;
    v8 = 0x4E70756F7247646FLL;
    if (a1 != 3)
    {
      v8 = 0x6168436B63616C73;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E6F6973726576;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x73676E6974746573;
    v2 = 0x4C746C7561666564;
    if (a1 != 9)
    {
      v2 = 0x73726579616CLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    v4 = 0x736973706F6E7973;
    if (a1 != 6)
    {
      v4 = 0x746E656D75636F64;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_22EDFBDA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EE0C7BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22EDFBDD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22EDFBBBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22EDFBE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EE0C7BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDFBE44(uint64_t a1)
{
  v2 = sub_22EE0D9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDFBE80(uint64_t a1)
{
  v2 = sub_22EE0D9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22EDFBEBC()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = *(v0 + 296);
  v5 = v2 - 1;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v1 + 40 + 16 * v3);
    v8 = v3;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      if (*(v4 + 16))
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 += 2;
      if (v2 == v8)
      {
        return;
      }
    }

    v10 = *(v7 - 1);
    v9 = *v7;

    v11 = sub_22EDE1B04(v10, v9);
    if ((v12 & 1) == 0)
    {

      goto LABEL_4;
    }

    v13 = *(v4 + 56) + 200 * v11;
    v49 = *v13;
    v14 = *(v13 + 48);
    v15 = *(v13 + 64);
    v16 = *(v13 + 32);
    v50 = *(v13 + 16);
    v51 = v16;
    v52 = v14;
    v53 = v15;
    v17 = *(v13 + 80);
    v18 = *(v13 + 96);
    v19 = *(v13 + 128);
    v56 = *(v13 + 112);
    v57 = v19;
    v54 = v17;
    v55 = v18;
    v20 = *(v13 + 144);
    v21 = *(v13 + 160);
    v22 = *(v13 + 176);
    v61 = *(v13 + 192);
    v59 = v21;
    v60 = v22;
    v58 = v20;
    sub_22EE0C808(&v49, &v36);
    v35 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_22EE05E14(0, v6[2] + 1, 1, v6);
    }

    v24 = v6[2];
    v23 = v6[3];
    if (v24 >= v23 >> 1)
    {
      v6 = sub_22EE05E14((v23 > 1), v24 + 1, 1, v6);
    }

    v3 = v8 + 1;
    v38 = v51;
    v39 = v52;
    v42 = v55;
    v43 = v56;
    v40 = v53;
    v41 = v54;
    v48 = v61;
    v46 = v59;
    v47 = v60;
    v44 = v57;
    v45 = v58;
    v36 = v49;
    v37 = v50;
    v6[2] = v24 + 1;
    v25 = &v6[27 * v24];
    v25[4] = v10;
    v25[5] = v9;
    *(v25 + 3) = v36;
    v26 = v37;
    v27 = v38;
    v28 = v40;
    *(v25 + 6) = v39;
    *(v25 + 7) = v28;
    *(v25 + 4) = v26;
    *(v25 + 5) = v27;
    v29 = v41;
    v30 = v42;
    v31 = v44;
    *(v25 + 10) = v43;
    *(v25 + 11) = v31;
    *(v25 + 8) = v29;
    *(v25 + 9) = v30;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v25[30] = v48;
    *(v25 + 13) = v33;
    *(v25 + 14) = v34;
    *(v25 + 12) = v32;
    v5 = v35;
  }

  while (v35 != v8);
}

uint64_t sub_22EDFC0E0()
{
  v0 = sub_22EE3BA34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  __swift_allocate_value_buffer(v8, qword_27DA9C930);
  __swift_project_value_buffer(v0, qword_27DA9C930);
  sub_22EE3B9F4();
  sub_22EE3BA14();
  sub_22EE3BA24();
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  sub_22EE3BA04();
  sub_22EE3BA24();
  v11(v7, v0);
  return (v11)(v10, v0);
}

uint64_t sub_22EDFC284()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 128);
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[26];
  v7 = qword_27DA983E0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_22EE3BA34();
  __swift_project_value_buffer(v8, qword_27DA9C930);
  sub_22ED80FA0();
  sub_22EE3C684();
  if (v9)
  {
    if (v3)
    {

      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      *v10 = 0xD00000000000002FLL;
      v10[1] = 0x800000022EE491B0;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    if (v4 && *(v4 + 16) >= 0x20uLL)
    {

      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v13 = 0x63615F667265706BLL;
      v14 = 0xED0000736E6F6974;
    }

    else
    {
      if (!v5 || *(v5 + 16) < 9uLL)
      {
        if (!v6 || *(v6 + 16) < 2uLL)
        {
          if (sub_22EE3C1D4() <= 79 && sub_22EE3C1D4())
          {
          }

          type metadata accessor for KTraceRecordError(0);
          sub_22EDD45F0();
          swift_allocError();
          v18 = v17;
          v19 = sub_22EE3C1D4();
          *v18 = v2;
          v18[1] = v1;
          v18[2] = v19;
          goto LABEL_22;
        }

        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        *v12 = 0xD000000000000015;
        v12[1] = 0x800000022EE491E0;
        v15 = 1;
        goto LABEL_17;
      }

      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v13 = 0x69745F667265706BLL;
      v14 = 0xEC0000007372656DLL;
    }

    *v12 = v13;
    v12[1] = v14;
    v15 = 31;
LABEL_17:
    v12[2] = v15;
    goto LABEL_22;
  }

  type metadata accessor for KTraceRecordError(0);
  sub_22EDD45F0();
  swift_allocError();
  *v11 = 1701667182;
  v11[1] = 0xE400000000000000;
  v11[2] = v2;
  v11[3] = v1;
  swift_storeEnumTagMultiPayload();

  return swift_willThrow();
}

void *sub_22EDFC60C@<X0>(void *a2@<X8>)
{
  v4 = sub_22EE3B954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 312;
  result = sub_22EE3BCD4();
  if (!v2)
  {
    v10 = result;
    v11 = v9;
    v17 = a2;
    sub_22EE3B994();
    swift_allocObject();
    sub_22EE3B984();
    sub_22EE3B944();
    (*(v5 + 104))(v7, *MEMORY[0x277CC86A8], v4);
    sub_22EE3B964();
    sub_22EE0C840();
    sub_22EE3B974();
    memcpy(v15, v16, 0x141uLL);
    memcpy(v14, v16, sizeof(v14));
    sub_22ED80E90(v15, v13);
    sub_22EDFC284();
    memcpy(v13, v14, 0x141uLL);
    sub_22ED80F70(v13);
    sub_22EDFC8B0();

    sub_22EDD4074(v10, v11);
    return memcpy(v17, v16, 0x141uLL);
  }

  return result;
}

void sub_22EDFC8B0()
{
  v2 = v0;
  sub_22EDF99D0(*v0, v0[1]);
  if (!v1)
  {
    v35 = 0;
    v3 = v0[37];
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(v0[37] + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v32 = v0[37];

    v11 = 0;
    while (v9)
    {
LABEL_12:
      v13 = (*(v32 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = *v13;
      v14 = v13[1];

      v16 = v2;
      v17 = sub_22EE065B4(v33, v15, v14);
      v19 = v18;
      memmove(__dst, v18, 0xC8uLL);
      if (sub_22EE0C894(__dst) == 1)
      {
        goto LABEL_25;
      }

      v20 = v19[7];
      if (v20)
      {
        v31 = v17;
        v21 = v19[6];

        v22 = v20;
        v23 = v35;
        v24 = sub_22EDD1088(v21, v22);
        v35 = v23;
        if (v23)
        {
          goto LABEL_23;
        }

        sub_22EDD1254(v24, 1);

        v25 = v19[9];
        if (v25)
        {
          v26 = v19[8];

          v27 = v25;
          v28 = v35;
          v29 = sub_22EDD1088(v26, v27);
          v35 = v28;
          if (v28)
          {
            goto LABEL_23;
          }

          sub_22EDD1254(v29, 0);
        }

        v17 = v31;
      }

      else if (v19[9])
      {
        v31 = v17;
        type metadata accessor for KTraceRecordError(0);
        sub_22EDD45F0();
        swift_allocError();
        *v30 = v15;
        v30[1] = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_23:
        (v31)(v33, 0);

        return;
      }

      v9 &= v9 - 1;
      (v17)(v33, 0);

      v2 = v16;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v5 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_22EDFCB40(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  result = sub_22EE0C8AC(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_22EDFCB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22EE06F74(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_22EDE1B04(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_22EE058D0();
        v14 = v16;
      }

      result = sub_22EE06DC4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void *sub_22EDFCC60(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = v4[37];
  v9 = sub_22EDF68D0(v8);
  v10 = v5;
  v233 = sub_22EE0B1C8(v9);

  v11 = sub_22EE0D244(v8, a1, a2);
  v252 = a1;

  v235 = a2;

  v12 = v11 + 8;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11[8];
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v232 = v4;
  v241 = v11 + 8;
  v230 = v11;
  if (!v15)
  {
    while (1)
    {
LABEL_5:
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = v12[v19];
      ++v18;
      if (v15)
      {
        v245 = v10;
        v18 = v19;
        goto LABEL_9;
      }
    }

    v44 = v4[33];
    v229 = v44;
    if (v44)
    {
      v45 = *(v44 + 16);
      v46 = MEMORY[0x277D84F90];
      v47 = v235;
      if (v45)
      {
        v48 = v10;
        *&v249[0] = MEMORY[0x277D84F90];
        sub_22EDD2DD4(0, v45, 0);
        v46 = *&v249[0];
        v49 = (v44 + 40);
        do
        {
          v51 = *(v49 - 1);
          v50 = *v49;
          *&v249[0] = v46;
          v53 = *(v46 + 16);
          v52 = *(v46 + 24);

          if (v53 >= v52 >> 1)
          {
            sub_22EDD2DD4((v52 > 1), v53 + 1, 1);
            v46 = *&v249[0];
          }

          *(v46 + 16) = v53 + 1;
          v54 = v46 + 16 * v53;
          *(v54 + 32) = v51;
          *(v54 + 40) = v50;
          v49 += 4;
          --v45;
        }

        while (v45);
        v10 = v48;
      }
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
      v47 = v235;
    }

    v55 = sub_22EE0B1C8(v46);

    v56 = v233;

    v58 = sub_22EDFDF84(v57, v233);
    v59 = v252;
    if (*(v58 + 16) <= *(v47 + 16) >> 3)
    {
      *&v249[0] = v47;

      sub_22EE070F0(v58);

      v22 = *&v249[0];
      if (!*(*&v249[0] + 16))
      {
        goto LABEL_30;
      }

LABEL_26:

      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v61 = v60;
      *&v249[0] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95510, &qword_22EE41F68);
      sub_22EE0D944(&qword_27DA95518, &qword_27DA95510, &qword_22EE41F68, MEMORY[0x277D83B68]);
      sub_22ED80FA0();
      v62 = sub_22EE3C364();
      v64 = v63;

      *v61 = v62;
      v61[1] = v64;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      v22 = sub_22EE0721C(v58, v47);

      if (v22[2])
      {
        goto LABEL_26;
      }

LABEL_30:

      v66 = v229;
      if (v229)
      {
        v223 = v55;
        v242 = *(v229 + 16);
        v246 = v10;
        if (v242)
        {
          v67 = 0;
          v68 = v59 + 56;
          v69 = v47 + 56;
          v226 = MEMORY[0x277D84F90];
LABEL_33:
          v70 = v67;
          while (v70 < *(v66 + 16))
          {
            v67 = v70 + 1;
            if (*(v59 + 16))
            {
              v71 = v229 + 32 + 32 * v70;
              v73 = *v71;
              v72 = *(v71 + 8);
              v74 = *(v71 + 16);
              v238 = *(v71 + 24);
              sub_22EE3CC74();
              swift_bridgeObjectRetain_n();

              sub_22EE3C1C4();
              v75 = sub_22EE3CCC4();
              v76 = -1 << *(v59 + 32);
              v77 = v75 & ~v76;
              if ((*(v68 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
              {
                v78 = ~v76;
                while (1)
                {
                  v79 = (*(v252 + 48) + 16 * v77);
                  v80 = *v79 == v73 && v79[1] == v72;
                  if (v80 || (sub_22EE3CBA4() & 1) != 0)
                  {
                    break;
                  }

                  v77 = (v77 + 1) & v78;
                  if (((*(v68 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
                  {
                    goto LABEL_57;
                  }
                }

                if (*(v47 + 16))
                {
                  sub_22EE3CC74();
                  sub_22EE3C1C4();
                  v81 = sub_22EE3CCC4();
                  v82 = -1 << *(v47 + 32);
                  v83 = v81 & ~v82;
                  if ((*(v69 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
                  {
                    v84 = ~v82;
                    while (1)
                    {
                      v85 = (*(v47 + 48) + 16 * v83);
                      v86 = *v85 == v73 && v85[1] == v72;
                      if (v86 || (sub_22EE3CBA4() & 1) != 0)
                      {
                        break;
                      }

                      v83 = (v83 + 1) & v84;
                      if (((*(v69 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

LABEL_57:
                    v59 = v252;
                    goto LABEL_34;
                  }
                }

LABEL_58:

                v87 = v226;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v248[0] = v226;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_22EE02370(0, *(v226 + 16) + 1, 1);
                  v87 = v248[0];
                }

                v90 = *(v87 + 16);
                v89 = *(v87 + 24);
                if (v90 >= v89 >> 1)
                {
                  sub_22EE02370((v89 > 1), v90 + 1, 1);
                  v87 = v248[0];
                }

                *(v87 + 16) = v90 + 1;
                v226 = v87;
                v91 = v87 + 32 * v90;
                *(v91 + 32) = v73;
                *(v91 + 40) = v72;
                *(v91 + 48) = v74;
                *(v91 + 56) = v238;
                v47 = v235;
                v66 = v229;
                v59 = v252;
                if (v67 != v242)
                {
                  goto LABEL_33;
                }

                goto LABEL_67;
              }

LABEL_34:

              v66 = v229;
            }

            v70 = v67;
            if (v67 == v242)
            {
              goto LABEL_67;
            }
          }

LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        v226 = MEMORY[0x277D84F90];
LABEL_67:
        v10 = v246;
        v56 = v233;
        v55 = v223;
      }

      else
      {
        v226 = MEMORY[0x277D84F90];
      }

      v92 = sub_22EDFDF84(v56, v55);
      if (*(v92 + 16) <= *(v59 + 16) >> 3)
      {
        *&v249[0] = v59;

        sub_22EE070F0(v92);

        v93 = *&v249[0];
      }

      else
      {

        v93 = sub_22EE0721C(v92, v59);
      }

      v94 = v10;
      sub_22EDF7464(v93);
      v96 = v95;

      if (v229)
      {
        v97 = v229;
      }

      else
      {
        v97 = MEMORY[0x277D84F90];
      }

      *&v249[0] = v226;

      sub_22EDFB004(v96);
      v98 = *&v249[0];
      v212 = *(*&v249[0] + 16);
      if (v212)
      {
        v99 = 0;
        v213 = *&v249[0] + 32;
        v22 = v232;
        v211 = *&v249[0];
        while (1)
        {
          if (v99 >= *(v98 + 16))
          {
            goto LABEL_196;
          }

          v101 = (v213 + 32 * v99);
          v102 = *v101;
          v103 = v101[1];
          v104 = v101[2];

          v252 = v102;
          v105 = sub_22EE0C8AC(v102, v103, a3 & 1, a4);
          v236 = v108;
          if (v94)
          {
            break;
          }

          if (!v106)
          {

            v22 = type metadata accessor for KTraceRecordError(0);
            sub_22EDD45F0();
            swift_allocError();
            *v207 = v252;
            v207[1] = v103;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            goto LABEL_181;
          }

          v215 = v105;
          v216 = v106;
          v218 = v107;
          v109 = v22[39];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_22EDDA224(0, *(v109 + 2) + 1, 1, v109);
          }

          v111 = *(v109 + 2);
          v110 = *(v109 + 3);
          v112 = v252;
          v227 = v97;
          if (v111 >= v110 >> 1)
          {
            v153 = sub_22EDDA224((v110 > 1), v111 + 1, 1, v109);
            v112 = v252;
            v109 = v153;
          }

          v222 = v103;
          v224 = v99 + 1;
          *(v109 + 2) = v111 + 1;
          v113 = &v109[16 * v111];
          *(v113 + 4) = v112;
          *(v113 + 5) = v103;
          v232[39] = v109;

          v114 = swift_isUniquelyReferenced_nonNull_native();
          *&v249[0] = v104;
          v115 = v236 + 64;
          v116 = -1 << *(v236 + 32);
          if (-v116 < 64)
          {
            v117 = ~(-1 << -v116);
          }

          else
          {
            v117 = -1;
          }

          v118 = v117 & *(v236 + 64);
          v119 = (63 - v116) >> 6;

          v120 = 0;
          v121 = v104;
          while (v118)
          {
            v243 = v114;
            v123 = v120;
LABEL_98:
            v125 = (v123 << 10) | (16 * __clz(__rbit64(v118)));
            v126 = (*(v236 + 48) + v125);
            v127 = *v126;
            v128 = v126[1];
            v129 = (*(v236 + 56) + v125);
            v130 = v129[1];
            v239 = *v129;

            v132 = sub_22EDE1B04(v127, v128);
            v133 = v121[2];
            v134 = (v131 & 1) == 0;
            v135 = v133 + v134;
            if (__OFADD__(v133, v134))
            {
              goto LABEL_190;
            }

            v136 = v131;
            if (v121[3] >= v135)
            {
              if ((v243 & 1) == 0)
              {
                sub_22EE05548();
              }
            }

            else
            {
              sub_22EE04B40(v135, v243 & 1);
              v137 = sub_22EDE1B04(v127, v128);
              if ((v136 & 1) != (v138 & 1))
              {
                goto LABEL_204;
              }

              v132 = v137;
            }

            v118 &= v118 - 1;
            v121 = *&v249[0];
            if (v136)
            {

              v122 = (v121[7] + 16 * v132);
              *v122 = v239;
              v122[1] = v130;
            }

            else
            {
              *(*&v249[0] + 8 * (v132 >> 6) + 64) |= 1 << v132;
              v139 = (v121[6] + 16 * v132);
              *v139 = v127;
              v139[1] = v128;
              v140 = (v121[7] + 16 * v132);
              *v140 = v239;
              v140[1] = v130;
              v141 = v121[2];
              v142 = __OFADD__(v141, 1);
              v143 = v141 + 1;
              if (v142)
              {
                goto LABEL_192;
              }

              v121[2] = v143;
            }

            v114 = 1;
            v120 = v123;
            v115 = v236 + 64;
            v47 = v235;
          }

          v124 = v120;
          while (1)
          {
            v123 = v124 + 1;
            if (__OFADD__(v124, 1))
            {
              __break(1u);
LABEL_183:

              v22 = MEMORY[0x277D84F90];
LABEL_184:
              v208 = *(v230 + 16);
              if (v208)
              {
                v209 = sub_22EDF3184(*(v230 + 16), 0);
                v210 = sub_22EE09F14(v249, v209 + 4, v208, v230);
                sub_22ED97F20(*&v249[0]);
                if (v210 == v208)
                {
                  return v22;
                }

                __break(1u);
              }

              return v22;
            }

            if (v123 >= v119)
            {
              break;
            }

            v118 = *(v115 + 8 * v123);
            ++v124;
            if (v118)
            {
              v243 = v114;
              goto LABEL_98;
            }
          }

          sub_22ED97F20(v236);

          v99 = v224;
          v97 = v227;
          v144 = *(v227 + 16);
          v145 = v252;
          if (v144)
          {
            v146 = 0;
            v147 = 56;
            while (*(v227 + v147 - 24) != v145 || *(v227 + v147 - 16) != v222)
            {
              v149 = sub_22EE3CBA4();
              v145 = v252;
              if (v149)
              {
                break;
              }

              ++v146;
              v147 += 32;
              if (v144 == v146)
              {
                goto LABEL_115;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_22EE05A68(v227);
            }

            if (v146 >= *(v97 + 2))
            {
              goto LABEL_197;
            }

            v152 = &v97[v147];
            *(v152 - 3) = v215;
            *(v152 - 2) = v216;
            *(v152 - 1) = v121;
            *v152 = v218 & 1;
          }

          else
          {
LABEL_115:

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_22EE05D08(0, *(v227 + 16) + 1, 1, v227);
            }

            v151 = *(v97 + 2);
            v150 = *(v97 + 3);
            if (v151 >= v150 >> 1)
            {
              v97 = sub_22EE05D08((v150 > 1), v151 + 1, 1, v97);
            }

            *(v97 + 2) = v151 + 1;
            v100 = &v97[32 * v151];
            *(v100 + 4) = v215;
            *(v100 + 5) = v216;
            *(v100 + 6) = v121;
            v100[56] = v218 & 1;
          }

          v98 = v211;
          v94 = 0;
          v22 = v232;
          if (v224 == v212)
          {
            goto LABEL_123;
          }
        }

LABEL_181:

        return v22;
      }

LABEL_123:

      v154 = sub_22EDFA104(*a4);
      if (!v155)
      {
        v166 = v47 + 56;
        v167 = 1 << *(v47 + 32);
        v168 = -1;
        if (v167 < 64)
        {
          v168 = ~(-1 << v167);
        }

        v169 = v168 & *(v47 + 56);
        v170 = (v167 + 63) >> 6;

        v171 = 0;
        v172 = v94;
        v217 = v170;
        v219 = v166;
        while (v169)
        {
LABEL_142:
          v175 = (*(v235 + 48) + ((v171 << 10) | (16 * __clz(__rbit64(v169)))));
          v176 = v175[1];
          v240 = *v175;
          v177 = sub_22EE0B7D8(v97, *v175, v176);
          v244 = v176;
          if (v178)
          {
            v179 = *(v97 + 2);

            v180 = v179;
          }

          else
          {
            v181 = v177 + 1;
            if (__OFADD__(v177, 1))
            {
              goto LABEL_203;
            }

            v182 = v177;
            v247 = v172;
            v183 = *(v97 + 2);
            v184 = v244;
            if (v181 != v183)
            {

              v180 = v182;
              v188 = 32 * v182 + 88;
              v179 = v181;
              v189 = v240;
              v237 = v181;
              while ((v181 & 0x8000000000000000) == 0)
              {
                if (v179 >= v183)
                {
                  goto LABEL_194;
                }

                v190 = v97;
                v191 = *&v97[v188 - 24];
                v192 = *&v97[v188 - 16];
                if (v191 == v189 && v192 == v184)
                {
                  v97 = v190;
                }

                else
                {
                  v252 = v180;
                  if (sub_22EE3CBA4())
                  {
                    v97 = v190;
                    v189 = v240;
                    v184 = v244;
                    v180 = v252;
                  }

                  else
                  {
                    v194 = v252;
                    if (v179 == v252)
                    {
                      v97 = v190;
                      v184 = v244;
                    }

                    else
                    {
                      if (v252 >= v183)
                      {
                        goto LABEL_201;
                      }

                      v234 = 32 * v252;
                      v195 = &v190[32 * v252 + 32];
                      v221 = *v195;
                      v196 = *(v195 + 16);
                      v220 = *(v195 + 24);
                      v197 = *&v190[v188 - 8];
                      v228 = v190[v188];
                      v225 = *(v195 + 8);

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v190 = sub_22EE05A68(v190);
                      }

                      v198 = &v190[v234];
                      *(v198 + 4) = v191;
                      *(v198 + 5) = v192;
                      v97 = v190;
                      *(v198 + 6) = v197;
                      v198[56] = v228;

                      if (v179 >= *(v190 + 2))
                      {
                        goto LABEL_202;
                      }

                      v199 = &v190[v188];
                      *(v199 - 3) = v221;
                      *(v199 - 2) = v225;
                      *(v199 - 1) = v196;
                      *v199 = v220;

                      v184 = v244;
                      v194 = v252;
                    }

                    v189 = v240;
                    v180 = v194 + 1;
                  }

                  v181 = v237;
                }

                ++v179;
                v183 = *(v97 + 2);
                v188 += 32;
                if (v179 == v183)
                {
                  goto LABEL_147;
                }
              }

              goto LABEL_193;
            }

            v179 = v181;
            v180 = v182;
LABEL_147:
            v172 = v247;
            if (v179 < v180)
            {
              goto LABEL_198;
            }

            v170 = v217;
            v166 = v219;
            if (v180 < 0)
            {
              goto LABEL_199;
            }
          }

          v185 = v180;
          if (__OFADD__(v179, v180 - v179))
          {
            goto LABEL_200;
          }

          v186 = v180;
          v187 = swift_isUniquelyReferenced_nonNull_native();
          v248[0] = v97;
          if (!v187 || v185 > *(v97 + 3) >> 1)
          {
            if (v179 <= v185)
            {
              v173 = v185;
            }

            else
            {
              v173 = v179;
            }

            v97 = sub_22EE05D08(v187, v173, 1, v97);
            v248[0] = v97;
          }

          v169 &= v169 - 1;
          sub_22EE0D490(v186, v179, 0);
        }

        while (1)
        {
          v174 = v171 + 1;
          if (__OFADD__(v171, 1))
          {
            break;
          }

          if (v174 >= v170)
          {

            v232[33] = v97;
            v200 = *(v97 + 2);
            if (!v200)
            {
              goto LABEL_183;
            }

            *&v249[0] = MEMORY[0x277D84F90];
            sub_22EDD2DD4(0, v200, 0);
            v22 = *&v249[0];
            v201 = (v97 + 40);
            do
            {
              v203 = *(v201 - 1);
              v202 = *v201;
              *&v249[0] = v22;
              v205 = v22[2];
              v204 = v22[3];

              if (v205 >= v204 >> 1)
              {
                sub_22EDD2DD4((v204 > 1), v205 + 1, 1);
                v22 = *&v249[0];
              }

              v22[2] = v205 + 1;
              v206 = &v22[2 * v205];
              v206[4] = v203;
              v206[5] = v202;
              v201 += 4;
              --v200;
            }

            while (v200);

            goto LABEL_184;
          }

          v169 = *(v166 + 8 * v174);
          ++v171;
          if (v169)
          {
            v171 = v174;
            goto LABEL_142;
          }
        }

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
        result = sub_22EE3CBE4();
        __break(1u);
        return result;
      }

      v22 = v154;
      v157 = v155;
      v158 = v156;

      type metadata accessor for KTraceRecordError(0);
      sub_22EDD45F0();
      swift_allocError();
      v160 = v159;
      v161 = sub_22EDFA184(v158);
      v163 = v162;

      v164 = 4144959;
      if (v163)
      {
        v164 = v161;
      }

      v165 = 0xE300000000000000;
      *v160 = v22;
      v160[1] = v157;
      if (v163)
      {
        v165 = v163;
      }

      v160[2] = v164;
      v160[3] = v165;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    return v22;
  }

  while (1)
  {
    v245 = v10;
LABEL_9:
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = (*(v17 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v17 + 56) + 200 * v20;
    v249[0] = *v24;
    v25 = *(v24 + 64);
    v27 = *(v24 + 16);
    v26 = *(v24 + 32);
    v249[3] = *(v24 + 48);
    v249[4] = v25;
    v249[1] = v27;
    v249[2] = v26;
    v28 = *(v24 + 128);
    v30 = *(v24 + 80);
    v29 = *(v24 + 96);
    v249[7] = *(v24 + 112);
    v249[8] = v28;
    v249[5] = v30;
    v249[6] = v29;
    v32 = *(v24 + 160);
    v31 = *(v24 + 176);
    v33 = *(v24 + 144);
    v250 = *(v24 + 192);
    v249[10] = v32;
    v249[11] = v31;
    v249[9] = v33;
    v34 = *(v24 + 136);
    v35 = *(v24 + 168);
    v251[8] = *(v24 + 152);
    v251[9] = v35;
    v251[10] = *(v24 + 184);
    v36 = *(v24 + 72);
    v37 = *(v24 + 104);
    v251[4] = *(v24 + 88);
    v251[5] = v37;
    v251[6] = *(v24 + 120);
    v251[7] = v34;
    v38 = *(v24 + 40);
    v251[0] = *(v24 + 24);
    v251[1] = v38;
    v251[2] = *(v24 + 56);
    v251[3] = v36;

    sub_22EE0C808(v249, v248);
    v39 = v23;
    sub_22EDFA200(v251, v23, v22, a3 & 1);
    if (v245)
    {
      break;
    }

    v40 = v4[39];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_22EDDA224(0, *(v40 + 2) + 1, 1, v40);
    }

    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_22EDDA224((v41 > 1), v42 + 1, 1, v40);
    }

    v15 &= v15 - 1;
    sub_22EE0D460(v249);
    *(v40 + 2) = v42 + 1;
    v43 = &v40[16 * v42];
    *(v43 + 4) = v39;
    *(v43 + 5) = v22;
    v232[39] = v40;
    v4 = v232;
    v12 = v241;
    v10 = 0;
    v17 = v230;
    if (!v15)
    {
      goto LABEL_5;
    }
  }

  sub_22EE0D460(v249);
  return v22;
}

uint64_t sub_22EDFDF84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22EE026C4(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDFE0AC(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 296);
  v41 = *(v2 + 288);

  sub_22EE088F8(&v41, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);
  v4 = v41;
  v5 = sub_22EDF6C78(v3);
  v6 = sub_22EE0B1C8(v5);

  v7 = sub_22EE0778C(v4, v6);
  v8 = v7;
  v9 = v7[2];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_22EDF3184(v7[2], 0);
  v11 = sub_22EDF3E34(&v41, v10 + 4, v9, v8);
  sub_22ED97F20(v41);
  if (v11 != v9)
  {
    __break(1u);
LABEL_4:

    v10 = MEMORY[0x277D84F90];
  }

  v41 = v10;

  sub_22EE088F8(&v41, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

  v12 = 0;
  v13 = &v38;
  v37 = MEMORY[0x277D84F90];
  v38 = v4;
  strcpy(v39, "Extra layers: ");
  v39[15] = -18;
  v40 = v41;
LABEL_6:
  v14 = &v13[3 * v12];
  while (++v12 != 3)
  {
    v15 = v14 + 3;
    v16 = *v14;
    v17 = *(*v14 + 16);
    v14 += 3;
    if (v17)
    {
      v34 = v13;
      v18 = *(v15 - 5);
      v19 = *(v15 - 4);

      v33 = v18;
      v20 = sub_22EE3C1D4();
      sub_22EE0D550(v16, v20);
      v41 = 2604;
      v42 = 0xE200000000000000;
      MEMORY[0x2318F58F0](a1, a2);
      sub_22EE3C1D4();
      v21 = sub_22EE3C2D4();
      MEMORY[0x2318F58F0](v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
      v22 = sub_22EE3C0B4();
      v24 = v23;

      v41 = a1;
      v42 = a2;

      MEMORY[0x2318F58F0](v33, v19);
      MEMORY[0x2318F58F0](v22, v24);

      v25 = v41;
      v26 = v42;
      v27 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_22EDDA224(0, *(v37 + 16) + 1, 1, v37);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_22EDDA224((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v37 = v27;
      v30 = &v27[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v26;
      v13 = v34;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95520, &qword_22EE41F70);
  swift_arrayDestroy();
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
  v31 = sub_22EE3C0B4();

  return v31;
}

uint64_t sub_22EDFE564()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v69 = *(v0 + 96);
  v70 = *(v0 + 264);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = v6 == 1 || v6 == 4;
  v68 = *(v0 + 104);
  if (v7)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = *(v0 + 8);
    v82 = 10272;
    v83 = 0xE200000000000000;
    v11 = 0xED00006369666963;
    v12 = 0x6570732D6C6F6F74;
    if (v6 != 2)
    {
      v12 = 0x656D697265707865;
      v11 = 0xEC0000006C61746ELL;
    }

    if (v6)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x6E6920656C707041;
    }

    if (v6)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xEE006C616E726574;
    }

    MEMORY[0x2318F58F0](v13, v14);

    MEMORY[0x2318F58F0](41, 0xE100000000000000);
    v8 = v82;
    v9 = v83;
    v1 = v10;
  }

  v83 = v1;

  MEMORY[0x2318F58F0](30240, 0xE200000000000000);
  v15 = sub_22EE3CB84();
  MEMORY[0x2318F58F0](v15);

  MEMORY[0x2318F58F0](v8, v9);

  MEMORY[0x2318F58F0](539831584, 0xE400000000000000);
  MEMORY[0x2318F58F0](v3, v4);
  v66 = v83;
  v67 = v2;
  v82 = sub_22EDF7058(v5);

  sub_22EE088F8(&v82, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

  v16 = v70;
  if (*(v5 + 16))
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_22EE3C864();

    v82 = 0xD000000000000017;
    v83 = 0x800000022EE49220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
    v17 = sub_22EE3C0B4();
    v19 = v18;

    MEMORY[0x2318F58F0](v17, v19);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v64 = v82;
    v65 = v83;
    if (v70)
    {
      goto LABEL_18;
    }

LABEL_46:
    v58 = 0;
    v59 = 0xE000000000000000;
LABEL_49:
    v82 = v67;
    v83 = v66;
    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    MEMORY[0x2318F58F0](v64, v65);

    MEMORY[0x2318F58F0](v58, v59);

    MEMORY[0x2318F58F0](0x202020200ALL, 0xE500000000000000);
    MEMORY[0x2318F58F0](v69, v68);
    return v82;
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  if (!v70)
  {
    goto LABEL_46;
  }

LABEL_18:
  v20 = *(v70 + 16);
  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_48:
    v82 = v23;

    sub_22EE088F8(&v82, sub_22EDF3E20, MEMORY[0x277D837D0], sub_22EE08B9C, sub_22EDF3300);

    v82 = 0;
    v83 = 0xE000000000000000;
    sub_22EE3C864();

    v82 = 0xD00000000000001ALL;
    v83 = 0x800000022EE49240;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60, MEMORY[0x277D83958]);
    v60 = sub_22EE3C0B4();
    v62 = v61;

    MEMORY[0x2318F58F0](v60, v62);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v58 = v82;
    v59 = v83;
    goto LABEL_49;
  }

  v81 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v20, 0);
  v22 = 0;
  v23 = v81;
  v71 = v20;
  while (v22 < *(v16 + 16))
  {
    v72 = v22;
    v73 = v23;
    v24 = (v70 + 32 + 32 * v22);
    v25 = v24[1];
    v26 = v24[2];
    v82 = *v24;
    v83 = v25;
    swift_bridgeObjectRetain_n();

    MEMORY[0x2318F58F0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_22EDD2DD4(0, v27, 0);
      v78 = v21;
      v28 = v26 + 64;
      v29 = sub_22EE3C7C4();
      v30 = 0;
      v74 = v26 + 72;
      v75 = v27;
      v76 = v26 + 64;
      while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(v26 + 32))
      {
        v32 = v29 >> 6;
        if ((*(v28 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
        {
          goto LABEL_51;
        }

        v77 = *(v26 + 36);
        v33 = (*(v26 + 48) + 16 * v29);
        v34 = (*(v26 + 56) + 16 * v29);
        v35 = v26;
        v37 = *v34;
        v36 = v34[1];
        v79 = *v33;
        v80 = v33[1];
        swift_bridgeObjectRetain_n();

        MEMORY[0x2318F58F0](61, 0xE100000000000000);
        MEMORY[0x2318F58F0](v37, v36);

        v38 = v78;
        v40 = *(v78 + 16);
        v39 = *(v78 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_22EDD2DD4((v39 > 1), v40 + 1, 1);
          v38 = v78;
        }

        *(v38 + 16) = v40 + 1;
        v41 = v38 + 16 * v40;
        *(v41 + 32) = v79;
        *(v41 + 40) = v80;
        v31 = 1 << *(v35 + 32);
        if (v29 >= v31)
        {
          goto LABEL_52;
        }

        v26 = v35;
        v28 = v76;
        v42 = *(v76 + 8 * v32);
        if ((v42 & (1 << v29)) == 0)
        {
          goto LABEL_53;
        }

        if (v77 != *(v26 + 36))
        {
          goto LABEL_54;
        }

        v78 = v38;
        v43 = v42 & (-2 << (v29 & 0x3F));
        if (v43)
        {
          v31 = __clz(__rbit64(v43)) | v29 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = v32 << 6;
          v45 = v32 + 1;
          v46 = (v74 + 8 * v32);
          while (v45 < (v31 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              sub_22ED972FC(v29, v77, 0);
              v31 = __clz(__rbit64(v47)) + v44;
              goto LABEL_24;
            }
          }

          sub_22ED972FC(v29, v77, 0);
        }

LABEL_24:
        ++v30;
        v29 = v31;
        if (v30 == v75)
        {
          v16 = v70;
          v49 = v78;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      break;
    }

    v49 = v21;
LABEL_41:
    v50 = MEMORY[0x2318F5AD0](v49, MEMORY[0x277D837D0]);
    v52 = v51;

    MEMORY[0x2318F58F0](v50, v52);

    v53 = v82;
    v54 = v83;
    v23 = v73;
    v56 = *(v73 + 16);
    v55 = *(v73 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_22EDD2DD4((v55 > 1), v56 + 1, 1);
      v23 = v73;
    }

    v22 = v72 + 1;
    *(v23 + 16) = v56 + 1;
    v57 = v23 + 16 * v56;
    *(v57 + 32) = v53;
    *(v57 + 40) = v54;
    v21 = MEMORY[0x277D84F90];
    if (v72 + 1 == v71)
    {
      goto LABEL_48;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

CFIndex sub_22EDFEDEC(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_22EE3B9A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v34, v1, sizeof(v34));
  sub_22EE3B9E4();
  swift_allocObject();
  sub_22EE3B9D4();
  (*(v5 + 104))(v7, *MEMORY[0x277CC8748], v4);
  sub_22EE3B9B4();
  memcpy(v33, v34, 0x141uLL);
  sub_22EE0D98C();
  v8 = sub_22EE3B9C4();
  if (v2)
  {

    return v10;
  }

  v11 = v9;
  v12 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v12)
    {
      v33[0] = v8;
      LOWORD(v33[1]) = v9;
      BYTE2(v33[1]) = BYTE2(v9);
      BYTE3(v33[1]) = BYTE3(v9);
      BYTE4(v33[1]) = BYTE4(v9);
      v13 = BYTE6(v9);
      BYTE5(v33[1]) = BYTE5(v9);
      v14 = v8;
      v15 = a1;
LABEL_24:
      appended = ktrace_file_append_chunk(v15, 32789, 0, 0, v33, v13);
      v30 = v14;
      goto LABEL_25;
    }

    v24 = v8;
    v32 = v8;
    v25 = (v8 >> 32) - v8;
    if (v8 >> 32 >= v8)
    {
      v26 = sub_22EE3BAA4();
      if (!v26)
      {
        result = sub_22EE3BAC4();
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v27 = v26;
      v28 = sub_22EE3BAD4();
      if (!__OFSUB__(v24, v28))
      {
        v18 = (v24 - v28 + v27);
        result = sub_22EE3BAC4();
        if (v18)
        {
          if (result >= v25)
          {
            v23 = v25;
          }

          else
          {
            v23 = result;
          }

LABEL_22:
          appended = ktrace_file_append_chunk(a1, 32789, 0, 0, v18, v23);
          v30 = v32;
LABEL_25:
          sub_22EDD4074(v30, v11);

          return appended != 0;
        }

        goto LABEL_32;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  if (v12 != 2)
  {
    *(v33 + 6) = 0;
    v33[0] = 0;
    v14 = v8;
    v15 = a1;
    v13 = 0;
    goto LABEL_24;
  }

  v17 = *(v8 + 16);
  v16 = *(v8 + 24);
  v32 = v8;
  v18 = sub_22EE3BAA4();
  if (v18)
  {
    v19 = sub_22EE3BAD4();
    if (__OFSUB__(v17, v19))
    {
      goto LABEL_30;
    }

    v18 += v17 - v19;
  }

  v20 = __OFSUB__(v16, v17);
  v21 = v16 - v17;
  if (v20)
  {
    goto LABEL_28;
  }

  result = sub_22EE3BAC4();
  if (v18)
  {
    if (result >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = result;
    }

    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_22EDFF150(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95530, &qword_22EE41F78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = *v1;
  v43 = *(v1 + 8);
  v44 = v7;
  v8 = *(v1 + 16);
  v41 = *(v1 + 24);
  v42 = v8;
  v9 = *(v1 + 32);
  v39 = *(v1 + 40);
  v40 = v9;
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 72);
  v37 = *(v1 + 64);
  v38 = v10;
  v35 = v12;
  v36 = v11;
  v13 = *(v1 + 88);
  v33 = *(v1 + 80);
  v34 = v13;
  v14 = *(v1 + 104);
  v31 = *(v1 + 96);
  v32 = v14;
  v15 = *(v1 + 128);
  v60 = *(v1 + 112);
  v61 = v15;
  v16 = *(v1 + 144);
  v17 = *(v1 + 160);
  v18 = *(v1 + 192);
  v64 = *(v1 + 176);
  v65 = v18;
  v62 = v16;
  v63 = v17;
  v19 = *(v1 + 208);
  v20 = *(v1 + 224);
  v21 = *(v1 + 272);
  v69 = *(v1 + 256);
  v70 = v21;
  v22 = *(v1 + 240);
  v67 = v20;
  v68 = v22;
  v66 = v19;
  v23 = *(v1 + 296);
  v30 = *(v1 + 288);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0D9E0();
  v24 = v6;
  sub_22EE3CCE4();
  LOBYTE(v49) = 0;
  v25 = v71;
  sub_22EE3CB04();
  if (v25)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v71 = v23;
  LOBYTE(v49) = 1;
  sub_22EE3CB34();
  LOBYTE(v49) = 2;
  sub_22EE3CA94();
  LOBYTE(v49) = 3;
  sub_22EE3CA94();
  LOBYTE(v49) = 4;
  sub_22EE3CA94();
  *&v49 = v35;
  LOBYTE(v47[0]) = 5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  v27 = sub_22EE0DA88(&qword_27DA954F8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22EE3CAD4();
  v43 = v27;
  v44 = v26;
  LOBYTE(v49) = 6;
  sub_22EE3CB04();
  LOBYTE(v49) = 7;
  sub_22EE3CB04();
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v56 = v67;
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v52 = v63;
  v48 = 8;
  sub_22EE0C1BC(&v60, v47);
  sub_22EE0C248();
  sub_22EE3CB44();
  v47[8] = v57;
  v47[9] = v58;
  v47[10] = v59;
  v47[4] = v53;
  v47[5] = v54;
  v47[6] = v55;
  v47[7] = v56;
  v47[0] = v49;
  v47[1] = v50;
  v47[2] = v51;
  v47[3] = v52;
  sub_22EE0C29C(v47);
  v46 = v30;
  v45 = 9;
  sub_22EE3CB44();
  v46 = v71;
  v45 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95540, &qword_22EE41F80);
  sub_22ED82F80(&qword_27DA95548, sub_22EE0DA34, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_22EE3CB44();
  return (*(v4 + 8))(v24, v3);
}

uint64_t sub_22EDFF638@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95558, &qword_22EE41F88);
  v5 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE0D9E0();
  sub_22EE3CCD4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v37 = a2;
    v38 = v5;
    LOBYTE(v40[0]) = 0;
    v8 = sub_22EE3CA44();
    v10 = v9;
    LOBYTE(v40[0]) = 1;
    v11 = sub_22EE3CA74();
    LOBYTE(v40[0]) = 2;
    v34 = sub_22EE3CA14();
    v36 = v12;
    LOBYTE(v40[0]) = 3;
    v32 = sub_22EE3CA14();
    v33 = v11;
    v35 = v13;
    LOBYTE(v40[0]) = 4;
    v28 = sub_22EE3CA14();
    v30 = v10;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    v39[0] = 5;
    v29 = sub_22EE0DA88(&qword_27DA95560, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22EE3CA34();
    v26 = 0;
    v27 = v40[0];
    LOBYTE(v40[0]) = 6;
    v23 = sub_22EE3CA44();
    v25 = v15;
    LOBYTE(v40[0]) = 7;
    v22 = sub_22EE3CA44();
    v24 = v16;
    v59 = 8;
    sub_22EE0DAF4();
    sub_22EE3CA84();
    v79 = v68;
    v80 = v69;
    v81 = v70;
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v39[0] = 9;
    sub_22EE3CA84();
    v17 = v40[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95540, &qword_22EE41F80);
    v57 = 10;
    sub_22ED82F80(&qword_27DA95570, sub_22EE0DB48, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_22EE3CA84();
    (*(v38 + 8))(v7, v82);
    v82 = v58;
    v18 = v30;
    *v39 = v8;
    *&v39[8] = v30;
    *&v39[16] = v33;
    *&v39[24] = v34;
    v19 = v35;
    v20 = v36;
    *&v39[32] = v36;
    *&v39[40] = v32;
    *&v39[48] = v35;
    *&v39[56] = v28;
    *&v39[64] = v31;
    *&v39[72] = v27;
    *&v39[80] = v23;
    *&v39[88] = v25;
    *&v39[96] = v22;
    *&v39[104] = v24;
    *&v39[112] = v71;
    *&v39[128] = v72;
    *&v39[192] = v76;
    *&v39[176] = v75;
    *&v39[144] = v73;
    *&v39[160] = v74;
    *&v39[272] = v81;
    *&v39[256] = v80;
    *&v39[240] = v79;
    *&v39[208] = v77;
    *&v39[224] = v78;
    *&v39[288] = v17;
    *&v39[296] = v58;
    v39[304] = 4;
    *&v39[312] = MEMORY[0x277D84F90];
    v39[320] = 0;
    memcpy(v37, v39, 0x141uLL);
    sub_22ED80E90(v39, v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v40[0] = v8;
    v40[1] = v18;
    v40[2] = v33;
    v40[3] = v34;
    v40[4] = v20;
    v40[5] = v32;
    v40[6] = v19;
    v40[7] = v28;
    v40[8] = v31;
    v40[9] = v27;
    v40[10] = v23;
    v40[11] = v25;
    v40[12] = v22;
    v40[13] = v24;
    v49 = v79;
    v50 = v80;
    v51 = v81;
    v45 = v75;
    v46 = v76;
    v47 = v77;
    v48 = v78;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v44 = v74;
    v52 = v17;
    v53 = v82;
    v54 = 4;
    v55 = MEMORY[0x277D84F90];
    v56 = 0;
    return sub_22ED80F70(v40);
  }
}

uint64_t sub_22EDFFED0()
{
  sub_22EE3CC74();
  sub_22EE3C1C4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDFFF24(uint64_t a1)
{
  sub_22EE3CC74();
  sub_22EE3C1C4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDFFF6C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EE3CBA4();
  }
}

void *sub_22EDFFF9C(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v52 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v52 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = sub_22EE3BCB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v56 = v6;
  if ((a1 & 1) == 0 || !getenv("TRACE_PLAN_PATH"))
  {
    v27 = MEMORY[0x277D84F90];
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  sub_22EE3C214();
  sub_22EE3BBF4();

  v26 = *(v6 + 48);
  (*(v20 + 32))(v18, v25, v19);
  v18[v26] = 3;
  v27 = sub_22EE06194(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_22EE06194((v28 > 1), v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  sub_22EE0DB9C(v18, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29);
  v6 = v56;
  if (a4)
  {
LABEL_8:
    sub_22EE3BBF4();
    v30 = *(v6 + 48);
    (*(v20 + 32))(v16, v23, v19);
    v16[v30] = 2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_22EE06194(0, v27[2] + 1, 1, v27);
    }

    v32 = v27[2];
    v31 = v27[3];
    if (v32 >= v31 >> 1)
    {
      v27 = sub_22EE06194((v31 > 1), v32 + 1, 1, v27);
    }

    v27[2] = v32 + 1;
    sub_22EE0DB9C(v16, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32);
    v6 = v56;
  }

LABEL_13:
  if (v53)
  {
    v33 = sub_22EE31A3C();
    v34 = *(v6 + 48);
    v35 = *(v20 + 16);
    v36 = v54;
    v35(v54, v33, v19);
    *(v36 + v34) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_22EE06194(0, v27[2] + 1, 1, v27);
    }

    v38 = v27[2];
    v37 = v27[3];
    if (v38 >= v37 >> 1)
    {
      v27 = sub_22EE06194((v37 > 1), v38 + 1, 1, v27);
    }

    v27[2] = v38 + 1;
    v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v40 = *(v7 + 72);
    sub_22EE0DB9C(v54, v27 + v39 + v40 * v38);
    v41 = sub_22EE31D2C();
    v42 = v55;
    v43 = *(v56 + 48);
    v35(v55, v41, v19);
    *(v42 + v43) = 0;
    v45 = v27[2];
    v44 = v27[3];
    if (v45 >= v44 >> 1)
    {
      v27 = sub_22EE06194((v44 > 1), v45 + 1, 1, v27);
    }

    v27[2] = v45 + 1;
    sub_22EE0DB9C(v55, v27 + v39 + v45 * v40);
    v6 = v56;
  }

  v46 = sub_22EE31BB4();
  v47 = *(v6 + 48);
  v48 = v57;
  (*(v20 + 16))(v57, v46, v19);
  *(v48 + v47) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_22EE06194(0, v27[2] + 1, 1, v27);
  }

  v50 = v27[2];
  v49 = v27[3];
  if (v50 >= v49 >> 1)
  {
    v27 = sub_22EE06194((v49 > 1), v50 + 1, 1, v27);
  }

  v27[2] = v50 + 1;
  sub_22EE0DB9C(v57, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v50);
  return v27;
}

void *sub_22EE00518(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a1;
  v13 = sub_22EE3BCB4();
  v45 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v53 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v42[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v52 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = &v42[-v19];
  v43 = a5 & a4;
  result = sub_22EDFFF9C(a5 & a4 & 1, a5, a6, a7);
  v47 = result[2];
  if (v47)
  {
    v21 = 0;
    v22 = (v45 + 8);
    v49 = v17;
    v50 = v13;
    v48 = result;
    v46 = (v45 + 8);
    while (1)
    {
      if (v21 >= result[2])
      {
        __break(1u);
        return result;
      }

      v23 = result + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v24 = *(v52 + 72);
      v54 = v21;
      v25 = &v23[v24 * v21];
      v26 = v51;
      sub_22EDDB6E8(v25, v51, &qword_27DA95580, &unk_22EE41F90);
      v27 = v53;
      sub_22EE3BC44();
      v28 = a2;
      v29 = *v22;
      (*v22)(v26, v13);
      sub_22EE3BC54();
      v55 = v29;
      v29(v27, v13);
      v30 = a3;
      v31 = objc_opt_self();
      v32 = [v31 defaultManager];
      sub_22EE3BC94();
      v33 = sub_22EE3C0F4();

      v34 = [v32 fileExistsAtPath_];

      if (v34)
      {

        (*(v45 + 32))(v44, v49, v50);
LABEL_11:
        v40 = v34 ^ 1;
        return (v40 & 1);
      }

      v35 = [v31 defaultManager];
      v36 = v30;
      v37 = sub_22EE3C0F4();
      v38 = [v35 fileExistsAtPath_];

      if (v38)
      {
        break;
      }

      v21 = v54 + 1;
      v13 = v50;
      v22 = v46;
      v55(v49, v50);
      result = v48;
      a3 = v36;
      a2 = v28;
      if (v47 == v21)
      {
        goto LABEL_7;
      }
    }

    if (v43)
    {
      sub_22EE3BBF4();
      v55(v49, v50);
      goto LABEL_11;
    }

    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    *v41 = v28;
    v41[1] = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v55(v49, v50);
  }

  else
  {
LABEL_7:

    type metadata accessor for KTraceRecordError(0);
    sub_22EDD45F0();
    swift_allocError();
    *v39 = a2;
    v39[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return (v40 & 1);
}

char *sub_22EE0099C(char a1, int a2)
{
  v213 = *MEMORY[0x277D85DE8];
  v181 = type metadata accessor for KTraceRecordError(0);
  v4 = MEMORY[0x28223BE20](v181);
  v180 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v185 = &v147 - v6;
  v182 = sub_22EE3C8B4();
  v7 = *(v182 - 8);
  v8 = MEMORY[0x28223BE20](v182);
  v184 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v147 - v10;
  v174 = sub_22EE3B954();
  v12 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22EE3BCB4();
  v14 = *(v186 - 8);
  v15 = MEMORY[0x28223BE20](v186);
  v151 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v193 = &v147 - v18;
  MEMORY[0x28223BE20](v17);
  v190 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95580, &unk_22EE41F90);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v159 = &v147 - v22;
  v197 = MEMORY[0x277D84FA0];
  v23 = sub_22EDFFF9C(a1, a2, 0, 0);
  v158 = v23[2];
  if (v158)
  {
    v183 = v11;
    v156 = *(v20 + 48);
    v24 = v23;
    v155 = objc_opt_self();
    v25 = v24;
    v26 = 0;
    v157 = v21;
    v154 = v25 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v153 = (v14 + 32);
    v172 = *MEMORY[0x277CC86A8];
    v171 = (v12 + 104);
    v189 = (v14 + 8);
    v149 = &v201[305];
    v150 = (&v206[38] + 1);
    v147 = v209;
    v148 = v212;
    v178 = (v7 + 32);
    v179 = "        - ";
    v176 = ": failed to load plan";
    v177 = (v7 + 16);
    v175 = (v7 + 8);
    v27 = MEMORY[0x277D84F90];
    v28 = v186;
    v29 = v191;
    v152 = v25;
    while (1)
    {
      if (v26 >= v25[2])
      {
        goto LABEL_96;
      }

      v30 = *(v157 + 72);
      v165 = v26;
      v31 = v154 + v30 * v26;
      v32 = v159;
      sub_22EDDB6E8(v31, v159, &qword_27DA95580, &unk_22EE41F90);
      v160 = *(v32 + v156);
      (*v153)(v190, v32, v28);
      v196 = MEMORY[0x277D84FA0];
      v33 = [v155 defaultManager];
      sub_22EE3BC94();
      v34 = sub_22EE3C0F4();

      v206[0] = 0;
      v35 = [v33 contentsOfDirectoryAtPath:v34 error:v206];

      v36 = v206[0];
      if (v35)
      {
        v191 = v29;
        v37 = sub_22EE3C3D4();
        v38 = v36;
      }

      else
      {
        v39 = v206[0];
        v40 = sub_22EE3BBA4();

        swift_willThrow();
        v191 = 0;
        v37 = MEMORY[0x277D84F90];
      }

      v194 = v27;
      v41 = *(v37 + 16);
      if (!v41)
      {
        v168 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }

      v42 = 0;
      v43 = (v37 + 40);
      v188 = (v41 - 1);
      v168 = MEMORY[0x277D84F90];
      v192 = (v37 + 40);
      do
      {
        v44 = v43 + 16 * v42;
        v45 = v42;
        while (1)
        {
          if (v45 >= *(v37 + 16))
          {
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v47 = *(v44 - 1);
          v46 = *v44;
          v42 = v45 + 1;

          if (sub_22EE3C2B4())
          {
            break;
          }

          v44 += 16;
          v45 = (v45 + 1);
          if (v41 == v42)
          {
            goto LABEL_23;
          }
        }

        v48 = v168;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v206[0] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EDD2DD4(0, *(v48 + 16) + 1, 1);
          v48 = v206[0];
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        v52 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          v187 = v51 + 1;
          sub_22EDD2DD4((v50 > 1), v51 + 1, 1);
          v52 = v187;
          v48 = v206[0];
        }

        *(v48 + 16) = v52;
        v168 = v48;
        v53 = v48 + 16 * v51;
        *(v53 + 32) = v47;
        *(v53 + 40) = v46;
        v43 = v192;
      }

      while (v188 != v45);
LABEL_23:

      v188 = *(v168 + 16);
      if (v188)
      {
        v54 = 0;
        v187 = v168 + 32;
        v27 = v194;
        v55 = v182;
        v29 = v191;
        do
        {
          v194 = v27;
          v60 = (v187 + 16 * v54);
          v62 = *v60;
          v61 = v60[1];

          sub_22EE3BC44();
          v63 = sub_22EE3BCD4();
          v65 = v29;
          if (v29)
          {
            goto LABEL_31;
          }

          v66 = v63;
          v67 = v64;
          v192 = v62;
          sub_22EE3B994();
          swift_allocObject();
          v68 = sub_22EE3B984();
          sub_22EE3B944();
          (*v171)(v173, v172, v174);
          sub_22EE3B964();
          sub_22EE0C840();
          sub_22EE3B974();
          v169 = v66;
          v170 = v68;
          memcpy(v204, v206, 0x141uLL);
          memcpy(v203, v206, 0x141uLL);
          sub_22ED80E90(v204, v202);
          sub_22EDFC284();
          v29 = 0;
          v166 = v204[0];
          v167 = v67;
          v191 = v204[1];
          v89 = v204[17];
          v90 = v204[18];
          v164 = v204[19];
          v91 = v204[20];
          memcpy(v202, v203, 0x141uLL);
          sub_22ED80F70(v202);
          v62 = v192;
          if (v90)
          {
            v191 = v91;

            v92 = sub_22EDD1088(v89, v90);
            sub_22EDD1254(v92, 1);

            v96 = v191;
            if (v191)
            {

              v97 = sub_22EDD1088(v164, v96);
              sub_22EDD1254(v97, 0);
            }
          }

          else if (v91)
          {
            sub_22EDD45F0();
            v65 = swift_allocError();
            v93 = v191;
            *v94 = v166;
            v94[1] = v93;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            goto LABEL_46;
          }

          v98 = v204[37] + 64;
          v99 = 1 << *(v204[37] + 32);
          if (v99 < 64)
          {
            v100 = ~(-1 << v99);
          }

          else
          {
            v100 = -1;
          }

          v101 = v100 & *(v204[37] + 8);
          v102 = (v99 + 63) >> 6;
          v164 = v204[37];

          v103 = 0;
          v161 = v102;
          for (i = v98; ; v98 = i)
          {
            v104 = v193;
            if (v101)
            {
              goto LABEL_60;
            }

            do
            {
              v105 = v103 + 1;
              if (__OFADD__(v103, 1))
              {
                goto LABEL_95;
              }

              if (v105 >= v102)
              {

                sub_22EDD4074(v169, v167);
                memcpy(v205, v206, sizeof(v205));
                v120 = v151;
                v198[0] = *v150;
                *(v198 + 7) = *(v150 + 7);
                v121 = v206[40];
                sub_22EE3BC24();
                sub_22EE3BC04();
                v122 = v104;
                v123 = v120;
                v124 = v186;
                v192 = *v189;
                v192(v123, v186);
                v125 = sub_22EE3C2B4();

                if (v125)
                {
                  memcpy(v207, v205, sizeof(v207));
                  v126 = v160;
                  v208 = v160;
                  v127 = v147;
                  *v147 = v198[0];
                  *(v127 + 7) = *(v198 + 7);
                  v209[15] = 1;
                  sub_22ED80E90(v207, v200);
                  v128 = v196;
                  v129 = swift_isUniquelyReferenced_nonNull_native();
                  v195 = v128;
                  sub_22EE09A88(v207, v129, v199);
                  memcpy(v200, v199, 0x141uLL);
                  sub_22EDDBA48(v200, &qword_27DA95590, &unk_22EE41FA8);
                  memcpy(v201, v205, 0x130uLL);
                  v201[304] = v126;
                  v130 = v149;
                  *v149 = v198[0];
                  *(v130 + 7) = *(v198 + 7);
                  v201[320] = 1;
                  sub_22ED80F70(v201);
                  v28 = v124;
                  v192(v104, v124);
                  v196 = v195;
                }

                else
                {
                  memcpy(v210, v205, sizeof(v210));
                  v56 = v160;
                  v211 = v160;
                  v57 = v148;
                  *v148 = v198[0];
                  *(v57 + 7) = *(v198 + 7);
                  v212[15] = v121;
                  sub_22ED80E90(v210, v200);
                  sub_22EE02C5C(v199, v210);
                  memcpy(v200, v199, 0x141uLL);
                  sub_22ED80F70(v200);
                  memcpy(v201, v205, 0x130uLL);
                  v201[304] = v56;
                  v58 = v149;
                  *v149 = v198[0];
                  *(v58 + 7) = *(v198 + 7);
                  v201[320] = v121;
                  sub_22ED80F70(v201);
                  v59 = v122;
                  v28 = v124;
                  v192(v59, v124);
                }

                v27 = v194;
                v55 = v182;
                goto LABEL_28;
              }

              v101 = *&v98[8 * v105];
              ++v103;
            }

            while (!v101);
            v103 = v105;
LABEL_60:
            v106 = (v164[6] + ((v103 << 10) | (16 * __clz(__rbit64(v101)))));
            v108 = *v106;
            v107 = v106[1];

            v191 = v108;
            v166 = v107;
            v109 = sub_22EE065B4(v200, v108, v107);
            v111 = v110;
            memmove(v201, v110, 0xC8uLL);
            if (sub_22EE0C894(v201) == 1)
            {
              goto LABEL_98;
            }

            v112 = v111[7];
            if (!v112)
            {
              if (!v111[9])
              {
                goto LABEL_54;
              }

              v163 = v109;
              sub_22EDD45F0();
              v65 = swift_allocError();
              v131 = v166;
              *v132 = v191;
              v132[1] = v131;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              v55 = v182;
              goto LABEL_73;
            }

            v163 = v109;
            v113 = v111[6];

            v114 = sub_22EDD1088(v113, v112);
            v191 = v29;
            if (v29)
            {
              v65 = v191;
              goto LABEL_71;
            }

            sub_22EDD1254(v114, 1);

            v115 = v111[9];
            if (v115)
            {
              break;
            }

            v29 = v191;
            v109 = v163;
LABEL_54:
            v101 &= v101 - 1;
            (v109)(v200, 0);

            v102 = v161;
          }

          v116 = v111[8];

          v117 = v115;
          v118 = v191;
          v119 = sub_22EDD1088(v116, v117);
          v29 = v118;
          if (!v118)
          {
            sub_22EDD1254(v119, 0);

            v109 = v163;
            goto LABEL_54;
          }

          v65 = v118;
LABEL_71:
          v55 = v182;
LABEL_73:
          (v163)(v200, 0);

LABEL_46:
          v95 = v167;
          memcpy(v201, v206, 0x141uLL);
          sub_22ED80F70(v201);

          sub_22EDD4074(v169, v95);
LABEL_31:
          v192 = v54;
          v204[0] = v65;
          v69 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
          v70 = v183;
          if (swift_dynamicCast())
          {
            v191 = 0;

            v71 = v184;
            (*v178)(v184, v70, v55);
            v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95588, &qword_22EE41FA0) + 48);
            v73 = v55;
            v74 = v185;
            *v185 = v62;
            *(v74 + 1) = v61;
            v75 = v73;
            (*v177)(&v74[v72], v71);
            swift_storeEnumTagMultiPayload();
            v206[0] = 0;
            v206[1] = 0xE000000000000000;
            sub_22EE3C864();

            v206[0] = 0x203A726F727265;
            v206[1] = 0xE700000000000000;
            v76 = sub_22EE3BC94();
            MEMORY[0x2318F58F0](v76);

            MEMORY[0x2318F58F0](0xD000000000000010, v176 | 0x8000000000000000);
            sub_22EE0DD2C(v74, v180);
            v77 = sub_22EE3C164();
            MEMORY[0x2318F58F0](v77);

            v78 = v206[0];
            v79 = v206[1];
            v27 = v194;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_22EDDA224(0, *(v27 + 2) + 1, 1, v27);
            }

            v28 = v186;
            v81 = *(v27 + 2);
            v80 = *(v27 + 3);
            if (v81 >= v80 >> 1)
            {
              v27 = sub_22EDDA224((v80 > 1), v81 + 1, 1, v27);
            }

            sub_22EE0DD90(v185);
            (*v175)(v184, v75);
            (*v189)(v193, v28);
            *(v27 + 2) = v81 + 1;
            v82 = &v27[16 * v81];
            v55 = v75;
            *(v82 + 4) = v78;
            *(v82 + 5) = v79;

            v29 = v191;
            v54 = v192;
          }

          else
          {

            v206[0] = 0;
            v206[1] = 0xE000000000000000;
            sub_22EE3C864();

            v206[0] = 0x203A726F727265;
            v206[1] = 0xE700000000000000;
            v83 = sub_22EE3BC94();
            MEMORY[0x2318F58F0](v83);

            MEMORY[0x2318F58F0](0xD000000000000015, v179 | 0x8000000000000000);
            v84 = v206[0];
            v85 = v206[1];
            v27 = v194;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_22EDDA224(0, *(v27 + 2) + 1, 1, v27);
            }

            v28 = v186;
            v87 = *(v27 + 2);
            v86 = *(v27 + 3);
            if (v87 >= v86 >> 1)
            {
              v27 = sub_22EDDA224((v86 > 1), v87 + 1, 1, v27);
            }

            (*v189)(v193, v28);
            *(v27 + 2) = v87 + 1;
            v88 = &v27[16 * v87];
            *(v88 + 4) = v84;
            *(v88 + 5) = v85;
            v55 = v182;
            v29 = 0;
            v54 = v192;
          }

LABEL_28:
          v54 = (v54 + 1);
        }

        while (v54 != v188);
      }

      else
      {

        v27 = v194;
        v28 = v186;
        v29 = v191;
      }

      v26 = v165 + 1;
      sub_22EDFB0F8(v196);
      (*v189)(v190, v28);
      v25 = v152;
      if (v26 == v158)
      {
        v191 = v29;

        v133 = v197;
        v134 = *(v197 + 16);
        if (v134)
        {
          goto LABEL_75;
        }

LABEL_78:
        v135 = MEMORY[0x277D84F90];
        goto LABEL_79;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  v133 = MEMORY[0x277D84FA0];
  v134 = *(MEMORY[0x277D84FA0] + 16);
  if (!v134)
  {
    goto LABEL_78;
  }

LABEL_75:
  v194 = v27;
  v135 = sub_22EE0651C(v134, 0);
  v136 = sub_22EE0A06C(v206, v135 + 32, v134, v133);
  v137 = v206[0];

  sub_22ED97F20(v137);
  if (v136 != v134)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

LABEL_79:
  v206[0] = v135;

  v138 = v191;
  sub_22EE088F8(v206, sub_22EE0A1FC, &type metadata for Plan, sub_22EE09198, sub_22EE08AA4);
  if (v138)
  {

    __break(1u);
  }

  else
  {

    v139 = v206[0];
    v203[0] = v206[0];
    v140 = *(v206[0] + 16);
    if (v140)
    {
      v141 = 0;
      for (j = (v206[0] + 40); ; j += 41)
      {
        v143 = *(j - 1) == 0x746C7561666564 && *j == 0xE700000000000000;
        if (v143 || (sub_22EE3CBA4() & 1) != 0)
        {
          break;
        }

        if (v140 == ++v141)
        {
          return v139;
        }
      }

      sub_22EE01E80(v141, v204);
      v139 = v203[0];
      v144 = *(v203[0] + 16);
      v145 = swift_isUniquelyReferenced_nonNull_native();
      if (!v145 || v144 >= *(v139 + 3) >> 1)
      {
        v139 = sub_22EE06384(v145, v144 + 1, 1, v139);
        v203[0] = v139;
      }

      memcpy(v206, v204, 0x141uLL);
      sub_22EE0DC0C(0, 0, 1, v206);
      sub_22ED80F70(v204);
    }

    return v139;
  }

  return result;
}

uint64_t sub_22EE01E80@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EE05AC8(v5);
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
    v9 = v5 + 328 * a1;
    memcpy(a2, (v9 + 32), 0x141uLL);
    result = memmove((v9 + 32), (v9 + 360), 328 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t ktrace_list_plans(_:_:_:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  nullsub_1();
  __src[47] = v4;
  nullsub_1();
  __src[46] = v5;
  result = sub_22EE0099C((a3 & 2) != 0, (a3 >> 2) & 1);
  v7 = result;
  v29 = v8;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (result + 32);
    v12 = &type metadata for StandardFile;
    v13 = MEMORY[0x277D837D0];
    while (v10 < v9)
    {
      memcpy(v31, v11, 0x141uLL);
      memcpy(__src, v31, 0x141uLL);
      sub_22ED80E90(v31, __dst);
      if (v10)
      {
        sub_22EE3CC54();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_22EE3F500;
      memcpy(__dst, __src, 0x141uLL);
      if (a3)
      {
        v21 = sub_22EDFE564();
        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 32) = v21;
        *(v20 + 40) = v22;
      }

      else
      {
        v14 = v12;
        v15 = sub_22EDFE0AC(538976288, 0xE400000000000000);
        v17 = v16;
        __dst[0] = __src[0];
        __dst[1] = __src[1];

        MEMORY[0x2318F58F0](539831584, 0xE400000000000000);
        MEMORY[0x2318F58F0](__src[10], __src[11]);
        __dst[3] = v13;
        v18 = sub_22ED804E8();
        sub_22ED80590(__dst, *v18);
        __swift_destroy_boxed_opaque_existential_0(__dst);
        MEMORY[0x2318F58F0](10, 0xE100000000000000);
        v19 = v15;
        v12 = v14;
        MEMORY[0x2318F58F0](v19, v17);

        *(v20 + 56) = v13;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0xE000000000000000;
      }

      sub_22ED82560();
      sub_22EE3CC44();
      sub_22ED80F70(__src);

      ++v10;
      v9 = *(v7 + 16);
      v11 += 328;
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v23 = *(v29 + 16);
    if (v23)
    {
      v24 = (v29 + 40);
      v25 = MEMORY[0x277D837D0];
      do
      {
        v27 = *(v24 - 1);
        v26 = *v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_22EE3F500;
        *(v28 + 56) = v25;
        *(v28 + 32) = v27;
        *(v28 + 40) = v26;
        sub_22ED82560();

        sub_22EE3CC44();

        v24 += 2;
        --v23;
      }

      while (v23);
    }

    return 0;
  }

  return result;
}

char *sub_22EE02350(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EE02390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EE02370(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EE02494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EE02390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95758, &qword_22EE43620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22EE02494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95640, &qword_22EE43580);
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

char *sub_22EE025A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95610, &unk_22EE43540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 328);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[328 * v8])
    {
      memmove(v12, v13, 328 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EE026C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v8 = sub_22EE3CCC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22EE3CBA4() & 1) != 0)
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

    sub_22EE036F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22EE02814(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_22EE3CC74();
  sub_22EDF6268(a2);
  sub_22EE3C1C4();

  v5 = sub_22EE3CCC4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v33 = ~v6;
    v8 = 0x800000022EE48DC0;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      v35 = v7;
      if (v9 <= 4)
      {
        v12 = 0xD000000000000014;
        if (v9 == 3)
        {
          v12 = 0x735F646165726874;
          v13 = 0xEF746F687370616ELL;
        }

        else
        {
          v13 = v8;
        }

        if (v9 == 2)
        {
          v12 = 0x695F646165726874;
          v13 = 0xEB000000006F666ELL;
        }

        v14 = *(*(v4 + 48) + v7) ? 0xD000000000000011 : 0x6C61635F72657375;
        v15 = *(*(v4 + 48) + v7) ? 0x800000022EE48D90 : 0xEF6B636174735F6CLL;
        v10 = *(*(v4 + 48) + v7) <= 1u ? v14 : v12;
        v11 = *(*(v4 + 48) + v7) <= 1u ? v15 : v13;
      }

      else if (*(*(v4 + 48) + v7) > 7u)
      {
        if (v9 == 8)
        {
          v10 = 0xD000000000000010;
          v11 = 0x800000022EE48E20;
        }

        else if (v9 == 9)
        {
          v10 = 0x6D5F6D6574737973;
          v11 = 0xED000079726F6D65;
        }

        else
        {
          v10 = 0xD000000000000012;
          v11 = 0x800000022EE48E40;
        }
      }

      else if (v9 == 5)
      {
        v10 = 0xD00000000000001ALL;
        v11 = 0x800000022EE48DE0;
      }

      else if (v9 == 6)
      {
        v10 = 0x666E695F6B736174;
        v11 = 0xE90000000000006FLL;
      }

      else
      {
        v10 = 0x616E735F6B736174;
        v11 = 0xED0000746F687370;
      }

      v16 = 0xD000000000000012;
      if (a2 == 9)
      {
        v16 = 0x6D5F6D6574737973;
      }

      v17 = 0xED000079726F6D65;
      if (a2 != 9)
      {
        v17 = 0x800000022EE48E40;
      }

      if (a2 == 8)
      {
        v16 = 0xD000000000000010;
        v17 = 0x800000022EE48E20;
      }

      v18 = 0xD00000000000001ALL;
      v19 = 0x666E695F6B736174;
      if (a2 != 6)
      {
        v19 = 0x616E735F6B736174;
      }

      v20 = 0xED0000746F687370;
      if (a2 == 6)
      {
        v20 = 0xE90000000000006FLL;
      }

      if (a2 != 5)
      {
        v18 = v19;
      }

      v21 = 0x800000022EE48DE0;
      if (a2 != 5)
      {
        v21 = v20;
      }

      if (a2 <= 7u)
      {
        v16 = v18;
        v17 = v21;
      }

      v22 = 0xD000000000000014;
      if (a2 == 3)
      {
        v22 = 0x735F646165726874;
        v23 = 0xEF746F687370616ELL;
      }

      else
      {
        v23 = v8;
      }

      if (a2 == 2)
      {
        v22 = 0x695F646165726874;
        v23 = 0xEB000000006F666ELL;
      }

      if (a2)
      {
        v24 = 0xD000000000000011;
      }

      else
      {
        v24 = 0x6C61635F72657375;
      }

      if (a2)
      {
        v25 = 0x800000022EE48D90;
      }

      else
      {
        v25 = 0xEF6B636174735F6CLL;
      }

      if (a2 <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      v26 = a2 <= 4u ? v22 : v16;
      v27 = a2 <= 4u ? v23 : v17;
      if (v10 == v26 && v11 == v27)
      {
        break;
      }

      v28 = v8;
      v34 = sub_22EE3CBA4();

      if (v34)
      {
        goto LABEL_74;
      }

      v7 = (v35 + 1) & v33;
      v8 = v28;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

LABEL_74:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_72:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v31;
    sub_22EE03870(a2, v7, isUniquelyReferenced_nonNull_native);
    *v31 = v36;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22EE02C5C(void *a1, uint64_t *a2)
{
  v4 = *v2;
  sub_22EE3CC74();
  v5 = *a2;
  v6 = a2[1];
  sub_22EE3C1C4();
  v7 = sub_22EE3CCC4();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 328 * v9;
      v12 = (*(v4 + 48) + 328 * v9);
      v13 = *v12 == v5 && v12[1] == v6;
      if (v13 || (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_22ED80F70(a2);
    v16 = *(v4 + 48);
    memcpy(__dst, (v16 + v11), 0x141uLL);
    memcpy(a1, (v16 + v11), 0x141uLL);
    sub_22ED80E90(__dst, v18);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *v2;
    sub_22ED80E90(a2, __dst);
    sub_22EE03D00(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v18[0];
    memcpy(a1, a2, 0x141uLL);
    return 1;
  }
}