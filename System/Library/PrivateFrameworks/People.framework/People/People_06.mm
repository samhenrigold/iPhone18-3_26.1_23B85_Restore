void sub_22F06091C()
{
  v1 = v0;
  v35 = sub_22F0D05BC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1980, &qword_22F0D8480);
  v3 = *v0;
  v4 = sub_22F0D16FC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        sub_22F0CFF1C();
        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        sub_22F0D00CC();
        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22F0D00CC();
LABEL_18:
    *v1 = v5;
  }
}

void sub_22F060C94()
{
  v1 = v0;
  v2 = type metadata accessor for PeopleLocation(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1930, &unk_22F0D90D0);
  v4 = *v0;
  v5 = sub_22F0D16FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_22F06158C(v21 + v27, v32, type metadata accessor for PeopleLocation);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_22F0615F4(v26, *(v28 + 56) + v27, type metadata accessor for PeopleLocation);
        sub_22F0CFF1C();
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        sub_22F0D00CC();
        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22F0D00CC();
LABEL_18:
    *v1 = v6;
  }
}

void *sub_22F060EF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1978, &qword_22F0D9140);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v1 = v4;
  }

  return result;
}

void sub_22F061040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1968, &unk_22F0D9130);
  v2 = *v0;
  v3 = sub_22F0D16FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
        sub_22F0CFF1C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_22F0D00CC();
    *v1 = v4;
  }
}

void sub_22F0611BC()
{
  v1 = v0;
  v2 = type metadata accessor for LocationItem(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1950, &qword_22F0D90C0);
  v4 = *v0;
  v5 = sub_22F0D16FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_22F06158C(v21 + v27, v32, type metadata accessor for LocationItem);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_22F0615F4(v26, *(v28 + 56) + v27, type metadata accessor for LocationItem);
        sub_22F0CFF1C();
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        sub_22F0D00CC();
        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_22F0D00CC();
LABEL_18:
    *v1 = v6;
  }
}

id sub_22F061430(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F0D16FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_22F0CFF1C();
        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    result = sub_22F0D00CC();
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22F06158C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0615F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SelectPeopleIntent.people(for:)(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 people];
  if (v5)
  {
    v2 = v5;
    type metadata accessor for PersonType();
    v6 = sub_22F0D0F4C();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  if ((a1 - 2) > 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = qword_22F0D8490[a1 - 2];
  }

  v8 = v6 >> 62;
  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < v7)
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

  if (v6 < 0)
  {
    a1 = v6;
  }

  else
  {
    a1 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = sub_22F0D143C();
  result = sub_22F0D143C();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v2 >= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v2;
    }

    if (v2 >= 0)
    {
      v7 = v20;
    }

    if (sub_22F0D143C() >= v7)
    {
LABEL_11:
      if ((v6 & 0xC000000000000001) != 0 && v7)
      {
        type metadata accessor for PersonType();
        sub_22F0CFF1C();
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_22F0D155C();
          v10 = v11;
        }

        while (v7 != v11);
      }

      else
      {
        sub_22F0CFF1C();
      }

      if (v8)
      {
        a1 = sub_22F0D16EC();
        v8 = v12;
        v2 = v13;
        v7 = v14;

        if (v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v2 = 0;
        a1 = v6 & 0xFFFFFFFFFFFFFF8;
        v8 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v7 = (2 * v7) | 1;
        if (v7)
        {
LABEL_22:
          sub_22F0D18AC();
          swift_unknownObjectRetain_n();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            swift_unknownObjectRelease();
            v17 = MEMORY[0x277D84F90];
          }

          v18 = *(v17 + 16);
          sub_22F0D00CC();
          if (!__OFSUB__(v7 >> 1, v2))
          {
            if (v18 == (v7 >> 1) - v2)
            {
              v16 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v16)
              {
                return v16;
              }

              v16 = MEMORY[0x277D84F90];
LABEL_28:
              swift_unknownObjectRelease();
              return v16;
            }

            goto LABEL_42;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          swift_unknownObjectRelease_n();
        }
      }

      sub_22F0618B8(a1, v8, v2, v7);
      v16 = v15;
      goto LABEL_28;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_22F0618B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for PersonType();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F06199C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1708, &qword_22F0D8A90);
      v7 = *(type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t static PeopleHandle.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C();
  }
}

uint64_t PeopleHandle.hashValue.getter()
{
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061BC0()
{
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061C14(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();
  return sub_22F0D19CC();
}

uint64_t sub_22F061C5C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C();
  }
}

double PeopleFriend.handle.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  sub_22F0CFF1C();
  return result;
}

uint64_t PeopleFriend.handle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

id static PeopleLocation.emptyLocation(latlng:date:accuracy:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v7 = type metadata accessor for PeopleLocation(0);
  v8 = v7[5];
  v9 = sub_22F0D05BC();
  (*(*(v9 - 8) + 16))(&a3[v8], a2, v9);
  *a3 = xmmword_22F0D84B0;
  *&a3[v7[6]] = 0;
  *&a3[v7[7]] = a4;
  *&a3[v7[8]] = a1;

  return a1;
}

uint64_t type metadata accessor for PeopleLocation(uint64_t a1)
{
  result = qword_280CBDB18;
  if (!qword_280CBDB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F061E00()
{
  v0 = sub_22F0D080C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D085C();
  if (v4 == 0.0 || (sub_22F0D086C(), v5 == 0.0))
  {
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v6 = sub_22F0D0A1C();
    __swift_project_value_buffer(v6, qword_280CBDB50);
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D124C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_22F00A560(0xD000000000000013, 0x800000022F0DEB30, &v14);
      _os_log_impl(&dword_22EFE1000, v7, v8, "%s invalidate coordinate", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_22F0D081C();
    (*(v1 + 104))(v3, *MEMORY[0x277D094B0], v0);
    v12 = sub_22F0D084C();
    (*(v1 + 8))(v3, v0);
    return v12;
  }
}

Swift::Void __swiftcall Session.startRefreshingLocation(forHandles:)(Swift::OpaquePointer forHandles)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(forHandles._rawValue + 2);
  if (v7)
  {
    v8 = (forHandles._rawValue + 40);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22F03D0D8(0, *(v9 + 2) + 1, 1, v9);
      }

      v13 = *(v9 + 2);
      v12 = *(v9 + 3);
      if (v13 >= v12 >> 1)
      {
        v9 = sub_22F03D0D8((v12 > 1), v13 + 1, 1, v9);
      }

      *(v9 + 2) = v13 + 1;
      v14 = &v9[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_22F0D10CC();
  v15 = sub_22F0D10EC();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2]._rawValue = 0;
  v16[3]._rawValue = 0;
  v16[4]._rawValue = v2;
  v16[5]._rawValue = forHandles._rawValue;
  v16[6]._rawValue = v9;
  sub_22F0CFFAC();
  sub_22F0CFF1C();
  sub_22F062AA0(0, 0, v6, &unk_22F0D84D0, v16);
  sub_22F0D00CC();
  sub_22F01B128(v6);
}

uint64_t sub_22F06223C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_22F0D07AC();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_22F0D071C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA19C0, &unk_22F0D8700);
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0623C4, 0, 0);
}

uint64_t sub_22F0623C4()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_22F0CFF1C();
      sub_22F0D079C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D1E4(0, v5[2] + 1, 1, v5);
      }

      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        v5 = sub_22F03D1E4((v6 > 1), v7 + 1, 1, v5);
      }

      v4 += 16;
      v8 = v0[7];
      v9 = v0[5];
      v5[2] = v7 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v8, v9);
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v0[14] = v5;
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D08FD0], v0[8]);
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_22F0625C0;
  v11 = v0[13];
  v12 = v0[10];

  return MEMORY[0x28215FB18](v11, v5, v12, 0);
}

uint64_t sub_22F0625C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_22F062920;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v7 = v2[10];
    v6 = v2[11];
    v10 = v2 + 8;
    v8 = v2[8];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_22F062764;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F062764()
{
  v13 = v0;
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB50);
  sub_22F0CFF1C();
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136380675;
    v7 = MEMORY[0x2318FD490](v4, &type metadata for PeopleHandle);
    v9 = sub_22F00A560(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22EFE1000, v2, v3, "Started subscriptions: %{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22F062920()
{
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[4];
  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBDB50);
  v4 = v1;
  sub_22F0D152C();

  v5 = MEMORY[0x2318FD490](v2, &type metadata for PeopleHandle);
  MEMORY[0x2318FD2C0](v5);

  MEMORY[0x2318FD2C0](0x4025202D20, 0xE500000000000000);
  Logger.ifError(_:message:)(v1, 0xD000000000000020, 0x800000022F0DEB50);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22F062AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22F01B0B8(a3, v25 - v10);
  v12 = sub_22F0D10EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_22F0CFFAC();
  if (v14 == 1)
  {
    sub_22F01B128(v11);
  }

  else
  {
    sub_22F0D10DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();
  sub_22F0D00CC();
  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22F0D106C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22F0D0D2C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_22F0CFFAC();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();
      sub_22F0D00CC();
      sub_22F0D00CC();
      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t Session.locations(for:revGeoLookup:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_22F0D07AC();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F062E10, 0, 0);
}

uint64_t sub_22F062E10()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_22F0CFF1C();
      sub_22F0D079C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D1E4(0, v5[2] + 1, 1, v5);
      }

      v7 = v5[2];
      v6 = v5[3];
      if (v7 >= v6 >> 1)
      {
        v5 = sub_22F03D1E4((v6 > 1), v7 + 1, 1, v5);
      }

      v4 += 16;
      v8 = *(v0 + 56);
      v9 = *(v0 + 32);
      v5[2] = v7 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v8, v9);
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 64) = v5;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_22F062FDC;
  v11 = *(v0 + 96);

  return MEMORY[0x28215FBA0](v5, v11);
}

uint64_t sub_22F062FDC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_22F06331C;
  }

  else
  {

    v4 = sub_22F0630F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F0630F8()
{
  v23 = v0;
  v1 = v0[5];
  v22 = MEMORY[0x277D84F98];
  v2 = v0[11];
  v3 = v0[10];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(v0[10] + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v21 = v0[10];
  v11 = (v1 + 8);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = v0[10];
      v16 = v0[6];
      (*(v1 + 16))(v16, *(v21 + 48) + *(v1 + 72) * (__clz(__rbit64(v9)) | (v14 << 6)), v0[4]);
      sub_22F063394(&v22, v16, v15);
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      result = (*v11)(v0[6], v0[4]);
      v13 = v14;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v19 = v0[6];
    v20 = v0[4];

    sub_22F0D00CC();
    (*v11)(v19, v20);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v10)
      {
        break;
      }

      v9 = *(v5 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    sub_22F0D00CC();
    swift_bridgeObjectRelease_n();
    v17 = v22;

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_22F06331C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22F063394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v80 - v7;
  v8 = sub_22F0D075C();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v99 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v80 - v11;
  v97 = sub_22F0D05BC();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v101 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PeopleLocation(0);
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_22F0D087C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v80 - v22;
  result = MEMORY[0x28223BE20](v21);
  v26 = &v80 - v25;
  if (*(a3 + 16))
  {
    result = sub_22EFFDC74(a2);
    if (v27)
    {
      v28 = *(a3 + 56);
      v89 = v15;
      v29 = *(v15 + 16);
      v29(v26, v28 + *(v15 + 72) * result, v14);
      v85 = sub_22F0D078C();
      v88 = v30;
      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v86 = a1;
      v31 = sub_22F0D0A1C();
      v32 = __swift_project_value_buffer(v31, qword_280CBDB50);
      v29(v23, v26, v14);
      v87 = v29;
      v29(v20, v26, v14);
      v84 = v32;
      v33 = sub_22F0D09FC();
      v34 = sub_22F0D124C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v102 = v82;
        *v35 = 136315650;
        *(v35 + 4) = sub_22F00A560(0xD00000000000001CLL, 0x800000022F0DEB10, &v102);
        *(v35 + 12) = 2080;
        sub_22F065634();
        v81 = v34;
        v36 = sub_22F0D183C();
        v83 = v26;
        v37 = v14;
        v39 = v38;
        v80 = v33;
        v40 = *(v89 + 8);
        v40(v23, v37);
        v41 = sub_22F00A560(v36, v39, &v102);
        v14 = v37;
        v26 = v83;

        *(v35 + 14) = v41;
        *(v35 + 22) = 2048;
        sub_22F0D081C();
        v43 = v42;
        v40(v20, v14);
        *(v35 + 24) = v43;
        v44 = v80;
        _os_log_impl(&dword_22EFE1000, v80, v81, "%s address [%s] horz. accuracy [%f]", v35, 0x20u);
        v45 = v82;
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v45, -1, -1);
        MEMORY[0x2318FE8B0](v35, -1, -1);
      }

      else
      {

        v40 = *(v89 + 8);
        v40(v20, v14);
        v40(v23, v14);
      }

      sub_22F0D085C();
      v47 = v46;
      sub_22F0D086C();
      v49 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v47 longitude:v48];
      sub_22F01B924(0, &qword_280CBDC38, 0x277D82BB8);
      v50 = v100;
      v51 = v87;
      if (qword_27DAA0668 != -1)
      {
        swift_once();
      }

      if (sub_22F0D12FC())
      {

        v51(v50, v26, v14);
        v52 = v14;
        v53 = sub_22F0D09FC();
        v54 = sub_22F0D123C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v101 = v49;
          v56 = v55;
          v99 = swift_slowAlloc();
          v102 = v99;
          *v56 = 136315394;
          *(v56 + 4) = sub_22F00A560(0xD00000000000001CLL, 0x800000022F0DEB10, &v102);
          *(v56 + 12) = 2080;
          sub_22F065634();
          v57 = sub_22F0D183C();
          v58 = v52;
          v60 = v59;
          v61 = v58;
          v40(v50, v58);
          v62 = sub_22F00A560(v57, v60, &v102);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_22EFE1000, v53, v54, "%s Dropping location with null island %s", v56, 0x16u);
          v63 = v99;
          swift_arrayDestroy();
          MEMORY[0x2318FE8B0](v63, -1, -1);
          MEMORY[0x2318FE8B0](v56, -1, -1);

          return (v40)(v26, v61);
        }

        else
        {

          v40(v50, v52);
          return (v40)(v26, v52);
        }
      }

      else
      {
        v64 = v49;
        v65 = sub_22F061E00();
        v100 = v66;
        sub_22F0D083C();
        v67 = v90;
        sub_22F0D082C();
        v69 = v91;
        v68 = v92;
        v70 = v99;
        (*(v91 + 32))(v99, v67, v92);
        v71 = (*(v69 + 88))(v70, v68);
        if (v71 == *MEMORY[0x277D090E0])
        {
          v72 = 1;
        }

        else if (v71 == *MEMORY[0x277D09100])
        {
          v72 = 2;
        }

        else if (v71 == *MEMORY[0x277D090F0])
        {
          v72 = 3;
        }

        else if (v71 == *MEMORY[0x277D090E8])
        {
          v72 = 4;
        }

        else if (v71 == *MEMORY[0x277D090D8])
        {
          v72 = 5;
        }

        else
        {
          (*(v69 + 8))(v99, v68);
          v72 = 0;
        }

        sub_22F0D081C();
        v74 = v73;
        v75 = v93;
        v77 = v100;
        v76 = v101;
        *v93 = v65;
        *(v75 + 8) = v77;
        v78 = v96;
        (*(v95 + 32))(v75 + *(v96 + 20), v76, v97);
        *(v75 + v78[6]) = v72;
        *(v75 + v78[7]) = v74;
        *(v75 + v78[8]) = v64;
        v79 = v98;
        sub_22F065574(v75, v98);
        (*(v94 + 56))(v79, 0, 1, v78);
        sub_22F046640(v79, v85, v88);
        sub_22F0655D8(v75);
        return (v40)(v26, v14);
      }
    }
  }

  return result;
}

uint64_t Session.friendsSharingLocationsWithMe()()
{
  v1 = sub_22F0D07AC();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_22F0D077C();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22F063EF8;

  return MEMORY[0x28215FB58](sub_22F005328, 0);
}

uint64_t sub_22F063EF8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F064054, 0, 0);
}

