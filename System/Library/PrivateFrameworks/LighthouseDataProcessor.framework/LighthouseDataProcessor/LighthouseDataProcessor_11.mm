uint64_t BiomeSessionBuilder.deinit()
{

  return v0;
}

uint64_t BiomeSessionBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20E1AC728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for SessionViewConfigs(0);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[4] = v3;
  v2[5] = v4;

  return MEMORY[0x2822009F8](sub_20E1AC7C0, 0, 0);
}

uint64_t sub_20E1AC7C0()
{
  v1 = v0[4];
  v2 = v0[3];

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  sub_20E322000();
  *(v1 + *(v2 + 24)) = 0;
  *(v1 + *(v2 + 28)) = &unk_282537478;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_20E1AC8A8;
  v4 = v0[4];
  v5 = v0[2];

  return sub_20E1A8E9C(v5, v4);
}

uint64_t sub_20E1AC8A8()
{

  return MEMORY[0x2822009F8](sub_20E1AC9A4, 0, 0);
}

uint64_t sub_20E1AC9A4()
{
  sub_20E1B2484(*(v0 + 32), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1ACA24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20E04CC18;

  return sub_20E1A5E88(a1, a2);
}

unint64_t sub_20E1ACAD0(uint64_t a1, uint64_t a2)
{
  sub_20E322DE0();
  sub_20E3228F0();
  v4 = sub_20E322E00();

  return sub_20E1ACBD4(a1, a2, v4);
}

unint64_t sub_20E1ACB48(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x20F32C400](*(v1 + 40), a1, 4);

  return sub_20E1ACC8C(v2, v3);
}

unint64_t sub_20E1ACB90(uint64_t a1)
{
  v2 = sub_20E322DD0();

  return sub_20E1ACCF8(a1, v2);
}

unint64_t sub_20E1ACBD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20E322D60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20E1ACC8C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_20E1ACCF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(startDate:maxEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20E04CE24;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20E04CE24;

  return v6(a1);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(streams:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 176) + **(*v2 + 176));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20E04CC18;

  return v8(a1, a2);
}

uint64_t dispatch thunk of BiomeSessionBuilder.buildSessionView(startDate:maxEvents:streams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_20E04CE24;

  return v12(a1, a2, a3, a4);
}

