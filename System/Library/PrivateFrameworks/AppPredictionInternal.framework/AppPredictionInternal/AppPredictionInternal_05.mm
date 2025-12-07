void sub_2267A379C(void *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v48 = a3;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_226835228();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v47 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v44 = swift_projectBox();
  v49 = [a1 bundleID];
  if (!v49)
  {
    v43 = v16;
    sub_226836408();
    v49 = sub_2268363F8();

    v16 = v43;
  }

  v23 = sub_226836408();
  v25 = v24;
  if ([a1 starting] && (sub_2263B7360(v23, v25, v46) & 1) != 0)
  {
    v26 = [a1 absoluteTimestamp];
    sub_2268351F8();

    v27 = v48;
    swift_beginAccess();
    v28 = *(v27 + 16);
    v29 = *(v28 + 16);
    v43 = v23;
    if (v29 && (v30 = sub_2263B9740(v23, v25), (v31 & 1) != 0))
    {
      v32 = v22;
      (*(v18 + 16))(v16, *(v28 + 56) + *(v18 + 72) * v30, v17);
      v33 = 0;
    }

    else
    {
      v32 = v22;
      v33 = 1;
    }

    v46 = *(v18 + 56);
    v46(v16, v33, 1, v17);
    sub_2267A5C90(v16, v13);
    if ((*(v18 + 48))(v13, 1, v17) == 1)
    {
      (*(v18 + 16))(v47, a4, v17);
      sub_2267A5D00(v13);
    }

    else
    {
      (*(v18 + 32))(v47, v13, v17);
    }

    swift_endAccess();
    v35 = [a5 dataStore];
    v36 = sub_2268351A8();
    v37 = v47;
    v38 = sub_2268351A8();
    [v35 updateNotificationsWithNextAppLaunchDate:v36 receivedDateAfter:v38 forBundleId:v49];

    v39 = v44;
    swift_beginAccess();
    (*(v18 + 24))(v39, v32, v17);
    v40 = v45;
    (*(v18 + 16))(v45, v32, v17);
    v46(v40, 0, 1, v17);
    swift_beginAccess();
    sub_2267A3C74(v40, v43, v25);
    swift_endAccess();
    v41 = *(v18 + 8);
    v41(v37, v17);
    v41(v32, v17);
  }

  else
  {

    v34 = v49;
  }
}

uint64_t sub_2267A3C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_226835228();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_2267A5D00(a1);
    sub_2267A4DE0(a2, a3, v9);

    return sub_2267A5D00(v9);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2267A54BC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_2267A3E2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

Swift::Void __swiftcall ATXNotificationNextAppLaunchRecorder.resetDefaults()()
{
  v1 = [v0 defaults];
  v2 = [v0 appLaunchTimestampKey];
  [v1 removeObjectForKey_];
}

id ATXNotificationNextAppLaunchRecorder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_2267A414C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2267A4198(a1, a2);
  sub_2267A42C8(&unk_283994540);
  return v3;
}

void *sub_2267A4198(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2267A43B4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2268369C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2268364C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2267A43B4(v10, 0);
        result = sub_226836958();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2267A42C8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2267A4428(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2267A43B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA0, &unk_2268734C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2267A4428(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA0, &unk_2268734C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2267A451C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_226836C08();
  sub_226836498();
  v8 = sub_226836C48();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_226836B58() & 1) != 0)
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

    sub_2267A48CC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2267A466C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  result = sub_226836928();
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
      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
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

uint64_t sub_2267A48CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2267A466C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2267A4A4C();
      goto LABEL_16;
    }

    sub_2267A4BA8(v8 + 1);
  }

  v10 = *v4;
  sub_226836C08();
  sub_226836498();
  result = sub_226836C48();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_226836B58();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_226836B98();
  __break(1u);
  return result;
}

void *sub_2267A4A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  v2 = *v0;
  v3 = sub_226836918();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_2267A4BA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  result = sub_226836928();
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
      sub_226836C08();

      sub_226836498();
      result = sub_226836C48();
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

uint64_t sub_2267A4DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2263B9740(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2267A56EC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_226835228();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2267A52D0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_226835228();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2267A4F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_226835228();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B30, &unk_2268733D0);
  v42 = v4;
  result = sub_226836AA8();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

unint64_t sub_2267A52D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    while (1)
    {
      sub_226836C08();

      sub_226836498();
      v9 = sub_226836C48();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_226835228() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2267A54BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2263B9740(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2267A56EC();
      goto LABEL_7;
    }

    sub_2267A4F50(v15, a4 & 1);
    v26 = sub_2263B9740(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_226836BA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_226835228();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2267A563C(v12, a2, a3, a1, v18);
}

uint64_t sub_2267A563C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_226835228();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_2267A56EC()
{
  v1 = v0;
  v35 = sub_226835228();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B30, &unk_2268733D0);
  v3 = *v0;
  v4 = sub_226836A98();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_2267A596C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue] = 0;
  v5 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaults] = a1;
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_dataStore] = a2;
  v6 = objc_allocWithZone(MEMORY[0x277CEBBE0]);
  v7 = a1;
  v8 = a2;
  v9 = [v6 init];
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream] = v9;
  v10 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaultsKeyPrefix];
  *v10 = 0xD000000000000021;
  *(v10 + 1) = 0x80000002268CDD30;
  v11 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_installedAppsProvider];
  *v11 = sub_2267A2C90;
  v11[1] = 0;
  v13.receiver = v2;
  v13.super_class = ATXNotificationNextAppLaunchRecorder;
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_2267A5AD0()
{
  result = qword_28138FE20;
  if (!qword_28138FE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A2510, &qword_2268754C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE20);
  }

  return result;
}

uint64_t sub_2267A5B74@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_2267A5BA4(void *a1)
{
  v3 = *(sub_226835228() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2267A379C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return 1;
}

uint64_t sub_2267A5C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2267A5C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267A5D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267A5D68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA7FAA0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2267A451C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2267A5EE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_2267A5F18(uint64_t a1)
{
  result = sub_2263B9270(&qword_27D7A1B40, &unk_2268733FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267A5F5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_226836118();
  result = sub_226836108();
  a1[3] = v2;
  a1[4] = &off_2839962B0;
  *a1 = result;
  return result;
}

void *sub_2267A5FD8(void *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for PowerThrottlingCreditPool.Config();
  v5 = PowerThrottlingCreditPool.Config.__allocating_init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(0xD000000000000019, 0x80000002268CDD90, 20, 3600, 0xD000000000000019, 0x80000002268CD520, 0x6863746177, 0xE500000000000000);
  type metadata accessor for PowerThrottlingCreditPool(0);
  v6 = v5;
  v2[2] = PowerThrottlingCreditPool.__allocating_init(config:)(v6);
  sub_22679CBC4(a1, (v2 + 3));
  v7 = v2[6];
  v8 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v7);
  (*(v8 + 8))(v7, v8);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2267A62AC(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v96 - v7;
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v18 = MEMORY[0x28223BE20](&v96 - v13);
  v20 = &v96 - v19;
  if (!a1)
  {
    goto LABEL_41;
  }

  v100 = v14;
  v101 = v17;
  v99 = v16;
  v102 = v15;
  v104 = v3;
  v21 = v2;
  v22 = [a1 allSuggestionsInLayout];
  sub_2263B51C8();
  v23 = sub_226836568();

  if (v23 >> 62)
  {
    v24 = sub_2268368D8();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v24 < 2;
  v2 = v21;
  v3 = v104;
  if (!v25)
  {
    v26 = sub_2267F7768();
    (*(v3 + 16))(v20, v26, v21);
    v27 = sub_226836038();
    v28 = sub_2268366D8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2263AA000, v27, v28, "Unexpected number of Watch Smart Stack suggestions; the layout selector should only yield up to one", v29, 2u);
      MEMORY[0x22AA821D0](v29, -1, -1);
    }

    v3 = v104;
    v2 = v21;
    (*(v104 + 8))(v20, v21);
  }

  v30 = [a1 allSuggestionsInLayout];
  v31 = sub_226836568();

  if (!(v31 >> 62))
  {
    result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  result = sub_2268368D8();
  if (!result)
  {
LABEL_40:

LABEL_41:
    v92 = sub_2267F7768();
    (*(v3 + 16))(v5, v92, v2);
    v93 = sub_226836038();
    v94 = sub_2268366C8();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2263AA000, v93, v94, "Proactive Suggestion not found. Cannot send proactive suggestion to Watch.", v95, 2u);
      MEMORY[0x22AA821D0](v95, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

LABEL_10:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x22AA7FDD0](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v33 = *(v31 + 32);
  }

  v34 = v33;

  v35 = [v34 executableSpecification];
  v36 = [v35 executableObject];

  if (!v36)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
LABEL_23:
    v51 = sub_2267F7768();
    (*(v3 + 16))(v8, v51, v2);
    v52 = sub_226836038();
    v53 = sub_2268366C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2263AA000, v52, v53, "Proactive Suggestion did not contain an ATXAction. Cannot send proactive suggestion to Watch.", v54, 2u);
      MEMORY[0x22AA821D0](v54, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  v38 = v103;
  v39 = *(*v103 + 128);
  v98 = v37;
  v40 = v39();
  v42 = v41;
  v43 = (*(*v38 + 136))();
  if (v44)
  {
    v45 = v43;
    v46 = v44;
    if (v40 == v43 && v44 == v42 || (sub_226836B58() & 1) != 0)
    {

      v47 = sub_2267F7768();
      v5 = v101;
      (*(v3 + 16))(v101, v47, v2);
      v48 = sub_226836038();
      v49 = sub_2268366E8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2263AA000, v48, v49, "Not sending the same Watch Smart Stack suggestions", v50, 2u);
        MEMORY[0x22AA821D0](v50, -1, -1);
      }

      swift_unknownObjectRelease();
      return (*(v3 + 8))(v5, v2);
    }

    v97 = v34;
    v68 = sub_2267F7768();
    v69 = v3 + 16;
    v67 = *(v3 + 16);
    v101 = v69 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v70 = v99;
    v67(v99, v68, v2);

    v71 = sub_226836038();
    v72 = sub_2268366E8();

    v73 = os_log_type_enabled(v71, v72);
    v100 = v2;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105 = v96;
      *v74 = 136315394;
      *(v74 + 4) = sub_2263B4D48(v40, v42, &v105);
      *(v74 + 12) = 2080;
      v75 = sub_2263B4D48(v45, v46, &v105);
      v76 = v70;
      v77 = v75;

      *(v74 + 14) = v77;
      _os_log_impl(&dword_2263AA000, v71, v72, "Sending updated Watch Smart Stack suggestion: %s (last one: %s", v74, 0x16u);
      v78 = v96;
      swift_arrayDestroy();
      MEMORY[0x22AA821D0](v78, -1, -1);
      MEMORY[0x22AA821D0](v74, -1, -1);

      v65 = *(v104 + 8);
      v79 = v76;
    }

    else
    {

      v65 = *(v104 + 8);
      v79 = v70;
    }

    v66 = v100;
    v65(v79, v100);
    v34 = v97;
  }

  else
  {
    v55 = sub_2267F7768();
    v56 = *(v3 + 16);
    v57 = v3;
    v101 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58 = v100;
    v99 = v56;
    v56(v100, v55, v2);

    v59 = sub_226836038();
    v60 = sub_2268366E8();

    v61 = v2;
    if (os_log_type_enabled(v59, v60))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v105 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_2263B4D48(v40, v42, &v105);
      _os_log_impl(&dword_2263AA000, v59, v60, "Sending new Watch Smart Stack suggestion: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x22AA821D0](v63, -1, -1);
      MEMORY[0x22AA821D0](v62, -1, -1);

      v64 = v104;
    }

    else
    {

      v64 = v57;
    }

    v65 = *(v64 + 8);
    v66 = v61;
    v65(v58, v61);
    v67 = v99;
  }

  v80 = sub_2267F7768();
  v81 = v102;
  v67(v102, v80, v66);

  v82 = sub_226836038();
  v83 = sub_2268366B8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = v81;
    v100 = v66;
    v86 = v84;
    v87 = v40;
    v88 = swift_slowAlloc();
    v105 = v88;
    *v86 = 136315394;
    *(v86 + 4) = sub_2263B4D48(0xD00000000000007FLL, 0x80000002268CDDB0, &v105);
    *(v86 + 12) = 2080;
    v89 = sub_2263B4D48(v87, v42, &v105);

    *(v86 + 14) = v89;
    _os_log_impl(&dword_2263AA000, v82, v83, "%s: UI cache updated with suggestion ID: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v88, -1, -1);
    MEMORY[0x22AA821D0](v86, -1, -1);

    v90 = v85;
    v91 = v100;
  }

  else
  {

    v90 = v81;
    v91 = v66;
  }

  v65(v90, v91);
  (*(*v103 + 112))(v98, v34);

  return swift_unknownObjectRelease();
}

