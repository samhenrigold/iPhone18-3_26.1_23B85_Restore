uint64_t sub_1B4E93DDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = *MEMORY[0x1E69E9840];
  v40 = sub_1B4F679C4();
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v7);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v42 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v45 = v3;
    v33 = &v33;
    v34 = v10;
    MEMORY[0x1EEE9AC00](v12, v13);
    v35 = &v33 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v11);
    v14 = 0;
    v41 = a1;
    v16 = *(a1 + 56);
    a1 += 56;
    v15 = v16;
    v17 = 1 << *(a1 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    v38 = v6 + 16;
    v36 = 0;
    v37 = v6 + 8;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v44 = (v19 - 1) & v19;
LABEL_12:
      v3 = v40;
      v24 = v21 | (v14 << 6);
      v10 = v39;
      (*(v6 + 16))(v39, *(v41 + 48) + *(v6 + 72) * v24, v40);
      v25 = sub_1B4F679B4();
      v43 = &v33;
      v46[0] = v25;
      v46[1] = v26;
      MEMORY[0x1EEE9AC00](v25, v26);
      *(&v33 - 2) = v46;
      v27 = v45;
      v11 = sub_1B4EBAEDC(sub_1B4E95280, (&v33 - 4), v42);
      v45 = v27;

      (*(v6 + 8))(v10, v3);
      v19 = v44;
      if ((v11 & 1) == 0)
      {
        *&v35[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v29 = sub_1B4EE8688(v35, v34, v36, v41);

          return v29;
        }
      }
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v20)
      {
        goto LABEL_16;
      }

      v23 = *(a1 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v44 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = v42;

  v29 = sub_1B4E8C954(v31, v10, a1, v32, MEMORY[0x1E69CD2D8], sub_1B4EE8688, MEMORY[0x1E69CD2B8], sub_1B4E9533C);

  MEMORY[0x1B8C831D0](v31, -1, -1);

  return v29;
}

uint64_t sub_1B4E941EC(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t (*a4)(void *))
{
  v46 = a3;
  v6 = v4;
  v51[2] = *MEMORY[0x1E69E9840];
  v45 = sub_1B4F67124();
  v9 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v10);
  v44 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v48 = a2;

  if (v12 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v50 = v6;
    v37[1] = v37;
    v38 = v13;
    MEMORY[0x1EEE9AC00](v15, v16);
    v39 = v37 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v14);
    v40 = 0;
    v17 = 0;
    v47 = a1;
    a4 = (a1 + 7);
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & a1[7];
    v21 = (v18 + 63) >> 6;
    v42 = v9 + 8;
    v43 = v9 + 16;
    v22 = v9;
    while (v20)
    {
      v23 = __clz(__rbit64(v20));
      v49 = (v20 - 1) & v20;
LABEL_12:
      v26 = v23 | (v17 << 6);
      v27 = v47[6];
      v28 = *(v22 + 72);
      v41 = v26;
      v13 = v44;
      v6 = v45;
      (*(v22 + 16))(v44, v27 + v28 * v26, v45);
      v29 = sub_1B4F67114();
      v14 = v30;
      a1 = v37;
      v51[0] = v29;
      v51[1] = v30;
      MEMORY[0x1EEE9AC00](v29, v30);
      v37[-2] = v51;
      v31 = v50;
      v9 = sub_1B4EBAEDC(v46, &v37[-4], v48);
      v50 = v31;

      (*(v22 + 8))(v13, v6);
      v20 = v49;
      if ((v9 & 1) == 0)
      {
        *&v39[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_16:
          v33 = sub_1B4EE8360(v39, v38, v40, v47);

          return v33;
        }
      }
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        goto LABEL_16;
      }

      v25 = *(a4 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v48;

  v33 = sub_1B4E8C954(v35, v13, a1, v36, MEMORY[0x1E69CCE28], sub_1B4EE8360, MEMORY[0x1E69CCE20], a4);

  MEMORY[0x1B8C831D0](v35, -1, -1);

  return v33;
}

void sub_1B4E945E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  v48 = a7;
  v49 = a8;
  v37 = a2;
  v38 = a6;
  v47 = a4;
  v39 = a1;
  v46 = a5(0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v46, v9);
  v44 = &v36 - v12;
  v45 = v10;
  v40 = 0;
  v13 = 0;
  v50 = a3;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v42 = v10 + 8;
  v43 = v10 + 16;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = *(v50 + 48);
    v26 = v44;
    v27 = v45;
    v28 = *(v45 + 72);
    v41 = v24;
    v29 = v46;
    v30 = (*(v45 + 16))(v44, v25 + v28 * v24, v46, v11);
    v52[0] = v48(v30);
    v52[1] = v31;
    MEMORY[0x1EEE9AC00](v52[0], v31);
    *(&v36 - 2) = v52;
    v32 = v53;
    v33 = sub_1B4EBAEDC(v49, (&v36 - 4), v47);
    v53 = v32;

    (*(v27 + 8))(v26, v29);
    v19 = v51;
    if ((v33 & 1) == 0)
    {
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
LABEL_15:
        v35 = v50;

        v38(v39, v37, v40, v35);
        return;
      }
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_15;
    }

    v23 = *(v15 + 8 * v13);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B4E94874(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v36 = a5;
  v37 = a4;
  v30 = a1;
  v6 = sub_1B4F658C4();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v34 = v8;
  v35 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v33 = v8 + 16;
  v31 = 0;
  v32 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_12:
    v24 = v21 | (v12 << 6);
    (*(v34 + 16))(v11, *(v35 + 48) + *(v34 + 72) * v24, v6, v9);
    if (sub_1B4F658B4() == v37 && v25 == v36)
    {

      (*v32)(v11, v6);
    }

    else
    {
      v20 = sub_1B4F68D54();

      (*v32)(v11, v6);
      if ((v20 & 1) == 0)
      {
        *(v30 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_18:
          v27 = v35;

          sub_1B4EE8038(v30, v29, v31, v27);
          return;
        }
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_18;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v18 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E94AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v39 = *MEMORY[0x1E69E9840];
  v38 = sub_1B4F658C4();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;
  v36 = a3;

  if (v11 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v12;
    v30 = v4;
    v28 = &v28;
    MEMORY[0x1EEE9AC00](v14, v15);
    v31 = &v28 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v13);
    v12 = 0;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v4 = (v16 + 63) >> 6;
    v34 = v7 + 16;
    v35 = v7;
    v32 = 0;
    v33 = (v7 + 8);
    while (v18)
    {
      v19 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v7 = v19 | (v12 << 6);
      (*(v35 + 16))(v10, *(a1 + 48) + *(v35 + 72) * v7, v38);
      if (sub_1B4F658B4() == v37 && v22 == v36)
      {

        (*v33)(v10, v38);
      }

      else
      {
        v13 = sub_1B4F68D54();

        (*v33)(v10, v38);
        if ((v13 & 1) == 0)
        {
          *&v31[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
          if (__OFADD__(v32++, 1))
          {
            __break(1u);
LABEL_19:
            v24 = sub_1B4EE8038(v31, v29, v32, a1);

            return v24;
          }
        }
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
        goto LABEL_19;
      }

      v21 = *(a1 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v18 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v36;

  v24 = sub_1B4E8C8B0(v26, v12, a1, v37, v27);

  MEMORY[0x1B8C831D0](v26, -1, -1);

  return v24;
}

void sub_1B4E94E9C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v21 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v20 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v4, v11);
      v21(v13, v8);
      (*(v15 - 8))(v13, v4);
      v18 += v19;
      --v14;
    }

    while (v14);
  }
}

unint64_t sub_1B4E95094()
{
  result = qword_1EB8F5660;
  if (!qword_1EB8F5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5660);
  }

  return result;
}

uint64_t sub_1B4E95150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E951B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E95218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E952A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Workout.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F67974();

  return sub_1B4F67994();
}

uint64_t sub_1B4E953B4(double a1)
{
  sub_1B4F67974();

  return sub_1B4F67994();
}

void sub_1B4E95410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v7);
  v11 = type metadata accessor for TestProperty(0, v4, v5, v6);
  TestProperty.wrappedValue.setter(v9, v11);
}

void TestProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1B4F67F64();
  v16 = [v4 initWithSuiteName_];

  if (!v16)
  {
    v15 = *(a2 + 16);
    v13 = *(*(v15 - 8) + 8);
    v14 = a1;
    goto LABEL_6;
  }

  v6 = MobileGestalt_get_current_device();
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  if (Platform.internalInstall.getter(deviceClassNumber == 3))
  {
    v9 = UserDefaultsKeys.rawValue.getter();
    v11 = a2 + 16;
    v10 = *(a2 + 16);
    (*(*(v11 + 8) + 16))(v16, v9, v12, v10);

    v13 = *(*(v10 - 8) + 8);
    v14 = a1;
    v15 = v10;
LABEL_6:

    v13(v14, v15);
    return;
  }

  (*(*(*(a2 + 16) - 8) + 8))(a1);
}

void (*TestProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  static TestProperty.value(for:fallback:)(&v13, &v2[*(a2 + 44)], v8, *(a2 + 24), *(a2 + 32), v11);
  return sub_1B4E95804;
}

void sub_1B4E95804(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    TestProperty.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    TestProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B4E958CC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x9D)
  {
    v7 = 157;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x9D)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 0x63)
      {
        return v15 - 98;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1B4E95A50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x9D)
  {
    v8 = 157;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x9D)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 98;
  }
}

uint64_t CatalogModality.metadata()()
{
  v0 = sub_1B4F64824();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C0, &qword_1B4F711A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1B4F65994();
  sub_1B4F659F4();
  sub_1B4F65974();
  sub_1B4F65A04();
  sub_1B4F65984();
  sub_1B4F65A14();
  return sub_1B4F66764();
}

uint64_t TransportDispatching.register<A>(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  (*(a6 + 8))(a4, a6);
  v15 = v13;
  TransportDispatchService.register<A>(event:handler:)(&v15, a2, a3, a5, a7, a8);
}

uint64_t TransportDispatching.register(event:handler:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  (*(a5 + 8))(a4, a5);
  v10 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B4F62074(&v10, sub_1B4E963E4, v8);
}

uint64_t TransportDispatching.register(request:handler:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B4E95F94(a1, a2, a3, a4, a5, &unk_1F2CDCD30, sub_1B4E96400);
}

{
  return sub_1B4E95F94(a1, a2, a3, a4, a5, &unk_1F2CDCD58, sub_1B4E96408);
}

uint64_t sub_1B4E95F94(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  (*(a5 + 8))(a4, a5);
  v13 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_1B4F5F760(&v13, a7, v11);
}

uint64_t TransportDispatching.register<A>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

{
  return sub_1B4E9611C(a1, a2, a3, a4, a5, a6, a7, a8, TransportDispatchService.register<A>(request:handler:));
}

uint64_t sub_1B4E9611C(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int16 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *a1;
  (*(a6 + 8))(a4, a6);
  v16 = v14;
  a9(&v16, a2, a3, a5, a7, a8);
}

uint64_t TransportDispatching.register<A, B>(request:handler:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return sub_1B4E9624C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, TransportDispatchService.register<A, B>(request:handler:));
}

{
  return sub_1B4E9624C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, TransportDispatchService.register<A, B>(request:handler:));
}

uint64_t sub_1B4E9624C(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(__int16 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = *a1;
  (*(a7 + 8))(a4, a7);
  v19 = v16;
  a12(&v19, a2, a3, a5, a6, a8, a9, a10, a11);
}

Swift::Void __swiftcall TransportDispatching.unregister(request:)(SeymourClient::TransportRequest request)
{
  v2 = *request;
  (*(v1 + 8))();
  v3 = v2;
  TransportDispatchService.unregister(request:)(&v3);
}

Swift::Void __swiftcall TransportDispatching.unregister(event:)(SeymourClient::TransportEvent event)
{
  v2 = *event;
  (*(v1 + 8))();
  v3 = v2;
  TransportDispatchService.unregister(event:)(&v3);
}

id SessionDarwinNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionDarwinNotification.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDarwinNotification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SessionDarwinNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionDarwinNotification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t XPCStreamPublisher.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t XPCStreamPublisher.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t XPCStreamPublisher.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall XPCStreamPublisher.publish(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  v6 = *(v4 + 8);

  v6(v7, &type metadata for XPCStreamEventReceived, &protocol witness table for XPCStreamEventReceived, ObjectType, v4);
}

uint64_t sub_1B4E9684C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  ObjectType = swift_getObjectType();
  v9[0] = a1;
  v9[1] = a2;
  v7 = *(v5 + 8);

  v7(v9, &type metadata for XPCStreamEventReceived, &protocol witness table for XPCStreamEventReceived, ObjectType, v5);
}

uint64_t MetricBackgroundAccountEventOccurred.backgroundAccountEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricBackgroundAccountEventOccurred.init(backgroundAccountEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MetricBackgroundAccountEventOccurred(uint64_t a1)
{
  result = qword_1EDB70500;
  if (!qword_1EDB70500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E96B00(uint64_t a1)
{
  result = sub_1B4F67104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Subscription.init(handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = sub_1B4F67FA4();
  a5[1] = v10;
  result = (*(a4 + 24))(a3, a4);
  a5[2] = result;
  a5[3] = a1;
  a5[4] = a2;
  return result;
}

uint64_t Subscription.identifier.getter()
{
  v0 = sub_1B4DDC7B4();

  return v0;
}

uint64_t URL.init(templateURLString:pixelWidth:pixelHeight:cropCode:fileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a7;
  v41 = a8;
  v39 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v38 - v17;
  v46 = a1;
  v47 = a2;
  sub_1B4DCAC7C();
  v19 = sub_1B4F68874();
  v21 = v20;

  if (!v21)
  {

    goto LABEL_5;
  }

  v38 = a9;
  v46 = v19;
  v47 = v21;
  v44 = 8222587;
  v45 = 0xE300000000000000;
  LODWORD(v42) = a3;
  v42 = sub_1B4F68D04();
  v43 = v22;
  v23 = sub_1B4F68864();
  v25 = v24;

  v46 = v23;
  v47 = v25;
  v44 = 8218747;
  v45 = 0xE300000000000000;
  LODWORD(v42) = a4;
  v42 = sub_1B4F68D04();
  v43 = v26;
  v27 = sub_1B4F68864();
  v29 = v28;

  v46 = v27;
  v47 = v29;
  v43 = a6;
  v44 = 8217467;
  v45 = 0xE300000000000000;
  v42 = v39;
  v30 = sub_1B4F68864();
  v32 = v31;

  v46 = v30;
  v47 = v32;
  v44 = 8218235;
  v45 = 0xE300000000000000;
  v42 = v40;
  v43 = v41;
  sub_1B4F68864();

  sub_1B4F64814();

  v33 = sub_1B4F64824();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v18, 1, v33))
  {
    sub_1B4E97050(v18);
    a9 = v38;
LABEL_5:
    v35 = sub_1B4F64824();
    return (*(*(v35 - 8) + 56))(a9, 1, 1, v35);
  }

  v37 = v38;
  (*(v34 + 32))(v38, v18, v33);
  return (*(v34 + 56))(v37, 0, 1, v33);
}

uint64_t sub_1B4E97050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Artwork.imageURL(cropCode:fileType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51C8, &qword_1B4F711A8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_1B4F675D4();
  v16 = v15;
  result = sub_1B4F675B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = a1;
  result = sub_1B4F675C4();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v42 = a2;
  v43 = a3;
  v49 = v14;
  v50 = v16;
  sub_1B4DCAC7C();
  v20 = sub_1B4F68874();
  v22 = v21;

  if (!v22)
  {
LABEL_8:
    v37 = sub_1B4F64824();
    return (*(*(v37 - 8) + 56))(a5, 1, 1, v37);
  }

  v40 = a5;
  v49 = v20;
  v50 = v22;
  v47 = 8222587;
  v48 = 0xE300000000000000;
  LODWORD(v45) = v18;
  v23 = sub_1B4F68D04();
  v41 = a4;
  v45 = v23;
  v46 = v24;
  v25 = sub_1B4F68864();
  v27 = v26;

  v49 = v25;
  v50 = v27;
  v47 = 8218747;
  v48 = 0xE300000000000000;
  LODWORD(v45) = v19;
  v45 = sub_1B4F68D04();
  v46 = v28;
  v29 = sub_1B4F68864();
  v31 = v30;

  v49 = v29;
  v50 = v31;
  v47 = 8217467;
  v48 = 0xE300000000000000;
  v45 = v44;
  v46 = v42;
  v32 = sub_1B4F68864();
  v34 = v33;

  v49 = v32;
  v50 = v34;
  v47 = 8218235;
  v48 = 0xE300000000000000;
  v45 = v43;
  v46 = v41;
  sub_1B4F68864();

  sub_1B4F64814();

  v35 = sub_1B4F64824();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v13, 1, v35))
  {
    sub_1B4E97050(v13);
    a5 = v40;
    goto LABEL_8;
  }

  v38 = v40;
  (*(v36 + 32))(v40, v13, v35);
  return (*(v36 + 56))(v38, 0, 1, v35);
}