uint64_t sub_22F064054()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v21 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = (v0[3] + 8);
    v20 = *(v3 + 72);
    v18 = (v3 + 8);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      v9 = v0[2];
      v21(v6, v4, v7);
      sub_22F0D076C();
      v10 = sub_22F0D078C();
      v12 = v11;
      (*v19)(v8, v9);
      (*v18)(v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22F03D20C(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_22F03D20C((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      v4 += v20;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v16 = v0[1];

  return v16(v5);
}

uint64_t sub_22F064240(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F06574C;

  return Session.locations(for:revGeoLookup:)(a1, a2);
}

uint64_t sub_22F0642E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F015708;

  return Session.friendsSharingLocationsWithMe()();
}

uint64_t sub_22F06439C()
{
  type metadata accessor for PeopleLocateFriendProvider();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_280CBEA58 = v0;
  return result;
}

uint64_t static PeopleLocateFriendProvider.shared.getter()
{
  if (qword_280CBEA50 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t sub_22F064438(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0644D4, v1, 0);
}

uint64_t sub_22F0644D4()
{
  v16 = v0;
  v1 = v0[3];
  if (!*(v1 + 112))
  {
    goto LABEL_8;
  }

  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D0A1C();
  __swift_project_value_buffer(v2, qword_280CBDB50);
  v3 = sub_22F0D09FC();
  v4 = sub_22F0D122C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22F00A560(0x286E6F6973736573, 0xE900000000000029, &v15);
    _os_log_impl(&dword_22EFE1000, v3, v4, "%s has existing session", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  if (*(v1 + 112))
  {
    v7 = *(v1 + 112);
  }

  else
  {
LABEL_8:
    v8 = v0[4];
    v9 = sub_22F0D10EC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v7 = sub_22F01A8DC(0, 0, v8, &unk_22F0D84F8, v10);
  }

  v0[5] = v7;
  *(v1 + 112) = v7;
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D00CC();
  v11 = swift_task_alloc();
  v0[6] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1428, &qword_22F0D8500);
  *v11 = v0;
  v11[1] = sub_22F064770;
  v13 = v0[2];

  return MEMORY[0x282200460](v13, v7, v12);
}

uint64_t sub_22F064770()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22F064880, v1, 0);
}

uint64_t sub_22F064880()
{
  sub_22F0D00CC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F0648E8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22F0D072C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_22F0D073C();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0649D4, 0, 0);
}

uint64_t sub_22F0649D4()
{
  v12 = v0;
  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBDB50);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D124C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0x286E6F6973736573, 0xE900000000000029, &v11);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s requesting new session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09060], v0[3]);
  sub_22F0D074C();
  v7 = sub_22F0D07EC();
  swift_allocObject();
  v8 = sub_22F0D07FC();
  v6[3] = v7;
  v6[4] = &protocol witness table for Session;
  *v6 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t PeopleLocateFriendProvider.deinit()
{
  sub_22F0D00CC();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeopleLocateFriendProvider.__deallocating_deinit()
{
  sub_22F0D00CC();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F064C3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CD54;

  return sub_22F064438(a1);
}

uint64_t sub_22F064CD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22F00CD54;

  return sub_22F06223C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22F064DA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F00CF60;

  return sub_22F0648E8(a1);
}

unint64_t sub_22F064E50()
{
  result = qword_27DAA19B0;
  if (!qword_27DAA19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA19B0);
  }

  return result;
}

uint64_t dispatch thunk of PeopleLocateFriendsSessionProvider.session()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F00CF60;

  return v9(a1, a2, a3);
}

uint64_t sub_22F064FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22F065028(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22F06509C(uint64_t a1)
{
  sub_22F065168();
  if (v1 <= 0x3F)
  {
    sub_22F0D05BC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SPMotionActivityState(319);
      if (v3 <= 0x3F)
      {
        sub_22F01B924(319, &qword_280CBD150, 0x277CE41F8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F065168()
{
  if (!qword_280CBD180)
  {
    v0 = sub_22F0D132C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBD180);
    }
  }
}

uint64_t dispatch thunk of PeopleFriendLocateProtocol.locations(for:revGeoLookup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F059CA8;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PeopleFriendLocateProtocol.friendsSharingLocationsWithMe()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F015A70;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeopleLocateFriendProvider.session()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22F00CF60;

  return v6(a1);
}

uint64_t sub_22F065574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0655D8(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F065634()
{
  result = qword_27DAA19B8;
  if (!qword_27DAA19B8)
  {
    sub_22F0D087C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA19B8);
  }

  return result;
}

uint64_t sub_22F06568C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F00CD54;

  return sub_22F01AC3C(a1, v4);
}

double sub_22F065798@<D0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_22F0D05BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for StatusRelevance(0);
    v17 = __swift_project_value_buffer(v16, qword_27DAA13A8);

    sub_22F014450(v17, a2);
  }

  else
  {
    v19 = *(a1(0) + 20);
    v27 = v6;
    v28 = v13;
    v20 = *(v13 + 16);
    v20(v15, &v2[v19], v12);
    v21 = objc_opt_self();
    v22 = [v21 hours];
    sub_22F014850();
    sub_22F0D017C();
    v20(a2, v15, v12);
    v23 = [v21 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v24 = *(v27 + 8);
    v24(v9, v5);
    v25 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v24(v11, v5);
    (*(v28 + 8))(v15, v12);
    *&a2[v25[6]] = 0x4024000000000000;
    *&a2[v25[7]] = 0x4000000000000000;
    v26 = &a2[v25[8]];
    result = 0.1;
    *v26 = xmmword_22F0D8710;
    *(v26 + 1) = xmmword_22F0D8720;
    v26[32] = 0;
  }

  return result;
}

double ChildStatePersonStatus.relevance.getter@<D0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for StatusRelevance(0);
    v15 = __swift_project_value_buffer(v14, qword_27DAA13A8);

    sub_22F014450(v15, a1);
  }

  else
  {
    v17 = *(type metadata accessor for ChildStatePersonStatus(0) + 20);
    v25 = v4;
    v26 = v11;
    v18 = *(v11 + 16);
    v18(v13, &v1[v17], v10);
    v19 = objc_opt_self();
    v20 = [v19 hours];
    sub_22F014850();
    sub_22F0D017C();
    v18(a1, v13, v10);
    v21 = [v19 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v22 = *(v25 + 8);
    v22(v7, v3);
    v23 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v22(v9, v3);
    (*(v26 + 8))(v13, v10);
    *&a1[v23[6]] = 0x4016000000000000;
    *&a1[v23[7]] = 0x4012000000000000;
    v24 = &a1[v23[8]];
    result = 0.1;
    *v24 = xmmword_22F0D8710;
    *(v24 + 1) = xmmword_22F0D8720;
    v24[32] = 0;
  }

  return result;
}

uint64_t sub_22F065E64@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v14 = *(type metadata accessor for AvailabilityPersonStatus(0) + 20);
    v25 = v4;
    v26 = v11;
    v15 = *(v11 + 16);
    v15(v13, &v1[v14], v10);
    v16 = objc_opt_self();
    v17 = [v16 hours];
    sub_22F014850();
    sub_22F0D017C();
    v15(a1, v13, v10);
    v18 = [v16 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v19 = *(v25 + 8);
    v19(v7, v3);
    v20 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v19(v9, v3);
    result = (*(v26 + 8))(v13, v10);
    *&a1[v20[6]] = 0x4012000000000000;
    *&a1[v20[7]] = 0x4008000000000000;
    v22 = &a1[v20[8]];
    *v22 = 0u;
    *(v22 + 1) = 0u;
    v22[32] = 1;
  }

  else
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for StatusRelevance(0);
    v24 = __swift_project_value_buffer(v23, qword_27DAA13A8);

    return sub_22F014450(v24, a1);
  }

  return result;
}

double LocationPersonStatus.relevance.getter@<D0>(char *a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationPersonStatus(0);
  v14 = *(v10 + 16);
  v15 = v1 + *(v13 + 20);
  v16 = v9;
  v14(v12, v15, v9);
  if (qword_27DAA0638 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_27DAA21C8);
  (*(v3 + 16))(v8, v17, v2);
  v18 = v8;
  v19 = v26;
  v14(v26, v12, v16);
  v20 = [objc_opt_self() seconds];
  v25 = v16;
  sub_22F0D019C();

  sub_22F0D018C();
  v21 = *(v3 + 8);
  v21(v6, v2);
  v22 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v21(v18, v2);
  (*(v10 + 8))(v12, v25);
  *&v19[v22[6]] = 0x4018000000000000;
  *&v19[v22[7]] = 0;
  v23 = &v19[v22[8]];
  result = 0.65;
  *v23 = xmmword_22F0D6220;
  *(v23 + 1) = xmmword_22F0D8730;
  v23[32] = 0;
  return result;
}

double LocationPersonStatus.relevanceForLockScreenCircularAccessory.getter@<D0>(char *a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v25 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_22F0D05BC();
  v23 = *(v8 - 8);
  v9 = v23;
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationPersonStatus(0);
  v13 = *(v9 + 16);
  v13(v11, v1 + *(v12 + 20), v8);
  v14 = objc_opt_self();
  v15 = [v14 minutes];
  sub_22F014850();
  sub_22F0D017C();
  v16 = v24;
  v13(v24, v11, v8);
  v17 = [v14 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v18 = *(v25 + 8);
  v18(v5, v2);
  v19 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v18(v7, v2);
  (*(v23 + 8))(v11, v8);
  *&v16[v19[6]] = 0x4014000000000000;
  *&v16[v19[7]] = 0x4014000000000000;
  v20 = &v16[v19[8]];
  result = 0.0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  return result;
}

uint64_t MotionPersonStatus.relevance.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v35 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - v7;
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MotionPersonStatus(0);
  v13 = (*(**(v1 + *(v12 + 24)) + 136))();
  if (*(v13 + 16) && (v14 = sub_22EFFD904(0), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + v14);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v2 + *(v12 + 20));
  if (v17 > 2)
  {
    if (v17 != 3 && v17 != 4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (*(v2 + *(v12 + 20)))
  {
    v18 = v17 == 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
LABEL_13:
    if (v16)
    {
      v21 = 0.0;
      v19 = 4.0;
      v20 = &selRef_hours;
      goto LABEL_16;
    }

LABEL_15:
    v20 = &selRef_minutes;
    v19 = 0.0;
    v21 = 0.0;
    goto LABEL_16;
  }

  v19 = 7.0;
  v20 = &selRef_hours;
  v21 = 7.0;
LABEL_16:
  v32 = v9;
  v22 = *(v9 + 16);
  v22(v11, v2, v8);
  v23 = objc_opt_self();
  v24 = [v23 *v20];
  sub_22F014850();
  v25 = v34;
  sub_22F0D017C();
  v26 = v33;
  v22(v33, v11, v8);
  v27 = [v23 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v28 = *(v35 + 8);
  v28(v6, v3);
  v29 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v28(v25, v3);
  result = (*(v32 + 8))(v11, v8);
  *&v26[v29[6]] = v19;
  *&v26[v29[7]] = v21;
  v31 = &v26[v29[8]];
  *v31 = 1;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v31[32] = 1;
  return result;
}

uint64_t MotionPersonStatus.relevanceForLockScreenCircularAccessory.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v33 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - v7;
  v8 = sub_22F0D05BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MotionPersonStatus(0);
  v13 = (*(**(v1 + *(v12 + 24)) + 136))();
  if (*(v13 + 16) && (v14 = sub_22EFFD904(0), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + v14);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v2 + *(v12 + 20));
  if (v17 > 2)
  {
    if (v17 != 3 && v17 != 4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v18 = 7.0;
  if (!*(v2 + *(v12 + 20)))
  {
LABEL_13:
    v19 = &selRef_minutes;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
LABEL_11:
    if (v16)
    {
      v18 = 6.0;
      goto LABEL_13;
    }

LABEL_14:
    v19 = &selRef_minutes;
    v18 = 0.0;
    goto LABEL_15;
  }

  v19 = &selRef_hours;
LABEL_15:
  v30 = v9;
  v20 = *(v9 + 16);
  v20(v11, v2, v8);
  v21 = objc_opt_self();
  v22 = [v21 *v19];
  sub_22F014850();
  v23 = v32;
  sub_22F0D017C();
  v24 = v31;
  v20(v31, v11, v8);
  v25 = [v21 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v26 = *(v33 + 8);
  v26(v6, v3);
  v27 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v26(v23, v3);
  result = (*(v30 + 8))(v11, v8);
  *&v24[v27[6]] = v18;
  *&v24[v27[7]] = v18;
  v29 = &v24[v27[8]];
  *v29 = 1;
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v29[32] = 1;
  return result;
}

uint64_t MessagePersonStatus.relevance.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) < 1)
  {
    if (qword_27DAA04C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for StatusRelevance(0);
    v27 = __swift_project_value_buffer(v26, qword_27DAA13A8);

    return sub_22F014450(v27, a1);
  }

  else
  {
    v14 = *(type metadata accessor for MessagePersonStatus(0) + 24);
    v30 = v3;
    v31 = v11;
    v15 = *(v11 + 16);
    v15(v13, v1 + v14, v10);
    v16 = objc_opt_self();
    v17 = [v16 hours];
    v29 = v10;
    v18 = v4;
    v19 = a1;
    sub_22F014850();
    sub_22F0D017C();
    v15(a1, v13, v10);
    v20 = [v16 seconds];
    v21 = v30;
    sub_22F0D019C();

    sub_22F0D018C();
    v22 = *(v18 + 8);
    v22(v7, v21);
    v23 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v22(v9, v21);
    result = (*(v31 + 8))(v13, v29);
    *(v19 + v23[6]) = 0x4020000000000000;
    *(v19 + v23[7]) = 0x4016000000000000;
    v25 = v19 + v23[8];
    *v25 = xmmword_22F0D8740;
    *(v25 + 16) = xmmword_22F0D8750;
    *(v25 + 32) = 0;
  }

  return result;
}

double MissedCallPersonStatus.relevance.getter@<D0>(char *a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v25 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_22F0D05BC();
  v23 = *(v8 - 8);
  v9 = v23;
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MissedCallPersonStatus(0);
  v13 = *(v9 + 16);
  v13(v11, v1 + *(v12 + 24), v8);
  v14 = objc_opt_self();
  v15 = [v14 hours];
  sub_22F014850();
  sub_22F0D017C();
  v16 = v24;
  v13(v24, v11, v8);
  v17 = [v14 seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v18 = *(v25 + 8);
  v18(v5, v2);
  v19 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v18(v7, v2);
  (*(v23 + 8))(v11, v8);
  *&v16[v19[6]] = 0x4020000000000000;
  *&v16[v19[7]] = 0x4016000000000000;
  v20 = &v16[v19[8]];
  result = 0.13;
  *v20 = xmmword_22F0D8740;
  *(v20 + 1) = xmmword_22F0D8760;
  v20[32] = 0;
  return result;
}

uint64_t CalendarPersonStatus.relevance.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v84 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v79 = (&v74 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v74 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v82 = &v74 - v13;
  v14 = sub_22F0D05BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v74 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  v27 = type metadata accessor for CalendarPersonStatus(0);
  v28 = *(v27 + 20);
  v29 = *(v27 + 24);
  v81 = v27;
  v30 = *(v1 + v29);
  v83 = v15;
  v31 = *(v15 + 16);
  v32 = (v1 + v28);
  if (!v30)
  {
    v80 = v14;
    v77 = v31;
    v31(v24, v32, v14);
    v51 = objc_opt_self();
    v75 = v51;
    v52 = [v51 hours];
    sub_22F014850();
    v53 = v82;
    sub_22F0D017C();
    v54 = [v51 seconds];
    v76 = v1;
    sub_22F0D019C();

    sub_22F0D018C();
    v55 = *(v84 + 8);
    v55(v12, v2);
    v79 = v55;
    sub_22F0D055C();
    v55(v53, v2);
    v84 = *(v83 + 8);
    v56 = v24;
    v57 = v80;
    (v84)(v56, v80);
    v58 = v75;
    v59 = [v75 hours];
    v60 = v78;
    sub_22F0D017C();
    v61 = 0.4;
    if (!*(v76 + *(v81 + 28)))
    {
      v61 = 1.0;
    }

    v44 = v61 * 3.5;
    v45 = v61 * 8.0;
    v62 = v85;
    v77(v85, v26, v57);
    v63 = [v58 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v64 = v79;
    v79(v53, v2);
    v49 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v64(v60, v2);
    v50 = v26;
    v46 = v62;
    goto LABEL_9;
  }

  if (v30 == 1)
  {
    v80 = v14;
    v77 = v31;
    v31(v24, v32, v14);
    v33 = objc_opt_self();
    v75 = v33;
    v34 = [v33 minutes];
    sub_22F014850();
    v35 = v82;
    sub_22F0D017C();
    v36 = [v33 seconds];
    v76 = v1;
    sub_22F0D019C();

    sub_22F0D018C();
    v37 = *(v84 + 8);
    v37(v12, v2);
    v78 = v37;
    sub_22F0D055C();
    v37(v35, v2);
    v84 = *(v83 + 8);
    v38 = v24;
    v39 = v80;
    (v84)(v38, v80);
    v40 = v75;
    v41 = [v75 minutes];
    v42 = v79;
    sub_22F0D017C();
    v43 = 0.4;
    if (!*(v76 + *(v81 + 28)))
    {
      v43 = 1.0;
    }

    v44 = v43 * 3.5;
    v45 = v43 * 8.0;
    v46 = v85;
    v77(v85, v21, v39);
    v47 = [v40 seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    v48 = v78;
    (v78)(v35, v2);
    v49 = type metadata accessor for StatusRelevance(0);
    sub_22F0D054C();
    v48(v42, v2);
    v50 = v21;
LABEL_9:
    result = (v84)(v50, v80);
    goto LABEL_13;
  }

  v66 = *(v15 + 16);
  v31(v18, v32, v14);
  v67 = objc_opt_self();
  v68 = [v67 minutes];
  sub_22F014850();
  sub_22F0D017C();
  v69 = 0.4;
  if (!*(v1 + *(v81 + 28)))
  {
    v69 = 1.0;
  }

  v44 = v69 * 8.0;
  v45 = v69 * 3.5;
  v46 = v85;
  v66(v85, v18, v14);
  v70 = [v67 seconds];
  v71 = v82;
  sub_22F0D019C();

  sub_22F0D018C();
  v72 = *(v84 + 8);
  v72(v71, v2);
  v49 = type metadata accessor for StatusRelevance(0);
  sub_22F0D054C();
  v72(v5, v2);
  result = (*(v83 + 8))(v18, v14);
LABEL_13:
  *(v46 + v49[6]) = v44;
  *(v46 + v49[7]) = v45;
  v73 = v46 + v49[8];
  *v73 = 1;
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  *(v73 + 32) = 1;
  return result;
}

int *sub_22F067E00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22F011C4C(a2, a3);
  if (BMScreenTimeRequestEvent.requestExpired.getter())
  {
    result = type metadata accessor for MessageDetails(0);
    v6 = result[11];
    v7 = 4;
LABEL_3:
    *(a3 + v6) = v7;
    return result;
  }

  v8 = [a1 status];
  result = type metadata accessor for MessageDetails(0);
  v6 = result[11];
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v7 = 3;
    }

    else
    {
      if (v8 != 1)
      {
        *(a3 + v6) = 0;
        return result;
      }

      v7 = 1;
    }

    goto LABEL_3;
  }

  v9 = result;
  *(a3 + v6) = 2;
  result = [a1 approvalTime];
  if (result == 3 || result == 2 || result == 1)
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_22F0D031C();
    v14 = v13;

    v15 = (a3 + v9[17]);

    *v15 = v12;
    v15[1] = v14;
  }

  return result;
}

uint64_t sub_22F06801C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 188) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_22F0D05BC();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = type metadata accessor for MessageDetails(0);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F068188, 0, 0);
}