uint64_t sub_2267A6D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a2;
  v5 = *v2;
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226836408();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_2268363F8();

  v12 = [v10 initWithSuiteName_];

  sub_226835218();
  sub_226835168();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v15 = v3[2];
  v16 = swift_allocObject();
  swift_weakInit();
  v21 = v16;
  v22 = a1;
  v23 = v19;
  v24 = v12;
  v25 = v14;
  v26 = v5;
  (*((*MEMORY[0x277D85000] & *v15) + 0x78))(1, sub_2267A838C, v20);
}

uint64_t sub_2267A6F98(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v70 = a4;
  v90 = a3;
  v84 = sub_226836098();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2268360A8();
  v87 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v69 - v9;
  v85 = sub_2268360B8();
  v81 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v69 - v12;
  v13 = sub_226834F28();
  v97 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v79 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B50, "ԁ\n");
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = sub_2268360D8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v78 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v69 - v24;
  v94 = sub_226835268();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v77 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v29 = sub_226836068();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v75 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v74 = v29;
    v35 = [a2 actionUUID];
    v89 = v28;
    sub_226835248();

    v76 = a2;
    v36 = [a2 bundleId];
    v73 = sub_226836408();
    v72 = v37;

    v38 = [v90 scoreSpecification];
    [v38 suggestedConfidenceCategory];

    sub_2268360C8();
    v39 = *(v21 + 48);
    v40 = v39(v19, 1, v20);
    v90 = v13;
    v88 = v20;
    if (v40 == 1)
    {
      v41 = v91;
      (*(v21 + 104))(v91, *MEMORY[0x277D2BD88], v20);
      v42 = v39(v19, 1, v20);
      v43 = v85;
      v44 = v95;
      v45 = v96;
      v46 = v21;
      if (v42 != 1)
      {
        sub_2267A1DC0(v19, &qword_27D7A1B50, "ԁ\n");
      }
    }

    else
    {
      v41 = v91;
      (*(v21 + 32))(v91, v19, v20);
      v43 = v85;
      v44 = v95;
      v45 = v96;
      v46 = v21;
    }

    v71 = v46;
    v51 = v76;
    v52 = [v76 criteria];
    v53 = [v52 dateInterval];

    sub_226834EF8();
    v54 = v81;
    (*(v81 + 104))(v45, *MEMORY[0x277D2BD80], v43);
    v55 = Strong;
    v56 = v44;
    v57 = v43;
    v58 = v98;
    (*(*Strong + 120))(v51);
    (*(v92 + 16))(v77, v89, v94);
    (*(v46 + 16))(v78, v41, v88);
    (*(v97 + 16))(v79, v56, v90);
    (*(v54 + 16))(v80, v45, v57);
    (*(v87 + 16))(v82, v58, v99);
    v59 = v86;
    sub_226836088();
    v60 = v55[6];
    v61 = v55[7];
    __swift_project_boxed_opaque_existential_1(v55 + 3, v60);
    (*(v61 + 16))(v59, v60, v61);
    v62 = v99;
    v63 = v71;
    v64 = v88;
    v65 = v70;
    if (v70)
    {
      v66 = sub_226836648();
      v67 = sub_2268363F8();
      [v65 setValue:v66 forKey:v67];
    }

    (*(*Strong + 144))(v76);

    (*(v83 + 8))(v86, v84);
    (*(v87 + 8))(v98, v62);
    (*(v54 + 8))(v96, v85);
    (*(v97 + 8))(v95, v90);
    (*(v63 + 8))(v91, v64);
    return (*(v92 + 8))(v89, v94);
  }

  else
  {
    v47 = sub_2267F7768();
    (*(v30 + 16))(v34, v47, v29);
    v48 = sub_226836038();
    v49 = sub_2268366D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2263AA000, v48, v49, "Self was nil. Cannot replicate Proactive Suggestion to paired watch", v50, 2u);
      MEMORY[0x22AA821D0](v50, -1, -1);
    }

    return (*(v30 + 8))(v34, v29);
  }
}

uint64_t sub_2267A7C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226835268();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_226836068();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [a1 heuristic];
  if (v13)
  {
    v14 = v13;
    v15 = sub_226836408();
    v17 = v16;

    sub_2267B30A4(v15, v17, a2);
  }

  else
  {
    v19 = sub_2267F7768();
    (*(v9 + 16))(v12, v19, v8);
    v20 = a1;
    v21 = sub_226836038();
    v22 = sub_2268366D8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = a2;
      v24 = v23;
      v36 = swift_slowAlloc();
      v38 = v36;
      *v24 = 136446210;
      v25 = [v20 actionUUID];
      sub_226835248();

      sub_2267A839C();
      v35 = v22;
      v26 = sub_226836B48();
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = sub_2263B4D48(v26, v28, &v38);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2263AA000, v21, v35, "[%{public}s] Heuristic was nil on action. This should never happen. Defaulting to unknown suggestion type", v24, 0xCu);
      v30 = v36;
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x22AA821D0](v30, -1, -1);
      v31 = v24;
      a2 = v37;
      MEMORY[0x22AA821D0](v31, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v32 = *MEMORY[0x277D2BD78];
    v33 = sub_2268360A8();
    return (*(*(v33 - 8) + 104))(a2, v32, v33);
  }
}

uint64_t sub_2267A7FA8(void *a1)
{
  v2 = sub_226835268();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 actionUUID];
  sub_226835248();

  sub_2267A839C();
  v10[0] = sub_226836B48();
  v10[1] = v8;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x22AA7F8E0](41, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_2267A80BC()
{
  sub_226836408();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2268363F8();

  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2268363F8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_226836408();

  return v5;
}

void sub_2267A81B4(uint64_t a1)
{
  sub_226836408();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2268363F8();

  v5 = [v3 initWithSuiteName_];

  (*(*v1 + 128))(a1);
  if (v5)
  {
    v8 = v5;
    v6 = sub_2268363F8();

    v7 = sub_2268363F8();
    [v8 setValue:v6 forKey:v7];
  }

  else
  {
  }
}

uint64_t sub_2267A834C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_2267A839C()
{
  result = qword_27D7A1B48;
  if (!qword_27D7A1B48)
  {
    sub_226835268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1B48);
  }

  return result;
}

uint64_t sub_2267A8418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_226836068();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_226835E78();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_226835EE8();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_226835EC8();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B58, qword_2268734D8);
  v2[19] = swift_task_alloc();
  v7 = sub_226835CC8();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267A86B0, 0, 0);
}

uint64_t sub_2267A86B0()
{
  v30 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  v2 = v1;
  v0[24] = v1;
  if (!v1 || (v3 = v1, sub_226835D78(), v4 = sub_2268363F8(), , v5 = [v3 stringForKey_], v4, v3, !v5))
  {
LABEL_5:
    sub_226836028();
    v9 = sub_226836038();
    v10 = sub_2268366C8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    if (v11)
    {
      v28 = v0[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315138;
      v17 = sub_226836CA8();
      v19 = sub_2263B4D48(v17, v18, &v29);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2263AA000, v9, v10, "%s: No valid CarPlay identifier found in defaults. Device hasn't experienced CarPlay widgets", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA821D0](v16, -1, -1);
      MEMORY[0x22AA821D0](v15, -1, -1);

      (*(v13 + 8))(v28, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v20 = v0[1];

    return v20();
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  sub_226836408();

  sub_226835CB8();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_2267A1DC0(v0[19], &qword_27D7A1B58, qword_2268734D8);
    goto LABEL_5;
  }

  v22 = v0[22];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[21];
  (*(v25 + 32))(v23, v0[19], v24);
  sub_226835E58();
  (*(v25 + 16))(v22, v23, v24);
  v0[25] = sub_226835E38();
  sub_2267ABDE8(&qword_27D7A1B60, MEMORY[0x277CFC7B0], MEMORY[0x277CFC7B8]);
  v27 = sub_2268365D8();

  return MEMORY[0x2822009F8](sub_2267A8A74, v27, v26);
}

uint64_t sub_2267A8A74()
{
  *(v0 + 208) = sub_226835E48();
  *(v0 + 216) = 0;

  return MEMORY[0x2822009F8](sub_2267A8B08, 0, 0);
}

uint64_t sub_2267A8B08(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 208);
  if (v2)
  {
    if (v2 >> 62)
    {
      if (sub_2268368D8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = &selRef_dateByAddingComponents_toDate_options_;
      if ([*(v1 + 16) didDefer] || (v4 = *(v1 + 136), v5 = *(v1 + 144), v6 = *(v1 + 128), v7 = *(v1 + 16), v8 = MEMORY[0x277D85000], (*((*MEMORY[0x277D85000] & **(v1 + 24)) + 0x58))(v2), sub_2267ABDE8(&qword_27D7A1B68, MEMORY[0x277CFC7D8], MEMORY[0x277CFC7D0]), sub_226835CD8(), (*(v4 + 8))(v5, v6), objc_msgSend(v7, sel_didDefer)))
      {
        v9 = *(v1 + 192);
        (*(*(v1 + 168) + 8))(*(v1 + 184), *(v1 + 160));
      }

      else
      {
        v10 = (*((*v8 & **(v1 + 24)) + 0x60))(v2);

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v1 + 112);
          v15 = *(v12 + 16);
          v14 = v12 + 16;
          v13 = v15;
          v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
          v17 = *(v14 + 56);
          do
          {
            v18 = *(v1 + 120);
            v19 = *(v1 + 104);
            v13(v18, v16, v19);
            sub_2267ABDE8(&qword_27D7A1B70, MEMORY[0x277CFC7E8], MEMORY[0x277CFC7E0]);
            sub_226835CD8();
            (*(v14 - 8))(v18, v19);
            v16 += v17;
            --v11;
          }

          while (v11);

          v3 = &selRef_dateByAddingComponents_toDate_options_;
        }

        else
        {
        }

        if ([*(v1 + 16) v3[177]])
        {
          v20 = *(v1 + 192);
          (*(*(v1 + 168) + 8))(*(v1 + 184), *(v1 + 160));
        }

        else
        {
          v21 = (*((*MEMORY[0x277D85000] & **(v1 + 24)) + 0x68))(*(v1 + 16));
          v22 = *(v21 + 16);
          if (v22)
          {
            v23 = *(v1 + 88);
            v26 = *(v23 + 16);
            v24 = v23 + 16;
            v25 = v26;
            v27 = v21 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
            v28 = *(v24 + 56);
            do
            {
              v29 = *(v1 + 96);
              v30 = *(v1 + 80);
              v25(v29, v27, v30);
              sub_2267ABDE8(&qword_27D7A1B78, MEMORY[0x277CFC7C8], MEMORY[0x277CFC7C0]);
              sub_226835CD8();
              (*(v24 - 8))(v29, v30);
              v27 += v28;
              --v22;
            }

            while (v22);
            v31 = *(v1 + 192);
          }

          else
          {
            v31 = *(v1 + 192);
          }

          (*(*(v1 + 168) + 8))(*(v1 + 184), *(v1 + 160));
        }
      }

      goto LABEL_25;
    }
  }

  sub_226836028();
  v32 = sub_226836038();
  v33 = sub_2268366C8();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v1 + 184);
  v36 = *(v1 + 192);
  v38 = *(v1 + 160);
  v37 = *(v1 + 168);
  v39 = *(v1 + 72);
  v41 = *(v1 + 40);
  v40 = *(v1 + 48);
  if (v34)
  {
    v51 = *(v1 + 72);
    v52 = *(v1 + 160);
    v42 = swift_slowAlloc();
    v50 = v36;
    v43 = swift_slowAlloc();
    v53 = v43;
    *v42 = 136315138;
    v44 = sub_226836CA8();
    v49 = v35;
    v46 = sub_2263B4D48(v44, v45, &v53);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_2263AA000, v32, v33, "%s: Not collecting CarPlay metrics, no stack config cache or stack is empty", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AA821D0](v43, -1, -1);
    MEMORY[0x22AA821D0](v42, -1, -1);

    (*(v40 + 8))(v51, v41);
    (*(v37 + 8))(v49, v52);
  }

  else
  {

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v35, v38);
  }

