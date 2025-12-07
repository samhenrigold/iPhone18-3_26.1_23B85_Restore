void sub_22399DE9C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 3)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399E1B0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 2)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399E4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = MEMORY[0x277D84F90]; v7; *(v21 + 40) = v13)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = sub_2239B37B8();

      if (v15 >= 7)
      {

        v16 = sub_2239B37B8();

        if (v16 >= 9)
        {
          break;
        }
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v17 = i;
    v30 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
      v17 = i;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v29 = v19 + 1;
      v27 = *(v17 + 16);
      sub_22396C7F0((v18 > 1), v19 + 1, 1);
      v20 = v29;
      v17 = v30;
      v19 = v27;
    }

    *(v17 + 16) = v20;
    i = v17;
    v21 = v17 + 16 * v19;
    *(v21 + 32) = v14;
  }

  while (1)
  {
LABEL_6:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v22 = sub_2239B3128();
    v24 = v23;

    sub_2239B3678();

    v25 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v25);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v22, v24);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v26 = 0xD00000000000001ALL;
    *(v26 + 8) = 0x80000002239BA2E0;
    *(v26 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399E804(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v18 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      if (sub_2239A6EDC(v13, v12) == 16)
      {

        v14 = sub_2239B37B8();

        if (v14 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v26 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v16 = *(i + 16);
    v15 = *(i + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v19 = v16 + 1;
      v25 = v16;
      sub_22396C7F0((v15 > 1), v16 + 1, 1);
      v16 = v25;
      v17 = v19;
      i = v26;
    }

    *(i + 16) = v17;
    v18 = i + 16 * v16;
    *(v18 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v20 = sub_2239B3128();
    v22 = v21;

    sub_2239B3678();

    v23 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v23);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v20, v22);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v24 = 0xD00000000000001ALL;
    *(v24 + 8) = 0x80000002239BA2E0;
    *(v24 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399EB08(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 6)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399EE1C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v18 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];

      if (sub_2239B37B8())
      {

        v14 = sub_2239B37B8();

        if (v14 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v26 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v16 = *(i + 16);
    v15 = *(i + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v19 = v16 + 1;
      v25 = v16;
      sub_22396C7F0((v15 > 1), v16 + 1, 1);
      v17 = v19;
      v16 = v25;
      i = v26;
    }

    *(i + 16) = v17;
    v18 = i + 16 * v16;
    *(v18 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v20 = sub_2239B3128();
    v22 = v21;

    sub_2239B3678();

    v23 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v23);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v20, v22);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v24 = 0xD00000000000001ALL;
    *(v24 + 8) = 0x80000002239BA2E0;
    *(v24 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

void sub_22399F11C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = MEMORY[0x277D84F90]; v5; *(v19 + 40) = v12)
  {
LABEL_10:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
      v13 = *v11;
      v12 = v11[1];
      swift_bridgeObjectRetain_n();
      v14 = sub_2239B37B8();

      if (v14 >= 0xA)
      {

        v15 = sub_2239B37B8();

        if (v15 >= 9)
        {
          break;
        }
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v27 = i;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22396C7F0(0, *(i + 16) + 1, 1);
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v20 = v17 + 1;
      v26 = v17;
      sub_22396C7F0((v16 > 1), v17 + 1, 1);
      v18 = v20;
      v17 = v26;
      i = v27;
    }

    *(i + 16) = v18;
    v19 = i + 16 * v17;
    *(v19 + 32) = v13;
  }

  while (1)
  {
LABEL_6:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  if (*(i + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_22399F768();
    v21 = sub_2239B3128();
    v23 = v22;

    sub_2239B3678();

    v24 = ConfigSection.rawValue.getter();
    MEMORY[0x223DEE030](v24);

    MEMORY[0x223DEE030](0x73646C656966202CLL, 0xE90000000000003DLL);
    MEMORY[0x223DEE030](v21, v23);

    MEMORY[0x223DEE030](32032, 0xE200000000000000);
    sub_223973AD8();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    *(v25 + 8) = 0x80000002239BA2E0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  else
  {
  }
}

uint64_t sub_22399F430@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399DE9C(a1);
    if (v3)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  CommonConfigFields.init(dict:)(a1, v23);
  if (v3)
  {
  }

  v22 = v23[0];
  v9 = v23[1];
  v8 = v23[2];
  v11 = v23[3];
  v10 = v23[4];
  v12 = v23[5];
  v25 = BYTE2(v23[0]);
  if (a2)
  {
    v13 = 257;
  }

  else
  {
    v13 = 1;
  }

  v21 = sub_22397B840(0, a1, v13) & 1;
  v20 = sub_22399C7B8(1u, a1);
  v24 = v14 & 1;
  v15 = sub_22399C6A0(2u, a1);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v16 = v15;
  }

  v23[0] = v16;
  sub_223983BB4(byte_2836FCE88);

  v17 = v23[0];
  v18 = v25;
  v19 = v24;
  *a3 = v22;
  *(a3 + 2) = v18;
  *(a3 + 8) = v9;
  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
  *(a3 + 48) = v21;
  *(a3 + 56) = v20;
  *(a3 + 64) = v19;
  *(a3 + 72) = v17;
  return result;
}

double ServerConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

uint64_t sub_22399F690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0380, &qword_2239B7408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22399F700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0380, &qword_2239B7408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22399F768()
{
  result = qword_281335D60;
  if (!qword_281335D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09FE70, "<r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281335D60);
  }

  return result;
}

uint64_t sub_22399F81C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_2239B3478();
  if (!v19)
  {
    return sub_2239B33D8();
  }

  v41 = v19;
  v45 = sub_2239B3738();
  v32 = sub_2239B3748();
  sub_2239B36E8();
  result = sub_2239B3468();
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
      v22 = sub_2239B34A8();
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
      sub_2239B3728();
      result = sub_2239B3498();
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

uint64_t sub_22399FC40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    if (v10 <= 2)
    {
      if (*i)
      {
        if (v10 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_37;
          }

          sub_223963BB4(*(i - 2), *(i - 1), 2);
          sub_223963BB4(v11, v12, 2);
          if (*&v8 != *&v11)
          {
            return 0;
          }

          goto LABEL_8;
        }

        if (v13 != 1)
        {
          goto LABEL_37;
        }

        sub_223963BB4(*(i - 2), *(i - 1), 1);
        v5 = v11;
        v6 = v12;
        v7 = 1;
      }

      else
      {
        if (*v3)
        {
          goto LABEL_37;
        }

        sub_223963BB4(*(i - 2), *(i - 1), 0);
        v5 = v11;
        v6 = v12;
        v7 = 0;
      }

      sub_223963BB4(v5, v6, v7);
      if (v8 != v11)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (*i > 4u)
    {
      break;
    }

    if (v10 == 3)
    {
      if (v13 != 3)
      {
        goto LABEL_37;
      }

      sub_223963BB4(*(i - 2), *(i - 1), 3);
      sub_223963BB4(v11, v12, 3);
      if ((v11 ^ v8))
      {
        return 0;
      }
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_36;
      }

      if (v8 == v11 && v9 == v12)
      {
        sub_22396298C(*(i - 2), *(i - 1), 4);
        sub_22396298C(v8, v9, 4);
        sub_223963BB4(v8, v9, 4);
        sub_223963BB4(v8, v9, 4);
      }

      else
      {
        v16 = sub_2239B3958();
        sub_22396298C(v11, v12, 4);
        sub_22396298C(v8, v9, 4);
        sub_223963BB4(v8, v9, 4);
        sub_223963BB4(v11, v12, 4);
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_8:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v10 == 5)
  {
    if (v13 != 5)
    {
      goto LABEL_36;
    }

    sub_22396298C(*(v3 - 2), *(v3 - 1), 5);
    sub_22396298C(v8, v9, 5);
    sub_22396298C(v11, v12, 5);
    sub_22396298C(v8, v9, 5);
    v14 = sub_22399FC40(v8, v11);
    sub_223963BB4(v8, v9, 5);
    sub_223963BB4(v11, v12, 5);
    sub_223963BB4(v11, v12, 5);
    sub_223963BB4(v8, v9, 5);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v13 == 6)
  {
    sub_22396298C(*(v3 - 2), *(v3 - 1), 6);
    sub_22396298C(v8, v9, 6);
    sub_22396298C(v11, v12, 6);
    sub_22396298C(v8, v9, 6);
    v15 = sub_22396A45C(v8, v11);
    sub_223963BB4(v8, v9, 6);
    sub_223963BB4(v11, v12, 6);
    sub_223963BB4(v11, v12, 6);
    sub_223963BB4(v8, v9, 6);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

LABEL_36:
  sub_22396298C(*(i - 2), *(i - 1), *i);

LABEL_37:
  sub_22396298C(v11, v12, v13);
  sub_223963BB4(v8, v9, v10);
  sub_223963BB4(v11, v12, v13);
  sub_223963BB4(v8, v9, v10);
  return 0;
}

uint64_t sub_2239A0044(uint64_t a1)
{
  v2 = sub_2239A377C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0080(uint64_t a1)
{
  v2 = sub_2239A377C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A00BC(uint64_t a1)
{
  v2 = sub_2239A3824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A00F8(uint64_t a1)
{
  v2 = sub_2239A3824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A0134()
{
  v1 = *v0;
  v2 = 7630441;
  v3 = 0x7961727261;
  if (v1 != 5)
  {
    v3 = 0x616E6F6974636964;
  }

  v4 = 1819242338;
  if (v1 != 3)
  {
    v4 = 0x676E69727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953393013;
  if (v1 != 1)
  {
    v5 = 0x656C62756F64;
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

uint64_t sub_2239A01EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2239A4514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2239A0214(uint64_t a1)
{
  v2 = sub_2239A36D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0250(uint64_t a1)
{
  v2 = sub_2239A36D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A028C(uint64_t a1)
{
  v2 = sub_2239A3728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A02C8(uint64_t a1)
{
  v2 = sub_2239A3728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A0304(uint64_t a1)
{
  v2 = sub_2239A3878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0340(uint64_t a1)
{
  v2 = sub_2239A3878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A037C(uint64_t a1)
{
  v2 = sub_2239A3920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A03B8(uint64_t a1)
{
  v2 = sub_2239A3920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A03F4(uint64_t a1)
{
  v2 = sub_2239A37D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0430(uint64_t a1)
{
  v2 = sub_2239A37D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239A046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2239B3958();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2239A04EC(uint64_t a1)
{
  v2 = sub_2239A38CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239A0528(uint64_t a1)
{
  v2 = sub_2239A38CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SimpleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03B0, &qword_2239B7450);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03B8, &qword_2239B7458);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03C0, &qword_2239B7460);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03C8, &qword_2239B7468);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = v37 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03D0, &qword_2239B7470);
  v38 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03D8, &qword_2239B7478);
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03E0, &qword_2239B7480);
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03E8, &unk_2239B7488);
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v19 = v37 - v18;
  v20 = v1[1];
  v57 = *v1;
  v37[1] = v20;
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239A36D4();
  v56 = v19;
  sub_2239B3A98();
  if (v21 <= 2)
  {
    v28 = v51;
    v27 = v52;
    v29 = v53;
    v30 = v54;
    if (v21)
    {
      v31 = v21 == 1;
      v32 = v55;
      if (v31)
      {
        LOBYTE(v59) = 1;
        sub_2239A38CC();
        v36 = v56;
        sub_2239B3878();
        sub_2239B38F8();
        (*(v27 + 8))(v14, v12);
      }

      else
      {
        LOBYTE(v59) = 2;
        sub_2239A3878();
        v36 = v56;
        sub_2239B3878();
        sub_2239B38C8();
        (*(v38 + 8))(v29, v30);
      }

      return (*(v58 + 8))(v36, v32);
    }

    else
    {
      LOBYTE(v59) = 0;
      sub_2239A3920();
      v33 = v55;
      v34 = v56;
      sub_2239B3878();
      sub_2239B38E8();
      (*(v28 + 8))(v17, v15);
      return (*(v58 + 8))(v34, v33);
    }
  }

  else
  {
    if (v21 > 4)
    {
      v22 = v55;
      v23 = v56;
      if (v21 == 5)
      {
        LOBYTE(v59) = 5;
        sub_2239A377C();
        v24 = v45;
        sub_2239B3878();
        v59 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0408, &qword_2239B7498);
        sub_2239A3974(&qword_27D0A0410, sub_223991650, MEMORY[0x277D83948]);
        v25 = v47;
        sub_2239B38D8();
        v26 = v46;
      }

      else
      {
        LOBYTE(v59) = 6;
        sub_2239A3728();
        v24 = v48;
        sub_2239B3878();
        v59 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
        sub_2239916F8(&qword_27D0A01D8, sub_223991650, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        v25 = v50;
        sub_2239B38D8();
        v26 = v49;
      }
    }

    else
    {
      v22 = v55;
      v23 = v56;
      if (v21 == 3)
      {
        LOBYTE(v59) = 3;
        sub_2239A3824();
        v24 = v39;
        sub_2239B3878();
        v25 = v41;
        sub_2239B38B8();
        v26 = v40;
      }

      else
      {
        LOBYTE(v59) = 4;
        sub_2239A37D0();
        v24 = v42;
        sub_2239B3878();
        v25 = v44;
        sub_2239B38A8();
        v26 = v43;
      }
    }

    (*(v26 + 8))(v24, v25);
    return (*(v58 + 8))(v23, v22);
  }
}

void SimpleType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v4 != 1)
      {
        MEMORY[0x223DEE800](2);
        if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v3;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_18;
      }

      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x223DEE800](v5);
    v9 = v3;
LABEL_18:
    MEMORY[0x223DEE840](v9);
    return;
  }

  if (*(v1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      MEMORY[0x223DEE800](5);
      MEMORY[0x223DEE800](*(v3 + 16));
      v6 = *(v3 + 16);
      if (v6)
      {
        v7 = (v3 + 48);
        do
        {
          v10 = *(v7 - 2);
          v11 = *(v7 - 1);
          v8 = *v7;
          v7 += 24;
          sub_22396298C(v10, v11, v8);
          SimpleType.hash(into:)(a1);
          sub_223963BB4(v10, v11, v8);
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      MEMORY[0x223DEE800](6);

      sub_2239A2FC4(a1, v3);
    }
  }

  else if (v4 == 3)
  {
    MEMORY[0x223DEE800](3);
    sub_2239B3A38();
  }

  else
  {
    MEMORY[0x223DEE800](4);

    sub_2239B3228();
  }
}

uint64_t SimpleType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2239B3A18();
  SimpleType.hash(into:)(v3);
  return sub_2239B3A78();
}

uint64_t SimpleType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0440, &qword_2239B74A0);
  v4 = *(v3 - 8);
  v75 = v3;
  v76 = v4;
  MEMORY[0x28223BE20](v3);
  v78 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0448, &qword_2239B74A8);
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v61 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0450, &qword_2239B74B0);
  v72 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v82 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0458, &qword_2239B74B8);
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v61 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0460, &qword_2239B74C0);
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v80 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0468, &qword_2239B74C8);
  v66 = *(v12 - 8);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0470, &qword_2239B74D0);
  v64 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0478, &qword_2239B74D8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v22 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2239A36D4();
  v23 = v84;
  sub_2239B3A88();
  if (v23)
  {
    goto LABEL_11;
  }

  v62 = v15;
  v24 = v80;
  v63 = 0;
  v26 = v81;
  v25 = v82;
  v84 = v19;
  v27 = sub_2239B3868();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 7))
  {
    v32 = sub_2239B36A8();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0480, &unk_2239B74E0);
    *v34 = &type metadata for SimpleType;
    sub_2239B37D8();
    sub_2239B3698();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v84 + 8))(v21, v18);
    goto LABEL_10;
  }

  if (*(v27 + 32) <= 2u)
  {
    if (*(v27 + 32))
    {
      v37 = v63;
      if (v28 == 1)
      {
        LOBYTE(v85) = 1;
        sub_2239A38CC();
        v38 = v14;
        sub_2239B37C8();
        v39 = v79;
        if (!v37)
        {
          v40 = v67;
          v58 = sub_2239B3858();
          (*(v66 + 8))(v38, v40);
          (*(v84 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v57 = 0;
LABEL_32:
          v35 = v83;
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v85) = 2;
        sub_2239A3878();
        sub_2239B37C8();
        v39 = v79;
        if (!v37)
        {
          v47 = v65;
          sub_2239B3828();
          v55 = v54;
          (*(v69 + 8))(v24, v47);
          (*(v84 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v57 = 0;
          v58 = v55;
          goto LABEL_32;
        }
      }
    }

    else
    {
      LODWORD(v82) = 0;
      LOBYTE(v85) = 0;
      sub_2239A3920();
      v45 = v17;
      v46 = v63;
      sub_2239B37C8();
      if (!v46)
      {
        v53 = v62;
        v58 = sub_2239B3848();
        (*(v64 + 8))(v45, v53);
        (*(v84 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v57 = 0;
        v35 = v83;
        v39 = v79;
        LOBYTE(v28) = v82;
LABEL_35:
        *v39 = v58;
        *(v39 + 8) = v57;
        *(v39 + 16) = v28;
        return __swift_destroy_boxed_opaque_existential_0Tm(v35);
      }
    }

    (*(v84 + 8))(v21, v18);
    goto LABEL_10;
  }

  v61 = v27;
  if (v28 <= 4)
  {
    v29 = v84;
    if (v28 == 3)
    {
      LOBYTE(v85) = 3;
      sub_2239A3824();
      v30 = v63;
      sub_2239B37C8();
      if (!v30)
      {
        v31 = v71;
        v56 = sub_2239B3818();
        (*(v70 + 8))(v26, v31);
        (*(v29 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v57 = 0;
        v58 = v56 & 1;
LABEL_34:
        v35 = v83;
        v39 = v79;
        goto LABEL_35;
      }
    }

    else
    {
      LOBYTE(v85) = 4;
      sub_2239A37D0();
      v48 = v63;
      sub_2239B37C8();
      if (!v48)
      {
        v49 = v68;
        v58 = sub_2239B3808();
        v60 = v59;
        (*(v72 + 8))(v25, v49);
        (*(v29 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v57 = v60;
        goto LABEL_34;
      }
    }

    (*(v29 + 8))(v21, v18);
    goto LABEL_10;
  }

  v41 = v84;
  if (v28 == 5)
  {
    LOBYTE(v85) = 5;
    sub_2239A377C();
    v42 = v77;
    v43 = v63;
    sub_2239B37C8();
    if (!v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0408, &qword_2239B7498);
      sub_2239A3974(&qword_27D0A0488, sub_22399177C, MEMORY[0x277D83978]);
      v44 = v74;
      sub_2239B3838();
      (*(v73 + 8))(v42, v44);
LABEL_33:
      (*(v41 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v57 = 0;
      v58 = v85;
      goto LABEL_34;
    }
  }

  else
  {
    LOBYTE(v85) = 6;
    sub_2239A3728();
    v50 = v63;
    sub_2239B37C8();
    if (!v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A01D0, &qword_2239B68D0);
      sub_2239916F8(&qword_27D0A0208, sub_22399177C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      v51 = v75;
      v52 = v78;
      sub_2239B3838();
      (*(v76 + 8))(v52, v51);
      goto LABEL_33;
    }
  }

  (*(v41 + 8))(v21, v18);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v83;
  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2239A1CE8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2239B3A18();
  SimpleType.hash(into:)(v3);
  return sub_2239B3A78();
}

uint64_t sub_2239A1D40(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2239B3A18();
  SimpleType.hash(into:)(v4);
  return sub_2239B3A78();
}

uint64_t ConversionError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  sub_2239B3678();
  MEMORY[0x223DEE030](0x2064696C61766E49, 0xED00002065707974);
  MEMORY[0x223DEE030](v1, v2);

  MEMORY[0x223DEE030](0x6176206874697720, 0xEC0000002065756CLL);
  MEMORY[0x223DEE030](v4, v3);

  MEMORY[0x223DEE030](0xD000000000000021, 0x80000002239BADD0);
  return 0;
}

unint64_t sub_2239A1E9C()
{
  result = qword_27D0A03A0;
  if (!qword_27D0A03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03A0);
  }

  return result;
}

uint64_t static SimpleType.initOrThrow(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22395E644(a1, &v14);
  SimpleType.init(_:)(&v14, &v16);
  v4 = v18;
  result = v16;
  v6 = v17;
  if (v18 == 255)
  {
    sub_22397617C(v16, v17, 255);
    sub_2239A1E9C();
    swift_allocError();
    v8 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v9 = sub_2239B3AC8();
    v11 = v10;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_2239B3758();
    v12 = v14;
    v13 = v15;
    *v8 = v9;
    v8[1] = v11;
    v8[2] = v12;
    v8[3] = v13;
    return swift_willThrow();
  }

  else
  {
    *a2 = v16;
    *(a2 + 8) = v6;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t SimpleType.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void SimpleType.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t SimpleType.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t SimpleType.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
  return result;
}

void *sub_2239A206C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void *sub_2239A207C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

unsigned __int8 *sub_2239A2090@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

unint64_t SimpleType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[16];
  if (v5 <= 1)
  {
    if (v0[16])
    {
      if (v5 != 1)
      {
LABEL_15:
        v7 = *v0;
        v8 = v4;
        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v8;
        *(v9 + 32) = v5;
        sub_22396298C(v7, v8, v5);
        sub_22396298C(v7, v8, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A04A0, &unk_2239B74F0);
        v10 = sub_2239B31C8();
        sub_223963BB4(v1 | (v2 << 8), v8, v5);
        return v10;
      }

      sub_22396298C(v3, v4, 1);
    }

    else
    {
      sub_22396298C(v3, v4, 0);
    }

    return sub_2239B3928();
  }

  if (v5 == 2)
  {
    sub_22396298C(v3, v4, 2);
    return sub_2239B3438();
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      sub_22396298C(v3, v4, 4);
      return v1 | (v2 << 8);
    }

    goto LABEL_15;
  }

  sub_22396298C(v3, v4, 3);
  if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t SimpleType.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void SimpleType.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v4 = sub_2239B3798();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_2239A2BE0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 16) = 6;
}

uint64_t sub_2239A2378@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void sub_2239A2388(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD18, &qword_2239B5750);
    v4 = sub_2239B3798();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_2239A2BE0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 16) = 6;
}

Swift::UInt64_optional __swiftcall SimpleType.unwrapToUInt()()
{
  v1 = *v0;
  v2 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[16];
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      sub_22396298C(v3, v4, 3);
      v23 = 0;
      v3 = v1 & 1;
      goto LABEL_82;
    }

    if (v5 != 4)
    {
LABEL_27:
      v18 = v1 | (v2 << 8);
      v19 = v4;
      sub_22396298C(v3, v4, v5);
      v20 = v18;
      v21 = v19;
      v22 = v5;
LABEL_28:
      sub_223963BB4(v20, v21, v22);
      goto LABEL_45;
    }

    v8 = v1 | (v2 << 8);
    v9 = HIBYTE(v4) & 0xF;
    v10 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      v34 = *(v0 + 1);
      sub_22396298C(v3, v4, 4);
      v20 = v8;
      v21 = v34;
      v22 = 4;
      goto LABEL_28;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v35 = *(v0 + 1);
      sub_22396298C(v3, v4, 4);
      v33 = v35;
      v14 = sub_2239A3154(v8, v35, 10);
      v23 = v36;
LABEL_79:
      sub_223963BB4(v8, v33, 4);
      if (v23)
      {
        v3 = 0;
      }

      else
      {
        v3 = v14;
      }

      goto LABEL_82;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v40[0] = v1 | (v2 << 8);
      v40[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v1 == 43)
      {
        if (v9)
        {
          v10 = v9 - 1;
          if (v9 != 1)
          {
            v14 = 0;
            v28 = v40 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                break;
              }

              v17 = __CFADD__(10 * v14, v29);
              v14 = 10 * v14 + v29;
              if (v17)
              {
                break;
              }

              ++v28;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v1 != 45)
      {
        if (v9)
        {
          v14 = 0;
          v31 = v40;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = __CFADD__(10 * v14, v32);
            v14 = 10 * v14 + v32;
            if (v17)
            {
              break;
            }

            ++v31;
            if (!--v9)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_77;
      }

      if (v9)
      {
        v10 = v9 - 1;
        if (v9 != 1)
        {
          v14 = 0;
          v24 = v40 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              break;
            }

            v17 = 10 * v14 >= v25;
            v14 = 10 * v14 - v25;
            if (!v17)
            {
              break;
            }

            ++v24;
            if (!--v10)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v2 & 0x10000000000000) != 0)
      {
        v12 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = *v0;
        v38 = *(v0 + 1);
        v12 = sub_2239B36B8();
        v3 = v37;
        v10 = v39;
        v4 = v38;
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          if (--v10)
          {
            v14 = 0;
            if (v12)
            {
              v26 = v12 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_77;
                }

                if (!is_mul_ok(v14, 0xAuLL))
                {
                  goto LABEL_77;
                }

                v17 = __CFADD__(10 * v14, v27);
                v14 = 10 * v14 + v27;
                if (v17)
                {
                  goto LABEL_77;
                }

                ++v26;
                if (!--v10)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_76;
          }

          goto LABEL_77;
        }

        goto LABEL_88;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v14 = 0;
          if (v12)
          {
            while (1)
            {
              v30 = *v12 - 48;
              if (v30 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                goto LABEL_77;
              }

              v17 = __CFADD__(10 * v14, v30);
              v14 = 10 * v14 + v30;
              if (v17)
              {
                goto LABEL_77;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_77:
        v14 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_78;
      }

      if (v10 >= 1)
      {
        if (--v10)
        {
          v14 = 0;
          if (v12)
          {
            v15 = v12 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v14, 0xAuLL))
              {
                goto LABEL_77;
              }

              v17 = 10 * v14 >= v16;
              v14 = 10 * v14 - v16;
              if (!v17)
              {
                goto LABEL_77;
              }

              ++v15;
              if (!--v10)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_76:
          LOBYTE(v10) = 0;
LABEL_78:
          v41 = v10;
          v23 = v10;
          v33 = v4;
          sub_22396298C(v3, v4, 4);
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (!v0[16])
  {
    if (((v2 << 8) & 0x8000000000000000) == 0)
    {
      v6 = (v2 << 8) | v1;
      v7 = 0;
      goto LABEL_31;
    }

    sub_22396298C(v3, v4, 0);
LABEL_45:
    v3 = 0;
    v23 = 1;
    goto LABEL_82;
  }

  if (v5 != 1)
  {
    goto LABEL_27;
  }

  v6 = v1 | (v2 << 8);
  v7 = 1;
LABEL_31:
  sub_22396298C(v3, v4, v7);
  v3 = v6;
  v23 = 0;
LABEL_82:
  LOBYTE(v4) = v23 & 1;
LABEL_90:
  result.is_nil = v4;
  result.value = v3;
  return result;
}

Swift::String_optional __swiftcall SimpleType.unwrapToString()()
{
  if (*(v0 + 16) == 4)
  {
    v3 = v0;
    v2 = *v0;
    v1 = *(v3 + 8);
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v4 = v2;
  v5 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::OpaquePointer_optional __swiftcall Array.asSimpleType()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_2239B3048();
  MEMORY[0x28223BE20](v4);
  v12[1] = v3;
  v11 = v2;
  v5 = sub_2239B3408();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0148, &unk_2239B66D0);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_22399F81C(sub_2239A3AD0, v10, v5, &type metadata for SimpleType, v6, WitnessTable, MEMORY[0x277D84950], v12);
  result.value._rawValue = v8;
  result.is_nil = v9;
  return result;
}

uint64_t sub_2239A2B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v11[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  static SimpleType.initOrThrow(_:)(v11, a4);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

void sub_2239A2BE0(uint64_t a1, char a2, uint64_t *a3)
{
  v45 = *(a1 + 16);
  if (!v45)
  {

    return;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  sub_22396298C(v7, v6, v8);
  v11 = sub_22396236C(v4, v5);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v10;
  if (*(v9 + 24) >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_223963D78();
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0148, &unk_2239B66D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_223963BB4(v7, v6, v8);

      return;
    }

    goto LABEL_29;
  }

  sub_223965FA8(v14, a2 & 1);
  v16 = sub_22396236C(v4, v5);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_28:
    sub_2239B39A8();
    __break(1u);
LABEL_29:
    sub_2239B3678();
    MEMORY[0x223DEE030](0xD00000000000001BLL, 0x80000002239BA820);
    sub_2239B3758();
    MEMORY[0x223DEE030](39, 0xE100000000000000);
    sub_2239B3768();
    __break(1u);
    return;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_13:
  v20 = a3;
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v4;
  v22[1] = v5;
  v23 = v21[7] + 24 * v11;
  *v23 = v7;
  *(v23 + 8) = v6;
  *(v23 + 16) = v8;
  v24 = v21[2];
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v26;
  v27 = a1;
  if (v45 != 1)
  {
    v28 = (a1 + 104);
    v29 = 1;
    while (v29 < *(v27 + 16))
    {
      v31 = *(v28 - 4);
      v30 = *(v28 - 3);
      v7 = *(v28 - 2);
      v6 = *(v28 - 1);
      v8 = *v28;
      v32 = *v20;

      sub_22396298C(v7, v6, v8);
      v33 = sub_22396236C(v31, v30);
      v35 = *(v32 + 16);
      v36 = (v34 & 1) == 0;
      v25 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v25)
      {
        goto LABEL_25;
      }

      v38 = v34;
      if (*(v32 + 24) < v37)
      {
        sub_223965FA8(v37, 1);
        v33 = sub_22396236C(v31, v30);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }
      }

      if (v38)
      {
        goto LABEL_10;
      }

      v20 = a3;
      v40 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v41 = (v40[6] + 16 * v33);
      *v41 = v31;
      v41[1] = v30;
      v42 = v40[7] + 24 * v33;
      *v42 = v7;
      *(v42 + 8) = v6;
      *(v42 + 16) = v8;
      v43 = v40[2];
      v25 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      ++v29;
      v40[2] = v44;
      v28 += 40;
      v27 = a1;
      if (v45 == v29)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_2239A2FC4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v19 = 0;
  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      v11 = *(*(a2 + 48) + 16 * v10 + 8);
      v12 = *(a2 + 56) + 24 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);

      sub_22396298C(v13, v14, v15);
      if (!v11)
      {
        break;
      }

      v6 &= v6 - 1;
      v22 = v13;
      v23 = v14;
      v24 = v15;
      v16 = *(a1 + 48);
      v20[2] = *(a1 + 32);
      v20[3] = v16;
      v21 = *(a1 + 64);
      v17 = *(a1 + 16);
      v20[0] = *a1;
      v20[1] = v17;
      sub_2239B3228();

      SimpleType.hash(into:)(v20);
      sub_223963BB4(v13, v14, v15);
      v19 ^= sub_2239B3A78();
      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x223DEE800](v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unsigned __int8 *sub_2239A3154(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2239B32E8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2239888E8(result, v5);
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
      result = sub_2239B36B8();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
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
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
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

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_127;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_127;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2239A36D4()
{
  result = qword_27D0A03F0;
  if (!qword_27D0A03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03F0);
  }

  return result;
}

unint64_t sub_2239A3728()
{
  result = qword_27D0A03F8;
  if (!qword_27D0A03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A03F8);
  }

  return result;
}

unint64_t sub_2239A377C()
{
  result = qword_27D0A0400;
  if (!qword_27D0A0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0400);
  }

  return result;
}

unint64_t sub_2239A37D0()
{
  result = qword_27D0A0418;
  if (!qword_27D0A0418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0418);
  }

  return result;
}

unint64_t sub_2239A3824()
{
  result = qword_27D0A0420;
  if (!qword_27D0A0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0420);
  }

  return result;
}

unint64_t sub_2239A3878()
{
  result = qword_27D0A0428;
  if (!qword_27D0A0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0428);
  }

  return result;
}

unint64_t sub_2239A38CC()
{
  result = qword_27D0A0430;
  if (!qword_27D0A0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0430);
  }

  return result;
}

unint64_t sub_2239A3920()
{
  result = qword_27D0A0438;
  if (!qword_27D0A0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0438);
  }

  return result;
}

uint64_t sub_2239A3974(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A0408, &qword_2239B7498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2239A39EC()
{
  result = qword_27D0A0498;
  if (!qword_27D0A0498)
  {
    sub_2239B2EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0498);
  }

  return result;
}

uint64_t sub_2239A3A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2239A3AF4()
{
  result = qword_2813365C0;
  if (!qword_2813365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813365C0);
  }

  return result;
}