void *ScoreClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *ScoreClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t ScoreClient.insertScores(_:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001B4F81D70;
  v5._object = 0x80000001B4F81D90;
  v5._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 234;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65304();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB380], MEMORY[0x1E69CB388], ObjectType, v6);
}

uint64_t ScoreClient.submitScores()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0x635374696D627573;
  v2._object = 0xEE0029287365726FLL;
  v3._object = 0x80000001B4F81D70;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 235;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t ScoreClient.fetchRemoteScores(request:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001B4F81D70;
  v5._object = 0x80000001B4F81DB0;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 236;
  v8 = *(v6 + 32);
  v9 = sub_1B4F66024();
  v10 = sub_1B4F65AA4();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CBC58], MEMORY[0x1E69CBC60], MEMORY[0x1E69CB570], MEMORY[0x1E69CB578], ObjectType, v6);
}

uint64_t sub_1B4E979E4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81D90;
  v6._countAndFlagsBits = 0xD000000000000010;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 234;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65304();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB380], MEMORY[0x1E69CB388], ObjectType, v7);
}

uint64_t sub_1B4E97B08()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0x635374696D627573;
  v3._object = 0xEE0029287365726FLL;
  v4._object = 0x80000001B4F81D70;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 235;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E97BF8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v5._object = 0x80000001B4F81D70;
  v6._object = 0x80000001B4F81DB0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 236;
  v9 = *(v7 + 32);
  v10 = sub_1B4F66024();
  v11 = sub_1B4F65AA4();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CBC58], MEMORY[0x1E69CBC60], MEMORY[0x1E69CB570], MEMORY[0x1E69CB578], ObjectType, v7);
}

id sub_1B4E97E34()
{
  [*&v0[OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4E97E80(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B4E97F44(a1);
  }
}

void sub_1B4E97EDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B4E97F44(void *a1)
{
  v3 = sub_1B4F67D54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4F67D74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_1B4E983BC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = v1;
  sub_1B4F67D64();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v12, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_1B4E981BC(void *a1, uint64_t a2)
{
  if ([a1 type] == 1)
  {
    v4 = [*(a2 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_wifiInterface) powerOn];
    *(a2 + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled) = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B4EF7864();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B4F67C54();
    __swift_project_value_buffer(v5, qword_1EDB72490);
    v6 = a1;
    oslog = sub_1B4F67C34();
    v7 = sub_1B4F685C4();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_1B4DC2000, oslog, v7, "WiFi interface received unhandled event: %{public}@", v8, 0xCu);
      sub_1B4E983C4(v9);
      MEMORY[0x1B8C831D0](v9, -1, -1);
      MEMORY[0x1B8C831D0](v8, -1, -1);
    }
  }
}

uint64_t sub_1B4E983C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6DF0, &qword_1B4F79210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SeymourClient::NetworkStatus_optional __swiftcall NetworkStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E98490(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C62616863616572;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6168636165726E75;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65526E6F69746361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE00646572697571;
  }

  v7 = 0x6C62616863616572;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6168636165726E75;
    v8 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65526E6F69746361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE00646572697571;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

uint64_t sub_1B4E985B4()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4E98670(uint64_t a1)
{
  sub_1B4F67FE4();
}

uint64_t sub_1B4E98718(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

void sub_1B4E987DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646572697571;
  v4 = 0xE900000000000065;
  v5 = 0x6C62616863616572;
  if (v2 != 1)
  {
    v5 = 0x6168636165726E75;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65526E6F69746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NetworkStatus.description.getter()
{
  v1 = 0x6C62616863616572;
  if (*v0 != 1)
  {
    v1 = 0x6168636165726E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65526E6F69746361;
  }
}

unint64_t sub_1B4E988CC()
{
  result = qword_1EB8F5830;
  if (!qword_1EB8F5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5830);
  }

  return result;
}

uint64_t sub_1B4E98920()
{
  v1 = 0x6C62616863616572;
  if (*v0 != 1)
  {
    v1 = 0x6168636165726E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65526E6F69746361;
  }
}

uint64_t getEnumTagSinglePayload for HeartRateDeviceAvailabilityUpdated(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t Playback.applyingTimestampOffset(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v7 - v3;
  sub_1B4F67A04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1B4F67A24();
  return sub_1B4E98B7C(v4);
}

uint64_t sub_1B4E98B7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E98BE4(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v7 - v3;
  sub_1B4F67A04();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1B4F67A24();
  return sub_1B4E98B7C(v4);
}

void *BookmarkClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E9BEEC(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E98E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v17 = a4(0);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    (*(v15 + 8))(v13, v10, a5, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_1B4E9C68C(v13, a6);
  }

  return result;
}

uint64_t BookmarkClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BookmarkClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t BookmarkClient.queryAllBookmarks()()
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703C0);
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x80000001B4F81EE0;
  v3._object = 0x80000001B4F81F10;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 45;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v8 = sub_1B4E9C110();
  v9 = sub_1B4E9C194();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t BookmarkClient.queryBookmarks(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81F30;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 46;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v13 = sub_1B4E9C110();
  v14 = sub_1B4E9C194();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarks(mediaTypes:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81F50;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 48;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C348();
  v12 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  v13 = sub_1B4E9C110();
  v14 = sub_1B4E9C194();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarks(referenceTypes:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81F70;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 56;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C420();
  v12 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  v13 = sub_1B4E9C110();
  v14 = sub_1B4E9C194();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarkCount(mediaTypes:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81F90;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 55;
  v13 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v10 = sub_1B4E9C348();
  v11 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  return v8(&v14, &v13, v9, MEMORY[0x1E69E6530], v10, v11, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t BookmarkClient.filterBookmarks(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81FB0;
  v5._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 58;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65534();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C110();
  v12 = sub_1B4E9C194();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], v11, v12, ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarkCount(filter:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F81FD0;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 60;
  v8 = *(v6 + 32);
  v9 = sub_1B4F65534();
  return v8(&v11, a1, v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t BookmarkClient.queryBookmarkCount(referenceTypes:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._object = 0x80000001B4F81EE0;
  v5._countAndFlagsBits = 0xD000000000000023;
  v5._object = 0x80000001B4F81FF0;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 57;
  v13 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v10 = sub_1B4E9C420();
  v11 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  return v8(&v14, &v13, v9, MEMORY[0x1E69E6530], v10, v11, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t BookmarkClient.insertBookmarks(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F82020;
  v5._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 44;
  v13 = a1;
  v8 = *(v6 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v10 = sub_1B4E9C110();
  v11 = sub_1B4E9C194();
  return v8(&v14, &v13, v9, v10, v11, ObjectType, v6);
}

uint64_t BookmarkClient.removeBookmarks(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F82040;
  v5._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 47;
  v13 = a1;
  v8 = *(v6 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v10 = sub_1B4E9C110();
  v11 = sub_1B4E9C194();
  return v8(&v14, &v13, v9, v10, v11, ObjectType, v6);
}

uint64_t BookmarkClient.queryAllPlaylists()()
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703C0);
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x80000001B4F81EE0;
  v3._object = 0x80000001B4F82060;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 50;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v8 = sub_1B4E9C4F8();
  v9 = sub_1B4DDAC30();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t BookmarkClient.filterPlaylists(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F82080;
  v5._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 59;
  v8 = *(v6 + 32);
  v9 = sub_1B4F658A4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v11 = sub_1B4E9C4F8();
  v12 = sub_1B4DDAC30();
  return v8(&v14, a1, v9, v10, MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], v11, v12, ObjectType, v6);
}

uint64_t BookmarkClient.queryPlaylistCount(filter:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F820A0;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 61;
  v8 = *(v6 + 32);
  v9 = sub_1B4F658A4();
  return v8(&v11, a1, v9, MEMORY[0x1E69E6530], MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v6);
}

uint64_t BookmarkClient.queryPlaylist(playlistIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB703C0);
  v6._object = 0x80000001B4F81EE0;
  v7._object = 0x80000001B4F820C0;
  v6._countAndFlagsBits = 0xD000000000000022;
  v7._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v14 = 51;
  v13[0] = a1;
  v13[1] = a2;
  v10 = *(v8 + 32);
  v11 = sub_1B4F67A94();
  return v10(&v14, v13, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v8);
}

uint64_t BookmarkClient.queryPlaylists(playlistIdentifiers:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._object = 0x80000001B4F81EE0;
  v5._countAndFlagsBits = 0xD000000000000024;
  v5._object = 0x80000001B4F820F0;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v17 = 53;
  v16 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v11 = sub_1B4E9C248();
  v12 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v13 = sub_1B4E9C4F8();
  v14 = sub_1B4DDAC30();
  return v8(&v17, &v16, v9, v10, v11, v12, v13, v14, ObjectType, v6);
}

uint64_t BookmarkClient.queryPlaylistCount()()
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703C0);
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x80000001B4F81EE0;
  v3._object = 0x80000001B4F82120;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 54;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v4);
}

uint64_t BookmarkClient.insertPlaylist(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F82140;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 49;
  v8 = *(v6 + 16);
  v9 = sub_1B4F67A94();
  return v8(&v11, a1, v9, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v6);
}

uint64_t BookmarkClient.deletePlaylist(_:)(uint64_t a1)
{
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703C0);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001B4F81EE0;
  v5._object = 0x80000001B4F82160;
  v5._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 52;
  v8 = *(v6 + 16);
  v9 = sub_1B4F67A94();
  return v8(&v11, a1, v9, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v6);
}

uint64_t sub_1B4E9A814()
{
  v1 = *v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F81F10;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 45;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v9 = sub_1B4E9C110();
  v10 = sub_1B4E9C194();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E9A944(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F30;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 46;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v14 = sub_1B4E9C110();
  v15 = sub_1B4E9C194();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4E9AAE4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F50;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 48;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C348();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  v14 = sub_1B4E9C110();
  v15 = sub_1B4E9C194();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4E9AC84(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F90;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 55;
  v14 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5850, &qword_1B4F75218);
  v11 = sub_1B4E9C348();
  v12 = sub_1B4E9C2CC(&qword_1EB8F5860, &qword_1EB8F5850, &qword_1B4F75218, sub_1B4E9C3CC);
  return v9(&v15, &v14, v10, MEMORY[0x1E69E6530], v11, v12, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v7);
}

uint64_t sub_1B4E9AE08(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81F70;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 56;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C420();
  v13 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  v14 = sub_1B4E9C110();
  v15 = sub_1B4E9C194();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4E9AFA8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001B4F81FF0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 57;
  v14 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5870, &qword_1B4F75220);
  v11 = sub_1B4E9C420();
  v12 = sub_1B4E9C2CC(&qword_1EB8F5880, &qword_1EB8F5870, &qword_1B4F75220, sub_1B4E9C4A4);
  return v9(&v15, &v14, v10, MEMORY[0x1E69E6530], v11, v12, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v7);
}

uint64_t sub_1B4E9B12C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 58;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65534();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v12 = sub_1B4E9C110();
  v13 = sub_1B4E9C194();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4E9B288(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F81FD0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 60;
  v9 = *(v7 + 32);
  v10 = sub_1B4F65534();
  return v9(&v12, a1, v10, MEMORY[0x1E69E6530], MEMORY[0x1E69CB3F8], MEMORY[0x1E69CB400], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v7);
}

uint64_t sub_1B4E9B3C0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82080;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 59;
  v9 = *(v7 + 32);
  v10 = sub_1B4F658A4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v12 = sub_1B4E9C4F8();
  v13 = sub_1B4DDAC30();
  return v9(&v15, a1, v10, v11, MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], v12, v13, ObjectType, v7);
}

uint64_t sub_1B4E9B51C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F820A0;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 61;
  v9 = *(v7 + 32);
  v10 = sub_1B4F658A4();
  return v9(&v12, a1, v10, MEMORY[0x1E69E6530], MEMORY[0x1E69CB478], MEMORY[0x1E69CB480], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v7);
}

uint64_t sub_1B4E9B654(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB703C0);
  v7._object = 0x80000001B4F81EE0;
  v8._object = 0x80000001B4F820C0;
  v7._countAndFlagsBits = 0xD000000000000022;
  v8._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v15 = 51;
  v14[0] = a1;
  v14[1] = a2;
  v11 = *(v9 + 32);
  v12 = sub_1B4F67A94();
  return v11(&v15, v14, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v9);
}

uint64_t sub_1B4E9B788()
{
  v1 = *v0;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703C0);
  v3._countAndFlagsBits = 0xD000000000000022;
  v3._object = 0x80000001B4F81EE0;
  v4._object = 0x80000001B4F82120;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 54;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6530], MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], ObjectType, v5);
}

uint64_t sub_1B4E9B88C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._object = 0x80000001B4F81EE0;
  v6._countAndFlagsBits = 0xD000000000000024;
  v6._object = 0x80000001B4F820F0;
  v5._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v18 = 53;
  v17 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5890, &qword_1B4F75228);
  v12 = sub_1B4E9C248();
  v13 = sub_1B4E9C2CC(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  v14 = sub_1B4E9C4F8();
  v15 = sub_1B4DDAC30();
  return v9(&v18, &v17, v10, v11, v12, v13, v14, v15, ObjectType, v7);
}

uint64_t sub_1B4E9BA2C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82020;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 44;
  v14 = a1;
  v9 = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C110();
  v12 = sub_1B4E9C194();
  return v9(&v15, &v14, v10, v11, v12, ObjectType, v7);
}

uint64_t sub_1B4E9BB68(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82140;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 49;
  v9 = *(v7 + 16);
  v10 = sub_1B4F67A94();
  return v9(&v12, a1, v10, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v7);
}

uint64_t sub_1B4E9BC8C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82040;
  v6._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 47;
  v14 = a1;
  v9 = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4B40, &qword_1B4F6E650);
  v11 = sub_1B4E9C110();
  v12 = sub_1B4E9C194();
  return v9(&v15, &v14, v10, v11, v12, ObjectType, v7);
}

uint64_t sub_1B4E9BDC8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703C0);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x80000001B4F81EE0;
  v6._object = 0x80000001B4F82160;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 52;
  v9 = *(v7 + 16);
  v10 = sub_1B4F67A94();
  return v9(&v12, a1, v10, MEMORY[0x1E69CD358], MEMORY[0x1E69CD360], ObjectType, v7);
}