LABEL_25:

  v47 = *(v1 + 8);

  return v47();
}

uint64_t sub_2267A90C4()
{
  v26 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  (*(v4 + 8))(v2, v3);
  sub_226836028();
  v5 = v1;
  v6 = sub_226836038();
  v7 = sub_2268366C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 216);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  if (v8)
  {
    v24 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315394;
    v16 = sub_226836CA8();
    v23 = v10;
    v18 = sub_2263B4D48(v16, v17, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2263AA000, v6, v7, "%s: could not log CarPlay widget metrics: %@", v13, 0x16u);
    sub_2267A1DC0(v14, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA821D0](v15, -1, -1);
    MEMORY[0x22AA821D0](v13, -1, -1);

    (*(v11 + 8))(v23, v24);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2267A94D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2267A959C;

  return sub_2267A8418(v6);
}

uint64_t sub_2267A959C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2267A96F4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_44:
    v3 = sub_2268368D8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v41 = v3;
  if (v3)
  {
    v42 = MEMORY[0x277D84F90];
    v5 = sub_2267ABE30(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x28214F320](v5, v6, v7, v8, v9, v10, v11);
    }

    v40 = v2;
    v12 = 0;
    v4 = v42;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AA7FDD0](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v13 widgets];
      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v16 = sub_226836568();

      if (v16 >> 62)
      {
        v17 = sub_2268368D8();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = *(v42 + 16);
      v18 = *(v42 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2267ABE30((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v42 + 16) = v19 + 1;
      *(v42 + 8 * v19 + 32) = v17;
    }

    while (v3 != v12);
    v2 = v40;
  }

  if (v2)
  {
    v2 = sub_2268368D8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v21 = a1 & 0xC000000000000001;
  do
  {
    v22 = v20;
    if (v2 == v20)
    {
      break;
    }

    if (v21)
    {
      v23 = MEMORY[0x22AA7FDD0](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v23 = *(a1 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = [v23 allowsSmartRotate];

    v20 = v22 + 1;
  }

  while (!v25);
  v26 = 0;
  do
  {
    v27 = v26;
    if (v2 == v26)
    {
      break;
    }

    if (v21)
    {
      v28 = MEMORY[0x22AA7FDD0](v26, a1);
    }

    else
    {
      if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v28 = *(a1 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_42;
    }

    v30 = [v28 allowsNewWidget];

    v26 = v27 + 1;
  }

  while (!v30);
  v31 = v2 != v27;
  v32 = v2 != v22;
  sub_226835F08();
  v33 = sub_2268363F8();

  Bool = _ATXDomainGetBool(v33);

  sub_226835F28();
  v35 = sub_2268363F8();

  v36 = _ATXDomainGetBool(v35);

  sub_226835F18();
  v37 = sub_2268363F8();

  v38 = _ATXDomainGetBool(v37);

  v6 = v41;
  v5 = Bool;
  v7 = v32;
  v8 = v31;
  v9 = v36;
  v10 = v38;
  v11 = v4;

  return MEMORY[0x28214F320](v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2267A9A60(uint64_t a1)
{
  v38 = sub_226835E78();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v31[1] = v1;
  v48 = MEMORY[0x277D84F90];
  sub_2267ABEAC(0, v5, 0);
  v6 = v48;
  v46 = a1 + 64;
  result = sub_226836898();
  v8 = result;
  v9 = 0;
  v47 = *(a1 + 36);
  v35 = v3 + 32;
  v36 = v3;
  v32 = a1 + 72;
  v33 = v5;
  v34 = a1;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v46 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_22;
    }

    if (v47 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v39 = v9;
    v12 = *(a1 + 48) + 16 * v8;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = (*(a1 + 56) + 32 * v8);
    v43 = *v15;
    v44 = v14;
    v16 = v15[1];
    v41 = v15[2];
    v42 = v16;
    v40 = v15[3];
    v17 = v13;
    v45 = v6;
    v18 = v17;
    v19 = [v17 extensionBundleId];
    sub_226836408();

    v20 = [v18 kind];
    sub_226836408();

    v21 = v37;
    sub_226835E68();

    v6 = v45;
    v48 = v45;
    v23 = *(v45 + 16);
    v22 = *(v45 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_2267ABEAC((v22 > 1), v23 + 1, 1);
      v6 = v48;
    }

    *(v6 + 16) = v23 + 1;
    result = (*(v36 + 32))(v6 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23, v21, v38);
    a1 = v34;
    v10 = 1 << *(v34 + 32);
    if (v8 >= v10)
    {
      goto LABEL_24;
    }

    v24 = *(v46 + 8 * v11);
    if ((v24 & (1 << v8)) == 0)
    {
      goto LABEL_25;
    }

    if (v47 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v8 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v11 << 6;
      v27 = v11 + 1;
      v28 = (v32 + 8 * v11);
      while (v27 < (v10 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_2267ACE0C(v8, v47, 0);
          v10 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_2267ACE0C(v8, v47, 0);
    }

LABEL_4:
    v9 = v39 + 1;
    v8 = v10;
    if (v39 + 1 == v33)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_2267A9E14(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA7FDD0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = sub_2267AA010(v3, v5, a1);

      v9 = *(v8 + 16);
      v10 = v4[2];
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= v4[3] >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v4 = sub_2267ABC10(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        if (*(v8 + 16))
        {
LABEL_19:
          v14 = (v4[3] >> 1) - v4[2];
          sub_226835EE8();
          if (v14 < v9)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v15 = v4[2];
            v16 = __OFADD__(v15, v9);
            v17 = v15 + v9;
            if (v16)
            {
              goto LABEL_29;
            }

            v4[2] = v17;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

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
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AA010(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = sub_226835EE8();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 widgets];
  sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
  v13 = sub_226836568();

  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  v16 = v13 >> 62;
  if (v16)
  {
    goto LABEL_27;
  }

  v17 = *(v15 + 16);
  if (v17)
  {
    while (1)
    {
      v18 = v14;
      v57 = MEMORY[0x277D84F90];
      v14 = sub_2267ABEF0(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        break;
      }

      v3 = v57;
      if (v16)
      {
        v14 = sub_2268368D8();
        v19 = v18;
        v51 = v14;
      }

      else
      {
        v19 = v18;
        v51 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_31;
      }

      if (a3 >> 62)
      {
        goto LABEL_32;
      }

      v45 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
      v20 = 0;
      v50 = v19 & 0xC000000000000001;
      v43 = v19 & 0xFFFFFFFFFFFFFF8;
      v44 = v53 + 32;
      v21 = &off_2785A4000;
      v47 = v19;
      v48 = v11;
      v46 = v17;
      while (v20 < v51)
      {
        v55 = v3;
        if (v50)
        {
          v22 = MEMORY[0x22AA7FDD0](v20);
        }

        else
        {
          if (v20 >= *(v43 + 16))
          {
            goto LABEL_26;
          }

          v22 = *(v19 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v22 v21[474]];
        v25 = [v24 extensionIdentity];

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA8, &qword_226873680);
        sub_2268353A8();
        swift_endAccess();

        v26 = [v23 v21[474]];
        v27 = [v26 kind];

        v28 = sub_226836408();
        v30 = v29;

        v31 = [v23 v21[474]];
        v32 = [v31 intentReference];

        v54 = v28;
        if (v32)
        {
          v33 = [v32 intent];

          v34 = [v33 _className];
          v11 = sub_226836408();
        }

        else
        {
          v11 = 0;
        }

        v35 = [v23 v21[474]];
        v36 = [v35 intentReference];

        a1 = v30;
        if (v36)
        {
          v37 = [v36 intent];

          v36 = [v37 _indexingHash];
        }

        ++v20;
        v56 = v36;
        sub_226836B48();
        [v23 isSuggestedWidget];
        v38 = v48;
        sub_226835ED8();

        v3 = v55;
        v57 = v55;
        v16 = *(v55 + 16);
        v39 = *(v55 + 24);
        a3 = v16 + 1;
        if (v16 >= v39 >> 1)
        {
          sub_2267ABEF0((v39 > 1), v16 + 1, 1);
          v3 = v57;
        }

        *(v3 + 16) = a3;
        v14 = (*(v53 + 32))(v3 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v16, v38, v52);
        v19 = v47;
        v21 = &off_2785A4000;
        if (v46 == v20)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v40 = v14;
      v17 = sub_2268368D8();
      v14 = v40;
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v14 = sub_2268368D8();
    v19 = v18;
    v45 = v14;
    goto LABEL_10;
  }

LABEL_28:

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AA620(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  return sub_226836C48();
}

uint64_t sub_2267AA674()
{
  v1 = *(v0 + 8);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267AA6D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2268367F8();
  return MEMORY[0x22AA80040](v2);
}

uint64_t sub_2267AA710(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

uint64_t sub_2267AA768(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  return sub_2268367E8() & (v2 == v3);
}

uint64_t sub_2267AA870(void *a1)
{
  v50 = a1;
  v1 = sub_226835E28();
  v53 = *(v1 - 8);
  v54 = v1;
  MEMORY[0x28223BE20](v1);
  v52 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  MEMORY[0x28223BE20](v3);
  v59 = &v45 - v4;
  v5 = sub_2268352B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2268352D8();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_226835228();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = &v45 - v20;
  v21 = swift_allocObject();
  v22 = sub_2267AC7A8(MEMORY[0x277D84F90]);
  v58 = v21;
  *(v21 + 16) = v22;
  v49 = v21 + 16;
  sub_2268352A8();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9968], v5);
  sub_226835218();
  sub_226835298();
  v56 = *(v16 + 8);
  v56(v18, v15);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v55);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2267A1DC0(v14, &qword_27D7A2530, qword_2268738A0);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = *(v16 + 32);
    v48 = v15;
    v24();
    v25 = v59;
    sub_226835E18();
    v47 = [objc_allocWithZone(MEMORY[0x277CEBC20]) init];
    v46 = sub_2268351A8();
    sub_226835218();
    v45 = sub_2268351A8();
    v56(v18, v15);
    v64 = sub_2267AAFE0;
    v65 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_2267A3E2C;
    v63 = &block_descriptor_1;
    v26 = _Block_copy(&aBlock);

    v27 = swift_allocObject();
    v55 = v16 + 8;
    v28 = v50;
    *(v27 + 16) = v50;
    v64 = sub_2267AC8B4;
    v65 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_2267AB160;
    v63 = &block_descriptor_9;
    v29 = _Block_copy(&aBlock);
    v30 = v28;

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v52;
    v33 = v53;
    v34 = v25;
    v35 = v54;
    (*(v53 + 16))(v52, v34, v54);
    v36 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v37 = (v51 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v31;
    (*(v33 + 32))(v38 + v36, v32, v35);
    *(v38 + v37) = v58;
    v64 = sub_2267AC8EC;
    v65 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_2267ABACC;
    v63 = &block_descriptor_18;
    v39 = _Block_copy(&aBlock);

    v40 = v47;
    v41 = v46;
    v42 = v45;
    [v47 enumerateConnectedEventsFromStartDate:v46 endDate:v45 filterBlock:v26 limit:0 ascending:1 shouldContinue:v29 block:v39];
    _Block_release(v39);
    _Block_release(v29);
    _Block_release(v26);

    swift_beginAccess();

    v23 = sub_2267A9A60(v43);

    (*(v33 + 8))(v59, v35);
    v56(v57, v48);
  }

  return v23;
}

id sub_2267AAFE0(void *a1)
{
  v2 = sub_226835228();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  result = [a1 endTime];
  if (result)
  {
    v11 = result;
    sub_2268351F8();

    result = [a1 startTime];
    if (result)
    {
      v12 = result;
      sub_2268351F8();

      sub_226835188();
      v14 = v13;
      v15 = *(v3 + 8);
      v15(v5, v2);
      v15(v9, v2);
      return (v14 >= 300.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2267AB160(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_2267AB1A0(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v100 = a4;
  v103 = a3;
  v104 = a1;
  v4 = sub_226835DC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v101 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v87 - v8;
  v9 = sub_226835228();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v98 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v20 = sub_226836068();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v87 = Strong;
  if (([v104 connected] & 1) == 0)
  {
    sub_226836028();
    v83 = sub_226836038();
    v84 = sub_2268366D8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2263AA000, v83, v84, "Encountered disconnected CarPlay event inside CarPlay connected stream", v85, 2u);
      MEMORY[0x22AA821D0](v85, -1, -1);
    }

    (*(v21 + 8))(v23, v20);
    return;
  }

  v25 = v5;
  v97 = v4;
  v26 = [v104 startTime];
  if (!v26)
  {
    __break(1u);
    goto LABEL_63;
  }

  v27 = v26;
  sub_2268351F8();

  v28 = [v104 endTime];
  if (!v28)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v29 = v28;
  sub_2268351F8();

  v30 = sub_226835E08();
  v31 = *(v10 + 8);
  v31(v16, v9);
  v31(v19, v9);
  v32 = [v104 startTime];
  if (v32)
  {
    v33 = v32;
    v34 = v102;
    sub_2268351F8();

    v35 = [v104 endTime];
    if (v35)
    {
      v36 = v35;
      v37 = v98;
      sub_2268351F8();

      sub_226835188();
      v39 = v38;
      v31(v37, v9);
      v31(v34, v9);
      v40 = v39 / 60.0;
      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_56;
      }

      if (v40 <= -9.22337204e18)
      {
LABEL_57:
        __break(1u);
      }

      else if (v40 < 9.22337204e18)
      {
        v41 = v30;
        if (!(v30 >> 62))
        {
          v42 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v43 = v100;
          if (v42)
          {
LABEL_12:
            v30 = 0;
            v93 = v40;
            v96 = v41 & 0xC000000000000001;
            v89 = v41 & 0xFFFFFFFFFFFFFF8;
            v98 = v25 + 8;
            v95 = (v25 + 88);
            v94 = *MEMORY[0x277CFC7A0];
            v90 = *MEMORY[0x277CFC7A8];
            v88 = *MEMORY[0x277CFC798];
            v92 = v41;
            v91 = v42;
            while (1)
            {
              if (v96)
              {
                v46 = MEMORY[0x22AA7FDD0](v30);
              }

              else
              {
                if (v30 >= *(v89 + 16))
                {
                  goto LABEL_53;
                }

                v46 = *(v41 + 8 * v30 + 32);
              }

              v25 = v46;
              if (__OFADD__(v30, 1))
              {
                __break(1u);
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v102 = (v30 + 1);
              sub_226835DE8();
              sub_226835DD8();
              v47 = objc_allocWithZone(MEMORY[0x277CEB9B0]);
              v48 = sub_2268363F8();

              v49 = sub_2268363F8();

              v50 = [v47 initWithExtensionBundleId:v48 kind:v49];

              v51 = v99;
              sub_226835DF8();
              v52 = sub_226835DB8();
              v53 = v97;
              v54 = *v98;
              (*v98)(v51, v97);
              swift_beginAccess();
              v55 = *(v43 + 16);
              v56 = *(v55 + 16);
              v103 = v50;
              if (v56 && (v57 = sub_2267AC214(v50, v52), (v58 & 1) != 0))
              {
                v59 = (*(v55 + 56) + 32 * v57);
                v60 = *v59;
                v61 = v59[1];
                v104 = v59[2];
                swift_endAccess();
              }

              else
              {
                swift_endAccess();
                v104 = 0;
                v61 = 0;
                v60 = 0;
              }

              v62 = v101;
              sub_226835DF8();
              v63 = (*v95)(v62, v53);
              if (v63 == v94)
              {
                break;
              }

              if (v63 == v90)
              {
                v64 = __OFADD__(v60++, 1);
                if (v64)
                {
                  goto LABEL_54;
                }

LABEL_30:
                v65 = v52;
                goto LABEL_31;
              }

              v65 = v52;
              if (v63 == v88)
              {
                if (__OFADD__(v104, 1))
                {
                  goto LABEL_55;
                }

                ++v104;
              }

              else
              {
                v54(v101, v53);
              }

LABEL_31:
              swift_beginAccess();
              v66 = v103;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v105 = *(v43 + 16);
              v68 = v105;
              *(v43 + 16) = 0x8000000000000000;
              v70 = sub_2267AC214(v66, v65);
              v71 = v68[2];
              v72 = (v69 & 1) == 0;
              v73 = v71 + v72;
              if (__OFADD__(v71, v72))
              {
                goto LABEL_50;
              }

              v74 = v69;
              if (v68[3] >= v73)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v77 = v105;
                  if (v69)
                  {
                    goto LABEL_13;
                  }
                }

                else
                {
                  sub_2267AC634();
                  v77 = v105;
                  if (v74)
                  {
                    goto LABEL_13;
                  }
                }
              }

              else
              {
                sub_2267AC384(v73, isUniquelyReferenced_nonNull_native);
                v75 = sub_2267AC214(v66, v65);
                if ((v74 & 1) != (v76 & 1))
                {
                  goto LABEL_66;
                }

                v70 = v75;
                v77 = v105;
                if (v74)
                {
LABEL_13:
                  v44 = (v77[7] + 32 * v70);
                  *v44 = v60;
                  v44[1] = v61;
                  v45 = v93;
                  v44[2] = v104;
                  v44[3] = v45;

                  goto LABEL_14;
                }
              }

              v77[(v70 >> 6) + 8] |= 1 << v70;
              v78 = (v77[6] + 16 * v70);
              *v78 = v66;
              v78[1] = v65;
              v79 = (v77[7] + 32 * v70);
              *v79 = v60;
              v79[1] = v61;
              v80 = v93;
              v79[2] = v104;
              v79[3] = v80;
              v81 = v77[2];
              v64 = __OFADD__(v81, 1);
              v82 = v81 + 1;
              if (v64)
              {
                goto LABEL_52;
              }

              v77[2] = v82;
LABEL_14:
              v43 = v100;
              *(v100 + 16) = v77;
              swift_endAccess();

              ++v30;
              v41 = v92;
              if (v102 == v91)
              {
                goto LABEL_60;
              }
            }

            v64 = __OFADD__(v61++, 1);
            if (v64)
            {
              goto LABEL_51;
            }

            goto LABEL_30;
          }

          goto LABEL_60;
        }

LABEL_59:
        v86 = sub_2268368D8();
        v41 = v30;
        v42 = v86;
        v43 = v100;
        if (v86)
        {
          goto LABEL_12;
        }

LABEL_60:

        return;
      }

      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_226836BA8();
  __break(1u);
}

void sub_2267ABACC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id CarPlayWidgetMetricsLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlayWidgetMetricsLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayWidgetMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CarPlayWidgetMetricsLogger.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CarPlayWidgetMetricsLogger();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_2267ABC10(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA0, &qword_226873678);
  v10 = *(sub_226835EE8() - 8);
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
  v15 = *(sub_226835EE8() - 8);
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

uint64_t sub_2267ABDE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_2267ABE30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267ABF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL _ATXDomainGetBool(void *a1)
{
  v1 = a1;
  keyExistsAndHasValidFormat = 0;
  v2 = CFPreferencesGetAppBooleanValue(v1, *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat) != 0;

  return v2;
}

void *sub_2267ABEAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267AC038(a1, a2, a3, *v3, &qword_27D7A1B90, &qword_226873668, MEMORY[0x277CFC7C8]);
  *v3 = result;
  return result;
}

void *sub_2267ABEF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267AC038(a1, a2, a3, *v3, &qword_27D7A1BA0, &qword_226873678, MEMORY[0x277CFC7E8]);
  *v3 = result;
  return result;
}

char *sub_2267ABF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BB0, &qword_226873688);
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

void *sub_2267AC038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_2267AC214(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  v4 = sub_226836C48();

  return sub_2267AC294(a1, a2, v4);
}

unint64_t sub_2267AC294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
    do
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *(v8 + 8);
      v10 = *v8;
      v11 = sub_2268367E8();

      if ((v11 & (v9 == a2)) == 1)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2267AC384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
  v35 = v4;
  result = sub_226836AA8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = (*(v5 + 56) + 32 * v21);
      v36 = v25[1];
      v37 = *v25;
      if ((v35 & 1) == 0)
      {
        v26 = v24;
      }

      sub_226836C08();
      sub_2268367F8();
      MEMORY[0x22AA80040](v23);
      result = sub_226836C48();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v37;
      v17[1] = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_2267AC634()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
        result = v21;
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

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2267AC7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
    v3 = sub_226836AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      v6 = *(i - 2);
      result = sub_2267AC214(v6, v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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

uint64_t sub_2267AC8B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return [v1 didDefer] ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_2267AC8EC(char *a1)
{
  v3 = *(sub_226835E28() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2267AB1A0(a1, v5, (v1 + v4), v6);
}

unint64_t sub_2267AC9B4()
{
  result = qword_27D7A1B88;
  if (!qword_27D7A1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1B88);
  }

  return result;
}

uint64_t dispatch thunk of CarPlayWidgetMetricsLogger.collect(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2263BA0A4;

  return v7(a1);
}

uint64_t sub_2267ACBEC(uint64_t *a1, int a2)
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

uint64_t sub_2267ACC34(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267ACC8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2267ACCAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2267ACCE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267A94D8(v2, v3, v4);
}

uint64_t sub_2267ACD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267ACE0C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2267ACE28()
{
  type metadata accessor for LocationOfInterestContext();
  sub_2267AD778(&qword_27D7A1BB8, &unk_2268736A0);

  return sub_2263B6BB0();
}

void *sub_2267ACEA8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_2267ACEEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2267AD044@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_2267AD090@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2267AD0CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationOfInterestContext();
  sub_2267AD778(&qword_27D7A1BB8, &unk_2268736A0);
  result = sub_2263B92B0(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2267AD12C()
{
  sub_2267AD8D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226873690;
  *(v0 + 32) = type metadata accessor for LocationOfInterestContextStore.HomeContext();
  *(v0 + 40) = type metadata accessor for LocationOfInterestContextStore.WorkContext();
  *(v0 + 48) = type metadata accessor for LocationOfInterestContextStore.GymContext();
  *(v0 + 56) = type metadata accessor for LocationOfInterestContextStore.SchoolContext();
  result = type metadata accessor for LocationOfInterestContextStore.AwayContext();
  *(v0 + 64) = result;
  qword_27D7A5178 = v0;
  return result;
}

uint64_t *sub_2267AD1A8()
{
  if (qword_27D7A3240 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5178;
}

uint64_t sub_2267AD1F8()
{
  if (qword_27D7A3240 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267AD2A4(void *a1)
{
  v2 = swift_allocObject();
  sub_2267AD2E4(a1);
  return v2;
}

uint64_t sub_2267AD2E4(void *a1)
{
  v2 = v1;
  *(v1 + 24) = a1;
  v4 = qword_27D7A3240;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27D7A5178;
  v7 = *(qword_27D7A5178 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226836A08();
    v8 = type metadata accessor for LocationOfInterestContext();
    v9 = (v6 + 32);
    v10 = sub_2267AD778(&qword_27D7A1BB8, &unk_2268736A0);
    do
    {
      v11 = *v9++;
      v14 = a1;
      sub_2267AD950(v11, &v14, v8, v8, v10, v10);
      sub_2268369E8();
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      --v7;
    }

    while (v7);

    v12 = v15;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v12;
  return v2;
}

void *sub_2267AD464()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 0);
  }

  return result;
}

void *sub_2267AD4E0()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 1);
  }

  return result;
}

void *sub_2267AD560()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 3);
  }

  return result;
}

void *sub_2267AD5E0()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 2);
  }

  return result;
}

uint64_t sub_2267AD668()
{
  v1 = *(*v0 + 96);
  v2 = v1();
  if (!v2)
  {
    return 1;
  }

  result = v1();
  if (result)
  {
    v4 = result;
    v5 = [result type];

    return v5 == -1;
  }

  return result;
}

uint64_t sub_2267AD734(uint64_t a1)
{
  result = sub_2267AD778(&qword_27D7A1BC0, &unk_2268736BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267AD778(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationOfInterestContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267AD8D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BC8, &qword_226873810);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A1BD0;
    v3 = &unk_226873818;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267AD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a2, v10);
  return (*(a6 + 64))(v12, a4, a6);
}

uint64_t sub_2267ADA5C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  swift_getAssociatedTypeWitness();
  sub_2268365C8();
  swift_getWitnessTable();
  sub_2268369D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
  v2 = sub_226836A38();

  return v2;
}

uint64_t sub_2267ADB5C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 48);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness) & 1;
}

id sub_2267ADCB4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  result = [a1 setContinue];
  if (result)
  {
    v9 = sub_226836628();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a1;
    v10[5] = v1;
    v10[6] = ObjectType;
    v11 = a1;
    v12 = v1;
    sub_2267AEA94(0, 0, v7, &unk_226873890, v10);
  }

  return result;
}

uint64_t sub_2267ADDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_226836068();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = sub_226835CF8();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_226835D68();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v10 = sub_226835D48();
  v6[16] = v10;
  v6[17] = *(v10 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267ADFDC, 0, 0);
}

uint64_t sub_2267ADFDC()
{
  sub_226835DA8();
  *(v0 + 152) = sub_226835D98();
  sub_2267B2E34(&qword_28138F9B0, MEMORY[0x277CFC788], MEMORY[0x277CFC790]);
  v2 = sub_2268365D8();

  return MEMORY[0x2822009F8](sub_2267AE0A0, v2, v1);
}

uint64_t sub_2267AE0A0()
{
  *(v0 + 160) = sub_226835D88();
  *(v0 + 168) = 0;

  return MEMORY[0x2822009F8](sub_2267AE134, 0, 0);
}

uint64_t sub_2267AE134(uint64_t a1)
{
  v58 = v1;
  v2 = *(v1 + 160);
  if (!v2)
  {
    sub_226836018();
    v9 = sub_226836038();
    v10 = sub_2268366C8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v1 + 64);
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v57 = v16;
      *v15 = 136315138;
      v17 = sub_226836CA8();
      v19 = sub_2263B4D48(v17, v18, &v57);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2263AA000, v9, v10, "%s: not collecting ambient metrics, no stack config cache", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x22AA821D0](v16, -1, -1);
      MEMORY[0x22AA821D0](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_27;
  }

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_4;
    }