uint64_t sub_22F068188()
{
  v1 = [*(v0 + 72) requesterDSID];
  v2 = sub_22F0D0CAC();
  v4 = v3;

  v5 = sub_22F0B6FEC(v2, v4);
  LOBYTE(v2) = v6;

  if (v2)
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD00000000000001CLL, 0x800000022F0DEB80, 500);
    swift_willThrow();
LABEL_3:

    v7 = *(v0 + 8);
LABEL_23:

    return v7();
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 72);
  *(v9 + 16) = 3;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0xE000000000000000;
  v83 = v8[8];
  sub_22F0D04EC();
  v11 = v9 + v8[9];
  *(v9 + v8[11]) = 0;
  v12 = v8[12];
  v13 = type metadata accessor for ResolvedFamily(0);
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  v14 = (v9 + v8[13]);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + v8[14]) = xmmword_22F0D6620;
  v15 = (v9 + v8[15]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v9 + v8[16]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v9 + v8[17]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = v8[19];
  *(v0 + 184) = v18;
  v19 = (v9 + v18);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v9 + v8[20]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v9 + v8[21]);
  *v21 = 0;
  v21[1] = 0;
  *(v9 + 16) = 2;
  *v11 = v5;
  *(v11 + 8) = 0;
  v22 = [v10 responderDSID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_22F0D0CAC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v29 = *(v0 + 72);
  v30 = v28 + *(v27 + 40);
  v82 = (v28 + *(v27 + 72));
  v31 = sub_22F0B6FEC(v24, v26);
  v33 = v32;

  *v30 = v31;
  v30[8] = v33 & 1;
  v34 = [v29 requestID];
  v35 = sub_22F0D0CAC();
  v37 = v36;

  *v28 = v35;
  v28[1] = v37;
  v84 = v28;
  [v29 eventTime];
  sub_22F0D04BC();
  if (qword_280CBE748 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  v39 = *(v0 + 120);
  v41 = *(v0 + 96);
  v42 = *(v0 + 104);
  v43 = *(v0 + 88);
  v80 = *(v0 + 136);
  v81 = *(v0 + 72);
  __swift_project_value_buffer(v43, qword_280CBE750);
  v44 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v41 + 8))(v42, v43);
  sub_22F0D054C();
  (*(v39 + 8))(v38, v40);
  (*(v39 + 40))(v9 + v83, v80, v40);
  if ([v81 kind] == 1)
  {
    v45 = *(v0 + 152);
    v46 = *(v0 + 72);
    *v82 = 0xD000000000000016;
    v82[1] = 0x800000022F0DD8D0;
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = objc_opt_self();
    v49 = [v48 bundleForClass_];
    v50 = sub_22F0D031C();
    v52 = v51;

    v84[3] = v50;
    *(v45 + 32) = v52;
    v53 = [v46 websitePath];
    if (v53)
    {
      v54 = v53;
      v55 = sub_22F0D0CAC();
    }

    else
    {
      v54 = [v48 bundleForClass_];
      v55 = sub_22F0D031C();
    }

    v62 = v55;
    v63 = v56;

    v64 = (*(v0 + 152) + *(v0 + 184));
    *v64 = v62;
    v64[1] = v63;
LABEL_22:
    v78 = *(v0 + 152);
    sub_22F067E00(*(v0 + 72), v78, *(v0 + 64));
    sub_22F012058(v78);

    v7 = *(v0 + 8);
    goto LABEL_23;
  }

  v57 = [*(v0 + 72) bundleID];
  if (v57)
  {
    v58 = v57;
    v59 = sub_22F0D0CAC();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v65 = *(v0 + 152);
  v66 = *(v0 + 188);
  *v82 = v59;
  v82[1] = v61;
  type metadata accessor for DaemonConnection();
  v67 = swift_getObjCClassFromMetadata();
  *(v0 + 160) = v67;
  v68 = objc_opt_self();
  *(v0 + 168) = v68;
  v69 = [v68 bundleForClass_];
  v70 = sub_22F0D031C();
  v72 = v71;

  v84[3] = v70;
  *(v65 + 32) = v72;
  if (v66 != 1)
  {
    goto LABEL_22;
  }

  if (!v61)
  {
    v79 = *(v0 + 152);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000023, 0x800000022F0DEBA0, 500);
    swift_willThrow();
    sub_22F012058(v79);
    goto LABEL_3;
  }

  v73 = *(v0 + 80);
  v74 = v73[3];
  v75 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v85 = (*(v75 + 24) + **(v75 + 24));
  v76 = swift_task_alloc();
  *(v0 + 176) = v76;
  *v76 = v0;
  v76[1] = sub_22F068988;

  return v85(v0 + 16, v59, v61, v74, v75);
}

uint64_t sub_22F068988()
{

  return MEMORY[0x2822009F8](sub_22F068A84, 0, 0);
}

uint64_t sub_22F068A84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  sub_22F00AB48(v3, v4);
  if (!v1)
  {
    v5 = [*(v0 + 168) bundleForClass_];
    v2 = sub_22F0D031C();
    v1 = v6;
  }

  v7 = (*(v0 + 152) + *(v0 + 184));
  *v7 = v2;
  v7[1] = v1;
  v8 = *(v0 + 152);
  sub_22F067E00(*(v0 + 72), v8, *(v0 + 64));
  sub_22F012058(v8);

  v9 = *(v0 + 8);

  return v9();
}

void Logger.ifError(_:message:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22F0D2BF0;
    swift_getErrorValue();
    v5 = a1;
    v6 = sub_22F0D192C();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_22F03DB30();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_22F0D0CCC();
    v11 = v10;
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D123C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_22F00A560(v9, v11, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318FE8B0](v15, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22F068FB8()
{
  v0 = sub_22F0D0A1C();
  __swift_allocate_value_buffer(v0, qword_27DAA1A10);
  __swift_project_value_buffer(v0, qword_27DAA1A10);
  return sub_22F0D0A0C();
}

uint64_t sub_22F069204(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F0D0A1C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_22F0D0A0C();
}

uint64_t sub_22F0692A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22F0D0A1C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22F069338()
{
  sub_22F069540();
  result = sub_22F0D131C();
  qword_27DAA1A70 = result;
  return result;
}

id static PeopleLogger.signpost.getter()
{
  if (qword_27DAA0588 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAA1A70;

  return v1;
}

void Logger.ifErrorElse(_:message:debug:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {

    Logger.ifError(_:message:)(a1, a2, a3);
  }

  else
  {
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v7 = sub_22F0D122C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22F00A560(a4, a5, &v11);
      _os_log_impl(&dword_22EFE1000, oslog, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2318FE8B0](v9, -1, -1);
      MEMORY[0x2318FE8B0](v8, -1, -1);
    }
  }
}

unint64_t sub_22F069540()
{
  result = qword_27DAA1A78;
  if (!qword_27DAA1A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA1A78);
  }

  return result;
}

id SpotlightFeedbackListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightFeedbackListener.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightFeedbackListener();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightFeedbackListener.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SpotlightFeedbackListener();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F0696A8(int a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        return 0x6C6C614320595454;
      }

      else
      {
        return 0x616C655220595454;
      }
    }

    switch(a1)
    {
      case 7:
        return 7954768;
      case 8:
        return 0x6F69746365726944;
      case 9:
        return 0x53206E6565726353;
    }

    return 0x656E696665646E55;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 1818845517;
    }

    return 0x656E696665646E55;
  }

  if (a1 == 2)
  {
    return 0x6567617373654DLL;
  }

  if (a1 == 3)
  {
    v1 = 1701079382;
  }

  else
  {
    v1 = 1768191297;
  }

  return v1 | 0x6143206F00000000;
}

void _s6People25SpotlightFeedbackListenerC17didPerformCommandyySo019SFCommandEngagementC0CFZ_0(void *a1)
{
  v2 = [a1 command];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 applicationBundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = sub_22F0D0CAC();
      v8 = v7;

LABEL_11:
      sub_22F0CFF1C();
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v15 = sub_22F0D0A1C();
      __swift_project_value_buffer(v15, qword_280CBEC40);
      sub_22F0CFF1C();
      v16 = sub_22F0D09FC();
      v17 = sub_22F0D121C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        v20 = sub_22F00A560(v6, v8, &v29);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_22EFE1000, v16, v17, "Engagement feedback command %s performed. Sending event to CA.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318FE8B0](v19, -1, -1);
        MEMORY[0x2318FE8B0](v18, -1, -1);
      }

      else
      {
      }

      if (qword_280CBE8A8 != -1)
      {
        swift_once();
      }

      LOBYTE(v29) = 13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D2BF0;
      *(inited + 32) = 0x6C436E6F69746361;
      v22 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEB00000000737361;
      *(inited + 48) = v6;
      *(inited + 56) = v8;
      v23 = sub_22F07D320(inited);
      swift_setDeallocating();
      sub_22F069CDC(v22);
      sub_22F08FCF8(&v29, v23);

      return;
    }
  }

  v28 = [a1 command];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    v12 = [a1 command];
    ObjectType = swift_getObjectType();

    v29 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA1A80, &unk_22F0D8870);
    v6 = sub_22F0D0CFC();
    v8 = v14;
    goto LABEL_11;
  }

  v10 = v9;
  if ([v9 didDisplayHandleOptions] & 1) == 0 && !objc_msgSend(v10, sel_didSelectFromOptionsMenu) || objc_msgSend(v10, sel_didDisplayHandleOptions) && (objc_msgSend(v10, sel_didSelectFromOptionsMenu))
  {
    v6 = sub_22F0696A8([v10 contactActionType]);
    v8 = v11;

    goto LABEL_11;
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v24 = sub_22F0D0A1C();
  __swift_project_value_buffer(v24, qword_280CBEC40);
  v25 = sub_22F0D09FC();
  v26 = sub_22F0D122C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22EFE1000, v25, v26, "Menu disambiguation, not logging these actions", v27, 2u);
    MEMORY[0x2318FE8B0](v27, -1, -1);
  }
}

uint64_t sub_22F069CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D0, &qword_22F0D8880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F069D44(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for ChildStatePersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B10, &unk_22F0D89D0);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0A00, type metadata accessor for ChildStatePersonStatus, &protocol conformance descriptor for ChildStatePersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F069F48(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for CalendarPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B20, &qword_22F0D89E8);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0AE0, type metadata accessor for CalendarPersonStatus, &protocol conformance descriptor for CalendarPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06A14C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for MissedCallPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B30, &unk_22F0D89F8);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0AB0, type metadata accessor for MissedCallPersonStatus, &protocol conformance descriptor for MissedCallPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06A350(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for MessagePersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B38, &qword_22F0D8A08);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0A88, type metadata accessor for MessagePersonStatus, &protocol conformance descriptor for MessagePersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06A554(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for MotionPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B40, &unk_22F0D8A18);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0A68, type metadata accessor for MotionPersonStatus, &protocol conformance descriptor for MotionPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06A758(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for LocationPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B48, &qword_22F0D8A28);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0A40, type metadata accessor for LocationPersonStatus, &protocol conformance descriptor for LocationPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06A95C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for AvailabilityPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B50, &unk_22F0D8A38);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA0A20, type metadata accessor for AvailabilityPersonStatus, &protocol conformance descriptor for AvailabilityPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06AB60(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B58, &qword_22F0D8A48);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA09E0, type metadata accessor for ScreenTimeRequestPersonStatus, &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06AD64(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B18, &qword_22F0D89E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22EFFFA98();
  sub_22F0D19FC();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B60, &qword_22F0D8A58);
  sub_22F0D0D1C();
  v10[15] = 0;
  sub_22F0D17CC();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    v10[14] = 1;
    sub_22F06E94C(&qword_27DAA09C0, type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    sub_22F0D180C();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_22F06AF68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for ChildStatePersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B10, &unk_22F0D89D0);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA09E8, type metadata accessor for ChildStatePersonStatus, &protocol conformance descriptor for ChildStatePersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09F8, type metadata accessor for ChildStatePersonStatus, &protocol conformance descriptor for ChildStatePersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06B258@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for CalendarPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B20, &qword_22F0D89E8);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA1B28, type metadata accessor for CalendarPersonStatus, &protocol conformance descriptor for CalendarPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0AD8, type metadata accessor for CalendarPersonStatus, &protocol conformance descriptor for CalendarPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06B548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for MissedCallPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B30, &unk_22F0D89F8);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA0A98, type metadata accessor for MissedCallPersonStatus, &protocol conformance descriptor for MissedCallPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0AA8, type metadata accessor for MissedCallPersonStatus, &protocol conformance descriptor for MissedCallPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06B838@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for MessagePersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B38, &qword_22F0D8A08);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA0A70, type metadata accessor for MessagePersonStatus, &protocol conformance descriptor for MessagePersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A80, type metadata accessor for MessagePersonStatus, &protocol conformance descriptor for MessagePersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06BB28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for MotionPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B40, &unk_22F0D8A18);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA0A50, type metadata accessor for MotionPersonStatus, &protocol conformance descriptor for MotionPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A60, type metadata accessor for MotionPersonStatus, &protocol conformance descriptor for MotionPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06BE18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for LocationPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B48, &qword_22F0D8A28);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA0A28, type metadata accessor for LocationPersonStatus, &protocol conformance descriptor for LocationPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A38, type metadata accessor for LocationPersonStatus, &protocol conformance descriptor for LocationPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06C108@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for AvailabilityPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B50, &unk_22F0D8A38);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA0A08, type metadata accessor for AvailabilityPersonStatus, &protocol conformance descriptor for AvailabilityPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA0A18, type metadata accessor for AvailabilityPersonStatus, &protocol conformance descriptor for AvailabilityPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06C3F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B58, &qword_22F0D8A48);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA09C8, type metadata accessor for ScreenTimeRequestPersonStatus, &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09D8, type metadata accessor for ScreenTimeRequestPersonStatus, &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06C6E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B08, &qword_22F0D89C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EFFFA98();
  result = sub_22F0D19EC();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_22F0D177C();
    v13 = v12;
    v18[1] = v9;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B60, &qword_22F0D8A58);
    if (v14 == sub_22F0D0D1C() && v13 == v15)
    {
    }

    else
    {
      v17 = sub_22F0D188C();

      if ((v17 & 1) == 0)
      {
        sub_22F0035F4();
        swift_allocError();
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }
    }

    v19 = 1;
    a2[3] = v9;
    a2[4] = sub_22F06E94C(&qword_27DAA09A8, type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    __swift_allocate_boxed_opaque_existential_1Tm(a2);
    sub_22F06E94C(&qword_27DAA09B8, type metadata accessor for AskToBuyRequestPersonStatus, &protocol conformance descriptor for AskToBuyRequestPersonStatus);
    sub_22F0D17BC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_22F06C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = swift_allocObject();
  v9[2] = *(v8 + 80);
  v9[3] = *(v8 + 88);
  v9[4] = a4;
  v9[5] = a2;
  v9[6] = a3;
  swift_beginAccess();
  swift_getFunctionTypeMetadata2();
  sub_22F0D103C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D100C();
  swift_endAccess();
  return sub_22F0D00CC();
}