void *sub_1B4E9BEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v13 = a1;
  v12 = 4;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F65E64();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4E9C6EC, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CB968], MEMORY[0x1E69CB970]);

  v13 = a1;
  v12 = 5;
  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1B4F65F44();
  TransportDispatching.register<A>(event:handler:)(&v12, sub_1B4E9C6F0, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CBB68], MEMORY[0x1E69CBB70]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E9C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC5A60(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E9C110()
{
  result = qword_1EB8F5838;
  if (!qword_1EB8F5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5838);
  }

  return result;
}

unint64_t sub_1B4E9C194()
{
  result = qword_1EB8F5840;
  if (!qword_1EB8F5840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4B40, &qword_1B4F6E650);
    sub_1B4DDA840(&qword_1EB8F5848, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5840);
  }

  return result;
}

unint64_t sub_1B4E9C248()
{
  result = qword_1EDB71460;
  if (!qword_1EDB71460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71460);
  }

  return result;
}

uint64_t sub_1B4E9C2CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E9C348()
{
  result = qword_1EB8F5858;
  if (!qword_1EB8F5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5850, &qword_1B4F75218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5858);
  }

  return result;
}

unint64_t sub_1B4E9C3CC()
{
  result = qword_1EB8F5868;
  if (!qword_1EB8F5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5868);
  }

  return result;
}

unint64_t sub_1B4E9C420()
{
  result = qword_1EB8F5878;
  if (!qword_1EB8F5878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5870, &qword_1B4F75220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5878);
  }

  return result;
}

unint64_t sub_1B4E9C4A4()
{
  result = qword_1EB8F5888;
  if (!qword_1EB8F5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5888);
  }

  return result;
}

unint64_t sub_1B4E9C4F8()
{
  result = qword_1EDB6DAD8;
  if (!qword_1EDB6DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5890, &qword_1B4F75228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DAD8);
  }

  return result;
}

uint64_t sub_1B4E9C68C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchLandingShelfTileDescriptors()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4E9CF24;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchResults(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SearchClientProtocol.fetchSearchSuggestions(term:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B4DE0D94;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SearchClientProtocol.insertRecentSearchTerm(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.deleteRecentSearchTerms(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE13F0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.deleteAllRecentSearchTerms(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SearchClientProtocol.queryRecentSearchTerms(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4E2BDB0;

  return v9(a1, a2, a3);
}

uint64_t XPCStream.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCStream.replyRequiredArg.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

SeymourClient::XPCStream __swiftcall XPCStream.init(name:replyRequiredArg:)(Swift::String name, Swift::String_optional replyRequiredArg)
{
  v2->value = name;
  v2[1] = replyRequiredArg;
  result.replyRequiredArg = replyRequiredArg;
  result.name = name;
  return result;
}

uint64_t sub_1B4E9CF94(uint64_t a1, int a2)
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

uint64_t sub_1B4E9CFDC(uint64_t result, int a2, int a3)
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

uint64_t CellularDataRestrictedState.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E9D0C4()
{
  result = qword_1EB8F5898;
  if (!qword_1EB8F5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5898);
  }

  return result;
}

unint64_t sub_1B4E9D11C()
{
  result = qword_1EB8F58A0;
  if (!qword_1EB8F58A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58A8, &qword_1B4F753A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58A0);
  }

  return result;
}

void *ContentAvailabilityClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));
  sub_1B4DC9B7C();

  v8 = sub_1B4F68654();
  type metadata accessor for EventHub();
  v9 = swift_allocObject();
  v10 = sub_1B4E9E264(v8, 0, v9);
  v11 = swift_allocObject();
  v12 = sub_1B4E9E32C(v6, v10, v11);

  return v12;
}

uint64_t sub_1B4E9D328(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ContentAvailabilityUpdated(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v10 = sub_1B4F66184();
    (*(*(v10 - 8) + 16))(v6, a1, v10);
    (*(v8 + 8))(v6, v3, &protocol witness table for ContentAvailabilityUpdated, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1B4E9E670(v6);
  }

  return result;
}

uint64_t sub_1B4E9D470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);
    v7 = sub_1B4F670E4();
    v6(a1, v7, &protocol witness table for AllowedContentRatingsUpdated, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4E9D52C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v8[0] = v3;
    v8[1] = v2;
    v7 = *(v5 + 8);

    v7(v8, &type metadata for StorefrontLanguageUpdated, &protocol witness table for StorefrontLanguageUpdated, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4E9D5F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, &type metadata for SupportedDeviceChanged, &protocol witness table for SupportedDeviceChanged, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ContentAvailabilityClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ContentAvailabilityClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ContentAvailabilityClient.fetchAvailableAudioLanguageCodes()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F821E0;
  v3._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 122;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v8 = sub_1B4E9C248();
  v9 = sub_1B4DCADC0(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t ContentAvailabilityClient.queryAllowedContentRatings()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F82210;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 117;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58B0, &qword_1B4F75418);
  v8 = sub_1B4E9E5A0();
  v9 = sub_1B4DCADC0(&qword_1EDB6DB30, &qword_1EB8F58B0, &qword_1B4F75418, sub_1B4DCAE3C);
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t ContentAvailabilityClient.queryContentAvailability()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F82230;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 118;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66184();
  return v6(&v9, v7, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28], ObjectType, v4);
}

uint64_t ContentAvailabilityClient.queryStorefrontLanguageCode()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F82250;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 119;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v4);
}

uint64_t ContentAvailabilityClient.queryAccountContainsSupportedWatch()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F82270;
  v3._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 120;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v4);
}

uint64_t ContentAvailabilityClient.queryAccountContainsSupportedDevice()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x80000001B4F821B0;
  v3._object = 0x80000001B4F822A0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 121;
  return (*(v4 + 24))(&v7, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v4);
}

uint64_t sub_1B4E9DDF0()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F821E0;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 122;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4AF0, &qword_1B4F6E640);
  v9 = sub_1B4E9C248();
  v10 = sub_1B4DCADC0(&qword_1EDB71458, &qword_1EB8F4AF0, &qword_1B4F6E640, sub_1B4DC53AC);
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E9DF54()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82250;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 119;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v5);
}

uint64_t sub_1B4E9E058()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82270;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 120;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v5);
}

uint64_t sub_1B4E9E160()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F822A0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 121;
  return (*(v5 + 24))(&v8, MEMORY[0x1E69E6370], MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], ObjectType, v5);
}

uint64_t sub_1B4E9E264(uint64_t a1, char a2, uint64_t a3)
{
  v11 = &type metadata for DispatchTimerProvider;
  v12 = &protocol witness table for DispatchTimerProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51A8, &qword_1B4F71180);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  *(a3 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51B0, &qword_1B4F71188);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  *(a3 + 80) = v8;
  sub_1B4E48E04(&v10, a3 + 32);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  return a3;
}

void *sub_1B4E9E32C(uint64_t a1, uint64_t a2, void *a3)
{
  a3[2] = a1;
  a3[3] = &protocol witness table for XPCClient;
  a3[4] = &protocol witness table for XPCClient;
  a3[5] = a2;
  a3[6] = &protocol witness table for EventHub;
  ObjectType = swift_getObjectType();
  v14 = a1;
  v13 = 11;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = sub_1B4F66184();

  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D0, v6, ObjectType, v7, &protocol witness table for XPCClient, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28]);

  v14 = a1;
  v13 = 10;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = sub_1B4F670E4();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D4, v8, ObjectType, v9, &protocol witness table for XPCClient, MEMORY[0x1E69CCDF0], MEMORY[0x1E69CCDF8]);

  v14 = a1;
  v13 = 13;
  v10 = swift_allocObject();
  swift_weakInit();
  TransportDispatching.register<A>(event:handler:)(&v13, sub_1B4E9E6D8, v10, ObjectType, MEMORY[0x1E69E6158], &protocol witness table for XPCClient, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458]);

  v14 = a1;
  v13 = 14;
  v11 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v13, sub_1B4E9E6CC, v11, ObjectType, &protocol witness table for XPCClient);

  return a3;
}

unint64_t sub_1B4E9E5A0()
{
  result = qword_1EDB6DB38;
  if (!qword_1EDB6DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B0, &qword_1B4F75418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB38);
  }

  return result;
}

uint64_t sub_1B4E9E670(uint64_t a1)
{
  v2 = type metadata accessor for ContentAvailabilityUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PaceMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F64AE4();

  return sub_1B4F64AF4();
}

uint64_t sub_1B4E9E734(double a1)
{
  sub_1B4F64AE4();

  return sub_1B4F64AF4();
}

void *AdminClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *AdminClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t AdminClient.executeScoresTasks()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F82300;
  v3._object = 0x80000001B4F82320;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 233;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AdminClient.deleteLocalScores()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F82300;
  v3._object = 0x80000001B4F82340;
  v3._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 237;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AdminClient.pingServer(endpoint:)(char a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001B4F82300;
  v5._object = 0x80000001B4F82360;
  v5._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 281;
  v9 = a1 & 1;
  return (*(v6 + 32))(&v10, &v9, MEMORY[0x1E69CC250], MEMORY[0x1E69E6158], MEMORY[0x1E69CC240], MEMORY[0x1E69CC248], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v6);
}

uint64_t AdminClient.createRepresentativeDatabase()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F82300;
  v3._object = 0x80000001B4F82380;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 280;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AdminClient.requestPersistentStoreStatistics(requiredDataProtection:)(unsigned __int8 a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F82300;
  v5._countAndFlagsBits = 0xD000000000000039;
  v5._object = 0x80000001B4F823A0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 282;
  v13 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58B8, &qword_1B4F754B8);
  v10 = sub_1B4E9F4D8();
  v11 = sub_1B4E9F554();
  return v8(&v14, &v13, MEMORY[0x1E69E6530], v9, MEMORY[0x1E69CD4A0], MEMORY[0x1E69CD4A8], v10, v11, ObjectType, v6);
}

uint64_t AdminClient.forceServerSyncBootstrap()()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  v2._object = 0x80000001B4F82300;
  v3._object = 0x80000001B4F823E0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 263;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t AdminClient.queryEffectiveRestriction(for:)(char a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F82300;
  v5._object = 0x80000001B4F82400;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 283;
  v11 = a1 & 1;
  v8 = *(v6 + 32);
  v9 = sub_1B4F64D64();
  return v8(&v12, &v11, MEMORY[0x1E69CBFB0], v9, MEMORY[0x1E69CBFA0], MEMORY[0x1E69CBFA8], MEMORY[0x1E69CB088], MEMORY[0x1E69CB090], ObjectType, v6);
}

uint64_t sub_1B4E9F0B4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82320;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 233;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E9F1A4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F82340;
  v4._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 237;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E9F2B4()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x80000001B4F82300;
  v4._object = 0x80000001B4F823E0;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 263;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E9F3A4(char a1)
{
  v3 = *v1;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);
  v5._object = 0x80000001B4F82300;
  v6._object = 0x80000001B4F82400;
  v5._countAndFlagsBits = 0xD00000000000001FLL;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 283;
  v12 = a1 & 1;
  v9 = *(v7 + 32);
  v10 = sub_1B4F64D64();
  return v9(&v13, &v12, MEMORY[0x1E69CBFB0], v10, MEMORY[0x1E69CBFA0], MEMORY[0x1E69CBFA8], MEMORY[0x1E69CB088], MEMORY[0x1E69CB090], ObjectType, v7);
}

unint64_t sub_1B4E9F4D8()
{
  result = qword_1EB8F58C0;
  if (!qword_1EB8F58C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B8, &qword_1B4F754B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58C0);
  }

  return result;
}

unint64_t sub_1B4E9F554()
{
  result = qword_1EB8F58C8;
  if (!qword_1EB8F58C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F58B8, &qword_1B4F754B8);
    sub_1B4E9F5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58C8);
  }

  return result;
}

unint64_t sub_1B4E9F5D8()
{
  result = qword_1EB8F58D0;
  if (!qword_1EB8F58D0)
  {
    sub_1B4F66034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F58D0);
  }

  return result;
}

