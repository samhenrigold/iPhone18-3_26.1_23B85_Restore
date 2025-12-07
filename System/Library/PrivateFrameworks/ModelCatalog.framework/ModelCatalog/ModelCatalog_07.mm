BOOL sub_18E290BF0(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = *(result + 16);
  while (v6)
  {
    if (!--v6)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

void sub_18E290C28()
{
  sub_18E1C575C();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    sub_18E1CC3A4();
    v5 = (v4 + 48);
    v7 = (v6 + 48);
    do
    {
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = *(v7 - 16);
      v11 = 0xE700000000000000;
      v13 = *(v7 - 1);
      v12 = *v7;
      v14 = v3;
      switch(*(v5 - 16))
      {
        case 1:
          v11 = 0xE300000000000000;
          v14 = 7565161;
          break;
        case 2:
          v11 = 0xE500000000000000;
          v14 = 0x736F63616DLL;
          break;
        case 3:
          v14 = sub_18E223CAC();
          break;
        case 4:
          v11 = 0xE400000000000000;
          v14 = 1936684660;
          break;
        case 5:
          v11 = 0xE800000000000000;
          v14 = sub_18E1D00A4();
          break;
        default:
          break;
      }

      v15 = 0xE700000000000000;
      switch(v10)
      {
        case 1:
          v15 = 0xE300000000000000;
          v3 = 7565161;
          break;
        case 2:
          v15 = 0xE500000000000000;
          v3 = 0x736F63616DLL;
          break;
        case 3:
          sub_18E234598();
          break;
        case 4:
          v15 = 0xE400000000000000;
          v3 = 1936684660;
          break;
        case 5:
          v15 = 0xE800000000000000;
          sub_18E221C24();
          break;
        default:
          break;
      }

      if (v14 == v3 && v11 == v15)
      {
      }

      else
      {
        v17 = sub_18E44F3CC();

        if ((v17 & 1) == 0)
        {

          break;
        }
      }

      if (v9 == v13 && v8 == v12)
      {
      }

      else
      {
        v19 = sub_18E44F3CC();

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      v5 += 3;
      v7 += 3;
      --v2;
      v3 = 0x6E776F6E6B6E75;
    }

    while (v2);
  }

  sub_18E1C5544();
}

uint64_t sub_18E290E60()
{
  sub_18E1C8DE0();
  if (v3)
  {
    if (!v0 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 104)
    {
      memcpy(__dst, v4, 0x61uLL);
      memcpy(v10, v4, 0x61uLL);
      memcpy(v12, i, 0x61uLL);
      memcpy(__src, i, 0x61uLL);
      sub_18E1FF650(__dst, v8);
      sub_18E1FF650(v12, v8);
      v6 = static ManagedRuntimeInformation.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, 0x61uLL);
      sub_18E1FF6D4(v13);
      memcpy(v14, v10, 0x61uLL);
      sub_18E1FF6D4(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v4 += 104;
      if (!--v0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_18E290F68()
{
  sub_18E1C575C();
  sub_18E1C8DE0();
  if (v15 && v0 && v1 != v2)
  {
    v3 = (v1 + 34);
    v4 = (v2 + 34);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v4 - 2);
      v10 = sub_18E1C6DAC(*(v3 - 2));
      v12 = v11;
      v13 = sub_18E1C6DAC(v9);
      v15 = v10 == v13 && v12 == v14;
      if (v15)
      {

        if (v5 != v7 || v6 != v8)
        {
          break;
        }
      }

      else
      {
        v16 = sub_18E1C6188(v10, v14, v13);

        if ((v16 & 1) == 0 || v5 != v7 || v6 != v8)
        {
          break;
        }
      }

      v3 += 3;
      v4 += 3;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}

uint64_t sub_18E291068(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  v29 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v27 = v7;
  v28 = a2 + 56;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
    v31 = v9;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(v29 + 48) + 40 * (v12 | (v10 << 6));
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *v13;
    sub_18E44F48C();
    sub_18E1C6DAC(v17);
    v30 = v16;

    sub_18E44EB4C();

    v18 = v14 + 64;
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    v24 = 0;
    if (v21)
    {
      while (1)
      {
        v32 = v23;
LABEL_19:
        v21 &= v21 - 1;
        memcpy(v33, __srca, sizeof(v33));

        sub_18E44EB4C();

        sub_18E44EB4C();

        result = sub_18E44F4CC();
        v23 = result ^ v32;
        if (!v21)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v25 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v32 = v23;
        v24 = v25;
        goto LABEL_19;
      }
    }

    MEMORY[0x193ACCC20](v23);
    sub_18E44F4AC();
    if (v15)
    {
      sub_18E2917A4();
    }

    v7 = v27;
    sub_18E44F4AC();
    if (v30)
    {
      sub_18E2917A4();
    }

    sub_18E44F4AC();
    v26 = sub_18E44F4CC();

    v9 = v26 ^ v31;
    v3 = v28;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193ACCC20](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v31 = v9;
      v10 = v11;
      goto LABEL_10;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E2913B4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  v20 = a2;
  v3 = a2 + 56;
  sub_18E1C7734();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v23 = v10;
LABEL_7:
    v13 = *(v20 + 48) + ((v11 << 12) | (__clz(__rbit64(v6)) << 6));
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 40);
    v21 = *(v13 + 48);
    v22 = *(v13 + 57);
    sub_18E44F48C();

    sub_18E44EB4C();
    if (v14 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    if (v16)
    {
      sub_18E44F4AC();
      MEMORY[0x193ACCC20](v15);
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      v17 = *(v16 + 16);
      MEMORY[0x193ACCC20](v17);
      if (v17)
      {

        v18 = v16 + 40;
        do
        {

          sub_18E44EB4C();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      else
      {
      }

      MEMORY[0x193ACCC20](v21);
      sub_18E44F4AC();
    }

    else
    {
      sub_18E44F4AC();
    }

    v6 &= v6 - 1;
    MEMORY[0x193ACCC20](v22);
    v19 = sub_18E44F4CC();

    v10 = v19 ^ v23;
  }

  while (v6);
LABEL_3:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x193ACCC20](v10);
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v23 = v10;
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E291640(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_18E44F4CC();
  sub_18E1C7734();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x193ACCC20](v9);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_6:
        v12 = *(*(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v10 << 6)) + 16);
        sub_18E44F48C();

        sub_18E44EB4C();
        if (v12 != 2)
        {
          sub_18E44F4AC();
        }

        v5 &= v5 - 1;
        sub_18E44F4AC();
        v13 = sub_18E44F4CC();

        v9 ^= v13;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

void sub_18E2917A4()
{
  sub_18E1C8A38();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_18E44EB4C();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_18E29180C()
{
  sub_18E1C575C();
  sub_18E1C8A38();
  if (v0)
  {
    v2 = v1 + 48;
    do
    {

      sub_18E44EB4C();

      sub_18E1C2970();
      sub_18E44EB4C();

      v2 += 24;
      --v0;
    }

    while (v0);
  }

  sub_18E1C5544();
}

void sub_18E291928()
{
  sub_18E1C8A38();
  if (v0)
  {
    v2 = (v1 + 34);
    do
    {
      v3 = *v2;
      sub_18E1C6DAC(*(v2 - 2));
      sub_18E44EB4C();

      sub_18E44F4AC();
      MEMORY[0x193ACCC20](v3);
      v2 += 3;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_18E2919AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  for (result = MEMORY[0x193ACCC20](v2); v2; --v2)
  {
    result = sub_18E44EB4C();
  }

  return result;
}

void sub_18E291A0C()
{
  sub_18E1C8A38();
  v9 = v0;
  if (v0)
  {
    v2 = 0;
    do
    {
      memcpy(__dst, (v1 + 32 + 104 * v2), 0x61uLL);
      v3 = LOBYTE(__dst[2]);
      sub_18E1FF650(__dst, v10);
      sub_18E44EB4C();
      if (v3 != 2)
      {
        sub_18E44F4AC();
      }

      sub_18E44F4AC();
      if (__dst[4])
      {
        v4 = LOBYTE(__dst[5]);
        sub_18E44F4AC();
        sub_18E1C2970();
        sub_18E44EB4C();
        if (v4 != 2)
        {
          sub_18E44F4AC();
        }
      }

      sub_18E44F4AC();
      if (__dst[7])
      {
        sub_18E44F4AC();
        sub_18E1C2970();
        sub_18E44EB4C();
      }

      else
      {
        sub_18E44F4AC();
      }

      v5 = __dst[10];
      v6 = __dst[11];
      MEMORY[0x193ACCC20](__dst[8]);
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      sub_18E44F4AC();
      v7 = *(v5 + 16);
      MEMORY[0x193ACCC20](v7);
      if (v7)
      {
        v8 = v5 + 40;
        do
        {

          sub_18E44EB4C();

          v8 += 16;
          --v7;
        }

        while (v7);
      }

      MEMORY[0x193ACCC20](v6);
      ++v2;
      sub_18E44F4AC();
      sub_18E1FF6D4(__dst);
    }

    while (v2 != v9);
  }
}

void sub_18E291BEC()
{
  sub_18E1C8A38();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_18E44EB4C();

      --v0;
    }

    while (v0);
  }
}

unint64_t sub_18E291C98(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E291CFC()
{
  result = qword_1EABDF778;
  if (!qword_1EABDF778)
  {
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF778);
  }

  return result;
}

unint64_t sub_18E291D78()
{
  result = qword_1EABE0458;
  if (!qword_1EABE0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0458);
  }

  return result;
}

unint64_t sub_18E291DCC()
{
  result = qword_1EABE0448;
  if (!qword_1EABE0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0448);
  }

  return result;
}

unint64_t sub_18E291E24()
{
  result = qword_1EABE0790;
  if (!qword_1EABE0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0790);
  }

  return result;
}

unint64_t sub_18E291E7C()
{
  result = qword_1EABE1198;
  if (!qword_1EABE1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1198);
  }

  return result;
}

__n128 sub_18E291EE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_18E291F58()
{
  result = qword_1EABE11A8;
  if (!qword_1EABE11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE11A8);
  }

  return result;
}

unint64_t sub_18E291FB0()
{
  result = qword_1EABE07A0;
  if (!qword_1EABE07A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07A0);
  }

  return result;
}

unint64_t sub_18E292008()
{
  result = qword_1EABE07A8;
  if (!qword_1EABE07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07A8);
  }

  return result;
}

uint64_t sub_18E29205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE11B0, &qword_18E49EF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E2920CC()
{
  result = qword_1EABE0040;
  if (!qword_1EABE0040)
  {
    sub_18E44E6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0040);
  }

  return result;
}

uint64_t sub_18E292178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_18E1C4EEC();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18E2921D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_18E1C4EEC();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_18E292230()
{
  result = qword_1EABE0470;
  if (!qword_1EABE0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0470);
  }

  return result;
}

unint64_t sub_18E292284()
{
  result = qword_1EABDF6F0;
  if (!qword_1EABDF6F0)
  {
    sub_18E2707F8(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E291C98(&qword_1ED6A7948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6F0);
  }

  return result;
}

unint64_t sub_18E29232C()
{
  result = qword_1EABDFA38;
  if (!qword_1EABDFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA38);
  }

  return result;
}

unint64_t sub_18E292380(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE11D8, &unk_18E49E130);
    v2();
    sub_18E1C2970();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E2923EC()
{
  result = qword_1EABDF6E8;
  if (!qword_1EABDF6E8)
  {
    sub_18E2707F8(&qword_1EABE1090, &qword_18E4E3AA0);
    sub_18E291C98(&qword_1ED6A7940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6E8);
  }

  return result;
}

unint64_t sub_18E292494(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&qword_1EABE11E8, &qword_18E49E140);
    v2();
    sub_18E1C2970();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E292500()
{
  result = qword_1EABDFA28;
  if (!qword_1EABDFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFA28);
  }

  return result;
}

uint64_t sub_18E292554(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E2925A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_18E292610(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18E29261C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18E29265C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RawAvailableUseCases.NormalizedUseCases.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E29278C()
{
  result = qword_1EABE1200;
  if (!qword_1EABE1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1200);
  }

  return result;
}

unint64_t sub_18E2927E4()
{
  result = qword_1EABE07B8;
  if (!qword_1EABE07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE07B8);
  }

  return result;
}

unint64_t sub_18E29283C()
{
  result = qword_1EABE0460;
  if (!qword_1EABE0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0460);
  }

  return result;
}

unint64_t sub_18E292890()
{
  result = qword_1EABE0490;
  if (!qword_1EABE0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0490);
  }

  return result;
}

unint64_t sub_18E2928E4()
{
  result = qword_1EABDF6D0;
  if (!qword_1EABDF6D0)
  {
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6D0);
  }

  return result;
}

unint64_t sub_18E292960()
{
  result = qword_1EABDF6C0;
  if (!qword_1EABDF6C0)
  {
    sub_18E2707F8(&unk_1EABE1218, &qword_18E49E398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF6C0);
  }

  return result;
}

uint64_t sub_18E2929DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18E292A64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E292B44()
{
  result = qword_1EABE1238;
  if (!qword_1EABE1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1238);
  }

  return result;
}

unint64_t sub_18E292B9C()
{
  result = qword_1EABE0480;
  if (!qword_1EABE0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0480);
  }

  return result;
}

unint64_t sub_18E292BF4()
{
  result = qword_1EABE0488;
  if (!qword_1EABE0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0488);
  }

  return result;
}

uint64_t sub_18E292C80()
{
  sub_18E1CE8F0();
  v2 = sub_18E296F68();
  result = MEMORY[0x193ACC550](v1, &type metadata for InferenceProvider, v2);
  v4 = 0;
  v11 = result;
  v5 = *(v0 + 16);
  v6 = (v0 + 48);
  while (1)
  {
    if (v5 == v4)
    {

      return v11;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(v6 - 2);
    v7 = *(v6 - 1);
    v9 = *v6;
    v6 += 24;

    sub_18E274420(&v10, v8, v7, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E292D44()
{
  sub_18E1CE8F0();
  v2 = sub_18E296FBC();
  result = MEMORY[0x193ACC550](v1, &type metadata for ExecutionContext, v2);
  v4 = 0;
  v12 = result;
  v5 = *(v0 + 16);
  for (i = 32; ; i += 64)
  {
    if (v5 == v4)
    {

      return v12;
    }

    if (v4 >= *(v0 + 16))
    {
      break;
    }

    v7 = *(v0 + i + 16);
    v13[0] = *(v0 + i);
    v13[1] = v7;
    v14[0] = *(v0 + i + 32);
    *(v14 + 10) = *(v0 + i + 42);
    ++v4;
    sub_18E27418C(v13, v10);
    sub_18E2745EC(v8, v13);
    v10[0] = v8[0];
    v10[1] = v8[1];
    v11[0] = v9[0];
    *(v11 + 10) = *(v9 + 10);
    result = sub_18E2741E8(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E292E2C()
{
  sub_18E1CE8F0();
  v2 = sub_18E296F14();
  v3 = MEMORY[0x193ACC550](v1, &type metadata for Tag, v2);
  for (i = *(v0 + 16); i; --i)
  {
    sub_18E44F48C();
    sub_18E44EB4C();
    v5 = sub_18E44F4CC() & ~(-1 << *(v3 + 32));
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5) & 1) == 0)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_18E3F3DB4(v5);
    }
  }

  return v3;
}

uint64_t sub_18E292F20()
{
  sub_18E1CE8F0();
  v2 = sub_18E2871E8();
  v3 = MEMORY[0x193ACC550](v1, &type metadata for UseCaseIdentifier, v2);
  v9 = v3;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_18E27523C(&v8, *(v0 + v5++));
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void *sub_18E292FCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_18E3F0464(*(a1 + 16), 0);
  v4 = sub_18E2FE54C(&v6, v3 + 4, v2, a1);
  sub_18E246F7C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

ModelCatalog::UseCaseIdentifier::DownloadCondition::Identifier_optional __swiftcall UseCaseIdentifier.DownloadCondition.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18E44F19C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void UseCaseIdentifier.DownloadCondition.Identifier.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

void sub_18E293230(void *a1@<X8>)
{
  UseCaseIdentifier.DownloadCondition.Identifier.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t UseCaseIdentifier.DownloadCondition.sql.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

ModelCatalog::UseCaseIdentifier::DownloadCondition __swiftcall UseCaseIdentifier.DownloadCondition.init(identifier:sql:)(ModelCatalog::UseCaseIdentifier::DownloadCondition::Identifier identifier, Swift::String sql)
{
  *v2 = *identifier;
  *(v2 + 8) = sql;
  result.sql = sql;
  result.identifier = identifier;
  return result;
}

uint64_t sub_18E293744(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E464EF0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E44F3CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E2937C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E293744(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E2937F0(uint64_t a1)
{
  v2 = sub_18E1FFB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E29382C(uint64_t a1)
{
  v2 = sub_18E1FFB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UseCaseIdentifier.hash(into:)(uint64_t a1)
{
  sub_18E1C6DAC(*v1);
  sub_18E44EB4C();
}

uint64_t UseCaseIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  v2 = sub_18E1C6DAC(v1);
  sub_18E1D432C(v2, v3);

  return sub_18E44F4CC();
}

unint64_t sub_18E293914@<X0>(unint64_t *a1@<X8>)
{
  result = UseCaseIdentifier.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_18E29395C()
{
  sub_18E2706EC(&qword_1EABE0E08, &qword_18E49D1B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_18E49E4B0;
  inited[2] = xmmword_18E49E4C0;
  inited[3] = xmmword_18E49E4D0;
  sub_18E3EFDF0(1, 126, 1, inited);
  *(v1 + 16) = 126;
  *(v1 + 157) = 61;
}

_BYTE *static UseCaseIdentifier.Metadata.Configuration.downloadCondition(for:)@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  switch(*result)
  {
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x31:
    case 0x32:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3F:
    case 0x46:
    case 0x4D:
    case 0x7C:
    case 0x7D:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return result;
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x2E:
    case 0x30:
    case 0x56:
    case 0x57:
      v2 = " bm_gmBypass(adm) = true)";
      v3 = xmmword_18E49E540;
      goto LABEL_5;
    case 0x3D:
      v2 = "es.valid_values))";
      v3 = xmmword_18E49E590;
      goto LABEL_5;
    case 0x40:
    case 0x54:
    case 0x55:
      v2 = "(region IS NULL OR region = 0)";
      v3 = xmmword_18E49E550;
      goto LABEL_5;
    case 0x42:
    case 0x45:
      v2 = "Info(deviceType) = watch";
      v3 = xmmword_18E49E580;
      goto LABEL_5;
    case 0x51:
      v2 = "eModelSystems) = true";
      v3 = xmmword_18E49E570;
      goto LABEL_5;
    case 0x52:
    case 0x53:
      v2 = "leGestalt(chipID) >= 33025))";
      v3 = xmmword_18E49E560;
      goto LABEL_5;
    default:
      v2 = "missingAssetIndices";
      v3 = xmmword_18E49E530;
LABEL_5:
      *a2 = v3;
      a2[2] = v2 | 0x8000000000000000;
      return result;
  }
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.language.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18E44E6FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.argumentDictionaryRepresentation.getter()
{
  sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_18E44E6CC();
  *(inited + 56) = v1;
  return sub_18E44E9AC();
}

void *sub_18E293C58()
{
  result = sub_18E293C78();
  off_1ED6A97A8 = result;
  return result;
}

uint64_t sub_18E293C78()
{
  sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
  type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49E5A0;
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  sub_18E44E6DC();
  return v0;
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.hash(into:)(uint64_t a1)
{
  sub_18E44E6FC();
  sub_18E1C951C();
  sub_18E296A34(v1, v2, MEMORY[0x1E6969620]);

  return sub_18E44E9EC();
}

uint64_t UseCaseIdentifier.Metadata.Enablement.Criteria.hashValue.getter()
{
  sub_18E44F48C();
  sub_18E44E6FC();
  sub_18E1C951C();
  sub_18E296A34(v0, v1, MEMORY[0x1E6969620]);
  sub_18E44E9EC();
  return sub_18E44F4CC();
}

uint64_t sub_18E293FCC(uint64_t a1)
{
  sub_18E44F48C();
  sub_18E44E6FC();
  sub_18E296A34(&qword_1EABE1250, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  sub_18E44E9EC();
  return sub_18E44F4CC();
}

__n128 *static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(_BYTE *a1)
{
  v407 = a1;
  v1 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  v406 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C617C();
  v405 = v10;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C617C();
  v403 = v12;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C617C();
  v401 = v14;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C617C();
  v399 = v16;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v19 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v387 - v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1C617C();
  v404 = v24;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v25);
  sub_18E1C617C();
  v402 = v26;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v27);
  sub_18E1C617C();
  v400 = v28;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1C617C();
  v397 = v30;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C617C();
  v395 = v32;
  sub_18E1C6668();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v35 = MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C617C();
  v398 = v39;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E1C617C();
  v396 = v41;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v42);
  sub_18E1C617C();
  v394 = v43;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v44);
  sub_18E1C617C();
  v393 = v45;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v46);
  sub_18E1C617C();
  v392 = v47;
  sub_18E1C6668();
  v49 = MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v50);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v51);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v52);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v53);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v54);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v55);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v56);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v57);
  sub_18E1C617C();
  v390 = v58;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v59);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v60);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v61);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v62);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v63);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v64);
  sub_18E1C617C();
  v391 = v65;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v66);
  sub_18E1C617C();
  v389 = v67;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v68);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v69);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v70);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v71);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v72);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v73);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v74);
  sub_18E1C617C();
  v388 = v75;
  sub_18E1C6668();
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = v387 - v78;
  v80 = MEMORY[0x1EEE9AC00](v77);
  v82 = v387 - v81;
  MEMORY[0x1EEE9AC00](v80);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v83);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v84);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v85);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v86);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = v387 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = v387 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = v387 - v95;
  MEMORY[0x1EEE9AC00](v94);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v97);
  sub_18E1C617C();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v98);
  sub_18E1C617C();
  sub_18E1C7ED4();
  v100 = MEMORY[0x1EEE9AC00](v99);
  v102 = v387 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100);
  v105 = v387 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v108 = v387 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106);
  v111 = v387 - v110;
  v112 = MEMORY[0x1EEE9AC00](v109);
  v123 = (v387 - v122);
  switch(*v407)
  {
    case 1:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v195 = sub_18E1E3794();
      *(v195 + 16) = xmmword_18E49E5C0;
      v407 = v93;
      sub_18E220A68();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      v197 = *(v195 + 16);
      v196 = *(v195 + 24);
      v198 = v195;
      if (v197 >= v196 >> 1)
      {
        sub_18E1C5C70(v196);
        sub_18E3EFF88();
        v198 = v328;
      }

      *(v198 + 16) = v197 + 1;
      sub_18E29680C(v123, &v407[v198 + v197 * v82]);
      sub_18E1C66E4();
      sub_18E44E6DC();
      v200 = *(v198 + 16);
      v199 = *(v198 + 24);
      if (v200 >= v199 >> 1)
      {
        sub_18E1C5C70(v199);
        sub_18E3EFF88();
        v198 = v329;
      }

      *(v198 + 16) = v200 + 1;
      v201 = v407;
      v202 = &v407[v198 + v200 * v82];
      v123 = v198;
      sub_18E29680C(v111, v202);
      sub_18E25E158();
      v204 = *(v198 + 16);
      v203 = *(v198 + 24);
      if (v204 >= v203 >> 1)
      {
        sub_18E1C5C70(v203);
        sub_18E3EFF88();
        v123 = v330;
      }

      v205 = v387[4];
      v123[1].n128_u64[0] = v204 + 1;
      sub_18E29680C(v108, &v201[v123 + v204 * v82]);
      sub_18E1D7DD0();
      v207 = v123[1].n128_u64[0];
      v206 = v123[1].n128_u64[1];
      if (v207 >= v206 >> 1)
      {
        sub_18E1C5C70(v206);
        sub_18E3EFF88();
        v123 = v331;
      }

      v208 = v387[1];
      v123[1].n128_u64[0] = v207 + 1;
      sub_18E29680C(v105, &v201[v123 + v207 * v82]);
      sub_18E1CD990();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v332;
      }

      v209 = v387[9];
      sub_18E1CE9A8();
      sub_18E29680C(v102, v210);
      sub_18E1D0300();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v333;
      }

      sub_18E1CE9A8();
      sub_18E29680C(v208, v211);
      sub_18E1CD8C4();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v334;
      }

      sub_18E1CE9A8();
      sub_18E29680C(v205, v212);
      sub_18E1DD53C();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v335;
      }

      sub_18E1CE9A8();
      v214 = v209;
      goto LABEL_143;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0x27:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      v123 = swift_allocObject();
      v123[1] = xmmword_18E49D9B0;
      goto LABEL_4;
    case 0x10:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v217 = v216 & ~v215;
      v123 = swift_allocObject();
      v123[1] = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E1CF450();
      sub_18E1E8980();
      sub_18E1E0F98();
      v218 = sub_18E1C8A58();
      sub_18E1CD514(v218);
      v219 = v123[1].n128_u64[0];
      if (v219 >= v123[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v123 = v336;
      }

      v123[1].n128_u64[0] = v219 + 1;
      sub_18E29680C(v96, v123 + v217 + v219 * v82);
      sub_18E1C66E4();
      sub_18E44E6DC();
      v220 = v123[1].n128_u64[0];
      if (v220 >= v123[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v123 = v337;
      }

      v221 = v387[11];
      v123[1].n128_u64[0] = v220 + 1;
      sub_18E29680C(v93, v123 + v217 + v220 * v82);
      sub_18E25E158();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v338;
      }

      v222 = v387[15];
      sub_18E1E2D1C();
      sub_18E29680C(v90, v223);
      v224 = v387[0];
      sub_18E207FF8();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v339;
      }

      v225 = v387[5];
      v226 = v387[2];
      sub_18E1E2D1C();
      sub_18E29680C(v224, v227);
      sub_18E1E3010();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v340;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v226, v228);
      sub_18E1E30DC();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v341;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v225, v229);
      sub_18E1E148C();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v342;
      }

      sub_18E1E2D1C();
      sub_18E29680C(v221, v230);
      sub_18E220478();
      sub_18E1C850C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v343;
      }

      sub_18E1E2D1C();
      goto LABEL_142;
    case 0x11:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v255 = v254 & ~v253;
      v123 = swift_allocObject();
      v123[1] = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      v256 = v123[1].n128_u64[0];
      v257 = v387[17];
      v258 = v387[13];
      v259 = v387[3];
      if (v256 >= v123[1].n128_u64[1] >> 1)
      {
        sub_18E1C6AE8();
        v123 = v355;
      }

      v123[1].n128_u64[0] = v256 + 1;
      sub_18E29680C(v82, v123 + v255 + v256 * v93);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v356;
      }

      v222 = v387[20];
      sub_18E1C6524();
      sub_18E29680C(v79, v260);
      sub_18E25E158();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v357;
      }

      v261 = v387[7];
      sub_18E1C6524();
      sub_18E29680C(v388, v262);
      sub_18E207FF8();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v358;
      }

      sub_18E1C6524();
      sub_18E29680C(v259, v263);
      sub_18E1E3010();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v359;
      }

      sub_18E1C6524();
      sub_18E29680C(v261, v264);
      sub_18E1E30DC();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v360;
      }

      sub_18E1C6524();
      sub_18E29680C(v258, v265);
      sub_18E1E148C();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v361;
      }

      sub_18E1C6524();
      sub_18E29680C(v257, v266);
      sub_18E220478();
      sub_18E1C297C();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v362;
      }

      sub_18E1C6524();
      goto LABEL_142;
    case 0x12:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v123 = sub_18E224DFC();
      sub_18E1E39CC(v123, xmmword_18E49E5C0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      v222 = v387[24];
      v267 = v387[21];
      v268 = v387[18];
      v269 = v387[14];
      v270 = v387[10];
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v368;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v387[35], v277);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v369;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v389, v278);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v370;
      }

      sub_18E1C4FAC();
      v276 = v391;
      goto LABEL_131;
    case 0x13:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v123 = sub_18E224DFC();
      sub_18E1E39CC(v123, xmmword_18E49E5C0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      v231 = v387[22];
      v232 = v387[19];
      v233 = v387[16];
      v234 = v387[12];
      v235 = v387[6];
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v344;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v390, v236);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v345;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v235, v237);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v346;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v234, v238);
      sub_18E1D7DD0();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v347;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v233, v239);
      sub_18E1CD990();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v348;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v232, v240);
      sub_18E1D0300();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v349;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v231, v241);
      sub_18E1CD8C4();
      sub_18E2244DC();
      if (v180)
      {
        v350 = sub_18E1C8C60(v242);
        sub_18E1CD744(v350, (v105 + 1));
        sub_18E1D5BE8(v351);
      }

      v243 = v387[30];
      v244 = sub_18E21D0F8();
      sub_18E296718(v244, v245);
      sub_18E1DD53C();
      sub_18E2244DC();
      if (v180)
      {
        v352 = sub_18E1C8C60(v246);
        sub_18E1CD744(v352, (v105 + 1));
        sub_18E1D5BE8(v353);
      }

      v247 = v105;
      v248 = v243;
      goto LABEL_167;
    case 0x14:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v249 = sub_18E1E3794();
      *(v249 + 16) = xmmword_18E49E5C0;
      sub_18E220A68();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      v250 = sub_18E1C8A58();
      v251 = v387[8];
      sub_18E1CD514(v250);
      sub_18E221C38();
      if (v180)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v354);
      }

      v252 = sub_18E1CF8F4();
      sub_18E296718(v252, v251);
      v408 = v249;
      goto LABEL_11;
    case 0x15:
      v267 = v119;
      v222 = v116;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v123 = sub_18E1D5E44();
      sub_18E1E39CC(v123, xmmword_18E49E5B0);
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E8980();
      sub_18E1CF450();
      sub_18E1C77A0();
      v268 = v387[33];
      v269 = v387[31];
      v270 = v387[26];
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v363;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v392, v271);
      sub_18E1E0F98();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v364;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v393, v272);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v365;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v394, v273);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v366;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v396, v274);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v367;
      }

      sub_18E1C4FAC();
      v276 = v398;
LABEL_131:
      sub_18E29680C(v276, v275);
      sub_18E207FF8();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v312;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v270, v279);
      sub_18E1E3010();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v313;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v269, v280);
      sub_18E1E30DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v314;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v268, v281);
      sub_18E1E148C();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v315;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v267, v282);
      sub_18E220478();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v316;
      }

      sub_18E1C4FAC();
LABEL_142:
      v214 = v222;
LABEL_143:
      sub_18E29680C(v214, v213);
      return v123;
    case 0x16:
      v283 = v117;
      v284 = v114;
      v285 = v112;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v286 = sub_18E1D5E44();
      sub_18E28A6A0(v286, 7);
      sub_18E1FF288();
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E8980();
      sub_18E1CF450();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v288 = v387[34];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18E1CD744(0, v123[1].n128_u64[0] + 1);
        v123 = v371;
      }

      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v372;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v395, v289);
      sub_18E1E0F98();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v373;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v397, v290);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v374;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v400, v291);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v375;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v402, v292);
      sub_18E25E158();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v376;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v404, v293);
      sub_18E207FF8();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v377;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v288, v294);
      sub_18E1E3010();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v378;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v283, v295);
      sub_18E1E30DC();
      sub_18E1C77A0();
      if (v180)
      {
        sub_18E1C6AE8();
        v123 = v379;
      }

      sub_18E1C4FAC();
      sub_18E29680C(v284, v296);
      sub_18E1E148C();
      sub_18E2244DC();
      if (v180)
      {
        v380 = sub_18E1C8C60(v297);
        sub_18E1CD744(v380, (v105 + 1));
        sub_18E1D5BE8(v381);
      }

      sub_18E296718(v105, v285);
      sub_18E220478();
      sub_18E2244DC();
      if (v180)
      {
        v382 = sub_18E1C8C60(v298);
        sub_18E1CD744(v382, (v105 + 1));
        sub_18E1D5BE8(v383);
      }

      v247 = sub_18E1E6BB0();