unint64_t sub_2239A3B74()
{
  result = qword_27D0A04A8;
  if (!qword_27D0A04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04A8);
  }

  return result;
}

unint64_t sub_2239A3BD8()
{
  result = qword_27D0A04B0;
  if (!qword_27D0A04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04B0);
  }

  return result;
}

unint64_t sub_2239A3CD8()
{
  result = qword_27D0A04B8;
  if (!qword_27D0A04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04B8);
  }

  return result;
}

unint64_t sub_2239A3D30()
{
  result = qword_27D0A04C0;
  if (!qword_27D0A04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04C0);
  }

  return result;
}

unint64_t sub_2239A3D88()
{
  result = qword_27D0A04C8;
  if (!qword_27D0A04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04C8);
  }

  return result;
}

unint64_t sub_2239A3DE0()
{
  result = qword_27D0A04D0;
  if (!qword_27D0A04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04D0);
  }

  return result;
}

unint64_t sub_2239A3E38()
{
  result = qword_27D0A04D8;
  if (!qword_27D0A04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04D8);
  }

  return result;
}

unint64_t sub_2239A3E90()
{
  result = qword_27D0A04E0;
  if (!qword_27D0A04E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04E0);
  }

  return result;
}

unint64_t sub_2239A3EE8()
{
  result = qword_27D0A04E8;
  if (!qword_27D0A04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04E8);
  }

  return result;
}