uint64_t sub_22F06CB00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E60, &unk_22F0D5030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ChildStatePersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for ChildStatePersonStatus);
    sub_22F069D44(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for ChildStatePersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E60, &unk_22F0D5030);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06CD0C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E70, &qword_22F0D89F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for CalendarPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for CalendarPersonStatus);
    sub_22F069F48(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for CalendarPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E70, &qword_22F0D89F0);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06CF18(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E78, &unk_22F0D5040);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for MissedCallPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for MissedCallPersonStatus);
    sub_22F06A14C(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for MissedCallPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E78, &unk_22F0D5040);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D124(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E80, &qword_22F0D8A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for MessagePersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for MessagePersonStatus);
    sub_22F06A350(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for MessagePersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E80, &qword_22F0D8A10);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D330(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E88, &unk_22F0D5050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for MotionPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for MotionPersonStatus);
    sub_22F06A554(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for MotionPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E88, &unk_22F0D5050);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D53C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E90, &qword_22F0D8A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for LocationPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for LocationPersonStatus);
    sub_22F06A758(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for LocationPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E90, &qword_22F0D8A30);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D748(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E98, &unk_22F0D5060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for AvailabilityPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for AvailabilityPersonStatus);
    sub_22F06A95C(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for AvailabilityPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0E98, &unk_22F0D5060);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06D954(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0EA0, &qword_22F0D8A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ScreenTimeRequestPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for ScreenTimeRequestPersonStatus);
    sub_22F06AB60(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for ScreenTimeRequestPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0EA0, &qword_22F0D8A50);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DB60(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0EA8, &qword_22F0D5070);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for AskToBuyRequestPersonStatus(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22F003598(a1, v14);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_22F06E884(v6, v10, type metadata accessor for AskToBuyRequestPersonStatus);
    sub_22F06AD64(v10, a2);
    return sub_22F06E8EC(v10, type metadata accessor for AskToBuyRequestPersonStatus);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_22F003A4C(v6, &qword_27DAA0EA8, &qword_22F0D5070);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DD6C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  v22 = a3;
  v10 = sub_22F0D132C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F003598(a1, v23);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v14, 0, 1, a7);
    (*(v15 + 32))(v17, v14, a7);
    v22(v17, a2);
    return (*(v15 + 8))(v17, a7);
  }

  else
  {
    v19(v14, 1, 1, a7);
    (*(v11 + 8))(v14, v10);
    sub_22F0035F4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22F06DFE0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = *(v5 + 80);
  v6[3] = *(v5 + 88);
  v6[4] = a1;
  v6[5] = a2;
  swift_beginAccess();
  swift_getFunctionTypeMetadata2();
  sub_22F0D103C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0D100C();
  swift_endAccess();
  return sub_22F0D00CC();
}

void sub_22F06E228(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v31 = a5;
  v9 = *v5;
  swift_beginAccess();
  v10 = v5[2];
  v23 = *(v9 + 80);
  swift_getFunctionTypeMetadata2();
  sub_22F0CFF1C();
  if (sub_22F0D0FFC())
  {
    v11 = 0;
    v12 = v10 + 40;
    while (1)
    {
      v13 = sub_22F0D0FDC();
      sub_22F0D0F7C();
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_12;
      }

      v15 = *(v12 - 8);
      v30 = a4;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
      (*(*(a4 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a4);
      sub_22F0CFFAC();
      v15(v29, a2);
      if (!v7)
      {

        sub_22F0D00CC();
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v29[0] = v7;
      v17 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
      if (!swift_dynamicCast())
      {

        a3(v7);
        sub_22F0D00CC();
        return;
      }

      sub_22F0D00CC();

      v7 = 0;
      ++v11;
      v12 += 16;
      if (v14 == sub_22F0D0FFC())
      {
        goto LABEL_8;
      }
    }

    sub_22F0D156C();
    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:

    v30 = a4;
    v18 = __swift_allocate_boxed_opaque_existential_1Tm(v29);
    (*(*(a4 - 8) + 16))(v18, a1, a4);
    v28 = v23;
    v19 = __swift_allocate_boxed_opaque_existential_1Tm(&v27);
    (*(*(v23 - 8) + 16))(v19, a2, v23);
    sub_22EFFF9D0();
    v20 = swift_allocError();
    v22 = v21;
    sub_22EFFFA24(v29, v21);
    sub_22EFFFA24(&v27, v22 + 2);
    a3(v20);
  }
}

_OWORD *ChainOfResponsibilityError.InvalidArguments.init(input:argument:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_22EFFFA24(a1, a3);

  return sub_22EFFFA24(a2, a3 + 2);
}

uint64_t ChainOfResponsibility.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F06E78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22F06E7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2318FE8B0);
  }

  return result;
}

uint64_t sub_22F06E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F06E8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F06E94C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_22F06E99C(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_22EFFFB40(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        sub_22F0D00CC();
        goto LABEL_15;
      }

      if (v10)
      {
        sub_22EFE6B9C(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EFFC6EC(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22EFFC6EC((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_22EFE6B9C(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t StatusPrioritizer.TimeLineEntrySingleItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22F0D05BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double StatusPrioritizer.TimeLineEntrySingleItem.statuses.getter()
{
  type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);

  sub_22F0CFF1C();
  return result;
}

uint64_t type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(uint64_t a1)
{
  result = qword_27DAA1BA8;
  if (!qword_27DAA1BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StatusPrioritizer.TimeLineEntryMultipleItems.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22F0D05BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *sub_22F06ECD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_22F0D05BC();
  (*(*(v12 - 8) + 32))(a4, a1, v12);
  result = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems(0, a3, v13, v14);
  *(a4 + result[7]) = a2;
  *(a4 + result[8]) = a5;
  *(a4 + result[9]) = a6;
  return result;
}

uint64_t (*sub_22F06EDC8(uint64_t a1, uint64_t a2, char a3))(__int128 *)
{
  v9[16] = a3;
  v10 = a2;
  sub_22F0CFF1C();
  v7[16] = a3;
  v8 = a2;
  v11 = sub_22F06E99C(sub_22F06EFB0, v9, a1);
  sub_22F0CFF1C();
  sub_22F073688(sub_22F06F494, v7);

  return v11;
}

BOOL sub_22F06EE88(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for StatusRelevance(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (a2)
  {
    (*(v10 + 16))(v9, v10);
  }

  else
  {
    (*(v10 + 8))(v9, v10);
  }

  StatusRelevance.score(at:)(a3);
  v12 = v11;
  sub_22F073CD0(v8, type metadata accessor for StatusRelevance);
  return v12 > 0.0;
}

uint64_t sub_22F06EFD4(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_22F0D05BC();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for StatusRelevance(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  if ((a3 & 1) == 0)
  {
    (*(v19 + 8))(v18, v19);
    StatusRelevance.score(at:)(a4);
    v21 = v34;
    sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
    v35 = a2[3];
    v36 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v35);
    (*(v36 + 8))(v35, v36);
    StatusRelevance.score(at:)(a4);
    v25 = v37;
    sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
    if (v21 == v25)
    {
      v38 = a1[3];
      v39 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v38);
      (*(v39 + 8))(v38, v39);
      v28 = v52;
      v48 = *(v52 + 16);
      v49 = v12;
      v40 = v12;
      v30 = v53;
      v48(v40, v17, v53);
      sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
      v41 = a2[3];
      v42 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v41);
      v33 = v50;
      (*(v42 + 8))(v41, v42);
      goto LABEL_6;
    }

LABEL_7:
    v45 = v25 < v21;
    return v45 & 1;
  }

  (*(v19 + 16))(v18, v19);
  StatusRelevance.score(at:)(a4);
  v21 = v20;
  sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
  v23 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  (*(v22 + 16))(v23, v22);
  StatusRelevance.score(at:)(a4);
  v25 = v24;
  sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
  if (v21 != v25)
  {
    goto LABEL_7;
  }

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v27 + 16))(v26, v27);
  v28 = v52;
  v48 = *(v52 + 16);
  v49 = v12;
  v29 = v12;
  v30 = v53;
  v48(v29, v17, v53);
  sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v33 = v50;
  (*(v32 + 16))(v31, v32);
LABEL_6:
  v43 = v51;
  v48(v51, v33, v30);
  sub_22F073CD0(v33, type metadata accessor for StatusRelevance);
  v44 = v49;
  v45 = sub_22F0D052C();
  v46 = *(v28 + 8);
  v46(v43, v30);
  v46(v44, v30);
  return v45 & 1;
}

uint64_t sub_22F06F4B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  v5 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  return sub_22F071B4C(a1, a2, v5, x8_0, v15);
}

uint64_t sub_22F06F608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *x8_0@<X8>)
{
  v23 = a7;
  v22 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  return sub_22F06F774(a1, a2, a4, a5, v22, v23, x8_0, v19);
}

uint64_t sub_22F06F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v128 = a5;
  v127 = a2;
  v125 = a7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = v112 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B68, &qword_22F0D8A70);
  MEMORY[0x28223BE20](v116);
  v117 = v112 - v14;
  v136 = type metadata accessor for StatusRelevance(0);
  MEMORY[0x28223BE20](v136);
  v16 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v124 = v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = v112 - v20;
  v134 = sub_22F0D05BC();
  v21 = *(v134 - 8);
  v22 = MEMORY[0x28223BE20](v134);
  v121 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v122 = v112 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v118 = v112 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v112 - v29;
  MEMORY[0x28223BE20](v28);
  v129 = v112 - v31;
  v133 = a1;
  *&v143 = a1;
  v138 = a6;
  v139 = a3;
  v130 = a3;
  v131 = a4;
  v140 = a4;
  v132 = a6;
  v32 = sub_22F0D103C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v34 = MEMORY[0x277D83970];
  WitnessTable = swift_getWitnessTable();
  sub_22F0419F0(&qword_27DAA1B78, &qword_27DAA1B70, &qword_22F0D8A78, v34);
  v135 = WitnessTable;
  sub_22F0D0EAC();

  v137 = v21;
  v120 = v32;
  v119 = v33;
  if (v128)
  {
    v118 = v112;
    *&v143 = v133;
    MEMORY[0x28223BE20](v36);
    v37 = v130;
    v112[-4] = v132;
    v112[-3] = v37;
    v38 = v131;
    v112[-2] = v131;
    v39 = sub_22F0D0EAC();
    v123 = 0;
    v40 = *(v39 + 16);
    if (v40)
    {
      *&v141 = MEMORY[0x277D84F90];
      v41 = v39;
      sub_22EFFC72C(0, v40, 0);
      v42 = v141;
      v118 = v41;
      v43 = (v41 + 32);
      v44 = (v21 + 16);
      v135 = v21 + 32;
      v45 = v134;
      do
      {
        sub_22EFFFB40(v43, &v143);
        v47 = *(&v144 + 1);
        v46 = v145;
        __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
        (*(v46 + 16))(v47, v46);
        (*v44)(v30, &v16[*(v136 + 20)], v45);
        sub_22F073CD0(v16, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        *&v141 = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_22EFFC72C((v48 > 1), v49 + 1, 1);
          v45 = v134;
          v42 = v141;
        }

        *(v42 + 16) = v49 + 1;
        v21 = v137;
        (*(v137 + 32))(v42 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v49, v30, v45);
        v43 += 40;
        --v40;
      }

      while (v40);

      v63 = v45;
LABEL_14:
      v64 = v129;
      v65 = v131;
      v66 = v130;
      goto LABEL_18;
    }

    v65 = v38;
    v66 = v37;
  }

  else
  {
    *&v143 = v133;
    MEMORY[0x28223BE20](v36);
    v50 = v130;
    v112[-4] = v132;
    v112[-3] = v50;
    v51 = v131;
    v112[-2] = v131;
    v52 = sub_22F0D0EAC();
    v123 = 0;
    v53 = v52;
    v54 = *(v52 + 16);
    if (v54)
    {
      *&v141 = MEMORY[0x277D84F90];
      sub_22EFFC72C(0, v54, 0);
      v42 = v141;
      v112[1] = v53;
      v55 = v53 + 32;
      v56 = (v21 + 16);
      v135 = v21 + 32;
      v57 = v134;
      v58 = v118;
      do
      {
        sub_22EFFFB40(v55, &v143);
        v59 = *(&v144 + 1);
        v60 = v145;
        __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
        (*(v60 + 8))(v59, v60);
        (*v56)(v58, &v16[*(v136 + 20)], v57);
        sub_22F073CD0(v16, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        *&v141 = v42;
        v62 = *(v42 + 16);
        v61 = *(v42 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_22EFFC72C((v61 > 1), v62 + 1, 1);
          v58 = v118;
          v57 = v134;
          v42 = v141;
        }

        *(v42 + 16) = v62 + 1;
        (*(v137 + 32))(v42 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v62, v58, v57);
        v55 += 40;
        --v54;
      }

      while (v54);

      v63 = v57;
      v21 = v137;
      goto LABEL_14;
    }

    v65 = v51;
    v66 = v50;
  }

  v42 = MEMORY[0x277D84F90];
  v63 = v134;
  v64 = v129;
LABEL_18:
  v67 = v126;
  sub_22F07083C(v42, v126);

  if ((*(v21 + 48))(v67, 1, v63) == 1)
  {
    sub_22F003A4C(v67, &qword_27DAA1440, &unk_22F0D65F0);
    v70 = v127;
LABEL_26:
    v86 = v132;
    v74 = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems(255, v132, v68, v69);
    sub_22F0D184C();
    swift_allocObject();
    v87 = 1;
    v136 = sub_22F0D0F6C();
    v135 = v88;
    v89 = v122;
    v90 = (*(v21 + 16))(v122, v70, v63);
    *&v143 = v133;
    MEMORY[0x28223BE20](v90);
    v112[-2] = v86;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v92 = v120;
    v93 = swift_getWitnessTable();
    v94 = TupleTypeMetadata2;
    v21 = v137;
    v96 = sub_22F05C5E4(sub_22F07373C, &v112[-4], v92, v94, MEMORY[0x277D84A98], v93, MEMORY[0x277D84AC0], v95);
    v97 = v121;
    sub_22F0D04FC();
    sub_22F0D050C();
    v98 = v134;
    v100 = v99;
    (*(v21 + 8))(v97, v134);
    v101 = v89;
    v102 = v136;
    sub_22F06ECD0(v101, v96, v86, v135, 0.0, v100);
    sub_22F0D103C();
    v103 = v125;
    v104 = v124;
    goto LABEL_31;
  }

  (*(v21 + 32))(v64, v67, v63);
  v71 = v127;
  if ((sub_22F0D053C() & 1) == 0)
  {
    (*(v21 + 8))(v64, v63);
    v70 = v71;
    goto LABEL_26;
  }

  v72 = v116;
  v73 = v117;
  sub_22F0D054C();
  v74 = v133;
  if (a8 == 0.0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v75 = (*(v21 + 16))(v73, v71, v63);
  *(v73 + *(v72 + 40)) = a8;
  MEMORY[0x28223BE20](v75);
  v76 = v132;
  v112[-8] = v132;
  v112[-7] = v74;
  v112[-6] = v112[2];
  v112[-5] = v66;
  v112[-4] = v65;
  *&v112[-3] = a8;
  LOBYTE(v112[-2]) = v128 & 1;
  v74 = type metadata accessor for StatusPrioritizer.TimeLineEntryMultipleItems(0, v76, v77, v78);
  v79 = sub_22F0419F0(&qword_27DAA1B80, &qword_27DAA1B68, &qword_22F0D8A70, MEMORY[0x277D841F0]);
  v65 = sub_22F071458(sub_22F07375C, &v112[-10], v72, v74, MEMORY[0x277D84A98], v79, MEMORY[0x277D84AC0], v80);
  sub_22F003A4C(v73, &qword_27DAA1B68, &qword_22F0D8A70);
  if (qword_280CBDB28 != -1)
  {
LABEL_33:
    swift_once();
  }

  v81 = sub_22F0D0A1C();
  __swift_project_value_buffer(v81, qword_280CBDB30);
  sub_22F0CFF1C();
  v82 = sub_22F0D09FC();
  v83 = sub_22F0D124C();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v143 = v85;
    *v84 = 136315650;
    *(v84 + 4) = sub_22F00A560(0xD00000000000003DLL, 0x800000022F0DEC20, &v143);
    *(v84 + 12) = 2048;
    *(v84 + 14) = sub_22F0D0FFC();

    *(v84 + 22) = 2048;
    *(v84 + 24) = 8;
    _os_log_impl(&dword_22EFE1000, v82, v83, "%s Timeline entries %ld will be reduced to %ld", v84, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x2318FE8B0](v85, -1, -1);
    MEMORY[0x2318FE8B0](v84, -1, -1);
  }

  else
  {
  }

  v103 = v125;
  v104 = v124;
  v105 = v115;
  *&v141 = v65;
  sub_22F0D103C();
  swift_getWitnessTable();
  sub_22F0D11CC();
  v141 = v143;
  v142 = v144;
  sub_22F0D13DC();
  swift_getWitnessTable();
  v102 = sub_22F0D104C();
  if (qword_27DAA0640 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v105, qword_27DAA21E0);
  v106 = [objc_opt_self() seconds];
  v107 = v113;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v114 + 8))(v107, v105);
  sub_22F0D054C();
  v98 = v134;
  (*(v21 + 8))(v129, v134);
  v87 = 0;