LABEL_167:
      sub_18E296718(v247, v248);
      return v123;
    case 0x17:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v191 = sub_18E1CBDE8();
      sub_18E28A6A0(v191, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v192 = v387[23];
      sub_18E1CF450();
      v193 = swift_isUniquelyReferenced_nonNull_native();
      v408 = v105;
      if ((v193 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v326);
      }

      if (*(v105 + 2) >= *(v105 + 3) >> 1)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v327);
      }

      v194 = sub_18E1CF8F4();
      sub_18E296718(v194, v192);
      v408 = v105;
      goto LABEL_8;
    case 0x18:
      v173 = v118;
      v174 = v115;
      v175 = v113;
      v176 = v121;
      v177 = v120;
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v178 = swift_allocObject();
      sub_18E28A6A0(v178, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      sub_18E1CF450();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C5B2C();
        v105 = v317;
      }

      sub_18E1CAD04();
      if (v180)
      {
        sub_18E1C5C70(v179);
        sub_18E3EFF88();
        v105 = v318;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v399, v181);
      sub_18E1E0F98();
      sub_18E1CAD04();
      if (v180)
      {
        sub_18E1C5C70(v182);
        sub_18E3EFF88();
        v105 = v319;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v401, v183);
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1CAD04();
      if (v180)
      {
        sub_18E1C5C70(v184);
        sub_18E3EFF88();
        v105 = v320;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v403, v185);
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E1CAD04();
      if (v180)
      {
        sub_18E1C5C70(v186);
        sub_18E3EFF88();
        v105 = v321;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v405, v187);
      sub_18E25E158();
      sub_18E1CAD04();
      if (v180)
      {
        sub_18E1C5C70(v188);
        sub_18E3EFF88();
        v105 = v322;
      }

      sub_18E1CA6C4();
      sub_18E29680C(v173, v189);
      sub_18E1D7DD0();
      sub_18E221C38();
      if (v180)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v323);
      }

      v190 = sub_18E1CF8F4();
      sub_18E296718(v190, v174);
      sub_18E1CD990();
      sub_18E221C38();
      if (v180)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v324);
      }

      sub_18E296718(v82, v175);
      sub_18E1D0300();
      sub_18E221C38();
      if (v180)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v325);
      }

      sub_18E296718(v82, v176);
      v408 = v105;
      sub_18E1E148C();
      sub_18E286968();
      sub_18E1D00B8();
      sub_18E296718(v105, v177);
      sub_18E1DD53C();
      sub_18E286968();
      sub_18E1D00B8();
      v149 = v105;
      v150 = v177;
      goto LABEL_12;
    case 0x19:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v303 = sub_18E1CBDE8();
      sub_18E28A6A0(v303, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v304 = v387[28];
      sub_18E1CF450();
      v305 = swift_isUniquelyReferenced_nonNull_native();
      v408 = v105;
      v306 = v387[32];
      if ((v305 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v384);
      }

      v307 = *(v105 + 2);
      if (v307 >= *(v105 + 3) >> 1)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v385);
      }

      v308 = sub_18E1CF8F4();
      sub_18E296718(v308, v304);
      sub_18E1E0F98();
      sub_18E221C38();
      if (v180)
      {
        sub_18E1C596C();
        sub_18E1CA28C(v386);
      }

      sub_18E296718(v307, v306);
      v309 = sub_18E1C8A58();
      sub_18E1E2C6C(v309);
      v408 = v105;
      v133 = *(v105 + 2);
      goto LABEL_10;
    case 0x1A:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v171 = sub_18E1CBDE8();
      sub_18E28A6A0(v171, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v172 = &v409;
      goto LABEL_169;
    case 0x1B:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v299 = sub_18E1CBDE8();
      sub_18E28A6A0(v299, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v172 = &v410;
LABEL_169:
      v300 = *(v172 - 32);
      sub_18E1CF450();
      v301 = swift_isUniquelyReferenced_nonNull_native();
      v408 = v105;
      if ((v301 & 1) == 0)
      {
        sub_18E1C5B2C();
        sub_18E1CA28C(v311);
      }

      v302 = *(v105 + 2);
      sub_18E2869B0(v302);
      v128 = v302;
      v129 = v300;
      goto LABEL_7;
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x2E:
    case 0x30:
    case 0x56:
    case 0x57:
    case 0x78:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v127 = sub_18E1CBDE8();
      sub_18E28A6A0(v127, 7);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E223CC0();
      v408 = v105;
      sub_18E1CF450();
      sub_18E286968();
      sub_18E1D00B8();
      v128 = sub_18E21D0F8();
LABEL_7:
      sub_18E296718(v128, v129);
LABEL_8:
      sub_18E1E0F98();
      sub_18E286968();
      sub_18E1D00B8();
      v130 = sub_18E21D0F8();
      sub_18E296718(v130, v131);
      v132 = sub_18E1C8A58();
      sub_18E1E2C6C(v132);
      goto LABEL_9;
    case 0x26:
    case 0x28:
    case 0x2D:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3D:
    case 0x3E:
    case 0x43:
    case 0x44:
    case 0x46:
    case 0x47:
    case 0x52:
    case 0x6D:
    case 0x74:
    case 0x77:
    case 0x79:
    case 0x7A:
    case 0x7B:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v125 = swift_allocObject();
      sub_18E28A6A0(v125, 9);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E1F8C();
      sub_18E1E0F98();
      v408 = v105;
      v126 = sub_18E1C8A58();
      sub_18E1E2C6C(v126);
LABEL_9:
      sub_18E286968();
      v133 = *(v408 + 2);
LABEL_10:
      sub_18E2869B0(v133);
      v134 = sub_18E21D0F8();
      sub_18E296718(v134, v135);
LABEL_11:
      v136 = sub_18E1C66E4();
      sub_18E1E2C6C(v136);
      sub_18E286968();
      sub_18E1D00B8();
      v137 = sub_18E21D0F8();
      sub_18E296718(v137, v138);
      sub_18E25E158();
      sub_18E286968();
      sub_18E1D00B8();
      v139 = sub_18E21D0F8();
      sub_18E296718(v139, v140);
      sub_18E1D7DD0();
      sub_18E286968();
      sub_18E1D00B8();
      v141 = sub_18E21D0F8();
      sub_18E296718(v141, v142);
      sub_18E1CD990();
      sub_18E286968();
      sub_18E1D00B8();
      v143 = sub_18E21D0F8();
      sub_18E296718(v143, v144);
      sub_18E1D0300();
      sub_18E286968();
      sub_18E1D00B8();
      v145 = sub_18E21D0F8();
      sub_18E296718(v145, v146);
      sub_18E1CD8C4();
      sub_18E286968();
      sub_18E1D00B8();
      v147 = sub_18E21D0F8();
      sub_18E296718(v147, v148);
      sub_18E1DD53C();
      sub_18E286968();
      sub_18E1D00B8();
      v149 = sub_18E21D0F8();
      goto LABEL_12;
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2F:
    case 0x35:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x51:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
    case 0x5F:
    case 0x60:
    case 0x61:
    case 0x62:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6A:
    case 0x6B:
    case 0x6C:
    case 0x6E:
    case 0x6F:
    case 0x70:
    case 0x71:
    case 0x72:
    case 0x73:
    case 0x75:
    case 0x76:
    case 0x7C:
    case 0x7D:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v124 = swift_allocObject();
      sub_18E28A6A0(v124, 17);
      sub_18E1FF288();
      goto LABEL_3;
    case 0x3F:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
    case 0x50:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C81D0();
      v152 = swift_allocObject();
      sub_18E28A6A0(v152, 8);
      sub_18E1C6334();
      sub_18E1D4C20();
      sub_18E2345AC();
      sub_18E1C86EC();
      sub_18E1E6644();
      sub_18E1D6058();
      sub_18E1E3864();
      sub_18E1CF450();
      sub_18E1E8980();
      v408 = v105;
      sub_18E1E0F98();
      sub_18E286968();
      sub_18E1D00B8();
      v153 = sub_18E1E6BB0();
      sub_18E296718(v153, v154);
      v155 = sub_18E1C8A58();
      sub_18E1CD514(v155);
      sub_18E286968();
      sub_18E1D00B8();
      v156 = sub_18E1E6BB0();
      sub_18E296718(v156, v157);
      v158 = sub_18E1C66E4();
      sub_18E1CD514(v158);
      sub_18E286968();
      sub_18E1D00B8();
      v159 = sub_18E1E6BB0();
      sub_18E296718(v159, v160);
      sub_18E25E158();
      sub_18E286968();
      sub_18E1D00B8();
      v161 = sub_18E1E6BB0();
      sub_18E296718(v161, v162);
      sub_18E1D7DD0();
      sub_18E286968();
      sub_18E1D00B8();
      v163 = sub_18E1E6BB0();
      sub_18E296718(v163, v164);
      sub_18E1CD990();
      sub_18E286968();
      sub_18E1D00B8();
      v165 = sub_18E1E6BB0();
      sub_18E296718(v165, v166);
      sub_18E1D0300();
      sub_18E286968();
      sub_18E1D00B8();
      v167 = sub_18E1E6BB0();
      sub_18E296718(v167, v168);
      sub_18E1CD8C4();
      sub_18E286968();
      sub_18E1D00B8();
      v169 = sub_18E1E6BB0();
      sub_18E296718(v169, v170);
      sub_18E220478();
      sub_18E286968();
      sub_18E1D00B8();
      v149 = sub_18E1E6BB0();
LABEL_12:
      sub_18E296718(v149, v150);
      return v408;
    case 0x45:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v310 = swift_allocObject();
      sub_18E28A6A0(v310, 25);
      sub_18E1FF288();
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E25E158();
      sub_18E1D7DD0();
      sub_18E1CD990();
      sub_18E1D0300();
      sub_18E1CD8C4();
      sub_18E1DD53C();
      sub_18E1E0F98();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      sub_18E44E6DC();
      goto LABEL_4;
    default:
      sub_18E2706EC(&qword_1EABE1258, &qword_18E4E2660);
      sub_18E1C5318();
      v123 = swift_allocObject();
      v123[1] = xmmword_18E49E5D0;
LABEL_3:
      sub_18E220A68();
      sub_18E1E64C0();
      sub_18E1C970C();
      sub_18E2112A0();
      sub_18E1CAE34();
      sub_18E1E1CD8();
      sub_18E1E2B64();
      sub_18E1C8FA8();
      sub_18E1E0F98();
      sub_18E1C8A58();
      sub_18E44E6DC();
      sub_18E1C66E4();
      sub_18E44E6DC();
      sub_18E25E158();
      sub_18E1D7DD0();
      sub_18E1CD990();
      sub_18E1D0300();
      sub_18E1CD8C4();
LABEL_4:
      sub_18E44E6DC();
      return v123;
  }
}

uint64_t static UseCaseIdentifier.Metadata.Availability.externalModelProviders(for:)(_BYTE *a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  switch(*a1)
  {
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x15:
    case 0x31:
    case 0x7C:
    case 0x7D:
      if (qword_1ED6A7AD0 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED6A7AD8;
      v3 = unk_1ED6A7AE0;
      v5 = byte_1ED6A7AE8;
      v6 = qword_1ED6A7AF0;
      v7 = unk_1ED6A7AF8;
      v8 = byte_1ED6A7B00;

      sub_18E3F0050();
      v1 = v9;
      v10 = *(v9 + 16);
      v11 = v10 + 1;
      if (v10 >= *(v9 + 24) >> 1)
      {
        v14 = *(v9 + 16);
        v15 = v10 + 1;
        sub_18E3F0050();
        v10 = v14;
        v11 = v15;
        v1 = v13;
      }

      *(v1 + 16) = v11;
      v12 = v1 + 48 * v10;
      *(v12 + 32) = v4;
      *(v12 + 40) = v3;
      *(v12 + 48) = v5;
      *(v12 + 56) = v6;
      *(v12 + 64) = v7;
      *(v12 + 72) = v8;
      break;
    default:
      return v1;
  }

  return v1;
}

__n128 *static UseCaseIdentifier.Metadata.Disablement.disabledLanguages(for:)(_BYTE *a1)
{
  v2 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v38) = *a1;
  result = static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(&v38);
  if (result)
  {
    v7 = result;
    if (qword_1ED6A97A0 != -1)
    {
      swift_once();
    }

    v8 = off_1ED6A97A8;
    v9 = *(off_1ED6A97A8 + 2);
    v10 = MEMORY[0x1E69E7CC0];
    v37 = v7;
    if (v9)
    {
      v38 = MEMORY[0x1E69E7CC0];
      sub_18E26F1E0(0, v9, 0);
      v11 = v38;
      v12 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v36 = v3;
      v13 = *(v3 + 72);
      do
      {
        sub_18E296870(v12, v5);
        v14 = sub_18E44E6CC();
        v16 = v15;
        sub_18E2968D4(v5);
        v38 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = sub_18E1C8C60(v17);
          sub_18E26F1E0(v20, v18 + 1, 1);
          v11 = v38;
        }

        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v12 += v13;
        --v9;
      }

      while (v9);
      v3 = v36;
      v7 = v37;
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v21 = sub_18E207C7C(v11);
    v22 = v21;
    v23 = v7[1].n128_i64[0];
    if (v23)
    {
      v36 = v21;
      v38 = v10;
      sub_18E26F1E0(0, v23, 0);
      v10 = v38;
      v24 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v25 = *(v3 + 72);
      do
      {
        sub_18E296870(v24, v5);
        v26 = sub_18E44E6CC();
        v28 = v27;
        sub_18E2968D4(v5);
        v38 = v10;
        v30 = *(v10 + 16);
        v29 = *(v10 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = sub_18E1C8C60(v29);
          sub_18E26F1E0(v32, v30 + 1, 1);
          v10 = v38;
        }

        *(v10 + 16) = v30 + 1;
        v31 = v10 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v24 += v25;
        --v23;
      }

      while (v23);

      v22 = v36;
    }

    else
    {
    }

    v33 = sub_18E207C7C(v10);
    v34 = sub_18E296620(v33, v22);

    return sub_18E292FCC(v34);
  }

  return result;
}

uint64_t sub_18E296620(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_18E297010(a1);
    return a2;
  }

  else
  {

    return sub_18E29713C(a1, a2);
  }
}

__n128 *static UseCaseIdentifier.Metadata.Disablement.disabledRegions(for:)(char *a1)
{
  v2 = *a1;
  result = static UseCaseIdentifier.Metadata.Enablement.enabledCriteria(for:)(&v2);
  if (result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t static UseCaseIdentifier.Metadata.Safety.isDonationBlocked(for:)(unsigned __int8 *a1)
{
  result = 0;
  v3 = *a1;
  switch(v3)
  {
    case 14:
    case 15:
    case 17:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 51:
    case 52:
    case 56:
    case 60:
    case 63:
    case 78:
      return result;
    case 16:
    case 18:
    case 19:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 53:
    case 54:
    case 55:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
      goto LABEL_7;
    default:
      v4 = v3 - 89;
      v5 = v4 > 0x1D;
      v6 = (1 << v4) & 0x3600FC2B;
      if (v5 || v6 == 0)
      {
LABEL_7:
        result = 1;
      }

      break;
  }

  return result;
}

uint64_t sub_18E296718(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = *(type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1;

  return sub_18E29680C(a2, v7);
}

uint64_t type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(uint64_t a1)
{
  result = qword_1ED6A9830;
  if (!qword_1ED6A9830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E29680C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E296870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E2968D4(uint64_t a1)
{
  v2 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18E296934()
{
  result = qword_1EABE1260;
  if (!qword_1EABE1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1260);
  }

  return result;
}

unint64_t sub_18E29698C()
{
  result = qword_1ED6A7C90;
  if (!qword_1ED6A7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7C90);
  }

  return result;
}

uint64_t sub_18E296A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18E296A7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_18E296ABC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for UseCaseIdentifier.DownloadCondition.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UseCaseIdentifier.DownloadCondition.Identifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E296CC8(uint64_t a1)
{
  result = sub_18E44E6FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s12ModelCatalog17UseCaseIdentifierV8MetadataOwst_0_0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E296E14()
{
  result = qword_1EABE1270;
  if (!qword_1EABE1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1270);
  }

  return result;
}

unint64_t sub_18E296E6C()
{
  result = qword_1EABE1278;
  if (!qword_1EABE1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1278);
  }

  return result;
}

unint64_t sub_18E296EC0()
{
  result = qword_1EABE1280;
  if (!qword_1EABE1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1280);
  }

  return result;
}

unint64_t sub_18E296F14()
{
  result = qword_1EABE1288;
  if (!qword_1EABE1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1288);
  }

  return result;
}

unint64_t sub_18E296F68()
{
  result = qword_1EABE1290;
  if (!qword_1EABE1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1290);
  }

  return result;
}

unint64_t sub_18E296FBC()
{
  result = qword_1EABE1298;
  if (!qword_1EABE1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE1298);
  }

  return result;
}

uint64_t sub_18E297010(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
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
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_18E297614(v12, v13);

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
        return result;
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

  return result;
}

uint64_t sub_18E29713C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v72 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v52 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v54 = v12;
    v55 = v7;
    v56 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_18E44F48C();

        sub_18E44EB4C();
        v20 = sub_18E44F4CC();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_18E44F3CC() & 1) != 0)
          {
            v69 = v52;
            v70 = v16;
            v71 = v11;
            v3 = v55;
            v12 = v56;
            v67 = v56;
            v68 = v55;

            v25 = *(v5 + 32);
            v49 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v49;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v50 = &v48;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v48 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v30 = *(v7 + 8 * v4) & ~v8;
              v31 = *(v5 + 16);
              v53 = v7;
              *(v7 + 8 * v4) = v30;
              v32 = v31 - 1;
              v33 = v54;
              while (1)
              {
                v51 = v32;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v35 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v36 = (*(v12 + 48) + ((v16 << 10) | (16 * v35)));
                v2 = *v36;
                v37 = v36[1];
                sub_18E44F48C();

                sub_18E44EB4C();
                v38 = sub_18E44F4CC();
                v39 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v38 & v39;
                  v7 = (v38 & v39) >> 6;
                  v8 = 1 << (v38 & v39);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v55;
                    v12 = v56;
                    v33 = v54;
                    goto LABEL_24;
                  }

                  v40 = (*(v5 + 48) + 16 * v4);
                  if (*v40 == v2 && v40[1] == v37)
                  {
                    break;
                  }

                  v42 = sub_18E44F3CC();
                  v38 = v4 + 1;
                }

                while ((v42 & 1) == 0);

                v43 = *(v53 + 8 * v7);
                *(v53 + 8 * v7) = v43 & ~v8;
                v3 = v55;
                v12 = v56;
                v33 = v54;
                if ((v43 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v32 = v51 - 1;
                if (__OFSUB__(v51, 1))
                {
                  __break(1u);
                }

                if (v51 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v34 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v34 >= v33)
                {
                  sub_18E3F5ED4(v53, v49, v51, v5, v26, v27, v28, v29, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
                  v5 = v44;
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v34);
                ++v16;
                if (v11)
                {
                  v16 = v34;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v46 = swift_slowAlloc();
            v47 = sub_18E297928(v46, v49, (v5 + 56), v49, v5, v7, &v67);

            MEMORY[0x193ACD400](v46, -1, -1);
            v52 = v69;
            v5 = v47;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v55;
        v14 = v56;
        v12 = v54;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_18E246F7C();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_18E297614(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_18E44F48C();
  sub_18E44EB4C();
  v6 = sub_18E44F4CC();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_18E44F3CC() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E3F4028();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_18E2979B0(v8);
  *v2 = v15;
  return v13;
}

void sub_18E29773C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v31 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_18E44F48C();

    sub_18E44EB4C();
    v16 = sub_18E44F4CC();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_18E44F3CC();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = *(result + 8 * v19);
    *(result + 8 * v19) = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
      goto LABEL_23;
    }

    if (v31 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_18E3F5ED4(result, a2, v31, a3, v25, v26, v27, v28, a2, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, result, v43, v44, v45, v46, v47, v48, v49, v50);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18E297928(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_18E29773C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_18E2979B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_18E44EF6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_18E44F48C();

        sub_18E44EB4C();
        v10 = sub_18E44F4CC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

uint64_t defaultAJAXConfirguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v175 = a3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18E1C64E0();
  v155 = v6;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C617C();
  v157 = v8;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C617C();
  v159 = v10;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C617C();
  v161 = v12;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C617C();
  v163 = v14;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C617C();
  v165 = v16;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C617C();
  v167 = v18;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E1C617C();
  v169 = v20;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v21);
  sub_18E1C617C();
  v170 = v22;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1C617C();
  v171 = v24;
  sub_18E1C6668();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &i - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &i - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &i - v32;
  v176 = sub_18E44E54C();
  v174 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  sub_18E1C64E0();
  i = v34;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C617C();
  v156 = v36;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C617C();
  v158 = v38;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C617C();
  v160 = v40;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1C617C();
  v162 = v42;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1C617C();
  v164 = v44;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v45);
  sub_18E1C617C();
  v166 = v46;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v47);
  sub_18E1C617C();
  v168 = v48;
  sub_18E1C6668();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &i - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &i - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &i - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = (&i - v60);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &i - v62;
  sub_18E1C77BC();
  v172 = a1;
  v173 = a2;
  v66 = a1 == v65 + 19 && v64 == a2;
  if (v66 || (sub_18E1D6078(v65 + 19, v64) & 1) != 0)
  {
    sub_18E44E50C();
    v67 = v176;
    if (sub_18E1CAF28(v33, 1, v176) != 1)
    {
      sub_18E1C8E0C();
      v68 = v63;
      v69 = v33;
LABEL_8:
      v61(v68, v69, v67);
      v70 = sub_18E1C851C();
      v61(v70, v63, v67);
      sub_18E1C5990();
      sub_18E1C7EE4();
      v74 = 0xD000000000000010;
LABEL_9:
      *v73 = v74;
      v73[1] = v61;
LABEL_10:
      v75 = &v31[*(v71 + 24)];
      *v75 = 0;
      *(v75 + 1) = 0xE000000000000000;
      return sub_18E201DC8(v31, 0, 1, v72);
    }

    sub_18E29897C(v33);
    sub_18E1C81E4();
    i = 13;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v80 = v66 && v78 == v79;
  if (v80 || (sub_18E1D6078(v77, v78) & 1) != 0)
  {
    sub_18E44E50C();
    v81 = v176;
    if (sub_18E1CAF28(v31, 1, v176) != 1)
    {
      v82 = *(v174 + 32);
      v82(v61, v31, v81);
      v83 = sub_18E1C851C();
      v82(v83, v61, v81);
      sub_18E1C5990();
      sub_18E1C7EE4();
      v74 = 0xD000000000000010;
      goto LABEL_9;
    }

    sub_18E29897C(v31);
    sub_18E1C81E4();
    i = 18;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v87 = v66 && v85 == v86;
  if (v87 || (sub_18E1D6078(v84, v85) & 1) != 0)
  {
    sub_18E44E50C();
    v88 = v176;
    if (sub_18E1CAF28(v28, 1, v176) != 1)
    {
      v61 = *(v174 + 32);
      v61(v58, v28, v88);
      v89 = sub_18E1C851C();
      v61(v89, v58, v88);
      sub_18E1C5990();
      sub_18E1C7EE4();
      v74 = 0xD000000000000010;
      goto LABEL_9;
    }

    sub_18E29897C(v28);
    sub_18E1C81E4();
    i = 23;
    goto LABEL_109;
  }

  sub_18E1C77BC();
  sub_18E1C55B8();
  v93 = v66 && v91 == v92;
  if (v93 || (sub_18E1D6078(v90, v91) & 1) != 0)
  {
    sub_18E1C77B0();
    v31 = v171;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (v66)
    {
      sub_18E29897C(v31);
      sub_18E1C81E4();
      i = 28;
      goto LABEL_109;
    }

    sub_18E1CAFA4();
    sub_18E1C689C();
    (v61)();
    v94 = sub_18E1C851C();
    v61(v94, v55, v28);
    type metadata accessor for AJAXConfiguration(0);
    sub_18E1C6B0C();
    v98 = v97 - 512;
LABEL_40:
    *v95 = v96;
    v95[1] = v98;
    goto LABEL_10;
  }

  sub_18E1C77B0();
  v31 = 0xD000000000000033;
  v100 = v172 == 0xD000000000000033 && v99 == v173;
  if (v100 || (sub_18E1D6078(0xD000000000000033, v99) & 1) != 0)
  {
    sub_18E1C77B0();
    v31 = v170;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v66)
    {
      sub_18E1CAFA4();
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v101 = sub_18E1C851C();
      v102 = v52;
LABEL_39:
      MEMORY[0xD000000000000026](v101, v102, v28);
      type metadata accessor for AJAXConfiguration(0);
      sub_18E1C6B0C();
      goto LABEL_40;
    }

    sub_18E29897C(v31);
    sub_18E1C81E4();
    v152 = 33;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v105 = v66 && v103 == v104;
  if (v105 || (sub_18E1D6078(0xD000000000000033, v103) & 1) != 0)
  {
    sub_18E1C77B0();
    v31 = v169;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v66)
    {
      sub_18E1CAFA4();
      v106 = v168;
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v101 = sub_18E1C851C();
      v102 = v106;
      goto LABEL_39;
    }

    sub_18E29897C(v31);
    sub_18E1C81E4();
    v152 = 38;
LABEL_108:
    i = v152;
    goto LABEL_109;
  }

  sub_18E1C5C84();
  v109 = v66 && v107 == v108;
  if (v109 || (sub_18E1D6078(0xD000000000000033, v107) & 1) != 0)
  {
    sub_18E1C77B0();
    v31 = v167;
    sub_18E1C57DC();
    sub_18E1C5F0C();
    if (!v66)
    {
      sub_18E1CAFA4();
      sub_18E1C689C();
      MEMORY[0xD000000000000026]();
      v110 = sub_18E1C532C();
      MEMORY[0xD000000000000026](v110);
      type metadata accessor for AJAXConfiguration(0);
      sub_18E1C6B0C();
      v98 = v111 | 0x400;
      goto LABEL_40;
    }

    sub_18E29897C(v31);
    sub_18E1C81E4();
    v152 = 43;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v114 = v66 && v112 == v113;
  if (v114 || (sub_18E1D6078(0xD000000000000033, v112) & 1) != 0)
  {
    sub_18E1C77B0();
    v31 = v165;
    sub_18E1C57DC();
    if (sub_18E1CAF28(v31, 1, v176) != 1)
    {
      sub_18E1CAFA4();
      v115 = sub_18E1C870C();
      MEMORY[0xD000000000000026](v115);
      v116 = sub_18E1C532C();
      MEMORY[0xD000000000000026](v116);
      type metadata accessor for AJAXConfiguration(0);
      sub_18E1C6B0C();
      v98 = v117 + 1280;
      goto LABEL_40;
    }

    sub_18E29897C(v165);
    sub_18E1C81E4();
    v152 = 48;
    goto LABEL_108;
  }

  sub_18E1C5C84();
  v120 = v66 && v118 == v119;
  if (v120 || (sub_18E1D6078(0xD000000000000033, v118) & 1) != 0)
  {
    sub_18E1C77B0();
    v121 = v163;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (v66)
    {
      goto LABEL_110;
    }

    sub_18E1CAFA4();
    v122 = sub_18E1C870C();
    v121(v122);
    v123 = sub_18E1C532C();
    v121(v123);
    type metadata accessor for AJAXConfiguration(0);
    sub_18E1C6B0C();
    v98 = v124 + 1536;
    goto LABEL_40;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v128 = v66 && v126 == v127;
  if (v128 || (sub_18E1D6078(v125, v126) & 1) != 0)
  {
    sub_18E1C77B0();
    v129 = v161;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v66)
    {
      sub_18E1CAFA4();
      v130 = sub_18E1C870C();
      v129(v130);
      v131 = sub_18E1C532C();
      v129(v131);
      type metadata accessor for AJAXConfiguration(0);
      sub_18E1C7EE4();
      v96 = 0x65736E6F70736572;
      v98 = 0xEF36762D6E65672DLL;
      goto LABEL_40;
    }

    sub_18E29897C(v161);
    sub_18E1C81E4();
    v153 = 58;
LABEL_112:
    i = v153;
    goto LABEL_109;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v135 = v66 && v133 == v134;
  if (v135 || (sub_18E1D6078(v132, v133) & 1) != 0)
  {
    v61 = v159;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v66)
    {
      sub_18E1C8E0C();
      v63 = v158;
      v69 = v159;
      v68 = v158;
      v67 = v176;
      goto LABEL_8;
    }

    sub_18E29897C(v159);
    sub_18E1C81E4();
    for (i = 63; ; i = 53)
    {
LABEL_109:
      sub_18E44F14C();
      __break(1u);
LABEL_110:
      sub_18E29897C(v163);
      sub_18E1C81E4();
    }
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v139 = v66 && v137 == v138;
  if (v139 || (sub_18E1D6078(v136, v137) & 1) != 0)
  {
    v61 = v157;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v66)
    {
      sub_18E1C8E0C();
      v140 = v156;
      v141 = v176;
      v61(v156, v157, v176);
      v142 = sub_18E1C851C();
      v61(v142, v140, v141);
      sub_18E1C5990();
      sub_18E1C7EE4();
      v74 = 0xD000000000000029;
      goto LABEL_9;
    }

    sub_18E29897C(v157);
    sub_18E1C81E4();
    i = 68;
    goto LABEL_109;
  }

  sub_18E1C77B0();
  sub_18E1C55B8();
  v146 = v66 && v144 == v145;
  if (v146 || (sub_18E1D6078(v143, v144) & 1) != 0)
  {
    v61 = v155;
    sub_18E44E50C();
    sub_18E1C4FBC();
    if (!v66)
    {
      sub_18E1C8E0C();
      v147 = i;
      v148 = v176;
      v61(i, v155, v176);
      v149 = sub_18E1C851C();
      v61(v149, v147, v148);
      sub_18E1C5990();
      sub_18E1C7EE4();
      v74 = 0xD00000000000001ELL;
      goto LABEL_9;
    }

    sub_18E29897C(v155);
    sub_18E1C81E4();
    v153 = 73;
    goto LABEL_112;
  }

  v150 = type metadata accessor for AJAXConfiguration(0);
  v151 = v175;

  return sub_18E201DC8(v151, 1, 1, v150);
}

uint64_t sub_18E29897C(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E2989E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_18E26F220(0, v1, 0);
  v2 = v35;
  result = sub_18E32EE50();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v27 = v3 + 64;
  v28 = v1;
  v29 = v3 + 56;
  v30 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v33 = v6;
      v31 = v8;
      v32 = v5;
      v11 = *(v3 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v35 + 16);
      v16 = *(v35 + 24);

      if (v15 >= v16 >> 1)
      {
        result = sub_18E26F220((v16 > 1), v15 + 1, 1);
      }

      *(v35 + 16) = v15 + 1;
      v17 = v35 + (v15 << 6);
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = *v34;
      *(v17 + 52) = *&v34[3];
      *(v17 + 56) = 0u;
      *(v17 + 72) = 0u;
      *(v17 + 88) = 0;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v29;
      v3 = v30;
      v18 = 1 << *(v30 + 32);
      if (v7 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v30 + 36) != v32)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        v21 = v28;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_18E249F2C(v7, v32, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_18E249F2C(v7, v32, 0);
      }

LABEL_19:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v30 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
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

uint64_t sub_18E298C48@<X0>(void (*a1)(const void *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  a1(v2, v15);
  v5 = sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v15[23], v15[24], v15[25], v15[26], v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, __dst[0]))
  {
    sub_18E224478(&v16, &v21);
    sub_18E1E15F4(&v21, v22);
    sub_18E1C4FE0();
    return sub_18E1C9934(&v21);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    result = sub_18E298E58(&v16);
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t TokenOutputDenyList.cost.getter@<X0>(uint64_t a2@<X8>)
{
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v7, &v8);
    sub_18E1E15F4(&v8, v9);
    sub_18E1C4FE0();
    return sub_18E1C9934(&v8);
  }

  else
  {
    result = sub_18E1C5F54();
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_18E298E58(uint64_t a1)
{
  v2 = sub_18E2706EC(&qword_1EABE12A8, &qword_18E49EB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E298EC0(void (*a1)(const void *, uint64_t *), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  memcpy(__dst, v3, sizeof(__dst));
  a1(v3, v19);
  v6 = sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v19[13], v19[14], v19[15], v19[16], v19[17], v19[18], v19[19], v19[20], v19[21], v19[22], v19[23], v19[24], v19[25], v19[26], v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, __dst[0]))
  {
    sub_18E224478(&v20, &v25);
    sub_18E1E15F4(&v25, v26);
    v14 = sub_18E1C5C98();
    sub_18E1C9934(&v25);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v15 = sub_18E298E58(&v20);
    v16 = a3(v15);
    sub_18E2989E4(v16);

    return sub_18E292D44();
  }

  return v14;
}

uint64_t TokenOutputDenyList.executionContexts.getter(uint64_t a1, uint64_t a2)
{
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (swift_dynamicCast())
  {
    sub_18E224478(v12, &v13);
    sub_18E1E15F4(&v13, v14);
    v8 = sub_18E1C5C98();
    sub_18E1C9934(&v13);
  }

  else
  {
    sub_18E1C5F54();
    v9 = (*(*(*(a2 + 8) + 8) + 32))(a1);
    sub_18E2989E4(v9);

    return sub_18E292D44();
  }

  return v8;
}

uint64_t sub_18E299114@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = TokenOutputDenyList.executionContexts.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void sub_18E299168()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568(&qword_1ED6A8AB0);
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenOutputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void TokenOutputDenyList.executionContexts.setter()
{

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C5568(&qword_1ED6A8AB0);
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9870);
  oslog = sub_18E44E80C();
  v1 = sub_18E44EE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    sub_18E1C6358(&dword_18E1C1000, v3, v4, "TokenOutputDenyList: Cannot set execution contexts on custom deny list. Please override functionality if needed.", v5, v6, v7, v8, v9, oslog);
    MEMORY[0x193ACD400](v2, -1, -1);
  }
}

void (*TokenOutputDenyList.executionContexts.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = TokenOutputDenyList.executionContexts.getter(a2, a3);
  return sub_18E299354;
}

void sub_18E299354(uint64_t a1, char a2)
{
  if (a2)
  {

    TokenOutputDenyList.executionContexts.setter();
  }

  else
  {
    TokenOutputDenyList.executionContexts.setter();
  }
}

uint64_t sub_18E2993AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = sub_18E1C81F4();
  return sub_18E298C48(v9, v8);
}

uint64_t sub_18E2993F4()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C81F4();
  return sub_18E298EC0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E299450())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C81F4();
  *(v0 + 216) = sub_18E298EC0(v2, v3, sub_18E32EE3C);
  return sub_18E2994D0;
}

uint64_t sub_18E2994D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_18E1C5F34(a1, a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = sub_18E1C6B34();
  return sub_18E298C48(v9, v8);
}

uint64_t sub_18E29951C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_18E1C6B34();
  return sub_18E298EC0(v1, v2, sub_18E32EE3C);
}

uint64_t (*sub_18E299578())()
{
  v1 = sub_18E29965C(0xE8uLL);
  sub_18E1C5340(v1);
  v2 = sub_18E1C6B34();
  *(v0 + 216) = sub_18E298EC0(v2, v3, sub_18E32EE3C);
  return sub_18E29974C;
}

void sub_18E2995F8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_18E299168();
  }

  else
  {
    sub_18E299168();
  }

  free(v2);
}

void *sub_18E29965C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t static ParameterizedUseCase.genericUseCase(useCaseIdentifier:arguments:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  a3[1] = a2;
}

uint64_t _s12ModelCatalog20ParameterizedUseCaseV42SettingsAppleIntelligenceDownloadArgumentsV12languageCodeAE10Foundation6LocaleV08LanguageL0V_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18E44E6FC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_18E2997EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E49D9B0;
  *(inited + 32) = 0x65676175676E616CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_18E44E6CC();
  *(inited + 56) = v5;
  result = sub_18E44E9AC();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t static ParameterizedUseCase.spatialPhotosReliveMain(_:)@<X0>(void *a1@<X8>)
{
  result = sub_18E44E9AC();
  *a1 = 85;
  a1[1] = result;
  return result;
}

uint64_t sub_18E2998DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E299930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

_BYTE *sub_18E299A30(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18E299ADC(uint64_t a1, unsigned int a2)
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

uint64_t sub_18E299B2C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E299B80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_18E299B98(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t SubscriptionManagerProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedManager];
  return v0;
}