LABEL_21:
    sub_226836018();

    v40 = sub_226836038();
    v41 = sub_2268366C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v43;
      *v42 = 136315394;
      v44 = sub_226836CA8();
      v46 = sub_2263B4D48(v44, v45, &v57);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      if (v2 >> 62)
      {
        v47 = sub_2268368D8();
      }

      else
      {
        v47 = *((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v51 = *(v1 + 72);
      v52 = *(v1 + 40);
      v53 = *(v1 + 48);

      *(v42 + 14) = v47;

      _os_log_impl(&dword_2263AA000, v40, v41, "%s: not collecting ambient metrics, number of stacks: %ld, should be 2", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA821D0](v43, -1, -1);
      MEMORY[0x22AA821D0](v42, -1, -1);

      (*(v53 + 8))(v51, v52);
    }

    else
    {
      v48 = *(v1 + 72);
      v49 = *(v1 + 40);
      v50 = *(v1 + 48);
      swift_bridgeObjectRelease_n();

      (*(v50 + 8))(v48, v49);
    }

    goto LABEL_27;
  }

  if (sub_2268368D8() != 2)
  {
    goto LABEL_21;
  }

LABEL_4:
  v3 = &selRef_setUrl_;
  if (![*(v1 + 16) shouldDefer])
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    v6 = *(v1 + 128);
    v7 = *(v1 + 16);
    v8 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & **(v1 + 24)) + 0x58))(v2);
    sub_2267B2E34(qword_28138F9C0, MEMORY[0x277CFC770], MEMORY[0x277CFC768]);
    sub_226835CD8();
    (*(v4 + 8))(v5, v6);
    if (![v7 shouldDefer])
    {
      v20 = (*((*v8 & **(v1 + 24)) + 0x60))(v2);

      v21 = *(v20 + 16);
      if (v21)
      {
        v56 = v20;
        v22 = *(v1 + 112);
        v25 = *(v22 + 16);
        v24 = v22 + 16;
        v23 = v25;
        v26 = v20 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v27 = *(v24 + 56);
        do
        {
          v28 = *(v1 + 120);
          v29 = *(v1 + 104);
          v23(v28, v26, v29);
          sub_2267B2E34(&qword_28138F9B8, MEMORY[0x277CFC780], MEMORY[0x277CFC778]);
          sub_226835CD8();
          (*(v24 - 8))(v28, v29);
          v26 += v27;
          --v21;
        }

        while (v21);

        v3 = &selRef_setUrl_;
      }

      else
      {
      }

      if ([*(v1 + 16) v3[95]])
      {
        goto LABEL_27;
      }

      v30 = (*((*MEMORY[0x277D85000] & **(v1 + 24)) + 0x70))();
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = *(v1 + 88);
        v35 = *(v32 + 16);
        v33 = v32 + 16;
        v34 = v35;
        v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
        v37 = *(v33 + 56);
        do
        {
          v38 = *(v1 + 96);
          v39 = *(v1 + 80);
          v34(v38, v36, v39);
          sub_2267B2E34(&qword_27D7A1C08, MEMORY[0x277CFC760], MEMORY[0x277CFC758]);
          sub_226835CD8();
          (*(v33 - 8))(v38, v39);
          v36 += v37;
          --v31;
        }

        while (v31);
      }
    }
  }