LABEL_31:
  (*(v21 + 56))(v104, v87, 1, v98);
  *v103 = v102;
  v110 = type metadata accessor for StatusPrioritizer.TimeLine(0, v74, v108, v109);
  return sub_22F073D30(v104, v103 + *(v110 + 28));
}

uint64_t sub_22F07078C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  result = (*(*(a2 - 8) + 16))(a3, a1, a2);
  *(a3 + v6) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22F07083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22F0D05BC();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_22F05F060(&qword_27DAA13D0, MEMORY[0x277CC9590]);
        v20 = sub_22F0D0BBC();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

int *sub_22F070AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v54 = a1;
  v57 = a8;
  v17 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22F0D05BC();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v81 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  v66 = a7;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a1;
  v71 = a9;
  v72 = a6;
  v21 = sub_22F0D103C();
  WitnessTable = swift_getWitnessTable();
  v23 = v58;
  v52 = sub_22F05C5E4(sub_22F073C10, v65, v21, v17, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);
  v53 = v23;
  v73 = a2;
  v77 = v52;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CC0, &qword_22F0D8B90);
  v26 = MEMORY[0x277D83970];
  v27 = swift_getWitnessTable();
  v28 = sub_22F0419F0(&qword_27DAA1CC8, &qword_27DAA1CC0, &qword_22F0D8B90, v26);
  sub_22F0D18FC();
  v77 = v79;
  v78 = v80;
  v64 = a7;
  v60 = a7;
  v61 = sub_22F073C40;
  v62 = &v63;
  v73 = v21;
  v74 = v25;
  v75 = v27;
  v76 = v28;
  v29 = sub_22F0D154C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v58 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = swift_getWitnessTable();
  v32 = v29;
  v33 = v52;
  v34 = v53;
  v36 = sub_22F071458(sub_22F073C48, v59, v32, TupleTypeMetadata2, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v35);

  (*(v55 + 16))(v81, v54, v56);
  v37 = *(v33 + 16);
  if (v37)
  {
    v55 = v36;
    v56 = v34;
    v73 = MEMORY[0x277D84F90];
    sub_22EFFC770(0, v37, 0);
    v38 = v73;
    v39 = v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v40 = *(v51 + 72);
    do
    {
      sub_22F073C6C(v39, v19);
      v41 = *&v19[*(v17 + 24)];
      sub_22F073CD0(v19, type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem);
      v73 = v38;
      v43 = *(v38 + 16);
      v42 = *(v38 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22EFFC770((v42 > 1), v43 + 1, 1);
        v38 = v73;
      }

      *(v38 + 16) = v43 + 1;
      *(v38 + 8 * v43 + 32) = v41;
      v39 += v40;
      --v37;
    }

    while (v37);

    v36 = v55;
    v44 = *(v38 + 16);
    if (v44)
    {
      goto LABEL_7;
    }

LABEL_14:
    v45 = 0.0;
    goto LABEL_15;
  }

  v38 = MEMORY[0x277D84F90];
  v44 = *(MEMORY[0x277D84F90] + 16);
  if (!v44)
  {
    goto LABEL_14;
  }

LABEL_7:
  v45 = *(v38 + 32);
  v46 = v44 - 1;
  if (v46)
  {
    v47 = (v38 + 40);
    do
    {
      v48 = *v47++;
      v49 = v48;
      if (v45 < v48)
      {
        v45 = v49;
      }

      --v46;
    }

    while (v46);
  }

LABEL_15:

  return sub_22F06ECD0(v81, v36, v58, v57, v45, a9);
}

int *sub_22F071020@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X8>, double a6@<D0>)
{
  v39 = sub_22F0D05BC();
  v13 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v31 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StatusRelevance(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2(a1);
  v34[16] = a4;
  v35 = a3;
  sub_22F0CFF1C();
  v19 = sub_22F06E99C(sub_22F074A84, v34, v18);
  v32[16] = a4;
  v33 = a3;
  v36[0] = v19;
  sub_22F0CFF1C();
  sub_22F073688(sub_22F074AB8, v32);
  if (!v6)
  {

    v20 = v36[0];
    if (a4)
    {
      if (*(v36[0] + 16))
      {
        sub_22EFFFB40(v36[0] + 32, v36);
        v21 = v37;
        v22 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v22 + 16))(v21, v22);
LABEL_7:
        StatusRelevance.score(at:)(a3);
        v26 = v25;
        sub_22F073CD0(v17, type metadata accessor for StatusRelevance);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
LABEL_9:
        v27 = v31;
        v28 = v39;
        (*(v13 + 16))(v31, a3, v39);
        (*(v13 + 32))(a5, v27, v28);
        result = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
        *(a5 + result[5]) = v20;
        *(a5 + result[6]) = v26;
        *(a5 + result[7]) = a6;
        return result;
      }
    }

    else if (*(v36[0] + 16))
    {
      sub_22EFFFB40(v36[0] + 32, v36);
      v23 = v37;
      v24 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v24 + 8))(v23, v24);
      goto LABEL_7;
    }

    v26 = 0;
    goto LABEL_9;
  }

  result = sub_22F0D00CC();
  __break(1u);
  return result;
}

double sub_22F07132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 16))(a1, a2, a4);
  type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);

  sub_22F0CFF1C();
  return result;
}

uint64_t sub_22F071398@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(255);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  result = a2(a4, a1, a1 + v7);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_22F071458(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_22F0D132C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_22F0D0E6C();
  v63 = sub_22F0D165C();
  v58 = sub_22F0D166C();
  sub_22F0D160C();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_22F0D0E5C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_22F0D134C();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);
        sub_22F0D00CC();
        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_22F0D164C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_22F0D134C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_22F0D164C();
      sub_22F0D134C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);
    sub_22F0D00CC();
    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_22F071B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v178 = a4;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v173 - v10;
  v201 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
  v202 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v209 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B88, &qword_22F0D8A80);
  MEMORY[0x28223BE20](v186);
  v185 = &v173 - v12;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B90, &qword_22F0D8A88);
  MEMORY[0x28223BE20](v192);
  v204 = &v173 - v13;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B68, &qword_22F0D8A70);
  v14 = MEMORY[0x28223BE20](v194);
  v191 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v173 - v16;
  v213 = type metadata accessor for StatusRelevance(0);
  MEMORY[0x28223BE20](v213);
  v214 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F0D05BC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v197 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v173 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v188 = &v173 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v208 = &v173 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v199 = &v173 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v173 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v177 = &v173 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v173 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v196 = &v173 - v40;
  MEMORY[0x28223BE20](v39);
  v195 = &v173 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v200 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v207 = &v173 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v206 = &v173 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v210 = &v173 - v50;
  MEMORY[0x28223BE20](v49);
  v181 = &v173 - v51;
  v205 = a1;
  v52 = *(a1 + 16);
  v203 = a3;
  v180 = v17;
  v189 = v25;
  v182 = a2;
  v53 = MEMORY[0x277D84F90];
  if (a3)
  {
    if (!v52)
    {
      goto LABEL_14;
    }

    v193 = v38;
    v218 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v52, 0);
    v53 = v218;
    v54 = v205 + 32;
    v55 = (v20 + 16);
    v211 = (v20 + 32);
    v212 = v20;
    v56 = v195;
    do
    {
      sub_22EFFFB40(v54, &v215);
      v57 = v216;
      v58 = v217;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v5 = v19;
      v59 = v214;
      (*(v58 + 16))(v57, v58);
      (*v55)(v56, v59 + *(v213 + 20), v5);
      sub_22F073CD0(v59, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v215);
      v218 = v53;
      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22EFFC72C((v60 > 1), v61 + 1, 1);
        v56 = v195;
        v53 = v218;
      }

      *(v53 + 16) = v61 + 1;
      (*(v212 + 32))(v53 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v61, v56, v5);
      v54 += 40;
      --v52;
      v19 = v5;
    }

    while (v52);
  }

  else
  {
    if (!v52)
    {
      goto LABEL_14;
    }

    v193 = v38;
    v218 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v52, 0);
    v53 = v218;
    v5 = (v205 + 32);
    v62 = (v20 + 16);
    v211 = (v20 + 32);
    v212 = v20;
    v63 = v196;
    do
    {
      sub_22EFFFB40(v5, &v215);
      v64 = v216;
      v65 = v217;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v66 = v19;
      v67 = v214;
      (*(v65 + 8))(v64, v65);
      (*v62)(v63, v67 + *(v213 + 20), v66);
      sub_22F073CD0(v67, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v215);
      v218 = v53;
      v69 = *(v53 + 16);
      v68 = *(v53 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22EFFC72C((v68 > 1), v69 + 1, 1);
        v63 = v196;
        v53 = v218;
      }

      *(v53 + 16) = v69 + 1;
      (*(v212 + 32))(v53 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v69, v63, v66);
      v5 += 40;
      --v52;
      v19 = v66;
    }

    while (v52);
  }

  a2 = v182;
  v17 = v180;
  v25 = v189;
  v38 = v193;
  v20 = v212;
LABEL_14:
  v70 = v181;
  sub_22F07083C(v53, v181);

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v173 = sub_22F0D0A1C();
  __swift_project_value_buffer(v173, qword_280CBEC40);
  v211 = *(v20 + 16);
  v212 = v20 + 16;
  v211(v38, a2, v19);
  v71 = v210;
  sub_22F049FF4(v70, v210, &qword_27DAA1440, &unk_22F0D65F0);
  v72 = sub_22F0D09FC();
  v73 = sub_22F0D124C();
  if (os_log_type_enabled(v72, v73))
  {
    LODWORD(v196) = v73;
    v5 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v215 = v195;
    *v5 = 136315394;
    sub_22F05F060(&qword_27DAA1670, MEMORY[0x277CC95B8]);
    v74 = sub_22F0D183C();
    v76 = v75;
    v77 = v38;
    v78 = *(v20 + 8);
    v78(v77, v19);
    v79 = sub_22F00A560(v74, v76, &v215);

    *(v5 + 4) = v79;
    *(v5 + 6) = 2080;
    v80 = v206;
    sub_22F049FF4(v71, v206, &qword_27DAA1440, &unk_22F0D65F0);
    v81 = (*(v20 + 48))(v80, 1, v19);
    v193 = v78;
    if (v81 == 1)
    {
      sub_22F003A4C(v80, &qword_27DAA1440, &unk_22F0D65F0);
      v82 = 0xE300000000000000;
      v83 = 7104878;
    }

    else
    {
      v83 = sub_22F0D04DC();
      v82 = v84;
      v78(v80, v19);
    }

    sub_22F003A4C(v210, &qword_27DAA1440, &unk_22F0D65F0);
    a2 = sub_22F00A560(v83, v82, &v215);

    *(v5 + 14) = a2;
    _os_log_impl(&dword_22EFE1000, v72, v196, "start date: %s, endDate: %s", v5, 0x16u);
    v85 = v195;
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v85, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);

    v17 = v180;
  }

  else
  {

    sub_22F003A4C(v71, &qword_27DAA1440, &unk_22F0D65F0);
    v193 = *(v20 + 8);
    (v193)(v38, v19);
  }

  v86 = *(v205 + 16);
  v87 = v204;
  v88 = MEMORY[0x277D84F90];
  if (v203)
  {
    if (!v86)
    {
      goto LABEL_35;
    }

    v218 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v86, 0);
    v88 = v218;
    a2 = (v205 + 32);
    v210 = v20 + 32;
    v89 = v198;
    do
    {
      sub_22EFFFB40(a2, &v215);
      v90 = v216;
      v91 = v217;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v92 = v19;
      v93 = v214;
      (*(v91 + 16))(v90, v91);
      v211(v89, (v93 + *(v213 + 20)), v92);
      sub_22F073CD0(v93, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v215);
      v218 = v88;
      v95 = *(v88 + 16);
      v94 = *(v88 + 24);
      v5 = (v95 + 1);
      if (v95 >= v94 >> 1)
      {
        sub_22EFFC72C((v94 > 1), v95 + 1, 1);
        v89 = v198;
        v88 = v218;
      }

      *(v88 + 16) = v5;
      (*(v20 + 32))(v88 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v95, v89, v92);
      a2 += 5;
      --v86;
      v19 = v92;
    }

    while (v86);
  }

  else
  {
    if (!v86)
    {
      goto LABEL_35;
    }

    v218 = MEMORY[0x277D84F90];
    sub_22EFFC72C(0, v86, 0);
    v88 = v218;
    v5 = (v205 + 32);
    v210 = v20 + 32;
    v96 = v199;
    do
    {
      sub_22EFFFB40(v5, &v215);
      v97 = v216;
      v98 = v217;
      __swift_project_boxed_opaque_existential_1(&v215, v216);
      v99 = v19;
      v100 = v214;
      (*(v98 + 8))(v97, v98);
      v211(v96, (v100 + *(v213 + 20)), v99);
      sub_22F073CD0(v100, type metadata accessor for StatusRelevance);
      __swift_destroy_boxed_opaque_existential_1Tm(&v215);
      v218 = v88;
      v102 = *(v88 + 16);
      v101 = *(v88 + 24);
      a2 = (v102 + 1);
      if (v102 >= v101 >> 1)
      {
        sub_22EFFC72C((v101 > 1), v102 + 1, 1);
        v96 = v199;
        v88 = v218;
      }

      *(v88 + 16) = a2;
      (*(v20 + 32))(v88 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v102, v96, v99);
      v5 += 40;
      --v86;
      v19 = v99;
    }

    while (v86);
  }

  v87 = v204;
  v17 = v180;
  v25 = v189;