void sub_18E299C2C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 8)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20(&qword_1ED6A94F8);
    }

    v4 = sub_18E44E83C();
    sub_18E1C95EC(v4, qword_1ED6A98C0);
    v5 = sub_18E44E80C();
    v6 = sub_18E44EE1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_18E1C5F74();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      _os_log_impl(&dword_18E1C1000, v5, v6, "SubscriptionManagerProvider: Download status type of: %lu has not been accounted for", v7, 0xCu);
      sub_18E1C7EF4();
    }

    LOBYTE(v2) = 0;
  }

  *a2 = v2;
}

uint64_t SubscriptionManagerProvider.downloadStatus(subscribers:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E299D6C, 0, 0);
}

uint64_t sub_18E299D6C()
{
  v16 = v0;
  if (qword_1ED6A94F8 != -1)
  {
    sub_18E1C5C20(&qword_1ED6A94F8);
  }

  v2 = v0[20];
  v3 = sub_18E44E83C();
  v0[22] = sub_18E1C95EC(v3, qword_1ED6A98C0);

  v4 = sub_18E44E80C();
  v5 = sub_18E44EE2C();

  if (os_log_type_enabled(v4, v5))
  {
    sub_18E1C5F74();
    v6 = sub_18E1C5CE0();
    v15 = v6;
    *v2 = 136315138;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v7 = sub_18E44E99C();
    sub_18E1C9624(v7, v8, &v15);
    sub_18E1C8A68();
    *(v2 + 4) = v1;
    sub_18E1C820C(&dword_18E1C1000, v9, v10, "SubscriptionManagerProvider: Starting async request to retrieve download status for subscribers: %s");
    sub_18E1C9934(v6);
    sub_18E1C7EF4();
    sub_18E1C5008();
  }

  v11 = *(v0[21] + 16);
  v0[23] = sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  v12 = sub_18E44E97C();
  v0[24] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_18E299FDC;
  v13 = swift_continuation_init();
  v0[17] = sub_18E2706EC(&qword_1EABE12D0, &qword_18E49ECF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18E29A260;
  v0[13] = &unk_1F0141310;
  v0[14] = v13;
  [v11 downloadStatusForSubscribers:v12 queue:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18E299FDC()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18E29A0B0, 0, 0);
}

uint64_t sub_18E29A0B0()
{
  v15 = v0;
  v1 = *(v0 + 144);

  sub_18E299C2C(v1, &v13);
  v2 = v13;

  v3 = sub_18E44E80C();
  v4 = sub_18E44EE2C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_18E44E99C();
    sub_18E1C9624(v7, v8, &v14);
    sub_18E1C8A68();
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    *(v0 + 80) = v2;
    v9 = sub_18E44EB0C();
    sub_18E1C9624(v9, v10, &v14);
    sub_18E1C8A68();
    *(v6 + 14) = v5;
    _os_log_impl(&dword_18E1C1000, v3, v4, "SubscriptionManagerProvider: Async download status for subscribers: %s, returned download status: %s", v6, 0x16u);
    swift_arrayDestroy();
    sub_18E1C7EF4();
    sub_18E1C5008();
  }

  **(v0 + 152) = v2;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_18E29A260(uint64_t a1, uint64_t a2)
{
  v3 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));

  return sub_18E3FE484(v3, a2);
}

uint64_t SubscriptionManagerProvider.updateAssets(subscribers:detailedProgress:)()
{
  sub_18E1C52F0();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v5 = sub_18E44EE5C();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = sub_18E44EE4C();
  v1[34] = swift_task_alloc();
  sub_18E44E90C();
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E29A3C0, 0, 0);
}

uint64_t sub_18E29A3C0()
{
  v61 = v0;
  v1 = v0;
  if (qword_1ED6A94F8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v2 = *(v1 + 208);
    v3 = sub_18E44E83C();
    *(v1 + 288) = sub_18E1C95EC(v3, qword_1ED6A98C0);

    v4 = sub_18E44E80C();
    v5 = sub_18E44EE2C();

    if (os_log_type_enabled(v4, v5))
    {
      sub_18E1C5F74();
      v6 = sub_18E1C5CE0();
      v59[0] = v6;
      *v2 = 136315138;
      sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
      v7 = sub_18E44E99C();
      sub_18E1C9624(v7, v8, v59);
      sub_18E1C8A68();
      *(v2 + 4) = v1;
      sub_18E1C820C(&dword_18E1C1000, v9, v10, "SubscriptionManagerProvider: Starting request to update assets for subscribers: %s");
      sub_18E1C9934(v6);
      sub_18E1C7EF4();
      sub_18E1C5008();
    }

    v11 = *(v1 + 208);
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    sub_18E44EFFC();
    MEMORY[0x193ACC300](0xD000000000000035, 0x800000018E465850);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      break;
    }

    v50 = v1;
    v14 = *(v1 + 208);
    v60 = MEMORY[0x1E69E7CC0];
    sub_18E26F1E0(0, v12, 0);
    v15 = v60;
    v1 = sub_18E249F38();
    v18 = 0;
    v19 = v14 + 64;
    v53 = v12;
    if ((v1 & 0x8000000000000000) == 0)
    {
      while (v1 < 1 << *(v14 + 32))
      {
        v20 = v1 >> 6;
        if ((*(v19 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v14 + 36) != v16)
        {
          goto LABEL_31;
        }

        aBlock = v17;
        v57 = v18;
        v58 = v16;
        v21 = (*(v14 + 48) + 16 * v1);
        v22 = *v21;
        v23 = v21[1];
        v60 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);

        if (v25 >= v24 >> 1)
        {
          sub_18E26F1E0(v24 > 1, v25 + 1, 1);
          v15 = v60;
        }

        *(v15 + 16) = v25 + 1;
        v26 = v15 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v27 = 1 << *(v14 + 32);
        if (v1 >= v27)
        {
          goto LABEL_32;
        }

        v19 = v14 + 64;
        v28 = *(v14 + 64 + 8 * v20);
        if ((v28 & (1 << v1)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v14 + 36) != v58)
        {
          goto LABEL_34;
        }

        v29 = v28 & (-2 << (v1 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v1 & 0x7FFFFFFFFFFFFFC0;
          v30 = v53;
        }

        else
        {
          v31 = v20 << 6;
          v30 = v53;
          v32 = (v14 + 72 + 8 * v20);
          v33 = v20 + 1;
          while (v33 < (v27 + 63) >> 6)
          {
            v35 = *v32++;
            v34 = v35;
            v31 += 64;
            ++v33;
            if (v35)
            {
              sub_18E249F2C(v1, v58, aBlock & 1);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_21;
            }
          }

          sub_18E249F2C(v1, v58, aBlock & 1);
        }

LABEL_21:
        v18 = v57 + 1;
        if (v57 + 1 == v30)
        {
          v1 = v50;
          v13 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }

        v17 = 0;
        v16 = *(v14 + 36);
        v1 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_18E1C5C20(&qword_1ED6A94F8);
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v48 = *(v1 + 256);
  v36 = *(v1 + 248);
  v49 = *(v1 + 240);
  v51 = *(v1 + 232);
  v54 = *(v1 + 216);
  v55 = *(v1 + 224);
  v52 = *(v1 + 208);
  sub_18E29B230();
  *(v1 + 192) = v15;
  *(v1 + 296) = sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1E1638(&qword_1ED6A80E0, &unk_1EABE1160, &qword_18E49DDA0, MEMORY[0x1E69E6310]);
  v37 = sub_18E44EA0C();
  v39 = v38;

  MEMORY[0x193ACC300](v37, v39);

  sub_18E44E8FC();
  *(v1 + 200) = v13;
  sub_18E29B274();
  sub_18E2706EC(&qword_1EABE12D8, &qword_18E49ED00);
  sub_18E1E1638(&qword_1ED6A7CB8, &qword_1EABE12D8, &qword_18E49ED00, MEMORY[0x1E69E6328]);
  sub_18E44EF4C();
  (*(v36 + 104))(v48, *MEMORY[0x1E69E8090], v49);
  v40 = sub_18E44EE6C();
  *(v1 + 304) = v40;
  v41 = *(v51 + 16);
  v42 = sub_18E44E97C();
  *(v1 + 312) = v42;
  v43 = swift_allocObject();
  v43[2] = v54;
  v43[3] = v55;
  v43[4] = v52;
  *(v1 + 176) = sub_18E29B2CC;
  *(v1 + 184) = v43;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  *(v1 + 152) = 1107296256;
  *(v1 + 160) = sub_18E29AF30;
  *(v1 + 168) = &unk_1F0141360;
  v44 = _Block_copy((v1 + 144));
  *(v1 + 320) = v44;

  v45 = v40;
  sub_18E29B2F0(v54, v55);

  *(v1 + 16) = v1;
  *(v1 + 24) = sub_18E29AABC;
  v46 = swift_continuation_init();
  *(v1 + 136) = sub_18E2706EC(&qword_1EABE12E0, &qword_18E49ED08);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_18E29AF98;
  *(v1 + 104) = &unk_1F0141388;
  *(v1 + 112) = v46;
  [v41 updateAssetsForSubscribers:v42 policies:0 queue:v45 detailedProgress:v44 completion:?];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_18E29AABC()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18E29AB90, 0, 0);
}

uint64_t sub_18E29AB90()
{
  v16 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 208);
  _Block_release(*(v0 + 320));

  v4 = sub_18E44E80C();
  LOBYTE(v1) = sub_18E44EE2C();

  v5 = os_log_type_enabled(v4, v1);
  v6 = *(v0 + 304);
  if (v5)
  {
    sub_18E1C5F74();
    v7 = sub_18E1C5CE0();
    v15 = v7;
    *v3 = 136315138;
    v8 = sub_18E44E99C();
    v10 = sub_18E1C9624(v8, v9, &v15);

    *(v3 + 4) = v10;
    sub_18E1C820C(&dword_18E1C1000, v11, v12, "SubscriptionManagerProvider: Finished request to update assets for subscribers: %s");
    sub_18E1C9934(v7);
    sub_18E1C5008();
    sub_18E1C5008();
  }

  v13 = *(v0 + 8);

  return v13();
}

void sub_18E29ACFC(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  [a1 completedPercent];
  v7 = v6;
  v8 = [a1 completedBytes];
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [a1 totalBytes];
  if (v10 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v11 = v10;
  sub_18E299C2C([a1 downloadStatus], v21);
  if (a2)
  {
    v12 = v21[0];
    v21[0] = v7;
    v21[1] = v9;
    v21[2] = v11;
    v22 = v12;

    a2(v21);
    sub_18E29B32C(a2);
  }

  if (qword_1ED6A94F8 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v13 = sub_18E44E83C();
  sub_18E1C95EC(v13, qword_1ED6A98C0);

  oslog = sub_18E44E80C();
  v14 = sub_18E44EE2C();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v15 = 136315138;
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    v17 = sub_18E44E99C();
    v19 = sub_18E1C9624(v17, v18, v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_18E1C1000, oslog, v14, "SubscriptionManagerProvider: Progress received for subscribers: %s", v15, 0xCu);
    sub_18E1C9934(v16);
    MEMORY[0x193ACD400](v16, -1, -1);
    MEMORY[0x193ACD400](v15, -1, -1);
  }
}

void sub_18E29AF30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_18E29AF98(uint64_t a1)
{
  v1 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_18E29AFEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E29B344;

  return SubscriptionManagerProvider.downloadStatus(subscribers:)(a1, a2);
}

uint64_t sub_18E29B098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E29B148;

  return SubscriptionManagerProvider.updateAssets(subscribers:detailedProgress:)();
}

uint64_t sub_18E29B148()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_18E29B230()
{
  result = qword_1ED6A7CA8;
  if (!qword_1ED6A7CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6A7CA8);
  }

  return result;
}

unint64_t sub_18E29B274()
{
  result = qword_1ED6A7CB0;
  if (!qword_1ED6A7CB0)
  {
    sub_18E44EE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7CB0);
  }

  return result;
}

uint64_t sub_18E29B2D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E29B2F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E29B32C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void static Catalog.ResourceBundle.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()()
{
  sub_18E2345C8();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin()();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()()
{
  sub_18E2345C8();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain()();
  sub_18E1E67A0(41);
}

void static Catalog.ResourceBundle.Motion.CoreMotionCalorimetryFMPredictedWRMets()()
{
  sub_18E2345C8();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets()();
  sub_18E1E67A0(66);
}

void static Catalog.ResourceBundle.Motion.CoreMotionCalorimetryReducedEmbeddings()()
{
  sub_18E2345C8();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.Motion.CoreMotionIMUFoundationModel()()
{
  sub_18E1E1FB0();
  sub_18E2430A0();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    v2 = sub_18E223A10();
    MEMORY[0x193ACC300](v2);
    sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44F0DC();
    sub_18E1CD52C("Fatal error", v3, v4, v5, v6, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  else
  {
    sub_18E221904("com.apple.fm.coremotion.imu_v1.base");
  }
}

void static Catalog.ResourceBundle.Overrides.TokenInputDenyListWithDefaults.TokenInputDenyListTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(46);
}

void static Catalog.ResourceBundle.Overrides.TokenOutputDenyListWithDefaults.TokenOutputDenyListWithDefaultsTemplate()()
{
  sub_18E2345C8();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  sub_18E1E67A0(47);
}

uint64_t static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListStructureExtractionSafetyWordList()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.TokenOutputRetainList.STXSafetyWordList(variant:)(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.tokenoutputretainlist.defaults.structure_extraction_safety_word_list", v21, v22, v23, v24, v25, v26, v27, v28);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](99, 0x800000018E465B20);
  v12 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4(v12, v13, v12, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v14, v15, v16);
  sub_18E22EA38();
  result = sub_18E1CD52C("Fatal error", v17, v18, v19, v20, "ModelCatalog/Resources.swift");
  __break(1u);
  return result;
}

uint64_t static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListWithDefaultsTemplate()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.TokenOutputRetainList.ProofreadingRetainList(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.tokenoutputretainlist.defaults.template", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](93, 0x800000018E465BD0);
  v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6, v7);
  sub_18E22EA38();
  result = sub_18E1CD52C("Fatal error", v8, v9, v10, v11, "ModelCatalog/Resources.swift");
  __break(1u);
  return result;
}

uint64_t static Catalog.ResourceBundle.SecureAnalytics.IntegrityDiagnoseModel()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.SecureAnalytics.Model.IntegrityDiagnoseModel(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.fm.integrity_diagnose.sa_v1.base", v13, v14, v15, v16, v17, v18, v19, v20);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  v3 = sub_18E223A10();
  MEMORY[0x193ACC300](v3);
  v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7, v8);
  sub_18E22EA38();
  result = sub_18E1CD52C("Fatal error", v9, v10, v11, v12, "ModelCatalog/Resources.swift");
  __break(1u);
  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMExperimental()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental()();
  static Catalog.Resource.LLM.Model.CodeLMExperimental()();
  sub_18E23527C();
  sub_18E1E67A0(35);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV1()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV2()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV3()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV4()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMLargeV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV5()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail()();
  sub_18E23527C();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV1()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV2()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV3()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV4()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMSmallV5()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV5()();
  sub_18E23527C();
  sub_18E1D01A8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLM()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV2()();
  static Catalog.Resource.LLM.Model.CodeLMV2()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV3()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV3()();
  static Catalog.Resource.LLM.Model.CodeLMV3()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV4()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV4()();
  static Catalog.Resource.LLM.Model.CodeLMV4()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DistilledMessagesAction()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesAction()();
  sub_18E23527C();
  sub_18E1E67A0(38);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DistilledMessagesReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesReply()();
  sub_18E23527C();
  sub_18E1E67A0(37);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.CodeSafetyGuardrail()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeSafetyGuardrail()();
  sub_18E23527C();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.VisualGenerationQueryHandlingLite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()();
  static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()();
  sub_18E23527C();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.DescribeYourEdit()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.DescribeYourEdit()();
  sub_18E246F88();
  sub_18E1E67A0(52);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ContentTagger()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ContentTagger()();
  sub_18E246F88();
  sub_18E1E67A0(55);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.LWOnDevicePlannerV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.LWOnDevicePlannerV1()();
  static Catalog.Resource.LLM.DraftModel.LWOnDevicePlannerV1()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PersonalizedSmartReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.PersonalizedSmartReply()();
  static Catalog.Resource.LLM.DraftModel.PersonalizedSmartReply()();
  sub_18E1C7F10();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems()();
  static Catalog.Resource.LLM.DraftModel.RemindersSuggestActionItems()();
  sub_18E1C7F10();
  sub_18E1E67A0(67);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3BV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3BV2()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3BV2()();
  sub_18E1C7F10();
  sub_18E1E67A0(64);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.SuggestRecipeItems()();
  static Catalog.Resource.LLM.DraftModel.SuggestRecipeItems()();
  sub_18E1C7F10();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.TextExpert()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.TextExpert()();
  static Catalog.Resource.LLM.DraftModel.TextExpert()();
  sub_18E1C7F10();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerAutograder()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.InstructServerAutograder()();
  sub_18E1CA16C();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.BaseAdapter()();
  sub_18E246F88();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerDescribeYourEdit()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerDescribeYourEdit()();
  sub_18E246F88();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.LWPlannerV1()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.LWPlannerV1()();
  static Catalog.Resource.LLM.DraftModel.LWPlannerV1()();
  sub_18E1C7F10();
  sub_18E1E67A0(54);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPersonalizedSmartReply()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerPersonalizedSmartReply()();
  static Catalog.Resource.LLM.DraftModel.ServerPersonalizedSmartReply()();
  sub_18E1C7F10();
  sub_18E1E67A0(65);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPQAVerification()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ServerPQAVerification()();
  sub_18E246F88();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMActionV2()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMActionV2()();
  static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMActionV2()();
  static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer()();
  sub_18E1C5364();
  sub_18E1E67A0(68);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase()();
  sub_18E23527C();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerificationBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.PQAVerificationBase()();
  sub_18E23527C();
  sub_18E1E67A0(38);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.SummarizationTextSummarizerAjaxBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase()();
  sub_18E23527C();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.FoundationModelsPlatform()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer()();
  static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.NLRouterBase()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.NLRouterTokenizer()();
  static Catalog.Resource.LLM.Model.NLRouterBase()();
  sub_18E23527C();
  sub_18E1E67A0(34);
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ChatGPT()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.ChatGPTTokenizer()();
  static Catalog.Resource.LLM.Model.ChatGPT()();
  sub_18E23527C();
  sub_18E1E67A0(24);
}

uint64_t static Catalog.ResourceBundle.TokenGeneration.LLMCompileDraft.InstructFMApiThirdPartyCompileDraft()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft(variant:)(v1);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.fm.language.instruct_3b.fm_api_third_party_compile.draft", v13, v14, v15, v16, v17, v18, v19, v20);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  v3 = sub_18E223A10();
  MEMORY[0x193ACC300](v3);
  v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7, v8);
  sub_18E22EA38();
  result = sub_18E1CD52C("Fatal error", v9, v10, v11, v12, "ModelCatalog/Resources.swift");
  __break(1u);
  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextEventExtractionDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextPersonExtractionDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  sub_18E1E67A0(62);
}

void static Catalog.ResourceBundle.TokenGeneration.LLMDraft.TextunderstandingDraft()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.Textunderstanding()();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Animation()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Animation()();
  sub_18E1E67A0(48);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Emoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Emoji()();
  sub_18E1D7FB0();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Illustration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Illustration()();
  sub_18E1CC4B8();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.MessagesBackgrounds()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds()();
  sub_18E1E67A0(59);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedAnimation()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation()();
  sub_18E1E67A0(61);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedEmoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji()();
  sub_18E1E67A0(57);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedIllustration()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration()();
  sub_18E1E67A0(64);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedSketch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch()();
  sub_18E1D4350();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.PersonalizedScribble()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble()();
  sub_18E1E67A0(66);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Refiner()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Refiner()();
  sub_18E1E67A0(46);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Sketch()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Sketch()();
  sub_18E1E87BC();
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.SkinToneEmoji()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji()();
  sub_18E1E67A0(53);
}

void static Catalog.ResourceBundle.VisualGeneration.Diffusion.Scribble()()
{
  sub_18E2345C8();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Scribble()();
  sub_18E1E67A0(53);
}

uint64_t sub_18E29E04C()
{
  result = sub_18E29E06C();
  qword_1ED6A7DA0 = result;
  return result;
}