uint64_t (*sub_20E1AD2A8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_20E1AFB5C(v7);
  v7[9] = sub_20E1AF310(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_20E1B26A8;
}

uint64_t (*sub_20E1AD354(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_20E1AFB84(v7);
  v7[9] = sub_20E1AF628(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_20E1AD400;
}

void sub_20E1AD404(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_20E1AD464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_20E1ACAD0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20E1AF0B8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for RequestData(0);
    v19 = *(v12 - 8);
    sub_20E1B2624(v11 + *(v19 + 72) * v8, a3, type metadata accessor for RequestData);
    sub_20E1AE468(v8, v10, type metadata accessor for RequestData);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RequestData(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_20E1AD5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ParticipantInfo(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A10, &qword_20E3238F0);
  v37 = v4;
  result = sub_20E322BE0();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_20E1B2624(v25, v7, type metadata accessor for ParticipantInfo);
      }

      else
      {
        sub_20E1B25BC(v25, v7, type metadata accessor for ParticipantInfo);
      }

      result = sub_20E322DD0();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_20E1B2624(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ParticipantInfo);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_20E1AD92C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SessionData(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A90, &unk_20E33C050);
  v40 = v4;
  result = sub_20E322BE0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_20E1B2624(v28, v41, type metadata accessor for SessionData);
      }

      else
      {
        sub_20E1B25BC(v28, v41, type metadata accessor for SessionData);
      }

      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_20E1B2624(v41, *(v9 + 56) + v27 * v17, type metadata accessor for SessionData);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20E1ADCA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RequestData(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E8, &qword_20E3238C8);
  v40 = v4;
  result = sub_20E322BE0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_20E1B2624(v28, v41, type metadata accessor for RequestData);
      }

      else
      {
        sub_20E1B25BC(v28, v41, type metadata accessor for RequestData);
      }

      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_20E1B2624(v41, *(v9 + 56) + v27 * v17, type metadata accessor for RequestData);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20E1AE01C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_20E322BE0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_20E1AE2BC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20E322AC0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_20E322DD0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ParticipantInfo(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20E1AE468(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_20E322AC0() + 1) & ~v6;
    while (1)
    {
      sub_20E322DE0();

      sub_20E3228F0();
      v11 = sub_20E322E00();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20E1AE65C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20E1ACB90(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ParticipantInfo(0);
      return sub_20E1B1120(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ParticipantInfo);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_20E1AEC2C();
    goto LABEL_7;
  }

  sub_20E1AD5E4(v13, a3 & 1);
  v20 = sub_20E1ACB90(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_20E322DB0();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_20E1AEAD8(v10, a2, a1, v16);
}

void sub_20E1AE7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20E1ACAD0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RequestData(0);
      sub_20E1B1120(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RequestData);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_20E1AF0B8();
    goto LABEL_7;
  }

  sub_20E1ADCA4(v15, a4 & 1);
  v21 = sub_20E1ACAD0(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_20E322DB0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_20E1AEB80(v12, a2, a3, a1, v18, type metadata accessor for RequestData, type metadata accessor for RequestData);
}

void sub_20E1AE944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20E1ACAD0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for SessionData(0);
      sub_20E1B1120(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for SessionData);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_20E1AEE60();
    goto LABEL_7;
  }

  sub_20E1AD92C(v15, a4 & 1);
  v21 = sub_20E1ACAD0(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_20E322DB0();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_20E1AEB80(v12, a2, a3, a1, v18, type metadata accessor for SessionData, type metadata accessor for SessionData);
}

uint64_t sub_20E1AEAD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ParticipantInfo(0);
  result = sub_20E1B2624(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ParticipantInfo);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_20E1AEB80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_20E1B2624(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *sub_20E1AEC2C()
{
  v1 = v0;
  v2 = type metadata accessor for ParticipantInfo(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A10, &qword_20E3238F0);
  v5 = *v0;
  v6 = sub_20E322BD0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_20E1B25BC(*(v5 + 56) + v22, v4, type metadata accessor for ParticipantInfo);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_20E1B2624(v4, *(v7 + 56) + v22, type metadata accessor for ParticipantInfo);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_20E1AEE60()
{
  v1 = v0;
  v2 = type metadata accessor for SessionData(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A90, &unk_20E33C050);
  v4 = *v0;
  v5 = sub_20E322BD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_20E1B25BC(*(v4 + 56) + v26, v30, type metadata accessor for SessionData);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_20E1B2624(v25, *(v27 + 56) + v26, type metadata accessor for SessionData);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_20E1AF0B8()
{
  v1 = v0;
  v2 = type metadata accessor for RequestData(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E8, &qword_20E3238C8);
  v4 = *v0;
  v5 = sub_20E322BD0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_20E1B25BC(*(v4 + 56) + v26, v30, type metadata accessor for RequestData);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_20E1B2624(v25, *(v27 + 56) + v26, type metadata accessor for RequestData);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void (*sub_20E1AF310(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for SessionData(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_20E1ACAD0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_20E1B2624(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for SessionData);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_20E1AF5EC;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_20E1AEE60();
      goto LABEL_16;
    }

    sub_20E1AD92C(v25, a4 & 1);
    v29 = sub_20E1ACAD0(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void (*sub_20E1AF628(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, uint64_t a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RequestData(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_20E1ACAD0(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_20E1B2624(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for RequestData);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_20E1AF904;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_20E1AF0B8();
      goto LABEL_16;
    }

    sub_20E1ADCA4(v25, a4 & 1);
    v29 = sub_20E1ACAD0(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void sub_20E1AF940(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = *a1;
  v11 = *(*a1 + 24);
  v12 = (*(*a1 + 32) + 48);
  v13 = *(*a1 + 80);
  if (a2)
  {
    v14 = *(v10 + 8);
    sub_20E0486F4(v13, v14, a3, a4);
    v15 = (*v12)(v14, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 8);
    if (v15 != 1)
    {
      v18 = *(v10 + 2);
      sub_20E1B2624(v17, *(v10 + 6), a5);
      v19 = *v18;
      v20 = *(v10 + 11);
      v21 = *(v10 + 6);
      if ((v16 & 1) == 0)
      {
LABEL_4:
        v22 = *(v10 + 5);
        v24 = *v10;
        v23 = *(v10 + 1);
        sub_20E1B2624(v21, v22, a5);
        sub_20E1AEB80(v20, v24, v23, v22, v19, a6, a5);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = *(v10 + 9);
    sub_20E0486F4(v13, v25, a3, a4);
    v26 = (*v12)(v25, 1, v11);
    v16 = *(v10 + 96);
    v17 = *(v10 + 9);
    if (v26 != 1)
    {
      v29 = *(v10 + 2);
      sub_20E1B2624(v17, *(v10 + 7), a5);
      v19 = *v29;
      v20 = *(v10 + 11);
      v21 = *(v10 + 7);
      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_20E1B2624(v21, v19[7] + *(*(v10 + 4) + 72) * v20, a5);
      goto LABEL_10;
    }
  }

  sub_20E04875C(v17, a3, a4);
  if (v16)
  {
    v27 = *(v10 + 11);
    v28 = **(v10 + 2);
    sub_20E1B1188(*(v28 + 48) + 16 * v27);
    sub_20E1AE468(v27, v28, a6);
  }

LABEL_10:
  v30 = *(v10 + 9);
  v31 = *(v10 + 10);
  v33 = *(v10 + 7);
  v32 = *(v10 + 8);
  v35 = *(v10 + 5);
  v34 = *(v10 + 6);
  sub_20E04875C(v31, a3, a4);
  free(v31);
  free(v30);
  free(v32);
  free(v33);
  free(v34);
  free(v35);

  free(v10);
}

uint64_t (*sub_20E1AFB5C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20E1B2690;
}

uint64_t (*sub_20E1AFB84(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20E1AFBAC;
}

uint64_t sub_20E1AFBB8(uint64_t result)
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

  result = sub_20E225240(result, v10, 1, v3);
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

uint64_t sub_20E1AFCAC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20E322DE0();
  sub_20E3228F0();
  v8 = sub_20E322E00();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20E322D60() & 1) != 0)
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

    sub_20E1B005C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20E1AFDFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  result = sub_20E322AE0();
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
      sub_20E322DE0();
      sub_20E3228F0();
      result = sub_20E322E00();
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

void sub_20E1B005C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20E1AFDFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_20E1B01DC();
      goto LABEL_16;
    }

    sub_20E1B0338(v8 + 1);
  }

  v10 = *v4;
  sub_20E322DE0();
  sub_20E3228F0();
  v11 = sub_20E322E00();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_20E322D60() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_20E322DA0();
  __break(1u);
}

void sub_20E1B01DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  v2 = *v0;
  v3 = sub_20E322AD0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

    *v1 = v4;
  }
}

uint64_t sub_20E1B0338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AC8, &qword_20E33C0A0);
  result = sub_20E322AE0();
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
      sub_20E322DE0();

      sub_20E3228F0();
      result = sub_20E322E00();
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

void *sub_20E1B0570(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_20E1B06C8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_20E1B0820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_20E322010();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1B091C, 0, 0);
}

uint64_t sub_20E1B091C()
{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = [v0[22] startDate];
  if (v1)
  {
    v2 = v1;
    sub_20E321FD0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[25];
    v6 = v0[26];
    v7 = sub_20E3227C0();
    __swift_project_value_buffer(v7, qword_280E12C48);
    (*(v6 + 16))(v3, v4, v5);
    v8 = sub_20E3227B0();
    v9 = sub_20E322A40();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[27];
    v12 = v0[28];
    v14 = v0[25];
    v13 = v0[26];
    if (v10)
    {
      v69 = v0[28];
      v15 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70[0] = v68;
      *v15 = 136315138;
      sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v16 = sub_20E322D50();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v14);
      v20 = sub_20E31B6C4(v16, v18, v70);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_20E031000, v8, v9, "Loading biome events with bookmark: collecting from %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F32CA80](v68, -1, -1);
      MEMORY[0x20F32CA80](v15, -1, -1);

      v19(v69, v14);
    }

    else
    {

      v21 = *(v13 + 8);
      v21(v11, v14);
      v21(v12, v14);
    }
  }

  v22 = v0[21];
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F90];
  v24 = (v23 + 16);
  v25 = BiomeLibrary();
  v0[20] = 0;
  v26 = [v25 streamWithIdentifier:v22 error:v0 + 20];
  swift_unknownObjectRelease();
  v27 = v0[20];
  if (v26)
  {
    v28 = v0[22];
    v29 = v27;
    v30 = sub_20E322860();
    v31 = [v26 publisherWithUseCase:v30 options:v28];

    if (v31)
    {
      v33 = v0[23];
      v32 = v0[24];
      v34 = v0[21];
      v0[6] = nullsub_1;
      v0[7] = 0;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_20E1A4ABC;
      v0[5] = &block_descriptor_1;
      v35 = _Block_copy(v0 + 2);
      v36 = swift_allocObject();
      v36[2] = v23;
      v36[3] = v33;
      v36[4] = v32;
      v36[5] = v34;
      v0[12] = sub_20E1B2560;
      v0[13] = v36;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_20E1A4B24;
      v0[11] = &block_descriptor_29;
      v37 = _Block_copy(v0 + 8);
      v38 = v34;

      v39 = v31;
      v40 = v31;

      v41 = [v40 sinkWithCompletion:v35 receiveInput:v37];
      _Block_release(v37);
      _Block_release(v35);

      v31 = v39;
    }

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v42 = v0[21];
    v43 = sub_20E3227C0();
    __swift_project_value_buffer(v43, qword_280E12C48);
    v44 = v42;

    v45 = sub_20E3227B0();
    v46 = sub_20E322A40();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v70[0] = v48;
      *v47 = 134218242;
      swift_beginAccess();
      if (*v24 >> 62)
      {
        v49 = sub_20E322BC0();
      }

      else
      {
        v49 = *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v47 + 4) = v49;

      *(v47 + 12) = 2080;
      v50 = sub_20E322890();
      v52 = sub_20E31B6C4(v50, v51, v70);

      *(v47 + 14) = v52;
      _os_log_impl(&dword_20E031000, v45, v46, "%ld of events loaded from %s Biome stream", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x20F32CA80](v48, -1, -1);
      MEMORY[0x20F32CA80](v47, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v65 = *(v23 + 16);
  }

  else
  {
    v53 = v27;
    v54 = sub_20E321EF0();

    swift_willThrow();
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v55 = v0[21];
    v56 = sub_20E3227C0();
    __swift_project_value_buffer(v56, qword_280E12C48);
    v57 = v55;
    v58 = sub_20E3227B0();
    v59 = sub_20E322A50();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70[0] = v61;
      *v60 = 136315138;
      v62 = sub_20E322890();
      v64 = sub_20E31B6C4(v62, v63, v70);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_20E031000, v58, v59, "Unable to create stream from BMLibrary identifer:  %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x20F32CA80](v61, -1, -1);
      MEMORY[0x20F32CA80](v60, -1, -1);
    }

    v65 = 0;
  }

  v66 = v0[1];

  return v66(v65);
}

uint64_t sub_20E1B1120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_20E1B11DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AA8, &qword_20E33C080);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB0, &qword_20E33C088);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v47 - v6;
  v60 = sub_20E322600();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v47 - v10;
  v11 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v56 = v14;
  v49 = *(v13 + 64);
  v54 = (v49 + 32) & ~v49;
  v15 = a1 + v54;
  v16 = *(v13 + 56);
  v51 = 0x800000020E35F770;
  v58 = (v13 + 16);
  v48 = xmmword_20E326380;
  v52 = v13;
  v53 = v4;
  v55 = v16;
  while (1)
  {
    v56(v59, v15, v60);
    sub_20E3225F0();
    v17 = sub_20E3225E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_20E04875C(v4, &qword_27C868AA8, &qword_20E33C080);
      v19 = 0xD000000000000011;
      v20 = v51;
    }

    else
    {
      v21 = v50;
      sub_20E3225D0();
      v22 = v21;
      (*(v18 + 8))(v4, v17);
      v23 = sub_20E322630();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v21, 1, v23) == 1)
      {
        sub_20E04875C(v21, &qword_27C868AB0, &qword_20E33C088);
        v19 = 0xD000000000000011;
        v20 = v51;
      }

      else
      {
        v19 = sub_20E322620();
        v20 = v25;
        (*(v24 + 8))(v22, v23);
      }

      v16 = v55;
    }

    v27 = sub_20E1ACAD0(v19, v20);
    v28 = v11[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v11[3] < v30)
    {
      sub_20E1AE01C(v30, 1, &qword_27C868AC0, &qword_20E33C098);
      v11 = v61;
      v32 = sub_20E1ACAD0(v19, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

      v27 = v32;
    }

    if (v31)
    {

      v34 = v11[7];
      v35 = *v58;
      (*v58)(v57, v59, v60);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_20E225564(0, *(v36 + 2) + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_20E225564((v38 > 1), v39 + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      *(v36 + 2) = v39 + 1;
      v16 = v55;
      v35(&v36[v54 + v39 * v55], v57, v60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
      v40 = v54;
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      (*v58)((v41 + v40), v59, v60);
      v11[(v27 >> 6) + 8] |= 1 << v27;
      v42 = (v11[6] + 16 * v27);
      *v42 = v19;
      v42[1] = v20;
      *(v11[7] + 8 * v27) = v41;
      v43 = v11[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_24;
      }

      v11[2] = v45;
    }

    v15 += v16;
    --v12;
    v4 = v53;
    if (!v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void *sub_20E1B1754(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v38 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v38 + 32) & ~v38;
  v11 = a1 + v40;
  v37 = xmmword_20E326380;
  v41 = v5;
  v39 = v10;
  while (1)
  {
    sub_20E1B25BC(v11, v7, type metadata accessor for TranscriptProtoEvent);
    v15 = *(v7 + 6);
    v14 = *(v7 + 7);

    v17 = sub_20E1ACAD0(v15, v14);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_20E1AE01C(v20, 1, &qword_27C868AA0, &qword_20E33C078);
      v8 = v42;
      v22 = sub_20E1ACAD0(v15, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v8[7];
      sub_20E1B2624(v7, v41, type metadata accessor for TranscriptProtoEvent);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_20E2251F0(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_20E2251F0((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v25[2] = v28 + 1;
      v12 = v25 + v40 + v28 * v39;
      v13 = v39;
      sub_20E1B2624(v41, v12, type metadata accessor for TranscriptProtoEvent);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v37;
      sub_20E1B2624(v7, v30 + v29, type metadata accessor for TranscriptProtoEvent);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      v31 = (v8[6] + 16 * v17);
      *v31 = v15;
      v31[1] = v14;
      *(v8[7] + 8 * v17) = v30;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v8[2] = v34;
      v13 = v39;
    }

    v11 += v13;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B1AB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F32C070](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20E1AFCAC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_20E1B1B48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AA8, &qword_20E33C080);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB0, &qword_20E33C088);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v47 - v6;
  v60 = sub_20E322600();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v47 - v10;
  v11 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v56 = v14;
  v49 = *(v13 + 64);
  v54 = (v49 + 32) & ~v49;
  v15 = a1 + v54;
  v16 = *(v13 + 56);
  v51 = 0x800000020E35F750;
  v58 = (v13 + 16);
  v48 = xmmword_20E326380;
  v52 = v13;
  v53 = v4;
  v55 = v16;
  while (1)
  {
    v56(v59, v15, v60);
    sub_20E3225F0();
    v17 = sub_20E3225E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      sub_20E04875C(v4, &qword_27C868AA8, &qword_20E33C080);
      v19 = 0xD000000000000011;
      v20 = v51;
    }

    else
    {
      v21 = v50;
      sub_20E3225D0();
      v22 = v21;
      (*(v18 + 8))(v4, v17);
      v23 = sub_20E322630();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v21, 1, v23) == 1)
      {
        sub_20E04875C(v21, &qword_27C868AB0, &qword_20E33C088);
        v19 = 0xD000000000000011;
        v20 = v51;
      }

      else
      {
        v19 = sub_20E322610();
        v20 = v25;
        (*(v24 + 8))(v22, v23);
      }

      v16 = v55;
    }

    v27 = sub_20E1ACAD0(v19, v20);
    v28 = v11[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v11[3] < v30)
    {
      sub_20E1AE01C(v30, 1, &qword_27C868AC0, &qword_20E33C098);
      v11 = v61;
      v32 = sub_20E1ACAD0(v19, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

      v27 = v32;
    }

    if (v31)
    {

      v34 = v11[7];
      v35 = *v58;
      (*v58)(v57, v59, v60);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_20E225564(0, *(v36 + 2) + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_20E225564((v38 > 1), v39 + 1, 1, v36);
        *(v34 + 8 * v27) = v36;
      }

      *(v36 + 2) = v39 + 1;
      v16 = v55;
      v35(&v36[v54 + v39 * v55], v57, v60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AB8, &qword_20E33C090);
      v40 = v54;
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      (*v58)((v41 + v40), v59, v60);
      v11[(v27 >> 6) + 8] |= 1 << v27;
      v42 = (v11[6] + 16 * v27);
      *v42 = v19;
      v42[1] = v20;
      *(v11[7] + 8 * v27) = v41;
      v43 = v11[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_24;
      }

      v11[2] = v45;
    }

    v15 += v16;
    --v12;
    v4 = v53;
    if (!v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

void *sub_20E1B20C0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v38 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v38 + 32) & ~v38;
  v11 = a1 + v40;
  v37 = xmmword_20E326380;
  v41 = v5;
  v39 = v10;
  while (1)
  {
    sub_20E1B25BC(v11, v7, type metadata accessor for TranscriptProtoEvent);
    v15 = *(v7 + 4);
    v14 = *(v7 + 5);

    v17 = sub_20E1ACAD0(v15, v14);
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_20E1AE01C(v20, 1, &qword_27C868AA0, &qword_20E33C078);
      v8 = v42;
      v22 = sub_20E1ACAD0(v15, v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v8[7];
      sub_20E1B2624(v7, v41, type metadata accessor for TranscriptProtoEvent);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_20E2251F0(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_20E2251F0((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v25[2] = v28 + 1;
      v12 = v25 + v40 + v28 * v39;
      v13 = v39;
      sub_20E1B2624(v41, v12, type metadata accessor for TranscriptProtoEvent);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v37;
      sub_20E1B2624(v7, v30 + v29, type metadata accessor for TranscriptProtoEvent);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      v31 = (v8[6] + 16 * v17);
      *v31 = v15;
      v31[1] = v14;
      *(v8[7] + 8 * v17) = v30;
      v32 = v8[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v8[2] = v34;
      v13 = v39;
    }

    v11 += v13;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20E322DB0();
  __break(1u);
  return result;
}

uint64_t sub_20E1B241C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionSignature(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1B2484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1B24E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20E1B256C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20E1B25BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1B2624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t JoinableStreams.debugDescription.getter()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t JoinableStreams.hashValue.getter()
{
  v1 = *v0;
  sub_20E322DE0();
  MEMORY[0x20F32C430](v1);
  return sub_20E322E00();
}

unint64_t sub_20E1B2774()
{
  result = qword_27C868AE8;
  if (!qword_27C868AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868AE8);
  }

  return result;
}

unint64_t sub_20E1B27C8()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t type metadata accessor for SessionViewConfigs(uint64_t a1)
{
  result = qword_280E10148;
  if (!qword_280E10148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20E1B2884(uint64_t a1)
{
  sub_20E322010();
  if (v1 <= 0x3F)
  {
    sub_20E1B2918();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E1B2918()
{
  if (!qword_27C868AF0)
  {
    v0 = sub_20E3229D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27C868AF0);
    }
  }
}

unint64_t TranscriptProtoEvent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[12]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = v2[13];
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[14];
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[15];
  v11 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0xE000000000000000;
  result = sub_20E048A4C(MEMORY[0x277D84F90]);
  *(a1 + 10) = result;
  return result;
}

LighthouseDataProcessor::TranscriptProtoCandidateSource_optional __swiftcall TranscriptProtoCandidateSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoPlanSource_optional __swiftcall TranscriptProtoPlanSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302060100uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoPrefixExpression_PrefixOp_optional __swiftcall TranscriptProtoPrefixExpression_PrefixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoInfixExpression_InfixOp_optional __swiftcall TranscriptProtoInfixExpression_InfixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 19;
  if (rawValue < 0x13)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoUpdateParameterExpression_UpdateKind_optional __swiftcall TranscriptProtoUpdateParameterExpression_UpdateKind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

LighthouseDataProcessor::TranscriptProtoGender_optional __swiftcall TranscriptProtoGender.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TranscriptProtoEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TranscriptProtoTranscript.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoTranscript(0);
  a1[3] = 0;
  a1[4] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoTimepoint.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  v3 = sub_20E322150();
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoSessionStart.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoSessionStart(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3138@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B31D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[8];
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v2[10];
  v13 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  v14 = v2[11];
  v15 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_20E1B35CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3668@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B3704(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B38B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B3968@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B3A04(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v5(&a1[v2[7]], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B3CF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a2;
  return result;
}

double TranscriptProtoSpeechPackage.Token.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = *(v3 + 24);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B3FF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B408C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B4338@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_20E1B4560@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

unint64_t TranscriptProtoAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoAction(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  result = sub_20E048D9C(MEMORY[0x277D84F90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20E1B4E98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoExternalAgentOutcome.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoStatementResult.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a1[v5], 1, 1, v6);
  v7(&a1[v2[7]], 1, 1, v6);
  v7(&a1[v2[8]], 1, 1, v6);
  v8 = v2[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B53F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B5490(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E1B56D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  a1(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

unint64_t TranscriptProtoClientAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientAction(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = *(v2 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(a1 + 16) = sub_20E04916C(MEMORY[0x277D84F90]);
  result = sub_20E049354(v5);
  *(a1 + 24) = result;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_20E1B5BB8@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1B5C84@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  a2[1] = 0;
  a2[2] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_20E1B5EB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = v2[10];
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_20E326350;
  *(a1 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 28), 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E1B74E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1(0) + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoPlan.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 6;
  type metadata accessor for TranscriptProtoPlan(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E1B7834@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B78D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  v3 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B7CD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v9 = a1(0);
  v10 = v9[5];
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = v9[6];
  v13 = a3(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = v9[7];
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a5[v14], 1, 1, v15);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = 0;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoResponseDialog(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoDialogType(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v12 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_20E1B845C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E1B84F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoResponseManifest.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  a1[v2[9]] = 2;
  a1[v2[10]] = 2;
  v9 = v2[11];
  v10 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoResponseParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_20E323EA0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  v3 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v5;
  return result;
}

uint64_t sub_20E1B9008@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t TranscriptProtoUIConfirmationLabel.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return result;
}

double TranscriptProtoArchiveViewPayload.init()@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  a1[1] = 0u;
  a1[2] = 0u;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a1 = xmmword_20E326350;
  return result;
}

double sub_20E1B9428@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_20E1B9508@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoContextRetrieved(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  return result;
}

uint64_t sub_20E1B9BF0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = *(type metadata accessor for TranscriptProtoParameter(0) + 24);
  v3 = type metadata accessor for TranscriptProtoCandidate(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1B9FE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = *(a1(0) + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_20E1BA144@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a1(0) + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a3;
  return result;
}

unint64_t TranscriptProtoASTFlatExprCallVariant.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  result = sub_20E049714(MEMORY[0x277D84F90]);
  a1[2] = result;
  return result;
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  type metadata accessor for TranscriptProtoASTPickType(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BA790@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v3 = *(updated + 24);
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(updated + 28), 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_20E1BAE38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  a1(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_20E1BAF30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v7 = a2(0);
  v6(a3 + *(v7 + 20), 1, 1, v5);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BB45C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a3[v6], 1, 1, v7);
  v8(&a3[*(v5 + 24)], 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_20E1BB5C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = *(updated + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(updated + 28);
  *v5 = 0;
  *(v5 + 8) = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoGlobalToolIdentifier.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  a1[2] = 0;
  a1[3] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoSearchExpression(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  return result;
}

unint64_t TranscriptProtoStructuredSearchExpression.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v4 = MEMORY[0x277D84F90];
  result = sub_20E0498FC(MEMORY[0x277D84F90]);
  *a1 = result;
  *(a1 + 1) = v4;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v3(a1 + *(v4 + 20), 1, 1, v2);
  v3(a1 + *(v4 + 24), 1, 1, v2);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v3;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  *v5 = 0;
  *(v5 + 1) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[6], 1, 1, v5);
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  v6(a1 + v3[9], 1, 1, v5);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[6]) = 2;
  *(a1 + v3[7]) = 2;
  v6 = a1 + v3[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v3[9];
  v8 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BD020@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoGenderSettings.init()@<X0>(_WORD *a1@<X8>)
{
  type metadata accessor for TranscriptProtoGenderSettings(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TranscriptProtoStatementID(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 32), 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoClientUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + *(v2 + 28), 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoTypeConversionRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E1BD858@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a2(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + *(v6 + 24), 1, 1, v8);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t TranscriptProtoQueryDecorationResult.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 28);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a1[v2], 1, 1, DecorationToolRetrievalResponse);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v5;
  *(a1 + 2) = v5;
  return result;
}

uint64_t sub_20E1BDB1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = *(v7 + 24);
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E1BE4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1846E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1959FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1847E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1959A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184834();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1848DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE784(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184930();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE854(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184984();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1849D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE924(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184738();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE994(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184A2C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E1BE9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E184A80();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoEvent.clientRequestID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoEvent.clientRequestID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientSessionID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptProtoEvent.clientSessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientApplicationID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TranscriptProtoEvent.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.rawInitiatedSpans.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientGroupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));

  return v1;
}

uint64_t TranscriptProtoEvent.clientGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = type metadata accessor for TranscriptProtoEvent(0);
  v23 = v22[11];
  v24 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = v22[13];
  v26 = (a9 + v22[12]);
  v27 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v27 - 8) + 56))(a9 + v25, 1, 1, v27);
  v28 = v22[14];
  v29 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v22[15];
  v31 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  sub_20E05EC5C(a7, a9 + v23, &qword_27C863FC0, &unk_20E325F70);
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *v26 = a13;
  v26[1] = a14;
  sub_20E05EC5C(a15, a9 + v25, &qword_27C8688C0, &qword_20E33B870);
  sub_20E05EC5C(a16, a9 + v28, &qword_27C8688B0, &unk_20E33C1C0);
  result = sub_20E05EC5C(a17, a9 + v30, &qword_27C8688A0, &qword_20E33B858);
  *(a9 + 80) = a18;
  return result;
}

uint64_t TranscriptProtoTranscript.sessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptProtoTranscript.sessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TranscriptProtoTranscript.clientSessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoTranscript.clientSessionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for TranscriptProtoTranscript(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  v13 = sub_20E322150();
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a6[v12], &qword_27C868778, &unk_20E33C000);
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  *(a6 + 3) = a5;
  return result;
}

uint64_t TranscriptProtoSessionStart.shouldExecutePreviousActionsForUserPrompt.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoSessionStart(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:genderSettings:shouldExecutePreviousActionsForUserPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoSessionStart(0);
  v12 = v11[5];
  v13 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = v11[6];
  v15 = type metadata accessor for TranscriptProtoGenderSettings(0);
  (*(*(v15 - 8) + 56))(a5 + v14, 1, 1, v15);
  v16 = v11[7];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5, &qword_27C8687B0, &unk_20E33C1E0);
  sub_20E05EC5C(a2, a5 + v12, &qword_27C8687A0, &unk_20E3461A0);
  result = sub_20E05EC5C(a3, a5 + v14, &qword_27C868790, &unk_20E33C1F0);
  *(a5 + v16) = a4;
  return result;
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = &a9[v12[7]];
  v19 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v19 - 8) + 56))(&a9[v17], 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v12[10];
  v23 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = v12[11];
  v25 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  (*(*(v25 - 8) + 56))(&a9[v24], 1, 1, v25);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v13], &qword_27C867EF8, &qword_20E33AFC8);
  *a9 = a2;
  sub_20E05EC5C(a3, &a9[v15], &qword_27C863F88, &unk_20E33C200);
  *v18 = a4;
  v18[1] = a5;
  sub_20E05EC5C(a6, &a9[v17], &qword_27C868708, &qword_20E33B700);
  sub_20E05EC5C(a7, &a9[v20], &qword_27C868758, &unk_20E33C210);
  sub_20E05EC5C(a8, &a9[v22], &qword_27C868748, &qword_20E33B738);
  return sub_20E05EC5C(a10, &a9[v24], &qword_27C868738, &unk_20E33C220);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:preItnspeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v9 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v10 = v9[5];
  v11 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&a6[v10], 1, 1, v11);
  v13 = v9[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = v9[7];
  v12(&a6[v15], 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  sub_20E05EC5C(a3, &a6[v10], &qword_27C868718, &qword_20E33B710);
  sub_20E05EC5C(a4, &a6[v13], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a5, &a6[v15], &qword_27C868718, &qword_20E33B710);
}

uint64_t sub_20E1C0BA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));

  return v1;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v12 = *(v11 + 24);
  v13 = (a5 + *(v11 + 20));
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v14 - 8) + 56))(a5 + v12, 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5, &qword_27C867EF8, &qword_20E33AFC8);
  *v13 = a2;
  v13[1] = a3;
  return sub_20E05EC5C(a4, a5 + v12, &qword_27C868708, &qword_20E33B700);
}

uint64_t sub_20E1C11E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  a3(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanConvertTool.init(query:isExplicit:partner:directInvocationClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_20E1C141C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  a6(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = a4 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a4, &qword_27C8639D0, &unk_20E33C230);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoAction.parameterValues.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_20E1C1844(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t sub_20E1C18A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoAction(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = (a9 + v14[7]);
  v18 = (a9 + v14[8]);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a9 + v15, &qword_27C8639D0, &unk_20E33C230);
  *v17 = a2;
  v17[1] = a3;
  *a9 = a4;
  *(a9 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_20E05EC5C(a8, a9 + v19, &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8686A0, &unk_20E33C250);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863B58, &qword_20E323E68);
}

void TranscriptProtoPromptSelection.promptSelectionValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranscriptProtoPromptSelection.promptSelectionValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t static TranscriptProtoPromptSelectionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E1E14FC(a2, &v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v7, &v7[v8]);
  sub_20E1E1564(&v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t sub_20E1C2260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E1E14FC(a2, &v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)();
  sub_20E1E1564(&v7[v8], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_20E05EC5C(a3, a5 + v10, &qword_27C868650, &qword_20E33B660);
  *(a5 + 16) = a4;
  return result;
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  v8 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863B58, &qword_20E323E68);
}

uint64_t TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  sub_20E05EC5C(a2, &a4[v9], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, &a4[v11], &qword_27C863BA8, &unk_20E345F00);
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863BA8, &unk_20E345F00);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863B48, &unk_20E33C280);
}

uint64_t TranscriptProtoStatementResult.actionEventID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptProtoStatementResult.actionEventID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementResult(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v12 - 8) + 56))(&a8[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v10[7];
  v15(&a8[v16], 1, 1, v14);
  v17 = v10[8];
  v15(&a8[v17], 1, 1, v14);
  v18 = v10[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_20E05EC5C(a3, &a8[v11], &qword_27C863FB8, &unk_20E325F60);
  sub_20E05EC5C(a4, &a8[v13], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a5, &a8[v16], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a6, &a8[v17], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, &a8[v18], &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for TranscriptProtoCandidate(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = v10[7];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(&a5[v15], 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C863B18, &qword_20E323EB0);
  *a5 = v9;
  sub_20E05EC5C(a3, &a5[v13], &qword_27C863B20, &unk_20E33C290);
  return sub_20E05EC5C(a4, &a5[v15], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TranscriptProtoClientAction.shimParameters.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TranscriptProtoClientAction.clientQueryID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoClientAction.clientQueryID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.planEventID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptProtoClientAction.planEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 4) = a4;
  *(a9 + 5) = a5;
  *(a9 + 6) = a6;
  *(a9 + 7) = a7;
  result = sub_20E05EC5C(a8, &a9[v18], &qword_27C8639D0, &unk_20E33C230);
  *(a9 + 3) = a10;
  return result;
}

uint64_t TranscriptProtoPersonQuery.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TranscriptProtoPersonQuery.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_20E1C3C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E195A50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *a2 = 3;
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = v3;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init(name:handle:isMe:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = (a7 + *(v14 + 28));
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  result = sub_20E05EC5C(a3, a7 + v15, &qword_27C868600, &unk_20E33C2A0);
  *a7 = a4;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_20E1C3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = *(v12 + 28);
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a6 + v13, &qword_27C8639D0, &unk_20E33C230);
  *a6 = a2;
  *(a6 + 8) = a3;
  result = sub_20E05EC5C(a4, a6 + v15, &qword_27C8639C8, &unk_20E323870);
  *(a6 + 16) = v11;
  return result;
}

uint64_t sub_20E1C414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.minimumViableLocationAccuracy.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.timeoutForLocationFetch.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoSystemRequirementUserLocationForSystemRequest.init(isPreciseLocationRequired:minimumViableLocationAccuracy:timeoutForLocationFetch:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C868560, &unk_20E33C2E0);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));

  return v1;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v13[10];
  v21 = &a9[v13[9]];
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v22 - 8) + 56))(&a9[v20], 1, 1, v22);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v14], &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, &a9[v16], &qword_27C868538, &unk_20E33C2F0);
  *a9 = a3;
  sub_20E05EC5C(a4, &a9[v18], &qword_27C868528, &qword_20E33B558);
  a9[1] = a5;
  *v21 = a6;
  v21[1] = a7;
  return sub_20E05EC5C(a8, &a9[v20], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t sub_20E1C5214@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v1 = *(v0 + 16);
  sub_20E05E834(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_20E1C556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  a6(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t TranscriptProtoParameterConfirmation.init(parameterID:parameterIndex:item:ancestorValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7 + v12, 1, 1, v13);
  v15 = *(v11 + 28);
  v14(a7 + v15, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  sub_20E05EC5C(a5, a7 + v12, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a6, a7 + v15, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4 & 1;
  *(a6 + 16) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t TranscriptProtoParameterNeedsValue.init(parameterID:typeInstance:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_20E05EC5C(a3, &a5[v11], &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C868488, &unk_20E33C310);
}

uint64_t sub_20E1C5E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E18478C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
  v11 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_20E05EC5C(a3, a5 + v10, &qword_27C863B18, &qword_20E323EB0);
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_20E1C6034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_20E05EC5C(a3, &a8[v15], a6, a7);
}

uint64_t TranscriptProtoPlan.promptResponse.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoPlan.promptResponse.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.statements.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TranscriptProtoPlan.overrideID.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptProtoPlan.overrideID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  *(a9 + 56) = 6;
  type metadata accessor for TranscriptProtoPlan(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v17;
  return result;
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E1E14FC(a2, &v7[v8], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v7, &v7[v8]);
  sub_20E1E1564(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t sub_20E1C654C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E1E14FC(a2, &v7[v8], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationError.== infix(_:_:)();
  sub_20E1E1564(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E1E14FC(a2, v7 + v8, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v7, (v7 + v8));
  sub_20E1E1564(v7 + v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t sub_20E1C67C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E1E14FC(a2, &v7[v8], type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)();
  sub_20E1E1564(&v7[v8], type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v12], &qword_27C868418, &unk_20E33C340);
}

uint64_t TranscriptProtoQueryStep.init(statementID:context:payload:isAuthenticated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v11 = Step[5];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = Step[6];
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = Step[7];
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  (*(*(Payload - 8) + 56))(&a5[v15], 1, 1, Payload);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, &a5[v13], &qword_27C863BC0, &unk_20E323E90);
  result = sub_20E05EC5C(a3, &a5[v15], &qword_27C863BB0, &unk_20E33C350);
  *a5 = a4;
  return result;
}

uint64_t sub_20E1C6FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a8[v15], a6, a7);
  *a8 = a2;
  *(a8 + 1) = a3;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  result = sub_20E05EC5C(a2, &a5[v10], &qword_27C8639D0, &unk_20E33C230);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  type metadata accessor for TranscriptProtoResponseDialog(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));

  return v1;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25 = *a4;
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v15 = v14[7];
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[8];
  v17(a9 + v18, 1, 1, v16);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v14[10];
  v22 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = (a9 + v14[11]);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, a9 + v15, &qword_27C8683B8, &qword_20E33B420);
  sub_20E05EC5C(a3, a9 + v18, &qword_27C8683B8, &qword_20E33B420);
  *(a9 + 8) = v25;
  *(a9 + 16) = a5;
  sub_20E05EC5C(a6, a9 + v19, &qword_27C8683A8, &unk_20E33C360);
  result = sub_20E05EC5C(a7, a9 + v21, &qword_27C868398, &qword_20E33B408);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_20E1C7FA4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_20E1C8004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char *a10, uint64_t a11)
{
  v27 = *a10;
  v13 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v14 = v13[5];
  v15 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[6];
  v17 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v13[7]];
  v19 = &a9[v13[8]];
  v20 = v13[9];
  v21 = v13[10];
  a9[v21] = 2;
  v22 = v13[11];
  v23 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, &a9[v14], &qword_27C868320, &unk_20E33C380);
  sub_20E05EC5C(a3, &a9[v16], &qword_27C868310, &qword_20E33B390);
  *v18 = a4;
  *(v18 + 1) = a5;
  *v19 = a6;
  *(v19 + 1) = a7;
  a9[v20] = a8;
  a9[v21] = v27;
  return sub_20E05EC5C(a11, &a9[v22], &qword_27C868300, &unk_20E33C390);
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  sub_20E047C8C(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoResponseParameter.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.format.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoResponseParameter.format.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *(a9 + 16) = xmmword_20E323EA0;
  type metadata accessor for TranscriptProtoResponseParameter(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_20E047D10(*(a9 + 16), *(a9 + 24));
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  v9 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_20E05EC5C(a3, &a4[v8], &qword_27C8682E8, &qword_20E33B378);
}

uint64_t sub_20E1C8890@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  a2(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_20E1C8A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.getter()
{
  v1 = *v0;
  sub_20E05E834(*v0, *(v0 + 8));
  return v1;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v14[8];
  v20 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v20 - 8) + 56))(&a8[v19], 1, 1, v20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a8 + 2) = a1;
  *(a8 + 3) = a2;
  sub_20E05EC5C(a3, &a8[v15], &qword_27C863F10, &unk_20E33C3B0);
  *a8 = a4;
  *(a8 + 1) = a5;
  sub_20E05EC5C(a6, &a8[v17], &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, &a8[v19], &qword_27C863B80, &qword_20E323E70);
}

uint64_t TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v14 = v13[7];
  v15 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v13[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7 + v14, &qword_27C863B30, &qword_20E323E58);
  *a7 = a2;
  *(a7 + 8) = a3;
  sub_20E05EC5C(a4, a7 + v16, &qword_27C8639D0, &unk_20E33C230);
  *(a7 + 9) = a5;
  return sub_20E05EC5C(a6, a7 + v18, &qword_27C8639C8, &unk_20E323870);
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for TranscriptProtoContextRetrieved(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  v8 = type metadata accessor for ContextProtoRetrievedContext(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C868260, &unk_20E33C3D0);
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  v8 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C867FA8, &qword_20E33B078);
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameter.init(key:collectionIndex:candidate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoParameter(0) + 24);
  v13 = type metadata accessor for TranscriptProtoCandidate(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_20E05EC5C(a5, a6 + v12, &qword_27C863B28, &unk_20E33C3E0);
}

uint64_t sub_20E1C9CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a7[v13], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_20E1C9E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  return sub_20E05EC5C(a2, &a7[v13], a5, a6);
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_20E1CA220(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_20E1CA2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  a5(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a4;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v10 = *(updated + 24);
  v11 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a5 + v10, 1, 1, v11);
  v13 = *(updated + 28);
  v12(a5 + v13, 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a5 + v10, &qword_27C868048, &qword_20E33B0F0);
  *a5 = a2;
  result = sub_20E05EC5C(a3, a5 + v13, &qword_27C868048, &qword_20E33B0F0);
  *(a5 + 8) = v15;
  return result;
}

uint64_t sub_20E1CAA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7, 1, 1, v13);
  v15 = *(a4(0) + 20);
  v14(a7 + v15, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, a5, a6);
  return sub_20E05EC5C(a2, a7 + v15, a5, a6);
}

uint64_t sub_20E1CB0EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _BYTE *a8@<X8>)
{
  v12 = *a1;
  v13 = a4(0);
  v14 = *(v13 + 20);
  v15 = a5(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a8[v14], 1, 1, v15);
  v17 = *(v13 + 24);
  v16(&a8[v17], 1, 1, v15);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = v12;
  sub_20E05EC5C(a2, &a8[v14], a6, a7);
  return sub_20E05EC5C(a3, &a8[v17], a6, a7);
}