LABEL_27:
  [*(v1 + 16) setDone];

  v54 = *(v1 + 8);

  return v54();
}

uint64_t sub_2267AE788()
{
  v23 = v0;
  v1 = *(v0 + 168);

  sub_226836018();
  v2 = v1;
  v3 = sub_226836038();
  v4 = sub_2268366C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5)
  {
    v21 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    v13 = sub_226836CA8();
    v20 = v7;
    v15 = sub_2263B4D48(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_2263AA000, v3, v4, "%s: could not read ambient stacks: %@", v10, 0x16u);
    sub_2267A1DC0(v11, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x22AA821D0](v12, -1, -1);
    MEMORY[0x22AA821D0](v10, -1, -1);

    (*(v8 + 8))(v20, v21);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  [*(v0 + 16) setDone];

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2267AE9EC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267ADDEC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2267AEA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2267ACD9C(a3, v25 - v10);
  v12 = sub_226836628();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2267A1DC0(v11, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2268365D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_226836458() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

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

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

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

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
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

uint64_t sub_2267AEEEC(unint64_t a1)
{
  sub_226835EA8();
  v3 = sub_2268363F8();

  Bool = _ATXDomainGetBool(v3);

  if (a1 >> 62)
  {
    v5 = sub_2268368D8();
    if (v5)
    {
LABEL_3:
      v6 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA7FDD0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v7 = *(a1 + 32);
      }

      v8 = v7;
      v1 = &selRef__updateWithSpotlightEvent_;
      v3 = [v7 allowsSmartRotate];

      if (v6)
      {
        v16 = MEMORY[0x22AA7FDD0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v16 = *(a1 + 32);
      }

      v17 = v16;
      v18 = [v16 widgets];

      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v19 = sub_226836568();

      if (!(v19 >> 62))
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

        v38 = Bool;
        if (v6)
        {
          v21 = MEMORY[0x22AA7FDD0](0, a1);
LABEL_16:
          v22 = v21;
          v23 = [v21 allowsNewWidget];

          v24 = v5 - 1;
          if (__OFSUB__(v5, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          v37 = v20;
          if (v6)
          {
            v20 = v3;
            v25 = MEMORY[0x22AA7FDD0](v5 - 1, a1);
LABEL_22:
            v26 = v25;
            v5 = [v25 v1[383]];

            if (v6)
            {
              v27 = MEMORY[0x22AA7FDD0](v24, a1);
              goto LABEL_27;
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
              if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v27 = *(a1 + 8 * v24 + 32);
LABEL_27:
              v28 = v27;
              v29 = [v27 widgets];

              v30 = sub_226836568();
              if (!(v30 >> 62))
              {
                v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_29;
              }

LABEL_44:
              v31 = sub_2268368D8();
LABEL_29:

              if (v6)
              {
                v32 = MEMORY[0x22AA7FDD0](v24, a1);
                v33 = v36;
LABEL_34:
                v34 = [v32 allowsNewWidget];

                Bool = v38;
                goto LABEL_37;
              }

              v33 = v36;
              if ((v24 & 0x8000000000000000) == 0)
              {
                if (v24 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v32 = *(a1 + 8 * v24 + 32);
                  goto LABEL_34;
                }

LABEL_52:
                __break(1u);
                return MEMORY[0x28214F260](v9, v10, v11, v12, v13, v14, v15);
              }

              goto LABEL_50;
            }

            goto LABEL_48;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v20 = v3;
            v25 = *(a1 + 8 * v24 + 32);
            goto LABEL_22;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(a1 + 32);
          goto LABEL_16;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_42:
      v20 = sub_2268368D8();
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
  v31 = 0;
  v23 = 0;
  v33 = 0;
  v20 = 0;
LABEL_37:
  v9 = Bool;
  v10 = v20;
  v11 = v33;
  v12 = v23;
  v13 = v5;
  v14 = v31;
  v15 = v34;

  return MEMORY[0x28214F260](v9, v10, v11, v12, v13, v14, v15);
}

void *sub_2267AF2A4(unint64_t a1)
{
  v2 = sub_226835D68();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v50 = &v33 - v6;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v8 = 0;
    v37 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1;
    v33 = a1 + 32;
    v41 = v43 + 8;
    v42 = (v43 + 16);
    v9 = MEMORY[0x277D84F90];
    v40 = v43 + 32;
    v36 = i;
    while (1)
    {
      if (v37)
      {
        v10 = MEMORY[0x22AA7FDD0](v8, v35, v5);
      }

      else
      {
        if (v8 >= *(v34 + 16))
        {
          goto LABEL_29;
        }

        v10 = *(v33 + 8 * v8);
      }

      v11 = v10;
      v12 = __OFADD__(v8, 1);
      v13 = v8 + 1;
      if (v12)
      {
        break;
      }

      a1 = [v10 widgets];
      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v14 = sub_226836568();

      v39 = v13;
      if (v14 >> 62)
      {
        v15 = sub_2268368D8();
        v38 = v11;
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v38 = v11;
        if (!v15)
        {
          goto LABEL_4;
        }
      }

      if (v15 < 1)
      {
        goto LABEL_28;
      }

      v16 = 0;
      v44 = v14 & 0xC000000000000001;
      v45 = v15;
      v46 = v14;
      do
      {
        v48 = v9;
        if (v44)
        {
          v17 = MEMORY[0x22AA7FDD0](v16, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = [v17 chsWidget];
        v20 = [v19 extensionIdentity];

        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA8, &qword_226873680);
        v47 = sub_2268353A8();
        swift_endAccess();

        v21 = [v18 chsWidget];
        v22 = [v21 kind];

        sub_226836408();
        v23 = [v18 chsWidget];
        v24 = [v23 intentReference];

        if (v24)
        {
          v25 = [v24 intent];

          v26 = v2;
          v27 = [v25 _className];

          sub_226836408();
          v2 = v26;
        }

        v28 = v50;
        sub_226835D58();
        (*v42)(v49, v28, v2);
        v9 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2267B0968(0, v9[2] + 1, 1, v9);
        }

        v31 = v9[2];
        v30 = v9[3];
        if (v31 >= v30 >> 1)
        {
          v9 = sub_2267B0968((v30 > 1), v31 + 1, 1, v9);
        }

        ++v16;

        a1 = v43;
        (*(v43 + 8))(v50, v2);
        v9[2] = v31 + 1;
        (*(a1 + 32))(v9 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v31, v49, v2);
      }

      while (v45 != v16);
LABEL_4:

      v8 = v39;
      if (v39 == v36)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AF7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  v14 = sub_2268367E8();
  result = 0;
  if ((v14 & 1) != 0 && a2 == a6)
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_226836B58() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2267AF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2268367F8();
  MEMORY[0x22AA80040](a3);
  if (!a5)
  {
    return sub_226836C28();
  }

  sub_226836C28();

  return sub_226836498();
}

uint64_t sub_2267AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  sub_226836C28();
  if (a4)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AF9EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v1);
  sub_226836C28();
  if (v2)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AFA80(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  if (!v3)
  {
    return sub_226836C28();
  }

  sub_226836C28();

  return sub_226836498();
}

uint64_t sub_2267AFB18(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  sub_226836C28();
  if (v3)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AFBA8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  v8 = sub_2268367E8();
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_226836B58() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t ATXWidgetStackChangeReason.name.getter(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return 0x61466D6574737973;
      }

      if (a1 == 4)
      {
        return 0x70556D6574737973;
      }

      return 0x6572436B63617473;
    }

    if (a1 == 1)
    {
      return 0x6F72635372657375;
    }

    if (a1 == 2)
    {
      return 0x75536D6574737973;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return 0xD000000000000010;
      case 9:
        return 0x6775626564;
      case 10:
        return 0xD00000000000001ALL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 6)
  {
    return 0x7365446B63617473;
  }

  else
  {
    return 0x4173746567646977;
  }
}

uint64_t sub_2267AFE30(double a1)
{
  v1 = sub_2268352B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2268352D8();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v13 = sub_226835228();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = v40 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2267B1BE8(MEMORY[0x277D84F90]);
  v40[1] = v19 + 16;
  sub_2268352A8();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9968], v1);
  sub_226835218();
  sub_226835298();
  v41 = *(v14 + 8);
  v41(v16, v13);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v44);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    sub_2267A1DC0(v12, &qword_27D7A2530, qword_2268738A0);

    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v14 + 32))(v45, v12, v13);
    v22 = v43;
    (*(v14 + 56))(v43, 1, 1, v13);
    v23 = sub_2268351A8();
    v24 = v20(v22, 1, v13);
    v40[0] = v14 + 8;
    if (v24 == 1)
    {
      v25 = 0;
      v26 = v19;
      v27 = v41;
    }

    else
    {
      v28 = v43;
      v25 = sub_2268351A8();
      v27 = v41;
      v41(v28, v13);
      v26 = v19;
    }

    v29 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v23 endDate:v25 maxEvents:0 lastN:0 reversed:0];

    v30 = [BiomeLibrary() SpringBoard];
    swift_unknownObjectRelease();
    v31 = [v30 Domino];
    swift_unknownObjectRelease();
    v32 = [v31 StackRotation];
    swift_unknownObjectRelease();
    v33 = [v32 publisherWithOptions_];

    v50 = sub_2267B04DC;
    v51 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2267B2E84;
    v49 = &block_descriptor_2;
    v34 = _Block_copy(&aBlock);
    v50 = sub_2267B1D04;
    v51 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2267B2E84;
    v49 = &block_descriptor_8;
    v35 = _Block_copy(&aBlock);

    v36 = [v33 sinkWithCompletion:v34 receiveInput:v35];
    _Block_release(v35);
    _Block_release(v34);

    v37 = swift_beginAccess();
    MEMORY[0x28223BE20](v37);
    v40[-2] = v42;

    v39 = sub_2267B2370(v38, sub_2267B2084, &v40[-4]);
    v27(v45, v13);

    return v39;
  }
}