uint64_t sub_18E29E06C()
{
  sub_18E2706EC(&qword_1EABE1318, &unk_18E49EF10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18E49ED70;
  *(v0 + 32) = 0xD00000000000001ALL;
  *(v0 + 40) = 0x800000018E4659A0;
  *(v0 + 48) = sub_18E44E9AC();
  *(v0 + 56) = 0xD000000000000023;
  *(v0 + 64) = 0x800000018E450780;
  *(v0 + 72) = sub_18E44E9AC();
  *(v0 + 80) = 0xD000000000000028;
  *(v0 + 88) = 0x800000018E450EC0;
  *(v0 + 96) = sub_18E44E9AC();
  *(v0 + 104) = 0xD000000000000028;
  *(v0 + 112) = 0x800000018E450F50;
  *(v0 + 120) = sub_18E44E9AC();
  *(v0 + 128) = 0xD000000000000028;
  *(v0 + 136) = 0x800000018E450FE0;
  *(v0 + 144) = sub_18E44E9AC();
  *(v0 + 152) = 0xD000000000000028;
  *(v0 + 160) = 0x800000018E451070;
  *(v0 + 168) = sub_18E44E9AC();
  *(v0 + 176) = 0xD000000000000028;
  *(v0 + 184) = 0x800000018E451100;
  *(v0 + 192) = sub_18E44E9AC();
  *(v0 + 200) = 0xD000000000000030;
  *(v0 + 208) = 0x800000018E451190;
  *(v0 + 216) = sub_18E44E9AC();
  *(v0 + 224) = 0xD000000000000028;
  *(v0 + 232) = 0x800000018E451210;
  *(v0 + 240) = sub_18E44E9AC();
  *(v0 + 248) = 0xD000000000000028;
  *(v0 + 256) = 0x800000018E4512A0;
  *(v0 + 264) = sub_18E44E9AC();
  *(v0 + 272) = 0xD000000000000028;
  *(v0 + 280) = 0x800000018E451330;
  *(v0 + 288) = sub_18E44E9AC();
  *(v0 + 296) = 0xD000000000000028;
  *(v0 + 304) = 0x800000018E4513C0;
  *(v0 + 312) = sub_18E44E9AC();
  *(v0 + 320) = 0xD000000000000028;
  *(v0 + 328) = 0x800000018E451450;
  *(v0 + 336) = sub_18E44E9AC();
  *(v0 + 344) = 0xD000000000000022;
  *(v0 + 352) = 0x800000018E450750;
  *(v0 + 360) = sub_18E44E9AC();
  *(v0 + 368) = 0xD00000000000002DLL;
  *(v0 + 376) = 0x800000018E465C80;
  *(v0 + 384) = sub_18E44E9AC();
  *(v0 + 392) = 0xD000000000000029;
  *(v0 + 400) = 0x800000018E4508D0;
  *(v0 + 408) = sub_18E44E9AC();
  *(v0 + 416) = 0xD000000000000022;
  *(v0 + 424) = 0x800000018E450930;
  *(v0 + 432) = sub_18E44E9AC();
  *(v0 + 440) = 0xD000000000000022;
  *(v0 + 448) = 0x800000018E450960;
  *(v0 + 456) = sub_18E44E9AC();
  *(v0 + 464) = 0xD000000000000022;
  *(v0 + 472) = 0x800000018E450990;
  *(v0 + 480) = sub_18E44E9AC();
  *(v0 + 488) = 0xD000000000000026;
  *(v0 + 496) = 0x800000018E465CB0;
  *(v0 + 504) = sub_18E44E9AC();
  *(v0 + 512) = 0xD000000000000025;
  *(v0 + 520) = 0x800000018E465CE0;
  *(v0 + 528) = sub_18E44E9AC();
  *(v0 + 536) = 0xD00000000000002ALL;
  *(v0 + 544) = 0x800000018E451610;
  *(v0 + 552) = sub_18E44E9AC();
  *(v0 + 560) = 0xD000000000000030;
  *(v0 + 568) = 0x800000018E4509C0;
  *(v0 + 576) = sub_18E44E9AC();
  *(v0 + 584) = 0xD00000000000002CLL;
  *(v0 + 592) = 0x800000018E451640;
  *(v0 + 600) = sub_18E44E9AC();
  *(v0 + 608) = 0xD000000000000039;
  *(v0 + 616) = 0x800000018E4516B0;
  *(v0 + 624) = sub_18E44E9AC();
  *(v0 + 632) = 0xD000000000000038;
  *(v0 + 640) = 0x800000018E4516F0;
  *(v0 + 648) = sub_18E44E9AC();
  *(v0 + 656) = 0xD000000000000038;
  *(v0 + 664) = 0x800000018E451730;
  *(v0 + 672) = sub_18E44E9AC();
  *(v0 + 680) = 0xD000000000000042;
  *(v0 + 688) = 0x800000018E4517B0;
  *(v0 + 696) = sub_18E44E9AC();
  *(v0 + 704) = 0xD000000000000033;
  *(v0 + 712) = 0x800000018E451840;
  *(v0 + 720) = sub_18E44E9AC();
  *(v0 + 728) = 0xD000000000000032;
  *(v0 + 736) = 0x800000018E451880;
  *(v0 + 744) = sub_18E44E9AC();
  *(v0 + 752) = 0xD00000000000002FLL;
  *(v0 + 760) = 0x800000018E4518C0;
  *(v0 + 768) = sub_18E44E9AC();
  *(v0 + 776) = 0xD00000000000003ALL;
  *(v0 + 784) = 0x800000018E4518F0;
  *(v0 + 792) = sub_18E44E9AC();
  *(v0 + 800) = 0xD00000000000002CLL;
  *(v0 + 808) = 0x800000018E451990;
  *(v0 + 816) = sub_18E44E9AC();
  *(v0 + 824) = 0xD00000000000002DLL;
  *(v0 + 832) = 0x800000018E4519C0;
  *(v0 + 840) = sub_18E44E9AC();
  *(v0 + 848) = 0xD000000000000034;
  *(v0 + 856) = 0x800000018E4519F0;
  *(v0 + 864) = sub_18E44E9AC();
  *(v0 + 872) = 0xD000000000000037;
  *(v0 + 880) = 0x800000018E451A30;
  *(v0 + 888) = sub_18E44E9AC();
  *(v0 + 896) = 0xD000000000000042;
  *(v0 + 904) = 0x800000018E451A70;
  *(v0 + 912) = sub_18E44E9AC();
  *(v0 + 920) = 0xD00000000000002ALL;
  *(v0 + 928) = 0x800000018E451B20;
  *(v0 + 936) = sub_18E44E9AC();
  *(v0 + 944) = 0xD000000000000038;
  *(v0 + 952) = 0x800000018E451B50;
  *(v0 + 960) = sub_18E44E9AC();
  *(v0 + 968) = 0xD000000000000043;
  *(v0 + 976) = 0x800000018E451B90;
  *(v0 + 984) = sub_18E44E9AC();
  *(v0 + 992) = 0xD00000000000002ELL;
  *(v0 + 1000) = 0x800000018E451C40;
  *(v0 + 1008) = sub_18E44E9AC();
  *(v0 + 1016) = 0xD000000000000039;
  *(v0 + 1024) = 0x800000018E451CA0;
  *(v0 + 1032) = sub_18E44E9AC();
  *(v0 + 1040) = 0xD000000000000032;
  *(v0 + 1048) = 0x800000018E451CE0;
  *(v0 + 1056) = sub_18E44E9AC();
  *(v0 + 1064) = 0xD00000000000003BLL;
  *(v0 + 1072) = 0x800000018E451D60;
  *(v0 + 1080) = sub_18E44E9AC();
  *(v0 + 1088) = 0xD00000000000002DLL;
  *(v0 + 1096) = 0x800000018E451DA0;
  *(v0 + 1104) = sub_18E44E9AC();
  *(v0 + 1112) = 0xD000000000000035;
  *(v0 + 1120) = 0x800000018E451DD0;
  *(v0 + 1128) = sub_18E44E9AC();
  *(v0 + 1136) = 0xD000000000000026;
  *(v0 + 1144) = 0x800000018E450B50;
  *(v0 + 1152) = sub_18E44E9AC();
  *(v0 + 1160) = 0xD000000000000033;
  *(v0 + 1168) = 0x800000018E451EB0;
  *(v0 + 1176) = sub_18E44E9AC();
  *(v0 + 1184) = 0xD00000000000002ELL;
  *(v0 + 1192) = 0x800000018E451F30;
  *(v0 + 1200) = sub_18E44E9AC();
  *(v0 + 1208) = 0xD000000000000033;
  *(v0 + 1216) = 0x800000018E451FA0;
  *(v0 + 1224) = sub_18E44E9AC();
  *(v0 + 1232) = 0xD000000000000031;
  *(v0 + 1240) = 0x800000018E451FE0;
  *(v0 + 1248) = sub_18E44E9AC();
  *(v0 + 1256) = 0xD000000000000034;
  *(v0 + 1264) = 0x800000018E452060;
  *(v0 + 1272) = sub_18E44E9AC();
  *(v0 + 1280) = 0xD000000000000031;
  *(v0 + 1288) = 0x800000018E4520E0;
  *(v0 + 1296) = sub_18E44E9AC();
  *(v0 + 1304) = 0xD000000000000037;
  *(v0 + 1312) = 0x800000018E452120;
  *(v0 + 1320) = sub_18E44E9AC();
  *(v0 + 1328) = 0xD000000000000030;
  *(v0 + 1336) = 0x800000018E452160;
  *(v0 + 1344) = sub_18E44E9AC();
  *(v0 + 1352) = 0xD000000000000042;
  *(v0 + 1360) = 0x800000018E4521E0;
  *(v0 + 1368) = sub_18E44E9AC();
  *(v0 + 1376) = 0xD00000000000002FLL;
  *(v0 + 1384) = 0x800000018E452230;
  *(v0 + 1392) = sub_18E44E9AC();
  *(v0 + 1400) = 0xD000000000000040;
  *(v0 + 1408) = 0x800000018E4522E0;
  *(v0 + 1416) = sub_18E44E9AC();
  *(v0 + 1424) = 0xD00000000000003CLL;
  *(v0 + 1432) = 0x800000018E452380;
  *(v0 + 1440) = sub_18E44E9AC();
  *(v0 + 1448) = 0xD00000000000002FLL;
  *(v0 + 1456) = 0x800000018E452410;
  *(v0 + 1464) = sub_18E44E9AC();
  *(v0 + 1472) = 0xD00000000000002FLL;
  *(v0 + 1480) = 0x800000018E452480;
  *(v0 + 1488) = sub_18E44E9AC();
  *(v0 + 1496) = 0xD00000000000002CLL;
  *(v0 + 1504) = 0x800000018E4524F0;
  *(v0 + 1512) = sub_18E44E9AC();
  *(v0 + 1520) = 0xD00000000000003CLL;
  *(v0 + 1528) = 0x800000018E452560;
  *(v0 + 1536) = sub_18E44E9AC();
  *(v0 + 1544) = 0xD00000000000003ELL;
  *(v0 + 1552) = 0x800000018E4525F0;
  *(v0 + 1560) = sub_18E44E9AC();
  *(v0 + 1568) = 0xD00000000000002FLL;
  *(v0 + 1576) = 0x800000018E452680;
  *(v0 + 1584) = sub_18E44E9AC();
  *(v0 + 1592) = 0xD000000000000031;
  *(v0 + 1600) = 0x800000018E4526F0;
  *(v0 + 1608) = sub_18E44E9AC();
  *(v0 + 1616) = 0xD000000000000030;
  *(v0 + 1624) = 0x800000018E452770;
  *(v0 + 1632) = sub_18E44E9AC();
  *(v0 + 1640) = 0xD00000000000002ALL;
  *(v0 + 1648) = 0x800000018E4527F0;
  *(v0 + 1656) = sub_18E44E9AC();
  *(v0 + 1664) = 0xD00000000000002BLL;
  *(v0 + 1672) = 0x800000018E452820;
  *(v0 + 1680) = sub_18E44E9AC();
  *(v0 + 1688) = 0xD00000000000003ALL;
  *(v0 + 1696) = 0x800000018E452850;
  *(v0 + 1704) = sub_18E44E9AC();
  *(v0 + 1712) = 0xD000000000000041;
  *(v0 + 1720) = 0x800000018E4528E0;
  *(v0 + 1728) = sub_18E44E9AC();
  *(v0 + 1736) = 0xD000000000000042;
  *(v0 + 1744) = 0x800000018E452930;
  *(v0 + 1752) = sub_18E44E9AC();
  *(v0 + 1760) = 0xD000000000000048;
  *(v0 + 1768) = 0x800000018E452980;
  *(v0 + 1776) = sub_18E44E9AC();
  *(v0 + 1784) = 0xD00000000000003FLL;
  *(v0 + 1792) = 0x800000018E452A20;
  *(v0 + 1800) = sub_18E44E9AC();
  *(v0 + 1808) = 0xD000000000000045;
  *(v0 + 1816) = 0x800000018E452AB0;
  *(v0 + 1824) = sub_18E44E9AC();
  *(v0 + 1832) = 0xD00000000000003DLL;
  *(v0 + 1840) = 0x800000018E452B50;
  *(v0 + 1848) = sub_18E44E9AC();
  *(v0 + 1856) = 0xD000000000000037;
  *(v0 + 1864) = 0x800000018E452BE0;
  *(v0 + 1872) = sub_18E44E9AC();
  *(v0 + 1880) = 0xD00000000000003ALL;
  *(v0 + 1888) = 0x800000018E465D10;
  *(v0 + 1896) = sub_18E44E9AC();
  *(v0 + 1904) = 0xD00000000000002CLL;
  *(v0 + 1912) = 0x800000018E452C60;
  *(v0 + 1920) = sub_18E44E9AC();
  *(v0 + 1928) = 0xD00000000000002CLL;
  *(v0 + 1936) = 0x800000018E452CD0;
  *(v0 + 1944) = sub_18E44E9AC();
  *(v0 + 1952) = 0xD00000000000002CLL;
  *(v0 + 1960) = 0x800000018E452D40;
  *(v0 + 1968) = sub_18E44E9AC();
  *(v0 + 1976) = 0xD000000000000033;
  *(v0 + 1984) = 0x800000018E452DB0;
  *(v0 + 1992) = sub_18E44E9AC();
  *(v0 + 2000) = 0xD000000000000035;
  *(v0 + 2008) = 0x800000018E452E30;
  *(v0 + 2016) = sub_18E44E9AC();
  *(v0 + 2024) = 0xD000000000000040;
  *(v0 + 2032) = 0x800000018E452EB0;
  *(v0 + 2040) = sub_18E44E9AC();
  *(v0 + 2048) = 0xD000000000000043;
  *(v0 + 2056) = 0x800000018E465D50;
  *(v0 + 2064) = sub_18E44E9AC();
  *(v0 + 2072) = 0xD000000000000038;
  *(v0 + 2080) = 0x800000018E452F50;
  *(v0 + 2088) = sub_18E44E9AC();
  *(v0 + 2096) = 0xD000000000000038;
  *(v0 + 2104) = 0x800000018E452FD0;
  *(v0 + 2112) = sub_18E44E9AC();
  *(v0 + 2120) = 0xD000000000000038;
  *(v0 + 2128) = 0x800000018E453050;
  *(v0 + 2136) = sub_18E44E9AC();
  *(v0 + 2144) = 0xD000000000000032;
  *(v0 + 2152) = 0x800000018E4530D0;
  *(v0 + 2160) = sub_18E44E9AC();
  *(v0 + 2168) = 0xD00000000000003CLL;
  *(v0 + 2176) = 0x800000018E453150;
  *(v0 + 2184) = sub_18E44E9AC();
  *(v0 + 2192) = 0xD00000000000003DLL;
  *(v0 + 2200) = 0x800000018E4531E0;
  *(v0 + 2208) = sub_18E44E9AC();
  *(v0 + 2216) = 0xD000000000000040;
  *(v0 + 2224) = 0x800000018E453270;
  *(v0 + 2232) = sub_18E44E9AC();
  *(v0 + 2240) = 0xD000000000000033;
  *(v0 + 2248) = 0x800000018E453310;
  *(v0 + 2256) = sub_18E44E9AC();
  *(v0 + 2264) = 0xD000000000000037;
  *(v0 + 2272) = 0x800000018E453390;
  *(v0 + 2280) = sub_18E44E9AC();
  *(v0 + 2288) = 0xD000000000000037;
  *(v0 + 2296) = 0x800000018E4533D0;
  *(v0 + 2304) = sub_18E44E9AC();
  *(v0 + 2312) = 0xD000000000000036;
  *(v0 + 2320) = 0x800000018E453450;
  *(v0 + 2328) = sub_18E44E9AC();
  *(v0 + 2336) = 0xD000000000000039;
  *(v0 + 2344) = 0x800000018E465DA0;
  *(v0 + 2352) = sub_18E44E9AC();
  *(v0 + 2360) = 0xD00000000000002FLL;
  *(v0 + 2368) = 0x800000018E4534D0;
  *(v0 + 2376) = sub_18E44E9AC();
  *(v0 + 2384) = 0xD000000000000032;
  *(v0 + 2392) = 0x800000018E453540;
  *(v0 + 2400) = sub_18E44E9AC();
  *(v0 + 2408) = 0xD000000000000035;
  *(v0 + 2416) = 0x800000018E4535C0;
  *(v0 + 2424) = sub_18E44E9AC();
  *(v0 + 2432) = 0xD00000000000002CLL;
  *(v0 + 2440) = 0x800000018E453640;
  *(v0 + 2448) = sub_18E44E9AC();
  *(v0 + 2456) = 0xD000000000000037;
  *(v0 + 2464) = 0x800000018E453670;
  *(v0 + 2472) = sub_18E44E9AC();
  *(v0 + 2480) = 0xD00000000000003DLL;
  *(v0 + 2488) = 0x800000018E4536B0;
  *(v0 + 2496) = sub_18E44E9AC();
  *(v0 + 2504) = 0xD00000000000002DLL;
  *(v0 + 2512) = 0x800000018E4536F0;
  *(v0 + 2520) = sub_18E44E9AC();
  *(v0 + 2528) = 0xD000000000000038;
  *(v0 + 2536) = 0x800000018E453760;
  *(v0 + 2544) = sub_18E44E9AC();
  *(v0 + 2552) = 0xD00000000000003ELL;
  *(v0 + 2560) = 0x800000018E4537A0;
  *(v0 + 2568) = sub_18E44E9AC();
  *(v0 + 2576) = 0xD000000000000031;
  *(v0 + 2584) = 0x800000018E4537E0;
  *(v0 + 2592) = sub_18E44E9AC();
  *(v0 + 2600) = 0xD00000000000003ALL;
  *(v0 + 2608) = 0x800000018E453860;
  *(v0 + 2616) = sub_18E44E9AC();
  *(v0 + 2624) = 0xD00000000000002DLL;
  *(v0 + 2632) = 0x800000018E4538A0;
  *(v0 + 2640) = sub_18E44E9AC();
  *(v0 + 2648) = 0xD000000000000030;
  *(v0 + 2656) = 0x800000018E465DE0;
  *(v0 + 2664) = sub_18E44E9AC();
  *(v0 + 2672) = 0xD00000000000002ELL;
  *(v0 + 2680) = 0x800000018E453940;
  *(v0 + 2688) = sub_18E44E9AC();
  *(v0 + 2696) = 0xD00000000000002DLL;
  *(v0 + 2704) = 0x800000018E450AB0;
  *(v0 + 2712) = sub_18E44E9AC();
  *(v0 + 2720) = 0xD000000000000038;
  *(v0 + 2728) = 0x800000018E453970;
  *(v0 + 2736) = sub_18E44E9AC();
  *(v0 + 2744) = 0xD000000000000031;
  *(v0 + 2752) = 0x800000018E4539B0;
  *(v0 + 2760) = sub_18E44E9AC();
  *(v0 + 2768) = 0xD000000000000040;
  *(v0 + 2776) = 0x800000018E453A20;
  *(v0 + 2784) = sub_18E44E9AC();
  *(v0 + 2792) = 0xD000000000000039;
  *(v0 + 2800) = 0x800000018E453A70;
  *(v0 + 2808) = sub_18E44E9AC();
  *(v0 + 2816) = 0xD000000000000033;
  *(v0 + 2824) = 0x800000018E453AF0;
  *(v0 + 2832) = sub_18E44E9AC();
  *(v0 + 2840) = 0xD00000000000002DLL;
  *(v0 + 2848) = 0x800000018E450BB0;
  *(v0 + 2856) = sub_18E44E9AC();
  *(v0 + 2864) = 0xD00000000000003ALL;
  *(v0 + 2872) = 0x800000018E453B70;
  *(v0 + 2880) = sub_18E44E9AC();
  *(v0 + 2888) = 0xD000000000000035;
  *(v0 + 2896) = 0x800000018E453C00;
  *(v0 + 2904) = sub_18E44E9AC();
  *(v0 + 2912) = 0xD00000000000003BLL;
  *(v0 + 2920) = 0x800000018E453C80;
  *(v0 + 2928) = sub_18E44E9AC();
  *(v0 + 2936) = 0xD00000000000003ELL;
  *(v0 + 2944) = 0x800000018E453CC0;
  *(v0 + 2952) = sub_18E44E9AC();
  *(v0 + 2960) = 0xD000000000000036;
  *(v0 + 2968) = 0x800000018E453D50;
  *(v0 + 2976) = sub_18E44E9AC();
  *(v0 + 2984) = 0xD000000000000041;
  *(v0 + 2992) = 0x800000018E453E10;
  *(v0 + 3000) = sub_18E44E9AC();
  *(v0 + 3008) = 0xD000000000000036;
  *(v0 + 3016) = 0x800000018E453EB0;
  *(v0 + 3024) = sub_18E44E9AC();
  *(v0 + 3032) = 0xD000000000000036;
  *(v0 + 3040) = 0x800000018E453F30;
  *(v0 + 3048) = sub_18E44E9AC();
  *(v0 + 3056) = 0xD000000000000043;
  *(v0 + 3064) = 0x800000018E453FB0;
  *(v0 + 3072) = sub_18E44E9AC();
  *(v0 + 3080) = 0xD000000000000045;
  *(v0 + 3088) = 0x800000018E454050;
  *(v0 + 3096) = sub_18E44E9AC();
  *(v0 + 3104) = 0xD000000000000036;
  *(v0 + 3112) = 0x800000018E4540F0;
  *(v0 + 3120) = sub_18E44E9AC();
  *(v0 + 3128) = 0xD00000000000003ELL;
  *(v0 + 3136) = 0x800000018E454170;
  *(v0 + 3144) = sub_18E44E9AC();
  *(v0 + 3152) = 0xD000000000000031;
  *(v0 + 3160) = 0x800000018E454200;
  *(v0 + 3168) = sub_18E44E9AC();
  *(v0 + 3176) = 0xD00000000000003FLL;
  *(v0 + 3184) = 0x800000018E454240;
  *(v0 + 3192) = sub_18E44E9AC();
  *(v0 + 3200) = 0xD00000000000003ELL;
  *(v0 + 3208) = 0x800000018E4542D0;
  *(v0 + 3216) = sub_18E44E9AC();
  *(v0 + 3224) = 0xD00000000000003ALL;
  *(v0 + 3232) = 0x800000018E454360;
  *(v0 + 3240) = sub_18E44E9AC();
  *(v0 + 3248) = 0xD000000000000038;
  *(v0 + 3256) = 0x800000018E4543F0;
  *(v0 + 3264) = sub_18E44E9AC();
  *(v0 + 3272) = 0xD00000000000003DLL;
  *(v0 + 3280) = 0x800000018E4630D0;
  *(v0 + 3288) = sub_18E44E9AC();
  *(v0 + 3296) = 0xD000000000000047;
  *(v0 + 3304) = 0x800000018E454470;
  *(v0 + 3312) = sub_18E44E9AC();
  *(v0 + 3320) = 0xD00000000000004ALL;
  *(v0 + 3328) = 0x800000018E4544C0;
  *(v0 + 3336) = sub_18E44E9AC();
  *(v0 + 3344) = 0xD000000000000041;
  *(v0 + 3352) = 0x800000018E454510;
  *(v0 + 3360) = sub_18E44E9AC();
  *(v0 + 3368) = 0xD000000000000036;
  *(v0 + 3376) = 0x800000018E4545B0;
  *(v0 + 3384) = sub_18E44E9AC();
  *(v0 + 3392) = 0xD000000000000047;
  *(v0 + 3400) = 0x800000018E454630;
  *(v0 + 3408) = sub_18E44E9AC();
  *(v0 + 3416) = 0xD00000000000004ALL;
  *(v0 + 3424) = 0x800000018E4546D0;
  *(v0 + 3432) = sub_18E44E9AC();
  *(v0 + 3440) = 0xD000000000000046;
  *(v0 + 3448) = 0x800000018E454780;
  *(v0 + 3456) = sub_18E44E9AC();
  *(v0 + 3464) = 0xD000000000000049;
  *(v0 + 3472) = 0x800000018E454820;
  *(v0 + 3480) = sub_18E44E9AC();
  *(v0 + 3488) = 0xD000000000000049;
  *(v0 + 3496) = 0x800000018E4548C0;
  *(v0 + 3504) = sub_18E44E9AC();
  *(v0 + 3512) = 0xD00000000000004CLL;
  *(v0 + 3520) = 0x800000018E454960;
  *(v0 + 3528) = sub_18E44E9AC();
  *(v0 + 3536) = 0xD00000000000004FLL;
  *(v0 + 3544) = 0x800000018E454A10;
  *(v0 + 3552) = sub_18E44E9AC();
  *(v0 + 3560) = 0xD00000000000004FLL;
  *(v0 + 3568) = 0x800000018E454AC0;
  *(v0 + 3576) = sub_18E44E9AC();
  *(v0 + 3584) = 0xD000000000000044;
  *(v0 + 3592) = 0x800000018E454B70;
  *(v0 + 3600) = sub_18E44E9AC();
  *(v0 + 3608) = 0xD000000000000047;
  *(v0 + 3616) = 0x800000018E454C10;
  *(v0 + 3624) = sub_18E44E9AC();
  *(v0 + 3632) = 0xD000000000000030;
  *(v0 + 3640) = 0x800000018E454CB0;
  *(v0 + 3648) = sub_18E44E9AC();
  *(v0 + 3656) = 0xD000000000000033;
  *(v0 + 3664) = 0x800000018E454D30;
  *(v0 + 3672) = sub_18E44E9AC();
  *(v0 + 3680) = 0xD000000000000033;
  *(v0 + 3688) = 0x800000018E454DB0;
  *(v0 + 3696) = sub_18E44E9AC();
  *(v0 + 3704) = 0xD000000000000033;
  *(v0 + 3712) = 0x800000018E454E30;
  *(v0 + 3720) = sub_18E44E9AC();
  *(v0 + 3728) = 0xD000000000000033;
  *(v0 + 3736) = 0x800000018E454EB0;
  *(v0 + 3744) = sub_18E44E9AC();
  *(v0 + 3752) = 0xD000000000000033;
  *(v0 + 3760) = 0x800000018E454F30;
  *(v0 + 3768) = sub_18E44E9AC();
  *(v0 + 3776) = 0xD000000000000039;
  *(v0 + 3784) = 0x800000018E454FB0;
  *(v0 + 3792) = sub_18E44E9AC();
  *(v0 + 3800) = 0xD00000000000003ALL;
  *(v0 + 3808) = 0x800000018E454FF0;
  *(v0 + 3816) = sub_18E44E9AC();
  *(v0 + 3824) = 0xD00000000000003CLL;
  *(v0 + 3832) = 0x800000018E455080;
  *(v0 + 3840) = sub_18E44E9AC();
  *(v0 + 3848) = 0xD000000000000048;
  *(v0 + 3856) = 0x800000018E455110;
  *(v0 + 3864) = sub_18E44E9AC();
  *(v0 + 3872) = 0xD00000000000003CLL;
  *(v0 + 3880) = 0x800000018E4551B0;
  *(v0 + 3888) = sub_18E44E9AC();
  *(v0 + 3896) = 0xD00000000000003FLL;
  *(v0 + 3904) = 0x800000018E455240;
  *(v0 + 3912) = sub_18E44E9AC();
  *(v0 + 3920) = 0xD00000000000003FLL;
  *(v0 + 3928) = 0x800000018E4552D0;
  *(v0 + 3936) = sub_18E44E9AC();
  *(v0 + 3944) = 0xD00000000000003FLL;
  *(v0 + 3952) = 0x800000018E455360;
  *(v0 + 3960) = sub_18E44E9AC();
  *(v0 + 3968) = 0xD00000000000003FLL;
  *(v0 + 3976) = 0x800000018E4553F0;
  *(v0 + 3984) = sub_18E44E9AC();
  *(v0 + 3992) = 0xD000000000000043;
  *(v0 + 4000) = 0x800000018E455480;
  *(v0 + 4008) = sub_18E44E9AC();
  *(v0 + 4016) = 0xD000000000000041;
  *(v0 + 4024) = 0x800000018E455520;
  *(v0 + 4032) = sub_18E44E9AC();
  *(v0 + 4040) = 0xD000000000000044;
  *(v0 + 4048) = 0x800000018E4555C0;
  *(v0 + 4056) = sub_18E44E9AC();
  *(v0 + 4064) = 0xD00000000000003ELL;
  *(v0 + 4072) = 0x800000018E455660;
  *(v0 + 4080) = sub_18E44E9AC();
  *(v0 + 4088) = 0xD000000000000037;
  *(v0 + 4096) = 0x800000018E4556F0;
  *(v0 + 4104) = sub_18E44E9AC();
  *(v0 + 4112) = 0xD000000000000042;
  *(v0 + 4120) = 0x800000018E455770;
  *(v0 + 4128) = sub_18E44E9AC();
  *(v0 + 4136) = 0xD000000000000039;
  *(v0 + 4144) = 0x800000018E455810;
  *(v0 + 4152) = sub_18E44E9AC();
  *(v0 + 4160) = 0xD00000000000003CLL;
  *(v0 + 4168) = 0x800000018E455890;
  *(v0 + 4176) = sub_18E44E9AC();
  *(v0 + 4184) = 0xD000000000000038;
  *(v0 + 4192) = 0x800000018E455920;
  *(v0 + 4200) = sub_18E44E9AC();
  *(v0 + 4208) = 0xD00000000000003CLL;
  *(v0 + 4216) = 0x800000018E463110;
  *(v0 + 4224) = sub_18E44E9AC();
  *(v0 + 4232) = 0xD000000000000038;
  *(v0 + 4240) = 0x800000018E4559E0;
  *(v0 + 4248) = sub_18E44E9AC();
  *(v0 + 4256) = 0xD000000000000033;
  *(v0 + 4264) = 0x800000018E450BE0;
  *(v0 + 4272) = sub_18E44E9AC();
  *(v0 + 4280) = 0xD000000000000026;
  *(v0 + 4288) = 0x800000018E465E20;
  *(v0 + 4296) = sub_18E44E9AC();
  *(v0 + 4304) = 0xD00000000000003DLL;
  *(v0 + 4312) = 0x800000018E455A90;
  *(v0 + 4320) = sub_18E44E9AC();
  *(v0 + 4328) = 0xD000000000000030;
  *(v0 + 4336) = 0x800000018E455AD0;
  *(v0 + 4344) = sub_18E44E9AC();
  *(v0 + 4352) = 0xD00000000000002BLL;
  *(v0 + 4360) = 0x800000018E455B10;
  *(v0 + 4368) = sub_18E44E9AC();
  *(v0 + 4376) = 0xD00000000000002CLL;
  *(v0 + 4384) = 0x800000018E455B40;
  *(v0 + 4392) = sub_18E44E9AC();
  *(v0 + 4400) = 0xD000000000000033;
  *(v0 + 4408) = 0x800000018E455B70;
  *(v0 + 4416) = sub_18E44E9AC();
  *(v0 + 4424) = 0xD00000000000003BLL;
  *(v0 + 4432) = 0x800000018E455BB0;
  *(v0 + 4440) = sub_18E44E9AC();
  *(v0 + 4448) = 0xD00000000000003DLL;
  *(v0 + 4456) = 0x800000018E455BF0;
  *(v0 + 4464) = sub_18E44E9AC();
  *(v0 + 4472) = 0xD000000000000039;
  *(v0 + 4480) = 0x800000018E455C30;
  *(v0 + 4488) = sub_18E44E9AC();
  *(v0 + 4496) = 0xD000000000000040;
  *(v0 + 4504) = 0x800000018E455C70;
  *(v0 + 4512) = sub_18E44E9AC();
  *(v0 + 4520) = 0xD00000000000003ALL;
  *(v0 + 4528) = 0x800000018E455CC0;
  *(v0 + 4536) = sub_18E44E9AC();
  *(v0 + 4544) = 0xD000000000000042;
  *(v0 + 4552) = 0x800000018E455D00;
  *(v0 + 4560) = sub_18E44E9AC();
  *(v0 + 4568) = 0xD00000000000002ELL;
  *(v0 + 4576) = 0x800000018E455D50;
  *(v0 + 4584) = sub_18E44E9AC();
  *(v0 + 4592) = 0xD00000000000002DLL;
  *(v0 + 4600) = 0x800000018E455D80;
  *(v0 + 4608) = sub_18E44E9AC();
  *(v0 + 4616) = 0xD000000000000035;
  *(v0 + 4624) = 0x800000018E455DB0;
  *(v0 + 4632) = sub_18E44E9AC();
  *(v0 + 4640) = 0xD000000000000035;
  *(v0 + 4648) = 0x800000018E455DF0;
  *(v0 + 4656) = sub_18E44E9AC();
  *(v0 + 4664) = 0xD000000000000022;
  *(v0 + 4672) = 0x800000018E465E50;
  *(v0 + 4680) = sub_18E44E9AC();
  *(v0 + 4688) = 0xD000000000000022;
  *(v0 + 4696) = 0x800000018E458D20;
  *(v0 + 4704) = sub_18E44E9AC();
  *(v0 + 4712) = 0xD000000000000018;
  *(v0 + 4720) = 0x800000018E458D80;
  *(v0 + 4728) = sub_18E44E9AC();
  *(v0 + 4736) = 0xD00000000000002CLL;
  *(v0 + 4744) = 0x800000018E458DD0;
  *(v0 + 4752) = sub_18E44E9AC();
  *(v0 + 4760) = 0xD000000000000029;
  *(v0 + 4768) = 0x800000018E458E70;
  *(v0 + 4776) = sub_18E44E9AC();
  *(v0 + 4784) = 0xD00000000000002ELL;
  *(v0 + 4792) = 0x800000018E465A40;
  *(v0 + 4800) = sub_18E44E9AC();
  *(v0 + 4808) = 0xD000000000000025;
  *(v0 + 4816) = 0x800000018E465A10;
  *(v0 + 4824) = sub_18E44E9AC();
  *(v0 + 4832) = 0xD00000000000002FLL;
  *(v0 + 4840) = 0x800000018E465AA0;
  *(v0 + 4848) = sub_18E44E9AC();
  *(v0 + 4856) = 0xD000000000000026;
  *(v0 + 4864) = 0x800000018E465A70;
  *(v0 + 4872) = sub_18E44E9AC();
  *(v0 + 4880) = 0xD00000000000004ELL;
  *(v0 + 4888) = 0x800000018E465AD0;
  *(v0 + 4896) = sub_18E44E9AC();
  *(v0 + 4904) = 0xD000000000000031;
  *(v0 + 4912) = 0x800000018E465B90;
  *(v0 + 4920) = sub_18E44E9AC();
  sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
  v1 = sub_18E44E9AC();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  sub_18E44E9AC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_18E26FF58();
  return v1;
}

uint64_t static Catalog.ResourceBundle.allBundleResourceConfigurationIDs.getter()
{
  if (qword_1ED6A7EF0 != -1)
  {
    swift_once();
  }
}

double static Catalog.ResourceBundle.createResourceBundleVariant(configurationIdentifier:resourceVariants:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_18E1D44C0();
  v8 = v6 == 0xD00000000000001ALL && v3 == v7;
  if (v8 || (v9 = v7, v10 = v6, (sub_18E1E1530(v6, v7, 0xD00000000000001ALL) & 1) != 0))
  {
    sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
    sub_18E228788();
    static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v11, v12);
    sub_18E1D5E64();
    if (v2)
    {
LABEL_7:

      return result;
    }

    *(a2 + 24) = &type metadata for AssetBackedDefaultOverridesBundle;
    *(a2 + 32) = sub_18E1D3DD8();
    sub_18E1E1950();
    v14 = swift_allocObject();
    sub_18E1CFC6C(v14);
    sub_18E220D78();
    AssetBackedDefaultOverridesBundle.init(configurationIdentifier:defaultDenyList:)(v15, v16, v17, v18);
    return result;
  }

  sub_18E1D44C0();
  v19 = 0xD000000000000023;
  v20 = v10 == 0xD000000000000023 && v3 == v9;
  if (v20 || (sub_18E1E1530(v10, v9, 0xD000000000000023) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental(variant:)();
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    v21 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v21, v22);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMExperimental(variant:)();

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v23 = swift_allocObject();
    sub_18E1C6378(v23);
    goto LABEL_16;
  }

  sub_18E1EA520();
  v3 = 0xD000000000000028;
  v33 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v33 || (sub_18E1D6238(v10, v9, 0xD000000000000028) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer(variant:)(v34);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v35 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v35, v36);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV1(variant:)(v37);
    goto LABEL_32;
  }

  sub_18E1EA520();
  v38 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v38 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer(variant:)(v39);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v40 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v40, v41);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV2(variant:)(v42);
    goto LABEL_32;
  }

  sub_18E1EA520();
  v44 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v44 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer(variant:)(v45);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v46 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v46, v47);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV3(variant:)(v48);
    goto LABEL_32;
  }

  sub_18E1EA520();
  v49 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v49 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer(variant:)(v50);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v51 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v51, v52);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV4(variant:)(v53);
    goto LABEL_32;
  }

  sub_18E1EA520();
  v54 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v54 || (sub_18E1DD23C() & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E1CFCF4();
    sub_18E2005E8();
    static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer(variant:)(v55);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    v56 = sub_18E221C48("baseModelVariant");
    sub_18E1E3270(v56, v57);
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMLargeV5(variant:)(v58);
    goto LABEL_32;
  }

  v8393 = v2;
  sub_18E1EA520();
  v59 = v10 == 0xD000000000000030 && v9 == 0x636972656E6567;
  if (v59 || (sub_18E1D6238(v10, v9, 0xD000000000000030) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer(variant:)(v60);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail(variant:)(v61);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v62 = swift_allocObject();
    sub_18E1C6378(v62);
    goto LABEL_33;
  }

  sub_18E1EA520();
  v63 = v10 == 0xD000000000000028 && v9 == 0x636972656E6567;
  if (v63 || (sub_18E1D6238(v10, v9, 0xD000000000000028) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer(variant:)(v64);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV1(variant:)(v65);
    goto LABEL_32;
  }

  sub_18E1D4274();
  v73 = v8 && v9 == 0x636972656E6567;
  if (v73 || (v74 = sub_18E1D5BF4(v66, v67, 0xD000000000000028, v68, v69, v70, v71, v72, v2684, v2708, v2900, v3090, v3286, v3482, v3678, v3873, v4069, v4265, v4461, v4657, v4850, v5046, v5242, v5437, v5633, v5829, v6025, v6221, v6417, v6613, v6809, v7005, v7200, v7396, v7592, v7788, v7984, v10), (sub_18E1D6238(v74, v75, v76) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer(variant:)(v77);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV2(variant:)(v78);
    goto LABEL_32;
  }

  sub_18E1D4274();
  v86 = v8 && v9 == 0x636972656E6567;
  if (v86 || (v87 = sub_18E1D5BF4(v79, v80, 0xD000000000000028, v81, v82, v83, v84, v85, v2684, v2709, v2901, v3091, v3287, v3483, v3679, v3874, v4070, v4266, v4462, v4658, v4851, v5047, v5243, v5438, v5634, v5830, v6026, v6222, v6418, v6614, v6810, v7006, v7201, v7397, v7593, v7789, v7985, v8180), (sub_18E1D6238(v87, v88, v89) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer(variant:)(v90);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV3(variant:)(v91);
    goto LABEL_32;
  }

  sub_18E1D4274();
  v99 = v8 && v9 == 0x636972656E6567;
  if (v99 || (v100 = sub_18E1D5BF4(v92, v93, 0xD000000000000028, v94, v95, v96, v97, v98, v2684, v2710, v2902, v3092, v3288, v3484, v3680, v3875, v4071, v4267, v4463, v4659, v4852, v5048, v5244, v5439, v5635, v5831, v6027, v6223, v6419, v6615, v6811, v7007, v7202, v7398, v7594, v7790, v7986, v8181), (sub_18E1D6238(v100, v101, v102) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer(variant:)(v103);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV4(variant:)(v104);
    goto LABEL_32;
  }

  sub_18E1D4274();
  v112 = v8 && v9 == 0x636972656E6567;
  if (v112 || (v113 = sub_18E1D5BF4(v105, v106, 0xD000000000000028, v107, v108, v109, v110, v111, v2684, v2711, v2903, v3093, v3289, v3485, v3681, v3876, v4072, v4268, v4464, v4660, v4853, v5049, v5245, v5440, v5636, v5832, v6028, v6224, v6420, v6616, v6812, v7008, v7203, v7399, v7595, v7791, v7987, v8182), (sub_18E1D6238(v113, v114, v115) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer(variant:)(v116);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMSmallV5(variant:)(v117);
LABEL_32:

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v43 = swift_allocObject();
    sub_18E1C6378(v43);
LABEL_33:
    sub_18E1D00D4();
    v32 = 0x636972656E6567;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v24, v32, v25, v26, v27, v28, v29, v30, v31, v2684);
  }

  sub_18E1D44C0();
  v126 = v8183 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v126 || (v127 = sub_18E1D5BF4(v118, v119, v120, v121, v122, v123, v124, v125, v2684, v2712, v2904, v3094, v3290, v3486, v3682, v3877, v4073, v4269, v4465, v4661, v4854, v5050, v5246, v5441, v5637, v5833, v6029, v6225, v6421, v6617, v6813, v7009, v7204, v7400, v7596, v7792, v7988, v8183), (sub_18E1E1530(v127, v128, 0xD000000000000022) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizer(variant:)(v129);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLM(variant:)(v130);
    goto LABEL_105;
  }

  sub_18E1D44C0();
  v140 = v8184 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v140 || (v141 = sub_18E1D5BF4(v132, v133, v134, v135, v136, v137, v138, v139, v2684, v2713, v2905, v3095, v3291, v3487, v3683, v3878, v4074, v4270, v4466, v4662, v4855, v5051, v5247, v5442, v5638, v5834, v6030, v6226, v6422, v6618, v6814, v7010, v7205, v7401, v7597, v7793, v7989, v8184), (sub_18E1E1530(v141, v142, v143) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizer(variant:)(v144);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.CodeLM(variant:)(v145);

    v8392 = 0;
    v8390 = 0u;
    v8391 = 0u;
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.CodeLM(variant:)(v150);
    sub_18E1D5E64();

    v8388 = 0;
    v161 = 0uLL;
    goto LABEL_128;
  }

  sub_18E1D44C0();
  v146 = v8185 == 0xD000000000000029 && v9 == 0xD000000000000028;
  if (v146 || (sub_18E1E1530(v8185, v9, 0xD000000000000029) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer(variant:)();
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.CodeLMV1ANE3B(variant:)(v147);

    v8392 = 0;
    v8390 = 0u;
    v8391 = 0u;
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B(variant:)(v148);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v149 = swift_allocObject();
    sub_18E1C6378(v149);
    goto LABEL_16;
  }

  sub_18E220494();
  v159 = v158 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v159 || (sub_18E1D7DE8(v151, v152, 0xD000000000000022, v153, v154, v155, v156, v157, v2684, v2714, v2906, v3096, v3292, v3488, v3684, v3879, v4075, v4271, v4467, v4663, v4856, v5052, v5248, v5443, v5639, v5835, v6031, v6227, v6423, v6619, v6815, v7011, v7206, v7402, v7598, v7794, 0xD000000000000029, v8185) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV2(variant:)();
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV2(variant:)(v160);
    goto LABEL_105;
  }

  sub_18E220494();
  v171 = v170 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v171 || (sub_18E1D7DE8(v163, v164, 0xD000000000000022, v165, v166, v167, v168, v169, v2684, v2715, v2907, v3097, v3293, v3489, v3685, v3880, v4076, v4272, v4468, v4664, v4857, v5053, v5249, v5444, v5640, v5836, v6032, v6228, v6424, v6620, v6816, v7012, v7207, v7403, v7599, v7795, v7990, v8186) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV3(variant:)();
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV3(variant:)(v172);
    goto LABEL_105;
  }

  sub_18E220494();
  v181 = v180 == 0xD000000000000022 && v9 == 0xD000000000000028;
  if (v181 || (sub_18E1D7DE8(v173, v174, 0xD000000000000022, v175, v176, v177, v178, v179, v2684, v2716, v2908, v3098, v3294, v3490, v3686, v3881, v4077, v4273, v4469, v4665, v4858, v5054, v5250, v5445, v5641, v5837, v6033, v6229, v6425, v6621, v6817, v7013, v7208, v7404, v7600, v7796, v7991, v8187) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeLMTokenizerV4(variant:)(v182);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeLMV4(variant:)(v183);
    goto LABEL_105;
  }

  sub_18E1D44C0();
  v192 = v8188 == 0xD000000000000042 && v9 == 0xD000000000000028;
  if (v192 || (v193 = sub_18E1D5BF4(v184, v185, v186, v187, v188, v189, v190, v191, v2684, v2717, v2909, v3099, v3295, v3491, v3687, v3882, v4078, v4274, v4470, v4666, v4859, v5055, v5251, v5446, v5642, v5838, v6034, v6230, v6426, v6622, v6818, v7014, v7209, v7405, v7601, 0xD000000000000042, v7992, v8188), (sub_18E1E1530(v193, v194, v7797) & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v195);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets(variant:)(v196);

    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v197 = swift_allocObject();
    sub_18E1CFC6C(v197);
    goto LABEL_164;
  }

  sub_18E1D44C0();
  v206 = v8189 == 0xD00000000000003ELL && v9 == 0xD000000000000028;
  if (v206 || (v207 = sub_18E1D5BF4(v198, v199, v200, v201, v202, v203, v204, v205, v2685, v2718, v2910, v3100, v3296, v3492, v3688, v3883, v4079, v4275, v4471, v4667, v4860, v5056, v5252, v5447, v5643, v5839, v6035, v6231, v6427, v6623, v6819, v7015, v7210, v7406, 0xD00000000000003ELL, v7797, v7993, v8189), (sub_18E1E1530(v207, v208, v7602) & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v209);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings(variant:)(v210);

    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v211 = swift_allocObject();
    sub_18E1CFC6C(v211);
    goto LABEL_164;
  }

  sub_18E220494();
  v220 = v219 == 0xD000000000000023 && v9 == 0xD000000000000028;
  if (v220 || (sub_18E1D7DE8(v212, v213, 0xD000000000000023, v214, v215, v216, v217, v218, v2686, v2719, v2911, v3101, v3297, v3493, v3689, v3884, v4080, v4276, v4472, v4668, v4861, v5057, v5253, v5448, v5644, v5840, v6036, v6232, v6428, v6624, v6820, v7016, v7211, v7407, v7602, v7798, v7994, v8190) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel(variant:)(v221);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for AssetBackedMotionBundle;
    *(a2 + 32) = sub_18E2AE070();
    sub_18E1E2C84();
    v222 = swift_allocObject();
    sub_18E1CFC6C(v222);
LABEL_164:
    sub_18E1E842C();
    return AssetBackedMotionBundle.init(configurationIdentifier:baseModel:adapter:)(v223, v224, v225, v226);
  }

  sub_18E1D44C0();
  v235 = v8191 == 0xD000000000000026 && v9 == 0xD000000000000028;
  if (v235 || (v236 = sub_18E1D5BF4(v227, v228, v229, v230, v231, v232, v233, v234, v2687, v2720, v2912, v3102, v3298, v3494, v3690, v3885, v4081, v4277, v4473, v4669, v4862, v5058, v5254, v5449, v5645, v5841, v6037, v6233, v6429, v6625, v6821, v7017, v7212, 0xD000000000000026, v7603, v7799, v7995, v8191), (sub_18E1E1530(v236, v237, v7408) & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Motion.Model.Pednet(variant:)(v238);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for MotionBundle;
    *(a2 + 32) = sub_18E205FC8();
    sub_18E1E2C84();
    v239 = swift_allocObject();
    sub_18E1CFC6C(v239);
    sub_18E1E842C();
    *&result = MotionBundle.init(configurationIdentifier:baseModel:adapter:)(v240, v241, v242, v243).n128_u64[0];
    return result;
  }

  sub_18E220494();
  sub_18E1D1940();
  v251 = v8 && v9 == 0xD000000000000028;
  if (v251 || (sub_18E1D7DE8(v244, v245, 0xD000000000000026, v246, v247, v248, v249, v250, v2684, v2721, v2913, v3103, v3299, v3495, v3691, v3886, v4082, v4278, v4474, v4670, v4863, v5059, v5255, v5450, v5646, v5842, v6038, v6234, v6430, v6626, v6822, v7018, v7213, v7408, v7604, v7800, v7996, v8192) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer(variant:)(v252, v253);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.DistilledMessagesAction(variant:)(v254);
    goto LABEL_179;
  }

  sub_18E1D44C0();
  v264 = v8193 == 0xD000000000000025 && v9 == 0xD000000000000028;
  if (v264 || (v265 = sub_18E1D5BF4(v256, v257, v258, v259, v260, v261, v262, v263, v2684, v2722, v2914, v3104, v3300, v3496, v3692, v3887, v4083, v4279, v4475, v4671, v4864, v5060, v5256, v5451, v5647, v5843, v6039, v6235, v6431, v6627, v6823, v7019, 0xD000000000000025, v7409, v7605, v7801, v7997, v8193), (sub_18E1E1530(v265, v266, v7214) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer(variant:)(v267, v268);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.DistilledMessagesReply(variant:)(v269);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v270 = swift_allocObject();
    sub_18E1C6378(v270);
    goto LABEL_16;
  }

  sub_18E1D44C0();
  v279 = v8194 == 0xD00000000000002ALL && v9 == 0xD000000000000028;
  if (v279 || (v280 = sub_18E1D5BF4(v271, v272, v273, v274, v275, v276, v277, v278, v2684, v2723, v2915, v3105, v3301, v3497, v3693, v3888, v4084, v4280, v4476, v4672, v4865, v5061, v5257, v5452, v5648, v5844, v6040, v6236, v6432, v6628, v6824, 0xD00000000000002ALL, v7214, v7410, v7606, v7802, v7998, v8194), (sub_18E1E1530(v280, v281, v7020) & 1) != 0))
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.SecureAnalytics.Model.IntegrityDiagnoseModel(variant:)(v282);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    *(a2 + 24) = &type metadata for SecureAnalyticsBundle;
    *(a2 + 32) = sub_18E2ADF28();
    sub_18E1E1950();
    v283 = swift_allocObject();
    sub_18E1CFC6C(v283);
    sub_18E220D78();
    SecureAnalyticsBundle.init(configurationIdentifier:baseModel:)(v284, v285, v286, v287);
    return result;
  }

  sub_18E220494();
  v296 = v295 == 0xD000000000000030 && v9 == 0xD000000000000028;
  if (v296 || (sub_18E1D7DE8(v288, v289, 0xD000000000000030, v290, v291, v292, v293, v294, v2684, v2724, v2916, v3106, v3302, v3498, v3694, v3889, v4085, v4281, v4477, v4673, v4866, v5062, v5258, v5453, v5649, v5845, v6041, v6237, v6433, v6629, v6825, v7020, v7215, v7411, v7607, v7803, v7999, v8195) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer(variant:)(v297);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.CodeSafetyGuardrail(variant:)(v298);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v299 = swift_allocObject();
    sub_18E1C6378(v299);
    goto LABEL_16;
  }

  sub_18E1D44C0();
  v308 = v8196 == 0xD00000000000002CLL && v9 == 0xD000000000000028;
  if (v308 || (v309 = sub_18E1D5BF4(v300, v301, v302, v303, v304, v305, v306, v307, v2684, v2725, v2917, v3107, v3303, v3499, v3695, v3890, v4086, v4282, v4478, v4674, v4867, v5063, v5259, v5454, v5650, v5846, v6042, v6238, 0xD00000000000002CLL, v6630, v6826, v7021, v7216, v7412, v7608, v7804, v8000, v8196), (sub_18E1E1530(v309, v310, v6434) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer(variant:)(v311);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite(variant:)(v312);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v313 = swift_allocObject();
    sub_18E1C6378(v313);
    goto LABEL_16;
  }

  sub_18E1D44C0();
  v322 = v8197 == 0xD000000000000039 && v9 == 0xD000000000000028;
  if (v322 || (v323 = sub_18E1D5BF4(v314, v315, v316, v317, v318, v319, v320, v321, v2684, v2726, v2918, v3108, v3304, v3500, v3696, v3891, v4087, v4283, v4479, v4675, v4868, v5064, v5260, v5455, v5651, 0xD000000000000039, v6043, v6239, v6434, v6631, v6827, v7022, v7217, v7413, v7609, v7805, v8001, v8197), (sub_18E1E1530(v323, v324, v5847) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v325);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v326);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ADMBackgroundPrompt(variant:)(v327);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v328 = swift_allocObject();
    sub_18E1C6378(v328);
    goto LABEL_16;
  }

  sub_18E1D44C0();
  v337 = v8198 == 0xD000000000000038 && v9 == 0xD000000000000028;
  if (v337 || (v338 = sub_18E1D5BF4(v329, v330, v331, v332, v333, v334, v335, v336, v2684, v2727, v2919, v3109, v3305, v3501, v3697, v3892, v4088, v4284, v4480, v4676, v4869, v5065, v5261, v5456, v5652, v5847, v6044, v6240, v6435, 0xD000000000000038, v6828, v7023, v7218, v7414, v7610, v7806, v8002, v8198), (sub_18E1E1530(v338, v339, v6632) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v340);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v341);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ADMPeopleGrounding(variant:)(v342);
    goto LABEL_848;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v350 = v8 && v9 == 0xD000000000000023;
  if (v350 || (sub_18E1D0318(v343, v344, 0xD000000000000038, v345, v346, v347, v348, v349, v2684, v2728, v2920, v3110, v3306, v3502, v3698, v3893, v4089, v4285, v4481, v4677, v4870, v5066, v5262, v5457, v5653, v5848, v6045, v6241, v6436, v6632, v6829, v7024, v7219, v7415, v7611, v7807, v8003, v8199) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v351);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v352);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ADMPromptRewriting(variant:)(v353);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ADMPromptRewriting(variant:)(v354);
    sub_18E1D5E64();
    goto LABEL_779;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v362 = v8 && v9 == 0xD000000000000028;
  if (v362 || (sub_18E1D7DE8(v355, v356, 0xD000000000000042, v357, v358, v359, v360, v361, v2684, v2729, v2921, v3111, v3307, v3503, v3699, v3894, v4090, v4286, v4482, v4678, v4871, v5067, v5263, v5458, v5654, v5849, v6046, v6242, v6437, v6633, v6830, v7025, v7220, v7416, v7612, v7808, v8004, v8200) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v363);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v364);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FactualConsistencyClassifier(variant:)(v365);
    goto LABEL_848;
  }

  sub_18E1D44C0();
  v374 = v8201 == 0xD000000000000033 && v9 == 0xD000000000000028;
  if (v374 || (v375 = sub_18E1D5BF4(v366, v367, v368, v369, v370, v371, v372, v373, v2684, v2730, v2922, v3112, v3308, v3504, v3700, v3895, v4091, v4287, v4483, v4679, v4872, v5068, v5264, v5459, v5655, v5850, v6047, v6243, v6438, v6634, 0xD000000000000033, v7026, v7221, v7417, v7613, v7809, v8005, v8201), (sub_18E1E1530(v375, v376, v6831) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v377);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v378);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MessagesActionSmall(variant:)(v379);
    goto LABEL_848;
  }

  sub_18E1D44C0();
  v388 = v8202 == 0xD000000000000032 && v9 == 0xD000000000000028;
  if (v388 || (v389 = sub_18E1D5BF4(v380, v381, v382, v383, v384, v385, v386, v387, v2684, v2731, v2923, v3113, v3309, v3505, 0xD000000000000032, v3896, v4092, v4288, v4484, v4680, v4873, v5069, v5265, v5460, v5656, v5851, v6048, v6244, v6439, v6635, v6831, v7027, v7222, v7418, v7614, v7810, v8006, v8202), (sub_18E1E1530(v389, v390, v3701) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v391);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v392);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MessagesReplyWatch(variant:)(v393);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v394 = swift_allocObject();
    sub_18E1C6378(v394);
    goto LABEL_16;
  }

  sub_18E1CE8FC();
  v403 = v8203 == 0xD00000000000002FLL && v9 == 0xD000000000000023;
  if (v403 || (v404 = sub_18E1D5BF4(v395, v396, v397, v398, v399, v400, v401, v402, v2684, v2732, v2924, v3114, v3310, v3506, v3701, v3897, v4093, v4289, v4485, v4681, v4874, v5070, v5266, v5461, v5657, v5852, 0xD00000000000002FLL, v6245, v6440, v6636, v6832, v7028, v7223, v7419, v7615, v7811, v8007, v8203), (sub_18E1E887C(v404, v405, v6049) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v406);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v407);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MiscSafety(variant:)(v408);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v409, v410, v411, v412, v413, v414, v415, v416, v2684, v2732, v2924);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_780;
  }

  sub_18E1CE8FC();
  v425 = v8204 == 0xD00000000000003ALL && v9 == 0xD000000000000023;
  if (v425 || (v426 = sub_18E1D5BF4(v417, v418, v419, v420, v421, v422, v423, v424, v2684, v2732, v2924, v3115, v3311, v3507, v3702, v3898, v4094, v4290, v4486, v4682, v4875, v5071, v5267, v5462, v5658, v5853, v6049, 0xD00000000000003ALL, v6441, v6637, v6833, v7029, v7224, v7420, v7616, v7812, v8008, v8204), (sub_18E1E887C(v426, v427, v6246) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v428);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v429);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MiscSafetyCustomized(variant:)(v430);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.MiscSafetyCustomizedEmbeddingPreprocessor(variant:)(v431);
    sub_18E1D5E64();

    sub_18E2208EC();
    goto LABEL_588;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v439 = v8 && v9 == 0xD000000000000023;
  if (v439 || (sub_18E1D0318(v432, v433, 0xD00000000000002CLL, v434, v435, v436, v437, v438, v2684, v2733, v2925, v3116, v3312, v3508, v3703, v3899, v4095, v4291, v4487, v4683, v4876, v5072, v5268, v5463, v5659, v5854, v6050, v6246, v6442, v6638, v6834, v7030, v7225, v7421, v7617, v7813, v8009, v8205) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v440);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v441);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail(variant:)(v442);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v443, v444, v445, v446, v447, v448, v449, v450, v2684, v2733, v2925);
    goto LABEL_701;
  }

  sub_18E220494();
  v459 = v458 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v459 || (sub_18E1D7DE8(v451, v452, 0xD00000000000002DLL, v453, v454, v455, v456, v457, v2684, v2733, v2925, v3117, v3313, v3509, v3704, v3900, v4096, v4292, v4488, v4684, v4877, v5073, v5269, v5464, v5660, v5855, v6051, v6247, v6443, v6639, v6835, v7031, v7226, v7422, v7618, v7814, v8010, v8206) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v460);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v461);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.MMSafety(variant:)();
    goto LABEL_809;
  }

  sub_18E1D44C0();
  v470 = v8207 == 0xD000000000000034 && v9 == 0xD000000000000028;
  if (v470 || (v471 = sub_18E1D5BF4(v462, v463, v464, v465, v466, v467, v468, v469, v2684, v2734, v2926, v3118, v3314, v3510, v3705, v3901, v4097, v4293, v4489, v4685, v4878, v5074, 0xD000000000000034, v5465, v5661, v5856, v6052, v6248, v6444, v6640, v6836, v7032, v7227, v7423, v7619, v7815, v8011, v8207), (sub_18E1E1530(v471, v472, v5270) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v473);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v474);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.PQAVerification(variant:)(v475);
    goto LABEL_848;
  }

  sub_18E1CE8FC();
  v484 = v8208 == 0xD000000000000037 && v9 == 0xD000000000000023;
  if (v484 || (v485 = sub_18E1D5BF4(v476, v477, v478, v479, v480, v481, v482, v483, v2684, v2735, v2927, v3119, v3315, v3511, v3706, v3902, v4098, v4294, v4490, v4686, v4879, v5075, v5270, 0xD000000000000037, v5662, v5857, v6053, v6249, v6445, v6641, v6837, v7033, v7228, v7424, v7620, v7816, v8012, v8208), (sub_18E1E887C(v485, v486, v5466) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v487);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v488);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PrepubescentSafety(variant:)(v489);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v490, v491, v492, v493, v494, v495, v496, v497, v2684, v2735, v2927);
    goto LABEL_701;
  }

  sub_18E1CE9B8();
  sub_18E1D5F30();
  v505 = v8 && v9 == 0xD000000000000023;
  if (v505 || (sub_18E1D0318(v498, v499, 0xD000000000000042, v500, v501, v502, v503, v504, v2684, v2735, v2927, v3120, v3316, v3512, v3707, v3903, v4099, v4295, v4491, v4687, v4880, v5076, v5271, v5466, v5663, v5858, v6054, v6250, v6446, v6642, v6838, v7034, v7229, v7425, v7621, v7817, v8013, v8209) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v506);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v507);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PrepubescentSafetyCustomized(variant:)(v508);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.PrepubescentSafetyCustomizedEmbeddingPreprocessor(variant:)(v509);
    sub_18E1D5E64();

    sub_18E2208EC();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v510 = swift_allocObject();
    sub_18E1C6378(v510);
    goto LABEL_840;
  }

  sub_18E220494();
  sub_18E1E3614();
  v518 = v8 && v9 == 0xD000000000000028;
  if (v518 || (sub_18E1D7DE8(v511, v512, 0xD00000000000002ALL, v513, v514, v515, v516, v517, v2684, v2736, v2928, v3121, v3317, v3513, v3708, v3904, v4100, v4296, v4492, v4688, v4881, v5077, v5272, v5467, v5664, v5859, v6055, v6251, v6447, v6643, v6839, v7035, v7230, v7426, v7622, v7818, v8014, v8210) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v519);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v520);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.Safety(variant:)();
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v521 = swift_allocObject();
    sub_18E1C6378(v521);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v529 = v8 && v9 == 0xD000000000000023;
  if (v529 || (sub_18E1D0318(v522, v523, 0xD000000000000038, v524, v525, v526, v527, v528, v2684, v2737, v2929, v3122, v3318, v3514, v3709, v3905, v4101, v4297, v4493, v4689, v4882, v5078, v5273, v5468, v5665, v5860, v6056, v6252, v6448, v6644, v6840, v7036, v7231, v7427, v7623, v7819, v8015, v8211) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v530);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v531);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralIntegrity(variant:)(v532);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v533, v534, v535, v536, v537, v538, v539, v540, v2684, v2737, v2929);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_780;
  }

  sub_18E1CE8FC();
  v549 = v8212 == 0xD000000000000043 && v9 == 0xD000000000000023;
  if (v549 || (v550 = sub_18E1D5BF4(v541, v542, v543, v544, v545, v546, v547, v548, v2684, v2737, v2929, v3123, v3319, v3515, v3710, v3906, 0xD000000000000043, v4298, v4494, v4690, v4883, v5079, v5274, v5469, v5666, v5861, v6057, v6253, v6449, v6645, v6841, v7037, v7232, v7428, v7624, v7820, v8016, v8212), (sub_18E1E887C(v550, v551, v4102) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v552);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v553);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralIntegrityCustomized(variant:)(v554);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.StructuralIntegrityCustomizedEmbeddingPreprocessor(variant:)(v555);
    sub_18E1D5E64();

    sub_18E2208EC();
    goto LABEL_588;
  }

  sub_18E1D44C0();
  v564 = v8213 == 0xD00000000000002ELL && v9 == 0xD000000000000028;
  if (v564 || (v565 = sub_18E1D5BF4(v556, v557, v558, v559, v560, v561, v562, v563, v2684, v2738, v2930, v3124, v3320, v3516, v3711, v3907, v4102, v4299, 0xD00000000000002ELL, v4691, v4884, v5080, v5275, v5470, v5667, v5862, v6058, v6254, v6450, v6646, v6842, v7038, v7233, v7429, v7625, v7821, v8017, v8213), (sub_18E1E1530(v565, v566, v4495) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v567);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v568);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.TextGuardSafetyGuardrail(variant:)(v569);
    goto LABEL_848;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v577 = v8 && v9 == 0xD000000000000023;
  if (v577 || (sub_18E1D0318(v570, v571, 0xD000000000000039, v572, v573, v574, v575, v576, v2684, v2739, v2931, v3125, v3321, v3517, v3712, v3908, v4103, v4300, v4495, v4692, v4885, v5081, v5276, v5471, v5668, v5863, v6059, v6255, v6451, v6647, v6843, v7039, v7234, v7430, v7626, v7822, v8018, v8214) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct300MTokenizer(variant:)(v578);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct300MBase(variant:)(v579);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.VIContentClassifier(variant:)(v580);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer300M(variant:)(v581, v582, v583, v584, v585, v586, v587, v588, v2684, v2739, v2931);
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_780;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v596 = v8 && v9 == 0xD000000000000023;
  if (v596 || (sub_18E1D0318(v589, v590, 0xD000000000000032, v591, v592, v593, v594, v595, v2684, v2739, v2931, v3126, v3322, v3518, v3713, v3909, v4104, v4301, v4496, v4693, v4886, v5082, v5277, v5472, v5669, v5864, v6060, v6256, v6452, v6648, v6844, v7040, v7235, v7431, v7627, v7823, v8019, v8215) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v597);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v598, v599);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AnswerSynthesis(variant:)(v600);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AnswerSynthesis(variant:)(v601);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E1D44C0();
  v610 = v8216 == 0xD00000000000003BLL && v9 == 0xD000000000000028;
  if (v610 || (v611 = sub_18E1D5BF4(v602, v603, v604, v605, v606, v607, v608, v609, v2684, v2740, v2932, v3127, v3323, 0xD00000000000003BLL, v3714, v3910, v4105, v4302, v4497, v4694, v4887, v5083, v5278, v5473, v5670, v5865, v6061, v6257, v6453, v6649, v6845, v7041, v7236, v7432, v7628, v7824, v8020, v8216), (sub_18E1E1530(v611, v612, v3519) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v613);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v614, v615);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FullPayloadCorrection(variant:)(v616);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v617 = swift_allocObject();
    sub_18E1C6378(v617);
    goto LABEL_16;
  }

  sub_18E220494();
  v626 = v625 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v626 || (sub_18E1D7DE8(v618, v619, 0xD00000000000002DLL, v620, v621, v622, v623, v624, v2684, v2741, v2933, v3128, v3324, v3519, v3715, v3911, v4106, v4303, v4498, v4695, v4888, v5084, v5279, v5474, v5671, v5866, v6062, v6258, v6454, v6650, v6846, v7042, v7237, v7433, v7629, v7825, v8021, v8217) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v627);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v628, v629);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.AutoTagger(variant:)(v630);
    goto LABEL_809;
  }

  sub_18E1CE8FC();
  v639 = v8218 == 0xD000000000000035 && v9 == 0xD000000000000023;
  if (v639 || (v640 = sub_18E1D5BF4(v631, v632, v633, v634, v635, v636, v637, v638, v2684, v2742, v2934, v3129, v3325, v3520, v3716, v3912, v4107, v4304, v4499, v4696, v4889, 0xD000000000000035, v5280, v5475, v5672, v5867, v6063, v6259, v6455, v6651, v6847, v7043, v7238, v7434, v7630, v7826, v8022, v8218), (sub_18E1E887C(v640, v641, v5085) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v642);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v643, v644);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AutonamingMessages(variant:)(v645);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AutonamingMessages(variant:)(v646);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E1D1940();
  v654 = v8 && v9 == 0xD000000000000028;
  if (v654 || (sub_18E1D7DE8(v647, v648, 0xD000000000000026, v649, v650, v651, v652, v653, v2684, v2743, v2935, v3130, v3326, v3521, v3717, v3913, v4108, v4305, v4500, v4697, v4890, v5085, v5281, v5476, v5673, v5868, v6064, v6260, v6456, v6652, v6848, v7044, v7239, v7435, v7631, v7827, v8023, v8219) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v655);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v656, v657);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.InstructBaseAdapter(variant:)(v658);
    sub_18E1D5E64();

    v8389 = 0;
    goto LABEL_180;
  }

  sub_18E1CAD14();
  v666 = v8 && v9 == 0xD000000000000023;
  if (v666 || (sub_18E1D0318(v659, v660, 0xD000000000000033, v661, v662, v663, v664, v665, v2684, v2744, v2936, v3131, v3327, v3522, v3718, v3914, v4109, v4306, v4501, v4698, v4891, v5086, v5282, v5477, v5674, v5869, v6065, v6261, v6457, v6653, v6849, v7045, v7240, v7436, v7632, v7828, v8024, v8220) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v667);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v668, v669);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.BulletsTransform(variant:)(v670);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.BulletsTransform(variant:)(v671);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1CFDF0();
  v679 = v8 && v9 == 0xD000000000000023;
  if (v679 || (sub_18E1D0318(v672, v673, 0xD00000000000002ELL, v674, v675, v676, v677, v678, v2684, v2745, v2937, v3132, v3328, v3523, v3719, v3915, v4110, v4307, v4502, v4699, v4892, v5087, v5283, v5478, v5675, v5870, v6066, v6262, v6458, v6654, v6850, v7046, v7241, v7437, v7633, v7829, v8025, v8221) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v680);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v681, v682);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ConciseTone(variant:)(v683);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ConciseTone(variant:)(v684);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E220494();
  v693 = v692 == v6851 && v9 == 0xD000000000000028;
  if (v693 || (sub_18E1D7DE8(v685, v686, 0xD000000000000033, v687, v688, v689, v690, v691, v2684, v2746, v2938, v3133, v3329, v3524, v3720, v3916, v4111, v4308, v4503, v4700, v4893, v5088, v5284, v5479, v5676, v5871, v6067, v6263, v6459, v6655, v6851, v7047, v7242, v7438, v7634, v7830, v8026, v8222) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v694);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v695, v696);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ContextAwareness(variant:)(v697);
    goto LABEL_848;
  }

  sub_18E1CE8FC();
  v706 = v8223 == 0xD000000000000031 && v9 == 0xD000000000000023;
  if (v706 || (v707 = sub_18E1D5BF4(v698, v699, v700, v701, v702, v703, v704, v705, v2684, v2747, v2939, v3134, v3330, v3525, v3721, v3917, v4112, v4309, v4504, v4701, v4894, v5089, v5285, v5480, 0xD000000000000031, v5872, v6068, v6264, v6460, v6656, v6852, v7048, v7243, v7439, v7635, v7831, v8027, v8223), (sub_18E1E887C(v707, v708, v5677) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v709);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v710, v711);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ContextProgram(variant:)(v712);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ContextProgram(variant:)(v713);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E1E3AF8();
  v721 = v8 && v9 == 0xD000000000000028;
  if (v721 || (sub_18E1D7DE8(v714, v715, 0xD000000000000034, v716, v717, v718, v719, v720, v2684, v2748, v2940, v3135, v3331, v3526, v3722, v3918, v4113, v4310, v4505, v4702, v4895, v5090, v5286, v5481, v5677, v5873, v6069, v6265, v6461, v6657, v6853, v7049, v7244, v7440, v7636, v7832, v8028, v8224) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v722);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v723, v724);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.DescribeYourEdit(variant:)(v725);
    goto LABEL_848;
  }

  sub_18E220494();
  sub_18E2234B8();
  v733 = v8 && v9 == 0xD000000000000028;
  if (v733 || (sub_18E1D7DE8(v726, v727, 0xD000000000000031, v728, v729, v730, v731, v732, v2684, v2749, v2941, v3136, v3332, v3527, v3723, v3919, v4114, v4311, v4506, v4703, v4896, v5091, v5287, v5482, v5678, v5874, v6070, v6266, v6462, v6658, v6854, v7050, v7245, v7441, v7637, v7833, v8029, v8225) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v734);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v735, v736);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FitnessSummary(variant:)(v737);
    goto LABEL_848;
  }

  sub_18E220494();
  sub_18E1E3CE8();
  v745 = v8 && v9 == 0xD000000000000028;
  if (v745 || (sub_18E1D7DE8(v738, v739, 0xD000000000000037, v740, v741, v742, v743, v744, v2684, v2750, v2942, v3137, v3333, v3528, v3724, v3920, v4115, v4312, v4507, v4704, v4897, v5092, v5288, v5483, v5679, v5875, v6071, v6267, v6463, v6659, v6855, v7051, v7246, v7442, v7638, v7834, v8030, v8226) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v746);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v747, v748);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ContentTagger(variant:)(v749);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v750 = swift_allocObject();
    sub_18E1C6378(v750);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  v759 = v758 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v759 || (sub_18E1D0318(v751, v752, 0xD000000000000030, v753, v754, v755, v756, v757, v2684, v2751, v2943, v3138, v3334, v3529, v3725, v3921, v4116, v4313, v4508, v4705, v4898, v5093, v5289, v5484, v5680, v5876, v6072, v6268, v6464, v6660, v6856, v7052, v7247, v7443, v7639, v7835, v8031, v8227) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v760);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v761, v762);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.InstructFMApiGeneric(variant:)(v763);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.InstructFMApiGeneric(variant:)(v764);
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v772 = v8 && v9 == 0xD000000000000028;
  if (v772 || (sub_18E1D7DE8(v765, v766, 0xD000000000000042, v767, v768, v769, v770, v771, v2684, v2752, v2944, v3139, v3335, v3530, v3726, v3922, v4117, v4314, v4509, v4706, v4899, v5094, v5290, v5485, v5681, v5877, v6073, v6269, v6465, v6661, v6857, v7053, v7248, v7444, v7640, v7836, v8032, v8228) & 1) != 0)
  {
    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.LLM.DraftModel.InstructFMApiThirdPartyCompileDraft(variant:)(v773);
    sub_18E1D5E64();
    if (v2)
    {
      goto LABEL_7;
    }

    *(a2 + 24) = &type metadata for LLMCompileDraftBundle;
    *(a2 + 32) = sub_18E2ADF7C();
    sub_18E1E1950();
    v774 = swift_allocObject();
    sub_18E1CFC6C(v774);
    sub_18E220D78();
    LLMCompileDraftBundle.init(configurationIdentifier:draftModel:)(v775, v776, v777, v778);
    return result;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v786 = v8 && v9 == 0xD000000000000023;
  if (v786 || (sub_18E1D0318(v779, v780, 0xD00000000000002FLL, v781, v782, v783, v784, v785, v2684, v2753, v2945, v3140, v3336, v3531, v3727, v3923, v4118, v4315, v4510, v4707, v4900, v5095, v5291, v5486, v5682, v5878, v6074, v6270, v6466, v6662, v6858, v7054, v7249, v7445, v7641, v7837, v8033, v8229) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v787);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v788, v789);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.FriendlyTone(variant:)(v790);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.FriendlyTone(variant:)(v791);
    goto LABEL_779;
  }

  sub_18E1CE8FC();
  v800 = v8230 == 0xD000000000000040 && v9 == 0xD000000000000023;
  if (v800 || (v801 = sub_18E1D5BF4(v792, v793, v794, v795, v796, v797, v798, v799, v2684, v2754, v2946, v3141, v3337, v3532, v3728, v3924, v4119, 0xD000000000000040, v4511, v4708, v4901, v5096, v5292, v5487, v5683, v5879, v6075, v6271, v6467, v6663, v6859, v7055, v7250, v7446, v7642, v7838, v8034, v8230), (sub_18E1E887C(v801, v802, v4316) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v803);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v804, v805);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalMomentsClassification(variant:)(v806);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalMomentsClassification(variant:)(v807);
    goto LABEL_839;
  }

  sub_18E1CE8FC();
  v816 = v8231 == 0xD00000000000003CLL && v9 == 0xD000000000000023;
  if (v816 || (v817 = sub_18E1D5BF4(v808, v809, v810, v811, v812, v813, v814, v815, v2684, v2755, v2947, v3142, v3338, v3533, v3729, v3925, v4120, v4316, v4512, v4709, v4902, v5097, 0xD00000000000003CLL, v5488, v5684, v5880, v6076, v6272, v6468, v6664, v6860, v7056, v7251, v7447, v7643, v7839, v8035, v8231), (sub_18E1E887C(v817, v818, v5293) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v819);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v820, v821);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalMomentsReflection(variant:)(v822);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalMomentsReflection(variant:)(v823);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v831 = v8 && v9 == 0xD000000000000023;
  if (v831 || (sub_18E1D0318(v824, v825, 0xD00000000000002FLL, v826, v827, v828, v829, v830, v2684, v2756, v2948, v3143, v3339, v3534, v3730, v3926, v4121, v4317, v4513, v4710, v4903, v5098, v5293, v5489, v5685, v5881, v6077, v6273, v6469, v6665, v6861, v7057, v7252, v7448, v7644, v7840, v8036, v8232) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v832);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v833, v834);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.LWOnDevicePlannerV1(variant:)(v835);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.LWOnDevicePlannerV1(variant:)(v836);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v844 = v8 && v9 == 0xD000000000000023;
  if (v844 || (sub_18E1D0318(v837, v838, 0xD00000000000002FLL, v839, v840, v841, v842, v843, v2684, v2757, v2949, v3144, v3340, v3535, v3731, v3927, v4122, v4318, v4514, v4711, v4904, v5099, v5294, v5490, v5686, v5882, v6078, v6274, v6470, v6666, v6862, v7058, v7253, v7449, v7645, v7841, v8037, v8233) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v845);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v846, v847);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MagicRewrite(variant:)(v848);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MagicRewrite(variant:)(v849);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v857 = v8 && v9 == 0xD000000000000023;
  if (v857 || (sub_18E1D0318(v850, v851, 0xD00000000000002CLL, v852, v853, v854, v855, v856, v2684, v2758, v2950, v3145, v3341, v3536, v3732, v3928, v4123, v4319, v4515, v4712, v4905, v5100, v5295, v5491, v5687, v5883, v6079, v6275, v6471, v6667, v6863, v7059, v7254, v7450, v7646, v7842, v8038, v8234) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v858);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v859, v860);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReply(variant:)(v861);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReply(variant:)(v862);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v870 = v8 && v9 == 0xD000000000000023;
  if (v870 || (sub_18E1D0318(v863, v864, 0xD00000000000003CLL, v865, v866, v867, v868, v869, v2684, v2759, v2951, v3146, v3342, v3537, v3733, v3929, v4124, v4320, v4516, v4713, v4906, v5101, v5296, v5492, v5688, v5884, v6080, v6276, v6472, v6668, v6864, v7060, v7255, v7451, v7647, v7843, v8039, v8235) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v871);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v872, v873);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyLongFormBasic(variant:)(v874);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyLongFormBasic(variant:)(v875);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v883 = v8 && v9 == 0xD000000000000023;
  if (v883 || (sub_18E1D0318(v876, v877, 0xD00000000000003ELL, v878, v879, v880, v881, v882, v2684, v2760, v2952, v3147, v3343, v3538, v3734, v3930, v4125, v4321, v4517, v4714, v4907, v5102, v5297, v5493, v5689, v5885, v6081, v6277, v6473, v6669, v6865, v7061, v7256, v7452, v7648, v7844, v8040, v8236) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v884);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v885, v886);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyLongFormRewrite(variant:)(v887);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyLongFormRewrite(variant:)(v888);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v896 = v8 && v9 == 0xD000000000000023;
  if (v896 || (sub_18E1D0318(v889, v890, 0xD00000000000002FLL, v891, v892, v893, v894, v895, v2684, v2761, v2953, v3148, v3344, v3539, v3735, v3931, v4126, v4322, v4518, v4715, v4908, v5103, v5298, v5494, v5690, v5886, v6082, v6278, v6474, v6670, v6866, v7062, v7257, v7453, v7649, v7845, v8041, v8237) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v897);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v898, v899);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MailReplyQA(variant:)(v900);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MailReplyQA(variant:)(v901);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v909 = v8 && v9 == 0xD000000000000023;
  if (v909 || (sub_18E1D0318(v902, v903, 0xD000000000000031, v904, v905, v906, v907, v908, v2684, v2762, v2954, v3149, v3345, v3540, v3736, v3932, v4127, v4323, v4519, v4716, v4909, v5104, v5299, v5495, v5691, v5887, v6083, v6279, v6475, v6671, v6867, v7063, v7258, v7454, v7650, v7846, v8042, v8238) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v910);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v911, v912);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesAction(variant:)(v913);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesAction(variant:)(v914, v915, v916, v917, v918, v919, v920, v921, v2684, v2762, v2954, v3149, v3345, v3540, v3736, v3932, v4127, v4323, v4519, v4716, v4909, v5104, v5299, v5495, v5691, v5887, v6083, v6279, v6475, v6671, v6867, v7063, v7258, v7454, v7650, v7846, v8042, v8238, v8376, v8377, v8378, v8379, v8380, v8381, v8382, v8383, v8384, v8385);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  v930 = v929 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v930 || (sub_18E1D0318(v922, v923, 0xD000000000000030, v924, v925, v926, v927, v928, v2684, v2762, v2954, v3149, v3345, v3540, v3736, v3932, v4127, v4323, v4519, v4716, v4909, v5104, v5299, v5495, v5691, v5887, v6083, v6279, v6475, v6671, v6867, v7063, v7258, v7454, v7650, v7846, v8042, v8238) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v931);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v932, v933);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesReply(variant:)(v934);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesReply(variant:)(v935);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3614();
  v943 = v8 && v9 == 0xD000000000000023;
  if (v943 || (sub_18E1D0318(v936, v937, 0xD00000000000002ALL, v938, v939, v940, v941, v942, v2684, v2763, v2955, v3150, v3346, v3541, v3737, v3933, v4128, v4324, v4520, v4717, v4910, v5105, v5300, v5496, v5692, v5888, v6084, v6280, v6476, v6672, v6868, v7064, v7259, v7455, v7651, v7847, v8043, v8239) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v944);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v945, v946);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrail3B(variant:)(v947);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v948);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v949 = swift_allocObject();
    sub_18E1C6378(v949);
    goto LABEL_840;
  }

  sub_18E1CE8FC();
  v958 = v8240 == 0xD00000000000002BLL && v9 == 0xD000000000000023;
  if (v958 || (v959 = sub_18E1D5BF4(v950, v951, v952, v953, v954, v955, v956, v957, v2684, v2764, v2956, v3151, 0xD00000000000002BLL, v3542, v3738, v3934, v4129, v4325, v4521, v4718, v4911, v5106, v5301, v5497, v5693, v5889, v6085, v6281, v6477, v6673, v6869, v7065, v7260, v7456, v7652, v7848, v8044, v8240), (sub_18E1E887C(v959, v960, v3347) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v961);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v962, v963);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Nutrition(variant:)(v964);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v965);
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v966 = swift_allocObject();
    sub_18E1C6378(v966);
    goto LABEL_840;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v974 = v8 && v9 == 0xD000000000000023;
  if (v974 || (sub_18E1D0318(v967, v968, 0xD00000000000003ALL, v969, v970, v971, v972, v973, v2684, v2765, v2957, v3152, v3347, v3543, v3739, v3935, v4130, v4326, v4522, v4719, v4912, v5107, v5302, v5498, v5694, v5890, v6086, v6282, v6478, v6674, v6870, v7066, v7261, v7457, v7653, v7849, v8045, v8241) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v975);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v976, v977);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PersonalizedSmartReply(variant:)(v978);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PersonalizedSmartReply(variant:)(v979);
    goto LABEL_587;
  }

  sub_18E1CE8FC();
  v988 = v8242 == 0xD000000000000041 && v9 == 0xD000000000000023;
  if (v988 || (v989 = sub_18E1D5BF4(v980, v981, v982, v983, v984, v985, v986, v987, v2684, v2766, v2958, v3153, v3348, v3544, v3740, 0xD000000000000041, v4131, v4327, v4523, v4720, v4913, v5108, v5303, v5499, v5695, v5891, v6087, v6283, v6479, v6675, v6871, v7067, v7262, v7458, v7654, v7850, v8046, v8242), (sub_18E1E887C(v989, v990, v3936) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v991);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v992, v993);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingMM(variant:)(v994);
    sub_18E1CF900();

    sub_18E1C5F8C();
    sub_18E1E2F00("embeddingPreprocessorVariant");
    sub_18E216858();
    sub_18E228788();
    static Catalog.Resource.EmbeddingPreprocessor.AFMPlusEmbeddingPreprocessor(variant:)(v995);
    sub_18E1D5E64();

    sub_18E2208EC();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1008 = swift_allocObject();
    sub_18E1C6378(v1008);
    goto LABEL_840;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v1003 = v8 && v9 == 0xD000000000000028;
  if (v1003 || (sub_18E1D7DE8(v996, v997, 0xD000000000000042, v998, v999, v1000, v1001, v1002, v2684, v2767, v2959, v3154, v3349, v3545, v3741, v3936, v4132, v4328, v4524, v4721, v4914, v5109, v5304, v5500, v5696, v5892, v6088, v6284, v6480, v6676, v6872, v7068, v7263, v7459, v7655, v7851, v8047, v8243) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1004);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1005, v1006);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.PhotosLibraryUnderstandingT2T(variant:)(v1007);
    goto LABEL_848;
  }

  sub_18E1CE8FC();
  v1017 = v8244 == 0xD000000000000048 && v9 == 0xD000000000000023;
  if (v1017 || (v1018 = sub_18E1D5BF4(v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v2684, v2768, v2960, 0xD000000000000048, v3350, v3546, v3742, v3937, v4133, v4329, v4525, v4722, v4915, v5110, v5305, v5501, v5697, v5893, v6089, v6285, v6481, v6677, v6873, v7069, v7264, v7460, v7656, v7852, v8048, v8244), (sub_18E1E887C(v1018, v1019, v3155) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1020);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1021, v1022);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1023);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationOutlier3b(variant:)(v1024);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E1CE8FC();
  v1033 = v8245 == 0xD00000000000003FLL && v9 == 0xD000000000000023;
  if (v1033 || (v1034 = sub_18E1D5BF4(v1025, v1026, v1027, v1028, v1029, v1030, v1031, v1032, v2684, v2769, v2961, v3155, v3351, v3547, v3743, v3938, v4134, v4330, v4526, v4723, 0xD00000000000003FLL, v5111, v5306, v5502, v5698, v5894, v6090, v6286, v6482, v6678, v6874, v7070, v7265, v7461, v7657, v7853, v8049, v8245), (sub_18E1E887C(v1034, v1035, v4916) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1036);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1037, v1038);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1039);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits3b(variant:)(v1040);
    sub_18E1D5E64();
    goto LABEL_839;
  }

  sub_18E1CE8FC();
  v1049 = v8246 == 0xD000000000000045 && v9 == 0xD000000000000023;
  if (v1049 || (v1050 = sub_18E1D5BF4(v1041, v1042, v1043, v1044, v1045, v1046, v1047, v1048, v2684, v2770, 0xD000000000000045, v3156, v3352, v3548, v3744, v3939, v4135, v4331, v4527, v4724, v4916, v5112, v5307, v5503, v5699, v5895, v6091, v6287, v6483, v6679, v6875, v7071, v7266, v7462, v7658, v7854, v8050, v8246), (sub_18E1E887C(v1050, v1051, v2962) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1052);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1053, v1054);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1055);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding3b(variant:)(v1056);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1057 = swift_allocObject();
    sub_18E1C6378(v1057);
    goto LABEL_840;
  }

  sub_18E1CE8FC();
  v1066 = v8247 == 0xD00000000000003DLL && v9 == 0xD000000000000023;
  if (v1066 || (v1067 = sub_18E1D5BF4(v1058, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v2684, v2771, v2962, v3157, v3353, v3549, v3745, v3940, v4136, v4332, v4528, v4725, v4917, v5113, v5308, v5504, v5700, v5896, v6092, v6288, v6484, v6680, v6876, 0xD00000000000003DLL, v7267, v7463, v7659, v7855, v8051, v8247), (sub_18E1E887C(v1067, v1068, v7072) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1069);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1070, v1071);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller3b(variant:)(v1072);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller3b(variant:)(v1073);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v1081 = v8 && v9 == 0xD000000000000023;
  if (v1081 || (sub_18E1D0318(v1074, v1075, 0xD000000000000037, v1076, v1077, v1078, v1079, v1080, v2684, v2772, v2963, v3158, v3354, v3550, v3746, v3941, v4137, v4333, v4529, v4726, v4918, v5114, v5309, v5505, v5701, v5897, v6093, v6289, v6485, v6681, v6877, v7072, v7268, v7464, v7660, v7856, v8052, v8248) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1082);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1083, v1084);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v1085);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v1086);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v1094 = v8 && v9 == 0xD000000000000023;
  if (v1094 || (sub_18E1D0318(v1087, v1088, 0xD00000000000003ALL, v1089, v1090, v1091, v1092, v1093, v2684, v2773, v2964, v3159, v3355, v3551, v3747, v3942, v4138, v4334, v4530, v4727, v4919, v5115, v5310, v5506, v5702, v5898, v6094, v6290, v6486, v6682, v6878, v7073, v7269, v7465, v7661, v7857, v8053, v8249) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1095);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1096, v1097);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesTitle(variant:)(v1098);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesTitle(variant:)(v1099);
LABEL_587:

    sub_18E1C77D0();
LABEL_588:
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1100 = swift_allocObject();
    sub_18E1C6378(v1100);
LABEL_840:
    sub_18E1D00D4();
    v32 = 0xD000000000000023;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v24, v32, v25, v26, v27, v28, v29, v30, v31, v2684);
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v1108 = v8 && v9 == 0xD000000000000023;
  if (v1108 || (sub_18E1D0318(v1101, v1102, 0xD00000000000002CLL, v1103, v1104, v1105, v1106, v1107, v2684, v2774, v2965, v3160, v3356, v3552, v3748, v3943, v4139, v4335, v4531, v4728, v4920, v5116, v5311, v5507, v5703, v5899, v6095, v6291, v6487, v6683, v6879, v7074, v7270, v7466, v7662, v7858, v8054, v8250) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1109);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1110, v1111);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV4(variant:)(v1112);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV4(variant:)(v1113);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v1121 = v8 && v9 == 0xD000000000000023;
  if (v1121 || (sub_18E1D0318(v1114, v1115, 0xD00000000000002CLL, v1116, v1117, v1118, v1119, v1120, v2684, v2775, v2966, v3161, v3357, v3553, v3749, v3944, v4140, v4336, v4532, v4729, v4921, v5117, v5312, v5508, v5704, v5900, v6096, v6292, v6488, v6684, v6880, v7075, v7271, v7467, v7663, v7859, v8055, v8251) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1122);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1123, v1124);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV5(variant:)(v1125);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV5(variant:)(v1126);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v1134 = v8 && v9 == 0xD000000000000023;
  if (v1134 || (sub_18E1D0318(v1127, v1128, 0xD00000000000002CLL, v1129, v1130, v1131, v1132, v1133, v2684, v2776, v2967, v3162, v3358, v3554, v3750, v3945, v4141, v4337, v4533, v4730, v4922, v5118, v5313, v5509, v5705, v5901, v6097, v6293, v6489, v6685, v6881, v7076, v7272, v7468, v7664, v7860, v8056, v8252) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1135);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1136, v1137);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV6(variant:)(v1138);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV6(variant:)(v1139);
    goto LABEL_779;
  }

  sub_18E1CAD14();
  v1147 = v8 && v9 == 0xD000000000000023;
  if (v1147 || (sub_18E1D0318(v1140, v1141, 0xD000000000000033, v1142, v1143, v1144, v1145, v1146, v2684, v2777, v2968, v3163, v3359, v3555, v3751, v3946, v4142, v4338, v4534, v4731, v4923, v5119, v5314, v5510, v5706, v5902, v6098, v6294, v6490, v6686, v6882, v7077, v7273, v7469, v7665, v7861, v8057, v8253) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1148);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1149, v1150);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ProfessionalTone(variant:)(v1151);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ProfessionalTone(variant:)(v1152);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v1160 = v8 && v9 == 0xD000000000000023;
  if (v1160 || (sub_18E1D0318(v1153, v1154, 0xD000000000000035, v1155, v1156, v1157, v1158, v1159, v2684, v2778, v2969, v3164, v3360, v3556, v3752, v3947, v4143, v4339, v4535, v4732, v4924, v5120, v5315, v5511, v5707, v5903, v6099, v6295, v6491, v6687, v6883, v7078, v7274, v7470, v7666, v7862, v8058, v8254) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1161);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1162, v1163);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ProofreadingReview(variant:)(v1164);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ProofreadingReview(variant:)(v1165);
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E1E22F0();
  v1173 = v8 && v9 == 0xD000000000000028;
  if (v1173 || (sub_18E1D7DE8(v1166, v1167, 0xD000000000000040, v1168, v1169, v1170, v1171, v1172, v2684, v2779, v2970, v3165, v3361, v3557, v3753, v3948, v4144, v4340, v4536, v4733, v4925, v5121, v5316, v5512, v5708, v5904, v6100, v6296, v6492, v6688, v6884, v7079, v7275, v7471, v7667, v7863, v8059, v8255) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1174);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1175, v1176);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v1177);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1178 = swift_allocObject();
    sub_18E1C6378(v1178);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  v1187 = v1186 == v4145 && v9 == 0xD000000000000023;
  if (v1187 || (sub_18E1D0318(v1179, v1180, 0xD000000000000043, v1181, v1182, v1183, v1184, v1185, v2684, v2780, v2971, v3166, v3362, v3558, v3754, v3949, v4145, v4341, v4537, v4734, v4926, v5122, v5317, v5513, v5709, v5905, v6101, v6297, v6493, v6689, v6885, v7080, v7276, v7472, v7668, v7864, v8060, v8256) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1188);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1189, v1190);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.RemindersSuggestActionItems(variant:)(v1191);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.RemindersSuggestActionItems(variant:)(v1192);
    sub_18E1D5E64();

    sub_18E1C77D0();
    goto LABEL_588;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1200 = v8 && v9 == 0xD000000000000023;
  if (v1200 || (sub_18E1D0318(v1193, v1194, 0xD000000000000038, v1195, v1196, v1197, v1198, v1199, v2684, v2781, v2972, v3167, v3363, v3559, v3755, v3950, v4146, v4342, v4538, v4735, v4927, v5123, v5318, v5514, v5710, v5906, v6102, v6298, v6494, v6690, v6886, v7081, v7277, v7473, v7669, v7865, v8061, v8257) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1201);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1202, v1203);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV4(variant:)(v1204);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV4(variant:)(v1205);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1213 = v8 && v9 == 0xD000000000000023;
  if (v1213 || (sub_18E1D0318(v1206, v1207, 0xD000000000000038, v1208, v1209, v1210, v1211, v1212, v2684, v2782, v2973, v3168, v3364, v3560, v3756, v3951, v4147, v4343, v4539, v4736, v4928, v5124, v5319, v5515, v5711, v5907, v6103, v6299, v6495, v6691, v6887, v7082, v7278, v7474, v7670, v7866, v8062, v8258) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1214);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1215, v1216);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV5(variant:)(v1217);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV5(variant:)(v1218);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1226 = v8 && v9 == 0xD000000000000023;
  if (v1226 || (sub_18E1D0318(v1219, v1220, 0xD000000000000038, v1221, v1222, v1223, v1224, v1225, v2684, v2783, v2974, v3169, v3365, v3561, v3757, v3952, v4148, v4344, v4540, v4737, v4929, v5125, v5320, v5516, v5712, v5908, v6104, v6300, v6496, v6692, v6888, v7083, v7279, v7475, v7671, v7867, v8063, v8259) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1227);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1228, v1229);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV6(variant:)(v1230);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV6(variant:)(v1231);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v1239 = v8 && v9 == 0xD000000000000023;
  if (v1239 || (sub_18E1D0318(v1232, v1233, 0xD000000000000032, v1234, v1235, v1236, v1237, v1238, v2684, v2784, v2975, v3170, v3366, v3562, v3758, v3953, v4149, v4345, v4541, v4738, v4930, v5126, v5321, v5517, v5713, v5909, v6105, v6301, v6497, v6693, v6889, v7084, v7280, v7476, v7672, v7868, v8064, v8260) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1240);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1241, v1242);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SafetyGuardrail(variant:)(v1243);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SafetyGuardrail(variant:)(v1244);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v1252 = v8 && v9 == 0xD000000000000023;
  if (v1252 || (sub_18E1D0318(v1245, v1246, 0xD00000000000003CLL, v1247, v1248, v1249, v1250, v1251, v2684, v2785, v2976, v3171, v3367, v3563, v3759, v3954, v4150, v4346, v4542, v4739, v4931, v5127, v5322, v5518, v5714, v5910, v6106, v6302, v6498, v6694, v6890, v7085, v7281, v7477, v7673, v7869, v8065, v8261) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1253);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1254, v1255);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingOnDevice(variant:)(v1256);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingOnDevice(variant:)(v1257);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3614();
  v1265 = v8 && v9 == 0xD000000000000023;
  if (v1265 || (sub_18E1D0318(v1258, v1259, 0xD00000000000003DLL, v1260, v1261, v1262, v1263, v1264, v2684, v2786, v2977, v3172, v3368, v3564, v3760, v3955, v4151, v4347, v4543, v4740, v4932, v5128, v5323, v5519, v5715, v5911, v6107, v6303, v6499, v6695, v6891, v7086, v7282, v7478, v7674, v7870, v8066, v8262) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1266);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1267, v1268);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3B(variant:)(v1269);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3B(variant:)(v1270);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E22F0();
  v1278 = v8 && v9 == 0xD000000000000023;
  if (v1278 || (sub_18E1D0318(v1271, v1272, 0xD000000000000040, v1273, v1274, v1275, v1276, v1277, v2684, v2787, v2978, v3173, v3369, v3565, v3761, v3956, v4152, v4348, v4544, v4741, v4933, v5129, v5324, v5520, v5716, v5912, v6108, v6304, v6500, v6696, v6892, v7087, v7283, v7479, v7675, v7871, v8067, v8263) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1279);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1280, v1281);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction3BV2(variant:)(v1282);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction3BV2(variant:)(v1283);
    goto LABEL_839;
  }

  sub_18E1CAD14();
  v1291 = v8 && v9 == 0xD000000000000023;
  if (v1291 || (sub_18E1D0318(v1284, v1285, 0xD000000000000033, v1286, v1287, v1288, v1289, v1290, v2684, v2788, v2979, v3174, v3370, v3566, v3762, v3957, v4153, v4349, v4545, v4742, v4934, v5130, v5325, v5521, v5717, v5913, v6109, v6305, v6501, v6697, v6893, v7088, v7284, v7480, v7676, v7872, v8068, v8264) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1292);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1293, v1294);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SmartAppActions(variant:)(v1295);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SmartAppActions(variant:)(v1296);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v1304 = v8 && v9 == 0xD000000000000023;
  if (v1304 || (sub_18E1D0318(v1297, v1298, 0xD000000000000037, v1299, v1300, v1301, v1302, v1303, v2684, v2789, v2980, v3175, v3371, v3567, v3763, v3958, v4154, v4350, v4546, v4743, v4935, v5131, v5326, v5522, v5718, v5914, v6110, v6306, v6502, v6698, v6894, v7089, v7285, v7481, v7677, v7873, v8069, v8265) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1305);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1306, v1307);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuralExtraction(variant:)(v1308);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v1309);
    goto LABEL_701;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v1317 = v8 && v9 == 0xD000000000000023;
  if (v1317 || (sub_18E1D0318(v1310, v1311, 0xD000000000000037, v1312, v1313, v1314, v1315, v1316, v2684, v2790, v2981, v3176, v3372, v3568, v3764, v3959, v4155, v4351, v4547, v4744, v4936, v5132, v5327, v5523, v5719, v5915, v6111, v6307, v6503, v6699, v6895, v7090, v7286, v7482, v7678, v7874, v8070, v8266) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1318);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1319, v1320);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.StructuredExtraction(variant:)(v1321);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.StructuredExtraction(variant:)(v1322);
    goto LABEL_779;
  }

  sub_18E1D44C0();
  v1331 = v8267 == 0xD000000000000036 && v9 == 0xD000000000000028;
  if (v1331 || (v1332 = sub_18E1D5BF4(v1323, v1324, v1325, v1326, v1327, v1328, v1329, v1330, v2684, v2791, v2982, v3177, v3373, v3569, v3765, v3960, v4156, v4352, v4548, 0xD000000000000036, v4937, v5133, v5328, v5524, v5720, v5916, v6112, v6308, v6504, v6700, v6896, v7091, v7287, v7483, v7679, v7875, v8071, v8267), (sub_18E1E1530(v1332, v1333, v4745) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1334);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1335, v1336);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v1337);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1338 = swift_allocObject();
    sub_18E1C6378(v1338);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v1346 = v8 && v9 == 0xD000000000000023;
  if (v1346 || (sub_18E1D0318(v1339, v1340, 0xD000000000000039, v1341, v1342, v1343, v1344, v1345, v2684, v2792, v2983, v3178, v3374, v3570, v3766, v3961, v4157, v4353, v4549, v4745, v4938, v5134, v5329, v5525, v5721, v5917, v6113, v6309, v6505, v6701, v6897, v7092, v7288, v7484, v7680, v7876, v8072, v8268) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1347);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1348, v1349);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SuggestRecipeItems(variant:)(v1350);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SuggestRecipeItems(variant:)(v1351);
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_780;
  }

  sub_18E1CE9B8();
  sub_18E1CFFF4();
  v1359 = v8 && v9 == 0xD000000000000023;
  if (v1359 || (sub_18E1D0318(v1352, v1353, 0xD00000000000002FLL, v1354, v1355, v1356, v1357, v1358, v2684, v2793, v2984, v3179, v3375, v3571, v3767, v3962, v4158, v4354, v4550, v4746, v4939, v5135, v5330, v5526, v5722, v5918, v6114, v6310, v6506, v6702, v6898, v7093, v7289, v7485, v7681, v7877, v8073, v8269) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1360);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1361, v1362);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Summarization(variant:)(v1363);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.Summarization(variant:)(v1364);
    goto LABEL_779;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v1372 = v8 && v9 == 0xD000000000000023;
  if (v1372 || (sub_18E1D0318(v1365, v1366, 0xD000000000000032, v1367, v1368, v1369, v1370, v1371, v2684, v2794, v2985, v3180, v3376, v3572, v3768, v3963, v4159, v4355, v4551, v4747, v4940, v5136, v5331, v5527, v5723, v5919, v6115, v6311, v6507, v6703, v6899, v7094, v7290, v7486, v7682, v7878, v8074, v8270) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1373);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1374, v1375);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TablesTransform(variant:)(v1376);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TablesTransform(variant:)(v1377);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v1385 = v8 && v9 == 0xD000000000000023;
  if (v1385 || (sub_18E1D0318(v1378, v1379, 0xD000000000000035, v1380, v1381, v1382, v1383, v1384, v2684, v2795, v2986, v3181, v3377, v3573, v3769, v3964, v4160, v4356, v4552, v4748, v4941, v5137, v5332, v5528, v5724, v5920, v6116, v6312, v6508, v6704, v6900, v7095, v7291, v7487, v7683, v7879, v8075, v8271) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1386);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1387, v1388);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TakeawaysTransform(variant:)(v1389);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TakeawaysTransform(variant:)(v1390);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E6854();
  v1398 = v8 && v9 == 0xD000000000000023;
  if (v1398 || (sub_18E1D0318(v1391, v1392, 0xD00000000000002CLL, v1393, v1394, v1395, v1396, v1397, v2684, v2796, v2987, v3182, v3378, v3574, v3770, v3965, v4161, v4357, v4553, v4749, v4942, v5138, v5333, v5529, v5725, v5921, v6117, v6313, v6509, v6705, v6901, v7096, v7292, v7488, v7684, v7880, v8076, v8272) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1399);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1400, v1401);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TamalePOI(variant:)(v1402);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizer(variant:)(v1403);
