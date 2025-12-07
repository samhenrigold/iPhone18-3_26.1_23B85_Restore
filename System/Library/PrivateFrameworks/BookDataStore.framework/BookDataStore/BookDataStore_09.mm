uint64_t sub_1E46FEC08()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 48);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_1E470B50C();

    if (!v4)
    {
      return result;
    }
  }

  else if (!*(v3 + 16))
  {
    return result;
  }

  v5 = sub_1E470A0BC();
  v6 = sub_1E470B2AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1E4654D04(0x676F6C28656E6F64, 0xED0000293A726567, &v13);
    *(v7 + 12) = 2080;
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
    sub_1E470141C(&qword_1ECF75C18, &qword_1ECF742F0, 0x1E695BA70, MEMORY[0x1E69E81B8]);

    v9 = sub_1E470AE7C();
    v11 = v10;

    v12 = sub_1E4654D04(v9, v11, &v13);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1E45E0000, v5, v6, "BDSSyncEnginePipeline - %s: Unexpected outstanding IDs: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v8, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  *(v1 + 48) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1E46FEE6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E46FEEC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1E4665FC8;

  return v6();
}

uint64_t sub_1E46FEFAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1E4665DD0;

  return v7();
}

uint64_t sub_1E46FF094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - v11;
  sub_1E465E0B0(a3, v24 - v11, &unk_1ECF752E0, &qword_1E471B9A8);
  v13 = sub_1E470B14C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E465E050(v12, &unk_1ECF752E0, &qword_1E471B9A8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E470B13C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1E470B11C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1E470AF9C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);

    return v22;
  }

LABEL_8:
  sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1E46FF390@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1E470B05C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1E4693CE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1E4693CE8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1E470B04C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1E470AFDC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1E470AFDC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1E470B05C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1E4693CE8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1E470B05C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1E4693CE8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1E4693CE8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1E470AFDC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46FF780(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = sub_1E4655454(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 16 * v7);
  sub_1E46FFD58(v7, v9);
  *v4 = v9;
  return v10;
}