unint64_t sub_2239A3F40()
{
  result = qword_27D0A04F0;
  if (!qword_27D0A04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04F0);
  }

  return result;
}

unint64_t sub_2239A3F98()
{
  result = qword_27D0A04F8;
  if (!qword_27D0A04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A04F8);
  }

  return result;
}

unint64_t sub_2239A3FF0()
{
  result = qword_27D0A0500;
  if (!qword_27D0A0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0500);
  }

  return result;
}

unint64_t sub_2239A4048()
{
  result = qword_27D0A0508;
  if (!qword_27D0A0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0508);
  }

  return result;
}

unint64_t sub_2239A40A0()
{
  result = qword_27D0A0510;
  if (!qword_27D0A0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0510);
  }

  return result;
}

unint64_t sub_2239A40F8()
{
  result = qword_27D0A0518;
  if (!qword_27D0A0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0518);
  }

  return result;
}

unint64_t sub_2239A4150()
{
  result = qword_27D0A0520;
  if (!qword_27D0A0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0520);
  }

  return result;
}

unint64_t sub_2239A41A8()
{
  result = qword_27D0A0528;
  if (!qword_27D0A0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0528);
  }

  return result;
}

unint64_t sub_2239A4200()
{
  result = qword_27D0A0530;
  if (!qword_27D0A0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0530);
  }

  return result;
}