uint64_t sub_20E1CB2F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a1;
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = v12;
  return sub_20E05EC5C(a2, &a7[v13], a5, a6);
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v15 = *(updated + 24);
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = a7 + *(updated + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  result = sub_20E05EC5C(a4, a7 + v15, &qword_27C8639D0, &unk_20E33C230);
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  return result;
}

uint64_t TranscriptProtoGlobalToolIdentifier.init(toolID:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for TranscriptProtoSearchExpression(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.StructuredSearchProperty.init(name:type:previousAnswerReference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0) + 24);
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v12], &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  result = sub_20E05EC5C(a2, &a4[v8], &qword_27C863C48, &qword_20E323F30);
  *(a4 + 1) = a3;
  return result;
}

uint64_t TranscriptProtoUserConfirmExpression.init(promptForUser:confirmOption:dismissOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a4, 1, 1, v8);
  v10 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v11 = *(v10 + 20);
  v9(a4 + v11, 1, 1, v8);
  v12 = *(v10 + 24);
  v9(a4 + v12, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, a4 + v11, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E1E14FC(a2, v7 + v8, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = sub_20E2EC4C4(v7, (v7 + v8));
  sub_20E1E1564(v7 + v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E1E1564(v7, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t sub_20E1CC7B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v10 - v6);
  v8 = *(v5 + 56);
  sub_20E1E14FC(a1, &v10 - v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E1E14FC(a2, v7 + v8, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = static ToolKitProtoTypedValue.== infix(_:_:)(v7, (v7 + v8));
  sub_20E1E1564(v7 + v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E1E1564(v7, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t TranscriptProtoSpanMatchedEntityStatement.init(statementID:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0) + 20);
  v8 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C868018, &unk_20E33C430);
}

uint64_t TranscriptProtoToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.types.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));

  return v1;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a5[v11], &qword_27C868008, &qword_20E33B0C0);
  *v13 = a2;
  *(v13 + 1) = a3;
  *a5 = a4;
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v11 - 8) + 56))(a9, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v13 = v12[5];
  v21 = v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9 + v13, 1, 1, v14);
  v16 = v12[6];
  v15(a9 + v16, 1, 1, v14);
  v17 = (a9 + v12[7]);
  v18 = (a9 + v12[8]);
  v19 = v12[9];
  v15(a9 + v19, 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a9, &qword_27C863BA8, &unk_20E345F00);
  sub_20E05EC5C(a2, a9 + v21, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a3, a9 + v16, &qword_27C8639D0, &unk_20E33C230);
  *v17 = a4;
  v17[1] = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_20E05EC5C(a8, a9 + v19, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.canonicalIndex.setter(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:canonicalIndex:executionSupportType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v16 = v12[6];
  v15 = v12[7];
  v17 = v12[9];
  v18 = a7 + v12[8];
  v19 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  (*(*(v19 - 8) + 56))(a7 + v17, 1, 1, v19);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C8639D0, &unk_20E33C230);
  sub_20E05EC5C(a2, a7 + v13, &qword_27C864168, &unk_20E33C440);
  *(a7 + v16) = a3;
  *(a7 + v15) = a4;
  *v18 = a5;
  *(v18 + 4) = BYTE4(a5) & 1;
  return sub_20E05EC5C(a6, a7 + v17, &qword_27C867FE8, &qword_20E33B0A0);
}