LABEL_35:
  v103 = v207;
  sub_22F07083C(v88, v207);

  v104 = *(v20 + 48);
  v199 = (v20 + 48);
  v198 = v104;
  if ((v104)(v103, 1, v19) == 1)
  {
    sub_22F003A4C(v103, &qword_27DAA1440, &unk_22F0D65F0);
    v105 = v193;
LABEL_64:
    v151 = v182;
    v152 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1708, &qword_22F0D8A90);
    v153 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    a2 = swift_allocObject();
    *(a2 + 1) = xmmword_22F0D2BF0;
    v154 = a2 + v153;
    v155 = v188;
    sub_22F0D04FC();
    sub_22F0D050C();
    v157 = v156;
    v105(v155, v19);
    v211(v154, v151, v19);
    v158 = v201;
    *&v154[*(v201 + 20)] = v152;
    *&v154[*(v158 + 24)] = 0;
    *&v154[*(v158 + 28)] = v157;
    sub_22F003A4C(v181, &qword_27DAA1440, &unk_22F0D65F0);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B98, &qword_22F0D8A98);
    v160 = v178;
    result = (*(v20 + 56))(v178 + *(v159 + 28), 1, 1, v19);
    goto LABEL_74;
  }

  v106 = v177;
  v213 = *(v20 + 32);
  (v213)(v177, v103, v19);
  if ((sub_22F0D053C() & 1) == 0)
  {
    v105 = v193;
    (v193)(v106, v19);
    goto LABEL_64;
  }

  v107 = v194;
  sub_22F0D054C();
  if (a5 != 0.0)
  {
    v108 = v107;
    v211(v17, v182, v19);
    *&v17[*(v107 + 40)] = a5;
    v109 = v191;
    sub_22F049FF4(v17, v191, &qword_27DAA1B68, &qword_22F0D8A70);
    v110 = v192;
    v111 = *(v192 + 44);
    v210 = v20 + 32;
    v112 = v87 + v111;
    v113 = *(v186 + 48);
    v114 = v213;
    (v213)(v87 + v111 + v113, v109, v19);
    v115 = *(v108 + 36);
    v195 = v110[9];
    v114(v87 + v195, v109 + v115, v19);
    v116 = *(v109 + *(v108 + 40));
    v184 = v110[10];
    *(v87 + v184) = v116;
    v179 = v110[12];
    *(v87 + v179) = 0;
    v206 = v113;
    v211(v87, (v112 + v113), v19);
    v194 = 0;
    LODWORD(v191) = 0;
    v187 = 0;
    *v112 = 0;
    v207 = v112;
    *(v112 + 8) = 0;
    v190 = v20 + 8;
    v183 = (v20 + 40);
    v196 = (v20 + 56);
    a2 = MEMORY[0x277D84F90];
    LODWORD(v192) = v203 & 1;
    v117 = v208;
    while (1)
    {
      v211(v117, (v207 + v206), v19);
      sub_22F05F060(&qword_27DAA13D0, MEMORY[0x277CC9590]);
      if (v116 <= 0.0)
      {
        if ((sub_22F0D0BDC() & 1) == 0)
        {
LABEL_42:
          v118 = v207;
          v119 = v185;
          sub_22F049FF4(v207, v185, &qword_27DAA1B88, &qword_22F0D8A80);
          v120 = *(v186 + 48);
          sub_22F05F060(&qword_27DAA1BA0, MEMORY[0x277CC95A8]);
          v121 = v188;
          v122 = sub_22F0D135C();
          v124 = v123;
          (v193)(v119 + v120, v19);
          v194 = v122;
          *v118 = v122;
          LODWORD(v191) = v124;
          *(v118 + 8) = v124 & 1;
          v125 = v121;
          v25 = v189;
          (*v183)(v118 + v206, v125, v19);
          v126 = v200;
          v127 = v200;
          v128 = v208;
LABEL_48:
          (v213)(v127, v128, v19);
          v129 = 0;
          goto LABEL_50;
        }
      }

      else if ((sub_22F0D0BCC() & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_22F05F060(&qword_27DAA1920, MEMORY[0x277CC9598]);
      if ((sub_22F0D0C2C() & 1) != 0 && ((v187 ^ 1) & 1) != 0 && v191 & 1 | (v194 != 0x8000000000000000))
      {
        v187 = 1;
        *(v87 + v179) = 1;
        v126 = v200;
        v127 = v200;
        v128 = v117;
        goto LABEL_48;
      }

      (v193)(v117, v19);
      v129 = 1;
      v126 = v200;
LABEL_50:
      v5 = *v196;
      (*v196)(v126, v129, 1, v19);
      if ((v198)(v126, 1, v19) == 1)
      {
        sub_22F003A4C(v180, &qword_27DAA1B68, &qword_22F0D8A70);
        sub_22F003A4C(v87, &qword_27DAA1B90, &qword_22F0D8A88);
        if (qword_280CBDB28 == -1)
        {
          goto LABEL_66;
        }

        goto LABEL_76;
      }

      v130 = a2;
      v131 = (v213)(v25, v126, v19);
      MEMORY[0x28223BE20](v131);
      v132 = v25;
      v133 = v192;
      *(&v173 - 16) = v192;
      *(&v173 - 1) = v132;
      v134 = v205;
      sub_22F0CFF1C();
      v135 = sub_22F06E99C(sub_22F074A84, (&v173 - 4), v134);
      v136 = MEMORY[0x28223BE20](v135);
      *(&v173 - 16) = v133;
      v25 = v132;
      *(&v173 - 1) = v132;
      v215 = v136;
      sub_22F0CFF1C();
      sub_22F073688(sub_22F074AB8, (&v173 - 4));

      v137 = v215;
      if (v203)
      {
        a2 = v130;
        if (*(v215 + 16))
        {
          sub_22EFFFB40(v215 + 32, &v215);
          v138 = v216;
          v139 = v217;
          __swift_project_boxed_opaque_existential_1(&v215, v216);
          v140 = v214;
          (*(v139 + 16))(v138, v139);
LABEL_56:
          StatusRelevance.score(at:)(v25);
          v144 = v143;
          sub_22F073CD0(v140, type metadata accessor for StatusRelevance);
          __swift_destroy_boxed_opaque_existential_1Tm(&v215);
          goto LABEL_58;
        }
      }

      else
      {
        a2 = v130;
        if (*(v215 + 16))
        {
          sub_22EFFFB40(v215 + 32, &v215);
          v141 = v216;
          v142 = v217;
          __swift_project_boxed_opaque_existential_1(&v215, v216);
          v140 = v214;
          (*(v142 + 8))(v141, v142);
          goto LABEL_56;
        }
      }

      v144 = 0;
LABEL_58:
      v87 = v204;
      v145 = v197;
      v146 = v213;
      (v213)(v197, v25, v19);
      v147 = v209;
      v146(v209, v145, v19);
      v148 = v201;
      *(v147 + *(v201 + 20)) = v137;
      *(v147 + *(v148 + 24)) = v144;
      *(v147 + *(v148 + 28)) = a5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_22F03D318(0, a2[2] + 1, 1, a2);
      }

      v117 = v208;
      v150 = a2[2];
      v149 = a2[3];
      if (v150 >= v149 >> 1)
      {
        a2 = sub_22F03D318((v149 > 1), v150 + 1, 1, a2);
      }

      a2[2] = v150 + 1;
      sub_22F0737C0(v209, a2 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v150);
    }
  }

  __break(1u);
LABEL_76:
  swift_once();
LABEL_66:
  __swift_project_value_buffer(v173, qword_280CBDB30);
  sub_22F0CFF1C();
  v162 = sub_22F0D09FC();
  v163 = sub_22F0D124C();
  v164 = os_log_type_enabled(v162, v163);
  v165 = v177;
  if (v164)
  {
    v166 = swift_slowAlloc();
    *v166 = 134218240;
    *(v166 + 4) = a2[2];

    *(v166 + 12) = 2048;
    *(v166 + 14) = 8;
    _os_log_impl(&dword_22EFE1000, v162, v163, "Timeline entries %ld, max used will be %ld", v166, 0x16u);
    MEMORY[0x2318FE8B0](v166, -1, -1);
  }

  else
  {
  }

  if (a2[2] >= 9uLL)
  {
    sub_22F06199C(a2, a2 + ((*(v202 + 80) + 32) & ~*(v202 + 80)), 0, 0x11uLL);
    v168 = v167;

    a2 = v168;
  }

  v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1B98, &qword_22F0D8A98) + 28);
  if (qword_27DAA0640 != -1)
  {
    swift_once();
  }

  v170 = v176;
  __swift_project_value_buffer(v176, qword_27DAA21E0);
  v171 = [objc_opt_self() seconds];
  v172 = v174;
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v175 + 8))(v172, v170);
  v160 = v178;
  sub_22F0D054C();
  (v193)(v165, v19);
  sub_22F003A4C(v181, &qword_27DAA1440, &unk_22F0D65F0);
  result = (v5)(v160 + v169, 0, 1, v19);
LABEL_74:
  *v160 = a2;
  return result;
}

void sub_22F073688(uint64_t (*a1)(__int128 *, void *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22F0BFC24(v5);
  }

  sub_22F073DA0(a1, a2);
  *v2 = v5;
}

uint64_t sub_22F07378C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22F0737C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of StatusPrioritizer.timeline(statuses:fromDate:interval:lockScreenCircular:)()
{
  return (*(*v0 + 96))();
}

{
  return (*(*v0 + 136))();
}

uint64_t dispatch thunk of StatusPrioritizer.timeline<A>(from:fromDate:interval:applying:lockScreenCircular:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 120))();
}