id sub_2267B04DC(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_226836018();
    v9 = v8;
    v10 = sub_226836038();
    v11 = sub_2268366C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_2263AA000, v10, v11, "Could not sink stack rotation stream: %@", v12, 0xCu);
      sub_2267A1DC0(v13, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v13, -1, -1);
      MEMORY[0x22AA821D0](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t (*sub_2267B06B8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_2267B0D74(v10, a2, a3, a4, a5);
  return sub_2267B0758;
}

void sub_2267B0758(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id AmbientMetricsLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AmbientMetricsLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AmbientMetricsLogger.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AmbientMetricsLogger();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_2267B0880@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2267B089C()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267B0910(uint64_t a1)
{
  v2 = *v1;
  sub_226836C08();
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

void *sub_2267B0968(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C00, &unk_226873AF0);
  v10 = *(sub_226835D68() - 8);
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
  v15 = *(sub_226835D68() - 8);
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

unint64_t sub_2267B0B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  sub_226836C28();
  if (a4)
  {
    sub_226836498();
  }

  v8 = sub_226836C48();

  return sub_2267B0C04(a1, a2, a3, a4, v8);
}

unint64_t sub_2267B0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
    while (1)
    {
      v9 = *(v5 + 48) + 32 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);

      v14 = v11;
      if ((sub_2268367E8() & 1) == 0 || v10 != a2)
      {
        break;
      }

      if (v12)
      {
        if (!a4)
        {
          break;
        }

        if (v13 == a3 && v12 == a4)
        {

          return v7;
        }

        v16 = sub_226836B58();

        if (v16)
        {
          return v7;
        }
      }

      else
      {

        if (!a4)
        {
          return v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    goto LABEL_4;
  }

  return v7;
}

void (*sub_2267B0D74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_2267B1184(v11);
  v11[9] = sub_2267B0E98(v11 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_2267B0E38;
}

void sub_2267B0E38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2267B0E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(__n128 **a1, char a2)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(0x48uLL);
  }

  v14 = v13;
  *a1 = v13;
  v13[6] = a5;
  v13[7] = v6;
  v13[4] = a3;
  v13[5] = a4;
  v13[3] = a2;
  v15 = *v6;
  v17 = sub_2267B0B40(a2, a3, a4, a5);
  *(v14 + 17) = v16 & 1;
  v18 = *(v15 + 16);
  v19 = v16 ^ 1;
  v20 = v18 + ((v16 ^ 1) & 1);
  if (__OFADD__(v18, (v16 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_2267B16C0();
      goto LABEL_12;
    }

    sub_2267B11B8(v20, a6 & 1);
    v23 = sub_2267B0B40(a2, a3, a4, a5);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_12;
    }

LABEL_16:
    result = sub_226836BA8();
    __break(1u);
    return result;
  }

LABEL_12:
  v14[8] = v17;
  v25 = 0uLL;
  if (v21)
  {
    v25 = *(*(*v7 + 56) + 16 * v17);
  }

  *v14 = v25;
  *(v14 + 16) = v19 & 1;
  return sub_2267B1028;
}

void sub_2267B1028(__n128 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = (*a1)[1].n128_u8[0];
  LOBYTE(v5) = (*a1)[1].n128_u8[1];
  if (a2)
  {
    if ((*a1)[1].n128_u8[0])
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 8);
    v4 = **(v2 + 7);
    if ((*a1)[1].n128_u8[1])
    {
      goto LABEL_11;
    }

    v7 = *(v2 + 6);
    v8 = *(v2 + 3);
    v9 = v4[6] + 32 * v6;
    v10 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *v9 = v8;
    *(v9 + 8) = v10;
    *(v9 + 24) = v7;
    *(v4[7] + 16 * v6) = v3;
    v11 = v4[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v20 = *(v2 + 3);
      v4[2] = v5;

      v21 = v20;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v13 = *(v2 + 8);
      v14 = **(v2 + 7);
      sub_2267B2C94(*(v14 + 48) + 32 * v13);
      sub_2267B14A8(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = *(v2 + 8);
  v4 = **(v2 + 7);
  if ((v5 & 1) == 0)
  {
    v15 = *(v2 + 6);
    v16 = *(v2 + 3);
    v17 = v4[6] + 32 * v6;
    v18 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *v17 = v16;
    *(v17 + 8) = v18;
    *(v17 + 24) = v15;
    *(v4[7] + 16 * v6) = v3;
    v19 = v4[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 16 * v6) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_2267B1184(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2267B11AC;
}

uint64_t sub_2267B11B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
  v36 = v4;
  result = sub_226836AA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 24);
      v38 = *(v22 + 16);
      v37 = *(v21 + 16 * v20);
      if ((v36 & 1) == 0)
      {

        v26 = v24;
      }

      sub_226836C08();
      sub_2268367F8();
      MEMORY[0x22AA80040](v23);
      sub_226836C28();
      if (v25)
      {
        sub_226836498();
      }

      result = sub_226836C48();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v38;
      v16[3] = v25;
      *(*(v7 + 56) + 16 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

void sub_2267B14A8(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    v28 = v4;
    do
    {
      v9 = v8;
      v10 = v2;
      v11 = *(v2 + 48) + 32 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 24);
      sub_226836C08();

      v15 = v12;
      sub_2268367F8();
      MEMORY[0x22AA80040](v13);
      sub_226836C28();
      if (v14)
      {
        sub_226836498();
      }

      v16 = sub_226836C48();

      v17 = v16 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v28;
        v2 = v10;
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        v2 = v10;
        if (v17 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v17)
      {
LABEL_12:
        v18 = *(v2 + 48);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;
        }

        v22 = *(v2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }
}

id sub_2267B16C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(v19 + 8);
        v24 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v23;
        *(v22 + 24) = v21;
        *(*(v4 + 56) + v17) = v24;

        result = v20;
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

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2267B1840(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v15 = *v7;
  result = sub_2267B0B40(a3, a4, a5, a6);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a7 & 1) == 0)
  {
    if (v23 < v21 || (a7 & 1) != 0)
    {
      sub_2267B11B8(v21, a7 & 1);
      result = sub_2267B0B40(a3, a4, a5, a6);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        result = sub_226836BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      sub_2267B16C0();
      result = v24;
    }
  }

  v26 = *v8;
  if (v22)
  {
    v27 = (v26[7] + 16 * result);
    *v27 = a1;
    v27[1] = a2;
    return result;
  }

  v26[(result >> 6) + 8] |= 1 << result;
  v28 = (v26[6] + 32 * result);
  *v28 = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v29 = (v26[7] + 16 * result);
  *v29 = a1;
  v29[1] = a2;
  v30 = v26[2];
  v20 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26[2] = v31;

  return a3;
}

void *sub_2267B19F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267B1A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2267B1A10(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF0, &qword_226873AD8);
  v10 = *(sub_226835CF8() - 8);
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
  v15 = *(sub_226835CF8() - 8);
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

unint64_t sub_2267B1BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
    v3 = sub_226836AB8();

    for (i = (a1 + 72); ; i += 6)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      v11 = v6;
      result = sub_2267B0B40(v11, v5, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v11;
      v14[1] = v5;
      v14[2] = v7;
      v14[3] = v8;
      v15 = (v3[7] + 16 * result);
      *v15 = v10;
      v15[1] = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

void sub_2267B1D04(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v26 = v2;
    v3 = [v2 widget];
    if (v3 && (v4 = v3, v25 = [v3 extensionBundleId], v4, v25))
    {
      v5 = [v26 widget];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7)
        {
          v8 = [objc_allocWithZone(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:v25 kind:v7];

          v9 = _sSo26ATXWidgetStackChangeReasonV21AppPredictionInternalE017springBoardDominob8RotationD0ABSo08BMSpringijbkD0V_tcfC_0([v26 reason]);
          v10 = [v26 source];
          if (v10)
          {
            v11 = v10;
            v12 = sub_226836408();
            v14 = v13;
          }

          else
          {
            v12 = 0;
            v14 = 0;
          }

          swift_beginAccess();
          if (!*(*(v1 + 16) + 16) || (sub_2267B0B40(v8, v9, v12, v14), (v16 & 1) == 0))
          {
            swift_endAccess();
            swift_beginAccess();

            v17 = v8;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = *(v1 + 16);
            *(v1 + 16) = 0x8000000000000000;
            sub_2267B1840(0, 0, v17, v9, v12, v14, isUniquelyReferenced_nonNull_native);

            *(v1 + 16) = v28;
          }

          swift_endAccess();
          if ([v26 newWidgetSuggestion])
          {
            swift_beginAccess();
            v20 = sub_2267B06B8(v27, v8, v9, v12, v14);
            if (*(v19 + 16) == 1)
            {
              goto LABEL_25;
            }

            v21 = *(v19 + 8);
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              *(v19 + 8) = v23;
LABEL_25:
              (v20)(v27, 0);
              swift_endAccess();

              return;
            }

            __break(1u);
          }

          else
          {
            swift_beginAccess();
            v20 = sub_2267B06B8(v27, v8, v9, v12, v14);
            if (*(v24 + 16) == 1)
            {
              goto LABEL_25;
            }

            if (!__OFADD__(*v24, 1))
            {
              ++*v24;
              goto LABEL_25;
            }
          }

          __break(1u);
          return;
        }
      }

      v15 = v25;
    }

    else
    {
      v15 = v26;
    }
  }
}

uint64_t sub_2267B2084(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 extensionBundleId];
  v12 = sub_226836408();
  v14 = v13;

  v15 = [a1 kind];
  v16 = sub_226836408();
  v18 = v17;

  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v19 = 0xEE006B6361626C6CLL;
        v20 = 0x61466D6574737973;
      }

      else if (a2 == 4)
      {
        v19 = 0xEC00000065746164;
        v20 = 0x70556D6574737973;
      }

      else
      {
        v19 = 0xEC00000064657461;
        v20 = 0x6572436B63617473;
      }

      goto LABEL_29;
    }

    if (a2 == 1)
    {
      v19 = 0xEA00000000006C6CLL;
      v20 = 0x6F72635372657375;
      goto LABEL_29;
    }

    if (a2 == 2)
    {
      strcpy(v25, "systemSuggest");
      HIWORD(v25[1]) = -4864;
      MEMORY[0x22AA7F8E0](58, 0xE100000000000000);
      if (a4)
      {
        v21 = a3;
      }

      else
      {
        v21 = 7104878;
      }

      if (a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      MEMORY[0x22AA7F8E0](v21, v22);

      v20 = v25[0];
      v19 = v25[1];
      goto LABEL_29;
    }

LABEL_28:
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    goto LABEL_29;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        v20 = 0xD000000000000010;
        v19 = 0x80000002268CE1F0;
        goto LABEL_29;
      case 9:
        v19 = 0xE500000000000000;
        v20 = 0x6775626564;
        goto LABEL_29;
      case 10:
        v19 = 0x80000002268CE1D0;
        v20 = 0xD00000000000001ALL;
        goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2 == 6)
  {
    v19 = 0xEE006465796F7274;
    v20 = 0x7365446B63617473;
  }

  else
  {
    v20 = 0x4173746567646977;
    v19 = 0xEC00000064656464;
  }