LABEL_701:
    sub_18E1D5E64();

    sub_18E223320();
LABEL_780:
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1455 = swift_allocObject();
    sub_18E1C6378(v1455);
    goto LABEL_840;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v1411 = v8 && v9 == 0xD000000000000023;
  if (v1411 || (sub_18E1D0318(v1404, v1405, 0xD000000000000037, v1406, v1407, v1408, v1409, v1410, v2684, v2797, v2988, v3183, v3379, v3575, v3771, v3966, v4162, v4358, v4554, v4750, v4943, v5139, v5334, v5530, v5726, v5922, v6118, v6314, v6510, v6706, v6902, v7097, v7293, v7489, v7685, v7881, v8077, v8273) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1412);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1413, v1414);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextEventExtraction(variant:)(v1415);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v1416);
    goto LABEL_779;
  }

  sub_18E220494();
  sub_18E1E3614();
  v1424 = v8 && v9 == 0xD000000000000028;
  if (v1424 || (sub_18E1D7DE8(v1417, v1418, 0xD00000000000003DLL, v1419, v1420, v1421, v1422, v1423, v2684, v2798, v2989, v3184, v3380, v3576, v3772, v3967, v4163, v4359, v4555, v4751, v4944, v5140, v5335, v5531, v5727, v5923, v6119, v6315, v6511, v6707, v6903, v7098, v7294, v7490, v7686, v7882, v8078, v8274) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1425);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.TextEventExtraction(variant:)(v1426);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v1427 = swift_allocObject();
    sub_18E1CFC6C(v1427);
    goto LABEL_810;
  }

  sub_18E1CE9B8();
  v1436 = v1435 == 0xD00000000000002DLL && v9 == 0xD000000000000023;
  if (v1436 || (sub_18E1D0318(v1428, v1429, 0xD00000000000002DLL, v1430, v1431, v1432, v1433, v1434, v2684, v2799, v2990, v3185, v3381, v3577, v3773, v3968, v4164, v4360, v4556, v4752, v4945, v5141, v5336, v5532, v5728, v5924, v6120, v6316, v6512, v6708, v6904, v7099, v7295, v7491, v7687, v7883, v8079, v8275) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1437);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1438, v1439);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextExpert(variant:)(v1440);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextExpert(variant:)(v1441);
    goto LABEL_839;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1449 = v8 && v9 == 0xD000000000000023;
  if (v1449 || (sub_18E1D0318(v1442, v1443, 0xD000000000000038, v1444, v1445, v1446, v1447, v1448, v2684, v2800, v2991, v3186, v3382, v3578, v3774, v3969, v4165, v4361, v4557, v4753, v4946, v5142, v5337, v5533, v5729, v5925, v6121, v6317, v6513, v6709, v6905, v7100, v7296, v7492, v7688, v7884, v8080, v8276) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1450);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1451, v1452);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextPersonExtraction(variant:)(v1453);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v1454);