void sub_22F073950(uint64_t a1)
{
  sub_22F0D05BC();
  if (v1 <= 0x3F)
  {
    sub_22F0739E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F0739E4(uint64_t a1)
{
  if (!qword_27DAA1BB8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA0DB8, &qword_22F0D4F98);
    v1 = sub_22F0D103C();
    if (!v2)
    {
      atomic_store(v1, qword_27DAA1BB8);
    }
  }
}

uint64_t sub_22F073A50(uint64_t a1)
{
  result = sub_22F0D05BC();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1B70, &qword_22F0D8A78);
    swift_getTupleTypeMetadata2();
    result = sub_22F0D103C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22F073B48(uint64_t a1)
{
  sub_22F0D103C();
  if (v1 <= 0x3F)
  {
    sub_22F05B668(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22F073C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusPrioritizer.TimeLineEntrySingleItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F073CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F073D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22F073DA0(uint64_t (*a1)(__int128 *, void *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_22F0D182C();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DB8, &qword_22F0D4F98);
        v8 = sub_22F0D0FCC();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_22F073FE4(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_22F073EB8(0, v5, 1, a1);
  }
}

uint64_t sub_22F073EB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, void *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_22EFFFB40(v9, v17);
      sub_22EFFFB40(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_22EFE6B9C(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_22EFE6B9C(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_22F073FE4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, void *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v8 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_22EFFFB40(*v7 + 40 * v12, v106);
      sub_22EFFFB40(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
LABEL_106:

        return;
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_22EFFFB40(v20, v106);
        sub_22EFFFB40(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_22EFE6B9C((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          sub_22EFE6B9C(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_22EFFFB40(v85, v106);
          sub_22EFFFB40(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_1Tm(v105);
          __swift_destroy_boxed_opaque_existential_1Tm(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_22EFE6B9C(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_22EFE6B9C(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F03C658(0, *(v10 + 2) + 1, 1, v10);
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v10 = sub_22F03C658((v34 > 1), v35 + 1, 1, v10);
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_22F0746D0((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F0BE90C(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    sub_22F0BE880(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v10 = sub_22F0BE90C(v10);
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
    goto LABEL_106;
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_22F0746D0((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F0BE90C(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    sub_22F0BE880(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
      goto LABEL_106;
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_22F0746D0(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(void *, void *), uint64_t a6)
{
  v42[6] = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_22EFFFB40(v9, v42);
      sub_22EFFFB40(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 16);
    *(v10 + 4) = *(v16 + 32);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_22EFFFB40(v23, v42);
    sub_22EFFFB40(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

uint64_t static StatusCoalescer.fetchStatus(for:statusFetchers:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = sub_22F0D09BC();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_22F0D05BC();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v6 = sub_22F0D0A1C();
  *(v3 + 104) = v6;
  *(v3 + 112) = *(v6 - 8);
  *(v3 + 120) = swift_task_alloc();
  v7 = sub_22F0D09EC();
  *(v3 + 128) = v7;
  *(v3 + 136) = *(v7 - 8);
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F074CB8, 0, 0);
}

uint64_t sub_22F074CB8()
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[4];
  v5 = __swift_project_value_buffer(v3, qword_280CBEC40);
  (*(v2 + 16))(v1, v5, v3);
  sub_22F0D09CC();
  v6 = *(v4 + 16);
  v0[19] = v6;
  sub_22F0D05AC();
  if (qword_280CBDBB0 != -1)
  {
    swift_once();
  }

  v0[20] = __swift_project_value_buffer(v0[13], qword_280CBDBB8);
  v7 = sub_22F0D09FC();
  v8 = sub_22F0D122C();
  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_9;
  }

  v9 = v6;
  v10 = v0[5];
  v11 = swift_slowAlloc();
  *v11 = 134218240;
  *(v11 + 4) = v10;
  *(v11 + 12) = 2048;
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x282200740](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  *(v11 + 14) = v9;
  v19 = v8;
  v20 = v11;
  _os_log_impl(&dword_22EFE1000, v7, v19, "Max time per source %f in %ld sources", v11, 0x16u);
  MEMORY[0x2318FE8B0](v20, -1, -1);
LABEL_9:
  v21 = v0[5];
  v23 = v0[3];
  v22 = v0[4];

  v0[2] = sub_22F07D7A0(MEMORY[0x277D84F90]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
  v25 = swift_task_alloc();
  v0[21] = v25;
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v23;
  v25[5] = v0 + 2;
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  *(v11 + 8) = sub_22F074F7C;
  v13 = MEMORY[0x277D84F78] + 8;
  v16 = &unk_22F0D8BB0;
  v12 = v24;
  v14 = 0;
  v15 = 0;
  v17 = v25;
  v18 = v24;

  return MEMORY[0x282200740](v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_22F074F7C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22F0750B8, 0, 0);
  }
}

uint64_t sub_22F0750B8()
{
  v32 = v0;
  sub_22F0CFF1C();
  sub_22F0D09AC();
  v1 = sub_22F0D09DC();
  v2 = sub_22F0D12AC();
  if (sub_22F0D130C())
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;

    v5 = sub_22F0D099C();
    _os_signpost_emit_with_name_impl(&dword_22EFE1000, v1, v2, v5, "StatusCoalescer", "Completed for %ld statues", v4, 0xCu);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v9 + 16))(v7, v6, v8);
  v10 = sub_22F0D09FC();
  v11 = sub_22F0D124C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[17];
  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v18 = v0[10];
  if (v12)
  {
    v30 = v0[16];
    v20 = swift_slowAlloc();
    v29 = v17;
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_22F00A560(0xD000000000000028, 0x800000022F0DEC80, &v31);
    *(v20 + 12) = 2048;
    sub_22F0D056C();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v19);
    *(v20 + 14) = -v23;
    _os_log_impl(&dword_22EFE1000, v10, v11, "%s elapsed %f", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x2318FE8B0](v21, -1, -1);
    MEMORY[0x2318FE8B0](v20, -1, -1);

    v24(v29, v19);
    (*(v13 + 8))(v14, v30);
  }

  else
  {

    v25 = *(v18 + 8);
    v25(v16, v19);
    v25(v17, v19);
    (*(v13 + 8))(v14, v15);
  }

  v26 = v0[2];

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_22F0753F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 208) = a1;
  *(v6 + 192) = a3;
  *(v6 + 200) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1418, &qword_22F0D7460);
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0754A0, 0, 0);
}

uint64_t sub_22F0754A0()
{
  v44 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v42 = **(v0 + 192);
    while (1)
    {
      v4 = *(v0 + 240);
      v5 = *(v0 + 216);
      v6 = *(v0 + 208);
      v7 = v3[3];
      v8 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v7);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      v12 = sub_22F0D10EC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v4, 1, 1, v12);
      sub_22EFFFB40(v3, v0 + 16);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v6;
      sub_22EFE6B9C((v0 + 16), (v14 + 5));
      v14[10] = v5;
      v14[11] = v9;
      v41 = v9;
      v14[12] = v11;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      v16 = swift_taskGroup_addPending();
      v17 = *(v0 + 240);
      if (v16)
      {
        break;
      }

      sub_22F003A4C(v17, &qword_27DAA1418, &qword_22F0D7460);
      sub_22F0D00CC();
      if (qword_280CBDBB0 != -1)
      {
        swift_once();
      }

      v24 = sub_22F0D0A1C();
      __swift_project_value_buffer(v24, qword_280CBDBB8);
      sub_22F0CFF1C();
      v25 = sub_22F0D09FC();
      v26 = sub_22F0D123C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v28;
        *v27 = 136315138;
        v29 = sub_22F00A560(v41, v11, &v43);

        *(v27 + 4) = v29;
        v30 = v26;
        v31 = v25;
        v32 = "Task add failed for %s";
LABEL_21:
        _os_log_impl(&dword_22EFE1000, v31, v30, v32, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x2318FE8B0](v28, -1, -1);
        MEMORY[0x2318FE8B0](v27, -1, -1);

        goto LABEL_4;
      }

LABEL_3:

LABEL_4:
      v3 += 5;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }

    v18 = *(v0 + 232);
    sub_22F01B0B8(v17, v18);
    v19 = (*(v13 + 48))(v18, 1, v12);
    v20 = *(v0 + 232);
    if (v19 == 1)
    {
      sub_22F003A4C(*(v0 + 232), &qword_27DAA1418, &qword_22F0D7460);
      if (*v15)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_22F0D106C();
        v23 = v22;
        swift_unknownObjectRelease();
        goto LABEL_15;
      }
    }

    else
    {
      sub_22F0D10DC();
      (*(v13 + 8))(v20, v12);
      if (*v15)
      {
        goto LABEL_8;
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_15:
    sub_22F0CFFAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
    v33 = v23 | v21;
    if (v23 | v21)
    {
      v33 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v21;
      *(v0 + 80) = v23;
    }

    v34 = *(v0 + 240);
    *(v0 + 112) = 1;
    *(v0 + 120) = v33;
    *(v0 + 128) = v42;
    swift_task_create();
    sub_22F0D00CC();
    sub_22F0D00CC();
    sub_22F003A4C(v34, &qword_27DAA1418, &qword_22F0D7460);
    if (qword_280CBDBB0 != -1)
    {
      swift_once();
    }

    v35 = sub_22F0D0A1C();
    __swift_project_value_buffer(v35, qword_280CBDBB8);
    sub_22F0CFF1C();
    v25 = sub_22F0D09FC();
    v36 = sub_22F0D122C();

    if (os_log_type_enabled(v25, v36))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315138;
      v37 = sub_22F00A560(v41, v11, &v43);

      *(v27 + 4) = v37;
      v30 = v36;
      v31 = v25;
      v32 = "Added task for %s";
      goto LABEL_21;
    }

    goto LABEL_3;
  }

LABEL_22:
  v38 = swift_task_alloc();
  *(v0 + 248) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD8, &qword_22F0D8BD8);
  *v38 = v0;
  v38[1] = sub_22F075A50;

  return MEMORY[0x2822004C0](v0 + 152, v39);
}

uint64_t sub_22F075A50()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_22F0763BC;
  }

  else
  {
    *(v2 + 264) = *(v2 + 152);
    *(v2 + 161) = *(v2 + 160);
    v3 = sub_22F075B74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F075B74()
{
  v79 = v0;
  v1 = *(v0 + 161);
  if (v1 != 255)
  {
    v2 = *(v0 + 264);
    if ((v1 & 1) == 0)
    {
      if (v2)
      {
        isUniquelyReferenced_nonNull_native = v2 + 64;
        v18 = -1 << *(v2 + 32);
        if (-v18 < 64)
        {
          v19 = ~(-1 << -v18);
        }

        else
        {
          v19 = -1;
        }

        v20 = v19 & *(v2 + 64);
        sub_22F077378(*(v0 + 264), v1);
        sub_22F015CE4(v2, 0);
        v3 = 0;
        v21 = (63 - v18) >> 6;
        v74 = v21;
        v75 = v2 + 64;
        v76 = v2;
        while (1)
        {
          if (!v20)
          {
            while (1)
            {
              v22 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (v22 >= v21)
              {
                v52 = *(v0 + 264);
                v53 = *(v0 + 161);
                sub_22F0D00CC();
                sub_22F059B88(v52, v53);
                v15 = v52;
                LOBYTE(v1) = v53;
                goto LABEL_52;
              }

              v20 = *(isUniquelyReferenced_nonNull_native + 8 * v22);
              ++v3;
              if (v20)
              {
                v3 = v22;
                goto LABEL_22;
              }
            }

            __break(1u);
LABEL_60:
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
          v23 = *(v0 + 224);
          v24 = __clz(__rbit64(v20)) | (v3 << 6);
          v25 = *(v2 + 56);
          v26 = (*(v2 + 48) + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          v29 = *(v25 + 8 * v24);
          sub_22F0CFF1C();
          sub_22F0CFF1C();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *v23;
          v31 = v0;
          *(v0 + 184) = *v23;
          *v23 = 0x8000000000000000;
          v77 = v28;
          v33 = sub_22EFFDA80(v27, v28);
          v34 = *(v30 + 16);
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_60;
          }

          v37 = v32;
          if (*(v30 + 24) >= v36)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22F05FF84();
              v30 = *(v0 + 184);
            }

            isUniquelyReferenced_nonNull_native = v77;
          }

          else
          {
            sub_22F07A2A4(v36, isUniquelyReferenced_nonNull_native);
            v30 = *(v0 + 184);
            isUniquelyReferenced_nonNull_native = v77;
            v38 = sub_22EFFDA80(v27, v77);
            if ((v37 & 1) != (v39 & 1))
            {

              return sub_22F0D191C();
            }

            v33 = v38;
          }

          v0 = *(v0 + 224);
          *v0 = v30;

          v40 = *v0;
          if ((v37 & 1) == 0)
          {
            v40[(v33 >> 6) + 8] |= 1 << v33;
            v41 = (v40[6] + 16 * v33);
            *v41 = v27;
            v41[1] = isUniquelyReferenced_nonNull_native;
            *(v40[7] + 8 * v33) = MEMORY[0x277D84F90];
            v42 = v40[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_64;
            }

            v40[2] = v44;
            sub_22F0CFF1C();
          }

          isUniquelyReferenced_nonNull_native = v40[7];
          v45 = *(v29 + 16);
          v46 = *(isUniquelyReferenced_nonNull_native + 8 * v33);
          v47 = v46[2];
          v0 = v47 + v45;
          if (__OFADD__(v47, v45))
          {
            goto LABEL_61;
          }

          sub_22F0CFF1C();
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(isUniquelyReferenced_nonNull_native + 8 * v33) = v46;
          if (!v48 || v0 > v46[3] >> 1)
          {
            if (v47 <= v0)
            {
              v49 = v47 + v45;
            }

            else
            {
              v49 = v47;
            }

            v46 = sub_22F03CB00(v48, v49, 1, v46);
            *(isUniquelyReferenced_nonNull_native + 8 * v33) = v46;
          }

          v0 = v31;
          v2 = v76;
          if (*(v29 + 16))
          {
            if ((v46[3] >> 1) - v46[2] < v45)
            {
              goto LABEL_63;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA06E0, &qword_22F0D2C10);
            swift_arrayInitWithCopy();

            if (v45)
            {
              v50 = v46[2];
              v43 = __OFADD__(v50, v45);
              v51 = v50 + v45;
              if (v43)
              {
                goto LABEL_65;
              }

              v46[2] = v51;
            }
          }

          else
          {

            if (v45)
            {
              goto LABEL_62;
            }
          }

          v20 &= v20 - 1;
          *(isUniquelyReferenced_nonNull_native + 8 * v33) = v46;

          v21 = v74;
          isUniquelyReferenced_nonNull_native = v75;
        }
      }

      v15 = 0;
      goto LABEL_52;
    }

    *(v0 + 168) = v2;
    sub_22F015CE4(v2, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = *(v0 + 136);
      v3 = *(v0 + 144);
      if (qword_280CBDBB0 != -1)
      {
LABEL_66:
        swift_once();
      }

      v5 = sub_22F0D0A1C();
      __swift_project_value_buffer(v5, qword_280CBDBB8);
      sub_22F0CFF1C();
      v6 = sub_22F0D09FC();
      v7 = sub_22F0D123C();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 161);
      v10 = *(v0 + 264);
      if (v8)
      {
        v11 = *(v0 + 208);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v78 = v13;
        *v12 = 136315394;
        v14 = sub_22F00A560(isUniquelyReferenced_nonNull_native, v3, &v78);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2048;
        *(v12 + 14) = v11;
        _os_log_impl(&dword_22EFE1000, v6, v7, "%s exceeded %f", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x2318FE8B0](v13, -1, -1);
        MEMORY[0x2318FE8B0](v12, -1, -1);

        v15 = v10;
        LOBYTE(v1) = v9;
LABEL_52:
        sub_22F059B88(v15, v1);
        goto LABEL_53;
      }

      sub_22F059B88(v10, v9);
    }

    else
    {
      if (qword_280CBE8C0 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 264);
      v55 = sub_22F0D0A1C();
      __swift_project_value_buffer(v55, qword_280CBE8C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_22F0D2BF0;
      swift_getErrorValue();
      sub_22F015CE4(v54, 1);
      v57 = v2;
      v58 = sub_22F0D192C();
      v60 = v59;
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = sub_22F03DB30();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      v61 = sub_22F0D0CCC();
      v63 = v62;
      v64 = sub_22F0D09FC();
      v65 = sub_22F0D123C();
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 161);
      v68 = *(v0 + 264);
      if (!v66)
      {

        sub_22F059B88(v68, v67);

        sub_22F059B88(v68, v67);
        v15 = v68;
        LOBYTE(v1) = v67;
        goto LABEL_52;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v69 = 136315138;
      v71 = sub_22F00A560(v61, v63, &v78);

      *(v69 + 4) = v71;
      _os_log_impl(&dword_22EFE1000, v64, v65, "%s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x2318FE8B0](v70, -1, -1);
      MEMORY[0x2318FE8B0](v69, -1, -1);

      sub_22F059B88(v68, v67);
      sub_22F059B88(v68, v67);
      sub_22F015BE4(v68, 1);
    }

LABEL_53:
    v72 = swift_task_alloc();
    *(v0 + 248) = v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD8, &qword_22F0D8BD8);
    *v72 = v0;
    v72[1] = sub_22F075A50;

    return MEMORY[0x2822004C0](v0 + 152, v73);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22F0763D8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a2;
  *(v8 + 88) = a1;
  v9 = sub_22F0D08DC();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0764A4, 0, 0);
}

uint64_t sub_22F0764A4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = sub_22F0D1A0C();
  v7 = v6;
  sub_22EFFFB40(v3, v0 + 16);
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  sub_22EFE6B9C((v0 + 16), (v8 + 2));
  v8[7] = v4;
  v8[8] = v2;
  v8[9] = v1;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CD0, &qword_22F0D8BA0);
  *v9 = v0;
  v9[1] = sub_22F0765EC;
  v11 = *(v0 + 88);

  return MEMORY[0x2821372C0](v11, v5, v7, &unk_22F0D8BE8, v8, v10);
}

uint64_t sub_22F0765EC()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (!v0)
  {
    sub_22F0D00CC();

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F076734, 0, 0);
}

uint64_t sub_22F076734()
{
  v1 = *(v0 + 176);
  sub_22F0D00CC();
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 176);
  if (v3)
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);

    sub_22F077450();
    swift_allocError();
    *v7 = v6;
    v7[1] = v5;
    swift_willThrow();
    v8 = *(v0 + 72);
    sub_22F0CFF1C();
  }

  else
  {

    *(v0 + 80) = v4;
    v9 = v4;
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v13 = *(v0 + 128);
      v12 = *(v0 + 136);
      v14 = *(v0 + 120);

      sub_22F077450();
      swift_allocError();
      *v15 = v14;
      v15[1] = v13;
      swift_willThrow();
      v16 = *(v11 + 8);
      sub_22F0CFF1C();
      v16(v10, v12);
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22F076910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22F0D05BC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0769E4, 0, 0);
}

uint64_t sub_22F0769E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = sub_22F0774A4(v1);
  v5 = v4;
  v6 = sub_22F0775A8(v1);
  v0[14] = _s6People0A9AnalyticsC24statusCoalescerStopwatch_9typeNames12contactCountAC9StopWatchCSS_SaySSGSitFZ_0(v3, v5, v6, *(v2 + 16));

  sub_22F0D05AC();
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  v12 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_22F076B74;
  v10 = v0[7];

  return v12(v10, v7, v8);
}

uint64_t sub_22F076B74(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[16] = v1;

  if (v1)
  {
    v4 = sub_22F076F08;
  }

  else
  {
    v4 = sub_22F076C90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F076C90()
{
  v26 = v0;
  if (qword_280CBDBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = sub_22F0D0A1C();
  __swift_project_value_buffer(v5, qword_280CBDBB8);
  (*(v4 + 16))(v1, v2, v3);
  sub_22F0CFF1C();
  v6 = sub_22F0D09FC();
  v7 = sub_22F0D124C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v8)
  {
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v24 = *(v0 + 104);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22F00A560(v14, v13, &v25);
    *(v15 + 12) = 2048;
    sub_22F0D056C();
    v18 = v17;
    v19 = *(v11 + 8);
    v19(v9, v12);
    *(v15 + 14) = -v18;
    _os_log_impl(&dword_22EFE1000, v6, v7, "source: %s elapsed %f", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318FE8B0](v16, -1, -1);
    MEMORY[0x2318FE8B0](v15, -1, -1);

    v19(v24, v12);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v9, v12);
    v20(v10, v12);
  }

  v21 = *(v0 + 112);
  **(v0 + 40) = *(v0 + 24);
  sub_22F076FAC(v21);
  sub_22F0D00CC();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22F076F08()
{
  v1 = v0[14];
  (*(v0[11] + 8))(v0[13], v0[10]);
  sub_22F076FAC(v1);
  sub_22F0D00CC();

  v2 = v0[1];

  return v2();
}

void sub_22F076FAC(uint64_t a1)
{
  v2 = sub_22F0D05BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 56) == 1 && (*(a1 + 40) & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = v4;
    sub_22F0D05AC();
    sub_22F0D04CC();
    v10 = v9;
    (*(v3 + 8))(v6, v8);
    v11 = v10 - v7;
    *(a1 + 48) = v11;
    *(a1 + 56) = 0;
    if (qword_280CBE8A8 != -1)
    {
      swift_once();
    }

    v19 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14C8, qword_22F0D68E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = 0x5464657370616C65;
    v13 = inited + 32;
    v14 = MEMORY[0x277D839F8];
    *(inited + 40) = 0xEB00000000656D69;
    *(inited + 72) = v14;
    *(inited + 80) = &protocol witness table for Double;
    *(inited + 48) = v11;
    v15 = sub_22F07D320(inited);
    swift_setDeallocating();
    sub_22F003A4C(v13, &qword_27DAA14D0, &qword_22F0D8880);
    v16 = sub_22F0CFF1C();
    v17 = sub_22F08F1EC(v16, v15);

    sub_22F08FCF8(&v19, v17);
  }
}

uint64_t sub_22F0771C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22F00CF60;

  return sub_22F0753F0(v7, a1, a2, v6, v9, v8);
}

uint64_t sub_22F07729C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F00CF60;

  return sub_22F0763D8(a1, v6, v4, v5, (v1 + 5), v7, v8, v9);
}

id sub_22F077378(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F015CE4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_22F077390(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F00CD54;

  return sub_22F076910(a1, (v1 + 2), v4, v5, v6);
}

unint64_t sub_22F077450()
{
  result = qword_27DAA1CE0;
  if (!qword_27DAA1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1CE0);
  }

  return result;
}

uint64_t sub_22F0774A4(uint64_t a1)
{
  sub_22EFFFB40(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E00, &qword_22F0D4FD0);
  type metadata accessor for DaemonStatusFetcher();
  if (swift_dynamicCast())
  {
    sub_22F0D00CC();
    v1 = 0x6E6F6D656164;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E18, &qword_22F0D4FE8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      v1 = 0x7320737574617473;
    }

    else
    {
      v1 = 0x6E776F6E6B6E75;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1;
}

void *sub_22F0775A8(uint64_t a1)
{
  sub_22EFFFB40(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E00, &qword_22F0D4FD0);
  type metadata accessor for DaemonStatusFetcher();
  if (swift_dynamicCast())
  {
    v1 = *(v32 + 16);
    v2 = *(v1 + 16);
    if (v2)
    {
      v29[0] = MEMORY[0x277D84F90];
      sub_22EFFC4E8(0, v2, 0);
      v3 = 0xEF74736575716552;
      v4 = v29[0];
      v5 = (v1 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = v7 == 8;
        v9 = 0xEA00000000006C6CLL;
        if (v7 == 8)
        {
          v10 = 0x614364657373696DLL;
        }

        else
        {
          v10 = 0x7261646E656C6163;
        }

        if (!v8)
        {
          v9 = 0xE800000000000000;
        }

        if (v6 == 7)
        {
          v10 = 0x7373654D64616572;
          v9 = 0xEB00000000656761;
        }

        if (v6 == 5)
        {
          v11 = 0x617453646C696863;
        }

        else
        {
          v11 = 0x654D646165726E75;
        }

        if (v6 == 5)
        {
          v12 = 0xEA00000000006574;
        }

        else
        {
          v12 = 0xED00006567617373;
        }

        if (v6 <= 6)
        {
          v10 = v11;
          v9 = v12;
        }

        v13 = 0xD000000000000011;
        if (v6 == 3)
        {
          v13 = 0x7975426F546B7361;
          v14 = v3;
        }

        else
        {
          v14 = 0x800000022F0DC350;
        }

        if (v6 == 2)
        {
          v13 = 0x6E6F697461636F6CLL;
          v14 = 0xE800000000000000;
        }

        v15 = 0xEB00000000657461;
        v16 = 0x74536E6F69746F6DLL;
        if (!v6)
        {
          v16 = 0x6C69617641646E64;
          v15 = 0xEF7974696C696261;
        }

        if (v6 <= 1)
        {
          v13 = v16;
          v14 = v15;
        }

        if (v6 <= 4)
        {
          v17 = v13;
        }

        else
        {
          v17 = v10;
        }

        if (v6 <= 4)
        {
          v18 = v14;
        }

        else
        {
          v18 = v9;
        }

        v29[0] = v4;
        v20 = v4[2];
        v19 = v4[3];
        if (v20 >= v19 >> 1)
        {
          v22 = v3;
          sub_22EFFC4E8((v19 > 1), v20 + 1, 1);
          v3 = v22;
          v4 = v29[0];
        }

        v4[2] = v20 + 1;
        v21 = &v4[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        --v2;
      }

      while (v2);
      sub_22F0D00CC();
    }

    else
    {
      sub_22F0D00CC();
      v4 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E18, &qword_22F0D4FE8);
    if (swift_dynamicCast())
    {
      sub_22EFE6B9C(&v32, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_22F0D2BF0;
      v23 = v30;
      v24 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v24 + 16))(&v28, v23, v24);
      if (v28 > 4u)
      {
        if (v28 <= 6u)
        {
          if (v28 == 5)
          {
            v25 = 0x617453646C696863;
            v26 = 0xEA00000000006574;
          }

          else
          {
            v25 = 0x654D646165726E75;
            v26 = 0xED00006567617373;
          }
        }

        else if (v28 == 7)
        {
          v25 = 0x7373654D64616572;
          v26 = 0xEB00000000656761;
        }

        else if (v28 == 8)
        {
          v26 = 0xEA00000000006C6CLL;
          v25 = 0x614364657373696DLL;
        }

        else
        {
          v26 = 0xE800000000000000;
          v25 = 0x7261646E656C6163;
        }
      }

      else if (v28 <= 1u)
      {
        if (v28)
        {
          v26 = 0xEB00000000657461;
          v25 = 0x74536E6F69746F6DLL;
        }

        else
        {
          v26 = 0xEF7974696C696261;
          v25 = 0x6C69617641646E64;
        }
      }

      else if (v28 == 2)
      {
        v26 = 0xE800000000000000;
        v25 = 0x6E6F697461636F6CLL;
      }

      else if (v28 == 3)
      {
        v25 = 0x7975426F546B7361;
        v26 = 0xEF74736575716552;
      }

      else
      {
        v26 = 0x800000022F0DC350;
        v25 = 0xD000000000000011;
      }

      v4[4] = v25;
      v4[5] = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    else
    {
      v4 = &unk_2843CB140;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v4;
}

uint64_t static PeopleFeatureFlags.shared.getter(uint64_t a1)
{
  type metadata accessor for PeopleFeatureFlags();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  if (qword_280CBEEF0 != -1)
  {
    swift_once();
  }

  v2 = (*(*off_280CBEEF8 + 136))();
  swift_beginAccess();
  *(v1 + 16) = v2;

  return v1;
}

uint64_t static FeatureFlagsProvider.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22F077D20();
  v3 = v2;
  if (v1 == sub_22F077D20() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22F0D188C();
  }

  return v5 & 1;
}

People::PeopleFeatureFlagNames_optional __swiftcall PeopleFeatureFlagNames.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22F077D20()
{
  v1 = 0;
  v2 = *(*v0 + 136);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = byte_2843C9F68[v1 + 32];
    v5 = v2();
    if (*(v5 + 16) && (v6 = sub_22EFFD904(v4), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + v6);

      if (v8)
      {
        v23 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22EFFC508(0, *(v3 + 2) + 1, 1);
          v3 = v23;
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          sub_22EFFC508((v9 > 1), v10 + 1, 1);
          v3 = v23;
        }

        *(v3 + 2) = v10 + 1;
        v3[v10 + 32] = v4;
      }
    }

    else
    {
    }

    ++v1;
  }

  while (v1 != 8);
  v11 = *(v3 + 2);
  if (v11)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v11, 0);
    v12 = 32;
    v13 = v23;
    do
    {
      v14 = sub_22F0D183C();
      v23 = v13;
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v19 = v14;
        v20 = v15;
        sub_22EFFC4E8((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v19;
        v13 = v23;
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
      ++v12;
      --v11;
    }

    while (v11);
    sub_22F0D00CC();
  }

  else
  {
    sub_22F0D00CC();
    v13 = MEMORY[0x277D84F90];
  }

  v23 = v13;
  sub_22F0CFF1C();
  sub_22F07C55C(&v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
  sub_22F0419F0(&qword_27DAA1D88, &unk_27DAA0DE0, &unk_22F0D4FB0, MEMORY[0x277D83958]);
  v21 = sub_22F0D0BAC();
  sub_22F0D00CC();
  return v21;
}

double sub_22F077FEC(uint64_t a1)
{
  sub_22F077D20();
  sub_22F0D0D5C();

  return result;
}

void sub_22F078050(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F0D188C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F0780D4(uint64_t a1)
{
  v2 = sub_22F07D074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F078110(uint64_t a1)
{
  v2 = sub_22F07D074();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22F07814C(void *a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1CF0, &qword_22F0D8CA0);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v38 = &v35 - v4;
  v5 = *(*v1 + 136);
  v42 = *v1 + 136;
  v43 = v5;
  v6 = v5(v3);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = sub_22F0CFF1C();
  v14 = 0;
  v41 = MEMORY[0x277D84F98];
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v7 + 48) + (v16 | (v14 << 6)));
    v18 = v43(v13);
    if (*(v18 + 16) && (v19 = sub_22EFFD904(v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + v19);

      if (v21)
      {
        v22 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v22;
        v24 = sub_22EFFDADC(v17);
        v25 = v22[2];
        v26 = (v23 & 1) == 0;
        v13 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_25;
        }

        v27 = v23;
        if (v22[3] >= v13)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v24;
            v13 = sub_22F060EF4();
            v24 = v41;
          }
        }

        else
        {
          sub_22F07BA1C(v13, isUniquelyReferenced_nonNull_native);
          v13 = sub_22EFFDADC(v17);
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_27;
          }

          v24 = v13;
        }

        v29 = v44;
        v41 = v44;
        if (v27)
        {
          *(v44[7] + v24) = 1;
        }

        else
        {
          v44[(v24 >> 6) + 8] |= 1 << v24;
          *(v29[6] + 8 * v24) = v17;
          *(v29[7] + v24) = 1;
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_26;
          }

          v29[2] = v32;
        }
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      sub_22F0D00CC();

      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      sub_22F07D074();
      v33 = v38;
      sub_22F0D19FC();
      v44 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D00, &qword_22F0D8CA8);
      sub_22F07D0C8(&qword_27DAA1D08, MEMORY[0x277D83B90], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
      v34 = v40;
      sub_22F0D180C();
      (*(v39 + 8))(v33, v34);

      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F078508(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D10, &qword_22F0D8CB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F07D074();
  result = sub_22F0D19EC();
  if (v2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D00, &qword_22F0D8CA8);
  sub_22F07D0C8(&qword_27DAA1D18, MEMORY[0x277D83BB8], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
  sub_22F0D17BC();
  v54 = 0;
  v53 = v6;
  v10 = v55[0];
  v11 = (*v3 + 152);
  v51 = *v11;
  v52 = v3;
  v50 = v11;
  v12 = v51(v55);
  v14 = v13;

  *v14 = MEMORY[0x277D84F98];
  v12(v55, 0);
  v15 = v10 + 64;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v10 + 64);
  v19 = (v16 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  while (v18)
  {
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v10 + 48) + ((v20 << 9) | (8 * v22)));
    if (v23 <= 7)
    {
      if (*(v10 + 16))
      {
        v24 = sub_22EFFDADC(v23);
        if ((v25 & 1) != 0 && *(*(v10 + 56) + v24) == 1)
        {
          v49 = v10;
          v47 = v51(v55);
          v27 = v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = *v27;
          v28 = v56;
          v46 = v27;
          *v27 = 0x8000000000000000;
          v30 = sub_22EFFD904(v23);
          v31 = v28[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_29;
          }

          if (v28[3] >= v33)
          {
            v10 = v49;
            if (isUniquelyReferenced_nonNull_native)
            {
              v40 = v56;
              if (v29)
              {
                goto LABEL_21;
              }
            }

            else
            {
              isUniquelyReferenced_nonNull_native = v29;
              v45 = v30;
              sub_22F05F840();
              v30 = v45;
              v40 = v56;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            v34 = v29;
            sub_22F0795A8(v33, isUniquelyReferenced_nonNull_native);
            v35 = sub_22EFFD904(v23);
            v37 = v36 & 1;
            v38 = v34;
            v39 = v34 & 1;
            v10 = v49;
            if (v39 != v37)
            {
              goto LABEL_31;
            }

            v30 = v35;
            v40 = v56;
            if (v38)
            {
LABEL_21:
              *(v40[7] + v30) = 1;
              goto LABEL_25;
            }
          }

          v40[(v30 >> 6) + 8] |= 1 << v30;
          *(v40[6] + v30) = v23;
          *(v40[7] + v30) = 1;
          v41 = v40[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_30;
          }

          v40[2] = v43;
LABEL_25:
          v44 = v47;
          *v46 = v40;

          v44(v55, 0);
        }
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
      (*(v53 + 8))(v8, v5);
      sub_22F0D00CC();
      return swift_bridgeObjectRelease_n();
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t FeatureFlagsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t FeatureFlagsProvider.__allocating_init(from:)(void *a1)
{
  v4 = (*(v1 + 120))();
  sub_22F078508(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v2)
  {
    sub_22F0D00CC();
  }

  return v4;
}

double sub_22F078A58()
{
  swift_beginAccess();
  sub_22F0CFF1C();
  return result;
}

double sub_22F078A90(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_22F078B28(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 136))();
  if (*(v3 + 16) && (v4 = sub_22EFFD904(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_22F078BA4()
{
  sub_22F0D199C();
  sub_22F077D20();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F078C00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_22F078CA4(uint64_t a1)
{
  sub_22F077D20();
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F078CF8(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F077D20();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F078D54()
{
  v0 = sub_22F077D20();
  v2 = v1;
  if (v0 == sub_22F077D20() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22F0D188C();
  }

  return v5 & 1;
}

void *sub_22F078DDC(uint64_t a1)
{
  type metadata accessor for PeopleFeatureFlags();
  swift_allocObject();
  result = sub_22F07905C(1);
  off_280CBEEF8 = result;
  return result;
}

uint64_t static PeopleFeatureFlags.isDomainFeatureFlagEnabled(for:feature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = sub_22F0D153C();
  v22 = v12;
  MEMORY[0x2318FD2C0](46, 0xE100000000000000);
  v13 = sub_22F0D153C();
  MEMORY[0x2318FD2C0](v13);

  if (qword_280CBDBF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = off_27DAA1CE8;
  if (*(off_27DAA1CE8 + 2) && (v15 = sub_22EFFDA80(v21, v22), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + v15);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_22F07CF94(MEMORY[0x277D84F90]);
    if (qword_280CBEEF0 != -1)
    {
      swift_once();
    }

    (*(*off_280CBEEF8 + 136))();

    v17 = sub_22F07E1A8(a1, a2, a3, a4, a5, a6);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = off_27DAA1CE8;
    off_27DAA1CE8 = 0x8000000000000000;
    sub_22F0184B4(v17 & 1, v21, v22, isUniquelyReferenced_nonNull_native);

    off_27DAA1CE8 = v20;
    swift_endAccess();
  }

  return v17 & 1;
}

uint64_t sub_22F07905C(char a1)
{
  *(v1 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
  if ((a1 & 1) == 0)
  {
    return v1;
  }

  v34 = (v1 + 16);
  v35 = v1;
  v3 = sub_22F07CF94(MEMORY[0x277D84F90]);
  v4 = 0;
  v5 = byte_2843C9F68;
  while (1)
  {
    v6 = v5[v4 + 32];
    if (v6 <= 3)
    {
      if (v5[v4 + 32] <= 1u)
      {
        if (v5[v4 + 32])
        {
          v7 = "showCityState";
          v8 = 13;
        }

        else
        {
          v7 = "AllCoreMotionStatus";
          v8 = 19;
        }

        goto LABEL_21;
      }

      if (v6 == 2)
      {
        v7 = "CalendarPersonStatus";
        v8 = 20;
        goto LABEL_21;
      }

      v7 = "showLocationBadge";
LABEL_20:
      v8 = 17;
      goto LABEL_21;
    }

    if (v5[v4 + 32] > 5u)
    {
      if (v6 == 6)
      {
        v7 = "lockScreenWidget";
        v8 = 16;
        goto LABEL_21;
      }

      v7 = "PeopleWidgetOnMac";
      goto LABEL_20;
    }

    if (v6 == 4)
    {
      v7 = "multiBadgeInWidget";
      v8 = 18;
    }

    else
    {
      v7 = "requestsAndLocation";
      v8 = 19;
    }

LABEL_21:
    v36 = v3;
    v37[3] = &type metadata for FeatureFlagsProvider.Key;
    v37[4] = sub_22F07E98C();
    v9 = swift_allocObject();
    v37[0] = v9;
    *(v9 + 16) = "People";
    *(v9 + 24) = 6;
    *(v9 + 32) = 2;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    *(v9 + 56) = 2;
    v10 = sub_22F0D070C();
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (qword_280CBEF00 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_280CBEF08);
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D124C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = v5;
      v16 = swift_slowAlloc();
      v37[0] = v16;
      *v14 = 136315394;
      v17 = sub_22F0D153C();
      v19 = sub_22F00A560(v17, v18, v37);

      *(v14 + 4) = v19;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v10 & 1;
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s is enabled: %{BOOL}d", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v20 = v16;
      v5 = v15;
      MEMORY[0x2318FE8B0](v20, -1, -1);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }

    v3 = v36;
    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v36;
    v22 = sub_22EFFD904(v6);
    v24 = *(v36 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (*(v36 + 24) < v27)
    {
      sub_22F0795A8(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_22EFFD904(v6);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_40;
      }

LABEL_31:
      v3 = v37[0];
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v32 = v22;
    sub_22F05F840();
    v22 = v32;
    v3 = v37[0];
    if (v28)
    {
LABEL_3:
      *(v3[7] + v22) = 1;
      goto LABEL_4;
    }

LABEL_32:
    v3[(v22 >> 6) + 8] |= 1 << v22;
    *(v3[6] + v22) = v6;
    *(v3[7] + v22) = 1;
    v30 = v3[2];
    v26 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v26)
    {
      goto LABEL_39;
    }

    v3[2] = v31;
LABEL_4:
    if (++v4 == 8)
    {
      swift_beginAccess();
      *v34 = v3;

      return v35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t PeopleFeatureFlags.__allocating_init(from:)(void *a1)
{
  _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x726F707075736E55, 0xEB00000000646574, 500);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t PeopleFeatureFlags.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F0795A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1970, &qword_22F0D8478);
  result = sub_22F0D170C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_22F0D199C();
      MEMORY[0x2318FDEE0](v20);
      result = sub_22F0D19CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {
      result = sub_22F0D00CC();
      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  result = sub_22F0D00CC();
LABEL_31:
  *v3 = v7;
  return result;
}