uint64_t HealthKitSessionReference.init(workout:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 metadata];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sub_1B4F67EF4();

  if (!*(v6 + 16) || (v7 = sub_1B4DF4344(0xD000000000000022, 0x80000001B4F82450), (v8 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_1B4DC4F2C(*(v6 + 56) + 32 * v7, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v9 = [v3 metadata];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = sub_1B4F67EF4();

  if (!*(v10 + 16) || (v11 = sub_1B4DF4344(0xD000000000000029, 0x80000001B4F82480), (v12 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_1B4DC4F2C(*(v10 + 56) + 32 * v11, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    goto LABEL_12;
  }

  sub_1B4F66B24();

  v13 = 0;
LABEL_13:
  v14 = sub_1B4F66B34();
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

void *sub_1B4E9F94C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B4F64884();
  v11[0] = 0;
  v7 = [v6 *a4];

  v8 = v11[0];
  if (v7)
  {
    v9 = sub_1B4F64894();
  }

  else
  {
    v9 = v8;
    sub_1B4F647C4();

    swift_willThrow();
  }

  return v9;
}

uint64_t CoachingEventStarted.coachingEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F652A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoachingEventStarted.init(coachingEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CoachingEventStarted(uint64_t a1)
{
  result = qword_1EB8F58D8;
  if (!qword_1EB8F58D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E9FB84(uint64_t a1)
{
  result = sub_1B4F652A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MultiUserBeginActivityCancelled.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserBeginActivityCancelled.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserBeginActivityCancelled(uint64_t a1)
{
  result = qword_1EDB6E3A0;
  if (!qword_1EDB6E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonalizationPrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PersonalizationPrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F673D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PersonalizationPrivacyPreferenceUpdated(uint64_t a1)
{
  result = qword_1EDB71598;
  if (!qword_1EDB71598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreMetricUpdated.scoreMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64E14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScoreMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScoreMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ScoreMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F58E8;
  if (!qword_1EB8F58E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreMetricUpdated.init(scoreMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F64E14();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ScoreMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4EA0050(uint64_t a1)
{
  result = sub_1B4F64E14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MindfulMinutesMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66424();

  return sub_1B4F66444();
}

uint64_t sub_1B4EA011C(double a1)
{
  sub_1B4F66424();

  return sub_1B4F66444();
}

uint64_t sub_1B4EA0174(uint64_t a1)
{
  v36 = sub_1B4F64D24();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = sub_1B4F688B4();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v9, v36);
      v38 = sub_1B4F64D14();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1B4E257A4((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1B4DF3104(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
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
  }

  return result;
}

uint64_t CatalogProgram.reference()@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1B4F64F74();
  v3 = *(v2 - 8);
  v117 = v2;
  v118 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v116 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F647A4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1B4F67954();
  v101 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115, v9);
  v114 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1B4F64AC4();
  v100 = *(v113 - 1);
  MEMORY[0x1EEE9AC00](v113, v11);
  v112 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1B4F65A34();
  v99 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111, v13);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1B4F67B14();
  v15 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109, v16);
  v108 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B4F65574();
  v102 = sub_1B4EA0174(v18);

  v105 = v1;
  v19 = sub_1B4F655D4();
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v119 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v20, 0);
    v22 = v119;
    v24 = *(v15 + 16);
    v23 = v15 + 16;
    v107 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v98 = v19;
    v26 = v19 + v25;
    v106 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v108;
      v29 = v109;
      v30 = v23;
      v107(v108, v26, v109);
      v31 = sub_1B4F67B04();
      v33 = v32;
      (*v27)(v28, v29);
      v119 = v22;
      v35 = v22[2];
      v34 = v22[3];
      if (v35 >= v34 >> 1)
      {
        sub_1B4E257A4((v34 > 1), v35 + 1, 1);
        v22 = v119;
      }

      v22[2] = v35 + 1;
      v36 = &v22[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      v26 += v106;
      --v20;
      v23 = v30;
    }

    while (v20);
    v107 = v22;

    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
  }

  v37 = sub_1B4F65554();
  v38 = *(v37 + 16);
  if (v38)
  {
    v119 = v21;
    sub_1B4E257A4(0, v38, 0);
    v39 = v119;
    v40 = *(v99 + 16);
    v41 = *(v99 + 80);
    v106 = v37;
    v42 = v37 + ((v41 + 32) & ~v41);
    v108 = *(v99 + 72);
    v109 = v40;
    v43 = (v99 + 8);
    do
    {
      v44 = v110;
      v45 = v111;
      (v109)(v110, v42, v111);
      v46 = sub_1B4F65974();
      v48 = v47;
      (*v43)(v44, v45);
      v119 = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_1B4E257A4((v49 > 1), v50 + 1, 1);
        v39 = v119;
      }

      v39[2] = v50 + 1;
      v51 = &v39[2 * v50];
      v51[4] = v46;
      v51[5] = v48;
      v42 += v108;
      --v38;
    }

    while (v38);
    v109 = v39;

    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v109 = MEMORY[0x1E69E7CC0];
  }

  v52 = sub_1B4F65564();
  v53 = *(v52 + 16);
  if (v53)
  {
    v119 = v21;
    sub_1B4E257A4(0, v53, 0);
    v54 = v119;
    v55 = *(v100 + 16);
    v56 = *(v100 + 80);
    v108 = v52;
    v57 = v52 + ((v56 + 32) & ~v56);
    v110 = *(v100 + 72);
    v111 = v55;
    v58 = (v100 + 8);
    do
    {
      v59 = v112;
      v60 = v113;
      (v111)(v112, v57, v113);
      v61 = sub_1B4F64AB4();
      v63 = v62;
      (*v58)(v59, v60);
      v119 = v54;
      v65 = v54[2];
      v64 = v54[3];
      if (v65 >= v64 >> 1)
      {
        sub_1B4E257A4((v64 > 1), v65 + 1, 1);
        v54 = v119;
      }

      v54[2] = v65 + 1;
      v66 = &v54[2 * v65];
      v66[4] = v61;
      v66[5] = v63;
      v57 += v110;
      --v53;
    }

    while (v53);
    v111 = v54;

    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v111 = MEMORY[0x1E69E7CC0];
  }

  v67 = sub_1B4F655C4();
  v68 = *(v67 + 16);
  if (v68)
  {
    v119 = v21;
    sub_1B4E257A4(0, v68, 0);
    v69 = v119;
    v70 = *(v101 + 16);
    v71 = *(v101 + 80);
    v110 = v67;
    v72 = v67 + ((v71 + 32) & ~v71);
    v112 = *(v101 + 72);
    v113 = v70;
    v73 = (v101 + 8);
    do
    {
      v74 = v114;
      v75 = v115;
      (v113)(v114, v72, v115);
      v76 = sub_1B4F678D4();
      v78 = v77;
      (*v73)(v74, v75);
      v119 = v69;
      v80 = v69[2];
      v79 = v69[3];
      if (v80 >= v79 >> 1)
      {
        sub_1B4E257A4((v79 > 1), v80 + 1, 1);
        v69 = v119;
      }

      v69[2] = v80 + 1;
      v81 = &v69[2 * v80];
      v81[4] = v76;
      v81[5] = v78;
      v72 += v112;
      --v68;
    }

    while (v68);

    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v82 = sub_1B4F655B4();
  v83 = *(v82 + 16);
  if (v83)
  {
    v119 = v21;
    sub_1B4E257A4(0, v83, 0);
    v84 = v119;
    v85 = *(v118 + 16);
    v86 = *(v118 + 80);
    v113 = v82;
    v87 = v82 + ((v86 + 32) & ~v86);
    v114 = *(v118 + 72);
    v115 = v85;
    v118 += 16;
    v88 = (v118 - 8);
    do
    {
      v89 = v116;
      v90 = v117;
      (v115)(v116, v87, v117);
      v91 = sub_1B4F64F64();
      v93 = v92;
      (*v88)(v89, v90);
      v119 = v84;
      v95 = v84[2];
      v94 = v84[3];
      if (v95 >= v94 >> 1)
      {
        sub_1B4E257A4((v94 > 1), v95 + 1, 1);
        v84 = v119;
      }

      v84[2] = v95 + 1;
      v96 = &v84[2 * v95];
      v96[4] = v91;
      v96[5] = v93;
      v87 += v114;
      --v83;
    }

    while (v83);
  }

  sub_1B4F65594();
  sub_1B4F65584();
  sub_1B4F65544();
  sub_1B4F655A4();
  return sub_1B4F66774();
}

uint64_t ActivityRings.applyingTimestampOffset(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1B4F65CA4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_1B4F64EF4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v4, 1, 1, v14);
  sub_1B4F65134();
  sub_1B4F65174();
  sub_1B4DD2BC4(v4, &qword_1EB8F4148, &qword_1B4F6A648);
  sub_1B4DD2BC4(v8, &qword_1EB8F4148, &qword_1B4F6A648);
  return sub_1B4DD2BC4(v12, &qword_1EB8F4150, &qword_1B4F6A650);
}

uint64_t sub_1B4EA0FD0(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1B4F65CA4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_1B4F64EF4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v4, 1, 1, v14);
  sub_1B4F65134();
  sub_1B4F65174();
  sub_1B4DD2BC4(v4, &qword_1EB8F4148, &qword_1B4F6A648);
  sub_1B4DD2BC4(v8, &qword_1EB8F4148, &qword_1B4F6A648);
  return sub_1B4DD2BC4(v12, &qword_1EB8F4150, &qword_1B4F6A650);
}

unint64_t sub_1B4EA1208(char a1)
{
  result = 0x7953726576726573;
  switch(a1)
  {
    case 1:
    case 5:
    case 16:
    case 24:
    case 42:
      result = 0xD000000000000020;
      break;
    case 2:
    case 39:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 9:
    case 19:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 20:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 10:
    case 23:
      result = 0xD000000000000011;
      break;
    case 11:
    case 26:
    case 36:
    case 37:
    case 43:
      result = 0xD000000000000016;
      break;
    case 12:
    case 28:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD000000000000024;
      break;
    case 14:
    case 40:
    case 46:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000023;
      break;
    case 17:
    case 18:
    case 30:
      result = 0xD000000000000019;
      break;
    case 21:
    case 22:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 25:
      return result;
    case 27:
      result = 0xD000000000000026;
      break;
    case 29:
      result = 0xD000000000000021;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 1936746868;
      break;
    case 33:
      result = 0x6573705573706974;
      break;
    case 34:
      result = 0xD000000000000015;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 38:
      result = 0x724265746F6D6572;
      break;
    case 41:
      result = 0xD000000000000015;
      break;
    case 45:
      result = 0x5374756F6B726F77;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1B4EA1644(uint64_t a1)
{
  v2 = sub_1B4EA630C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1680(uint64_t a1)
{
  v2 = sub_1B4EA630C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA16BC(uint64_t a1)
{
  v2 = sub_1B4EA5B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA16F8(uint64_t a1)
{
  v2 = sub_1B4EA5B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1734(uint64_t a1)
{
  v2 = sub_1B4EA5AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1770(uint64_t a1)
{
  v2 = sub_1B4EA5AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA17AC(uint64_t a1)
{
  v2 = sub_1B4EA645C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA17E8(uint64_t a1)
{
  v2 = sub_1B4EA645C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1824(uint64_t a1)
{
  v2 = sub_1B4EA66A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1860(uint64_t a1)
{
  v2 = sub_1B4EA66A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA189C(uint64_t a1)
{
  v2 = sub_1B4EA5E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA18D8(uint64_t a1)
{
  v2 = sub_1B4EA5E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1914(uint64_t a1)
{
  v2 = sub_1B4EA5934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1950(uint64_t a1)
{
  v2 = sub_1B4EA5934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA198C(uint64_t a1)
{
  v2 = sub_1B4EA6264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA19C8(uint64_t a1)
{
  v2 = sub_1B4EA6264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1A04(uint64_t a1)
{
  v2 = sub_1B4EA5838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1A40(uint64_t a1)
{
  v2 = sub_1B4EA5838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1A7C(uint64_t a1)
{
  v2 = sub_1B4EA65AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1AB8(uint64_t a1)
{
  v2 = sub_1B4EA65AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1AF4(uint64_t a1)
{
  v2 = sub_1B4EA588C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1B30(uint64_t a1)
{
  v2 = sub_1B4EA588C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1B6C(uint64_t a1)
{
  v2 = sub_1B4EA64B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1BA8(uint64_t a1)
{
  v2 = sub_1B4EA64B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1BE4(uint64_t a1)
{
  v2 = sub_1B4EA61BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1C20(uint64_t a1)
{
  v2 = sub_1B4EA61BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1C64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4EABD14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4EA1C98(uint64_t a1)
{
  v2 = sub_1B4EA573C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1CD4(uint64_t a1)
{
  v2 = sub_1B4EA573C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1D10(uint64_t a1)
{
  v2 = sub_1B4EA5F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1D4C(uint64_t a1)
{
  v2 = sub_1B4EA5F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1D88(uint64_t a1)
{
  v2 = sub_1B4EA63B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1DC4(uint64_t a1)
{
  v2 = sub_1B4EA63B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1E00(uint64_t a1)
{
  v2 = sub_1B4EA6360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1E3C(uint64_t a1)
{
  v2 = sub_1B4EA6360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1E78(uint64_t a1)
{
  v2 = sub_1B4EA6210();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1EB4(uint64_t a1)
{
  v2 = sub_1B4EA6210();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1EF0(uint64_t a1)
{
  v2 = sub_1B4EA6018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1F2C(uint64_t a1)
{
  v2 = sub_1B4EA6018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1F68(uint64_t a1)
{
  v2 = sub_1B4EA5D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA1FA4(uint64_t a1)
{
  v2 = sub_1B4EA5D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA1FE0(uint64_t a1)
{
  v2 = sub_1B4EA62B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA201C(uint64_t a1)
{
  v2 = sub_1B4EA62B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2058(uint64_t a1)
{
  v2 = sub_1B4EA5CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2094(uint64_t a1)
{
  v2 = sub_1B4EA5CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA20D0(uint64_t a1)
{
  v2 = sub_1B4EA59DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA210C(uint64_t a1)
{
  v2 = sub_1B4EA59DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2148(uint64_t a1)
{
  v2 = sub_1B4EA6168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2184(uint64_t a1)
{
  v2 = sub_1B4EA6168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA21C0(uint64_t a1)
{
  v2 = sub_1B4EA6408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA21FC(uint64_t a1)
{
  v2 = sub_1B4EA6408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2238(uint64_t a1)
{
  v2 = sub_1B4EA60C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2274(uint64_t a1)
{
  v2 = sub_1B4EA60C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA22B0(uint64_t a1)
{
  v2 = sub_1B4EA58E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA22EC(uint64_t a1)
{
  v2 = sub_1B4EA58E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2328(uint64_t a1)
{
  v2 = sub_1B4EA5FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2364(uint64_t a1)
{
  v2 = sub_1B4EA5FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA23A0(uint64_t a1)
{
  v2 = sub_1B4EA5F70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA23DC(uint64_t a1)
{
  v2 = sub_1B4EA5F70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2418(uint64_t a1)
{
  v2 = sub_1B4EA5790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2454(uint64_t a1)
{
  v2 = sub_1B4EA5790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2490(uint64_t a1)
{
  v2 = sub_1B4EA6558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA24CC(uint64_t a1)
{
  v2 = sub_1B4EA6558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2508(uint64_t a1)
{
  v2 = sub_1B4EA6654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2544(uint64_t a1)
{
  v2 = sub_1B4EA6654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2580(uint64_t a1)
{
  v2 = sub_1B4EA5A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA25BC(uint64_t a1)
{
  v2 = sub_1B4EA5A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA25F8(uint64_t a1)
{
  v2 = sub_1B4EA5DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2634(uint64_t a1)
{
  v2 = sub_1B4EA5DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2670(uint64_t a1)
{
  v2 = sub_1B4EA5E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA26AC(uint64_t a1)
{
  v2 = sub_1B4EA5E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA26E8(uint64_t a1)
{
  v2 = sub_1B4EA606C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2724(uint64_t a1)
{
  v2 = sub_1B4EA606C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2760(uint64_t a1)
{
  v2 = sub_1B4EA6600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA279C(uint64_t a1)
{
  v2 = sub_1B4EA6600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA27D8(uint64_t a1)
{
  v2 = sub_1B4EA5EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2814(uint64_t a1)
{
  v2 = sub_1B4EA5EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2850(uint64_t a1)
{
  v2 = sub_1B4EA6504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA288C(uint64_t a1)
{
  v2 = sub_1B4EA6504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA28C8(uint64_t a1)
{
  v2 = sub_1B4EA5D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2904(uint64_t a1)
{
  v2 = sub_1B4EA5D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2940(uint64_t a1)
{
  v2 = sub_1B4EA6114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA297C(uint64_t a1)
{
  v2 = sub_1B4EA6114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA29B8(uint64_t a1)
{
  v2 = sub_1B4EA5C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA29F4(uint64_t a1)
{
  v2 = sub_1B4EA5C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2A30(uint64_t a1)
{
  v2 = sub_1B4EA5BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2A6C(uint64_t a1)
{
  v2 = sub_1B4EA5BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2AA8(uint64_t a1)
{
  v2 = sub_1B4EA5A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2AE4(uint64_t a1)
{
  v2 = sub_1B4EA5A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2B20(uint64_t a1)
{
  v2 = sub_1B4EA5B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2B5C(uint64_t a1)
{
  v2 = sub_1B4EA5B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2B98(uint64_t a1)
{
  v2 = sub_1B4EA5988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2BD4(uint64_t a1)
{
  v2 = sub_1B4EA5988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2C10(uint64_t a1)
{
  v2 = sub_1B4EA5C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2C4C(uint64_t a1)
{
  v2 = sub_1B4EA5C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4EA2C88(uint64_t a1)
{
  v2 = sub_1B4EA57E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4EA2CC4(uint64_t a1)
{
  v2 = sub_1B4EA57E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feature.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F58F8, &qword_1B4F75660);
  v296 = *(v4 - 8);
  v297 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v295 = &v160 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5900, &qword_1B4F75668);
  v293 = *(v7 - 8);
  v294 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v292 = &v160 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5908, &qword_1B4F75670);
  v290 = *(v10 - 8);
  v291 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v289 = &v160 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5910, &qword_1B4F75678);
  v287 = *(v13 - 8);
  v288 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v286 = &v160 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5918, &qword_1B4F75680);
  v284 = *(v16 - 8);
  v285 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v283 = &v160 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5920, &qword_1B4F75688);
  v281 = *(v19 - 8);
  v282 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v280 = &v160 - v21;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5928, &qword_1B4F75690);
  v278 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279, v22);
  v277 = &v160 - v23;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5930, &qword_1B4F75698);
  v275 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276, v24);
  v274 = &v160 - v25;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5938, &qword_1B4F756A0);
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273, v26);
  v271 = &v160 - v27;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5940, &qword_1B4F756A8);
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270, v28);
  v268 = &v160 - v29;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5948, &qword_1B4F756B0);
  v266 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267, v30);
  v265 = &v160 - v31;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5950, &qword_1B4F756B8);
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264, v32);
  v262 = &v160 - v33;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5958, &qword_1B4F756C0);
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261, v34);
  v259 = &v160 - v35;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5960, &qword_1B4F756C8);
  v257 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258, v36);
  v256 = &v160 - v37;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5968, &qword_1B4F756D0);
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255, v38);
  v253 = &v160 - v39;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5970, &qword_1B4F756D8);
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252, v40);
  v250 = &v160 - v41;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5978, &qword_1B4F756E0);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249, v42);
  v247 = &v160 - v43;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5980, &qword_1B4F756E8);
  v245 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246, v44);
  v244 = &v160 - v45;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5988, &qword_1B4F756F0);
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243, v46);
  v241 = &v160 - v47;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5990, &qword_1B4F756F8);
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240, v48);
  v238 = &v160 - v49;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5998, &qword_1B4F75700);
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v50);
  v235 = &v160 - v51;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59A0, &qword_1B4F75708);
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234, v52);
  v232 = &v160 - v53;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59A8, &qword_1B4F75710);
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v54);
  v229 = &v160 - v55;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59B0, &qword_1B4F75718);
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228, v56);
  v226 = &v160 - v57;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59B8, &qword_1B4F75720);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v58);
  v223 = &v160 - v59;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59C0, &qword_1B4F75728);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222, v60);
  v220 = &v160 - v61;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59C8, &qword_1B4F75730);
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v62);
  v217 = &v160 - v63;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59D0, &qword_1B4F75738);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v64);
  v214 = &v160 - v65;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59D8, &qword_1B4F75740);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v66);
  v211 = &v160 - v67;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59E0, &qword_1B4F75748);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210, v68);
  v208 = &v160 - v69;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59E8, &qword_1B4F75750);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v70);
  v205 = &v160 - v71;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59F0, &qword_1B4F75758);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v72);
  v202 = &v160 - v73;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F59F8, &qword_1B4F75760);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v74);
  v199 = &v160 - v75;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A00, &qword_1B4F75768);
  v197 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v76);
  v196 = &v160 - v77;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A08, &qword_1B4F75770);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v78);
  v193 = &v160 - v79;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A10, &qword_1B4F75778);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v80);
  v190 = &v160 - v81;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A18, &qword_1B4F75780);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v82);
  v187 = &v160 - v83;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A20, &qword_1B4F75788);
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v84);
  v184 = &v160 - v85;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A28, &qword_1B4F75790);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v86);
  v181 = &v160 - v87;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A30, &qword_1B4F75798);
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v88);
  v178 = &v160 - v89;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A38, &qword_1B4F757A0);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v90);
  v175 = &v160 - v91;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A40, &qword_1B4F757A8);
  v173 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v92);
  v172 = &v160 - v93;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A48, &qword_1B4F757B0);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v94);
  v169 = &v160 - v95;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A50, &qword_1B4F757B8);
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v96);
  v166 = &v160 - v97;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A58, &qword_1B4F757C0);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v98);
  v163 = &v160 - v99;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A60, &qword_1B4F757C8);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v100);
  v102 = &v160 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A68, &qword_1B4F757D0);
  v160 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v104);
  v106 = &v160 - v105;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5A70, &qword_1B4F757D8);
  v107 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299, v108);
  v110 = &v160 - v109;
  v111 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4EA573C();
  v298 = v110;
  sub_1B4F68F54();
  v112 = (v107 + 8);
  switch(v111)
  {
    case 1:
      v300 = 1;
      sub_1B4EA6654();
      v137 = v298;
      v138 = v299;
      sub_1B4F68CB4();
      (*(v161 + 8))(v102, v162);
      return (*v112)(v137, v138);
    case 2:
      v300 = 2;
      sub_1B4EA6600();
      v133 = v163;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v164 + 8))(v133, v165);
      return (*v112)(v113, v114);
    case 3:
      v300 = 3;
      sub_1B4EA65AC();
      v135 = v166;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v167 + 8))(v135, v168);
      return (*v112)(v113, v114);
    case 4:
      v300 = 4;
      sub_1B4EA6558();
      v127 = v169;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v170 + 8))(v127, v171);
      return (*v112)(v113, v114);
    case 5:
      v300 = 5;
      sub_1B4EA6504();
      v143 = v172;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v173 + 8))(v143, v174);
      return (*v112)(v113, v114);
    case 6:
      v300 = 6;
      sub_1B4EA64B0();
      v146 = v175;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v176 + 8))(v146, v177);
      return (*v112)(v113, v114);
    case 7:
      v300 = 7;
      sub_1B4EA645C();
      v136 = v178;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v179 + 8))(v136, v180);
      return (*v112)(v113, v114);
    case 8:
      v300 = 8;
      sub_1B4EA6408();
      v149 = v181;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v182 + 8))(v149, v183);
      return (*v112)(v113, v114);
    case 9:
      v300 = 9;
      sub_1B4EA63B4();
      v130 = v184;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v185 + 8))(v130, v186);
      return (*v112)(v113, v114);
    case 10:
      v300 = 10;
      sub_1B4EA6360();
      v148 = v187;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v188 + 8))(v148, v189);
      return (*v112)(v113, v114);
    case 11:
      v300 = 11;
      sub_1B4EA630C();
      v126 = v190;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v191 + 8))(v126, v192);
      return (*v112)(v113, v114);
    case 12:
      v300 = 12;
      sub_1B4EA62B8();
      v129 = v193;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v194 + 8))(v129, v195);
      return (*v112)(v113, v114);
    case 13:
      v300 = 13;
      sub_1B4EA6264();
      v145 = v196;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v197 + 8))(v145, v198);
      return (*v112)(v113, v114);
    case 14:
      v300 = 14;
      sub_1B4EA6210();
      v124 = v199;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v200 + 8))(v124, v201);
      return (*v112)(v113, v114);
    case 15:
      v300 = 15;
      sub_1B4EA61BC();
      v134 = v202;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v203 + 8))(v134, v204);
      return (*v112)(v113, v114);
    case 16:
      v300 = 16;
      sub_1B4EA6168();
      v123 = v205;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v206 + 8))(v123, v207);
      return (*v112)(v113, v114);
    case 17:
      v300 = 17;
      sub_1B4EA6114();
      v141 = v208;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v209 + 8))(v141, v210);
      return (*v112)(v113, v114);
    case 18:
      v300 = 18;
      sub_1B4EA60C0();
      v147 = v211;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v212 + 8))(v147, v213);
      return (*v112)(v113, v114);
    case 19:
      v300 = 19;
      sub_1B4EA606C();
      v154 = v214;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v215 + 8))(v154, v216);
      return (*v112)(v113, v114);
    case 20:
      v300 = 20;
      sub_1B4EA6018();
      v142 = v217;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v218 + 8))(v142, v219);
      return (*v112)(v113, v114);
    case 21:
      v300 = 21;
      sub_1B4EA5FC4();
      v144 = v220;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v221 + 8))(v144, v222);
      return (*v112)(v113, v114);
    case 22:
      v300 = 22;
      sub_1B4EA5F70();
      v152 = v223;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v224 + 8))(v152, v225);
      return (*v112)(v113, v114);
    case 23:
      v300 = 23;
      sub_1B4EA5F1C();
      v155 = v226;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v227 + 8))(v155, v228);
      return (*v112)(v113, v114);
    case 24:
      v300 = 24;
      sub_1B4EA5EC8();
      v132 = v229;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v230 + 8))(v132, v231);
      return (*v112)(v113, v114);
    case 25:
      v300 = 25;
      sub_1B4EA5E74();
      v131 = v232;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v233 + 8))(v131, v234);
      return (*v112)(v113, v114);
    case 26:
      v300 = 26;
      sub_1B4EA5E20();
      v159 = v235;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v236 + 8))(v159, v237);
      return (*v112)(v113, v114);
    case 27:
      v300 = 27;
      sub_1B4EA5DCC();
      v121 = v238;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v239 + 8))(v121, v240);
      return (*v112)(v113, v114);
    case 28:
      v300 = 28;
      sub_1B4EA5D78();
      v156 = v241;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v242 + 8))(v156, v243);
      return (*v112)(v113, v114);
    case 29:
      v300 = 29;
      sub_1B4EA5D24();
      v157 = v244;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v245 + 8))(v157, v246);
      return (*v112)(v113, v114);
    case 30:
      v300 = 30;
      sub_1B4EA5CD0();
      v150 = v247;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v248 + 8))(v150, v249);
      return (*v112)(v113, v114);
    case 31:
      v300 = 31;
      sub_1B4EA5C7C();
      v140 = v250;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v251 + 8))(v140, v252);
      return (*v112)(v113, v114);
    case 32:
      v300 = 32;
      sub_1B4EA5C28();
      v151 = v253;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v254 + 8))(v151, v255);
      return (*v112)(v113, v114);
    case 33:
      v300 = 33;
      sub_1B4EA5BD4();
      v125 = v256;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v257 + 8))(v125, v258);
      return (*v112)(v113, v114);
    case 34:
      v300 = 34;
      sub_1B4EA5B80();
      v122 = v259;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v260 + 8))(v122, v261);
      return (*v112)(v113, v114);
    case 35:
      v300 = 35;
      sub_1B4EA5B2C();
      v119 = v262;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v263 + 8))(v119, v264);
      return (*v112)(v113, v114);
    case 36:
      v300 = 36;
      sub_1B4EA5AD8();
      v120 = v265;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v266 + 8))(v120, v267);
      return (*v112)(v113, v114);
    case 37:
      v300 = 37;
      sub_1B4EA5A84();
      v118 = v268;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v269 + 8))(v118, v270);
      return (*v112)(v113, v114);
    case 38:
      v300 = 38;
      sub_1B4EA5A30();
      v158 = v271;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v272 + 8))(v158, v273);
      return (*v112)(v113, v114);
    case 39:
      v300 = 39;
      sub_1B4EA59DC();
      v153 = v274;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v275 + 8))(v153, v276);
      return (*v112)(v113, v114);
    case 40:
      v300 = 40;
      sub_1B4EA5988();
      v128 = v277;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v278 + 8))(v128, v279);
      return (*v112)(v113, v114);
    case 41:
      v300 = 41;
      sub_1B4EA5934();
      v115 = v280;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v281;
      v116 = v282;
      goto LABEL_49;
    case 42:
      v300 = 42;
      sub_1B4EA58E0();
      v115 = v283;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v284;
      v116 = v285;
      goto LABEL_49;
    case 43:
      v300 = 43;
      sub_1B4EA588C();
      v115 = v286;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v287;
      v116 = v288;
      goto LABEL_49;
    case 44:
      v300 = 44;
      sub_1B4EA5838();
      v115 = v289;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v290;
      v116 = v291;
      goto LABEL_49;
    case 45:
      v300 = 45;
      sub_1B4EA57E4();
      v115 = v292;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v293;
      v116 = v294;
      goto LABEL_49;
    case 46:
      v300 = 46;
      sub_1B4EA5790();
      v115 = v295;
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      v117 = v296;
      v116 = v297;