unint64_t sub_2239A4258()
{
  result = qword_27D0A0538;
  if (!qword_27D0A0538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0538);
  }

  return result;
}

unint64_t sub_2239A42B0()
{
  result = qword_27D0A0540;
  if (!qword_27D0A0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0540);
  }

  return result;
}

unint64_t sub_2239A4308()
{
  result = qword_27D0A0548;
  if (!qword_27D0A0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0548);
  }

  return result;
}

unint64_t sub_2239A4360()
{
  result = qword_27D0A0550;
  if (!qword_27D0A0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0550);
  }

  return result;
}

unint64_t sub_2239A43B8()
{
  result = qword_27D0A0558;
  if (!qword_27D0A0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0558);
  }

  return result;
}

unint64_t sub_2239A4410()
{
  result = qword_27D0A0560;
  if (!qword_27D0A0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0560);
  }

  return result;
}

unint64_t sub_2239A4468()
{
  result = qword_27D0A0568;
  if (!qword_27D0A0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0568);
  }

  return result;
}

unint64_t sub_2239A44C0()
{
  result = qword_27D0A0570;
  if (!qword_27D0A0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0570);
  }

  return result;
}

uint64_t sub_2239A4514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_2239B3958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953393013 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_2239B3958() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 6;
  }

  else
  {
    v6 = sub_2239B3958();

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

void sub_2239A47C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399E804(a1);
    if (v3)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  CommonConfigFields.init(dict:)(a1, &v128);
  if (v3)
  {

    return;
  }

  v7 = v128;
  v8 = v129;
  v124 = v130;
  v125 = v131;
  v126 = v132;
  v127 = v133;
  v134 = BYTE2(v128);
  if (a2)
  {
    v9 = 259;
  }

  else
  {
    v9 = 3;
  }

  v10 = sub_22397B988(1, a1, v9);
  v12 = v11;
  v13 = v10;
  v14 = sub_2239B0D94(v10, v11);
  if ((v14 & 0x10000) != 0)
  {

    v128 = 0;
    v129 = 0xE000000000000000;
    sub_2239B3678();
    v19 = "No summaries section found!";
    v20 = 0xD000000000000033;
LABEL_13:
    MEMORY[0x223DEE030](v20, v19 | 0x8000000000000000);
    MEMORY[0x223DEE030](v13, v12);

    v21 = v128;
    v22 = v129;
    sub_223973AD8();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    swift_willThrow();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  v111 = v14;

  v13 = sub_22397B988(0, a1, v9);
  v12 = v15;
  v16 = sub_2239B1DD8(v13, v15);
  if ((v16 & 0x100000000) != 0)
  {

    v128 = 0;
    v129 = 0xE000000000000000;
    sub_2239B3678();
    v19 = "ue. AudioEventType=";
    v20 = 0xD00000000000003BLL;
    goto LABEL_13;
  }

  v110 = v16;

  sub_22397B9B8(11, a1, v9);
  v18 = v17;
  v109 = v7;
  v31 = sub_22397BBE8(14, a1, v9);
  sub_223984678(v31, a2 & 1, 0xD000000000000013, 0x80000002239B9520);
  v123 = v31;
  v32 = sub_22397B988(13, a1, v9);
  v122 = v33;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B5BE0;
  v108 = v34;
  *(inited + 32) = v34;
  *(inited + 40) = v122;

  sub_223984678(inited, a2 & 1, 0x695474757074756FLL, 0xEF646C656946656DLL);
  swift_setDeallocating();
  sub_22398ABEC(inited + 32);
  *(&v121 + 1) = sub_22399CF8C(8, a1, v9);
  if (*(&v121 + 1))
  {

    sub_223984678(v36, a2 & 1, 0x6E696E6E75527369, 0xEF73646C65694667);
  }

  v37 = sub_22399CEB8(9, a1);
  if (v38)
  {
    *&v121 = sub_22398455C(v37, v38);
  }

  else
  {
    *&v121 = 0;
  }

  if (v121 == 0)
  {

    sub_223973AD8();
    swift_allocError();
    *v39 = 0xD000000000000041;
    *(v39 + 8) = 0x80000002239BAEA0;
    v24 = 1;
    *(v39 + 16) = 1;
    swift_willThrow();
    *&v121 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 1;
    goto LABEL_14;
  }

  v120 = sub_22399CF8C(2, a1, v9);
  if (v120)
  {

    sub_223984678(v40, a2 & 1, 0xD000000000000018, 0x80000002239B9420);
  }

  v106 = sub_22399CFDC(10, a1, v9);
  if (!v106)
  {
LABEL_44:
    v119 = 0;
LABEL_60:
    v107 = sub_22399CF74(6, a1, v9);
    v105 = sub_22399CF74(7, a1, v9);
    v112 = sub_22397BAB4(3, a1, v9);
    v62 = *(v112 + 16);
    v97 = MEMORY[0x277D84F90];
    if (v62)
    {
      v63 = sub_2239A60BC(v62, 0);
      v116 = sub_2239A6D70(&v128, v63 + 4, v62, v112);
      v64 = v128;

      sub_22396D730(v64);
      if (v116 == v62)
      {
LABEL_64:
        sub_223984678(v63, a2 & 1, 0x56746C7561666564, 0xED00007365756C61);

        v117 = Dictionary<>.asSimpleType()(v112);
        if (!v117)
        {
LABEL_79:

          v86 = sub_2239B30E8();
          v88 = v87;
          sub_223973AD8();
          swift_allocError();
          *v89 = v86;
          *(v89 + 8) = v88;
          *(v89 + 16) = 5;
          swift_willThrow();

          v29 = 0;
          v24 = 1;
          v25 = 1;
          v26 = 1;
          v27 = 1;
          v28 = 1;
          v30 = 1;
          goto LABEL_14;
        }

        v113 = sub_22399CF8C(5, a1, v9);
        v65 = sub_22399CFB4(15, a1, v9);

        if (!v65)
        {
          v65 = sub_223974468(MEMORY[0x277D84F90]);
        }

        v103 = Dictionary<>.asSimpleType()(v65);
        if (v103)
        {

          v66 = sub_22399139C(&unk_2836FC788);
          sub_22398ABEC(&unk_2836FC7A8);

          v68 = sub_2239A5734(v67, v66);
          v69 = MEMORY[0x277D84F90];
          if (v120)
          {
            v70 = v120;
          }

          else
          {
            v70 = MEMORY[0x277D84F90];
          }

          swift_bridgeObjectRetain_n();
          v71 = sub_2239A6F28(v70, v68);

          if (*(&v121 + 1))
          {
            v72 = *(&v121 + 1);
          }

          else
          {
            v72 = v69;
          }

          v73 = sub_2239A6F28(v72, v71);

          v75 = sub_2239A5734(v74, v73);
          v76 = v75;
          v77 = *(v75 + 16);
          if (!v77 || (v97 = sub_2239A60BC(*(v75 + 16), 0), a2 = sub_2239A6C18(&v128, v97 + 4, v77, v76), v78 = v128, , sub_22396D730(v78), a2 == v77))
          {
            v128 = v97;
            sub_2239A6140(&v128);

            v99 = v128;

            v80 = sub_2239A5734(v79, MEMORY[0x277D84FA0]);
            v81 = sub_2239A6F28(v70, v80);

            v82 = *(v81 + 16);
            if (v82)
            {
              v83 = sub_2239A60BC(*(v81 + 16), 0);
              v84 = sub_2239A6C18(&v128, v83 + 4, v82, v81);
              v85 = v128;

              sub_22396D730(v85);
              if (v84 != v82)
              {
                __break(1u);
                goto LABEL_79;
              }
            }

            else
            {
              v83 = MEMORY[0x277D84F90];
            }

            v128 = v83;
            sub_2239A6140(&v128);

            v95 = v128;
            v96 = v134;
            *a3 = v109;
            *(a3 + 2) = v96;
            *(a3 + 8) = v8;
            *(a3 + 16) = v124;
            *(a3 + 24) = v125;
            *(a3 + 32) = v126;
            *(a3 + 40) = v127;
            *(a3 + 48) = v111;
            *(a3 + 52) = v110;
            *(a3 + 56) = v18;
            *(a3 + 64) = v123;
            *(a3 + 72) = v108;
            *(a3 + 80) = v122;
            *(a3 + 88) = *(&v121 + 1);
            *(a3 + 96) = v121;
            *(a3 + 104) = v119;
            *(a3 + 112) = v113;
            *(a3 + 120) = v103;
            *(a3 + 128) = v117;
            *(a3 + 136) = v120;
            *(a3 + 144) = v99;
            *(a3 + 152) = v95;
            *(a3 + 160) = v107 & 1;
            *(a3 + 161) = v105 & 1;
            return;
          }

LABEL_86:
          __break(1u);

          __break(1u);
          return;
        }

        v91 = sub_2239B30E8();
        v93 = v92;

        sub_223973AD8();
        swift_allocError();
        *v94 = v91;
        *(v94 + 8) = v93;
        *(v94 + 16) = 5;
        swift_willThrow();
        v24 = 1;
        v25 = 1;
        v26 = 1;
        v27 = 1;
        v28 = 1;
        v29 = 1;
        v30 = 1;
        goto LABEL_14;
      }

      __break(1u);
    }

    v63 = MEMORY[0x277D84F90];
    goto LABEL_64;
  }

  v41 = *(v106 + 16);
  if (v41)
  {
    v42 = sub_2239A60BC(*(v106 + 16), 0);
    v43 = sub_2239A6D70(&v128, v42 + 4, v41, v106);
    v114 = v128;
    v118 = v43;
    swift_bridgeObjectRetain_n();
    sub_22396D730(v114);
    if (v118 != v41)
    {
      __break(1u);
      goto LABEL_44;
    }
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  sub_223984678(v42, a2 & 1, 0xD00000000000001ALL, 0x80000002239B94D0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0580, &unk_2239B8410);
  v44 = sub_2239B3778();
  v45 = 0;
  v46 = *(v106 + 64);
  v47 = 1 << *(v106 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v104 = v48 & v46;
  v115 = (v47 + 63) >> 6;
  v119 = v44;
  v98 = v44 + 64;
  if ((v48 & v46) == 0)
  {
LABEL_50:
    v50 = v45;
    while (1)
    {
      v45 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v45 >= v115)
      {

        goto LABEL_60;
      }

      v51 = *(v106 + 64 + 8 * v45);
      ++v50;
      if (v51)
      {
        v49 = __clz(__rbit64(v51));
        v104 = (v51 - 1) & v51;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  while (1)
  {
    v49 = __clz(__rbit64(v104));
    v104 &= v104 - 1;
LABEL_55:
    v102 = v49 | (v45 << 6);
    v52 = (*(v106 + 48) + 16 * v102);
    v100 = *v52;
    v101 = v52[1];
    v53 = (*(v106 + 56) + 16 * v102);
    v54 = *v53;
    v55 = v53[1];

    v56 = sub_2239B37B8();
    if (v56 >= 4)
    {
      break;
    }

    v57 = v56;

    *(v98 + ((v102 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v102;
    v58 = (v119[6] + 16 * v102);
    *v58 = v100;
    v58[1] = v101;
    *(v119[7] + v102) = v57;
    v59 = v119[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_85;
    }

    v119[2] = v61;
    if (!v104)
    {
      goto LABEL_50;
    }
  }

  sub_223973AD8();
  swift_allocError();
  *v90 = v54;
  *(v90 + 8) = v55;
  *(v90 + 16) = 5;
  swift_willThrow();

  v28 = 0;
  v29 = 0;
  v24 = 1;
  v25 = 1;
  v26 = 1;
  v27 = 1;
  v30 = 1;
LABEL_14:

  if (v24)
  {

    if (!v25)
    {
LABEL_16:
      if (!v26)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if (!v25)
  {
    goto LABEL_16;
  }

  if (!v26)
  {
LABEL_17:
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:

  if (!v27)
  {
LABEL_18:
    if (!v28)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (!v28)
  {
LABEL_19:
    if (!v29)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:

  if (!v29)
  {
LABEL_20:
    if (!v30)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_28:

  if (v30)
  {
LABEL_21:
  }
}

AudioAnalyticsBase::SummaryConfig::DataType_optional __swiftcall SummaryConfig.DataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2239A5734(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2239967B8(&v14, v12, v13);
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

double SummaryConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

uint64_t SummaryConfig.outputTimeField.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void *SummaryConfig.isRunningPredicate.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t SummaryConfig.DataType.rawValue.getter()
{
  v1 = 0x676E69727473;
  v2 = 0x74616F6C66;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2239A59E8(char a1)
{
  result = 0x6576456F69647541;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x56746C7561666564;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 7:
      result = 0x61726F6365447369;
      break;
    case 8:
      result = 0x6E696E6E75527369;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x695474757074756FLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

unint64_t sub_2239A5C04()
{
  result = qword_27D0A0578;
  if (!qword_27D0A0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0578);
  }

  return result;
}

uint64_t sub_2239A5C58()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A5D04(uint64_t a1)
{
  sub_2239B3228();
}

uint64_t sub_2239A5D9C(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A5E50(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xE500000000000000;
  v5 = 0x74616F6C66;
  if (*v1 != 2)
  {
    v5 = 1819242338;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7630441;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2239A5EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2239A5F00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryConfig.DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummaryConfig.DataType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_2239A60BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FFB8, qword_2239B5BF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2239A6140(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2239A6EC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2239A61AC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2239A61AC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2239B3908();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2239B33E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2239A6374(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2239A62A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2239A62A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2239B3958(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239A6374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2239A6C04(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2239A6950((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2239B3958();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2239B3958();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_223982480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_223982480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2239A6950((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2239A6C04(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2239A6B78(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2239B3958(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2239A6950(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_2239B3958() & 1) != 0)
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
      if (!v21 && (sub_2239B3958() & 1) != 0)
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

uint64_t sub_2239A6B78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239A6C04(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2239A6C18(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_2239A6D70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

unint64_t sub_2239A6EDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2239B37B8();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2239A6F28(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_2239967B8(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void sub_2239A6FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v5 = v4, v8 = sub_223981500(3), (v9 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v8, &v71), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    sub_223973AD8();
    swift_allocError();
    *v27 = 0xD00000000000001BLL;
    *(v27 + 8) = 0x80000002239BAE00;
    *(v27 + 16) = 0;
    swift_willThrow();
    return;
  }

  v10 = v60;
  v11 = *(v60 + 16);
  if (!v11)
  {

    v13 = MEMORY[0x277D84F90];
    v28 = *(MEMORY[0x277D84F90] + 16);
    if (!v28)
    {
LABEL_30:

      return;
    }

    goto LABEL_15;
  }

  v59[0] = MEMORY[0x277D84F90];
  sub_223982910(0, v11, 0);
  if (*(v60 + 16))
  {
    v12 = 0;
    v13 = v59[0];
    v14 = v11 - 1;
    while (1)
    {

      sub_2239A47C0(v15, a4 & 1, &v71);
      if (v4)
      {

        return;
      }

      v64 = v75;
      v65 = v76;
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v68 = v79;
      v69 = v80;
      v66 = v77;
      v67 = v78;
      v70 = v81;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v60 = v71;
      v59[0] = v13;
      if (v17 >= v16 >> 1)
      {
        sub_223982910((v16 > 1), v17 + 1, 1);
        v13 = v59[0];
      }

      *(v13 + 16) = v17 + 1;
      v18 = v13 + 168 * v17;
      v19 = v60;
      v20 = v62;
      *(v18 + 48) = v61;
      *(v18 + 64) = v20;
      *(v18 + 32) = v19;
      v21 = v63;
      v22 = v64;
      v23 = v66;
      *(v18 + 112) = v65;
      *(v18 + 128) = v23;
      *(v18 + 80) = v21;
      *(v18 + 96) = v22;
      v24 = v67;
      v25 = v68;
      v26 = v69;
      *(v18 + 192) = v70;
      *(v18 + 160) = v25;
      *(v18 + 176) = v26;
      *(v18 + 144) = v24;
      if (v14 == v12)
      {
        break;
      }

      if (++v12 >= *(v10 + 16))
      {
        goto LABEL_32;
      }
    }

    v5 = 0;

    v28 = *(v13 + 16);
    if (!v28)
    {
      goto LABEL_30;
    }

LABEL_15:
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    v31 = 32;
LABEL_16:
    v32 = v31;
    v33 = v31 + 168 * v29;
    v34 = v29;
    while (v34 < *(v13 + 16))
    {
      v35 = *(v13 + v33);
      v36 = *(v13 + v33 + 32);
      v72 = *(v13 + v33 + 16);
      v73 = v36;
      v71 = v35;
      v37 = *(v13 + v33 + 48);
      v38 = *(v13 + v33 + 64);
      v39 = *(v13 + v33 + 96);
      v76 = *(v13 + v33 + 80);
      v77 = v39;
      v74 = v37;
      v75 = v38;
      v40 = *(v13 + v33 + 112);
      v41 = *(v13 + v33 + 128);
      v42 = *(v13 + v33 + 144);
      v81 = *(v13 + v33 + 160);
      v79 = v41;
      v80 = v42;
      v78 = v40;
      v59[3] = &type metadata for SummaryConfig;
      v59[4] = &protocol witness table for SummaryConfig;
      v59[0] = swift_allocObject();
      memmove((v59[0] + 16), (v13 + v33), 0xA2uLL);
      sub_2239A7420(&v71, &v60);
      sub_2239A7420(&v71, &v60);
      v43 = sub_223984164(v59, a2, a3);
      if (v5)
      {

        sub_2239A7458(&v71);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);

        return;
      }

      v44 = v43;
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      if (v44)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_223982910(0, *(v30 + 16) + 1, 1);
          v30 = v82;
        }

        v47 = *(v30 + 16);
        v46 = *(v30 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_223982910((v46 > 1), v47 + 1, 1);
          v30 = v82;
        }

        v29 = v34 + 1;
        *(v30 + 16) = v47 + 1;
        v48 = v30 + 168 * v47;
        v49 = v71;
        v50 = v73;
        *(v48 + 48) = v72;
        *(v48 + 64) = v50;
        *(v48 + 32) = v49;
        v51 = v74;
        v52 = v75;
        v53 = v77;
        *(v48 + 112) = v76;
        *(v48 + 128) = v53;
        *(v48 + 80) = v51;
        *(v48 + 96) = v52;
        v54 = v78;
        v55 = v79;
        v56 = v80;
        *(v48 + 192) = v81;
        *(v48 + 160) = v55;
        *(v48 + 176) = v56;
        *(v48 + 144) = v54;
        v31 = v32;
        if (v28 - 1 != v34)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      ++v34;
      sub_2239A7458(&v71);
      v33 += 168;
      if (v28 == v34)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_2239A7488(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399EB08(a1);
    if (v3)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  CommonConfigFields.init(dict:)(a1, &v58);
  if (v3)
  {

    return;
  }

  v7 = v58;
  v41 = *(&v58 + 1);
  v66 = *(&v59 + 1);
  v42 = v59;
  v39 = *(&v60 + 1);
  v40 = v60;
  v65 = BYTE2(v58);
  if (a2)
  {
    v8 = 262;
  }

  else
  {
    v8 = 6;
  }

  v9 = sub_22397BD50(5, a1, v8);
  v11 = v10;

  v12 = sub_2239B37B8();

  if (v12 >= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v12;
  }

  sub_2239729D8(a2 & 1, 0xD00000000000001BLL, 0x80000002239BAF30, v9, v11, v13, &v51);

  v14 = v51;
  if (v51 == 3)
  {

    sub_2239A8A54(&v58);
    v15 = v63;
    a3[4] = v62;
    a3[5] = v15;
    a3[6] = *v64;
    *(a3 + 105) = *&v64[9];
    v16 = v59;
    *a3 = v58;
    a3[1] = v16;
    v17 = v61;
    a3[2] = v60;
    a3[3] = v17;
    return;
  }

  if (!v51)
  {
    v18 = v7;
LABEL_18:
    v38 = 0xE600000000000000;
    v20 = sub_2239B3958();

    if (v20)
    {
      v19 = 0x646573756E75;
    }

    else
    {
      v19 = sub_22397BD50(2, a1, v8);
      v38 = v21;
    }

    goto LABEL_21;
  }

  v18 = v7;
  if (v51 != 1)
  {
    goto LABEL_18;
  }

  v19 = 0x646573756E75;
  v38 = 0xE600000000000000;

LABEL_21:
  v22 = sub_22397BD50(3, a1, v8);
  v37 = v23;
  sub_22397BD50(4, a1, v8);
  v36 = v24;
  v34 = sub_22397BD50(1, a1, v8);
  v35 = v25;
  sub_22397BD50(0, a1, v8);
  v33 = v19;

  v26 = sub_2239B37B8();

  v27 = v66;
  if (v26 >= 4)
  {
    sub_223973AD8();
    swift_allocError();
    *v31 = 0xD000000000000029;
    *(v31 + 8) = 0x80000002239BAF50;
    *(v31 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    LOWORD(v44) = v18;
    v32 = v65;
    BYTE2(v44) = v65;
    *(&v44 + 1) = v41;
    *&v45 = v42;
    *(&v45 + 1) = v66;
    *&v46 = v40;
    *(&v46 + 1) = v39;
    LOBYTE(v47) = v14;
    *(&v47 + 1) = v22;
    *&v48 = v37;
    *(&v48 + 1) = v33;
    v49 = v38;
    *v50 = v36;
    *&v50[8] = v34;
    *&v50[16] = v35;
    v50[24] = v26;
    v53 = v46;
    v54 = v47;
    *(v57 + 9) = *&v50[9];
    v56 = v38;
    v57[0] = *v50;
    v55 = v48;
    v51 = v44;
    v52 = v45;
    nullsub_1();
    v28 = v56;
    a3[4] = v55;
    a3[5] = v28;
    a3[6] = v57[0];
    *(a3 + 105) = *(v57 + 9);
    v29 = v52;
    *a3 = v51;
    a3[1] = v29;
    v30 = v54;
    a3[2] = v53;
    a3[3] = v30;
    LOWORD(v58) = v18;
    BYTE2(v58) = v32;
    *(&v58 + 1) = v41;
    *&v59 = v42;
    *(&v59 + 1) = v27;
    *&v60 = v40;
    *(&v60 + 1) = v39;
    LOBYTE(v61) = v14;
    *(&v61 + 1) = v22;
    *&v62 = v37;
    *(&v62 + 1) = v33;
    v63 = v38;
    *v64 = v36;
    *&v64[8] = v34;
    *&v64[16] = v35;
    v64[24] = v26;
    sub_2239A89EC(&v44, v43);
    sub_2239A8A24(&v58);
  }
}

AudioAnalyticsBase::SystemMonitorConfig::MonitorType_optional __swiftcall SystemMonitorConfig.MonitorType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

AudioAnalyticsBase::SystemMonitorConfig::DataType_optional __swiftcall SystemMonitorConfig.DataType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double SystemMonitorConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

uint64_t SystemMonitorConfig.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SystemMonitorConfig.domain.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SystemMonitorConfig.notification.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t SystemMonitorConfig.defaultValue.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t SystemMonitorConfig.DataType.rawValue.getter()
{
  v1 = 0x676E69727473;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2239A7D00()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A7DAC(uint64_t a1)
{
  sub_2239B3228();
}

uint64_t sub_2239A7E44(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A7EF8(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x676E69727473;
  v4 = 0xE600000000000000;
  v5 = 0x656C62756F64;
  if (*v1 != 2)
  {
    v5 = 1819242338;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7630441;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t SystemMonitorConfig.MonitorType.rawValue.getter()
{
  v1 = 0x796669746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746C7561666564;
  }
}

unint64_t sub_2239A7FB8()
{
  result = qword_281336858;
  if (!qword_281336858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336858);
  }

  return result;
}

uint64_t sub_2239A800C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x796669746F6ELL;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

unint64_t sub_2239A8104()
{
  result = qword_281336860;
  if (!qword_281336860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336860);
  }

  return result;
}

uint64_t sub_2239A8158()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239A81F4(uint64_t a1)
{
  sub_2239B3228();
}

uint64_t sub_2239A827C(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239A8320(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x796669746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2239A83A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2239A83EC(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2239A847C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v70 = a3;
  if (!*(a1 + 16) || (v7 = sub_223981500(6), (v8 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v7, &v63), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v10 = 0x80000002239BAF10;
    sub_223973AD8();
    swift_allocError();
    *v23 = 0xD00000000000001FLL;
    *(v23 + 8) = 0x80000002239BAF10;
    *(v23 + 16) = 0;
    swift_willThrow();
    return v10;
  }

  v10 = *&v61[0];
  v11 = *(*&v61[0] + 16);
  if (v11)
  {
    v12 = 0;
    v46 = v11 - 1;
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        sub_2239A7488(v15, a4 & 1, &v63);
        if (v4)
        {

          return v10;
        }

        v61[4] = v67;
        v61[5] = v68;
        v62[0] = v69[0];
        *(v62 + 9) = *(v69 + 9);
        v61[0] = v63;
        v61[1] = v64;
        v61[2] = v65;
        v61[3] = v66;
        if (sub_2239A896C(v61) != 1)
        {
          break;
        }

        ++v14;
        v58 = v67;
        v59 = v68;
        v60[0] = v69[0];
        *(v60 + 9) = *(v69 + 9);
        v54 = v63;
        v55 = v64;
        v56 = v65;
        v57 = v66;
        result = sub_2239A8984(&v54);
        if (v11 == v14)
        {
          goto LABEL_21;
        }
      }

      v58 = v67;
      v59 = v68;
      v60[0] = v69[0];
      *(v60 + 9) = *(v69 + 9);
      v54 = v63;
      v55 = v64;
      v56 = v65;
      v57 = v66;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223982028(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v45 = v11;
        v21 = v17 + 1;
        v22 = *(v13 + 16);
        result = sub_223982028((v16 > 1), v17 + 1, 1, v13);
        v17 = v22;
        v18 = v21;
        v11 = v45;
        v13 = result;
      }

      v12 = v14 + 1;
      v51 = v58;
      v52 = v59;
      *v53 = v60[0];
      *&v53[9] = *(v60 + 9);
      v49 = v56;
      v50 = v57;
      v19 = v54;
      v48 = v55;
      *(v13 + 16) = v18;
      v20 = (v13 + (v17 << 7));
      v20[4] = v49;
      v20[5] = v50;
      v20[3] = v48;
      *(v20 + 137) = *&v53[9];
      v20[7] = v52;
      v20[8] = *v53;
      v20[6] = v51;
      v20[2] = v19;
    }

    while (v46 != v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_21:

  v24 = *(v13 + 16);
  if (!v24)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_37:

    return v10;
  }

  v25 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_23:
  v26 = (v25 << 7) | 0x20;
  v27 = v25;
  while (v27 < *(v13 + 16))
  {
    v28 = *(v13 + v26);
    v29 = *(v13 + v26 + 16);
    v30 = *(v13 + v26 + 48);
    v65 = *(v13 + v26 + 32);
    v66 = v30;
    v63 = v28;
    v64 = v29;
    v31 = *(v13 + v26 + 64);
    v32 = *(v13 + v26 + 80);
    v33 = *(v13 + v26 + 96);
    *(v69 + 9) = *(v13 + v26 + 105);
    v68 = v32;
    v69[0] = v33;
    v67 = v31;
    *(&v55 + 1) = &type metadata for SystemMonitorConfig;
    *&v56 = &protocol witness table for SystemMonitorConfig;
    *&v54 = swift_allocObject();
    memmove((v54 + 16), (v13 + v26), 0x79uLL);
    sub_2239A89EC(&v63, v61);
    sub_2239A89EC(&v63, v61);
    v34 = sub_223984164(&v54, a2, v70);
    if (v4)
    {

      sub_2239A8A24(&v63);
      __swift_destroy_boxed_opaque_existential_0Tm(&v54);

      return v10;
    }

    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(&v54);
    if (v35)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_223982930(0, *(v10 + 16) + 1, 1);
      }

      v37 = *(v10 + 16);
      v36 = *(v10 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_223982930((v36 > 1), v37 + 1, 1);
      }

      v25 = v27 + 1;
      *(v10 + 16) = v37 + 1;
      v38 = (v10 + (v37 << 7));
      v39 = v63;
      v40 = v64;
      v41 = v66;
      v38[4] = v65;
      v38[5] = v41;
      v38[2] = v39;
      v38[3] = v40;
      v42 = v67;
      v43 = v68;
      v44 = v69[0];
      *(v38 + 137) = *(v69 + 9);
      v38[7] = v43;
      v38[8] = v44;
      v38[6] = v42;
      if (v24 - 1 != v27)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    ++v27;
    result = sub_2239A8A24(&v63);
    v26 += 128;
    if (v24 == v27)
    {
      goto LABEL_37;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2239A896C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2239A8984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0588, &qword_2239B8640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2239A8A54(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t SystemUtility.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v4 = sub_2239B3048();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t SystemUtility.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v4 = sub_2239B3048();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SystemUtility.setSysctl<A>(_:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(a4 - 8) + 64);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v15[2] = a4;
  v15[3] = v10;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v9;
  v16 = v4;
  sub_2239A8E44(a3, sub_2239A8E18, v15, a4, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
  swift_beginAccess();
  v13 = *v11;

  return v13;
}

void sub_2239A8C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v8 = sub_2239B31E8();
  LODWORD(a5) = sysctlbyname((v8 + 32), 0, 0, a1, a5);

  swift_beginAccess();
  *(a2 + 16) = a5;
  if (a5 != sub_2239B3068())
  {

    v9 = sub_2239B3028();
    v10 = sub_2239B34E8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 67109379;
      swift_beginAccess();
      *(v11 + 4) = *(a2 + 16);

      *(v11 + 8) = 2081;
      v13 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v15 = sub_223973B2C(v13, v14, &v16);

      *(v11 + 10) = v15;
      _os_log_impl(&dword_22395C000, v9, v10, "An error occurred in sysctlbyname { returnCode=%d, %{private}s }", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DEF1D0](v12, -1, -1);
      MEMORY[0x223DEF1D0](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2239A8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

Swift::Int32 __swiftcall SystemUtility.pgrep(_:allUsers:)(Swift::String _, Swift::Bool allUsers)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(_._object) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v2 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v17 = sub_2239B3028();
    v18 = sub_2239B34F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22395C000, v17, v18, "pgrep failure. Zero-length process name provided.", v19, 2u);
      MEMORY[0x223DEF1D0](v19, -1, -1);
    }

    return -1;
  }

  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;

  v6 = sub_2239A9D70(16, countAndFlagsBits, object);
  v8 = v7;
  v48 = v9;
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF78, &unk_2239B8670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B8660;
  *(inited + 32) = 0xE00000001;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  v49 = 0;
  v13 = sysctl((inited + 32), 3u, 0, &v49, 0, 0);
  if (v13 != sub_2239B3068())
  {

    v20 = sub_2239B3028();
    v21 = sub_2239B34F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v50 = v23;
      *v22 = 67109379;
      *(v22 + 4) = v13;
      *(v22 + 8) = 2081;
      v24 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v26 = sub_223973B2C(v24, v25, &v50);

      *(v22 + 10) = v26;
      _os_log_impl(&dword_22395C000, v20, v21, "pgrep failure: sysctl. Failed to get proc list buffer size. { returnCode=%d, %{private}s } ", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x223DEF1D0](v23, -1, -1);
      MEMORY[0x223DEF1D0](v22, -1, -1);
    }

    swift_setDeallocating();
    return v13;
  }

  if (v49 < -647)
  {
LABEL_46:
    __break(1u);
  }

  if (v49 < 648)
  {
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = v49 / 648;
    type metadata accessor for kinfo_proc(0);
    v15 = sub_2239B33E8();
    *(v15 + 16) = v14;
    v16 = 32;
    do
    {
      bzero((v15 + v16), 0x288uLL);
      v16 += 648;
      --v14;
    }

    while (v14);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_223982584(0, 6, 0, inited);
  }

  v13 = sysctl((inited + 32), 3u, (v15 + 32), &v49, 0, 0);
  if (v13 != sub_2239B3068())
  {

    v37 = sub_2239B3028();
    v38 = sub_2239B34F8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v50 = v40;
      *v39 = 67109379;
      *(v39 + 4) = v13;
      *(v39 + 8) = 2081;
      v41 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v43 = sub_223973B2C(v41, v42, &v50);

      *(v39 + 10) = v43;
      _os_log_impl(&dword_22395C000, v37, v38, "pgrep failure: sysctl. Failed to get proc list. { returnCode=%d, %{private}s } ", v39, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x223DEF1D0](v40, -1, -1);
      MEMORY[0x223DEF1D0](v39, -1, -1);
    }

    return v13;
  }

  v47 = v11;
  v27 = geteuid();
  v28 = *(v15 + 16);
  if (!v28)
  {
LABEL_40:

    return -1;
  }

  v29 = v27;
  v30 = 0;
  v45 = v8 >> 16;
  v46 = v6 >> 16;
  v31 = v15 + 275;
  while (1)
  {
    if (v30 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v13 = *(v31 - 203);
    if (v29 != *(v31 + 177) && !allUsers)
    {
      goto LABEL_23;
    }

    v33 = *(v31 + 16);
    v50 = *v31;
    v51 = v33;
    v34 = sub_2239B3278();
    if (v13 < 1)
    {

      goto LABEL_23;
    }

    if ((v35 & 0x2000000000000000) != 0)
    {
      v36 = HIBYTE(v35) & 0xF;
    }

    else
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v34 == v48 && v35 == v47 && !v46 && v36 == v45)
    {

      goto LABEL_44;
    }

    v32 = sub_2239B3918();

    if (v32)
    {
      break;
    }

LABEL_23:
    ++v30;
    v31 += 648;
    if (v28 == v30)
    {
      goto LABEL_40;
    }
  }

LABEL_44:

  return v13;
}

Swift::Int32 __swiftcall SystemUtility.pkill(_:signal:)(Swift::String _, Swift::Int32 signal)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = SystemUtility.pgrep(_:allUsers:)(_, 1);
  if (v5 < 1)
  {

    v14 = sub_2239B3028();
    v15 = sub_2239B34F8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_223973B2C(countAndFlagsBits, object, &v19);
      _os_log_impl(&dword_22395C000, v14, v15, "Unable to retrieve pid for process. { procName=%{private}s }", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DEF1D0](v17, -1, -1);
      MEMORY[0x223DEF1D0](v16, -1, -1);
    }

    return -1;
  }

  else
  {
    v6 = kill(v5, signal);
    if (v6 != sub_2239B3068())
    {
      v7 = sub_2239B3028();
      v8 = sub_2239B34F8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 67109379;
        *(v9 + 4) = v6;
        *(v9 + 8) = 2081;
        v11 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
        v13 = sub_223973B2C(v11, v12, &v19);

        *(v9 + 10) = v13;
        _os_log_impl(&dword_22395C000, v7, v8, "Failed to kill process { returnCode=%d, %{private}s }", v9, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        MEMORY[0x223DEF1D0](v10, -1, -1);
        MEMORY[0x223DEF1D0](v9, -1, -1);
      }
    }
  }

  return v6;
}

Swift::Int32_optional __swiftcall SystemUtility.spawn(cmd:)(Swift::OpaquePointer cmd)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v40[0] = 0;
  v2 = posix_spawnattr_init(v40);
  if (v2 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v2;
    *(v13 + 8) = 2081;
    v15 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v17 = sub_223973B2C(v15, v16, &v39);

    *(v13 + 10) = v17;
    v18 = "posix_spawnattr_init failed. { returnCode=%d, %{private}s }";
LABEL_21:
    _os_log_impl(&dword_22395C000, v11, v12, v18, v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223DEF1D0](v14, -1, -1);
    MEMORY[0x223DEF1D0](v13, -1, -1);
    goto LABEL_22;
  }

  v38 = 0;
  sigemptyset(&v38);
  v3 = posix_spawnattr_setsigmask(v40, &v38);
  if (v3 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v3;
    *(v13 + 8) = 2081;
    v19 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v21 = sub_223973B2C(v19, v20, &v39);

    *(v13 + 10) = v21;
    v18 = "posix_spawnattr_setsigmask failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v37 = 0;
  sigfillset(&v37);
  v4 = posix_spawnattr_setsigdefault(v40, &v37);
  if (v4 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v4;
    *(v13 + 8) = 2081;
    v22 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v24 = sub_223973B2C(v22, v23, &v39);

    *(v13 + 10) = v24;
    v18 = "posix_spawnattr_setsigdefault failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v36 = 0;
  v5 = posix_spawnattr_getflags(v40, &v36);
  if (v5 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v5;
    *(v13 + 8) = 2081;
    v25 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v27 = sub_223973B2C(v25, v26, &v39);

    *(v13 + 10) = v27;
    v18 = "posix_spawnattr_getflags failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v36 |= 0xCu;
  v6 = posix_spawnattr_setflags(v40, v36);
  if (v6 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_22;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 67109379;
    *(v13 + 4) = v6;
    *(v13 + 8) = 2081;
    v28 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
    v30 = sub_223973B2C(v28, v29, &v39);

    *(v13 + 10) = v30;
    v18 = "posix_spawnattr_setflags failed. { returnCode=%d, %{private}s }";
    goto LABEL_21;
  }

  v35 = 0;
  v7 = sub_2239A9E0C(cmd._rawValue);
  if (!*(v7 + 2))
  {
    __break(1u);
  }

  v8 = posix_spawnp(&v35, *(v7 + 4), 0, v40, v7 + 4, 0);

  if (v8 != sub_2239B3068())
  {
    v11 = sub_2239B3028();
    v12 = sub_2239B34E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39 = v14;
      *v13 = 67109379;
      *(v13 + 4) = v8;
      *(v13 + 8) = 2081;
      v31 = _s18AudioAnalyticsBase13SystemUtilityC10debugErrnoSSyFZ_0();
      v33 = sub_223973B2C(v31, v32, &v39);

      *(v13 + 10) = v33;
      v18 = "posix_spawnp failed. { returnCode=%d, %{private}s }";
      goto LABEL_21;
    }

LABEL_22:

    v10 = 0;
    v9 = 1;
    goto LABEL_23;
  }

  v9 = 0;
  v10 = v35;
LABEL_23:
  LOBYTE(v40[0]) = v9;
  return (v10 | (v9 << 32));
}

char *sub_2239A9C44@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t SystemUtility.deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SystemUtility.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase13SystemUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2239A9D70(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2239B3238();

    return sub_2239B32F8();
  }

  return result;
}

char *sub_2239A9E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_223982AA0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 40);
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v4 - 1);
        v14 = v5 & 0xFFFFFFFFFFFFFFLL;

        v6 = __s1;
      }

      else
      {
        if ((*(v4 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      v15 = strdup(v6);
LABEL_9:

      v7 = v15;
      v16 = v2;
      v9 = *(v2 + 2);
      v8 = *(v2 + 3);
      if (v9 >= v8 >> 1)
      {
        sub_223982AA0((v8 > 1), v9 + 1, 1);
        v2 = v16;
      }

      *(v2 + 2) = v9 + 1;
      *&v2[8 * v9 + 32] = v7;
      v4 += 2;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0590, &qword_2239B86A8);
    sub_2239B3668();
    goto LABEL_9;
  }

LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_223982688(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_223982688((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  *&v2[8 * v11 + 32] = 0;
  return v2;
}

uint64_t type metadata accessor for SystemUtility(uint64_t a1)
{
  result = qword_2813365A8;
  if (!qword_2813365A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239AA038(uint64_t a1)
{
  result = sub_2239B3048();
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

uint64_t sub_2239AA0F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  if ((a2 & 1) == 0)
  {
    sub_22399EE1C(a1);
    if (v3)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  CommonConfigFields.init(dict:)(a1, &v42);
  if (v3)
  {
  }

  v49 = v42;
  v8 = v45;
  v41 = v44;
  v10 = v46;
  v9 = v47;
  v11 = v48;
  v50 = v43;
  v12 = sub_22397F96C(a1);
  v13 = v11;

  result = v41;
  v35 = a3;
  v37 = v8;
  v38 = v10;
  v39 = v9;
  v14 = *(v12 + 16);
  v15 = v12;
  if (v14)
  {
    v16 = 0;
    v17 = v12 + 40;
    v40 = *(v12 + 16);
    v32 = v14 - 1;
    v18 = MEMORY[0x277D84F90];
    v33 = v12 + 40;
    v34 = v13;
    do
    {
      v36 = v18;
      v19 = (v17 + 16 * v16);
      v20 = v16;
      while (1)
      {
        if (v20 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v22 = *(v19 - 1);
        v21 = *v19;
        v16 = v20 + 1;

        v23 = sub_2239B37B8();
        if (v23 < 4)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {

          sub_223973AD8();
          swift_allocError();
          *v30 = v22;
          *(v30 + 8) = v21;
          *(v30 + 16) = 5;
          swift_willThrow();
        }

        v19 += 2;
        ++v20;
        v24 = v41;
        v25 = v49;
        if (v40 == v16)
        {
          v13 = v34;
          v18 = v36;
          goto LABEL_24;
        }
      }

      v26 = v23;

      v18 = v36;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22398278C(0, *(v36 + 16) + 1, 1, v36);
        v18 = result;
      }

      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_22398278C((v27 > 1), v28 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v28 + 1;
      *(v18 + v28 + 32) = v26;
      v17 = v33;
      v29 = v32 == v20;
      v24 = v41;
      v25 = v49;
      v13 = v34;
    }

    while (!v29);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v24 = v41;
    v25 = v49;
  }

LABEL_24:

  v31 = v50;
  *v35 = v18;
  *(v35 + 8) = v25;
  *(v35 + 10) = v31;
  *(v35 + 16) = v24;
  *(v35 + 24) = v37;
  *(v35 + 32) = v38;
  *(v35 + 40) = v39;
  *(v35 + 48) = v13;
  return result;
}

AudioAnalyticsBase::TailspinConfig::CaseName_optional __swiftcall TailspinConfig.CaseName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double TailspinConfig.commonFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

__n128 TailspinConfig.commonFields.setter(__int16 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 5);

  *(v1 + 8) = v3;
  *(v1 + 10) = v4;
  result = *(a1 + 4);
  v7 = *(a1 + 12);
  *(v1 + 16) = result;
  *(v1 + 32) = v7;
  *(v1 + 48) = v5;
  return result;
}

uint64_t TailspinConfig.CaseName.rawValue.getter()
{
  v1 = 0x64616F6C7265766FLL;
  v2 = 0x73747469726973;
  if (*v0 != 2)
  {
    v2 = 0x65646F63656D6974;
  }

  if (*v0)
  {
    v1 = 0x6573616870;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2239AA638()
{
  result = qword_27D0A0598;
  if (!qword_27D0A0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A0598);
  }

  return result;
}

uint64_t sub_2239AA68C()
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

uint64_t sub_2239AA758(uint64_t a1)
{
  sub_2239B3228();
}

uint64_t sub_2239AA810(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3228();

  return sub_2239B3A78();
}

void sub_2239AA8E4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64616F6C7265766FLL;
  v4 = 0xE700000000000000;
  v5 = 0x73747469726973;
  if (*v1 != 2)
  {
    v5 = 0x65646F63656D6974;
    v4 = 0xED00006575737349;
  }

  if (*v1)
  {
    v3 = 0x6573616870;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2239AA970()
{
  result = qword_27D0A05A0;
  if (!qword_27D0A05A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A05A8, &qword_2239B8750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05A0);
  }

  return result;
}

double sub_2239AA9E4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2239AAA84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2239AAACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2239AAB38(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1[2] || (v6 = v5, v4 = a1, v8 = sub_223981500(8), (v9 & 1) == 0) || (sub_22395E644(v4[7] + 32 * v8, &v50), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    sub_223973AD8();
    swift_allocError();
    *v23 = 0xD00000000000001ALL;
    *(v23 + 8) = 0x80000002239BAFB0;
    *(v23 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  v10 = v46;
  v11 = *(v46 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
LABEL_31:
      v4 = MEMORY[0x277D84F90];
LABEL_32:

      return v4;
    }

    goto LABEL_16;
  }

  v45[0] = MEMORY[0x277D84F90];
  v4 = v45;
  result = sub_2239829B0(0, v11, 0);
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v45[0];
    v15 = v11 - 1;
    while (1)
    {

      result = sub_2239AA0F4(v16, a4 & 1, &v50);
      if (v5)
      {

        return v4;
      }

      v49 = v53;
      v47 = v51;
      v48 = v52;
      v46 = v50;
      v45[0] = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v4 = v45;
        result = sub_2239829B0((v17 > 1), v18 + 1, 1);
        v14 = v45[0];
      }

      *(v14 + 16) = v18 + 1;
      v19 = v14 + 56 * v18;
      v20 = v46;
      v21 = v47;
      v22 = v48;
      *(v19 + 80) = v49;
      *(v19 + 48) = v21;
      *(v19 + 64) = v22;
      *(v19 + 32) = v20;
      if (v15 == v13)
      {
        break;
      }

      if (++v13 >= *(v10 + 16))
      {
        goto LABEL_34;
      }
    }

    v6 = 0;

    v24 = *(v14 + 16);
    if (!v24)
    {
      goto LABEL_31;
    }

LABEL_16:
    v25 = 0;
    v4 = MEMORY[0x277D84F90];
LABEL_17:
    v26 = 56 * v25 + 32;
    v27 = v25;
    while (v27 < *(v14 + 16))
    {
      v28 = *(v14 + v26);
      v29 = *(v14 + v26 + 16);
      v30 = *(v14 + v26 + 32);
      v53 = *(v14 + v26 + 48);
      v51 = v29;
      v52 = v30;
      v50 = v28;
      v45[3] = &type metadata for TailspinConfig;
      v45[4] = &protocol witness table for TailspinConfig;
      v31 = swift_allocObject();
      v45[0] = v31;
      v33 = *(v14 + v26 + 16);
      v32 = *(v14 + v26 + 32);
      v34 = *(v14 + v26);
      *(v31 + 64) = *(v14 + v26 + 48);
      *(v31 + 32) = v33;
      *(v31 + 48) = v32;
      *(v31 + 16) = v34;
      sub_2239AAF38(&v50, &v46);
      sub_2239AAF38(&v50, &v46);
      v35 = sub_223984164(v45, a2, a3);
      if (v6)
      {

        sub_2239AAF70(&v50);
        __swift_destroy_boxed_opaque_existential_0Tm(v45);

        return v4;
      }

      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      if (v36)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v54 = v4;
        if ((result & 1) == 0)
        {
          result = sub_2239829B0(0, v4[2] + 1, 1);
          v4 = v54;
        }

        v38 = v4[2];
        v37 = v4[3];
        if (v38 >= v37 >> 1)
        {
          result = sub_2239829B0((v37 > 1), v38 + 1, 1);
          v4 = v54;
        }

        v25 = v27 + 1;
        v4[2] = v38 + 1;
        v39 = &v4[7 * v38];
        v40 = v50;
        v41 = v51;
        v42 = v52;
        v39[10] = v53;
        *(v39 + 3) = v41;
        *(v39 + 4) = v42;
        *(v39 + 2) = v40;
        if (v24 - 1 != v27)
        {
          goto LABEL_17;
        }

        goto LABEL_32;
      }

      ++v27;
      result = sub_2239AAF70(&v50);
      v26 += 56;
      if (v24 == v27)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

Swift::String __swiftcall Double.toDateString(_:)(Swift::String a1)
{
  v1 = sub_2239B2FC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_2239B3158();
  [v5 setDateFormat_];

  sub_2239B2F98();
  v7 = sub_2239B2F88();
  v8 = [v5 stringFromDate_];

  v9 = sub_2239B3188();
  v11 = v10;

  (*(v2 + 8))(v4, v1);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

AudioAnalyticsBase::TraceCode_optional __swiftcall TraceCode.init(rawValue:)(Swift::UInt32 rawValue)
{
  HIDWORD(v3) = rawValue - 4608;
  LODWORD(v3) = rawValue - 4608;
  v2 = v3 >> 2;
  if (v2 >= 0x12)
  {
    LOBYTE(v2) = 18;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2239AB200()
{
  sub_2239B3A18();
  sub_2239B3A58();
  return sub_2239B3A78();
}

uint64_t sub_2239AB280(uint64_t a1)
{
  sub_2239B3A18();
  sub_2239B3A58();
  return sub_2239B3A78();
}

unint64_t sub_2239AB318()
{
  result = qword_27D0A05B0;
  if (!qword_27D0A05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A05B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2239AB4BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7254746E64694469;
  v5 = 0xE900000000000079;
  if (a1 != 5)
  {
    v4 = 0x696C707041746F6ELL;
    v5 = 0xED0000656C626163;
  }

  v6 = 0x796C65726172;
  if (a1 != 3)
  {
    v6 = 0x656C62616E75;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737961776C61;
  if (a1 != 1)
  {
    v8 = 0x656D6974656D6F73;
    v7 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE600000000000000;
        if (v9 != 0x737961776C61)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE900000000000073;
        if (v9 != 0x656D6974656D6F73)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701736302)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE900000000000079;
      if (v9 != 0x7254746E64694469)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xED0000656C626163;
      if (v9 != 0x696C707041746F6ELL)
      {
LABEL_39:
        v12 = sub_2239B3958();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE600000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x796C65726172)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x656C62616E75)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2239AB6F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 0xD000000000000011;
    v15 = 0x80000002239B9CC0;
    v16 = 0xE500000000000000;
    v17 = 0x7265776F70;
    if (a1 != 3)
    {
      v17 = 0x616D726F66726570;
      v16 = 0xEB0000000065636ELL;
    }

    if (a1 != 2)
    {
      v14 = v17;
      v15 = v16;
    }

    v18 = 0x7974697275636573;
    if (a1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v18 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v3 = 0x4E65727574616566;
    v4 = 0xEA00000000007765;
    v5 = 0x6D65636E61686E65;
    v6 = 0xEB00000000746E65;
    if (a1 != 9)
    {
      v5 = 1802723700;
      v6 = 0xE400000000000000;
    }

    if (a1 != 8)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x6C69626173556975;
    v8 = 0xEB00000000797469;
    v9 = 0x4273756F69726573;
    v10 = 0xEA00000000006775;
    if (a1 != 6)
    {
      v9 = 0x677542726568746FLL;
      v10 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v9;
      v8 = v10;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x7974697275636573)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        if (v11 != 1701736302)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    if (a2 == 2)
    {
      v19 = 0x80000002239B9CC0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    if (a2 == 3)
    {
      v19 = 0xE500000000000000;
      if (v11 != 0x7265776F70)
      {
        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v20 = 0x616D726F66726570;
    v21 = 6644590;
    goto LABEL_52;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v19 = 0xEA00000000006775;
        if (v11 != 0x4273756F69726573)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        if (v11 != 0x677542726568746FLL)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_59;
    }

    v20 = 0x6C69626173556975;
    v21 = 7959657;
LABEL_52:
    v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v20)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (a2 == 8)
  {
    v19 = 0xEA00000000007765;
    if (v11 != 0x4E65727574616566)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  if (a2 == 9)
  {
    v20 = 0x6D65636E61686E65;
    v21 = 7630437;
    goto LABEL_52;
  }

  v19 = 0xE400000000000000;
  if (v11 != 1802723700)
  {
LABEL_61:
    v22 = sub_2239B3958();
    goto LABEL_62;
  }

LABEL_59:
  if (v12 != v19)
  {
    goto LABEL_61;
  }

  v22 = 1;
LABEL_62:

  return v22 & 1;
}

uint64_t sub_2239ABA60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x80000002239B9010;
  if (a1 != 5)
  {
    v4 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6570795465736163;
  if (a1 != 3)
  {
    v7 = 0x5462755365736163;
    v6 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65636E6174736E69;
  if (a1 != 1)
  {
    v9 = 1701667182;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x64656C62616E65;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x65636E6174736E69)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701667182)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x64656C62616E65)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x80000002239B9010;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xED000079616C6544;
      if (v10 != 0x746F687370616E73)
      {
LABEL_39:
        v13 = sub_2239B3958();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6570795465736163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000657079;
    if (v10 != 0x5462755365736163)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2239ABCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0x80000002239B9100;
    v12 = 0xD000000000000014;
    if (a1 != 2)
    {
      v12 = 0xD000000000000012;
      v11 = 0x80000002239B9120;
    }

    v13 = 0xD000000000000016;
    if (a1)
    {
      v10 = 0x80000002239B90E0;
    }

    else
    {
      v13 = 0x64656C62616E65;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x80000002239B9180;
    v4 = 0x80000002239B91A0;
    v5 = 0x6465726975716572;
    if (a1 == 7)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xEF746C7561666544;
    }

    if (a1 == 6)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v3 = v4;
    }

    v6 = 0x80000002239B9140;
    v7 = 0xD000000000000019;
    if (a1 != 4)
    {
      v7 = 0xD000000000000013;
      v6 = 0x80000002239B9160;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x80000002239B9100;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0x80000002239B9120;
        if (v8 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }
    }

    else if (a2)
    {
      v15 = 0x80000002239B90E0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v8 != 0x64656C62616E65)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000002239B9140;
      if (v8 != 0xD000000000000019)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0x80000002239B9160;
      if (v8 != 0xD000000000000013)
      {
LABEL_54:
        v16 = sub_2239B3958();
        goto LABEL_55;
      }
    }
  }

  else
  {
    if (a2 == 6)
    {
      v14 = "minSessionLength";
    }

    else
    {
      if (a2 != 7)
      {
        v15 = 0xEF746C7561666544;
        if (v8 != 0x6465726975716572)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v14 = "maxSessionLength";
    }

    v15 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_54;
    }
  }

LABEL_52:
  if (v9 != v15)
  {
    goto LABEL_54;
  }

  v16 = 1;
LABEL_55:

  return v16 & 1;
}

uint64_t sub_2239ABF68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E69727473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C62756F64;
    }

    else
    {
      v4 = 1819242338;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7630441;
    }

    else
    {
      v4 = 0x676E69727473;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656C62756F64;
  if (a2 != 2)
  {
    v8 = 1819242338;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7630441;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_2239AC080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0x80000002239B9060;
    v13 = 0xD000000000000012;
    if (a1 != 2)
    {
      v13 = 0x746E656D6D6F63;
      v12 = 0xE700000000000000;
    }

    v14 = 0xD000000000000010;
    if (a1)
    {
      v14 = 0x73646C697562;
    }

    else
    {
      v11 = 0x80000002239B9040;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6C616E7265746E69;
    v4 = 0xE900000000000073;
    v5 = 0x80000002239B90C0;
    v6 = 0x6D726F6674616C70;
    if (a1 == 7)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xE900000000000073;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE800000000000000;
    v8 = 0xD000000000000018;
    if (a1 == 4)
    {
      v8 = 0x73746E656D6D6F63;
    }

    else
    {
      v7 = 0x80000002239B9090;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v16 = 0x80000002239B9060;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v9 != 0x746E656D6D6F63)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2)
    {
      v16 = 0xE600000000000000;
      if (v9 != 0x73646C697562)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v15 = "audioServiceType";
    goto LABEL_35;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v17 = 0x6C616E7265746E69;
    }

    else
    {
      if (a2 == 7)
      {
        v15 = "operatingSystems";
LABEL_35:
        v16 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v17 = 0x6D726F6674616C70;
    }

    v16 = 0xE900000000000073;
    if (v9 != v17)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 == 4)
  {
    v16 = 0xE800000000000000;
    if (v9 != 0x73746E656D6D6F63)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v16 = 0x80000002239B9090;
    if (v9 != 0xD000000000000018)
    {
LABEL_54:
      v18 = sub_2239B3958();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v10 != v16)
  {
    goto LABEL_54;
  }

  v18 = 1;
LABEL_55:

  return v18 & 1;
}

uint64_t sub_2239AC354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5459817;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x534F6863746177;
    }

    else
    {
      v5 = 5459817;
    }

    if (v3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 1397716596;
    v4 = 0xE400000000000000;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x534F63616DLL;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1397715576;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE300000000000000;
    v7 = 0xE700000000000000;
    v8 = 0x534F6863746177;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 1397716596;
    v6 = 0xE400000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x534F63616DLL;
    if (a2 != 3)
    {
      v8 = 1397715576;
      v7 = 0xE400000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2239B3958();
  }

  return v12 & 1;
}