LABEL_29:

  return MEMORY[0x28214F238](v12, v14, v16, v18, v20, v19, a5, a6);
}

uint64_t sub_2267B2370(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v35 = sub_226835CF8();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v28 = v3;
    v42 = MEMORY[0x277D84F90];
    sub_2267B19F0(0, v8, 0);
    v40 = v42;
    v10 = a1 + 64;
    result = sub_226836898();
    v11 = result;
    v12 = 0;
    v41 = *(a1 + 36);
    v33 = v5 + 32;
    v34 = v5;
    v29 = a1 + 72;
    v30 = v8;
    v31 = a1 + 64;
    v32 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v38 = v12;
      v39 = 1 << v11;
      v15 = *(*(a1 + 48) + 32 * v11);

      v16 = v15;
      v36();

      v17 = v40;
      v42 = v40;
      v19 = *(v40 + 16);
      v18 = *(v40 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2267B19F0((v18 > 1), v19 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v40 = v17;
      result = (*(v34 + 32))(v17 + v20 + *(v34 + 72) * v19, v7, v35);
      a1 = v32;
      v13 = 1 << *(v32 + 32);
      if (v11 >= v13)
      {
        goto LABEL_25;
      }

      v10 = v31;
      v21 = *(v31 + 8 * v14);
      if ((v21 & v39) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(v32 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v25 = (v29 + 8 * v14);
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_2267ACE0C(v11, v41, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_2267ACE0C(v11, v41, 0);
      }

LABEL_4:
      v12 = v38 + 1;
      v11 = v13;
      if (v38 + 1 == v30)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t _sSo26ATXWidgetStackChangeReasonV21AppPredictionInternalE017springBoardDominob8RotationD0ABSo08BMSpringijbkD0V_tcfC_0(unsigned int a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xB)
  {
    return a1;
  }

  sub_226836018();
  v7 = sub_226836038();
  v8 = sub_2268366D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v14[1] = a1;
    type metadata accessor for BMSpringBoardDominoStackRotationReason(0);
    v11 = sub_226836438();
    v13 = sub_2263B4D48(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2263AA000, v7, v8, "Unhandled BMSpringBoardDominoStackRotationReason reason: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA821D0](v10, -1, -1);
    MEMORY[0x22AA821D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

unint64_t sub_2267B28BC()
{
  result = qword_27D7A1BD8;
  if (!qword_27D7A1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1BD8);
  }

  return result;
}

uint64_t sub_2267B29F8(uint64_t *a1, int a2)
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

uint64_t sub_2267B2A40(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AmbientMetricsLogger.WidgetRotationData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AmbientMetricsLogger.WidgetRotationData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2267B2B8C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267ADDEC(v5, v6, v7, v2, v3, v4);
}

void sub_2267B2C48(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2267B2CC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2267A1ED0;

  return sub_2267A0188(a1, v4);
}

uint64_t sub_2267B2D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2263BA0A4;

  return sub_2267A0188(a1, v4);
}

uint64_t sub_2267B2E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_2267B2E88()
{
  sub_226836448();
  sub_22679BAA8();
  v0 = sub_226836868();

  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v9 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2267B38C0(0, *(v1 + 16) + 1, 1);
    }

    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_2267B38C0((v2 > 1), v3 + 1, 1);
      v1 = v9;
    }

    *(v1 + 16) = v3 + 1;
    *(v1 + v3 + 32) = 0;
  }

  v4 = sub_226836868();

  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2267B38C0(0, *(v1 + 16) + 1, 1);
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_2267B38C0((v5 > 1), v6 + 1, 1);
    }

    *(v1 + 16) = v6 + 1;
    *(v1 + v6 + 32) = 1;
  }

  v7 = *(v1 + 16);

  return v7 != 0;
}

uint64_t sub_2267B3070(char a1)
{
  if (a1)
  {
    return 6581860;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2267B30A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v38 = a1;
  v15 = sub_226836448();
  v17 = v16;
  v42 = v15;
  v43 = v16;
  v40 = 0xD000000000000012;
  v41 = 0x80000002268CE270;
  sub_22679BAA8();
  if (sub_226836868())
  {

    v18 = sub_2267F7768();
    (*(v6 + 16))(v14, v18, v5);

    v19 = sub_226836038();
    v20 = sub_2268366A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v42 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2263B4D48(v38, a2, &v42);
      _os_log_impl(&dword_2263AA000, v19, v20, "Heuristic %s encountered. Setting suggestion type to airplane mode", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x22AA821D0](v22, -1, -1);
      MEMORY[0x22AA821D0](v21, -1, -1);
    }

    (*(v6 + 8))(v14, v5);
    v23 = MEMORY[0x277D2BD68];
  }

  else
  {
    v42 = v15;
    v43 = v17;
    v40 = 6581860;
    v41 = 0xE300000000000000;
    v24 = sub_226836868();

    v25 = sub_2267F7768();
    v26 = *(v6 + 16);
    if (v24)
    {
      v26(v11, v25, v5);

      v27 = sub_226836038();
      v28 = sub_2268366A8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_2263B4D48(v38, a2, &v42);
        _os_log_impl(&dword_2263AA000, v27, v28, "Heuristic %s encountered. Setting suggestion type to do not disturb", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x22AA821D0](v30, -1, -1);
        MEMORY[0x22AA821D0](v29, -1, -1);
      }

      (*(v6 + 8))(v11, v5);
      v23 = MEMORY[0x277D2BD70];
    }

    else
    {
      v26(v8, v25, v5);

      v31 = sub_226836038();
      v32 = sub_2268366C8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2263B4D48(v38, a2, &v42);
        _os_log_impl(&dword_2263AA000, v31, v32, "Unexpected heuristic %s encountered. Defaulting to unknown suggestion type", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x22AA821D0](v34, -1, -1);
        MEMORY[0x22AA821D0](v33, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      v23 = MEMORY[0x277D2BD78];
    }
  }

  v35 = *v23;
  v36 = sub_2268360A8();
  return (*(*(v36 - 8) + 104))(v39, v35, v36);
}

uint64_t sub_2267B35B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_226836AC8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2267B3608(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581860;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x80000002268CE270;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581860;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0x80000002268CE270;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_226836B58();
  }

  return v8 & 1;
}

uint64_t sub_2267B36AC()
{
  sub_226836C08();
  sub_226836498();

  return sub_226836C48();
}

uint64_t sub_2267B372C(uint64_t a1)
{
  sub_226836498();
}

uint64_t sub_2267B3798(uint64_t a1)
{
  sub_226836C08();
  sub_226836498();

  return sub_226836C48();
}

uint64_t sub_2267B3814@<X0>(char *a2@<X8>)
{
  v3 = sub_226836AC8();

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

void sub_2267B3874(unint64_t *a1@<X8>)
{
  v2 = 0x80000002268CE270;
  v3 = 6581860;
  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *sub_2267B38C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2267B3B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2267B38E4()
{
  result = qword_27D7A1C18;
  if (!qword_27D7A1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1C18);
  }

  return result;
}

unint64_t sub_2267B393C()
{
  result = qword_27D7A1C20;
  if (!qword_27D7A1C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A1C28, qword_226873BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1C20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchSmartStackSupportedHeuristics(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WatchSmartStackSupportedHeuristics(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_2267B3B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C30, qword_226873C70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_2267B3C04(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for ContextualEngine()) init];
  qword_2813905E0 = result;
  return result;
}

uint64_t *sub_2267B3C34()
{
  if (qword_2813905D8 != -1)
  {
    swift_once();
  }

  return &qword_2813905E0;
}

id static ContextualEngine.shared.getter()
{
  if (qword_2813905D8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813905E0;

  return v1;
}

uint64_t sub_2267B3D28(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_contextStore;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2267B3DE0(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_suggestionStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2267B3E98(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_suggestionServer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2267B3F50()
{
  v1 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2267B3FA4(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_2267B405C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - v3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = OBJC_IVAR___ATXContextualEngine_contextStore;
  *&v1[OBJC_IVAR___ATXContextualEngine_contextStore] = 0;
  v15 = sub_2263B7458();
  v16 = *(v6 + 16);
  v50 = v15;
  v51 = v16;
  (v16)(v13);
  v17 = sub_226836038();
  v18 = sub_2268366E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v8;
    v20 = v14;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2263AA000, v17, v18, "ContextualEngine init", v19, 2u);
    v25 = v24;
    v4 = v23;
    v5 = v22;
    v6 = v21;
    v14 = v20;
    v8 = v48;
    MEMORY[0x22AA821D0](v25, -1, -1);
  }

  v26 = *(v6 + 8);
  v26(v13, v5);
  if ([objc_opt_self() isContextualEngineEnabled])
  {
    type metadata accessor for ContextualEngineContextStore();
    v27 = sub_2267E33D0();
    swift_beginAccess();
    *&v1[v14] = v27;

    v28 = v49;
    v51(v49, v50, v5);
    v29 = sub_226836038();
    v30 = sub_2268366E8();
    if (!os_log_type_enabled(v29, v30))
    {
      v8 = v28;
      goto LABEL_11;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2263AA000, v29, v30, "ContextualEngine: feature flag enabled, initializing context store", v31, 2u);
    v8 = v28;
  }

  else
  {
    v32 = v5;
    v51(v8, v50, v5);
    v29 = sub_226836038();
    v33 = sub_2268366E8();
    if (!os_log_type_enabled(v29, v33))
    {
      v5 = v32;
      goto LABEL_11;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2263AA000, v29, v33, "ContextualEngine: feature flag disabled, not initializing context store", v31, 2u);
    v5 = v32;
  }

  MEMORY[0x22AA821D0](v31, -1, -1);
LABEL_11:

  v26(v8, v5);
  type metadata accessor for ContextualEngineSuggestionStore();
  swift_beginAccess();

  v35 = sub_2267B5AC4(v34);
  v36 = OBJC_IVAR___ATXContextualEngine_suggestionStore;
  *&v1[OBJC_IVAR___ATXContextualEngine_suggestionStore] = v35;
  type metadata accessor for ContextualSuggestionServer();
  v37 = *&v1[v14];

  *&v1[OBJC_IVAR___ATXContextualEngine_suggestionServer] = sub_2267D0A98(v37, v35);
  type metadata accessor for ContextualEngineInternalServer();
  swift_beginAccess();
  *&v1[OBJC_IVAR___ATXContextualEngine_internalServer] = sub_2267B912C(*&v1[v36]);
  v38 = type metadata accessor for ContextualEngine();
  v52.receiver = v1;
  v52.super_class = v38;
  v39 = objc_msgSendSuper2(&v52, sel_init);
  v40 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v41 = *&v39[v40];
  v42 = *((*MEMORY[0x277D85000] & *v41) + 0x88);
  v43 = v39;
  v44 = v41;
  v42(v39, &off_283994F08);

  v45 = sub_226836628();
  (*(*(v45 - 8) + 56))(v4, 1, 1, v45);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v43;
  sub_2267B4EAC(0, 0, v4, &unk_226873D08, v46);

  return v43;
}

uint64_t sub_2267B4610()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v8 = (*(*v2 + 352) + **(*v2 + 352));
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_2267B4838;

    return v8();
  }

  else
  {
    v5 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v5) + 0x90))();

    sub_226835E98();
    v6 = sub_226836458();

    notify_post((v6 + 32));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2267B4838()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2267B5734;
  }

  else
  {

    v2 = sub_2267B4954;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267B4954()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))();
  (*((*v1 & *v2) + 0x90))();

  sub_226835E98();
  v3 = sub_226836458();

  notify_post((v3 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2267B4A64()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v7 = (*(*v2 + 352) + **(*v2 + 352));
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_2267B4C64;

    return v7();
  }

  else
  {
    v5 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v5) + 0x90))();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2267B4C64()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2267B4E48;
  }

  else
  {

    v2 = sub_2267B4D80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267B4D80()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))();
  (*((*v1 & *v2) + 0x90))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2267B4E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2267B4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2267ACD9C(a3, v22 - v9);
  v11 = sub_226836628();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2263B9BCC(v10);
  }

  else
  {
    sub_226836618();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2268365D8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_226836458() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2263B9BCC(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2263B9BCC(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_2267B513C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  (*((*v4 & *v5) + 0xA8))(a1);

  v6 = (*((*v4 & *v2) + 0xA0))();
  (*((*v4 & *v6) + 0x90))();
}

id ContextualEngine.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContextualEngine();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2267B5338()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v7 = (*(*v2 + 352) + **(*v2 + 352));
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_2267B5538;

    return v7();
  }

  else
  {
    v5 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v5) + 0x90))();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2267B5538()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2267B5734;
  }

  else
  {

    v2 = sub_2267B4D80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2267B56A0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2263BA0A4;

  return sub_2267B45F0(v3, v4, v5, v2);
}