LABEL_49:
      (*(v117 + 8))(v115, v116);
      break;
    default:
      v300 = 0;
      sub_1B4EA66A8();
      v113 = v298;
      v114 = v299;
      sub_1B4F68CB4();
      (*(v160 + 8))(v106, v103);
      break;
  }

  return (*v112)(v113, v114);
}

unint64_t sub_1B4EA573C()
{
  result = qword_1EB8F5A78;
  if (!qword_1EB8F5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A78);
  }

  return result;
}

unint64_t sub_1B4EA5790()
{
  result = qword_1EB8F5A80;
  if (!qword_1EB8F5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A80);
  }

  return result;
}

unint64_t sub_1B4EA57E4()
{
  result = qword_1EB8F5A88;
  if (!qword_1EB8F5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A88);
  }

  return result;
}

unint64_t sub_1B4EA5838()
{
  result = qword_1EB8F5A90;
  if (!qword_1EB8F5A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A90);
  }

  return result;
}

unint64_t sub_1B4EA588C()
{
  result = qword_1EB8F5A98;
  if (!qword_1EB8F5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5A98);
  }

  return result;
}

unint64_t sub_1B4EA58E0()
{
  result = qword_1EB8F5AA0;
  if (!qword_1EB8F5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AA0);
  }

  return result;
}

unint64_t sub_1B4EA5934()
{
  result = qword_1EB8F5AA8;
  if (!qword_1EB8F5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AA8);
  }

  return result;
}

unint64_t sub_1B4EA5988()
{
  result = qword_1EB8F5AB0;
  if (!qword_1EB8F5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AB0);
  }

  return result;
}

unint64_t sub_1B4EA59DC()
{
  result = qword_1EB8F5AB8;
  if (!qword_1EB8F5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AB8);
  }

  return result;
}

unint64_t sub_1B4EA5A30()
{
  result = qword_1EB8F5AC0;
  if (!qword_1EB8F5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AC0);
  }

  return result;
}

unint64_t sub_1B4EA5A84()
{
  result = qword_1EB8F5AC8;
  if (!qword_1EB8F5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AC8);
  }

  return result;
}

unint64_t sub_1B4EA5AD8()
{
  result = qword_1EB8F5AD0;
  if (!qword_1EB8F5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AD0);
  }

  return result;
}

unint64_t sub_1B4EA5B2C()
{
  result = qword_1EB8F5AD8;
  if (!qword_1EB8F5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AD8);
  }

  return result;
}

unint64_t sub_1B4EA5B80()
{
  result = qword_1EB8F5AE0;
  if (!qword_1EB8F5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AE0);
  }

  return result;
}

unint64_t sub_1B4EA5BD4()
{
  result = qword_1EB8F5AE8;
  if (!qword_1EB8F5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AE8);
  }

  return result;
}

unint64_t sub_1B4EA5C28()
{
  result = qword_1EB8F5AF0;
  if (!qword_1EB8F5AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AF0);
  }

  return result;
}

unint64_t sub_1B4EA5C7C()
{
  result = qword_1EB8F5AF8;
  if (!qword_1EB8F5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5AF8);
  }

  return result;
}

unint64_t sub_1B4EA5CD0()
{
  result = qword_1EB8F5B00;
  if (!qword_1EB8F5B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B00);
  }

  return result;
}

unint64_t sub_1B4EA5D24()
{
  result = qword_1EB8F5B08;
  if (!qword_1EB8F5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B08);
  }

  return result;
}

unint64_t sub_1B4EA5D78()
{
  result = qword_1EB8F5B10;
  if (!qword_1EB8F5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B10);
  }

  return result;
}

unint64_t sub_1B4EA5DCC()
{
  result = qword_1EB8F5B18;
  if (!qword_1EB8F5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B18);
  }

  return result;
}

unint64_t sub_1B4EA5E20()
{
  result = qword_1EB8F5B20;
  if (!qword_1EB8F5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B20);
  }

  return result;
}

unint64_t sub_1B4EA5E74()
{
  result = qword_1EB8F5B28;
  if (!qword_1EB8F5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B28);
  }

  return result;
}

unint64_t sub_1B4EA5EC8()
{
  result = qword_1EB8F5B30;
  if (!qword_1EB8F5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B30);
  }

  return result;
}

unint64_t sub_1B4EA5F1C()
{
  result = qword_1EB8F5B38;
  if (!qword_1EB8F5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B38);
  }

  return result;
}

unint64_t sub_1B4EA5F70()
{
  result = qword_1EB8F5B40;
  if (!qword_1EB8F5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B40);
  }

  return result;
}

unint64_t sub_1B4EA5FC4()
{
  result = qword_1EB8F5B48;
  if (!qword_1EB8F5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B48);
  }

  return result;
}

unint64_t sub_1B4EA6018()
{
  result = qword_1EB8F5B50;
  if (!qword_1EB8F5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B50);
  }

  return result;
}

unint64_t sub_1B4EA606C()
{
  result = qword_1EB8F5B58;
  if (!qword_1EB8F5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B58);
  }

  return result;
}