uint64_t sub_20E1CD8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>)
{
  a7(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

uint64_t TranscriptProtoGenderSettings.init(voiceGender:userGender:)@<X0>(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for TranscriptProtoGenderSettings(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t TranscriptProtoStatementID.init(index:name:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TranscriptProtoStatementID(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v13 = *(v12 + 28);
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a8 + v13, 1, 1, v14);
  v16 = *(v12 + 32);
  v15(a8 + v16, 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 16) = v11;
  sub_20E05EC5C(a6, a8 + v13, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a7, a8 + v16, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = *(v10 + 28);
  v13(a6 + v14, 1, 1, v12);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  sub_20E05EC5C(a4, a6 + v11, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a5, a6 + v14, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoTypeConversionRequest.init(value:target:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C863B18, &qword_20E323EB0);
  sub_20E05EC5C(a2, a4 + v10, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t sub_20E1CE75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13);
  v14 = a5(0);
  v15 = *(v14 + 20);
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a8 + v15, 1, 1, v16);
  v18 = *(v14 + 24);
  v17(a8 + v18, 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a8, a6, a7);
  sub_20E05EC5C(a2, a8 + v15, &qword_27C8639D0, &unk_20E33C230);
  return sub_20E05EC5C(a3, a8 + v18, &qword_27C8639D0, &unk_20E33C230);
}

uint64_t TranscriptProtoQueryDecorationResult.init(spans:toolRetrievalResponse:dynamicEnumerationEntities:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 28);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a5[v10], 1, 1, DecorationToolRetrievalResponse);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  result = sub_20E05EC5C(a2, &a5[v10], &qword_27C863C40, &unk_20E33C460);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v11 = *(DecorationPrePlannerResult + 20);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(DecorationPrePlannerResult + 24);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  (*(*(DecorationPrePlannerResultPayload - 8) + 56))(&a5[v13], 1, 1, DecorationPrePlannerResultPayload);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v11], &qword_27C8639D0, &unk_20E33C230);
  *a5 = a2;
  *(a5 + 1) = a3;
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C867F90, &qword_20E33B060);
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _s23LighthouseDataProcessor51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v59 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v58 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v57 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v56 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v55 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v54 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v9 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v11 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E80, &qword_20E342078);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &DecorationPrePlannerResultPayloadRepeatedStringVariant - v28;
  v30 = *(v27 + 56);
  sub_20E1E14FC(v60, &DecorationPrePlannerResultPayloadRepeatedStringVariant - v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E1E14FC(v61, &v29[v30], type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_20E1E14FC(v29, v14, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v35 = v58;
          sub_20E1EF280(&v29[v30], v58, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          if (sub_20E147918(*v14, *v35))
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
              sub_20E1E1564(v35, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
              v34 = v14;
              goto LABEL_37;
            }
          }

          v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
          sub_20E1E1564(v35, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          v46 = v14;
          goto LABEL_44;
        }

        v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
        v37 = v14;
      }

      else
      {
        sub_20E1E14FC(v29, v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v40 = v59;
          sub_20E1EF280(&v29[v30], v59, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          if (sub_20E149570(*v11, *v40))
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            v41 = sub_20E322850();
            sub_20E1E1564(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
            if (v41)
            {
              v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
              v34 = v11;
LABEL_38:
              sub_20E1E1564(v34, v42);
              sub_20E1E1564(v29, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
              return 1;
            }
          }

          else
          {
            sub_20E1E1564(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          }

          v47 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
          v46 = v11;
          goto LABEL_45;
        }

        v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
        v37 = v11;
      }

      goto LABEL_33;
    }

    sub_20E1E14FC(v29, v17, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
      v37 = v17;
      goto LABEL_33;
    }

    v38 = v57;
    sub_20E1EF280(&v29[v30], v57, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (sub_20E1463E0(*v17, *v38))
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
        sub_20E1E1564(v38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
        v34 = v17;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
    sub_20E1E1564(v38, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    v46 = v17;
LABEL_44:
    v47 = v45;
LABEL_45:
    sub_20E1E1564(v46, v47);
    sub_20E1E1564(v29, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v29, v25, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
      v37 = v25;
      goto LABEL_33;
    }

    v43 = v54;
    sub_20E1EF280(&v29[v30], v54, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (sub_20E1494E0(*v25, *v43))
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
        sub_20E1E1564(v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
        v34 = v25;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
    sub_20E1E1564(v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    v46 = v25;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20E1E14FC(v29, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
      v37 = v20;
      goto LABEL_33;
    }

    v39 = v56;
    sub_20E1EF280(&v29[v30], v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (sub_20E147724(*v20, *v39))
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
        sub_20E1E1564(v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
        v34 = v20;
        goto LABEL_37;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
    sub_20E1E1564(v39, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    v46 = v20;
    goto LABEL_44;
  }

  sub_20E1E14FC(v29, v23, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v55;
    sub_20E1EF280(&v29[v30], v55, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (sub_20E1484A4(*v23, *v32))
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v33 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
        v34 = v23;
LABEL_37:
        v42 = v33;
        goto LABEL_38;
      }
    }

    v45 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
    sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    v46 = v23;
    goto LABEL_44;
  }

  v36 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v37 = v23;
LABEL_33:
  sub_20E1E1564(v37, v36);
  sub_20E04875C(v29, &qword_27C868E80, &qword_20E342078);
  return 0;
}

uint64_t _s23LighthouseDataProcessor46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EB0, &qword_20E3420A8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = *(v17 + 56);
  sub_20E1E14FC(a1, &v28 - v18, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E1E14FC(a2, &v19[v20], type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v19, v13, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v22 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
        v23 = v13;
        goto LABEL_13;
      }

      sub_20E1EF280(&v19[v20], v6, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v24 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)();
      sub_20E1E1564(v6, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v25 = v13;
      v26 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    }

    else
    {
      sub_20E1E14FC(v19, v15, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v22 = type metadata accessor for TranscriptProtoRequestContentTextContent;
        v23 = v15;
LABEL_13:
        sub_20E1E1564(v23, v22);
        goto LABEL_14;
      }

      sub_20E1EF280(&v19[v20], v9, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v24 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)();
      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v25 = v15;
      v26 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    }

    sub_20E1E1564(v25, v26);
    sub_20E1E1564(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    return v24 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_14;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_20E04875C(v19, &qword_27C868EB0, &qword_20E3420A8);
    v24 = 0;
    return v24 & 1;
  }

  sub_20E1E1564(v19, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v24 = 1;
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v34 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EF8, &qword_20E3420F8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  v23 = *(v20 + 56);
  sub_20E1E14FC(v36, &v34 - v21, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E1E14FC(v37, &v22[v23], type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_34;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_34;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v25 = v16;
  v26 = v35;
  if (!EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v22, v18, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v22[v23], v9, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v32 = *v18 == *v9 && v18[1] == v9[1];
      if (v32 || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v9, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
          sub_20E1E1564(v18, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
LABEL_34:
          sub_20E1E1564(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
          v27 = 1;
          return v27 & 1;
        }
      }

      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E1E1564(v18, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_20E1E1564(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      goto LABEL_26;
    }

    v30 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
    v31 = v18;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20E1E14FC(v22, v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E1EF280(&v22[v23], v26, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v27 = static TranscriptProtoSystemRequirementUserLocationForSystemRequest.== infix(_:_:)();
      sub_20E1E1564(v26, type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest);
      v28 = v13;
      v29 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
      goto LABEL_17;
    }

    v30 = type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest;
    v31 = v13;
LABEL_24:
    sub_20E1E1564(v31, v30);
LABEL_25:
    sub_20E04875C(v22, &qword_27C868EF8, &qword_20E3420F8);
LABEL_26:
    v27 = 0;
    return v27 & 1;
  }

  sub_20E1E14FC(v22, v25, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
    v31 = v25;
    goto LABEL_24;
  }

  sub_20E1EF280(&v22[v23], v6, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v27 = _s23LighthouseDataProcessor53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(v25, v6);
  sub_20E1E1564(v6, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v28 = v25;
  v29 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
LABEL_17:
  sub_20E1E1564(v28, v29);
  sub_20E1E1564(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  return v27 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v34 = (&v33 - v7);
  MEMORY[0x28223BE20](v6);
  v9 = (&v33 - v8);
  v10 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v33 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v33 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F18, &qword_20E342118);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - v21;
  v23 = *(v20 + 56);
  sub_20E1E14FC(a1, &v33 - v21, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E1E14FC(a2, &v22[v23], type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E1E14FC(v22, v16, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v34;
        sub_20E1EF280(&v22[v23], v34, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v26 = *v16 == *v25 && v16[1] == v25[1];
        if (v26 || (sub_20E322D60()) && v16[2] == v25[2])
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v27 = v16;
LABEL_35:
            sub_20E1E1564(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
            return 1;
          }
        }

        sub_20E1E1564(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v30 = v16;
        goto LABEL_37;
      }

      v13 = v16;
    }

    else
    {
      sub_20E1E14FC(v22, v13, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v35;
        sub_20E1EF280(&v22[v23], v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v29 = *v13 == *v28 && v13[1] == v28[1];
        if (v29 || (sub_20E322D60()) && v13[2] == v28[2])
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v27 = v13;
            goto LABEL_35;
          }
        }

        sub_20E1E1564(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v30 = v13;
        goto LABEL_37;
      }
    }
  }

  else
  {
    sub_20E1E14FC(v22, v18, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v22[v23], v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v31 = *v18 == *v9 && v18[1] == v9[1];
      if (v31 || (sub_20E322D60()) && v18[2] == v9[2])
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v27 = v18;
          goto LABEL_35;
        }
      }

      sub_20E1E1564(v9, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v30 = v18;
LABEL_37:
      sub_20E1E1564(v30, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      return 0;
    }

    v13 = v18;
  }

  sub_20E1E1564(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E04875C(v22, &qword_27C868F18, &qword_20E342118);
  return 0;
}

uint64_t _s23LighthouseDataProcessor40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v81 = a2;
  v68 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  MEMORY[0x28223BE20](v68);
  v77 = (&v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  MEMORY[0x28223BE20](v69);
  v73 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  MEMORY[0x28223BE20](v67);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = MEMORY[0x28223BE20](v15);
  v79 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v66 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v66 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v66 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v66 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v78 = (&v66 - v34);
  MEMORY[0x28223BE20](v33);
  v36 = &v66 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F30, &qword_20E342130);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v66 - v39;
  v41 = *(v38 + 56);
  sub_20E1E14FC(v80, &v66 - v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E1E14FC(v81, &v40[v41], type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E1E14FC(v40, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        if (swift_getEnumCaseMultiPayload())
        {
          v43 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
          v44 = v36;
LABEL_40:
          sub_20E1E1564(v44, v43);
          sub_20E04875C(v40, &qword_27C868F30, &qword_20E342130);
LABEL_41:
          v47 = 0;
          return v47 & 1;
        }

        v60 = v70;
        sub_20E1EF280(&v40[v41], v70, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        if (*v36 == *v60 && *(v36 + 1) == *(v60 + 8) || (sub_20E322D60()) && v36[16] == *(v60 + 16) && v36[17] == *(v60 + 17))
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v61 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
            sub_20E1E1564(v60, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
            v62 = v36;
LABEL_58:
            sub_20E1E1564(v62, v61);
            sub_20E1E1564(v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
            v47 = 1;
            return v47 & 1;
          }
        }

        v63 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
        sub_20E1E1564(v60, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        v64 = v36;
LABEL_61:
        sub_20E1E1564(v64, v63);
        sub_20E1E1564(v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        goto LABEL_41;
      }

      v32 = v78;
      sub_20E1E14FC(v40, v78, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v73;
        sub_20E1EF280(&v40[v41], v73, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
        if (*v32 == *v53 && v32[1] == v53[1] || (sub_20E322D60() & 1) != 0)
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v54 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_57:
            v61 = v54;
            sub_20E1E1564(v53, v54);
            v62 = v32;
            goto LABEL_58;
          }
        }

        v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_60:
        v63 = v65;
        sub_20E1E1564(v53, v65);
        v64 = v32;
        goto LABEL_61;
      }

      v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
LABEL_39:
      v43 = v58;
      v44 = v32;
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v40, v32, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
        goto LABEL_39;
      }

      v50 = v71;
      sub_20E1EF280(&v40[v41], v71, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v46 = v40;
      v47 = sub_20E1613DC(v32, v50);
      v51 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      sub_20E1E1564(v50, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v48 = v32;
    }

    else
    {
      sub_20E1E14FC(v40, v29, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v43 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
        v44 = v29;
        goto LABEL_40;
      }

      v56 = v72;
      sub_20E1EF280(&v40[v41], v72, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v46 = v40;
      v47 = _s23LighthouseDataProcessor47TranscriptProtoRequestPrescribedPlanConvertToolV2eeoiySbAC_ACtFZ_0(v29, v56);
      v51 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
      sub_20E1E1564(v56, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v48 = v29;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_20E1E14FC(v40, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v43 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
        v44 = v20;
        goto LABEL_40;
      }

      v52 = v76;
      sub_20E1EF280(&v40[v41], v76, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v46 = v40;
      v47 = _s23LighthouseDataProcessor44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(v20, v52);
      v51 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
      sub_20E1E1564(v52, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v48 = v20;
      goto LABEL_26;
    }

    v32 = v79;
    sub_20E1E14FC(v40, v79, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v58 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_39;
    }

    v53 = v77;
    sub_20E1EF280(&v40[v41], v77, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    v57 = *(v53 + 8);
    if (v32[1])
    {
      if (!*(v53 + 8))
      {
LABEL_59:
        v65 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        goto LABEL_60;
      }
    }

    else
    {
      if (*v32 != *v53)
      {
        v57 = 1;
      }

      if (v57)
      {
        goto LABEL_59;
      }
    }

    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v54 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_57;
    }

    goto LABEL_59;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_20E1E14FC(v40, v23, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v43 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
      v44 = v23;
      goto LABEL_40;
    }

    v55 = v75;
    sub_20E1EF280(&v40[v41], v75, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    v46 = v40;
    v47 = sub_20E1600CC(v23, v55);
    v51 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
    sub_20E1E1564(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    v48 = v23;
LABEL_26:
    v49 = v51;
    goto LABEL_27;
  }

  sub_20E1E14FC(v40, v26, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v43 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
    v44 = v26;
    goto LABEL_40;
  }

  v45 = v74;
  sub_20E1EF280(&v40[v41], v74, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v46 = v40;
  v47 = sub_20E1607E8(v26, v45);
  sub_20E1E1564(v45, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v48 = v26;
  v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
LABEL_27:
  sub_20E1E1564(v48, v49);
  sub_20E1E1564(v46, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  return v47 & 1;
}

BOOL _s23LighthouseDataProcessor45TranscriptProtoParameterNeedsValueContextEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868ED8, &qword_20E3420D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_20E1E14FC(a1, &v18 - v12, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E1E14FC(a2, &v13[v14], type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E1EF280(v13, v9, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E1EF280(&v13[v14], v7, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  v15 = *v9 == *v7 && v9[1] == v7[1];
  v16 = 0;
  if (v15 || (sub_20E322D60() & 1) != 0)
  {
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v16 = 1;
    }
  }

  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_20E1E1564(v9, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  return v16;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F00, &qword_20E342100);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_20E1E14FC(a1, &v33 - v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E1E14FC(v34, &v23[v24], type metadata accessor for TranscriptProtoActionRequirementEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v23, v17, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v27 = v17;
        goto LABEL_14;
      }

      sub_20E1EF280(&v23[v24], v7, type metadata accessor for TranscriptProtoPermissionRequirement);
      v29 = _s23LighthouseDataProcessor36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(v17, v7);
      v30 = type metadata accessor for TranscriptProtoPermissionRequirement;
      sub_20E1E1564(v7, type metadata accessor for TranscriptProtoPermissionRequirement);
      v31 = v17;
    }

    else
    {
      sub_20E1E14FC(v23, v19, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TranscriptProtoAppRequirement;
        v27 = v19;
LABEL_14:
        sub_20E1E1564(v27, v26);
        goto LABEL_15;
      }

      sub_20E1EF280(&v23[v24], v10, type metadata accessor for TranscriptProtoAppRequirement);
      v29 = static TranscriptProtoAppRequirement.== infix(_:_:)(v19, v10);
      v30 = type metadata accessor for TranscriptProtoAppRequirement;
      sub_20E1E1564(v10, type metadata accessor for TranscriptProtoAppRequirement);
      v31 = v19;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E1E14FC(v23, v14, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v27 = v14;
      goto LABEL_14;
    }

    v28 = v33;
    sub_20E1EF280(&v23[v24], v33, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v29 = _s23LighthouseDataProcessor39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(v14, v28);
    v30 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
    sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v31 = v14;
LABEL_17:
    sub_20E1E1564(v31, v30);
    sub_20E1E1564(v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_15:
    sub_20E04875C(v23, &qword_27C868F00, &qword_20E342100);
    v29 = 0;
    return v29 & 1;
  }

  sub_20E1E1564(v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v29 = 1;
  return v29 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = (&v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  MEMORY[0x28223BE20](v78);
  v90 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoActionFailure(0);
  MEMORY[0x28223BE20](v6 - 8);
  v88 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TranscriptProtoActionRequirement(0);
  MEMORY[0x28223BE20](v10 - 8);
  v86 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  MEMORY[0x28223BE20](v22 - 8);
  v80 = (&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v24 - 8);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v27 = MEMORY[0x28223BE20](v26);
  v96 = (&v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v97 = (&v78 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v95 = (&v78 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v94 = (&v78 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v93 = (&v78 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v92 = (&v78 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v91 = (&v78 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = (&v78 - v42);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v78 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = (&v78 - v48);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = (&v78 - v51);
  MEMORY[0x28223BE20](v50);
  v54 = &v78 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EE0, &qword_20E3420E0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v58 = &v78 - v57;
  v59 = *(v56 + 56);
  sub_20E1E14FC(a1, &v78 - v57, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E1E14FC(v98, &v58[v59], type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v52 = v92;
        sub_20E1E14FC(v58, v92, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v61 = v85;
          sub_20E1EF280(&v58[v59], v85, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
          v62 = v58;
          found = _s23LighthouseDataProcessor42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(v52, v61);
          v64 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
          goto LABEL_38;
        }

        v75 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v52 = v93;
        sub_20E1E14FC(v58, v93, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v61 = v86;
          sub_20E1EF280(&v58[v59], v86, type metadata accessor for TranscriptProtoActionRequirement);
          v62 = v58;
          found = _s23LighthouseDataProcessor32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(v52, v61);
          v64 = type metadata accessor for TranscriptProtoActionRequirement;
          goto LABEL_38;
        }

        v75 = type metadata accessor for TranscriptProtoActionRequirement;
      }

      else
      {
        v52 = v94;
        sub_20E1E14FC(v58, v94, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v61 = v87;
          sub_20E1EF280(&v58[v59], v87, type metadata accessor for TranscriptProtoToolDisambiguation);
          v62 = v58;
          found = _s23LighthouseDataProcessor33TranscriptProtoToolDisambiguationV2eeoiySbAC_ACtFZ_0(v52, v61);
          v64 = type metadata accessor for TranscriptProtoToolDisambiguation;
          goto LABEL_38;
        }

        v75 = type metadata accessor for TranscriptProtoToolDisambiguation;
      }

      goto LABEL_51;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v52 = v95;
      sub_20E1E14FC(v58, v95, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v61 = v88;
        sub_20E1EF280(&v58[v59], v88, type metadata accessor for TranscriptProtoActionFailure);
        v62 = v58;
        found = static TranscriptProtoActionFailure.== infix(_:_:)();
        v64 = type metadata accessor for TranscriptProtoActionFailure;
        goto LABEL_38;
      }

      v75 = type metadata accessor for TranscriptProtoActionFailure;
      goto LABEL_51;
    }

    if (EnumCaseMultiPayload != 10)
    {
      v52 = v96;
      sub_20E1E14FC(v58, v96, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v61 = v89;
        sub_20E1EF280(&v58[v59], v89, type metadata accessor for TranscriptProtoSnippetStream);
        v62 = v58;
        found = static TranscriptProtoSnippetStream.== infix(_:_:)();
        v64 = type metadata accessor for TranscriptProtoSnippetStream;
        goto LABEL_38;
      }

      v75 = type metadata accessor for TranscriptProtoSnippetStream;
      goto LABEL_51;
    }

    v52 = v97;
    sub_20E1E14FC(v58, v97, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      v75 = type metadata accessor for TranscriptProtoValueDisambiguation;
      goto LABEL_51;
    }

    v68 = v90;
    sub_20E1EF280(&v58[v59], v90, type metadata accessor for TranscriptProtoValueDisambiguation);
    if ((sub_20E1484A4(*v52, *v68) & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      sub_20E1E1564(v68, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E1E1564(v52, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_20E1E1564(v58, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      goto LABEL_53;
    }

    sub_20E1E1564(v68, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E1E1564(v52, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_20E1E1564(v58, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    found = 1;
  }

  else
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_20E1E14FC(v58, v54, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          v77 = v79;
          sub_20E1EF280(&v58[v59], v79, type metadata accessor for TranscriptProtoActionSuccess);
          v62 = v58;
          found = static TranscriptProtoActionSuccess.== infix(_:_:)();
          v66 = type metadata accessor for TranscriptProtoActionSuccess;
          sub_20E1E1564(v77, type metadata accessor for TranscriptProtoActionSuccess);
          v67 = v54;
          goto LABEL_39;
        }

        v69 = type metadata accessor for TranscriptProtoActionSuccess;
        v70 = v54;
        goto LABEL_52;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_20E1E14FC(v58, v52, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v61 = v80;
          sub_20E1EF280(&v58[v59], v80, type metadata accessor for TranscriptProtoActionConfirmation);
          v62 = v58;
          found = _s23LighthouseDataProcessor33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(v52, v61);
          v64 = type metadata accessor for TranscriptProtoActionConfirmation;
LABEL_38:
          v66 = v64;
          sub_20E1E1564(v61, v64);
          v67 = v52;
          goto LABEL_39;
        }

        v75 = type metadata accessor for TranscriptProtoActionConfirmation;
        goto LABEL_51;
      }

      sub_20E1E14FC(v58, v49, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v74 = v81;
        sub_20E1EF280(&v58[v59], v81, type metadata accessor for TranscriptProtoParameterNeedsValue);
        v62 = v58;
        found = _s23LighthouseDataProcessor34TranscriptProtoParameterNeedsValueV2eeoiySbAC_ACtFZ_0(v49, v74);
        v66 = type metadata accessor for TranscriptProtoParameterNeedsValue;
        sub_20E1E1564(v74, type metadata accessor for TranscriptProtoParameterNeedsValue);
        v67 = v49;
        goto LABEL_39;
      }

      v69 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      v70 = v49;
      goto LABEL_52;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_20E1E14FC(v58, v43, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v65 = v83;
          sub_20E1EF280(&v58[v59], v83, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v62 = v58;
          found = _s23LighthouseDataProcessor38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(v43, v65);
          v66 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          sub_20E1E1564(v65, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v67 = v43;
LABEL_39:
          sub_20E1E1564(v67, v66);
          sub_20E1E1564(v62, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return found & 1;
        }

        v69 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        v70 = v43;
LABEL_52:
        sub_20E1E1564(v70, v69);
        sub_20E04875C(v58, &qword_27C868EE0, &qword_20E3420E0);
LABEL_53:
        found = 0;
        return found & 1;
      }

      v52 = v91;
      sub_20E1E14FC(v58, v91, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v61 = v84;
        sub_20E1EF280(&v58[v59], v84, type metadata accessor for TranscriptProtoParameterNotAllowed);
        v62 = v58;
        found = _s23LighthouseDataProcessor34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(v52, v61);
        v64 = type metadata accessor for TranscriptProtoParameterNotAllowed;
        goto LABEL_38;
      }

      v75 = type metadata accessor for TranscriptProtoParameterNotAllowed;
LABEL_51:
      v69 = v75;
      v70 = v52;
      goto LABEL_52;
    }

    sub_20E1E14FC(v58, v46, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v69 = type metadata accessor for TranscriptProtoParameterConfirmation;
      v70 = v46;
      goto LABEL_52;
    }

    v71 = &v58[v59];
    v72 = v82;
    sub_20E1EF280(v71, v82, type metadata accessor for TranscriptProtoParameterConfirmation);
    v73 = v58;
    found = _s23LighthouseDataProcessor36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(v46, v72);
    sub_20E1E1564(v72, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E1E1564(v46, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_20E1E1564(v73, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  return found & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  MEMORY[0x28223BE20](v40);
  v42 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v39 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v39 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F28, &qword_20E342128);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v39 - v25;
  v27 = *(v24 + 56);
  sub_20E1E14FC(v43, &v39 - v25, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E1E14FC(v44, &v26[v27], type metadata accessor for TranscriptProtoShimParameterEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v26, v17, type metadata accessor for TranscriptProtoShimParameterEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v29 = type metadata accessor for TranscriptProtoPersonQuery;
        v30 = v17;
        goto LABEL_19;
      }

      sub_20E1EF280(&v26[v27], v6, type metadata accessor for TranscriptProtoPersonQuery);
      v31 = static TranscriptProtoPersonQuery.== infix(_:_:)();
      sub_20E1E1564(v6, type metadata accessor for TranscriptProtoPersonQuery);
      v32 = v17;
      v33 = type metadata accessor for TranscriptProtoPersonQuery;
LABEL_23:
      sub_20E1E1564(v32, v33);
      sub_20E1E1564(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
      return v31 & 1;
    }

    sub_20E1E14FC(v26, v14, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v29 = type metadata accessor for TranscriptProtoPhotosCandidates;
      v30 = v14;
      goto LABEL_19;
    }

    v36 = v41;
    sub_20E1EF280(&v26[v27], v41, type metadata accessor for TranscriptProtoPhotosCandidates);
    v31 = _s23LighthouseDataProcessor31TranscriptProtoPhotosCandidatesV2eeoiySbAC_ACtFZ_0(v14, v36);
    v37 = type metadata accessor for TranscriptProtoPhotosCandidates;
    sub_20E1E1564(v36, type metadata accessor for TranscriptProtoPhotosCandidates);
    v32 = v14;
LABEL_22:
    v33 = v37;
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v26, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for ToolKitProtoTypedValue;
      v30 = v22;
LABEL_19:
      sub_20E1E1564(v30, v29);
      sub_20E04875C(v26, &qword_27C868F28, &qword_20E342128);
LABEL_20:
      v31 = 0;
      return v31 & 1;
    }

    sub_20E1EF280(&v26[v27], v10, type metadata accessor for ToolKitProtoTypedValue);
    v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v22, v10);
    v37 = type metadata accessor for ToolKitProtoTypedValue;
    sub_20E1E1564(v10, type metadata accessor for ToolKitProtoTypedValue);
    v32 = v22;
    goto LABEL_22;
  }

  sub_20E1E14FC(v26, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v29 = type metadata accessor for TranscriptProtoShimParameter.StringQuery;
    v30 = v20;
    goto LABEL_19;
  }

  v34 = v42;
  sub_20E1EF280(&v26[v27], v42, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((*v20 != *v34 || v20[1] != v34[1]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E1E1564(v34, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    goto LABEL_26;
  }

  sub_20E3221C0();
  sub_20E1EF2E8();
  v35 = sub_20E322850();
  sub_20E1E1564(v34, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((v35 & 1) == 0)
  {
LABEL_26:
    sub_20E1E1564(v20, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_20E1E1564(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
    goto LABEL_20;
  }

  sub_20E1E1564(v20, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  sub_20E1E1564(v26, type metadata accessor for TranscriptProtoShimParameterEnum);
  v31 = 1;
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F10, &qword_20E342110);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_20E1E14FC(a1, &v19 - v13, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E1E14FC(a2, &v14[v15], type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_20E1E1564(v14, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_20E1E14FC(v14, v10, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E1E1564(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868F10, &qword_20E342110);
    return 0;
  }

  sub_20E1EF280(&v14[v15], v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v18 = *v10 == *v7 && v10[1] == v7[1];
  if (v18 || (sub_20E322D60()) && v10[2] == v7[2])
  {
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      sub_20E1E1564(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_20E1E1564(v7, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E1E1564(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_20E1E1564(v14, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v36 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v36);
  v42 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  MEMORY[0x28223BE20](v37);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  MEMORY[0x28223BE20](v39);
  v40 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  MEMORY[0x28223BE20](v38);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v36 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EC8, &qword_20E3420C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  sub_20E1E14FC(a1, &v36 - v22, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E1E14FC(v43, &v23[v24], type metadata accessor for TranscriptProtoVisualOutputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1E14FC(v23, v14, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v26 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        v27 = v14;
        goto LABEL_26;
      }

      v28 = v41;
      sub_20E1EF280(&v23[v24], v41, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      if (!sub_20E15F7B0(*v14, *(v14 + 1), *v28, *(v28 + 8)) || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v33 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
        v34 = v14;
        goto LABEL_37;
      }

      v29 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
      sub_20E1E1564(v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v30 = v14;
    }

    else
    {
      sub_20E1E14FC(v23, v11, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v26 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        v27 = v11;
        goto LABEL_26;
      }

      v32 = v42;
      sub_20E1EF280(&v23[v24], v42, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      if (!sub_20E15F7B0(*v11, v11[1], *v32, v32[1]) || (v11[2] != v32[2] || v11[3] != v32[3]) && (sub_20E322D60() & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
      {
        v33 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        sub_20E1E1564(v32, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
        v34 = v11;
        goto LABEL_37;
      }

      v29 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
      sub_20E1E1564(v32, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v30 = v11;
    }

LABEL_33:
    sub_20E1E1564(v30, v29);
    sub_20E1E1564(v23, type metadata accessor for TranscriptProtoVisualOutputType);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v23, v17, type metadata accessor for TranscriptProtoVisualOutputType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      v27 = v17;
      goto LABEL_26;
    }

    v31 = v40;
    sub_20E1EF280(&v23[v24], v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if ((*v17 != *v31 || v17[1] != v31[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      v33 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      sub_20E1E1564(v31, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v34 = v17;
      goto LABEL_37;
    }

    v29 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
    sub_20E1E1564(v31, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    v30 = v17;
    goto LABEL_33;
  }

  sub_20E1E14FC(v23, v19, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E1EF280(&v23[v24], v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (*v19 == *v7 && v19[1] == v7[1] || (sub_20E322D60() & 1) != 0)
    {
      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v29 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
        sub_20E1E1564(v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
        v30 = v19;
        goto LABEL_33;
      }
    }

    v33 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
    sub_20E1E1564(v7, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    v34 = v19;
LABEL_37:
    sub_20E1E1564(v34, v33);
    sub_20E1E1564(v23, type metadata accessor for TranscriptProtoVisualOutputType);
    return 0;
  }

  v26 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
  v27 = v19;
LABEL_26:
  sub_20E1E1564(v27, v26);
  sub_20E04875C(v23, &qword_27C868EC8, &qword_20E3420C8);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v2 = type metadata accessor for TranscriptProtoExecutorError(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoPlannerError(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  MEMORY[0x28223BE20](v39);
  v40 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v38 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F20, &qword_20E342120);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v38 - v25;
  v27 = *(v24 + 56);
  sub_20E1E14FC(v42, &v38 - v25, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E1E14FC(v43, &v26[v27], type metadata accessor for TranscriptProtoSessionErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v26, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        v37 = v40;
        sub_20E1EF280(&v26[v27], v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        if (*v22 == *v37 && v22[1] == v37[1] || (sub_20E322D60()) && v22[2] == v37[2])
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            sub_20E1E1564(v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_20E1E1564(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
            v31 = 1;
            return v31 & 1;
          }
        }

        sub_20E1E1564(v37, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E1E1564(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E1E1564(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
        goto LABEL_18;
      }

      v29 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v30 = v22;
LABEL_17:
      sub_20E1E1564(v30, v29);
      sub_20E04875C(v26, &qword_27C868F20, &qword_20E342120);
LABEL_18:
      v31 = 0;
      return v31 & 1;
    }

    sub_20E1E14FC(v26, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v30 = v20;
      goto LABEL_17;
    }

    sub_20E1EF280(&v26[v27], v9, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v31 = _s23LighthouseDataProcessor38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(v20, v9);
    v34 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
    sub_20E1E1564(v9, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v32 = v20;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_20E1E14FC(v26, v14, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v29 = type metadata accessor for TranscriptProtoExecutorError;
      v30 = v14;
      goto LABEL_17;
    }

    v35 = v41;
    sub_20E1EF280(&v26[v27], v41, type metadata accessor for TranscriptProtoExecutorError);
    v31 = _s23LighthouseDataProcessor28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(v14, v35);
    v34 = type metadata accessor for TranscriptProtoExecutorError;
    sub_20E1E1564(v35, type metadata accessor for TranscriptProtoExecutorError);
    v32 = v14;
LABEL_12:
    v33 = v34;
    goto LABEL_13;
  }

  sub_20E1E14FC(v26, v17, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v29 = type metadata accessor for TranscriptProtoPlannerError;
    v30 = v17;
    goto LABEL_17;
  }

  sub_20E1EF280(&v26[v27], v6, type metadata accessor for TranscriptProtoPlannerError);
  v31 = static TranscriptProtoPlannerError.== infix(_:_:)();
  sub_20E1E1564(v6, type metadata accessor for TranscriptProtoPlannerError);
  v32 = v17;
  v33 = type metadata accessor for TranscriptProtoPlannerError;
LABEL_13:
  sub_20E1E1564(v32, v33);
  sub_20E1E1564(v26, type metadata accessor for TranscriptProtoSessionErrorEnum);
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPersonQuery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  MEMORY[0x28223BE20](v41);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v12 = MEMORY[0x28223BE20](PayloadEnum);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v40 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868ED0, &qword_20E3420D0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v40 - v25;
  v27 = *(v24 + 56);
  sub_20E1E14FC(v44, &v40 - v25, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E1E14FC(v45, &v26[v27], type metadata accessor for TranscriptProtoQueryPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_20E1E14FC(v26, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_20E1EF280(&v26[v27], v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        if (sub_20E15D148(*v22, *v10))
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          v39 = sub_20E322850();
          sub_20E1E1564(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          if (v39)
          {
            sub_20E1E1564(v22, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
            sub_20E1E1564(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
            v33 = 1;
            return v33 & 1;
          }
        }

        else
        {
          sub_20E1E1564(v10, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        }

        sub_20E1E1564(v22, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        sub_20E1E1564(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
        goto LABEL_18;
      }

      v29 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery;
      v30 = v22;
LABEL_17:
      sub_20E1E1564(v30, v29);
      sub_20E04875C(v26, &qword_27C868ED0, &qword_20E3420D0);
LABEL_18:
      v33 = 0;
      return v33 & 1;
    }

    sub_20E1E14FC(v26, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = type metadata accessor for TranscriptProtoPersonQuery;
      v30 = v20;
      goto LABEL_17;
    }

    sub_20E1EF280(&v26[v27], v8, type metadata accessor for TranscriptProtoPersonQuery);
    v33 = static TranscriptProtoPersonQuery.== infix(_:_:)();
    v34 = type metadata accessor for TranscriptProtoPersonQuery;
    sub_20E1E1564(v8, type metadata accessor for TranscriptProtoPersonQuery);
    v35 = v20;
LABEL_10:
    v36 = v34;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20E1E14FC(v26, v17, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v29 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
      v30 = v17;
      goto LABEL_17;
    }

    v31 = &v26[v27];
    v32 = v42;
    sub_20E1EF280(v31, v42, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v33 = static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)();
    v34 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
    sub_20E1E1564(v32, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v35 = v17;
    goto LABEL_10;
  }

  sub_20E1E14FC(v26, v14, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v29 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
    v30 = v14;
    goto LABEL_17;
  }

  v37 = v43;
  sub_20E1EF280(&v26[v27], v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v33 = static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)();
  sub_20E1E1564(v37, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v35 = v14;
  v36 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
LABEL_13:
  sub_20E1E1564(v35, v36);
  sub_20E1E1564(v26, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  return v33 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = MEMORY[0x28223BE20](v27);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - v7);
  v9 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868F08, &qword_20E342108);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = *(v16 + 56);
  sub_20E1E14FC(a1, &v26 - v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E1E14FC(a2, &v18[v19], type metadata accessor for TranscriptProtoPlannerErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
LABEL_27:
        sub_20E1E1564(v18, type metadata accessor for TranscriptProtoPlannerErrorEnum);
        return 1;
      }

      goto LABEL_16;
    }

    sub_20E1E14FC(v18, v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E1EF280(&v18[v19], v6, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v21 = *v12 == *v6 && v12[1] == v6[1];
      if (v21 || (sub_20E322D60()) && v12[2] == v6[2])
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v6, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v22 = v12;
LABEL_26:
          sub_20E1E1564(v22, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          goto LABEL_27;
        }
      }

      sub_20E1E1564(v6, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v23 = v12;
LABEL_29:
      sub_20E1E1564(v23, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E1E1564(v18, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      return 0;
    }
  }

  else
  {
    sub_20E1E14FC(v18, v14, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20E1EF280(&v18[v19], v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v24 = *v14 == *v8 && v14[1] == v8[1];
      if (v24 || (sub_20E322D60()) && v14[2] == v8[2])
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E1E1564(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v22 = v14;
          goto LABEL_26;
        }
      }

      sub_20E1E1564(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v23 = v14;
      goto LABEL_29;
    }

    v12 = v14;
  }

  sub_20E1E1564(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_16:
  sub_20E04875C(v18, &qword_27C868F08, &qword_20E342108);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  MEMORY[0x28223BE20](v55);
  v58 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  MEMORY[0x28223BE20](v54);
  v56 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v7 = MEMORY[0x28223BE20](v6);
  v59 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v54 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v54 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v61 = (&v54 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = (&v54 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v54 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v54 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v54 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868E98, &qword_20E342090);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v54 - v32;
  v34 = (&v54 + *(v31 + 56) - v32);
  sub_20E1E14FC(v62, &v54 - v32, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E1E14FC(v63, v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v38 = v61;
        sub_20E1E14FC(v33, v61, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v43 = v34;
          v44 = v58;
          sub_20E1EF280(v43, v58, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
          if (sub_20E15B558(*v38, *v44))
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v45 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_30:
              v48 = v45;
              sub_20E1E1564(v44, v45);
              sub_20E1E1564(v38, v48);
              goto LABEL_42;
            }
          }

          v52 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_52:
          v53 = v52;
          sub_20E1E1564(v44, v52);
          sub_20E1E1564(v38, v53);
          goto LABEL_53;
        }

        v50 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_46:
        sub_20E1E1564(v38, v50);
        goto LABEL_47;
      }

      sub_20E1E14FC(v33, v14, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v37 = *v14;
      v36 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (swift_getEnumCaseMultiPayload() != 9)
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

        v38 = v59;
        sub_20E1E14FC(v33, v59, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v50 = type metadata accessor for TranscriptProtoStatementID;
          goto LABEL_46;
        }

        v39 = v34;
        v40 = v57;
        sub_20E1EF280(v39, v57, type metadata accessor for TranscriptProtoStatementID);
        v41 = static TranscriptProtoStatementID.== infix(_:_:)();
        sub_20E1E1564(v40, type metadata accessor for TranscriptProtoStatementID);
        sub_20E1E1564(v38, type metadata accessor for TranscriptProtoStatementID);
        goto LABEL_38;
      }

      sub_20E1E14FC(v33, v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v37 = *v11;
      v36 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_6;
      }
    }

LABEL_23:
    if (v37 == *v34 && v36 == *(v34 + 1))
    {

LABEL_42:
      sub_20E1E1564(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v41 = 1;
      return v41 & 1;
    }

    v49 = sub_20E322D60();

    if (v49)
    {
      goto LABEL_42;
    }

LABEL_53:
    sub_20E1E1564(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_20E1E14FC(v33, v21, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v37 = *v21;
        v36 = v21[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
LABEL_6:

LABEL_47:
          sub_20E04875C(v33, &qword_27C868E98, &qword_20E342090);
LABEL_48:
          v41 = 0;
          return v41 & 1;
        }

        goto LABEL_23;
      }

      v38 = v60;
      sub_20E1E14FC(v33, v60, type metadata accessor for TranscriptProtoAstflatValueEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v47 = v34;
        v44 = v56;
        sub_20E1EF280(v47, v56, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
        if (sub_20E14C50C(*v38, *v44))
        {
          sub_20E3221C0();
          sub_20E1EF2E8();
          if (sub_20E322850())
          {
            v45 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
            goto LABEL_30;
          }
        }

        v52 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
        goto LABEL_52;
      }

      v50 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
      goto LABEL_46;
    }

    sub_20E1E14FC(v33, v24, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_47;
    }

    v46 = *v24 == *v34;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload)
  {
    sub_20E1E14FC(v33, v27, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_47;
    }

    v46 = *v27 == *v34;
LABEL_35:
    v41 = v46;
LABEL_38:
    sub_20E1E1564(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
    return v41 & 1;
  }

  sub_20E1E14FC(v33, v29, type metadata accessor for TranscriptProtoAstflatValueEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_47;
  }

  v42 = *v29 ^ *v34;
  sub_20E1E1564(v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v41 = v42 ^ 1;
  return v41 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v158 = a1;
  v159 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  MEMORY[0x28223BE20](MentionedApps - 8);
  v145 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  MEMORY[0x28223BE20](updated);
  v144 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  MEMORY[0x28223BE20](v128);
  v143 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  MEMORY[0x28223BE20](v127);
  v141 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  MEMORY[0x28223BE20](v122);
  v139 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  MEMORY[0x28223BE20](v120);
  v140 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  MEMORY[0x28223BE20](v126);
  v138 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  MEMORY[0x28223BE20](v118);
  v137 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  MEMORY[0x28223BE20](v125);
  v136 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  MEMORY[0x28223BE20](v121);
  v134 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  MEMORY[0x28223BE20](v119);
  v135 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  MEMORY[0x28223BE20](v18 - 8);
  v132 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  MEMORY[0x28223BE20](v20 - 8);
  v131 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  MEMORY[0x28223BE20](v22 - 8);
  v130 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  MEMORY[0x28223BE20](v24 - 8);
  v129 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  MEMORY[0x28223BE20](v26 - 8);
  v124 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v29 = MEMORY[0x28223BE20](v28);
  v153 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v156 = &v117 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v149 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v157 = &v117 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v155 = &v117 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v150 = &v117 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v154 = &v117 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v151 = &v117 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v152 = &v117 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v148 = &v117 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = (&v117 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v146 = &v117 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v147 = &v117 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v117 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = (&v117 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v117 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v117 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v117 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868EA0, &qword_20E342098);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v73 = &v117 - v72;
  v74 = *(v71 + 56);
  sub_20E1E14FC(v158, &v117 - v72, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v158 = v74;
  sub_20E1E14FC(v159, &v73[v74], type metadata accessor for TranscriptProtoAstflatExprEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E1E14FC(v73, v67, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v103 = v158;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v104 = v129;
        sub_20E1EF280(&v73[v103], v129, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v87 = _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(v67, v104);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
        sub_20E1E1564(v104, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v95 = v67;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
      v77 = v67;
      goto LABEL_102;
    case 2u:
      sub_20E1E14FC(v73, v64, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v93 = v158;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = v130;
        sub_20E1EF280(&v73[v93], v130, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v87 = _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(v64, v94);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
        sub_20E1E1564(v94, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v95 = v64;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
      v77 = v64;
      goto LABEL_102;
    case 3u:
      sub_20E1E14FC(v73, v61, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v98 = v158;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v99 = v131;
        sub_20E1EF280(&v73[v98], v131, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v87 = _s23LighthouseDataProcessor36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(v61, v99);
        sub_20E1E1564(v99, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v95 = v61;
        v100 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
        goto LABEL_50;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
      v77 = v61;
      goto LABEL_102;
    case 4u:
      sub_20E1E14FC(v73, v58, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v85 = v158;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v86 = v132;
        sub_20E1EF280(&v73[v85], v132, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
        v87 = _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(v58, v86);
        v88 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v89 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v90 = v86;
        goto LABEL_48;
      }

      v111 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
      goto LABEL_101;
    case 5u:
      v58 = v147;
      sub_20E1E14FC(v73, v147, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v106 = v158;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
        goto LABEL_101;
      }

      v79 = v135;
      sub_20E1EF280(&v73[v106], v135, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60()) && (sub_20E15B558(*(v58 + 2), *(v79 + 16)))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
      goto LABEL_120;
    case 6u:
      v58 = v146;
      sub_20E1E14FC(v73, v146, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v108 = v158;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
        goto LABEL_101;
      }

      v79 = v134;
      sub_20E1EF280(&v73[v108], v134, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      if (sub_20E1494E0(*v58, *v79))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
      goto LABEL_120;
    case 7u:
      sub_20E1E14FC(v73, v51, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v101 = v158;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v102 = v133;
        sub_20E1EF280(&v73[v101], v133, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v87 = _s23LighthouseDataProcessor37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(v51, v102);
        v89 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
        sub_20E1E1564(v102, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v95 = v51;
        goto LABEL_49;
      }

      v76 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
      v77 = v51;
      goto LABEL_102;
    case 8u:
      v58 = v148;
      sub_20E1E14FC(v73, v148, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v110 = v158;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
        goto LABEL_101;
      }

      v79 = v136;
      sub_20E1EF280(&v73[v110], v136, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
      goto LABEL_120;
    case 9u:
      v58 = v152;
      sub_20E1E14FC(v73, v152, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v92 = v158;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
        goto LABEL_101;
      }

      v79 = v137;
      sub_20E1EF280(&v73[v92], v137, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60()) && v58[16] == *(v79 + 16) && v58[17] == *(v79 + 17))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
      goto LABEL_120;
    case 0xAu:
      v58 = v151;
      sub_20E1E14FC(v73, v151, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v109 = v158;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
        goto LABEL_101;
      }

      v79 = v138;
      sub_20E1EF280(&v73[v109], v138, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
      goto LABEL_120;
    case 0xBu:
      v58 = v154;
      sub_20E1E14FC(v73, v154, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v82 = v158;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_101;
      }

      v79 = v140;
      sub_20E1EF280(&v73[v82], v140, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v83 = *(v58 + 1);
      v84 = *(v79 + 8);
      if (v83)
      {
        if (!v84 || (*v58 != *v79 || v83 != v84) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else if (v84)
      {
        goto LABEL_119;
      }

      sub_20E3221C0();
      sub_20E1EF2E8();
      if (sub_20E322850())
      {
        v80 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_117;
      }

LABEL_119:
      v112 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
      goto LABEL_120;
    case 0xCu:
      v58 = v150;
      sub_20E1E14FC(v73, v150, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v91 = v158;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
        goto LABEL_101;
      }

      v79 = v139;
      sub_20E1EF280(&v73[v91], v139, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      if (sub_20E1494E0(*v58, *v79))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
      goto LABEL_120;
    case 0xDu:
      v58 = v155;
      sub_20E1E14FC(v73, v155, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v107 = v158;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
        goto LABEL_101;
      }

      v79 = v141;
      sub_20E1EF280(&v73[v107], v141, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
      goto LABEL_120;
    case 0xEu:
      v58 = v157;
      sub_20E1E14FC(v73, v157, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v81 = v158;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
        goto LABEL_101;
      }

      v79 = v143;
      sub_20E1EF280(&v73[v81], v143, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      if (*v58 == *v79 && *(v58 + 1) == *(v79 + 8) || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
          goto LABEL_117;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
      goto LABEL_120;
    case 0xFu:
      v58 = v149;
      sub_20E1E14FC(v73, v149, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v96 = v158;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v97 = v142;
        sub_20E1EF280(&v73[v96], v142, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v87 = sub_20E322850();
        v88 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
        goto LABEL_47;
      }

      v111 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
      goto LABEL_101;
    case 0x10u:
      v58 = v156;
      sub_20E1E14FC(v73, v156, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v78 = v158;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v111 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
        goto LABEL_101;
      }

      v79 = v144;
      sub_20E1EF280(&v73[v78], v144, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      if (sub_20E1487B4(*v58, *v79))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          v80 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_117:
          v114 = v80;
          sub_20E1E1564(v79, v80);
          sub_20E1E1564(v58, v114);
LABEL_118:
          sub_20E1E1564(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
          v87 = 1;
          return v87 & 1;
        }
      }

      v112 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_120:
      v115 = v112;
      sub_20E1E1564(v79, v112);
      sub_20E1E1564(v58, v115);
      sub_20E1E1564(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
      goto LABEL_121;
    case 0x11u:
      v58 = v153;
      sub_20E1E14FC(v73, v153, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v105 = v158;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v97 = v145;
        sub_20E1EF280(&v73[v105], v145, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
        sub_20E3221C0();
        sub_20E1EF2E8();
        v87 = sub_20E322850();
        v88 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_47:
        v89 = v88;
        v90 = v97;
LABEL_48:
        sub_20E1E1564(v90, v88);
        v95 = v58;
        goto LABEL_49;
      }

      v111 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_101:
      v76 = v111;
      v77 = v58;
      goto LABEL_102;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    default:
      sub_20E1E14FC(v73, v69, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v75 = v158;
      if (swift_getEnumCaseMultiPayload())
      {
        v76 = type metadata accessor for TranscriptProtoASTFlatValue;
        v77 = v69;
LABEL_102:
        sub_20E1E1564(v77, v76);
LABEL_103:
        sub_20E04875C(v73, &qword_27C868EA0, &qword_20E342098);
LABEL_121:
        v87 = 0;
      }

      else
      {
        v113 = v124;
        sub_20E1EF280(&v73[v75], v124, type metadata accessor for TranscriptProtoASTFlatValue);
        v87 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v69, v113);
        v89 = type metadata accessor for TranscriptProtoASTFlatValue;
        sub_20E1E1564(v113, type metadata accessor for TranscriptProtoASTFlatValue);
        v95 = v69;
LABEL_49:
        v100 = v89;
LABEL_50:
        sub_20E1E1564(v95, v100);
        sub_20E1E1564(v73, type metadata accessor for TranscriptProtoAstflatExprEnum);
      }

      return v87 & 1;
  }
}