uint64_t static String.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226873D10;
  *(v0 + 32) = sub_226836488();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_226836468();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_226836478();
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_2267B57C8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226873D10;
  *(v2 + 32) = sub_226836488();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_226836468();
  *(v2 + 56) = v4;
  result = sub_226836478();
  *(v2 + 64) = result;
  *(v2 + 72) = v6;
  *a1 = v2;
  return result;
}

uint64_t sub_2267B5844(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2267B58B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2267B5950;
}

void sub_2267B5950(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_2267B59D8()
{
  v0 = objc_allocWithZone(ATXActionToWidgetConverter);

  return [v0 initWithAllowsSendMessageIntentConversion_];
}

uint64_t sub_2267B5A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C78, &qword_226873D28);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2267B5A64(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2267B5A98(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

char *sub_2267B5AF8(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_actionToWidgetConverter;
  *&v1[v3] = [objc_allocWithZone(ATXActionToWidgetConverter) initWithAllowsSendMessageIntentConversion_];
  v4 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C78, &qword_226873D28);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *&v1[v4] = v5;
  v47 = sub_226836408();
  v48 = v6;
  v49 = sub_226836408();
  v50 = v7;
  v51 = sub_226836408();
  v52 = v8;
  v46 = MEMORY[0x277D84F90];
  sub_2267A0578(0, 3, 0);
  v9 = v46;
  v10 = objc_opt_self();

  v11 = sub_2268363F8();
  v12 = [v10 sourceIdentifierForHeuristicWithName_];

  v13 = sub_226836408();
  v15 = v14;

  v17 = *(v46 + 16);
  v16 = *(v46 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_2267A0578((v16 > 1), v17 + 1, 1);
    v9 = v46;
  }

  *(v9 + 16) = v17 + 1;
  v18 = v9 + 16 * v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;

  v19 = sub_2268363F8();
  v20 = [v10 sourceIdentifierForHeuristicWithName_];

  v21 = sub_226836408();
  v23 = v22;

  v46 = v9;
  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_2267A0578((v24 > 1), v25 + 1, 1);
    v9 = v46;
  }

  *(v9 + 16) = v25 + 1;
  v26 = v9 + 16 * v25;
  *(v26 + 32) = v21;
  *(v26 + 40) = v23;

  v27 = sub_2268363F8();
  v28 = [v10 sourceIdentifierForHeuristicWithName_];

  v29 = sub_226836408();
  v31 = v30;

  v46 = v9;
  v33 = *(v9 + 16);
  v32 = *(v9 + 24);
  if (v33 >= v32 >> 1)
  {
    sub_2267A0578((v32 > 1), v33 + 1, 1);
    v9 = v46;
  }

  v34 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_disabledHeuristicSourceIdentifiers;
  *(v9 + 16) = v33 + 1;
  v35 = v9 + 16 * v33;
  *(v35 + 32) = v29;
  *(v35 + 40) = v31;
  swift_arrayDestroy();
  v36 = sub_2267A5D68(v9);

  *&v2[v34] = v36;
  v37 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_allowedAmbientClientModelTypes;
  *&v2[v37] = sub_2267B818C(&unk_283994F40);
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore] = a1;
  v38 = objc_opt_self();

  v39 = [v38 sharedInstance];
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter] = v39;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for ContextualEngineSuggestionStore();
  v40 = objc_msgSendSuper2(&v45, sel_init);
  v41 = *&v40[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter];
  v42 = v40;
  [v41 registerObserver_];

  return v42;
}

uint64_t sub_2267B5EE8()
{
  sub_226836408();
  sub_226836408();
  sub_226836408();
  v28 = MEMORY[0x277D84F90];
  sub_2267A0578(0, 3, 0);
  v0 = v28;
  v1 = objc_opt_self();

  v2 = sub_2268363F8();
  v3 = [v1 sourceIdentifierForHeuristicWithName_];

  v4 = sub_226836408();
  v6 = v5;

  v8 = *(v28 + 16);
  v7 = *(v28 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_2267A0578((v7 > 1), v8 + 1, 1);
    v0 = v28;
  }

  *(v0 + 16) = v8 + 1;
  v9 = v0 + 16 * v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;

  v10 = sub_2268363F8();
  v11 = [v1 sourceIdentifierForHeuristicWithName_];

  v12 = sub_226836408();
  v14 = v13;

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_2267A0578((v15 > 1), v16 + 1, 1);
  }

  *(v0 + 16) = v16 + 1;
  v17 = v0 + 16 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;

  v18 = sub_2268363F8();
  v19 = [v1 &selRef:v18 stringForEngagementType:? + 6];

  v20 = sub_226836408();
  v22 = v21;

  v24 = *(v0 + 16);
  v23 = *(v0 + 24);
  if (v24 >= v23 >> 1)
  {
    sub_2267A0578((v23 > 1), v24 + 1, 1);
  }

  *(v0 + 16) = v24 + 1;
  v25 = v0 + 16 * v24;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;
  swift_arrayDestroy();
  v26 = sub_2267A5D68(v0);

  return v26;
}

uint64_t sub_2267B61B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v43 = MEMORY[0x277D84F90];
  sub_22679CBC4(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
  type metadata accessor for MeetingContext(0);
  if (swift_dynamicCast())
  {
    v41 = v8;

    nullsub_1();
    v42[0] = v12;
    v13 = sub_2267B8630();
    v14 = sub_2267D9280(&type metadata for JoinMeetingActionProducer, v13);
    if (v2)
    {

      v15 = sub_2263B7458();
      (*(v6 + 16))(v11, v15, v5);
      v16 = v2;
      v17 = sub_226836038();
      v18 = sub_2268366C8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v40 = a2;
        v20 = v19;
        v21 = swift_slowAlloc();
        v39 = v6;
        v22 = v21;
        *v20 = 138412290;
        v23 = v2;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_2263AA000, v17, v18, "Error producing join meeting suggestion: %@", v20, 0xCu);
        sub_2263B4FC8(v22);
        v25 = v22;
        v6 = v39;
        MEMORY[0x22AA821D0](v25, -1, -1);
        v26 = v20;
        a2 = v40;
        MEMORY[0x22AA821D0](v26, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v11, v5);
    }

    else
    {
      v28 = v14;

      v29 = v28;
      MEMORY[0x22AA7F970]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226836588();
      }

      sub_2268365A8();
    }

    nullsub_1();
    v42[0] = v30;
    v31 = sub_2267B8684();
    v32 = sub_2267D9280(&type metadata for DoNotDisturbActionProducer, v31);

    v33 = v32;
    MEMORY[0x22AA7F970]();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226836588();
    }

    sub_2268365A8();

    v27 = v43;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  (*(v35 + 32))(v34, v35);
  if (v27 >> 62)
  {
    sub_226835C38();

    sub_226836A68();
  }

  else
  {

    sub_226836B68();
    sub_226835C38();
  }

  v36 = objc_allocWithZone(sub_226835C78());
  result = sub_226835C58();
  *a2 = result;
  return result;
}

uint64_t sub_2267B67B0(void (*a1)(void))
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  a1();
}

uint64_t sub_2267B6834()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2267B697C()
{
  sub_226836408();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2268363F8();

  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27D7A3858 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2267B6A0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore);
  if (v1)
  {
    v2 = (*(*v1 + 208))();
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_226836A08();
      v4 = (v2 + 40);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        sub_2263B6BB0();
        (*(v6 + 24))(v5, v6);
        v7 = objc_allocWithZone(sub_226835D28());
        sub_226835D08();
        v8 = objc_allocWithZone(sub_226835C78());
        sub_226835C58();
        sub_2268369E8();
        sub_226836A18();
        sub_226836A28();
        sub_2268369F8();
        v4 += 2;
        --v3;
      }

      while (v3);
    }
  }

  v9 = objc_allocWithZone(sub_226835CA8());
  return sub_226835C88();
}

uint64_t sub_2267B6BC0()
{
  v1 = sub_2267B82EC();
  if (v1)
  {
    v2 = v1;
    sub_2267B6E80(v1);
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = sub_2267B6A0C();
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2267B6C60()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v20 = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v20];
    v7 = v20;
    if (v6)
    {

      v8 = sub_226835148();
      v10 = v9;

      if (qword_27D7A3850 != -1)
      {
        swift_once();
      }

      v11 = qword_27D7A3858;
      v12 = sub_226835138();
      v13 = sub_2268363F8();
      [v11 setObject:v12 forKey:v13];

      sub_2267A1D24(v8, v10);
    }

    else
    {
      v16 = v7;
      v17 = sub_226835028();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27D7A3850 != -1)
    {
      swift_once();
    }

    v14 = qword_27D7A3858;
    v15 = sub_2268363F8();
    [v14 removeObjectForKey_];
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_2267B6E80(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v3 = *(v1 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore);
  if (v3)
  {
    v2 = (*(*v3 + 208))();
  }

  v29 = *(v2 + 16);
  if (!v29)
  {
LABEL_29:

    v26 = objc_allocWithZone(sub_226835CA8());
    sub_226835C88();
    return;
  }

  v4 = 0;
  v27 = v2;
  v28 = v2 + 32;
  while (v4 < *(v2 + 16))
  {
    v11 = (v28 + 16 * v4);
    v12 = *v11;
    v31 = v11[1];
    v13 = sub_226835C98();
    v14 = v13;
    v30 = v4;
    if (v13 >> 62)
    {
      v15 = sub_2268368D8();
      if (v15)
      {
LABEL_12:
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x22AA7FDD0](v16, v14);
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v20 = sub_226835C68();
          v21 = sub_226835D18();
          v23 = v22;

          if (v21 == sub_2263B6BB0() && v23 == v24)
          {
            break;
          }

          v25 = sub_226836B58();

          if (v25)
          {
            goto LABEL_24;
          }

          ++v16;
          if (v19 == v15)
          {
            goto LABEL_5;
          }
        }

LABEL_24:

        v8 = v18;
        MEMORY[0x22AA7F970]();
        v2 = v27;
        v10 = v30;
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_226836588();
        }

        sub_2268365A8();
        goto LABEL_8;
      }
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_5:

    sub_2263B6BB0();
    (*(v31 + 24))(v12, v31);
    v5 = objc_allocWithZone(sub_226835D28());
    v6 = sub_226835D08();
    v7 = objc_allocWithZone(sub_226835C78());
    v8 = v6;
    v9 = sub_226835C58();
    MEMORY[0x22AA7F970]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226836588();
    }

    sub_2268365A8();

    v2 = v27;
    v10 = v30;
LABEL_8:
    v4 = v10 + 1;

    if (v4 == v29)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
}

id sub_2267B7230()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2267B72C4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContextualEngineSuggestionStore();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2267B7394(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_2263B9740(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2267B7CCC(v15, v4 & 1);
    v10 = sub_2263B9740(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_226836BA8();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_2267B78B0();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_226836968();
    MEMORY[0x22AA7F8E0](0xD00000000000001BLL, 0x80000002268CE560);
    sub_226836A48();
    MEMORY[0x22AA7F8E0](39, 0xE100000000000000);
    sub_226836A58();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_2263B9740(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_2267B7CCC(v32, 1);
        v28 = sub_2263B9740(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

id sub_2267B7744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

    *v1 = v4;
  }

  return result;
}

void *sub_2267B78B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1CB0, &unk_226874170);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2267B7A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
  v35 = v4;
  result = sub_226836AA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}