LABEL_779:

    sub_18E1C57F8();
    goto LABEL_780;
  }

  sub_18E220494();
  sub_18E1D8464();
  v1463 = v8 && v9 == 0xD000000000000028;
  if (v1463 || (sub_18E1D7DE8(v1456, v1457, 0xD00000000000003ELL, v1458, v1459, v1460, v1461, v1462, v2684, v2801, v2992, v3187, v3383, v3579, v3775, v3970, v4166, v4362, v4558, v4754, v4947, v5143, v5338, v5534, v5730, v5926, v6122, v6318, v6514, v6710, v6906, v7101, v7297, v7493, v7689, v7885, v8081, v8277) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1464);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.TextPersonExtraction(variant:)(v1465);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v1466 = swift_allocObject();
    sub_18E1CFC6C(v1466);
    goto LABEL_810;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v1474 = v8 && v9 == 0xD000000000000023;
  if (v1474 || (sub_18E1D0318(v1467, v1468, 0xD000000000000031, v1469, v1470, v1471, v1472, v1473, v2684, v2802, v2993, v3188, v3384, v3580, v3776, v3971, v4167, v4363, v4559, v4755, v4948, v5144, v5339, v5535, v5731, v5927, v6123, v6319, v6515, v6711, v6907, v7102, v7298, v7494, v7690, v7886, v8082, v8278) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1475);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1476, v1477);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.TextSummarizer(variant:)(v1478);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.TextSummarizer(variant:)(v1479);
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E221E34();
  v1487 = v8 && v9 == 0xD000000000000028;
  if (v1487 || (sub_18E1D7DE8(v1480, v1481, 0xD00000000000003ALL, v1482, v1483, v1484, v1485, v1486, v2684, v2803, v2994, v3189, v3385, v3581, v3777, v3972, v4168, v4364, v4560, v4756, v4949, v5145, v5340, v5536, v5732, v5928, v6124, v6320, v6516, v6712, v6908, v7103, v7299, v7495, v7691, v7887, v8083, v8279) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1488);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.DraftModel.Textunderstanding(variant:)(v1489);

    *(a2 + 24) = &type metadata for AssetBackedLLMDraftBundle;
    *(a2 + 32) = sub_18E2083A8();
    sub_18E1E2C84();
    v1503 = swift_allocObject();
    sub_18E1CFC6C(v1503);
LABEL_810:
    sub_18E1E842C();
    AssetBackedLLMDraftBundle.init(configurationIdentifier:tokenizer:draftModel:)(v1504, v1505, v1506, v1507);
    return result;
  }

  sub_18E220494();
  v1498 = v1497 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v1498 || (sub_18E1D7DE8(v1490, v1491, 0xD00000000000002DLL, v1492, v1493, v1494, v1495, v1496, v2684, v2804, v2995, v3190, v3386, v3582, v3778, v3973, v4169, v4365, v4561, v4757, v4950, v5146, v5341, v5537, v5733, v5929, v6125, v6321, v6517, v6713, v6909, v7104, v7300, v7496, v7692, v7888, v8084, v8280) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1499);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1500, v1501);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v1502);
LABEL_809:
    sub_18E1D5E64();

    *&v161 = sub_18E1E11CC();
    v8388 = 0;
LABEL_128:
    v8386 = v161;
    v8387 = v161;
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v162 = swift_allocObject();
    sub_18E1C6378(v162);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  v1516 = v1515 == 0xD000000000000030 && v9 == 0xD000000000000023;
  if (v1516 || (sub_18E1D0318(v1508, v1509, 0xD000000000000030, v1510, v1511, v1512, v1513, v1514, v2684, v2805, v2996, v3191, v3387, v3583, v3779, v3974, v4170, v4366, v4562, v4758, v4951, v5147, v5342, v5538, v5734, v5930, v6126, v6322, v6518, v6714, v6910, v7105, v7301, v7497, v7693, v7889, v8085, v8281) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1517);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1518, v1519);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AFMTextInstruct3BThirdParty(variant:)(v1520);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AFMTextInstruct3BThirdParty(variant:)(v1521);
    goto LABEL_839;
  }

  sub_18E220494();
  sub_18E1CFDF0();
  v1529 = v8 && v9 == 0xD000000000000028;
  if (v1529 || (sub_18E1D7DE8(v1522, v1523, 0xD00000000000002ELL, v1524, v1525, v1526, v1527, v1528, v2684, v2806, v2997, v3192, v3388, v3584, v3780, v3975, v4171, v4367, v4563, v4759, v4952, v5148, v5343, v5539, v5735, v5931, v6127, v6323, v6519, v6715, v6911, v7106, v7302, v7498, v7694, v7890, v8086, v8282) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1530);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1531, v1532);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.UIGrounding(variant:)(v1533);
    goto LABEL_848;
  }

  sub_18E1CE9B8();
  v1542 = v1541 == 0xD00000000000002DLL && v9 == 0xD000000000000023;
  if (v1542 || (sub_18E1D0318(v1534, v1535, 0xD00000000000002DLL, v1536, v1537, v1538, v1539, v1540, v2684, v2807, v2998, v3193, v3389, v3585, v3781, v3976, v4172, v4368, v4564, v4760, v4953, v5149, v5344, v5540, v5736, v5932, v6128, v6324, v6520, v6716, v6912, v7107, v7303, v7499, v7695, v7891, v8087, v8283) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1543);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1544, v1545);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.UIPreviews(variant:)(v1546);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.UIPreviews(variant:)(v1547);