double sub_1E46FF81C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E4655498(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E46580E4();
      v9 = v11;
    }

    sub_1E46585B4((*(v9 + 56) + 40 * v7), a2);
    sub_1E46FFEC8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E46FF8C4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1E46554E8(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1E4700060(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1E46583EC();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1E470B69C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1E470B50C();
  v8 = sub_1E46C70E0(v4, v7);

  v9 = sub_1E46554E8(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1E4700060(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

void sub_1E46FFA10(int64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_1E470B4DC();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1E4701460(&qword_1ECF75D50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v22 = sub_1E470AEBC();
      (*v38)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(type metadata accessor for ReadingHistoryDay(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1E46FFD58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1E470B8EC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1E46FFEC8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_1E470B41C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
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
}

void sub_1E4700060(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1E470B41C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

uint64_t sub_1E47001EC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1E470B50C();
LABEL_9:
  result = sub_1E470B5FC();
  *v2 = result;
  return result;
}

uint64_t sub_1E470028C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E470B50C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E470B50C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E45E2F14(&unk_1ECF75C48, &qword_1ECF75C40, &qword_1E4720480, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            sub_1E4650534(&qword_1ECF75C40, &qword_1E4720480);
            v9 = sub_1E46C9ECC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4700440(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E470B84C() & 1;
  }
}

uint64_t sub_1E47004CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E47004E4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for BDSSyncEnginePipeline(0);
  v17[4] = &off_1F5E66D30;
  v17[0] = a1;
  v6 = a1;
  v7 = sub_1E470AF0C();
  v8 = *&a4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue];
  sub_1E4658550(v17, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  sub_1E46585B4(v16, v9 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4701674;
  *(v10 + 24) = v9;
  v15[4] = sub_1E465DE98;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E46679F4;
  v15[3] = &unk_1F5E67038;
  v11 = _Block_copy(v15);
  v12 = a4;
  v13 = v7;

  dispatch_sync(v8, v11);

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return sub_1E4658A0C(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47006AC(void *a1, uint64_t a2)
{
  v4 = sub_1E470A5DC();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E470A61C();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1E46D129C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66FC0;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_1E470A5FC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_1E47009C4(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1E46FF8C4(a2);
  swift_endAccess();

  swift_beginAccess();
  v7 = a1;
  MEMORY[0x1E6915DB0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  return swift_endAccess();
}

uint64_t sub_1E4700AC0()
{
  v8 = v0;
  v1 = sub_1E470A0BC();
  v2 = sub_1E470B2CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4654D04(0xD000000000000011, 0x80000001E471AE10, &v7);
    _os_log_impl(&dword_1E45E0000, v1, v2, "BDSSyncEnginePipeline - %s", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_1E4700CAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t type metadata accessor for BDSSyncEnginePipeline(uint64_t a1)
{
  result = qword_1ECF75AE0;
  if (!qword_1ECF75AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4700D50(uint64_t a1)
{
  result = sub_1E470A0DC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.startSyncToCK()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665FC8;

  return v5();
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.fetchRecord(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E46C674C;

  return v7(a1);
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E4665FC8;

  return v11(a1, a2, a3);
}

uint64_t sub_1E470141C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1E45E2DE8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4701460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4701500()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4701590()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E47015D0()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t sub_1E470161C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E470B84C() & 1;
  }
}

void sub_1E4701680()
{
  v1 = *(sub_1E470A0DC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1E46F6FDC(v0 + v2, v6, v7, v8);
}

void sub_1E470171C()
{
  v1 = *(sub_1E470A0DC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  sub_1E46F69A4(v0 + v2, v8, v9, v6, v7);
}

uint64_t sub_1E47017C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4665DD0;

  return sub_1E46F848C(v2, v3, v4);
}

uint64_t sub_1E4701878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return sub_1E46C6CA4(a1, v4);
}

uint64_t sub_1E4701930(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665DD0;

  return sub_1E46C6CA4(a1, v4);
}

uint64_t sub_1E47019E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E4665FC8;

  return sub_1E46F8084(v2, v3);
}

uint64_t sub_1E4701A94(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1E4701ADC()
{
  sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1E46F9970(v1, v2);
}

void sub_1E4701C30(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No daap item found for %@", &v2, 0xCu);
}

void sub_1E4701CA8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No collections for %@", &v2, 0xCu);
}

void sub_1E4701DE0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "BDSSyncEngineSaltManager: Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", &v5, 0x16u);
}

void sub_1E4701F40(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "BDSSyncEngineSaltManager: unable to generate record name for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1E470202C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470209C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470210C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470217C()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E47021FC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702238()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47022A8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47022E4()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702354()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702390()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702400()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470243C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47024AC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47024E8()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702558()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702594()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702604()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702640()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47026B0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47026EC()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470275C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702798()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702808()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702844()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47028B4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47028F0()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702960()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470299C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702A0C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702A48()
{
  sub_1E45FE994(*MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1E4702AB8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702AF4()
{
  sub_1E45FE994(*MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1E4702B64()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702C30()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702C6C()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4702CDC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702D18()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4702D88()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702DC4()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702E34()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702E70()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4702EE0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702F1C()
{
  sub_1E45FE994(*MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1E4702F8C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702FC8()
{
  sub_1E45FE994(*MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1E4703038()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703074()
{
  sub_1E45FE994(*MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1E47030E4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703120()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703190()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47031CC()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E470323C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703278()
{
  sub_1E45FE9FC(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E47032E8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703324()
{
  sub_1E45FE9FC(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4703394()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47033D0()
{
  sub_1E45FE9FC(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4703440()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470347C()
{
  sub_1E45FE9FC(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E47034EC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703528()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703598()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47035D4()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703644()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703680()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47036F0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470372C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470379C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47037D8()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703848()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703884()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47038F4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703930()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47039A0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47039DC()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703A4C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703A88()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1E4703B18()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703B54()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703BC4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703C00()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703C70()
{
  sub_1E45FE9B4();
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = sub_1E45FE9D8();
  v3 = NSStringFromSelector(v2);
  sub_1E45FE97C();
  sub_1E45E54D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1E4703D18()
{
  sub_1E45FE9A4();
  v3 = sub_1E45FE9E4(v1, v2);
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_1E45FE9CC();
  v5 = NSStringFromSelector(v4);
  sub_1E45FE94C();
  sub_1E45E54D0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_1E4703DBC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703DF8()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4703E68()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703EA4()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4703F14()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703F50()
{
  sub_1E45FE9C0(*MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1E4703FC0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703FFC()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E470406C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47040A8()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4704118()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4704154()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E47041F8(void *a1)
{
  v6 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1E47042A0(void *a1)
{
  v6 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1E47043CC(void *a1)
{
  v6 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1E47044A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412802;
  v5 = v3;
  v6 = 1024;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5b. dissociateCloudDataFromSyncWithCompletion %{BOOL}d ERROR:%@", &v4, 0x1Cu);
}

void sub_1E47047C0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1E45E0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create rawHistoryToken from data error: %@", &v1, 0xCu);
}

void sub_1E4704840(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving persistent history token: %{public}@", &v2, 0xCu);
}

void sub_1E470496C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "_isServiceEnabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1E47049E4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "_isServiceDisabled(%{public}@): TCC returned a NULL array!", &v2, 0xCu);
}

void sub_1E4704A5C(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %{public}@.", &v4, 0x16u);
}

void sub_1E4704AFC(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "Unable to create CKAsset local cache at %@ error=%@", &v4, 0x16u);
}

void sub_1E4704B88(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 ckAssetStoreDirectory];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "Failed to create cache URL. directory: %@ assetID: %@", &v6, 0x16u);
}

void sub_1E4704C6C(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 startTimestampString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1E4704D1C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 startTimestampString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4704E84(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 storeID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCStoreItem %@ Mismatch storeID from record storeID %@", &v6, 0x16u);
}

void sub_1E4704F34(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 storeID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCStoreItem %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4705034(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "Error adding storeItem for storeID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1E4705174(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) allKeys];
  sub_1E45E54AC();
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error adding storeItems for storeIDs: %@", v4, 0xCu);
}

void sub_1E47052A8(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetReviewID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCAssetReview %@ Mismatch assetReviewID from record assetReviewID %@", &v6, 0x16u);
}

void sub_1E4705358(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetReviewID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCAssetReview %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4705458(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] Creating syncToCKTransaction %@", &v2, 0xCu);
}

void sub_1E47054D0(const void **a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _Block_copy(*a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] registering completion %@ for syncToCKTransaction %@", &v6, 0x16u);
}

void sub_1E4705594(void *a1, void *a2)
{
  [a1 establishedSalt];
  v3 = [a2 ckSystemFields];
  sub_1E45E54D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);
}

void sub_1E470565C(void *a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10 = [a1 identifier];
  sub_1E45E54D0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1E4705728(void *a1)
{
  v6 = [a1 identifier];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1E47059F8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705A34(void *a1)
{
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E4705AC0(void *a1)
{
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1E4705B64(void *a1)
{
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E4705BF0(void *a1)
{
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E4705C7C(void *a1)
{
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E4705D08()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705D44()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705D80()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705E34()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705E70()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705EAC()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4705F1C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4705F8C()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4706068(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "monitorServiceNotifications: Got an error: %{public}@", &v2, 0xCu);
}

void sub_1E47060E0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSServiceProxy returned fatal error: %{public}@", &v2, 0xCu);
}

void sub_1E4706158(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "BDSServiceProxy returned error: %{public}@, attemptsRemaining: %ld", &v3, 0x16u);
}

void sub_1E47061E0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSServiceProxy depleted error attempts: %{public}@", &v2, 0xCu);
}

void sub_1E47062D4(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1E47063C8(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1E470646C(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 attachedToContainer];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController - fetchRecordForRecordID attached: %@", &v5, 0xCu);
}

void sub_1E4706648(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1E45E0000, log, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController modifySubscriptionsOperation: %@, id: %@", buf, 0x16u);
}

void sub_1E4706A60(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_1E4628AE8();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1E4706AFC(void *a1)
{
  v1 = [a1 containerIdentifier];
  sub_1E4628AE8();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1E4706E3C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "BCCloudKitDatabaseController - Registered multiple stores for record zone %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1E47071B0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "#dissociateCloudData Change Token Controller error: %@", &v2, 0xCu);
}

void sub_1E4707228()
{
  sub_1E45FE9B4();
  v2 = [*(v1 + 32) zoneName];
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2048;
  *&v9[14] = [v0 count];
  sub_1E45E5534(&dword_1E45E0000, v3, v4, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ we should never have more than 1 record. We have %lu@) records.", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_1E47072D0()
{
  sub_1E45FE9B4();
  v2 = [*(v1 + 32) zoneName];
  *v9 = 138412546;
  *&v9[4] = v2;
  *&v9[12] = 2112;
  *&v9[14] = *v0;
  sub_1E45E5534(&dword_1E45E0000, v3, v4, "<%@ BCCloudChangeTokenController - No change yet we tried updating %@", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

void sub_1E4707374()
{
  sub_1E45FE9B4();
  v1 = [*(v0 + 40) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - Error deleting cloud tokens: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1E4707404()
{
  sub_1E45FE9B4();
  v1 = [*(v0 + 32) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - #recordChange Error saving MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1E4707494()
{
  sub_1E45FE9B4();
  v1 = [*(v0 + 40) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - #recordChange Error fetching from MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7);
}

void sub_1E4707524(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving server change token: %{public}@", &v2, 0xCu);
}

void sub_1E47075D0(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 key];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1E4707680(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4707780()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4707870()
{
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1E4707A2C(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E4707AD4(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E4707B7C(uint64_t a1)
{
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_1E4707C28(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitController - CURRENT ACCOUNT STATUS %ld", &v3, 0xCu);
}

void sub_1E4707CA4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *a1;
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1E4707D7C(id *a1)
{
  v1 = [*a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1E4707E38(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 configuration];
  v4 = [v3 containerIdentifier];
  sub_1E45E54AC();
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "_updateAccountCacheWithTimeout(%{public}@)", v5, 0xCu);
}

void sub_1E4707F70(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 48) configuration];
  v5 = [v4 containerIdentifier];
  sub_1E45E54AC();
  v8 = 1024;
  v9 = v6;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "(%{public}@) _updateAccountCacheWithTimeout hasChanged:%{BOOL}d ", v7, 0x12u);
}

void sub_1E4708040(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v7 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);
}

void sub_1E4708120(uint64_t a1)
{
  v2 = [*(a1 + 40) configuration];
  v7 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1E47081E8(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E470828C(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E4708330(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1E47083D4(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1E47084D0(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Unable to create persistent stores on the coordinator:%@", &v3, 0xCu);
}

void sub_1E470854C(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [a2 domain];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 1024;
  v12 = [a2 code];
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "Error %{public}@: %{public}@ %d", &v7, 0x1Cu);
}

void sub_1E4708718(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a1 assetID];
  v7 = [a1 debugDescription];
  v8 = [a2 assetID];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "BCReadingNowDetail configured: %@ %@ from readingNowDetail:%@", &v9, 0x20u);
}

void sub_1E47087FC(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1E47088AC(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_1E463C098();
  sub_1E463C0B8(&dword_1E45E0000, v8, v9, "Assuming cloudAssetType %@ Resolving: from record: %@ %@", v10, v11, v12, v13);
}

void sub_1E4708980(void *a1, void *a2)
{
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_1E463C098();
  sub_1E463C0B8(&dword_1E45E0000, v8, v9, "BCReadingNowDetail %@ Resolving: Identical properties from record: %@ %@", v10, v11, v12, v13);
}

void sub_1E4708A54(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4708BE0(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 collectionMemberID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCCollectionMember %@ Mismatch assetID from record collectionMemberID %@", &v6, 0x16u);
}

void sub_1E4708E24(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ Mismatch assetID from record assetID %@", &v6, 0x16u);
}

void sub_1E4708ED4(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ No Record supplied", &v4, 0xCu);
}

void sub_1E4709008(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 key];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCGlobalMetadatum %@ Mismatch key from record key %@", &v6, 0x16u);
}

void sub_1E47090B8(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCGlobalMetadatum %@ No Record supplied", &v4, 0xCu);
}

void sub_1E47091CC()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E4650124(&dword_1E45E0000, v0, v1, "#dissociateCloudData error: %@", v2);
}

void sub_1E4709238()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1E45E0000, v1, OS_LOG_TYPE_ERROR, "BCCloudDataManager error: %{public}@, at: %{public}@", v2, 0x16u);
}

void sub_1E47092F0(void *a1)
{
  v1 = [a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  sub_1E4650124(v2, v3, v4, v5, v6);
}

void sub_1E470937C(void *a1)
{
  v1 = [a1 identifier];
  sub_1E465010C();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1E470941C(void *a1)
{
  v1 = [a1 identifier];
  sub_1E465010C();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);
}

void sub_1E47094BC(void *a1, id *a2)
{
  v3 = [a1 entityName];
  v8 = [*a2 debugDescription];
  sub_1E4639D48();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

void sub_1E47095E4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1E465010C();
  _os_log_fault_impl(&dword_1E45E0000, v0, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ resolveConflictsForRecords: Encountered duplicates: %d", v1, 0x12u);
}

void sub_1E4709664(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543362;
  v5 = v3;
  sub_1E4650124(&dword_1E45E0000, a2, a3, "BCCloudDataManager #recordChange failedRecordIDs:%{public}@", &v4);
}

void sub_1E47096D8(uint64_t a1)
{
  v1 = [*(a1 + 32) entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1E470976C(id *a1)
{
  v1 = [*a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  sub_1E4650124(v2, v3, v4, v5, v6);
}

void sub_1E47097F8(uint64_t a1)
{
  v1 = [*(a1 + 40) entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_1E470988C(void *a1)
{
  v1 = [a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}