unint64_t sub_1B4EA60C0()
{
  result = qword_1EB8F5B60;
  if (!qword_1EB8F5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B60);
  }

  return result;
}

unint64_t sub_1B4EA6114()
{
  result = qword_1EB8F5B68;
  if (!qword_1EB8F5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B68);
  }

  return result;
}

unint64_t sub_1B4EA6168()
{
  result = qword_1EB8F5B70;
  if (!qword_1EB8F5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B70);
  }

  return result;
}

unint64_t sub_1B4EA61BC()
{
  result = qword_1EB8F5B78;
  if (!qword_1EB8F5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B78);
  }

  return result;
}

unint64_t sub_1B4EA6210()
{
  result = qword_1EB8F5B80;
  if (!qword_1EB8F5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B80);
  }

  return result;
}

unint64_t sub_1B4EA6264()
{
  result = qword_1EB8F5B88;
  if (!qword_1EB8F5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B88);
  }

  return result;
}

unint64_t sub_1B4EA62B8()
{
  result = qword_1EB8F5B90;
  if (!qword_1EB8F5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B90);
  }

  return result;
}

unint64_t sub_1B4EA630C()
{
  result = qword_1EB8F5B98;
  if (!qword_1EB8F5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5B98);
  }

  return result;
}

unint64_t sub_1B4EA6360()
{
  result = qword_1EB8F5BA0;
  if (!qword_1EB8F5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BA0);
  }

  return result;
}

unint64_t sub_1B4EA63B4()
{
  result = qword_1EB8F5BA8;
  if (!qword_1EB8F5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BA8);
  }

  return result;
}

unint64_t sub_1B4EA6408()
{
  result = qword_1EB8F5BB0;
  if (!qword_1EB8F5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BB0);
  }

  return result;
}

unint64_t sub_1B4EA645C()
{
  result = qword_1EB8F5BB8;
  if (!qword_1EB8F5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BB8);
  }

  return result;
}

unint64_t sub_1B4EA64B0()
{
  result = qword_1EB8F5BC0;
  if (!qword_1EB8F5BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BC0);
  }

  return result;
}

unint64_t sub_1B4EA6504()
{
  result = qword_1EB8F5BC8;
  if (!qword_1EB8F5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BC8);
  }

  return result;
}

unint64_t sub_1B4EA6558()
{
  result = qword_1EB8F5BD0;
  if (!qword_1EB8F5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BD0);
  }

  return result;
}

unint64_t sub_1B4EA65AC()
{
  result = qword_1EB8F5BD8;
  if (!qword_1EB8F5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BD8);
  }

  return result;
}

unint64_t sub_1B4EA6600()
{
  result = qword_1EB8F5BE0;
  if (!qword_1EB8F5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BE0);
  }

  return result;
}

unint64_t sub_1B4EA6654()
{
  result = qword_1EB8F5BE8;
  if (!qword_1EB8F5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BE8);
  }

  return result;
}

unint64_t sub_1B4EA66A8()
{
  result = qword_1EB8F5BF0;
  if (!qword_1EB8F5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5BF0);
  }

  return result;
}

uint64_t Feature.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v361 = a2;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5BF8, &qword_1B4F757E0);
  v356 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360, v3);
  v355 = &v217 - v4;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C00, &qword_1B4F757E8);
  v312 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313, v5);
  v354 = &v217 - v6;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C08, &qword_1B4F757F0);
  v310 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311, v7);
  v353 = &v217 - v8;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C10, &qword_1B4F757F8);
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309, v9);
  v352 = &v217 - v10;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C18, &qword_1B4F75800);
  v306 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307, v11);
  v351 = &v217 - v12;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C20, &qword_1B4F75808);
  v304 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305, v13);
  v350 = &v217 - v14;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C28, &qword_1B4F75810);
  v302 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303, v15);
  v349 = &v217 - v16;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C30, &qword_1B4F75818);
  v300 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301, v17);
  v348 = &v217 - v18;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C38, &qword_1B4F75820);
  v298 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299, v19);
  v347 = &v217 - v20;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C40, &qword_1B4F75828);
  v296 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297, v21);
  v346 = &v217 - v22;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C48, &qword_1B4F75830);
  v294 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295, v23);
  v345 = &v217 - v24;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C50, &qword_1B4F75838);
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293, v25);
  v344 = &v217 - v26;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C58, &qword_1B4F75840);
  v290 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291, v27);
  v343 = &v217 - v28;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C60, &qword_1B4F75848);
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289, v29);
  v342 = &v217 - v30;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C68, &qword_1B4F75850);
  v286 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287, v31);
  v341 = &v217 - v32;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C70, &qword_1B4F75858);
  v284 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285, v33);
  v340 = &v217 - v34;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C78, &qword_1B4F75860);
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283, v35);
  v339 = &v217 - v36;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C80, &qword_1B4F75868);
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281, v37);
  v338 = &v217 - v38;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C88, &qword_1B4F75870);
  v278 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279, v39);
  v337 = &v217 - v40;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C90, &qword_1B4F75878);
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277, v41);
  v336 = &v217 - v42;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5C98, &qword_1B4F75880);
  v274 = *(v275 - 8);
  MEMORY[0x1EEE9AC00](v275, v43);
  v335 = &v217 - v44;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CA0, &qword_1B4F75888);
  v272 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273, v45);
  v334 = &v217 - v46;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CA8, &qword_1B4F75890);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271, v47);
  v333 = &v217 - v48;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CB0, &qword_1B4F75898);
  v268 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269, v49);
  v332 = &v217 - v50;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CB8, &qword_1B4F758A0);
  v266 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267, v51);
  v331 = &v217 - v52;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CC0, &qword_1B4F758A8);
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265, v53);
  v330 = &v217 - v54;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CC8, &qword_1B4F758B0);
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263, v55);
  v329 = &v217 - v56;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CD0, &qword_1B4F758B8);
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261, v57);
  v328 = &v217 - v58;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CD8, &qword_1B4F758C0);
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259, v59);
  v327 = &v217 - v60;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CE0, &qword_1B4F758C8);
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v61);
  v326 = &v217 - v62;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CE8, &qword_1B4F758D0);
  v254 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255, v63);
  v325 = &v217 - v64;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CF0, &qword_1B4F758D8);
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253, v65);
  v324 = &v217 - v66;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5CF8, &qword_1B4F758E0);
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251, v67);
  v323 = &v217 - v68;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D00, &qword_1B4F758E8);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249, v69);
  v322 = &v217 - v70;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D08, &qword_1B4F758F0);
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247, v71);
  v321 = &v217 - v72;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D10, &qword_1B4F758F8);
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245, v73);
  v359 = &v217 - v74;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D18, &qword_1B4F75900);
  v243 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242, v75);
  v358 = &v217 - v76;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D20, &qword_1B4F75908);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241, v77);
  v357 = &v217 - v78;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D28, &qword_1B4F75910);
  v238 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239, v79);
  v320 = &v217 - v80;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D30, &qword_1B4F75918);
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v81);
  v319 = &v217 - v82;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D38, &qword_1B4F75920);
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235, v83);
  v318 = &v217 - v84;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D40, &qword_1B4F75928);
  v232 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233, v85);
  v317 = &v217 - v86;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D48, &qword_1B4F75930);
  v230 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v87);
  v316 = &v217 - v88;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D50, &qword_1B4F75938);
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229, v89);
  v315 = &v217 - v90;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D58, &qword_1B4F75940);
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227, v91);
  v314 = &v217 - v92;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D60, &qword_1B4F75948);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v93);
  v95 = &v217 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D68, &qword_1B4F75950);
  v223 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = &v217 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5D70, &unk_1B4F75958);
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v102);
  v104 = &v217 - v103;
  v105 = a1[3];
  v363 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v105);
  sub_1B4EA573C();
  v106 = v362;
  sub_1B4F68F44();
  if (v106)
  {
LABEL_9:
    v124 = v363;
    return __swift_destroy_boxed_opaque_existential_1Tm(v124);
  }

  v219 = v99;
  v218 = v96;
  v220 = v95;
  v107 = v357;
  v108 = v358;
  v109 = v359;
  v221 = 0;
  v111 = v360;
  v110 = v361;
  v362 = v101;
  v222 = v100;
  v112 = sub_1B4F68CA4();
  v113 = (2 * *(v112 + 16)) | 1;
  v364 = v112;
  v365 = v112 + 32;
  v366 = 0;
  v367 = v113;
  v114 = sub_1B4E2DC3C();
  v115 = v104;
  if (v366 != v367 >> 1)
  {
LABEL_6:
    v121 = sub_1B4F68A04();
    swift_allocError();
    v123 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0);
    *v123 = &type metadata for Feature;
    v119 = v222;
    sub_1B4F68C64();
    sub_1B4F689F4();
    (*(*(v121 - 8) + 104))(v123, *MEMORY[0x1E69E6AF8], v121);
    swift_willThrow();