LABEL_839:

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1560 = swift_allocObject();
    sub_18E1C6378(v1560);
    goto LABEL_840;
  }

  sub_18E220494();
  sub_18E1E3194();
  v1555 = v8 && v9 == 0xD000000000000028;
  if (v1555 || (sub_18E1D7DE8(v1548, v1549, 0xD000000000000038, v1550, v1551, v1552, v1553, v1554, v2684, v2808, v2999, v3194, v3390, v3586, v3782, v3977, v4173, v4369, v4565, v4761, v4954, v5150, v5345, v5541, v5737, v5933, v6129, v6325, v6521, v6717, v6913, v7108, v7304, v7500, v7696, v7892, v8088, v8284) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v1556);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase(variant:)(v1557, v1558);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.UrgencyClassification(variant:)(v1559);
    goto LABEL_848;
  }

  sub_18E220494();
  sub_18E2234B8();
  v1568 = v8 && v9 == 0xD000000000000028;
  if (v1568 || (sub_18E1D7DE8(v1561, v1562, 0xD000000000000031, v1563, v1564, v1565, v1566, v1567, v2684, v2809, v3000, v3195, v3391, v3587, v3783, v3978, v4174, v4370, v4566, v4762, v4955, v5151, v5346, v5542, v5738, v5934, v6130, v6326, v6522, v6718, v6914, v7109, v7305, v7501, v7697, v7893, v8089, v8285) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer(variant:)(v1569);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.AFMTextInstruct85MBase(variant:)(v1570);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.SmallMessagesReplyWatch(variant:)(v1571);
LABEL_848:
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v1572 = swift_allocObject();
    sub_18E1C6378(v1572);
    goto LABEL_16;
  }

  sub_18E1CE9B8();
  sub_18E1E22F0();
  v1580 = v8 && v9 == 0xD000000000000023;
  if (v1580 || (sub_18E1D0318(v1573, v1574, 0xD000000000000040, v1575, v1576, v1577, v1578, v1579, v2684, v2810, v3001, v3196, v3392, v3588, v3784, v3979, v4175, v4371, v4567, v4763, v4956, v5152, v5347, v5543, v5739, v5935, v6131, v6327, v6523, v6719, v6915, v7110, v7306, v7502, v7698, v7894, v8090, v8286) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1581);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1582);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AccessibilityMagnifier(variant:)();
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1583 = swift_allocObject();
    sub_18E1C6378(v1583);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v1591 = v8 && v9 == 0xD000000000000023;
  if (v1591 || (sub_18E1D0318(v1584, v1585, 0xD000000000000039, v1586, v1587, v1588, v1589, v1590, v2684, v2811, v3002, v3197, v3393, v3589, v3785, v3980, v4176, v4372, v4568, v4764, v4957, v5153, v5348, v5544, v5740, v5936, v6132, v6328, v6524, v6720, v6916, v7111, v7307, v7503, v7699, v7895, v8091, v8287) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1592);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1593);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.AnswerSynthesisServer(variant:)(v1594);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.AnswerSynthesisServer(variant:)(v1595);
    goto LABEL_1292;
  }

  sub_18E1CAD14();
  v1603 = v8 && v9 == 0xD000000000000023;
  if (v1603 || (sub_18E1D0318(v1596, v1597, 0xD000000000000033, v1598, v1599, v1600, v1601, v1602, v2684, v2812, v3003, v3198, v3394, v3590, v3786, v3981, v4177, v4373, v4569, v4765, v4958, v5154, v5349, v5545, v5741, v5937, v6133, v6329, v6525, v6721, v6917, v7112, v7308, v7504, v7700, v7896, v8092, v8288) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1604);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1605);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.InstructServerAutograder(variant:)(v1606);
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();
    sub_18E1D5E64();

    sub_18E223320();
    goto LABEL_1227;
  }

  sub_18E220494();
  v1615 = v1614 == 0xD00000000000002DLL && v9 == 0xD000000000000028;
  if (v1615 || (sub_18E1D7DE8(v1607, v1608, 0xD00000000000002DLL, v1609, v1610, v1611, v1612, v1613, v2684, v2813, v3004, v3199, v3395, v3591, v3787, v3982, v4178, v4374, v4570, v4766, v4959, v5155, v5350, v5546, v5742, v5938, v6134, v6330, v6526, v6722, v6918, v7113, v7309, v7505, v7701, v7897, v8093, v8289) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1616);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1617);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1618 = swift_allocObject();
    sub_18E1C6378(v1618);
    goto LABEL_1430;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v1626 = v8 && v9 == 0xD000000000000023;
  if (v1626 || (sub_18E1D0318(v1619, v1620, 0xD00000000000003ALL, v1621, v1622, v1623, v1624, v1625, v2684, v2814, v3005, v3200, v3396, v3592, v3788, v3983, v4179, v4375, v4571, v4767, v4960, v5156, v5351, v5547, v5743, v5939, v6135, v6331, v6527, v6723, v6919, v7114, v7310, v7506, v7702, v7898, v8094, v8290) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1627);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1628);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerBulletsTransform(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerBulletsTransform(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E2019F8();
  v1636 = v8 && v9 == 0xD000000000000023;
  if (v1636 || (sub_18E1D0318(v1629, v1630, 0xD000000000000035, v1631, v1632, v1633, v1634, v1635, v2684, v2815, v3006, v3201, v3397, v3593, v3789, v3984, v4180, v4376, v4572, v4768, v4961, v5157, v5352, v5548, v5744, v5940, v6136, v6332, v6528, v6724, v6920, v7115, v7311, v7507, v7703, v7899, v8095, v8291) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1637);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1638);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v1639);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v1640);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1641 = swift_allocObject();
    sub_18E1C6378(v1641);
    goto LABEL_1293;
  }

  sub_18E220494();
  v1650 = v1649 == v3594 && v9 == 0xD000000000000028;
  if (v1650 || (sub_18E1D7DE8(v1642, v1643, 0xD00000000000003BLL, v1644, v1645, v1646, v1647, v1648, v2684, v2816, v3007, v3202, v3398, v3594, v3790, v3985, v4181, v4377, v4573, v4769, v4962, v5158, v5353, v5549, v5745, v5941, v6137, v6333, v6529, v6725, v6921, v7116, v7312, v7508, v7704, v7900, v8096, v8292) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1651);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1652);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ServerDescribeYourEdit(variant:)(v1653);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1654 = swift_allocObject();
    sub_18E1C6378(v1654);
    goto LABEL_1430;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v1662 = v8 && v9 == 0xD000000000000023;
  if (v1662 || (sub_18E1D0318(v1655, v1656, 0xD00000000000003ELL, v1657, v1658, v1659, v1660, v1661, v2684, v2817, v3008, v3203, v3399, v3595, v3791, v3986, v4182, v4378, v4574, v4770, v4963, v5159, v5354, v5550, v5746, v5942, v6138, v6334, v6530, v6726, v6922, v7117, v7313, v7509, v7705, v7901, v8097, v8293) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1663);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1664);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerFitnessWorkoutVoice(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerFitnessWorkoutVoice(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v1672 = v8 && v9 == 0xD000000000000023;
  if (v1672 || (sub_18E1D0318(v1665, v1666, 0xD000000000000036, v1667, v1668, v1669, v1670, v1671, v2684, v2818, v3009, v3204, v3400, v3596, v3792, v3987, v4183, v4379, v4575, v4771, v4964, v5160, v5355, v5551, v5747, v5943, v6139, v6335, v6531, v6727, v6923, v7118, v7314, v7510, v7706, v7902, v8098, v8294) & 1) != 0)
  {
    goto LABEL_929;
  }

  sub_18E1CE9B8();
  v1681 = v1680 == v3988 && v9 == 0xD000000000000023;
  if (v1681 || (sub_18E1D0318(v1673, v1674, 0xD000000000000041, v1675, v1676, v1677, v1678, v1679, v2684, v2819, v3010, v3205, v3401, v3597, v3793, v3988, v4184, v4380, v4576, v4772, v4965, v5161, v5356, v5552, v5748, v5944, v6140, v6336, v6532, v6728, v6924, v7119, v7315, v7511, v7707, v7903, v8099, v8295) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1682);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1683);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.JournalFollowUpPrompts(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts(variant:)();
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_1227;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v1691 = v8 && v9 == 0xD000000000000023;
  if (v1691 || (sub_18E1D0318(v1684, v1685, 0xD000000000000036, v1686, v1687, v1688, v1689, v1690, v2684, v2820, v3011, v3206, v3402, v3598, v3794, v3989, v4185, v4381, v4577, v4773, v4966, v5162, v5357, v5553, v5749, v5945, v6141, v6337, v6533, v6729, v6925, v7120, v7316, v7512, v7708, v7904, v8100, v8296) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1692);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1693);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.LWPlannerV1(variant:)(v1694);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.LWPlannerV1(variant:)(v1695);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v1703 = v8 && v9 == 0xD000000000000023;
  if (v1703 || (sub_18E1D0318(v1696, v1697, 0xD000000000000036, v1698, v1699, v1700, v1701, v1702, v2684, v2821, v3012, v3207, v3403, v3599, v3795, v3990, v4186, v4382, v4578, v4774, v4967, v5163, v5358, v5554, v5750, v5946, v6142, v6338, v6534, v6730, v6926, v7121, v7317, v7513, v7709, v7905, v8101, v8297) & 1) != 0)
  {
LABEL_929:
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1704);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    goto LABEL_993;
  }

  sub_18E1CE9B8();
  v1713 = v1712 == v4187 && v9 == 0xD000000000000023;
  if (v1713 || (sub_18E1D0318(v1705, v1706, 0xD000000000000043, v1707, v1708, v1709, v1710, v1711, v2684, v2822, v3013, v3208, v3404, v3600, v3796, v3991, v4187, v4383, v4579, v4775, v4968, v5164, v5359, v5555, v5751, v5947, v6143, v6339, v6535, v6731, v6927, v7122, v7318, v7514, v7710, v7906, v8102, v8298) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1714);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1715);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormBasic(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormBasic(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v1724 = v1723 == v3014 && v9 == 0xD000000000000023;
  if (v1724 || (sub_18E1D0318(v1716, v1717, 0xD000000000000045, v1718, v1719, v1720, v1721, v1722, v2684, v2823, v3014, v3209, v3405, v3601, v3797, v3992, v4188, v4384, v4580, v4776, v4969, v5165, v5360, v5556, v5752, v5948, v6144, v6340, v6536, v6732, v6928, v7123, v7319, v7515, v7711, v7907, v8103, v8299) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1725);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1726);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyLongFormRewrite(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyLongFormRewrite(variant:)();
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1727 = swift_allocObject();
    sub_18E1C6378(v1727);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v1735 = v8 && v9 == 0xD000000000000023;
  if (v1735 || (sub_18E1D0318(v1728, v1729, 0xD000000000000036, v1730, v1731, v1732, v1733, v1734, v2684, v2824, v3015, v3210, v3406, v3602, v3798, v3993, v4189, v4385, v4581, v4777, v4970, v5166, v5361, v5557, v5753, v5949, v6145, v6341, v6537, v6733, v6929, v7124, v7320, v7516, v7712, v7908, v8104, v8300) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1736);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1737);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerMailReplyQA(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerMailReplyQA(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v1745 = v8 && v9 == 0xD000000000000023;
  if (v1745 || (sub_18E1D0318(v1738, v1739, 0xD00000000000003ELL, v1740, v1741, v1742, v1743, v1744, v2684, v2825, v3016, v3211, v3407, v3603, v3799, v3994, v4190, v4386, v4582, v4778, v4971, v5167, v5362, v5558, v5754, v5950, v6146, v6342, v6538, v6734, v6930, v7125, v7321, v7517, v7713, v7909, v8105, v8301) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1746);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1747);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MessagesUserRequest(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.MessagesUserRequest(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E2234B8();
  v1755 = v8 && v9 == 0xD000000000000023;
  if (v1755 || (sub_18E1D0318(v1748, v1749, 0xD000000000000031, v1750, v1751, v1752, v1753, v1754, v2684, v2826, v3017, v3212, v3408, v3604, v3800, v3995, v4191, v4387, v4583, v4779, v4972, v5168, v5363, v5559, v5755, v5951, v6147, v6343, v6539, v6735, v6931, v7126, v7322, v7518, v7714, v7910, v8106, v8302) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1756);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1757);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.MMGuardSafetyGuardrailServer(variant:)();
    sub_18E1CF900();

    sub_18E1E11CC();
    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();
    sub_18E1D5E64();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1758 = swift_allocObject();
    sub_18E1C6378(v1758);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v1766 = v8 && v9 == 0xD000000000000023;
  if (v1766 || (sub_18E1D0318(v1759, v1760, 0xD00000000000003FLL, v1761, v1762, v1763, v1764, v1765, v2684, v2827, v3018, v3213, v3409, v3605, v3801, v3996, v4192, v4388, v4584, v4780, v4973, v5169, v5364, v5560, v5756, v5952, v6148, v6344, v6540, v6736, v6932, v7127, v7323, v7519, v7715, v7911, v8107, v8303) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1767);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1768);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedInteraction(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedInteraction(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v1776 = v8 && v9 == 0xD000000000000023;
  if (v1776 || (sub_18E1D0318(v1769, v1770, 0xD00000000000003ELL, v1771, v1772, v1773, v1774, v1775, v2684, v2828, v3019, v3214, v3410, v3606, v3802, v3997, v4193, v4389, v4585, v4781, v4974, v5170, v5365, v5561, v5757, v5953, v6149, v6345, v6541, v6737, v6933, v7128, v7324, v7520, v7716, v7912, v8108, v8304) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1777);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1778);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedReflection(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedReflection(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v1786 = v8 && v9 == 0xD000000000000023;
  if (v1786 || (sub_18E1D0318(v1779, v1780, 0xD00000000000003ALL, v1781, v1782, v1783, v1784, v1785, v2684, v2829, v3020, v3215, v3411, v3607, v3803, v3998, v4194, v4390, v4586, v4782, v4975, v5171, v5366, v5562, v5758, v5954, v6150, v6346, v6542, v6738, v6934, v7129, v7325, v7521, v7717, v7913, v8109, v8305) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1787);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1788);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedSchema(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedSchema(variant:)(v1789);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v1797 = v8 && v9 == 0xD000000000000023;
  if (v1797 || (sub_18E1D0318(v1790, v1791, 0xD000000000000038, v1792, v1793, v1794, v1795, v1796, v2684, v2830, v3021, v3216, v3412, v3608, v3804, v3999, v4195, v4391, v4587, v4783, v4976, v5172, v5367, v5563, v5759, v5955, v6151, v6347, v6543, v6739, v6935, v7130, v7326, v7522, v7718, v7914, v8110, v8306) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1798);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

LABEL_993:

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1799);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v1800);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v1801);
LABEL_1292:

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2331 = swift_allocObject();
    sub_18E1C6378(v2331);
    goto LABEL_1293;
  }

  sub_18E220494();
  sub_18E1E3614();
  v1809 = v8 && v9 == 0xD000000000000028;
  if (v1809 || (sub_18E1D7DE8(v1802, v1803, 0xD00000000000003DLL, v1804, v1805, v1806, v1807, v1808, v2684, v2831, v3022, v3217, v3413, v3609, v3805, v4000, v4196, v4392, v4588, v4784, v4977, v5173, v5368, v5564, v5760, v5956, v6152, v6348, v6544, v6740, v6936, v7131, v7327, v7523, v7719, v7915, v8111, v8307) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1810);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1811);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();
    sub_18E1D5E64();

    v8389 = 0;
    goto LABEL_1308;
  }

  sub_18E1D44C0();
  v1820 = v8308 == 0xD000000000000047 && v9 == 0xD000000000000028;
  if (v1820 || (v1821 = sub_18E1D5BF4(v1812, v1813, v1814, v1815, v1816, v1817, v1818, v1819, v2684, v2832, v3023, v3218, v3414, v3610, 0xD000000000000047, v4001, v4197, v4393, v4589, v4785, v4978, v5174, v5369, v5565, v5761, v5957, v6153, v6349, v6545, v6741, v6937, v7132, v7328, v7524, v7720, v7916, v8112, v8308), (sub_18E1E1530(v1821, v1822, v3806) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1823);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1824);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponse(variant:)(v1825);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1826 = swift_allocObject();
    sub_18E1C6378(v1826);
    goto LABEL_1430;
  }

  sub_18E1D44C0();
  v1835 = v8309 == 0xD00000000000004ALL && v9 == 0xD000000000000028;
  if (v1835 || (v1836 = sub_18E1D5BF4(v1827, v1828, v1829, v1830, v1831, v1832, v1833, v1834, v2684, v2833, v3024, v3219, v3415, v3611, v3806, v4002, v4198, v4394, v4590, v4786, v4979, v5175, v5370, v5566, v5762, v5958, v6154, v6350, v6546, v6742, v6938, v7133, v7329, v7525, v7721, v7917, v8113, v8309), (sub_18E1E1530(v1836, v1837, 0xD00000000000004ALL) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1838);
    sub_18E1CFAA0();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1839);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.OpenEndedToneQueryResponseV2(variant:)(v1864);
    sub_18E1D5E64();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1865 = swift_allocObject();
    sub_18E1C6378(v1865);
    goto LABEL_1430;
  }

  sub_18E1E391C();
  v3025 = v1847;
  v1849 = v1848 == v4003 && v1847 == v9;
  if (v1849 || (sub_18E1D5BF4(v1840, v1841, 0xD000000000000041, v1842, v1843, v1844, v1845, v1846, v2684, v2834, v1847, v3220, v3416, v3612, v3807, v4003, v4199, v4395, v4591, v4787, v4980, v5176, v5371, v5567, v5763, v5959, v6155, v6351, v6547, v6743, v6939, v7134, v7330, v7526, v7722, v7918, v8114, v8310), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1850);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1851);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerPersonalizedSmartReply(variant:)(v1852);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerPersonalizedSmartReply(variant:)(v1853);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1854 = swift_allocObject();
    sub_18E1C6378(v1854);
    sub_18E1D00D4();
    v1863 = v3025;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1855, v1863, v1856, v1857, v1858, v1859, v1860, v1861, v1862, v2684);
  }

  sub_18E1E391C();
  sub_18E239C08();
  v4788 = v1873;
  v1874 = v8 && v1873 == v9;
  if (v1874 || (sub_18E1D5BF4(v1866, v1867, 0xD000000000000036, v1868, v1869, v1870, v1871, v1872, v2684, v2835, v3025, v3221, v3417, v3613, v3808, v4004, v4200, v4396, v4592, v1873, v4981, v5177, v5372, v5568, v5764, v5960, v6156, v6352, v6548, v6744, v6940, v7135, v7331, v7527, v7723, v7919, v8115, v8311), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1875);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1876);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosCommon(variant:)(v1877);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosCommon(variant:)(v1878);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1879 = swift_allocObject();
    sub_18E1C6378(v1879);
    goto LABEL_1036;
  }

  sub_18E1E391C();
  sub_18E1E10F8();
  v4788 = v1887;
  v1888 = v8 && v1887 == v9;
  if (v1888 || (sub_18E1D5BF4(v1880, v1881, 0xD000000000000047, v1882, v1883, v1884, v1885, v1886, v2684, v2836, v3026, v3222, v3418, v3614, v3809, v4005, v4201, v4397, v4593, v1887, v4982, v5178, v5373, v5569, v5765, v5961, v6157, v6353, v6549, v6745, v6941, v7136, v7332, v7528, v7724, v7920, v8116, v8312), v1889 = sub_18E44F3CC(), (v1889 & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1896);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1897);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCuration(variant:)(v1898);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCuration(variant:)(v1899);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1900 = swift_allocObject();
    sub_18E1C6378(v1900);
LABEL_1036:
    sub_18E1D00D4();
    v1863 = v4788;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1855, v1863, v1856, v1857, v1858, v1859, v1860, v1861, v1862, v2684);
  }

  v19 = 0x800000018E4546D0;
  v1901 = v8313 == 0xD00000000000004ALL && 0x800000018E4546D0 == v9;
  if (v1901 || (sub_18E1D0318(v1889, v1890, 0xD00000000000004ALL, v1891, v1892, v1893, v1894, v1895, v2684, v2837, v3027, v3223, v3419, v3615, v3810, v4006, v4202, v4398, v4594, v4788, v4983, v5179, v5374, v5570, v5766, v5962, v6158, v6354, v6550, v6746, v6942, v7137, v7333, v7529, v7725, v7921, v8117, v8313) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1902);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1903);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationAssetCurationV2(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationAssetCurationV2(variant:)();
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1904 = swift_allocObject();
    sub_18E1C6378(v1904);
    goto LABEL_1293;
  }

  sub_18E1CE8FC();
  sub_18E1E9FBC();
  v1913 = v8 && 0x800000018E4546D0 == v9;
  if (v1913 || (sub_18E1D0318(v1905, v1906, v1907, v1908, v1909, v1910, v1911, v1912, v2684, v2838, v3028, v3224, v3420, v3616, v3811, v4007, v4203, v4399, v4595, v4789, v4984, v5180, v5375, v5571, v5767, v5963, v6159, v6355, v6551, v6747, v6943, v7138, v7334, v7530, v7726, v7922, v8118, v8314) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1914);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1915);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraits(variant:)(v1916);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraits(variant:)(v1917);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1918 = swift_allocObject();
    sub_18E1C6378(v1918);
    goto LABEL_1293;
  }

  sub_18E1CE8FC();
  v1927 = v8315 == 0xD000000000000049 && 0x800000018E4546D0 == v9;
  if (v1927 || (v1928 = sub_18E1D5BF4(v1919, v1920, v1921, v1922, v1923, v1924, v1925, v1926, v2684, v2839, v3029, v3225, v3421, v3617, v3812, v4008, v4204, v4400, v4596, v4790, v4985, v5181, v5376, v5572, v5768, v5964, v6160, v6356, v6552, v6748, v6944, v7139, v7335, v7531, v7727, v7923, v8119, v8315), (sub_18E1E887C(v1928, v1929, 0xD000000000000049) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1930);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1931);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV2(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v1932);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v1941 = v1940 == 0xD000000000000049 && 0x800000018E4546D0 == v9;
  if (v1941 || (sub_18E1D0318(v1933, v1934, 0xD000000000000049, v1935, v1936, v1937, v1938, v1939, v2684, v2840, v3030, v3226, v3422, v3618, v3813, v4009, v4205, v4401, v4597, v4791, v4986, v5182, v5377, v5573, v5769, v5965, v6161, v6357, v6553, v6749, v6945, v7140, v7336, v7532, v7728, v7924, v8120, v8316) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1942);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1943);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationGlobalTraitsV3(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationGlobalTraitsV3(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE8FC();
  sub_18E1E9FBC();
  v1952 = v8 && 0x800000018E4546D0 == v9;
  if (v1952 || (sub_18E1D0318(v1944, v1945, v1946, v1947, v1948, v1949, v1950, v1951, v2684, v2841, v3031, v3227, v3423, v3619, v3814, v4010, v4206, v4402, v4598, v4792, v4987, v5183, v5378, v5574, v5770, v5966, v6162, v6358, v6554, v6750, v6946, v7141, v7337, v7533, v7729, v7925, v8121, v8317) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1953);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1954);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1955);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstanding(variant:)(v1956);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v1957 = swift_allocObject();
    sub_18E1C6378(v1957);
    goto LABEL_1293;
  }

  sub_18E1CE8FC();
  v3 = 0xD00000000000004FLL;
  v1966 = v8318 == 0xD00000000000004FLL && 0x800000018E4546D0 == v9;
  if (v1966 || (v1967 = sub_18E1D5BF4(v1958, v1959, v1960, v1961, v1962, v1963, v1964, v1965, v2684, v2842, v3032, v3228, v3424, v3620, v3815, v4011, v4207, v4403, v4599, v4793, v4988, v5184, v5379, v5575, v5771, v5967, v6163, v6359, v6555, v6751, v6947, v7142, v7338, v7534, v7730, v7926, v8122, v8318), (sub_18E1E887C(v1967, v1968, 0xD00000000000004FLL) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1969);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1970);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1971);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v1972);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v1981 = v1980 == 0xD00000000000004FLL && 0x800000018E4546D0 == v9;
  if (v1981 || (sub_18E1D0318(v1973, v1974, 0xD00000000000004FLL, v1975, v1976, v1977, v1978, v1979, v2684, v2843, v3033, v3229, v3425, v3621, v3816, v4012, v4208, v4404, v4600, v4794, v4989, v5185, v5380, v5576, v5772, v5968, v6164, v6360, v6556, v6752, v6948, v7143, v7339, v7535, v7731, v7927, v8123, v8319) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1982);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1983);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationQueryUnderstandingV3(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationQueryUnderstandingV3(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE8FC();
  v1992 = v8320 == 0xD000000000000044 && 0x800000018E4546D0 == v9;
  if (v1992 || (v1993 = sub_18E1D5BF4(v1984, v1985, v1986, v1987, v1988, v1989, v1990, v1991, v2684, v2844, v3034, v3230, v3426, v3622, v3817, v4013, v4209, v4405, v4601, 0xD000000000000044, v4990, v5186, v5381, v5577, v5773, v5969, v6165, v6361, v6557, v6753, v6949, v7144, v7340, v7536, v7732, v7928, v8124, v8320), (sub_18E1E887C(v1993, v1994, v4795) & 1) != 0))
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v1995);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v1996);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStoryteller(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStoryteller(variant:)(v1997);
    sub_18E1D5E64();

    sub_18E1C57F8();
    goto LABEL_1227;
  }

  sub_18E1CE9B8();
  sub_18E1E10F8();
  v2005 = v8 && 0x800000018E4546D0 == v9;
  if (v2005 || (sub_18E1D0318(v1998, v1999, 0xD000000000000047, v2000, v2001, v2002, v2003, v2004, v2684, v2845, v3035, v3231, v3427, v3623, v3818, v4014, v4210, v4406, v4602, v4795, v4991, v5187, v5382, v5578, v5774, v5970, v6166, v6362, v6558, v6754, v6950, v7145, v7341, v7537, v7733, v7929, v8125, v8321) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2006);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2007);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PhotosMemoriesCreationStorytellerV2(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PhotosMemoriesCreationStorytellerV2(variant:)();
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2008 = swift_allocObject();
    sub_18E1C6378(v2008);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  v2017 = v2016 == 0xD000000000000030 && 0x800000018E4546D0 == v9;
  if (v2017 || (sub_18E1D0318(v2009, v2010, 0xD000000000000030, v2011, v2012, v2013, v2014, v2015, v2684, v2846, v3036, v3232, v3428, v3624, v3819, v4015, v4211, v4407, v4603, v4796, v4992, v5188, v5383, v5579, v5775, v5971, v6167, v6363, v6559, v6755, v6951, v7146, v7342, v7538, v7734, v7930, v8126, v8322) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2018);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2019);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.Planner(variant:)(v2020);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.Planner(variant:)(v2021);
    sub_18E1D5E64();

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2022 = swift_allocObject();
    sub_18E1C6378(v2022);
    goto LABEL_1293;
  }

  sub_18E1CAD14();
  v2030 = v8 && 0x800000018E4546D0 == v9;
  if (v2030 || (sub_18E1D0318(v2023, v2024, 0xD000000000000033, v2025, v2026, v2027, v2028, v2029, v2684, v2847, v3037, v3233, v3429, v3625, v3820, v4016, v4212, v4408, v4604, v4797, v4993, v5189, v5384, v5580, v5776, v5972, v6168, v6364, v6560, v6756, v6952, v7147, v7343, v7539, v7735, v7931, v8127, v8323) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2031);
    sub_18E1CF900();
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2032);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV2(variant:)(v2043);
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV2(variant:)(v2044);
    goto LABEL_1142;
  }

  sub_18E1CAD14();
  v2040 = v8 && 0x800000018E4546D0 == v9;
  if (v2040 || (sub_18E1D0318(v2033, v2034, 0xD000000000000033, v2035, v2036, v2037, v2038, v2039, v2684, v2848, v3038, v3234, v3430, v3626, v3821, v4017, v4213, v4409, v4605, v4798, v4994, v5190, v5385, v5581, v5777, v5973, v6169, v6365, v6561, v6757, v6953, v7148, v7344, v7540, v7736, v7932, v8128, v8324) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2041);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2042);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV3(variant:)();
    sub_18E1CF900();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV3(variant:)();
    goto LABEL_1142;
  }

  sub_18E1CAD14();
  v2052 = v8 && 0x800000018E4546D0 == v9;
  if (v2052 || (sub_18E1D0318(v2045, v2046, 0xD000000000000033, v2047, v2048, v2049, v2050, v2051, v2684, v2849, v3039, v3235, v3431, v3627, v3822, v4018, v4214, v4410, v4606, v4799, v4995, v5191, v5386, v5582, v5778, v5974, v6170, v6366, v6562, v6758, v6954, v7149, v7345, v7541, v7737, v7933, v8129, v8325) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2053);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2054);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV7(variant:)(v2055);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV7(variant:)(v2056);
    goto LABEL_1142;
  }

  sub_18E1CAD14();
  v2064 = v8 && 0x800000018E4546D0 == v9;
  if (v2064 || (sub_18E1D0318(v2057, v2058, 0xD000000000000033, v2059, v2060, v2061, v2062, v2063, v2684, v2850, v3040, v3236, v3432, v3628, v3823, v4019, v4215, v4411, v4607, v4800, v4996, v5192, v5387, v5583, v5779, v5975, v6171, v6367, v6563, v6759, v6955, v7150, v7346, v7542, v7738, v7934, v8130, v8326) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2065);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2066);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV8(variant:)(v2067);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV8(variant:)(v2068);
    goto LABEL_1142;
  }

  sub_18E1CAD14();
  v2076 = v8 && 0x800000018E4546D0 == v9;
  if (v2076 || (sub_18E1D0318(v2069, v2070, 0xD000000000000033, v2071, v2072, v2073, v2074, v2075, v2684, v2851, v3041, v3237, v3433, v3629, v3824, v4020, v4216, v4412, v4608, v4801, v4997, v5193, v5388, v5584, v5780, v5976, v6172, v6368, v6564, v6760, v6956, v7151, v7347, v7543, v7739, v7935, v8131, v8327) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2077);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2078);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.PlannerV9(variant:)(v2079);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.PlannerV9(variant:)(v2080);
LABEL_1142:

    sub_18E1C57F8();
LABEL_1227:
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2226 = swift_allocObject();
    sub_18E1C6378(v2226);
LABEL_1293:
    sub_18E1D00D4();
    v1863 = v19;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1855, v1863, v1856, v1857, v1858, v1859, v1860, v1861, v1862, v2684);
  }

  sub_18E220494();
  sub_18E1CF5B0();
  v2088 = v8 && v9 == 0xD00000000000004FLL;
  if (v2088 || (sub_18E1D7DE8(v2081, v2082, 0xD000000000000039, v2083, v2084, v2085, v2086, v2087, v2684, v2852, v3042, v3238, v3434, v3630, v3825, v4021, v4217, v4413, v4609, v4802, v4998, v5194, v5389, v5585, v5781, v5977, v6173, v6369, v6565, v6761, v6957, v7152, v7348, v7544, v7740, v7936, v8132, v8328) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2089);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2090);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.ServerPQAVerification(variant:)(v2091);

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2092 = swift_allocObject();
    sub_18E1C6378(v2092);
    goto LABEL_1430;
  }

  sub_18E1CE9B8();
  sub_18E221E34();
  v2100 = v8 && 0x800000018E4546D0 == v9;
  if (v2100 || (sub_18E1D0318(v2093, v2094, 0xD00000000000003ALL, v2095, v2096, v2097, v2098, v2099, v2684, v2853, v3043, v3239, v3435, v3631, v3826, v4022, v4218, v4414, v4610, v4803, v4999, v5195, v5390, v5586, v5782, v5978, v6174, v6370, v6566, v6762, v6958, v7153, v7349, v7545, v7741, v7937, v8133, v8329) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2101);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2102);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.OpenEndedTone(variant:)(v2103);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.OpenEndedTone(variant:)(v2104);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v2112 = v8 && 0x800000018E4546D0 == v9;
  if (v2112 || (sub_18E1D0318(v2105, v2106, 0xD00000000000003CLL, v2107, v2108, v2109, v2110, v2111, v2684, v2854, v3044, v3240, v3436, v3632, v3827, v4023, v4219, v4415, v4611, v4804, v5000, v5196, v5391, v5587, v5783, v5979, v6175, v6371, v6567, v6763, v6959, v7154, v7350, v7546, v7742, v7938, v8134, v8330) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2113);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2114);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerProofreadingReview(variant:)(v2115);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerProofreadingReview(variant:)(v2116);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v2125 = v2124 == v3241 && 0x800000018E4546D0 == v9;
  if (v2125 || (sub_18E1D0318(v2117, v2118, 0xD000000000000048, v2119, v2120, v2121, v2122, v2123, v2684, v2855, v3045, v3241, v3437, v3633, v3828, v4024, v4220, v4416, v4612, v4805, v5001, v5197, v5392, v5588, v5784, v5980, v6176, v6372, v6568, v6764, v6960, v7155, v7351, v7547, v7743, v7939, v8135, v8331) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2126);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2127);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.RemindersAutoCategorizeList(variant:)(v2128);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.RemindersAutoCategorizeList(variant:)(v2129);

    sub_18E1C822C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2130 = swift_allocObject();
    sub_18E1C6378(v2130);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v2138 = v8 && 0x800000018E4546D0 == v9;
  if (v2138 || (sub_18E1D0318(v2131, v2132, 0xD00000000000003CLL, v2133, v2134, v2135, v2136, v2137, v2684, v2856, v3046, v3242, v3438, v3634, v3829, v4025, v4221, v4417, v4613, v4806, v5002, v5198, v5393, v5589, v5785, v5981, v6177, v6373, v6569, v6765, v6961, v7156, v7352, v7548, v7744, v7940, v8136, v8332) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2139);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2140);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGeneration(variant:)(v2141);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGeneration(variant:)(v2142);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v2150 = v8 && 0x800000018E4546D0 == v9;
  if (v2150 || (sub_18E1D0318(v2143, v2144, 0xD00000000000003FLL, v2145, v2146, v2147, v2148, v2149, v2684, v2857, v3047, v3243, v3439, v3635, v3830, v4026, v4222, v4418, v4614, v4807, v5003, v5199, v5394, v5590, v5786, v5982, v6178, v6374, v6570, v6766, v6962, v7157, v7353, v7549, v7745, v7941, v8137, v8333) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2151);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2152);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV2(variant:)();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV2(variant:)(v2153);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v2161 = v8 && 0x800000018E4546D0 == v9;
  if (v2161 || (sub_18E1D0318(v2154, v2155, 0xD00000000000003FLL, v2156, v2157, v2158, v2159, v2160, v2684, v2858, v3048, v3244, v3440, v3636, v3831, v4027, v4223, v4419, v4615, v4808, v5004, v5200, v5395, v5591, v5787, v5983, v6179, v6375, v6571, v6767, v6963, v7158, v7354, v7550, v7746, v7942, v8138, v8334) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2162);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2163);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV3(variant:)();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV3(variant:)(v2164);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v2172 = v8 && 0x800000018E4546D0 == v9;
  if (v2172 || (sub_18E1D0318(v2165, v2166, 0xD00000000000003FLL, v2167, v2168, v2169, v2170, v2171, v2684, v2859, v3049, v3245, v3441, v3637, v3832, v4028, v4224, v4420, v4616, v4809, v5005, v5201, v5396, v5592, v5788, v5984, v6180, v6376, v6572, v6768, v6964, v7159, v7355, v7551, v7747, v7943, v8139, v8335) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2173);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2174);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV7(variant:)();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV7(variant:)(v2175);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1CF764();
  v2183 = v8 && 0x800000018E4546D0 == v9;
  if (v2183 || (sub_18E1D0318(v2176, v2177, 0xD00000000000003FLL, v2178, v2179, v2180, v2181, v2182, v2684, v2860, v3050, v3246, v3442, v3638, v3833, v4029, v4225, v4421, v4617, v4810, v5006, v5202, v5397, v5593, v5789, v5985, v6181, v6377, v6573, v6769, v6965, v7160, v7356, v7552, v7748, v7944, v8140, v8336) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2184);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2185);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ResponseGenerationV8(variant:)(v2186);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ResponseGenerationV8(variant:)(v2187);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v2196 = v2195 == v4226 && 0x800000018E4546D0 == v9;
  if (v2196 || (sub_18E1D0318(v2188, v2189, 0xD000000000000043, v2190, v2191, v2192, v2193, v2194, v2684, v2861, v3051, v3247, v3443, v3639, v3834, v4030, v4226, v4422, v4618, v4811, v5007, v5203, v5398, v5594, v5790, v5986, v6182, v6378, v6574, v6770, v6966, v7161, v7357, v7553, v7749, v7945, v8141, v8337) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2197);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2198);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SearchQueryUnderstandingServer(variant:)(v2199);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SearchQueryUnderstandingServer(variant:)(v2200);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  v2209 = v2208 == v4031 && 0x800000018E4546D0 == v9;
  if (v2209 || (sub_18E1D0318(v2201, v2202, 0xD000000000000041, v2203, v2204, v2205, v2206, v2207, v2684, v2862, v3052, v3248, v3444, v3640, v3835, v4031, v4227, v4423, v4619, v4812, v5008, v5204, v5399, v5595, v5791, v5987, v6183, v6379, v6575, v6771, v6967, v7162, v7358, v7554, v7750, v7946, v8142, v8338) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2210);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2211);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMAction(variant:)(v2212);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMAction(variant:)(v2213);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();

    sub_18E223320();
    goto LABEL_1227;
  }

  sub_18E1CE9B8();
  sub_18E239C08();
  v2221 = v8 && 0x800000018E4546D0 == v9;
  if (v2221 || (sub_18E1D0318(v2214, v2215, 0xD000000000000044, v2216, v2217, v2218, v2219, v2220, v2684, v2863, v3053, v3249, v3445, v3641, v3836, v4032, v4228, v4424, v4620, v4813, v5009, v5205, v5400, v5596, v5792, v5988, v6184, v6380, v6576, v6772, v6968, v7163, v7359, v7555, v7751, v7947, v8143, v8339) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2222);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2223);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ShortcutsAskAFMActionV2(variant:)(v2224);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.ShortcutsAskAFMActionV2(variant:)(v2225);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();

    sub_18E223320();
    goto LABEL_1227;
  }

  sub_18E1CE9B8();
  sub_18E1D8464();
  v2234 = v8 && 0x800000018E4546D0 == v9;
  if (v2234 || (sub_18E1D0318(v2227, v2228, 0xD00000000000003ELL, v2229, v2230, v2231, v2232, v2233, v2684, v2864, v3054, v3250, v3446, v3642, v3837, v4033, v4229, v4425, v4621, v4814, v5010, v5206, v5401, v5597, v5793, v5989, v6185, v6381, v6577, v6773, v6969, v7164, v7360, v7556, v7752, v7948, v8144, v8340) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2235);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2236);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerStructuredExtraction(variant:)(v2237);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerStructuredExtraction(variant:)(v2238);
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1E3CE8();
  v2246 = v8 && 0x800000018E4546D0 == v9;
  if (v2246 || (sub_18E1D0318(v2239, v2240, 0xD000000000000037, v2241, v2242, v2243, v2244, v2245, v2684, v2865, v3055, v3251, v3447, v3643, v3838, v4034, v4230, v4426, v4622, v4815, v5011, v5207, v5402, v5598, v5794, v5990, v6186, v6382, v6578, v6774, v6970, v7165, v7361, v7557, v7753, v7949, v8145, v8341) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2247);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2248);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.STXMultimodal(variant:)(v2249);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.STXMultimodal(variant:)(v2250);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2251 = swift_allocObject();
    sub_18E1C6378(v2251);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E1D5F30();
  v2259 = v8 && 0x800000018E4546D0 == v9;
  if (v2259 || (sub_18E1D0318(v2252, v2253, 0xD000000000000042, v2254, v2255, v2256, v2257, v2258, v2684, v2866, v3056, v3252, v3448, v3644, v3839, v4035, v4231, v4427, v4623, v4816, v5012, v5208, v5403, v5599, v5795, v5991, v6187, v6383, v6579, v6775, v6971, v7166, v7362, v7558, v7754, v7950, v8146, v8342) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2260);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2261);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SuperAutofillMultimodal(variant:)(v2262);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E2005E8();
    static Catalog.Resource.LLM.DraftModel.SuperAutofillMultimodal(variant:)(v2263);

    sub_18E1CEA94("imageTokenizerVariant");
    sub_18E216858();
    sub_18E1CD9A8();
    static Catalog.Resource.ImageTokenizer.AFMImageTokenizerServer(variant:)();

    sub_18E223320();
    sub_18E1E39F0();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2284 = swift_allocObject();
    sub_18E1C6378(v2284);
    goto LABEL_1293;
  }

  sub_18E1CE9B8();
  sub_18E1CF5B0();
  v2271 = v8 && 0x800000018E4546D0 == v9;
  if (v2271 || (sub_18E1D0318(v2264, v2265, 0xD000000000000039, v2266, v2267, v2268, v2269, v2270, v2684, v2867, v3057, v3253, v3449, v3645, v3840, v4036, v4232, v4428, v4624, v4817, v5013, v5209, v5404, v5600, v5796, v5992, v6188, v6384, v6580, v6776, v6972, v7167, v7363, v7559, v7755, v7951, v8147, v8343) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2272);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2273);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerTablesTransform(variant:)();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerTablesTransform(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1E3AF8();
  v2281 = v8 && 0x800000018E4546D0 == v9;
  if (v2281 || (sub_18E1D0318(v2274, v2275, 0xD00000000000003CLL, v2276, v2277, v2278, v2279, v2280, v2684, v2868, v3058, v3254, v3450, v3646, v3841, v4037, v4233, v4429, v4625, v4818, v5014, v5210, v5405, v5601, v5797, v5993, v6189, v6385, v6581, v6777, v6973, v7168, v7364, v7560, v7756, v7952, v8148, v8344) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2282);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2283);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.ServerTakeawaysTransform(variant:)();

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.ServerTakeawaysTransform(variant:)();
    goto LABEL_1292;
  }

  sub_18E1CE9B8();
  sub_18E1E3194();
  v2292 = v8 && 0x800000018E4546D0 == v9;
  if (v2292 || (sub_18E1D0318(v2285, v2286, 0xD000000000000038, v2287, v2288, v2289, v2290, v2291, v2684, v2869, v3059, v3255, v3451, v3647, v3842, v4038, v4234, v4430, v4626, v4819, v5015, v5211, v5406, v5602, v5798, v5994, v6190, v6386, v6582, v6778, v6974, v7169, v7365, v7561, v7757, v7953, v8149, v8345) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E1E64DC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2293);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E3870();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2294);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E6BBC();
    static Catalog.Resource.LLM.Adapter.SummarizationTextSummarizer(variant:)(v2306);

    sub_18E1CD8DC("draftModelVariant");
    sub_18E216858();
    sub_18E1D6304();
    static Catalog.Resource.LLM.DraftModel.SummarizationTextSummarizer(variant:)(v2319);
    goto LABEL_1292;
  }

  sub_18E220494();
  sub_18E1E3AF8();
  v2302 = v8 && v9 == 0xD00000000000004FLL;
  if (v2302 || (sub_18E1D7DE8(v2295, v2296, 0xD00000000000003CLL, v2297, v2298, v2299, v2300, v2301, v2684, v2870, v3060, v3256, v3452, v3648, v3843, v4039, v4235, v4431, v4627, v4820, v5016, v5212, v5407, v5603, v5799, v5995, v6191, v6387, v6583, v6779, v6975, v7170, v7366, v7562, v7758, v7954, v8150, v8346) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2303);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2304);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.BaseAdapter(variant:)();

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2305 = swift_allocObject();
    sub_18E1C6378(v2305);
    goto LABEL_1430;
  }

  sub_18E220494();
  sub_18E1E3194();
  v2314 = v8 && v9 == 0xD00000000000004FLL;
  if (v2314 || (sub_18E1D7DE8(v2307, v2308, 0xD000000000000038, v2309, v2310, v2311, v2312, v2313, v2684, v2871, v3061, v3257, v3453, v3649, v3844, v4040, v4236, v4432, v4628, v4821, v5017, v5213, v5408, v5604, v5800, v5996, v6192, v6388, v6584, v6780, v6976, v7171, v7367, v7563, v7759, v7955, v8151, v8347) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2315);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E0FB0();
    static Catalog.Resource.LLM.Model.InstructServerBase(variant:)(v2316);

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E30F8();
    static Catalog.Resource.LLM.Adapter.FinancialInsights(variant:)(v2317);

    sub_18E1C6B4C();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2318 = swift_allocObject();
    sub_18E1C6378(v2318);
    goto LABEL_1430;
  }

  sub_18E220494();
  v2328 = v2327 == v6977 && v9 == 0xD00000000000004FLL;
  if (v2328 || (sub_18E1D7DE8(v2320, v2321, 0xD000000000000033, v2322, v2323, v2324, v2325, v2326, v2684, v2872, v3062, v3258, v3454, v3650, v3845, v4041, v4237, v4433, v4629, v4822, v5018, v5214, v5409, v5605, v5801, v5997, v6193, v6389, v6585, v6781, v6977, v7172, v7368, v7564, v7760, v7956, v8152, v8348) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2329);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase(variant:)();

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2330 = swift_allocObject();
    sub_18E1C6378(v2330);
    goto LABEL_1430;
  }

  sub_18E220494();
  sub_18E1D1940();
  v2339 = v8 && v9 == 0xD00000000000004FLL;
  if (v2339 || (sub_18E1D7DE8(v2332, v2333, 0xD000000000000026, v2334, v2335, v2336, v2337, v2338, v2684, v2873, v3063, v3259, v3455, v3651, v3846, v4042, v4238, v4434, v4630, v4823, v5019, v5215, v5410, v5606, v5802, v5998, v6194, v6390, v6586, v6782, v6978, v7173, v7369, v7565, v7761, v7957, v8153, v8349) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k(variant:)(v2340);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.PQAVerificationBase(variant:)(v2341);
LABEL_179:

    sub_18E1CD75C();
LABEL_180:
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v255 = swift_allocObject();
    sub_18E1C6378(v255);
    goto LABEL_16;
  }

  sub_18E220494();
  sub_18E1E3614();
  v2349 = v8 && v9 == 0xD00000000000004FLL;
  if (v2349 || (sub_18E1D7DE8(v2342, v2343, 0xD00000000000003DLL, v2344, v2345, v2346, v2347, v2348, v2684, v2874, v3064, v3260, v3456, v3652, v3847, v4043, v4239, v4435, v4631, v4824, v5020, v5216, v5411, v5607, v5803, v5999, v6195, v6391, v6587, v6783, v6979, v7174, v7370, v7566, v7762, v7958, v8154, v8350) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.InstructServerTokenizer(variant:)(v2350);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase(variant:)(v2351);

    sub_18E1CD75C();
LABEL_1308:
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2352 = swift_allocObject();
    sub_18E1C6378(v2352);
LABEL_1430:
    sub_18E1D00D4();
    v1863 = v3;
    return LLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v1855, v1863, v1856, v1857, v1858, v1859, v1860, v1861, v1862, v2684);
  }

  sub_18E220494();
  v2361 = v2360 == 0xD000000000000030 && v9 == 0xD00000000000004FLL;
  if (v2361 || (sub_18E1D7DE8(v2353, v2354, 0xD000000000000030, v2355, v2356, v2357, v2358, v2359, v2684, v2875, v3065, v3261, v3457, v3653, v3848, v4044, v4240, v4436, v4632, v4825, v5021, v5217, v5412, v5608, v5804, v6000, v6196, v6392, v6588, v6784, v6980, v7175, v7371, v7567, v7763, v7959, v8155, v8351) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2362);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Animation(variant:)(v2363);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2364 = swift_allocObject();
    sub_18E1CFC6C(v2364);
    goto LABEL_1408;
  }

  sub_18E220494();
  v2373 = v2372 == v3458 && v9 == 0xD00000000000004FLL;
  if (v2373 || (sub_18E1D7DE8(v2365, v2366, 0xD00000000000002BLL, v2367, v2368, v2369, v2370, v2371, v2688, v2876, v3066, v3262, v3458, v3654, v3849, v4045, v4241, v4437, v4633, v4826, v5022, v5218, v5413, v5609, v5805, v6001, v6197, v6393, v6589, v6785, v6981, v7176, v7372, v7568, v7764, v7960, v8156, v8352) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E224E1C();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2374);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E223EC8();
    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2375 = swift_allocObject();
    sub_18E1CFC6C(v2375);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1E6854();
  v2383 = v8 && v9 == 0xD00000000000004FLL;
  if (v2383 || (sub_18E1D7DE8(v2376, v2377, 0xD00000000000002CLL, v2378, v2379, v2380, v2381, v2382, v2689, v2877, v3067, v3263, v3459, v3655, v3850, v4046, v4242, v4438, v4634, v4827, v5023, v5219, v5414, v5610, v5806, v6002, v6198, v6394, v6590, v6786, v6982, v7177, v7373, v7569, v7765, v7961, v8157, v8353) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2384);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Emoji(variant:)(v2385);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2386 = swift_allocObject();
    sub_18E1CFC6C(v2386);
    goto LABEL_1408;
  }

  sub_18E220494();
  v2395 = v2394 == v6983 && v9 == 0xD00000000000004FLL;
  if (v2395 || (sub_18E1D7DE8(v2387, v2388, 0xD000000000000033, v2389, v2390, v2391, v2392, v2393, v2690, v2878, v3068, v3264, v3460, v3656, v3851, v4047, v4243, v4439, v4635, v4828, v5024, v5220, v5415, v5611, v5807, v6003, v6199, v6395, v6591, v6787, v6983, v7178, v7374, v7570, v7766, v7962, v8158, v8354) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2396);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Illustration(variant:)(v2397);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2398 = swift_allocObject();
    sub_18E1CFC6C(v2398);
    goto LABEL_1408;
  }

  sub_18E220494();
  v2407 = v2406 == v3657 && v9 == 0xD00000000000004FLL;
  if (v2407 || (sub_18E1D7DE8(v2399, v2400, 0xD00000000000003BLL, v2401, v2402, v2403, v2404, v2405, v2691, v2879, v3069, v3265, v3461, v3657, v3852, v4048, v4244, v4440, v4636, v4829, v5025, v5221, v5416, v5612, v5808, v6004, v6200, v6396, v6592, v6788, v6984, v7179, v7375, v7571, v7767, v7963, v8159, v8355) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2408);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds(variant:)(v2409);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2410 = swift_allocObject();
    sub_18E1CFC6C(v2410);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1E3614();
  v2418 = v8 && v9 == 0xD00000000000004FLL;
  if (v2418 || (sub_18E1D7DE8(v2411, v2412, 0xD00000000000003DLL, v2413, v2414, v2415, v2416, v2417, v2692, v2880, v3070, v3266, v3462, v3658, v3853, v4049, v4245, v4441, v4637, v4830, v5026, v5222, v5417, v5613, v5809, v6005, v6201, v6397, v6593, v6789, v6985, v7180, v7376, v7572, v7768, v7964, v8160, v8356) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2419);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation(variant:)(v2420);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2421 = swift_allocObject();
    sub_18E1CFC6C(v2421);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1CF5B0();
  v2429 = v8 && v9 == 0xD00000000000004FLL;
  if (v2429 || (sub_18E1D7DE8(v2422, v2423, 0xD000000000000039, v2424, v2425, v2426, v2427, v2428, v2693, v2881, v3071, v3267, v3463, v3659, v3854, v4050, v4246, v4442, v4638, v4831, v5027, v5223, v5418, v5614, v5810, v6006, v6202, v6398, v6594, v6790, v6986, v7181, v7377, v7573, v7769, v7965, v8161, v8357) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2430);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji(variant:)(v2431);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2432 = swift_allocObject();
    sub_18E1CFC6C(v2432);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1E22F0();
  v2440 = v8 && v9 == 0xD00000000000004FLL;
  if (v2440 || (sub_18E1D7DE8(v2433, v2434, 0xD000000000000040, v2435, v2436, v2437, v2438, v2439, v2694, v2882, v3072, v3268, v3464, v3660, v3855, v4051, v4247, v4443, v4639, v4832, v5028, v5224, v5419, v5615, v5811, v6007, v6203, v6399, v6595, v6791, v6987, v7182, v7378, v7574, v7770, v7966, v8162, v8358) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2441);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration(variant:)(v2442);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2443 = swift_allocObject();
    sub_18E1CFC6C(v2443);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E221E34();
  v2451 = v8 && v9 == 0xD00000000000004FLL;
  if (v2451 || (sub_18E1D7DE8(v2444, v2445, 0xD00000000000003ALL, v2446, v2447, v2448, v2449, v2450, v2695, v2883, v3073, v3269, v3465, v3661, v3856, v4052, v4248, v4444, v4640, v4833, v5029, v5225, v5420, v5616, v5812, v6008, v6204, v6400, v6596, v6792, v6988, v7183, v7379, v7575, v7771, v7967, v8163, v8359) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2452);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch(variant:)(v2453);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2454 = swift_allocObject();
    sub_18E1CFC6C(v2454);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1D5F30();
  v2462 = v8 && v9 == 0xD00000000000004FLL;
  if (v2462 || (sub_18E1D7DE8(v2455, v2456, 0xD000000000000042, v2457, v2458, v2459, v2460, v2461, v2696, v2884, v3074, v3270, v3466, v3662, v3857, v4053, v4249, v4445, v4641, v4834, v5030, v5226, v5421, v5617, v5813, v6009, v6205, v6401, v6597, v6793, v6989, v7184, v7380, v7576, v7772, v7968, v8164, v8360) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2463);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble(variant:)(v2464);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2465 = swift_allocObject();
    sub_18E1CFC6C(v2465);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E1CFDF0();
  v2473 = v8 && v9 == 0xD00000000000004FLL;
  if (v2473 || (sub_18E1D7DE8(v2466, v2467, 0xD00000000000002ELL, v2468, v2469, v2470, v2471, v2472, v2697, v2885, v3075, v3271, v3467, v3663, v3858, v4054, v4250, v4446, v4642, v4835, v5031, v5227, v5422, v5618, v5814, v6010, v6206, v6402, v6598, v6794, v6990, v7185, v7381, v7577, v7773, v7969, v8165, v8361) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2474);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Refiner(variant:)(v2475, v2476);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2477 = swift_allocObject();
    sub_18E1CFC6C(v2477);
    goto LABEL_1408;
  }

  sub_18E220494();
  v2486 = v2485 == 0xD00000000000002DLL && v9 == 0xD00000000000004FLL;
  if (v2486 || (sub_18E1D7DE8(v2478, v2479, 0xD00000000000002DLL, v2480, v2481, v2482, v2483, v2484, v2698, v2886, v3076, v3272, v3468, v3664, v3859, v4055, v4251, v4447, v4643, v4836, v5032, v5228, v5423, v5619, v5815, v6011, v6207, v6403, v6599, v6795, v6991, v7186, v7382, v7578, v7774, v7970, v8166, v8362) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2487);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Sketch(variant:)(v2488);

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2489 = swift_allocObject();
    sub_18E1CFC6C(v2489);
    goto LABEL_1408;
  }

  sub_18E220494();
  sub_18E2019F8();
  v2497 = v8 && v9 == 0xD00000000000004FLL;
  if (v2497 || (sub_18E1D7DE8(v2490, v2491, 0xD000000000000035, v2492, v2493, v2494, v2495, v2496, v2699, v2887, v3077, v3273, v3469, v3665, v3860, v4056, v4252, v4448, v4644, v4837, v5033, v5229, v5424, v5620, v5816, v6012, v6208, v6404, v6600, v6796, v6992, v7187, v7383, v7579, v7775, v7971, v8167, v8363) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2498);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji(variant:)(v2499);
    goto LABEL_1407;
  }

  sub_18E220494();
  sub_18E2019F8();
  v2507 = v8 && v9 == 0xD00000000000004FLL;
  if (v2507 || (sub_18E1D7DE8(v2500, v2501, 0xD000000000000035, v2502, v2503, v2504, v2505, v2506, v2700, v2888, v3078, v3274, v3470, v3666, v3861, v4057, v4253, v4449, v4645, v4838, v5034, v5230, v5425, v5621, v5817, v6013, v6209, v6405, v6601, v6797, v6993, v7188, v7384, v7580, v7776, v7972, v8168, v8364) & 1) != 0)
  {
    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Diffusion.Model.VisualGenerationBase(variant:)(v2508);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E1C5CFC();
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.Diffusion.Adapter.Scribble(variant:)(v2509);
LABEL_1407:

    *(a2 + 24) = &type metadata for AssetBackedDiffusionBundle;
    *(a2 + 32) = sub_18E22EAB0();
    sub_18E1E2C84();
    v2510 = swift_allocObject();
    sub_18E1CFC6C(v2510);
LABEL_1408:
    sub_18E1E842C();
    return AssetBackedDiffusionBundle.init(configurationIdentifier:baseModel:adapter:)(v2511, v2512, v2513, v2514);
  }

  sub_18E220494();
  v2523 = v2522 == 0xD000000000000022 && v9 == 0xD00000000000004FLL;
  if (v2523 || (sub_18E1D7DE8(v2515, v2516, 0xD000000000000022, v2517, v2518, v2519, v2520, v2521, v2684, v2889, v3079, v3275, v3471, v3667, v3862, v4058, v4254, v4450, v4646, v4839, v5035, v5231, v5426, v5622, v5818, v6014, v6210, v6406, v6602, v6798, v6994, v7189, v7385, v7581, v7777, v7973, v8169, v8365) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer(variant:)(v2524);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase(variant:)(v2527, v2525, v2526);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2528 = swift_allocObject();
    sub_18E1C6378(v2528);
    goto LABEL_1430;
  }

  sub_18E220494();
  v2537 = v2536 == 0xD000000000000022 && v9 == 0xD00000000000004FLL;
  if (v2537 || (sub_18E1D7DE8(v2529, v2530, 0xD000000000000022, v2531, v2532, v2533, v2534, v2535, v2684, v2890, v3080, v3276, v3472, v3668, v3863, v4059, v4255, v4451, v4647, v4840, v5036, v5232, v5427, v5623, v5819, v6015, v6211, v6407, v6603, v6799, v6995, v7190, v7386, v7582, v7778, v7974, v8170, v8366) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.NLRouterTokenizer(variant:)(v2538);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.NLRouterBase(variant:)(v2539);
LABEL_105:

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for AssetBackedLLMBundle;
    *(a2 + 32) = sub_18E1D4BA0();
    sub_18E1D48C0();
    v131 = swift_allocObject();
    sub_18E1C6378(v131);
LABEL_16:
    sub_18E1D00D4();
    v32 = v3;
    return AssetBackedLLMBundle.init(configurationIdentifier:tokenizer:baseModel:adapter:draftModel:imageTokenizer:embeddingPreprocessor:adapterMetadataOverride:)(v24, v32, v25, v26, v27, v28, v29, v30, v31, v2684);
  }

  sub_18E1D44C0();
  sub_18E1E9FBC();
  v2548 = v8 && v9 == 0xD00000000000004FLL;
  if (v2548 || (sub_18E1D7DE8(v2540, v2541, v2542, v2543, v2544, v2545, v2546, v2547, v2684, v2891, v3081, v3277, v3473, v3669, v3864, v4060, v4256, v4452, v4648, v4841, v5037, v5233, v5428, v5624, v5820, v6016, v6212, v6408, v6604, v6800, v6996, v7191, v7387, v7583, v7779, v7975, v8171, v8367) & 1) != 0)
  {
    sub_18E221C48("tokenizerVariant");
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.Tokenizer.ChatGPTTokenizer(variant:)(v2549);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E221C48("baseModelVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.LLM.Model.ChatGPT(variant:)(v2550);

    sub_18E1CD75C();
    sub_18E1C5020();
    *(a2 + 24) = &type metadata for LLMBundle;
    *(a2 + 32) = sub_18E1D8410();
    sub_18E1D48C0();
    v2551 = swift_allocObject();
    sub_18E1C6378(v2551);
    goto LABEL_1430;
  }

  sub_18E220494();
  sub_18E1E6854();
  v2559 = v8 && v9 == 0xD00000000000004FLL;
  if (v2559 || (sub_18E1D7DE8(v2552, v2553, 0xD00000000000002CLL, v2554, v2555, v2556, v2557, v2558, v2684, v2892, v3082, v3278, v3474, v3670, v3865, v4061, v4257, v4453, v4649, v4842, v5038, v5234, v5429, v5625, v5821, v6017, v6213, v6409, v6605, v6801, v6997, v7192, v7388, v7584, v7780, v7976, v8172, v8368) & 1) != 0)
  {
    sub_18E2491A4(0x6E6F697461636F6CLL, 0xEF746E6169726156, a1);
    sub_18E216858();
    sub_18E2244EC();
    static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin(variant:)(v2560);
    if (v2)
    {
      goto LABEL_7;
    }

    sub_18E2352DC(0xD000000000000013, "tokenInputDenyListVariant");
    sub_18E216858();
    sub_18E1E14A8();
    static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin(variant:)(v2561);

    *(a2 + 24) = &type metadata for ImageSpatialPhotosReliveBundle;
    *(a2 + 32) = sub_18E231008();
    sub_18E1E2C84();
    v2562 = swift_allocObject();
    sub_18E1CFC6C(v2562);
    sub_18E1E842C();
    ImageSpatialPhotosReliveBundle.init(configurationIdentifier:location:fovestimator:)(v2563, v2564, v2565, v2566);
  }

  else
  {
    sub_18E1D44C0();
    v2574 = v8369 == v8173 && v9 == 0xD00000000000004FLL;
    if (v2574 || (sub_18E1D7DE8(v2567, v2568, 0xD000000000000029, v2569, v2570, v2571, v2572, v2573, v2701, v2893, v3083, v3279, v3475, v3671, v3866, v4062, v4258, v4454, v4650, v4843, v5039, v5235, v5430, v5626, v5822, v6018, v6214, v6410, v6606, v6802, v6998, v7193, v7389, v7585, v7781, v7977, v8173, v8369) & 1) != 0)
    {
      sub_18E2491A4(0x6E6F697461636F6CLL, 0xEF746E6169726156, a1);
      sub_18E216858();
      sub_18E2244EC();
      static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain(variant:)(v2575);
      if (v2)
      {
        goto LABEL_7;
      }

      sub_18E2352DC(0xD000000000000013, "tokenInputDenyListVariant");
      sub_18E216858();
      sub_18E1E14A8();
      static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain(variant:)(v2576);

      *(a2 + 24) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
      *(a2 + 32) = sub_18E23144C();
      sub_18E1E2C84();
      v2577 = swift_allocObject();
      sub_18E1CFC6C(v2577);
      sub_18E1E842C();
      AssetBackedImageSpatialPhotosReliveBundle.init(configurationIdentifier:location:fovestimator:)(v2578, v2579, v2580, v2581);
    }

    else
    {
      sub_18E220494();
      sub_18E1CFDF0();
      v2589 = v8 && v9 == 0xD00000000000004FLL;
      if (v2589 || (sub_18E1D7DE8(v2582, v2583, 0xD00000000000002ELL, v2584, v2585, v2586, v2587, v2588, v2702, v2894, v3084, v3280, v3476, v3672, v3867, v4063, v4259, v4455, v4651, v4844, v5040, v5236, v5431, v5627, v5823, v6019, v6215, v6411, v6607, v6803, v6999, v7194, v7390, v7586, v7782, v7978, v8174, v8370) & 1) != 0)
      {
        sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
        sub_18E216858();
        sub_18E2244EC();
        static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v2590, v2591);
        if (v2)
        {
          goto LABEL_7;
        }

        sub_18E2352DC(0xD000000000000019, "defaultDenyListVariant");
        sub_18E216858();
        sub_18E1E0FB0();
        static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList(variant:)(v2592);

        sub_18E1FECD0("embeddingDenyListVariant");
        sub_18E216858();
        sub_18E1E30F8();
        static Catalog.Resource.EmbeddingDenyList.All(variant:)(v2593);

        *(a2 + 24) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
        *(a2 + 32) = sub_18E2316AC();
        sub_18E1E6400();
        v2594 = swift_allocObject();
        sub_18E1CFC6C(v2594);
        sub_18E232DF0();
        AssetBackedTokenInputDenyListWithDefaultsBundle.init(configurationIdentifier:defaultDenyList:tokenInputDenyList:embeddingDenyList:)(v2595, v2596, v2597, v2598, v2599, v2600);
      }

      else
      {
        sub_18E220494();
        v2609 = v2608 == v7391 && v9 == 0xD00000000000004FLL;
        if (v2609 || (sub_18E1D7DE8(v2601, v2602, 0xD000000000000025, v2603, v2604, v2605, v2606, v2607, v2703, v2895, v3085, v3281, v3477, v3673, v3868, v4064, v4260, v4456, v4652, v4845, v5041, v5237, v5432, v5628, v5824, v6020, v6216, v6412, v6608, v6804, v7000, v7195, v7391, v7587, v7783, v7979, v8175, v8371) & 1) != 0)
        {
          sub_18E2352DC(0xD000000000000019, "defaultDenyListVariant");
          sub_18E216858();
          sub_18E2244EC();
          static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList(variant:)(v2610);
          if (v2)
          {
            goto LABEL_7;
          }

          sub_18E1FECD0("embeddingDenyListVariant");
          sub_18E216858();
          sub_18E1E14A8();
          static Catalog.Resource.EmbeddingDenyList.All(variant:)(v2611);

          *(a2 + 24) = &type metadata for AssetBackedTokenInputDenyListBundle;
          *(a2 + 32) = sub_18E207A4C();
          sub_18E1E2C84();
          v2612 = swift_allocObject();
          sub_18E1CFC6C(v2612);
          sub_18E1E842C();
          AssetBackedTokenInputDenyListBundle.init(configurationIdentifier:tokenInputDenyList:embeddingDenyList:)(v2613, v2614, v2615, v2616);
        }

        else
        {
          sub_18E220494();
          sub_18E1CFFF4();
          v2624 = v8 && v9 == 0xD00000000000004FLL;
          if (v2624 || (sub_18E1D7DE8(v2617, v2618, 0xD00000000000002FLL, v2619, v2620, v2621, v2622, v2623, v2704, v2896, v3086, v3282, v3478, v3674, v3869, v4065, v4261, v4457, v4653, v4846, v5042, v5238, v5433, v5629, v5825, v6021, v6217, v6413, v6609, v6805, v7001, v7196, v7392, v7588, v7784, v7980, v8176, v8372) & 1) != 0)
          {
            sub_18E2352DC(0xD000000000000016, "embeddingDenyListVariant");
            sub_18E216858();
            sub_18E2244EC();
            static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v2625, v2626);
            if (v2)
            {
              goto LABEL_7;
            }

            sub_18E2352DC(0xD00000000000001ALL, "tokenOutputRetainListVariant");
            sub_18E216858();
            sub_18E1E0FB0();
            static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList(variant:)(v2627);

            sub_18E1FECD0("embeddingDenyListVariant");
            sub_18E216858();
            sub_18E1E30F8();
            static Catalog.Resource.EmbeddingDenyList.All(variant:)(v2628);

            *(a2 + 24) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
            *(a2 + 32) = sub_18E2319DC();
            sub_18E1E6400();
            v2644 = swift_allocObject();
            sub_18E1CFC6C(v2644);
            sub_18E232DF0();
            AssetBackedTokenOutputDenyListWithDefaultsBundle.init(configurationIdentifier:defaultDenyList:tokenOutputDenyList:embeddingDenyList:)(v2645, v2646, v2647, v2648, v2649, v2650);
          }

          else
          {
            sub_18E220494();
            sub_18E1D1940();
            v2636 = v8 && v9 == 0xD00000000000004FLL;
            if (!v2636 && (sub_18E1D7DE8(v2629, v2630, 0xD000000000000026, v2631, v2632, v2633, v2634, v2635, v2705, v2897, v3087, v3283, v3479, v3675, v3870, v4066, v4262, v4458, v4654, v4847, v5043, v5239, v5434, v5630, v5826, v6022, v6218, v6414, v6610, v6806, v7002, v7197, v7393, v7589, v7785, v7981, v8177, v8373) & 1) == 0)
            {
              sub_18E1D44C0();
              sub_18E1E9FBC();
              v2659 = v8 && v9 == 0xD00000000000004FLL;
              if (v2659 || (sub_18E1D7DE8(v2651, v2652, v2653, v2654, v2655, v2656, v2657, v2658, v2706, v2898, v3088, v3284, v3480, v3676, v3871, v4067, v4263, v4459, v4655, v4848, v5044, v5240, v5435, v5631, v5827, v6023, v6219, v6415, v6611, v6807, v7003, v7198, v7394, v7590, v7786, v7982, v8178, v8374) & 1) != 0)
              {
                sub_18E1E2F00("tokenOutputRetainListVariant");
                sub_18E216858();
                sub_18E224E1C();
                static Catalog.Resource.TokenOutputRetainList.STXSafetyWordList(variant:)(v2660, v2661, v2662, v2663, v2664, v2665, v2666, v2667, v2668, v2669);
                if (v2)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                sub_18E220494();
                sub_18E2234B8();
                v2677 = v8 && v9 == 0xD00000000000004FLL;
                if (!v2677 && (sub_18E1D7DE8(v2670, v2671, 0xD000000000000031, v2672, v2673, v2674, v2675, v2676, v2707, v2899, v3089, v3285, v3481, v3677, v3872, v4068, v4264, v4460, v4656, v4849, v5045, v5241, v5436, v5632, v5828, v6024, v6220, v6416, v6612, v6808, v7004, v7199, v7395, v7591, v7787, v7983, v8179, v8375) & 1) == 0)
                {
                  *(a2 + 32) = 0;
                  result = 0.0;
                  *a2 = 0u;
                  *(a2 + 16) = 0u;
                  return result;
                }

                sub_18E1E2F00("tokenOutputRetainListVariant");
                sub_18E216858();
                sub_18E224E1C();
                static Catalog.Resource.TokenOutputRetainList.ProofreadingRetainList(variant:)(v2678);
                if (v2)
                {
                  goto LABEL_7;
                }
              }

              *(a2 + 24) = &type metadata for AssetBackedTokenOutputRetainListBundle;
              *(a2 + 32) = sub_18E2AE01C();
              sub_18E1E1950();
              v2679 = swift_allocObject();
              sub_18E1CFC6C(v2679);
              sub_18E220D78();
              AssetBackedTokenOutputRetainListBundle.init(configurationIdentifier:tokenOutputRetainList:)(v2680, v2681, v2682, v2683);
              return result;
            }

            sub_18E2352DC(0xD00000000000001ALL, "tokenOutputRetainListVariant");
            sub_18E216858();
            sub_18E2244EC();
            static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList(variant:)(v2637);
            if (v2)
            {
              goto LABEL_7;
            }

            sub_18E1FECD0("embeddingDenyListVariant");
            sub_18E216858();
            sub_18E1E14A8();
            static Catalog.Resource.EmbeddingDenyList.All(variant:)(v2638);

            *(a2 + 24) = &type metadata for AssetBackedTokenOutputDenyListBundle;
            *(a2 + 32) = sub_18E231D0C();
            sub_18E1E2C84();
            v2639 = swift_allocObject();
            sub_18E1CFC6C(v2639);
            sub_18E1E842C();
            AssetBackedTokenOutputDenyListBundle.init(configurationIdentifier:tokenOutputDenyList:embeddingDenyList:)(v2640, v2641, v2642, v2643);
          }
        }
      }
    }
  }

  return result;
}