LABEL_7:
    (*(v362 + 8))(v115, v119);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v116 = v114;
  v117 = v356;
  switch(v114)
  {
    case 0:
      v368 = 0;
      sub_1B4EA66A8();
      v118 = v219;
      v119 = v222;
      v120 = v221;
      sub_1B4F68C54();
      if (v120)
      {
        goto LABEL_7;
      }

      (*(v223 + 8))(v118, v218);
      (*(v362 + 8))(v115, v119);
      goto LABEL_102;
    case 1:
      v368 = 1;
      sub_1B4EA6654();
      v168 = v220;
      v127 = v222;
      v169 = v221;
      sub_1B4F68C54();
      if (v169)
      {
        goto LABEL_104;
      }

      (*(v224 + 8))(v168, v225);
      goto LABEL_101;
    case 2:
      v368 = 2;
      sub_1B4EA6600();
      v160 = v314;
      v127 = v222;
      v161 = v221;
      sub_1B4F68C54();
      if (v161)
      {
        goto LABEL_104;
      }

      (*(v226 + 8))(v160, v227);
      goto LABEL_101;
    case 3:
      v368 = 3;
      sub_1B4EA65AC();
      v164 = v315;
      v127 = v222;
      v165 = v221;
      sub_1B4F68C54();
      if (v165)
      {
        goto LABEL_104;
      }

      (*(v228 + 8))(v164, v229);
      goto LABEL_101;
    case 4:
      v368 = 4;
      sub_1B4EA6558();
      v148 = v316;
      v127 = v222;
      v149 = v221;
      sub_1B4F68C54();
      if (v149)
      {
        goto LABEL_104;
      }

      (*(v230 + 8))(v148, v231);
      goto LABEL_101;
    case 5:
      v368 = 5;
      sub_1B4EA6504();
      v178 = v317;
      v127 = v222;
      v179 = v221;
      sub_1B4F68C54();
      if (v179)
      {
        goto LABEL_104;
      }

      (*(v232 + 8))(v178, v233);
      goto LABEL_101;
    case 6:
      v368 = 6;
      sub_1B4EA64B0();
      v184 = v318;
      v127 = v222;
      v185 = v221;
      sub_1B4F68C54();
      if (v185)
      {
        goto LABEL_104;
      }

      (*(v234 + 8))(v184, v235);
      goto LABEL_101;
    case 7:
      v368 = 7;
      sub_1B4EA645C();
      v166 = v319;
      v127 = v222;
      v167 = v221;
      sub_1B4F68C54();
      if (v167)
      {
        goto LABEL_104;
      }

      (*(v236 + 8))(v166, v237);
      goto LABEL_101;
    case 8:
      v368 = 8;
      sub_1B4EA6408();
      v189 = v320;
      v127 = v222;
      v190 = v221;
      sub_1B4F68C54();
      if (v190)
      {
        goto LABEL_104;
      }

      (*(v238 + 8))(v189, v239);
      goto LABEL_101;
    case 9:
      v368 = 9;
      sub_1B4EA63B4();
      v154 = v107;
      v127 = v222;
      v155 = v221;
      sub_1B4F68C54();
      if (v155)
      {
        goto LABEL_104;
      }

      (*(v240 + 8))(v154, v241);
      goto LABEL_101;
    case 10:
      v368 = 10;
      sub_1B4EA6360();
      v127 = v222;
      v188 = v221;
      sub_1B4F68C54();
      if (v188)
      {
        goto LABEL_104;
      }

      (*(v243 + 8))(v108, v242);
      goto LABEL_101;
    case 11:
      v368 = 11;
      sub_1B4EA630C();
      v127 = v222;
      v147 = v221;
      sub_1B4F68C54();
      if (v147)
      {
        goto LABEL_104;
      }

      (*(v244 + 8))(v109, v245);
      goto LABEL_101;
    case 12:
      v368 = 12;
      sub_1B4EA62B8();
      v152 = v321;
      v127 = v222;
      v153 = v221;
      sub_1B4F68C54();
      if (v153)
      {
        goto LABEL_104;
      }

      (*(v246 + 8))(v152, v247);
      goto LABEL_101;
    case 13:
      v368 = 13;
      sub_1B4EA6264();
      v182 = v322;
      v127 = v222;
      v183 = v221;
      sub_1B4F68C54();
      if (v183)
      {
        goto LABEL_104;
      }

      (*(v248 + 8))(v182, v249);
      goto LABEL_101;
    case 14:
      v368 = 14;
      sub_1B4EA6210();
      v143 = v323;
      v127 = v222;
      v144 = v221;
      sub_1B4F68C54();
      if (v144)
      {
        goto LABEL_104;
      }

      (*(v250 + 8))(v143, v251);
      goto LABEL_101;
    case 15:
      v368 = 15;
      sub_1B4EA61BC();
      v162 = v324;
      v127 = v222;
      v163 = v221;
      sub_1B4F68C54();
      if (v163)
      {
        goto LABEL_104;
      }

      (*(v252 + 8))(v162, v253);
      goto LABEL_101;
    case 16:
      v368 = 16;
      sub_1B4EA6168();
      v139 = v325;
      v127 = v222;
      v140 = v221;
      sub_1B4F68C54();
      if (v140)
      {
        goto LABEL_104;
      }

      (*(v254 + 8))(v139, v255);
      goto LABEL_101;
    case 17:
      v368 = 17;
      sub_1B4EA6114();
      v172 = v326;
      v127 = v222;
      v173 = v221;
      sub_1B4F68C54();
      if (v173)
      {
        goto LABEL_104;
      }

      (*(v256 + 8))(v172, v257);
      goto LABEL_101;
    case 18:
      v368 = 18;
      sub_1B4EA60C0();
      v186 = v327;
      v127 = v222;
      v187 = v221;
      sub_1B4F68C54();
      if (v187)
      {
        goto LABEL_104;
      }

      (*(v258 + 8))(v186, v259);
      goto LABEL_101;
    case 19:
      v368 = 19;
      sub_1B4EA606C();
      v201 = v328;
      v127 = v222;
      v202 = v221;
      sub_1B4F68C54();
      if (v202)
      {
        goto LABEL_104;
      }

      (*(v260 + 8))(v201, v261);
      goto LABEL_101;
    case 20:
      v368 = 20;
      sub_1B4EA6018();
      v176 = v329;
      v127 = v222;
      v177 = v221;
      sub_1B4F68C54();
      if (v177)
      {
        goto LABEL_104;
      }

      (*(v262 + 8))(v176, v263);
      goto LABEL_101;
    case 21:
      v368 = 21;
      sub_1B4EA5FC4();
      v180 = v330;
      v127 = v222;
      v181 = v221;
      sub_1B4F68C54();
      if (v181)
      {
        goto LABEL_104;
      }

      (*(v264 + 8))(v180, v265);
      goto LABEL_101;
    case 22:
      v368 = 22;
      sub_1B4EA5F70();
      v197 = v331;
      v127 = v222;
      v198 = v221;
      sub_1B4F68C54();
      if (v198)
      {
        goto LABEL_104;
      }

      (*(v266 + 8))(v197, v267);
      goto LABEL_101;
    case 23:
      v368 = 23;
      sub_1B4EA5F1C();
      v205 = v332;
      v127 = v222;
      v206 = v221;
      sub_1B4F68C54();
      if (v206)
      {
        goto LABEL_104;
      }

      (*(v268 + 8))(v205, v269);
      goto LABEL_101;
    case 24:
      v368 = 24;
      sub_1B4EA5EC8();
      v158 = v333;
      v127 = v222;
      v159 = v221;
      sub_1B4F68C54();
      if (v159)
      {
        goto LABEL_104;
      }

      (*(v270 + 8))(v158, v271);
      goto LABEL_101;
    case 25:
      v368 = 25;
      sub_1B4EA5E74();
      v156 = v334;
      v127 = v222;
      v157 = v221;
      sub_1B4F68C54();
      if (v157)
      {
        goto LABEL_104;
      }

      (*(v272 + 8))(v156, v273);
      goto LABEL_101;
    case 26:
      v368 = 26;
      sub_1B4EA5E20();
      v213 = v335;
      v127 = v222;
      v214 = v221;
      sub_1B4F68C54();
      if (v214)
      {
        goto LABEL_104;
      }

      (*(v274 + 8))(v213, v275);
      goto LABEL_101;
    case 27:
      v368 = 27;
      sub_1B4EA5DCC();
      v135 = v336;
      v127 = v222;
      v136 = v221;
      sub_1B4F68C54();
      if (v136)
      {
        goto LABEL_104;
      }

      (*(v276 + 8))(v135, v277);
      goto LABEL_101;
    case 28:
      v368 = 28;
      sub_1B4EA5D78();
      v207 = v337;
      v127 = v222;
      v208 = v221;
      sub_1B4F68C54();
      if (v208)
      {
        goto LABEL_104;
      }

      (*(v278 + 8))(v207, v279);
      goto LABEL_101;
    case 29:
      v368 = 29;
      sub_1B4EA5D24();
      v209 = v338;
      v127 = v222;
      v210 = v221;
      sub_1B4F68C54();
      if (v210)
      {
        goto LABEL_104;
      }

      (*(v280 + 8))(v209, v281);
      goto LABEL_101;
    case 30:
      v368 = 30;
      sub_1B4EA5CD0();
      v191 = v339;
      v127 = v222;
      v192 = v221;
      sub_1B4F68C54();
      if (v192)
      {
        goto LABEL_104;
      }

      (*(v282 + 8))(v191, v283);
      goto LABEL_101;
    case 31:
      v368 = 31;
      sub_1B4EA5C7C();
      v170 = v340;
      v127 = v222;
      v171 = v221;
      sub_1B4F68C54();
      if (v171)
      {
        goto LABEL_104;
      }

      (*(v284 + 8))(v170, v285);
      goto LABEL_101;
    case 32:
      v368 = 32;
      sub_1B4EA5C28();
      v193 = v341;
      v127 = v222;
      v194 = v221;
      sub_1B4F68C54();
      if (v194)
      {
        goto LABEL_104;
      }

      (*(v286 + 8))(v193, v287);
      goto LABEL_101;
    case 33:
      v368 = 33;
      sub_1B4EA5BD4();
      v145 = v342;
      v127 = v222;
      v146 = v221;
      sub_1B4F68C54();
      if (v146)
      {
        goto LABEL_104;
      }

      (*(v288 + 8))(v145, v289);
      goto LABEL_101;
    case 34:
      v368 = 34;
      sub_1B4EA5B80();
      v137 = v343;
      v127 = v222;
      v138 = v221;
      sub_1B4F68C54();
      if (v138)
      {
        goto LABEL_104;
      }

      (*(v290 + 8))(v137, v291);
      goto LABEL_101;
    case 35:
      v368 = 35;
      sub_1B4EA5B2C();
      v131 = v344;
      v127 = v222;
      v132 = v221;
      sub_1B4F68C54();
      if (v132)
      {
        goto LABEL_104;
      }

      (*(v292 + 8))(v131, v293);
      goto LABEL_101;
    case 36:
      v368 = 36;
      sub_1B4EA5AD8();
      v133 = v345;
      v127 = v222;
      v134 = v221;
      sub_1B4F68C54();
      if (v134)
      {
        goto LABEL_104;
      }

      (*(v294 + 8))(v133, v295);
      goto LABEL_101;
    case 37:
      v368 = 37;
      sub_1B4EA5A84();
      v129 = v346;
      v127 = v222;
      v130 = v221;
      sub_1B4F68C54();
      if (v130)
      {
        goto LABEL_104;
      }

      (*(v296 + 8))(v129, v297);
      goto LABEL_101;
    case 38:
      v368 = 38;
      sub_1B4EA5A30();
      v211 = v347;
      v127 = v222;
      v212 = v221;
      sub_1B4F68C54();
      if (v212)
      {
        goto LABEL_104;
      }

      (*(v298 + 8))(v211, v299);
      goto LABEL_101;
    case 39:
      v368 = 39;
      sub_1B4EA59DC();
      v199 = v348;
      v127 = v222;
      v200 = v221;
      sub_1B4F68C54();
      if (v200)
      {
        goto LABEL_104;
      }

      (*(v300 + 8))(v199, v301);
      goto LABEL_101;
    case 40:
      v368 = 40;
      sub_1B4EA5988();
      v150 = v349;
      v127 = v222;
      v151 = v221;
      sub_1B4F68C54();
      if (v151)
      {
        goto LABEL_104;
      }

      (*(v302 + 8))(v150, v303);
      goto LABEL_101;
    case 41:
      v368 = 41;
      sub_1B4EA5934();
      v174 = v350;
      v127 = v222;
      v175 = v221;
      sub_1B4F68C54();
      if (v175)
      {
        goto LABEL_104;
      }

      (*(v304 + 8))(v174, v305);
      goto LABEL_101;
    case 42:
      v368 = 42;
      sub_1B4EA58E0();
      v203 = v351;
      v127 = v222;
      v204 = v221;
      sub_1B4F68C54();
      if (v204)
      {
        goto LABEL_104;
      }

      (*(v306 + 8))(v203, v307);
      goto LABEL_101;
    case 43:
      v368 = 43;
      sub_1B4EA588C();
      v126 = v352;
      v127 = v222;
      v128 = v221;
      sub_1B4F68C54();
      if (v128)
      {
        goto LABEL_104;
      }

      (*(v308 + 8))(v126, v309);
      goto LABEL_101;
    case 44:
      v368 = 44;
      sub_1B4EA5838();
      v141 = v353;
      v127 = v222;
      v142 = v221;
      sub_1B4F68C54();
      if (v142)
      {
        goto LABEL_104;
      }

      (*(v310 + 8))(v141, v311);
      goto LABEL_101;
    case 45:
      v368 = 45;
      sub_1B4EA57E4();
      v195 = v354;
      v127 = v222;
      v196 = v221;
      sub_1B4F68C54();
      if (v196)
      {
        goto LABEL_104;
      }

      (*(v312 + 8))(v195, v313);
      goto LABEL_101;
    case 46:
      v368 = 46;
      sub_1B4EA5790();
      v215 = v355;
      v127 = v222;
      v216 = v221;
      sub_1B4F68C54();
      if (v216)
      {
LABEL_104:
        (*(v362 + 8))(v115, v127);
        goto LABEL_8;
      }

      (*(v117 + 8))(v215, v111);
LABEL_101:
      (*(v362 + 8))(v115, v127);
LABEL_102:
      swift_unknownObjectRelease();
      v124 = v363;
      *v110 = v116;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v124);
}

uint64_t Feature.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4EA9718()
{
  result = qword_1EDB71BA0;
  if (!qword_1EDB71BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB71BA0);
  }

  return result;
}

uint64_t sub_1B4EA977C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 46;
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

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B4EA980C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4EA9BC0()
{
  result = qword_1EB8F5D78;
  if (!qword_1EB8F5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5D78);
  }

  return result;
}

unint64_t sub_1B4EA9C18()
{
  result = qword_1EB8F5D80;
  if (!qword_1EB8F5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5D80);
  }

  return result;
}

unint64_t sub_1B4EA9C70()
{
  result = qword_1EB8F5D88;
  if (!qword_1EB8F5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5D88);
  }

  return result;
}

unint64_t sub_1B4EA9CC8()
{
  result = qword_1EB8F5D90;
  if (!qword_1EB8F5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5D90);
  }

  return result;
}

unint64_t sub_1B4EA9D20()
{
  result = qword_1EB8F5D98;
  if (!qword_1EB8F5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5D98);
  }

  return result;
}

unint64_t sub_1B4EA9D78()
{
  result = qword_1EB8F5DA0;
  if (!qword_1EB8F5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DA0);
  }

  return result;
}

unint64_t sub_1B4EA9DD0()
{
  result = qword_1EB8F5DA8;
  if (!qword_1EB8F5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DA8);
  }

  return result;
}

unint64_t sub_1B4EA9E28()
{
  result = qword_1EB8F5DB0;
  if (!qword_1EB8F5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DB0);
  }

  return result;
}

unint64_t sub_1B4EA9E80()
{
  result = qword_1EB8F5DB8;
  if (!qword_1EB8F5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DB8);
  }

  return result;
}

unint64_t sub_1B4EA9ED8()
{
  result = qword_1EB8F5DC0;
  if (!qword_1EB8F5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DC0);
  }

  return result;
}

unint64_t sub_1B4EA9F30()
{
  result = qword_1EB8F5DC8;
  if (!qword_1EB8F5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DC8);
  }

  return result;
}

unint64_t sub_1B4EA9F88()
{
  result = qword_1EB8F5DD0;
  if (!qword_1EB8F5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DD0);
  }

  return result;
}

unint64_t sub_1B4EA9FE0()
{
  result = qword_1EB8F5DD8;
  if (!qword_1EB8F5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DD8);
  }

  return result;
}

unint64_t sub_1B4EAA038()
{
  result = qword_1EB8F5DE0;
  if (!qword_1EB8F5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DE0);
  }

  return result;
}

unint64_t sub_1B4EAA090()
{
  result = qword_1EB8F5DE8;
  if (!qword_1EB8F5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DE8);
  }

  return result;
}

unint64_t sub_1B4EAA0E8()
{
  result = qword_1EB8F5DF0;
  if (!qword_1EB8F5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DF0);
  }

  return result;
}

unint64_t sub_1B4EAA140()
{
  result = qword_1EB8F5DF8;
  if (!qword_1EB8F5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5DF8);
  }

  return result;
}

unint64_t sub_1B4EAA198()
{
  result = qword_1EB8F5E00;
  if (!qword_1EB8F5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E00);
  }

  return result;
}

unint64_t sub_1B4EAA1F0()
{
  result = qword_1EB8F5E08;
  if (!qword_1EB8F5E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E08);
  }

  return result;
}

unint64_t sub_1B4EAA248()
{
  result = qword_1EB8F5E10;
  if (!qword_1EB8F5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E10);
  }

  return result;
}

unint64_t sub_1B4EAA2A0()
{
  result = qword_1EB8F5E18;
  if (!qword_1EB8F5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E18);
  }

  return result;
}

unint64_t sub_1B4EAA2F8()
{
  result = qword_1EB8F5E20;
  if (!qword_1EB8F5E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E20);
  }

  return result;
}

unint64_t sub_1B4EAA350()
{
  result = qword_1EB8F5E28;
  if (!qword_1EB8F5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E28);
  }

  return result;
}

unint64_t sub_1B4EAA3A8()
{
  result = qword_1EB8F5E30;
  if (!qword_1EB8F5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E30);
  }

  return result;
}

unint64_t sub_1B4EAA400()
{
  result = qword_1EB8F5E38;
  if (!qword_1EB8F5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E38);
  }

  return result;
}

unint64_t sub_1B4EAA458()
{
  result = qword_1EB8F5E40;
  if (!qword_1EB8F5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E40);
  }

  return result;
}

unint64_t sub_1B4EAA4B0()
{
  result = qword_1EB8F5E48;
  if (!qword_1EB8F5E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E48);
  }

  return result;
}

unint64_t sub_1B4EAA508()
{
  result = qword_1EB8F5E50;
  if (!qword_1EB8F5E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E50);
  }

  return result;
}

unint64_t sub_1B4EAA560()
{
  result = qword_1EB8F5E58;
  if (!qword_1EB8F5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E58);
  }

  return result;
}

unint64_t sub_1B4EAA5B8()
{
  result = qword_1EB8F5E60;
  if (!qword_1EB8F5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E60);
  }

  return result;
}

unint64_t sub_1B4EAA610()
{
  result = qword_1EB8F5E68;
  if (!qword_1EB8F5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E68);
  }

  return result;
}

unint64_t sub_1B4EAA668()
{
  result = qword_1EB8F5E70;
  if (!qword_1EB8F5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E70);
  }

  return result;
}

unint64_t sub_1B4EAA6C0()
{
  result = qword_1EB8F5E78;
  if (!qword_1EB8F5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E78);
  }

  return result;
}

unint64_t sub_1B4EAA718()
{
  result = qword_1EB8F5E80;
  if (!qword_1EB8F5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E80);
  }

  return result;
}

unint64_t sub_1B4EAA770()
{
  result = qword_1EB8F5E88;
  if (!qword_1EB8F5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E88);
  }

  return result;
}

unint64_t sub_1B4EAA7C8()
{
  result = qword_1EB8F5E90;
  if (!qword_1EB8F5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E90);
  }

  return result;
}

unint64_t sub_1B4EAA820()
{
  result = qword_1EB8F5E98;
  if (!qword_1EB8F5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5E98);
  }

  return result;
}

unint64_t sub_1B4EAA878()
{
  result = qword_1EB8F5EA0;
  if (!qword_1EB8F5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EA0);
  }

  return result;
}

unint64_t sub_1B4EAA8D0()
{
  result = qword_1EB8F5EA8;
  if (!qword_1EB8F5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EA8);
  }

  return result;
}

unint64_t sub_1B4EAA928()
{
  result = qword_1EB8F5EB0;
  if (!qword_1EB8F5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EB0);
  }

  return result;
}

unint64_t sub_1B4EAA980()
{
  result = qword_1EB8F5EB8;
  if (!qword_1EB8F5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EB8);
  }

  return result;
}

unint64_t sub_1B4EAA9D8()
{
  result = qword_1EB8F5EC0;
  if (!qword_1EB8F5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EC0);
  }

  return result;
}

unint64_t sub_1B4EAAA30()
{
  result = qword_1EB8F5EC8;
  if (!qword_1EB8F5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EC8);
  }

  return result;
}

unint64_t sub_1B4EAAA88()
{
  result = qword_1EB8F5ED0;
  if (!qword_1EB8F5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5ED0);
  }

  return result;
}

unint64_t sub_1B4EAAAE0()
{
  result = qword_1EB8F5ED8;
  if (!qword_1EB8F5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5ED8);
  }

  return result;
}

unint64_t sub_1B4EAAB38()
{
  result = qword_1EB8F5EE0;
  if (!qword_1EB8F5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EE0);
  }

  return result;
}

unint64_t sub_1B4EAAB90()
{
  result = qword_1EB8F5EE8;
  if (!qword_1EB8F5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EE8);
  }

  return result;
}

unint64_t sub_1B4EAABE8()
{
  result = qword_1EB8F5EF0;
  if (!qword_1EB8F5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EF0);
  }

  return result;
}

unint64_t sub_1B4EAAC40()
{
  result = qword_1EB8F5EF8;
  if (!qword_1EB8F5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5EF8);
  }

  return result;
}

unint64_t sub_1B4EAAC98()
{
  result = qword_1EB8F5F00;
  if (!qword_1EB8F5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F00);
  }

  return result;
}

unint64_t sub_1B4EAACF0()
{
  result = qword_1EB8F5F08;
  if (!qword_1EB8F5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F08);
  }

  return result;
}

unint64_t sub_1B4EAAD48()
{
  result = qword_1EB8F5F10;
  if (!qword_1EB8F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F10);
  }

  return result;
}

unint64_t sub_1B4EAADA0()
{
  result = qword_1EB8F5F18;
  if (!qword_1EB8F5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F18);
  }

  return result;
}

unint64_t sub_1B4EAADF8()
{
  result = qword_1EB8F5F20;
  if (!qword_1EB8F5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F20);
  }

  return result;
}

unint64_t sub_1B4EAAE50()
{
  result = qword_1EB8F5F28;
  if (!qword_1EB8F5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F28);
  }

  return result;
}

unint64_t sub_1B4EAAEA8()
{
  result = qword_1EB8F5F30;
  if (!qword_1EB8F5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F30);
  }

  return result;
}

unint64_t sub_1B4EAAF00()
{
  result = qword_1EB8F5F38;
  if (!qword_1EB8F5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F38);
  }

  return result;
}

unint64_t sub_1B4EAAF58()
{
  result = qword_1EB8F5F40;
  if (!qword_1EB8F5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F40);
  }

  return result;
}

unint64_t sub_1B4EAAFB0()
{
  result = qword_1EB8F5F48;
  if (!qword_1EB8F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F48);
  }

  return result;
}

unint64_t sub_1B4EAB008()
{
  result = qword_1EB8F5F50;
  if (!qword_1EB8F5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F50);
  }

  return result;
}

unint64_t sub_1B4EAB060()
{
  result = qword_1EB8F5F58;
  if (!qword_1EB8F5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F58);
  }

  return result;
}

unint64_t sub_1B4EAB0B8()
{
  result = qword_1EB8F5F60;
  if (!qword_1EB8F5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F60);
  }

  return result;
}

unint64_t sub_1B4EAB110()
{
  result = qword_1EB8F5F68;
  if (!qword_1EB8F5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F68);
  }

  return result;
}

unint64_t sub_1B4EAB168()
{
  result = qword_1EB8F5F70;
  if (!qword_1EB8F5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F70);
  }

  return result;
}

unint64_t sub_1B4EAB1C0()
{
  result = qword_1EB8F5F78;
  if (!qword_1EB8F5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F78);
  }

  return result;
}

unint64_t sub_1B4EAB218()
{
  result = qword_1EB8F5F80;
  if (!qword_1EB8F5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F80);
  }

  return result;
}

unint64_t sub_1B4EAB270()
{
  result = qword_1EB8F5F88;
  if (!qword_1EB8F5F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F88);
  }

  return result;
}

unint64_t sub_1B4EAB2C8()
{
  result = qword_1EB8F5F90;
  if (!qword_1EB8F5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F90);
  }

  return result;
}

unint64_t sub_1B4EAB320()
{
  result = qword_1EB8F5F98;
  if (!qword_1EB8F5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5F98);
  }

  return result;
}

unint64_t sub_1B4EAB378()
{
  result = qword_1EB8F5FA0;
  if (!qword_1EB8F5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FA0);
  }

  return result;
}

unint64_t sub_1B4EAB3D0()
{
  result = qword_1EB8F5FA8;
  if (!qword_1EB8F5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FA8);
  }

  return result;
}

unint64_t sub_1B4EAB428()
{
  result = qword_1EB8F5FB0;
  if (!qword_1EB8F5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FB0);
  }

  return result;
}

unint64_t sub_1B4EAB480()
{
  result = qword_1EB8F5FB8;
  if (!qword_1EB8F5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FB8);
  }

  return result;
}

unint64_t sub_1B4EAB4D8()
{
  result = qword_1EB8F5FC0;
  if (!qword_1EB8F5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FC0);
  }

  return result;
}

unint64_t sub_1B4EAB530()
{
  result = qword_1EB8F5FC8;
  if (!qword_1EB8F5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FC8);
  }

  return result;
}

unint64_t sub_1B4EAB588()
{
  result = qword_1EB8F5FD0;
  if (!qword_1EB8F5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FD0);
  }

  return result;
}

unint64_t sub_1B4EAB5E0()
{
  result = qword_1EB8F5FD8;
  if (!qword_1EB8F5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FD8);
  }

  return result;
}

unint64_t sub_1B4EAB638()
{
  result = qword_1EB8F5FE0;
  if (!qword_1EB8F5FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FE0);
  }

  return result;
}

unint64_t sub_1B4EAB690()
{
  result = qword_1EB8F5FE8;
  if (!qword_1EB8F5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FE8);
  }

  return result;
}

unint64_t sub_1B4EAB6E8()
{
  result = qword_1EB8F5FF0;
  if (!qword_1EB8F5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FF0);
  }

  return result;
}

unint64_t sub_1B4EAB740()
{
  result = qword_1EB8F5FF8;
  if (!qword_1EB8F5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5FF8);
  }

  return result;
}

unint64_t sub_1B4EAB798()
{
  result = qword_1EB8F6000;
  if (!qword_1EB8F6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6000);
  }

  return result;
}

unint64_t sub_1B4EAB7F0()
{
  result = qword_1EB8F6008;
  if (!qword_1EB8F6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6008);
  }

  return result;
}

unint64_t sub_1B4EAB848()
{
  result = qword_1EB8F6010;
  if (!qword_1EB8F6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6010);
  }

  return result;
}

unint64_t sub_1B4EAB8A0()
{
  result = qword_1EB8F6018;
  if (!qword_1EB8F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6018);
  }

  return result;
}

unint64_t sub_1B4EAB8F8()
{
  result = qword_1EB8F6020;
  if (!qword_1EB8F6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6020);
  }

  return result;
}

unint64_t sub_1B4EAB950()
{
  result = qword_1EB8F6028;
  if (!qword_1EB8F6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6028);
  }

  return result;
}

unint64_t sub_1B4EAB9A8()
{
  result = qword_1EB8F6030;
  if (!qword_1EB8F6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6030);
  }

  return result;
}

unint64_t sub_1B4EABA00()
{
  result = qword_1EB8F6038;
  if (!qword_1EB8F6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6038);
  }

  return result;
}

unint64_t sub_1B4EABA58()
{
  result = qword_1EB8F6040;
  if (!qword_1EB8F6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6040);
  }

  return result;
}

unint64_t sub_1B4EABAB0()
{
  result = qword_1EB8F6048;
  if (!qword_1EB8F6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6048);
  }

  return result;
}

unint64_t sub_1B4EABB08()
{
  result = qword_1EB8F6050;
  if (!qword_1EB8F6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6050);
  }

  return result;
}

unint64_t sub_1B4EABB60()
{
  result = qword_1EB8F6058;
  if (!qword_1EB8F6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6058);
  }

  return result;
}

unint64_t sub_1B4EABBB8()
{
  result = qword_1EB8F6060;
  if (!qword_1EB8F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6060);
  }

  return result;
}

unint64_t sub_1B4EABC10()
{
  result = qword_1EB8F6068;
  if (!qword_1EB8F6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6068);
  }

  return result;
}

unint64_t sub_1B4EABC68()
{
  result = qword_1EB8F6070;
  if (!qword_1EB8F6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6070);
  }

  return result;
}

unint64_t sub_1B4EABCC0()
{
  result = qword_1EB8F6078;
  if (!qword_1EB8F6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6078);
  }

  return result;
}

uint64_t sub_1B4EABD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001B4F824B0 == a2;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F824D0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F82500 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B4F82520 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001B4F82540 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F82570 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4F825A0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F825C0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4F825E0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B4F82600 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4F82620 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F82640 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4F82660 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001B4F82680 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F826B0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B4F826D0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F82700 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4F82730 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4F82750 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B4F82770 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B4F82790 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4F827B0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4F827D0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4F827F0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F82810 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7953726576726573 && a2 == 0xED0000676E69636ELL || (sub_1B4F68D54() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F82840 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001B4F82860 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4F82890 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001B4F828B0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B4F828E0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4F82900 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 1936746868 && a2 == 0xE400000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6573705573706974 && a2 == 0xEA00000000006C6CLL || (sub_1B4F68D54() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4F82920 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4F82940 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F82960 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F82980 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x724265746F6D6572 && a2 == 0xEE00676E6973776FLL || (sub_1B4F68D54() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B4F829A0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F829C0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4F829E0 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4F82A00 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B4F82A30 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4F82A50 == a2 || (sub_1B4F68D54() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x5374756F6B726F77 && a2 == 0xEF73676E69747465 || (sub_1B4F68D54() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4F82A70 == a2)
  {

    return 46;
  }

  else
  {
    v6 = sub_1B4F68D54();

    if (v6)
    {
      return 46;
    }

    else
    {
      return 47;
    }
  }
}

uint64_t sub_1B4EACB54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for CacheResult(0, *(v3 + 80), v5, v6);
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t sub_1B4EACC00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v7 = type metadata accessor for CacheResult(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 40))(v1 + v4, a1, v7);
  return swift_endAccess();
}

uint64_t CacheTopic.__allocating_init()()
{
  v0 = swift_allocObject();
  CacheTopic.init()();
  return v0;
}

char *CacheTopic.init()()
{
  v1 = *v0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v0 + 2) = v2;
  (*(*(*(v1 + 80) - 8) + 56))(&v0[*(*v0 + 96)], 1, 1);
  return v0;
}

void sub_1B4EACE20(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1B4EACE98(v1, a1, v4, v5);
  v6 = *(v3 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1B4EACE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for CacheResult(0, v5, a3, a4);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v13 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v13 - v9, a2, v5, v8);
  (*(v11 + 56))(v10, 0, 1, v5);
  return sub_1B4EACC00(v10);
}

void sub_1B4EACFA8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1B4EAD018(v0, v2, v3, v4);
  v5 = *(v1 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1B4EAD018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a1 + 80);
  v5 = type metadata accessor for CacheResult(0, v4, a3, a4);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v11 - v8;
  (*(*(v4 - 8) + 56))(&v11 - v8, 1, 1, v4, v7);
  return sub_1B4EACC00(v9);
}

char *CacheTopic.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for CacheResult(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t CacheTopic.__deallocating_deinit()
{
  CacheTopic.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4EAD1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CacheResult(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AudioLanguagePreference.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66714();

  return sub_1B4F66744();
}

uint64_t sub_1B4EAD47C(double a1)
{
  sub_1B4F66714();

  return sub_1B4F66744();
}

void *MultiUserClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4EAFFC0(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4EAD628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v17 = a4(0);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    (*(v15 + 8))(v13, v10, a5, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_1B4EB06C8(v13, a6);
  }

  return result;
}

void sub_1B4EAD790(uint64_t a1)
{
  v2 = sub_1B4F65EF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB6DEB8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1B4F67C34();
  v9 = sub_1B4F685E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    sub_1B4EB0680(&qword_1EB8F6080, MEMORY[0x1E69CBB20], MEMORY[0x1E69CBB30]);
    v12 = sub_1B4F68D04();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1B4DC4F88(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1B4DC2000, v8, v9, "MultiUserClient - MultiUserSessionConnected %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B8C831D0](v11, -1, -1);
    MEMORY[0x1B8C831D0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1B4EADA00(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for MultiUserSessionUpdated(0);
  MEMORY[0x1EEE9AC00](v30, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F65DB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DEB8);
  v28 = *(v7 + 16);
  v28(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  v14 = os_log_type_enabled(v12, v13);
  v29 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v16 = 136446210;
    sub_1B4EB0680(&qword_1EB8F6090, MEMORY[0x1E69CB7B8], MEMORY[0x1E69CB7C8]);
    v17 = sub_1B4F68D04();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_1B4DC4F88(v17, v19, v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "MultiUserClient - MultiUserSession updated %{public}s", v16, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B8C831D0](v21, -1, -1);
    v22 = v16;
    v5 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v28(v5, v29, v6);
    (*(v24 + 8))(v5, v30, &protocol witness table for MultiUserSessionUpdated, ObjectType, v24);
    swift_unknownObjectRelease();
    return sub_1B4EB06C8(v5, type metadata accessor for MultiUserSessionUpdated);
  }

  return result;
}

uint64_t sub_1B4EADD84(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for MultiUserActivityCancelled(0);
  MEMORY[0x1EEE9AC00](v30, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F65EF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DEB8);
  v28 = *(v7 + 16);
  v28(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  v14 = os_log_type_enabled(v12, v13);
  v29 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v16 = 136446210;
    sub_1B4EB0680(&qword_1EB8F6080, MEMORY[0x1E69CBB20], MEMORY[0x1E69CBB30]);
    v17 = sub_1B4F68D04();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_1B4DC4F88(v17, v19, v31);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "MultiUserClient - MultiUserActivityCancelled %{public}s", v16, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B8C831D0](v21, -1, -1);
    v22 = v16;
    v5 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v28(v5, v29, v6);
    (*(v24 + 8))(v5, v30, &off_1F2CDF270, ObjectType, v24);
    swift_unknownObjectRelease();
    return sub_1B4EB06C8(v5, type metadata accessor for MultiUserActivityCancelled);
  }

  return result;
}

uint64_t sub_1B4EAE108(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for MultiUserCelebrationRequested(0);
  MEMORY[0x1EEE9AC00](v30, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4F66464();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DEB8);
  v28 = *(v7 + 16);
  v28(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  v14 = os_log_type_enabled(v12, v13);
  v29 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v27 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v16 = 141558274;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    sub_1B4EB0680(&qword_1EB8F6088, MEMORY[0x1E69CC230], MEMORY[0x1E69CC238]);
    v17 = sub_1B4F68D04();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_1B4DC4F88(v17, v19, v31);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "MultiUserClient - activityRingsCompleted %{mask.hash}s", v16, 0x16u);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B8C831D0](v21, -1, -1);
    v22 = v16;
    v5 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v28(v5, v29, v6);
    (*(v24 + 8))(v5, v30, &protocol witness table for MultiUserCelebrationRequested, ObjectType, v24);
    swift_unknownObjectRelease();
    return sub_1B4EB06C8(v5, type metadata accessor for MultiUserCelebrationRequested);
  }

  return result;
}

uint64_t MultiUserClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MultiUserClient.willBeginActivity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4F65EF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DEB8);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = a2;
    v17 = v16;
    v28 = v16;
    *v15 = 136446210;
    sub_1B4EB0680(&qword_1EB8F6080, MEMORY[0x1E69CBB20], MEMORY[0x1E69CBB30]);
    v18 = sub_1B4F68D04();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1B4DC4F88(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Attempting to register %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C831D0](v17, -1, -1);
    v22 = v15;
    a1 = v27;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v29 = 290;
  return (*(v23 + 16))(&v29, a1, v6, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v23);
}

uint64_t MultiUserClient.waitForSession(activity:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82AE0;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 291;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65EF4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v6);
}

uint64_t MultiUserClient.joinActivity()()
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DEB8);
  v2._countAndFlagsBits = 0x697463416E696F6ALL;
  v2._object = 0xEE00292879746976;
  v3._object = 0x80000001B4F82AB0;
  v3._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 284;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MultiUserClient.leaveActivity(_:)(uint64_t a1)
{
  if (qword_1EDB6DEB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DEB8);
  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001B4F82AB0;
  v5._object = 0x80000001B4F82B00;
  v5._countAndFlagsBits = 0xD000000000000011;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 285;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65EF4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBB10], MEMORY[0x1E69CBB18], ObjectType, v6);
}