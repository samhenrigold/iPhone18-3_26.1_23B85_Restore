void sub_1D5FB79AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v32 = a4;
  v33 = a6;
  v34 = a2;
  v35 = a1;
  v9 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4A34(v34, a3, v33);
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v27 = 0xD000000000000066;
    v27[1] = 0x80000001D73C3700;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v31 = v6;
  v30 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext(0);

  v22 = v30(v34, a3, v16);
  if ((*(v18 + 48))(v16, 1, v17, v22) == 1)
  {
    sub_1D5B87964(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v12 = v34;
    v12[1] = a3;
    swift_storeEnumTagMultiPayload();
    v23 = *(v35 + 8);
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v25 = swift_allocError();
    if (v23)
    {
      sub_1D5FBA968(v12, v24, type metadata accessor for FormatLayoutError);
      v26 = swift_allocObject();
      *(v26 + 16) = 2;
      *(v26 + 24) = 0x3FF0000000000000;
      *(v26 + 32) = 0;

      *v33 = v26 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v12, v24, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5FBA968(v16, v21, type metadata accessor for FormatOption);

    v28 = v35;
    v29 = v31;
    sub_1D6B766A8(v35, &v36);
    if (!v29)
    {

      sub_1D6B8310C(v36, v34, a3, v32, v28, v33);
    }

    sub_1D5C0AD20(v21, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB7E54(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v31 = a2;
  v28 = a4;
  v29 = a6;
  v9 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4E04();
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v26 = 0xD000000000000048;
    v26[1] = 0x80000001D73C36B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  FormatOptionCollection.subscript.getter(v31, a3, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5B87964(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v12 = v31;
    v12[1] = a3;
    swift_storeEnumTagMultiPayload();
    v22 = *a1;
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v24 = swift_allocError();
    if (v22)
    {
      sub_1D5FBA968(v12, v23, type metadata accessor for FormatLayoutError);
      v25 = swift_allocObject();
      *(v25 + 16) = 2;
      *(v25 + 24) = 0x3FF0000000000000;
      *(v25 + 32) = 0;

      *v29 = v25 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v12, v23, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5FBA968(v16, v21, type metadata accessor for FormatOption);

    v27 = v30;
    sub_1D6B76F28(a1, &v32);
    if (!v27)
    {

      sub_1D6B84254(v32, v31, a3, v28, a1, v29);
    }

    sub_1D5C0AD20(v21, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB82C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W4>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4 > 3u)
  {
    if (a4 == 4)
    {
      sub_1D5FB4EB0();
      return;
    }

    goto LABEL_7;
  }

  if (a4 <= 2u)
  {
LABEL_7:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v18 = 0xD00000000000005DLL;
    v18[1] = 0x80000001D73C3880;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  *v13 = a2;
  v13[1] = a3;
  swift_storeEnumTagMultiPayload();
  v14 = *(a1 + 64);
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  v16 = swift_allocError();
  if (v14)
  {
    sub_1D5FBA968(v13, v15, type metadata accessor for FormatLayoutError);
    v17 = swift_allocObject();
    *(v17 + 16) = 2;
    *(v17 + 24) = 0x3FF0000000000000;
    *(v17 + 32) = 0;

    *a5 = v17 | 0x1000000000000000;
  }

  else
  {
    sub_1D5D286BC(v13, v15, type metadata accessor for FormatLayoutError);
    swift_willThrow();

    sub_1D5C0AD20(v13, type metadata accessor for FormatLayoutError);
  }
}

void *sub_1D5FB855C(uint64_t a1, uint64_t a2)
{

  return sub_1D5FB863C(a1, a2, sub_1D5FB88DC, sub_1D5FB88DC);
}

void *sub_1D5FB85CC(uint64_t a1, uint64_t a2)
{

  return sub_1D5FB863C(a1, a2, sub_1D5FB8CB8, sub_1D5FB8CB8);
}

void *sub_1D5FB863C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v13);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_1D5FB8844(v16, v10, a2, a1, a4);

    MEMORY[0x1DA6FD500](v16, -1, -1);
  }

  return v14;
}

void *sub_1D5FB8844(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_1D5FB88DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1D6EC09F8(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v39 = sub_1D7264A5C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1D72646CC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D5FB8CB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      result = MEMORY[0x1DA6FC080](*(a4 + 40), v32, 4);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1D6EC0C28(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v6 << 6)));
      result = MEMORY[0x1DA6FC080](*(a3 + 40), v15, 4);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_1D5FB8FA0(uint64_t a1, id a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = a5[5];
  v22[4] = a5[4];
  v22[5] = v8;
  v22[6] = a5[6];
  v9 = a5[1];
  v22[0] = *a5;
  v10 = a5[2];
  v22[3] = a5[3];
  v22[1] = v9;
  v22[2] = v10;
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[2];
  v23[3] = a5[3];
  v23[4] = v12;
  v15 = a5[6];
  v23[5] = v13;
  v23[6] = v15;
  v16 = a5[1];
  v23[0] = *a5;
  v23[1] = v16;
  v23[2] = v14;
  v17 = sub_1D5FB1A58(v11, v23, a3);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = v22;
    v19 = sub_1D632A694(v11, sub_1D5FBB140, v21, a4);

    return v19;
  }

  return v11;
}

id sub_1D5FB90D4(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(void **__return_ptr, void **, unint64_t *, double))
{
  v16 = *a5;
  v10 = [a2 resolvedColorWithTraitCollection_];
  v11 = a6();
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    v15[2] = &v16;
    v13 = sub_1D632A694(v10, a7, v15, a4);

    return v13;
  }

  return v10;
}

id sub_1D5FB91BC(uint64_t a1, id a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = a5[3];
  v20[2] = a5[2];
  v20[3] = v8;
  v9 = a5[5];
  v20[4] = a5[4];
  v20[5] = v9;
  v10 = a5[1];
  v20[0] = *a5;
  v20[1] = v10;
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a5[3];
  v21[2] = a5[2];
  v21[3] = v12;
  v13 = a5[5];
  v21[4] = a5[4];
  v21[5] = v13;
  v14 = a5[1];
  v21[0] = *a5;
  v21[1] = v14;
  v15 = sub_1D5FB26CC(v11, v21, a3);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15, v16);
    v19[2] = v20;
    v17 = sub_1D632A694(v11, sub_1D5FBB080, v19, a4);

    return v17;
  }

  return v11;
}

id sub_1D5FB92D8(uint64_t a1, id a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 112);
  v22[6] = *(a5 + 96);
  v22[7] = v8;
  v22[8] = *(a5 + 128);
  v23 = *(a5 + 144);
  v9 = *(a5 + 48);
  v22[2] = *(a5 + 32);
  v22[3] = v9;
  v10 = *(a5 + 80);
  v22[4] = *(a5 + 64);
  v22[5] = v10;
  v11 = *(a5 + 16);
  v22[0] = *a5;
  v22[1] = v11;
  v12 = [a2 resolvedColorWithTraitCollection_];
  v13 = *(a5 + 112);
  v24[6] = *(a5 + 96);
  v24[7] = v13;
  v24[8] = *(a5 + 128);
  v25 = *(a5 + 144);
  v14 = *(a5 + 48);
  v24[2] = *(a5 + 32);
  v24[3] = v14;
  v15 = *(a5 + 80);
  v24[4] = *(a5 + 64);
  v24[5] = v15;
  v16 = *(a5 + 16);
  v24[0] = *a5;
  v24[1] = v16;
  v17 = sub_1D5FB2954(v12, v24, a3);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = v22;
    v19 = sub_1D632A694(v12, sub_1D5FBB170, v21, a4);

    return v19;
  }

  return v12;
}

uint64_t _s8NewsFeed21FormatSymbolImageFillV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatColor.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v23 = *(a2 + 96);
  v24 = *(a1 + 96);
  v33 = *a1;
  v34 = v2;
  v35 = v3;
  v36 = v4;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  sub_1D5FB995C(v33, v2, v3, v4);
  sub_1D5FB995C(v8, v9, v10, v11);
  LOBYTE(v8) = _s8NewsFeed16FormatSymbolNameO2eeoiySbAC_ACtFZ_0(&v33, &v29);
  sub_1D5FBA070(v29, v30, v31, v32);
  sub_1D5FBA070(v33, v34, v35, v36);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v7 >> 8 > 0xFE)
  {
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5FB999C(v13, v12, v14);
    if (v14 >> 8 > 0xFE)
    {
      sub_1D5FBACE0(v6, v5, v7);
      goto LABEL_9;
    }

LABEL_7:
    sub_1D5FBACE0(v6, v5, v7);
    sub_1D5FBACE0(v13, v12, v14);
    return 0;
  }

  v33 = v6;
  v34 = v5;
  LOWORD(v35) = v7;
  if (v14 >> 8 > 0xFE)
  {
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5FB999C(v13, v12, v14);
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5F5816C(v6, v5, v7, SBYTE1(v7));
    goto LABEL_7;
  }

  v29 = v13;
  v30 = v12;
  LOWORD(v31) = v14;
  sub_1D5FB999C(v6, v5, v7);
  sub_1D5FB999C(v13, v12, v14);
  sub_1D5FB999C(v6, v5, v7);
  v15 = _s8NewsFeed18FormatSymbolConfigO2eeoiySbAC_ACtFZ_0(&v33, &v29);
  sub_1D5F5816C(v29, v30, v31, SBYTE1(v31));
  sub_1D5F5816C(v33, v34, v35, SBYTE1(v35));
  sub_1D5FBACE0(v6, v5, v7);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((~v27 & 0xF000000000000007) != 0)
  {
    v17 = v28;
    v33 = v27;
    v34 = v28;
    v16 = v25;
    v18 = v26;
    if ((~v25 & 0xF000000000000007) != 0)
    {
      v29 = v25;
      v30 = v26;
      sub_1D5FB99B0(v27, v28);
      sub_1D5FB99B0(v25, v26);
      sub_1D5FB99B0(v27, v28);
      v19 = _s8NewsFeed21FormatSymbolImageFillV2eeoiySbAC_ACtFZ_0(&v33, &v29);

      sub_1D5FBACF4(v27, v28);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_1D5FB99B0(v27, v28);
    sub_1D5FB99B0(v25, v26);
    sub_1D5FB99B0(v27, v28);

LABEL_14:
    sub_1D5FBACF4(v27, v17);
    sub_1D5FBACF4(v16, v18);
    return 0;
  }

  v16 = v25;
  v17 = v28;
  sub_1D5FB99B0(v27, v28);
  v18 = v26;
  sub_1D5FB99B0(v25, v26);
  if ((~v25 & 0xF000000000000007) != 0)
  {
    goto LABEL_14;
  }

  sub_1D5FBACF4(v27, v28);
LABEL_16:
  if (sub_1D5F588CC())
  {
    if ((~v24 & 0xF000000000000007) == 0)
    {
      v20 = v23;
      sub_1D5FB99FC(v24);
      sub_1D5FB99FC(v23);
      if ((~v23 & 0xF000000000000007) == 0)
      {
        sub_1D5FBA158(v24);
        return 1;
      }

      goto LABEL_22;
    }

    v33 = v24;
    v20 = v23;
    if ((~v23 & 0xF000000000000007) == 0)
    {
      sub_1D5FB99FC(v24);
      sub_1D5FB99FC(v23);
      sub_1D5FB99FC(v24);
      sub_1D5F33D8C(v24);
LABEL_22:
      sub_1D5FBA158(v24);
      sub_1D5FBA158(v20);
      return 0;
    }

    v29 = v23;
    sub_1D5FB99FC(v24);
    sub_1D5FB99FC(v23);
    sub_1D5FB99FC(v24);
    v22 = static FormatSymbolImageColor.== infix(_:_:)(&v33, &v29);
    sub_1D5F33D8C(v23);
    sub_1D5F33D8C(v24);
    sub_1D5FBA158(v24);
    if (v22)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D5FB995C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

void sub_1D5FB999C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    sub_1D5F586A4(a1, a2, a3, SBYTE1(a3));
  }
}

double sub_1D5FB99B0(uint64_t a1, uint64_t a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1D5FB99FC(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1D5F33D5C(a1);
  }

  return result;
}

unint64_t sub_1D5FB9A10(uint64_t a1)
{
  result = sub_1D5FB9A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9A38()
{
  result = qword_1EC881D78;
  if (!qword_1EC881D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D78);
  }

  return result;
}

unint64_t sub_1D5FB9ACC()
{
  result = qword_1EDF10B00;
  if (!qword_1EDF10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10B00);
  }

  return result;
}

unint64_t sub_1D5FB9B20()
{
  result = qword_1EC881D80;
  if (!qword_1EC881D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D80);
  }

  return result;
}

unint64_t sub_1D5FB9B74(uint64_t a1)
{
  result = sub_1D5FB9B9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9B9C()
{
  result = qword_1EC881D88;
  if (!qword_1EC881D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D88);
  }

  return result;
}

unint64_t sub_1D5FB9C30()
{
  result = qword_1EDF0DEE0;
  if (!qword_1EDF0DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEE0);
  }

  return result;
}

unint64_t sub_1D5FB9C84()
{
  result = qword_1EC881D90;
  if (!qword_1EC881D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D90);
  }

  return result;
}

unint64_t sub_1D5FB9CD8(uint64_t a1)
{
  result = sub_1D5FB9D00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9D00()
{
  result = qword_1EC881D98;
  if (!qword_1EC881D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D98);
  }

  return result;
}

uint64_t sub_1D5FB9D94(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FB9DE8()
{
  result = qword_1EDF0D9D8;
  if (!qword_1EDF0D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9D8);
  }

  return result;
}

unint64_t sub_1D5FB9E3C()
{
  result = qword_1EC881DA0;
  if (!qword_1EC881DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatSymbolImageColorO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void sub_1D5FB9EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725891C();
    v7 = sub_1D5FBA0C0(&qword_1EDF45B20, MEMORY[0x1E6969530], &protocol conformance descriptor for Date);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5FB9F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)))
{
  v6 = a4(0, a3, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5FB9FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)))
{
  v4 = a3(0, a2, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1D5FBA070(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D5FBA0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5FBA108()
{
  if (!qword_1EDF199C8)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF199C8);
    }
  }
}

double sub_1D5FBA158(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return sub_1D5F33D8C(a1);
  }

  return result;
}

uint64_t sub_1D5FBA16C(uint64_t a1, uint64_t a2)
{
  sub_1D5FBA900(0, &qword_1EC881DA8, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5FBA208()
{
  result = qword_1EC881DB0;
  if (!qword_1EC881DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DB0);
  }

  return result;
}

uint64_t sub_1D5FBA25C(uint64_t a1)
{
  sub_1D5FBA900(0, &qword_1EC881DA8, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D5FBA424@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = v5[3];
  v12[2] = v5[2];
  v12[3] = v8;
  v9 = v5[5];
  v12[4] = v5[4];
  v12[5] = v9;
  v10 = v5[1];
  v12[0] = *v5;
  v12[1] = v10;
  result = sub_1D5FA54F4(v6, v12, v7, v12[0]);
  *a3 = result;
  return result;
}

void sub_1D5FBA484(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = v6[3];
  v11[2] = v6[2];
  v11[3] = v8;
  v9 = v6[5];
  v11[4] = v6[4];
  v11[5] = v9;
  v10 = v6[1];
  v11[0] = *v6;
  v11[1] = v10;
  sub_1D5FA67A0(v11, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t objectdestroy_93Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_124Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D5FBA714@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, **(v4 + 16), *a2);
  *a4 = result;
  return result;
}

void sub_1D5FBA75C(unint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *, double)@<X4>, void *a6@<X8>)
{
  sub_1D5FA62B4(**(v6 + 16), *a1, a3, a4, a5, a6);
  if (v7)
  {
    *a2 = v7;
  }
}

id sub_1D5FBA7EC@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D5FA4EF8(*a1, *(v3 + 16), *a2);
  *a3 = result;
  return result;
}

id sub_1D5FBA8C0@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D5FA48FC(*a1, *(v3 + 16), *a2);
  *a3 = result;
  return result;
}

void sub_1D5FBA900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5FBA968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D5FBAA98(unint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *, double)@<X4>, void *a6@<X8>)
{
  sub_1D5FA6530(*(v6 + 16), *a1, a3, a4, a5, a6);
  if (v7)
  {
    *a2 = v7;
  }
}

id sub_1D5FBAB14@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = v5[5];
  v12[4] = v5[4];
  v12[5] = v8;
  v12[6] = v5[6];
  v9 = v5[1];
  v12[0] = *v5;
  v12[1] = v9;
  v10 = v5[3];
  v12[2] = v5[2];
  v12[3] = v10;
  result = sub_1D5FA3E1C(v6, v12, v7);
  *a3 = result;
  return result;
}

void sub_1D5FBAB7C(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = v6[5];
  v11[4] = v6[4];
  v11[5] = v8;
  v11[6] = v6[6];
  v9 = v6[1];
  v11[0] = *v6;
  v11[1] = v9;
  v10 = v6[3];
  v11[2] = v6[2];
  v11[3] = v10;
  sub_1D5FA6030(v11, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

double sub_1D5FBABE0(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    else if (v1 != 2 && v1 != 3 && v1 != 4)
    {
      return result;
    }

LABEL_16:

    return result;
  }

  if (v1 <= 6)
  {
    if (v1 == 5 || v1 == 6)
    {
      goto LABEL_16;
    }
  }

  else if (v1 == 7 || v1 == 8 || v1 == 9)
  {
    goto LABEL_16;
  }

  return result;
}

double sub_1D5FBAC60(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    else if (v1 != 2 && v1 != 3 && v1 != 4)
    {
      return result;
    }

LABEL_16:

    return result;
  }

  if (v1 <= 6)
  {
    if (v1 == 5 || v1 == 6)
    {
      goto LABEL_16;
    }
  }

  else if (v1 == 7 || v1 == 8 || v1 == 9)
  {
    goto LABEL_16;
  }

  return result;
}

void sub_1D5FBACE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    sub_1D5F5816C(a1, a2, a3, SBYTE1(a3));
  }
}

double sub_1D5FBACF4(uint64_t a1, uint64_t a2)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm(uint64_t a1)
{

  return swift_deallocObject();
}

id sub_1D5FBAE78@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = v5[7];
  v13[6] = v5[6];
  v13[7] = v8;
  v13[8] = v5[8];
  v14 = v5[9].n128_u64[0];
  v9 = v5[3];
  v13[2] = v5[2];
  v13[3] = v9;
  v10 = v5[5];
  v13[4] = v5[4];
  v13[5] = v10;
  v11 = v5[1];
  v13[0] = *v5;
  v13[1] = v11;
  result = sub_1D5FA5A80(v6, v13, v7, v13[0]);
  *a3 = result;
  return result;
}

void sub_1D5FBAEF0(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = *(v6 + 112);
  v12[6] = *(v6 + 96);
  v12[7] = v8;
  v12[8] = *(v6 + 128);
  v13 = *(v6 + 144);
  v9 = *(v6 + 48);
  v12[2] = *(v6 + 32);
  v12[3] = v9;
  v10 = *(v6 + 80);
  v12[4] = *(v6 + 64);
  v12[5] = v10;
  v11 = *(v6 + 16);
  v12[0] = *v6;
  v12[1] = v11;
  sub_1D5FA6A1C(v12, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

char *sub_1D5FBB260(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  sub_1D5C1F6F0(0, &qword_1EDF3C478, MEMORY[0x1E6968178]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_1D7257B5C();
  MEMORY[0x1EEE9AC00](v11, v12);
  v34 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v32 = &v29 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (v16 + 48);
  v30 = v16;
  v33 = (v16 + 32);
  v20 = (a3 + 48);
  v37 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v29 = (v16 + 48);
  while (1)
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v36[0] = *(v20 - 2);
    v36[1] = v21;
    v36[2] = v22;

    (a1)(v36);
    if (v4)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EDF3C478, MEMORY[0x1E6968178]);
    }

    else
    {
      v23 = v32;
      v24 = *v33;
      (*v33)(v32, v10, v11);
      v24(v34, v23, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D698BCB0(0, *(v37 + 2) + 1, 1, v37);
      }

      v26 = *(v37 + 2);
      v25 = *(v37 + 3);
      if (v26 >= v25 >> 1)
      {
        v37 = sub_1D698BCB0((v25 > 1), v26 + 1, 1, v37);
      }

      v27 = v37;
      *(v37 + 2) = v26 + 1;
      v24(&v27[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26], v34, v11);
      a1 = v31;
      v19 = v29;
    }

    v20 += 3;
    if (!--v18)
    {
      return v37;
    }
  }

  return v37;
}

void *sub_1D5FBB5A0(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  sub_1D5EA74B8(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v34 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v33 = &v29 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = (a3 + 32);
  v30 = v17;
  v22 = (v17 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v31 = v12;
  v32 = a2;
  while (1)
  {
    v24 = *v21++;
    v35 = v24;
    a1(&v35, v18);
    if (v3)
    {
      break;
    }

    if ((*v22)(v10, 1, v12) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      v25 = v33;
      sub_1D5BE2EB4(v10, v33, sub_1D5EA74B8);
      sub_1D5BE2EB4(v25, v34, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D698C0A8(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = sub_1D698C0A8((v26 > 1), v27 + 1, 1, v23);
      }

      v23[2] = v27 + 1;
      sub_1D5BE2EB4(v34, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, sub_1D5EA74B8);
      v12 = v31;
    }

    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

void *sub_1D5FBB884(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF16148, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(sub_1D72585BC() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF16148, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      sub_1D5BE2EB4(v23, v33, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D698C5F0(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D698C5F0((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D5BE2EB4(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1D5FBBBBC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1D5FBBD68(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v6 - 1);
    v8 = *v6;
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v12 = *(v6 - 4);
    v29[0] = *(v6 - 5);
    v29[1] = v12;
    v29[2] = v11;
    v29[3] = v10;
    v29[4] = v9;
    v29[5] = v8;

    v30(&v25, v29);
    if (v4)
    {
      break;
    }

    if (*(&v25 + 1))
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D698BCE4(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1D698BCE4((v13 > 1), v14 + 1, 1, v7);
      }

      v19 = v23;
      v20 = v24;
      v15 = v21;
      v18 = v22;
      *(v7 + 2) = v14 + 1;
      v16 = &v7[64 * v14];
      *(v16 + 4) = v19;
      *(v16 + 5) = v20;
      *(v16 + 2) = v15;
      *(v16 + 3) = v18;
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_1D5FC46A0(&v21, &qword_1EC881DF0, &type metadata for FormatContentSlot.Resolved);
    }

    v6 += 6;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1D5FBBF90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v21[0] = *(v6 - 2);
    v21[1] = v8;
    v21[2] = v9;

    v22(&v18, v21);
    if (v4)
    {
      break;
    }

    v11 = v18;
    v10 = v19;
    v12 = v20;
    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D698C9C4(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      v15 = v7;
      if (v14 >= v13 >> 1)
      {
        v15 = sub_1D698C9C4((v13 > 1), v14 + 1, 1, v7);
      }

      *(v15 + 2) = v14 + 1;
      v7 = v15;
      v16 = &v15[24 * v14];
      *(v16 + 4) = v11;
      *(v16 + 5) = v10;
      *(v16 + 6) = v12;
    }

    else
    {
      sub_1D5EBC358(v18, 0, v20);
    }

    v6 += 3;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_1D5FBC110(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF3A660, type metadata accessor for FormatSourceItemTipSource);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FormatSourceItemTipSource(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (a3 + 32);
  v28 = v16;
  v20 = (v16 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    v22 = *v19++;
    v33 = v22;

    a1(&v33);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF3A660, type metadata accessor for FormatSourceItemTipSource);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for FormatSourceItemTipSource);
      sub_1D5BE2EB4(v23, v32, type metadata accessor for FormatSourceItemTipSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698F3EC(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_1D698F3EC((v24 > 1), v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      sub_1D5BE2EB4(v32, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FormatSourceItemTipSource);
      v11 = v29;
    }

    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

char *sub_1D5FBC414(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a1;
  v6 = (a3 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v6[1];
    v39[0] = *v6;
    v39[1] = v7;
    v8 = v6[3];
    v10 = *v6;
    v9 = v6[1];
    v39[2] = v6[2];
    v39[3] = v8;
    v35 = v10;
    v36 = v9;
    v11 = v6[3];
    v37 = v6[2];
    v38 = v11;
    sub_1D5CFBAA8(v39, &v25);
    v5(&v29, &v35);
    if (v3)
    {
      break;
    }

    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    sub_1D5D08954(&v25);
    v13 = v29;
    v12 = v30;
    v14 = v31;
    v15 = v34;
    if (v34 == 1)
    {
      sub_1D5FC4E38(v29, v30, v31, v32, v33, 1);
    }

    else
    {
      v23 = v32;
      v24 = v33;
      v16 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D698F5F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v19 = v16;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_1D698F5F4((v17 > 1), v18 + 1, 1, v16);
      }

      *(v19 + 2) = v18 + 1;
      v40 = v19;
      v20 = &v19[48 * v18];
      *(v20 + 4) = v13;
      *(v20 + 5) = v12;
      v20[48] = v14 & 1;
      *(v20 + 7) = v23;
      v20[64] = v24 & 1;
      *(v20 + 9) = v15;
      v5 = a1;
    }

    v6 += 4;
    if (!--v4)
    {
      return v40;
    }
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  sub_1D5D08954(&v25);

  return v40;
}

char *sub_1D5FBC5EC(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6++;
    v16 = v8;

    a1(&v15, &v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D699135C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        v12 = sub_1D699135C((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
        v7 = v12;
      }

      *(v7 + 2) = v10 + 1;
      *&v7[16 * v10 + 32] = v11;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_1D5FBC744(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x1DA6F9CE0](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D5FBC900(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v34 = a1;
  sub_1D5C1F6F0(0, &qword_1EDF353E0, type metadata accessor for FeedItemSupplementaryAttributes);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - v7;
  v33 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  v28 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v9);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v27 = &v25 - v14;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v16 = 0;
    v30 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = a3 & 0xC000000000000001;
    v17 = (v28 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v26 = a3;
    v29 = i;
    while (v31)
    {
      v19 = MEMORY[0x1DA6FB460](v16, a3, v13);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v35 = v19;
      v34(&v35);
      if (v3)
      {

        return v18;
      }

      if ((*v17)(v8, 1, v33) == 1)
      {
        sub_1D5FC4FD8(v8, &qword_1EDF353E0, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      else
      {
        v21 = v27;
        sub_1D5BE2EB4(v8, v27, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D5BE2EB4(v21, v32, type metadata accessor for FeedItemSupplementaryAttributes);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D699072C(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1D699072C((v22 > 1), v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        sub_1D5BE2EB4(v32, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for FeedItemSupplementaryAttributes);
        a3 = v26;
      }

      ++v16;
      if (v20 == v29)
      {
        return v18;
      }
    }

    if (v16 >= *(v30 + 16))
    {
      goto LABEL_21;
    }

    v19 = *(a3 + 8 * v16 + 32);

    v20 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D5FBCC78(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - v8;
  sub_1D5EA74B8(0);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v28 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v25 - v17;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = v15;
  v20 = (v15 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v20)(v9, 1, v29) == 1)
    {
      sub_1D5FC4FD8(v9, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      sub_1D5BE2EB4(v9, v18, sub_1D5EA74B8);
      sub_1D5BE2EB4(v18, v28, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698C0A8(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D698C0A8((v22 > 1), v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      sub_1D5BE2EB4(v28, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, sub_1D5EA74B8);
      a1 = v27;
    }

    if (!--v19)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1D5FBCF3C(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28 - v9;
  sub_1D5EA74B8(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v32 = &v28 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = (a3 + 32);
  v29 = v17;
  v22 = (v17 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v30 = v12;
  v31 = a2;
  while (1)
  {
    v34 = *v21;
    a1(&v34, v18);
    if (v3)
    {
      break;
    }

    if ((*v22)(v10, 1, v12) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      v24 = v32;
      sub_1D5BE2EB4(v10, v32, sub_1D5EA74B8);
      sub_1D5BE2EB4(v24, v33, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D698C0A8(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1D698C0A8((v25 > 1), v26 + 1, 1, v23);
      }

      v23[2] = v26 + 1;
      sub_1D5BE2EB4(v33, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, sub_1D5EA74B8);
      v12 = v30;
    }

    ++v21;
    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

void *sub_1D5FBD224(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF12AD8, type metadata accessor for FeedItemAuxiliaryItem);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FeedItemAuxiliaryItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(type metadata accessor for FormatContentSlotItemResolution(0) - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF12AD8, type metadata accessor for FeedItemAuxiliaryItem);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BE2EB4(v23, v33, type metadata accessor for FeedItemAuxiliaryItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D69915D0(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D69915D0((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D5BE2EB4(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FeedItemAuxiliaryItem);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1D5FBD55C(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1DA6F9CE0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_1D5FBD65C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v9 = *(v6 - 1);
    v23 = *(v6 - 2);
    v24 = v9;
    v25 = v8;

    sub_1D5C07390(v9);
    a1(&v20, &v23);
    if (v4)
    {
      break;
    }

    v10 = v24;

    sub_1D5C08648(v10);
    v12 = v20;
    v11 = v21;
    if (v20)
    {
      v13 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D5C073A0(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_1D5C073A0((v14 > 1), v15 + 1, 1, v7);
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[24 * v15];
      *(v16 + 4) = v12;
      *(v16 + 5) = v11;
      *(v16 + 6) = v13;
    }

    else
    {
      sub_1D5FC4EA8(0, v21);
    }

    v6 += 3;
    if (!--v5)
    {
      return v7;
    }
  }

  v17 = v24;

  sub_1D5C08648(v17);

  return v7;
}

void *sub_1D5FBD7E0(void (*a1)(__int128 *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *v6++;
    v16 = v10;
    a1(&v15, &v16, a2);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D699345C(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      v9 = v14;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1D699345C((v11 > 1), v12 + 1, 1, v7);
        v9 = v14;
        v7 = v8;
      }

      v7[2] = v12 + 1;
      *&v7[2 * v12 + 4] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1D5FBD90C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  (a1)(__src, a3 + 32, a2);
  while (!v3)
  {
    if (LOBYTE(__src[49]) == 255)
    {
      sub_1D5FC46A0(__src, &qword_1EC881DF8, &type metadata for HGroupLayoutContext);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D6993B58(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1D6993B58((v9 > 1), v10 + 1, 1, v6);
      }

      *(v6 + 2) = v10 + 1;
      memcpy(&v6[400 * v10 + 32], __dst, 0x189uLL);
    }

    v7 += 288;
    if (!--v4)
    {
      return v6;
    }

    (a1)(__src, v7, v8);
  }

  return v6;
}

char *sub_1D5FBDA68(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v56 = a1;
  v57 = a2;
  sub_1D5C1F6F0(0, &qword_1EC881E00, sub_1D5E2C2C8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v48 = &v46 - v9;
  sub_1D5E2C2C8(0, v8);
  v11 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v55 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v46 = &v46 - v16;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v47 = &v46 - v20;
  sub_1D5E2C428(0, v19);
  v22 = v21;
  v23 = *(v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FC4F44(0, v25);
  v29 = v28 - 8;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27, v5, v22, v31);
  sub_1D5D21194(&qword_1EDF17220, sub_1D5E2C428, MEMORY[0x1E69D7998]);
  sub_1D726238C();
  v34 = *(v29 + 44);
  sub_1D5D21194(&qword_1EDF17218, sub_1D5E2C428, MEMORY[0x1E69D79A0]);
  sub_1D7262C5C();
  if (*&v33[v34] == v58)
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_1D5C0AD80(v33, sub_1D5FC4F44);
  }

  else
  {
    v35 = v48;
    v53 = (v49 + 16);
    v54 = (v49 + 8);
    v51 = (v49 + 32);
    v52 = (v49 + 48);
    v59 = MEMORY[0x1E69E7CC0];
    v36 = v47;
    while (1)
    {
      v37 = sub_1D7262D0C();
      (*v53)(v36);
      v37(&v58, 0);
      sub_1D7262C6C();
      v56(v36);
      if (v4)
      {
        break;
      }

      (*v54)(v36, v11);
      if ((*v52)(v35, 1, v11) == 1)
      {
        sub_1D5FC4FD8(v35, &qword_1EC881E00, sub_1D5E2C2C8);
      }

      else
      {
        v50 = 0;
        v38 = *v51;
        v39 = v46;
        (*v51)(v46, v35, v11);
        v38(v55, v39, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1D69950E4(0, *(v59 + 2) + 1, 1, v59);
        }

        v41 = *(v59 + 2);
        v40 = *(v59 + 3);
        v42 = v49;
        if (v41 >= v40 >> 1)
        {
          v44 = sub_1D69950E4((v40 > 1), v41 + 1, 1, v59);
          v42 = v49;
          v59 = v44;
        }

        v43 = v59;
        *(v59 + 2) = v41 + 1;
        v4 = v50;
        v38(&v43[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41], v55, v11);
        v36 = v47;
        v35 = v48;
      }

      sub_1D7262C5C();
      if (*&v33[v34] == v58)
      {
        goto LABEL_3;
      }
    }

    (*v54)(v36, v11);
    sub_1D5C0AD80(v33, sub_1D5FC4F44);
  }

  return v59;
}

uint64_t sub_1D5FBDFF4(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v24 = i[2];
      v25[0] = v9;
      *(v25 + 9) = *(i + 57);
      v10 = i[1];
      v23[0] = *i;
      v23[1] = v10;
      v11 = i[3];
      v21 = v24;
      v22[0] = v11;
      *(v22 + 9) = *(i + 57);
      v19 = v23[0];
      v20 = v8;
      sub_1D5FC4D88(v23, &v14);
      a1(&v18, &v19);
      if (v3)
      {
        break;
      }

      v16 = v21;
      v17[0] = v22[0];
      *(v17 + 9) = *(v22 + 9);
      v14 = v19;
      v15 = v20;
      v12 = sub_1D5FC4DE4(&v14);
      if (v18)
      {
        MEMORY[0x1DA6F9CE0](v12);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v26;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    v16 = v21;
    v17[0] = v22[0];
    *(v17 + 9) = *(v22 + 9);
    v14 = v19;
    v15 = v20;
    sub_1D5FC4DE4(&v14);
  }

  return v4;
}

uint64_t sub_1D5FBE1C8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x1E69E7CC0];
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 4);
    v16[0] = *(v6 - 5);
    v16[1] = v11;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v7;
    v16[5] = v8;

    a1(&v15, v16);
    if (v3)
    {

      return v14;
    }

    if (v15)
    {
      MEMORY[0x1DA6F9CE0](v12);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v14 = v17;
    }

    v6 += 6;
    --v4;
  }

  while (v4);
  return v14;
}

uint64_t sub_1D5FBE378(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v26 = i[2];
      v27 = v9;
      v10 = i[3];
      v28 = i[4];
      v11 = i[1];
      v25[0] = *i;
      v25[1] = v11;
      v22 = v26;
      v23 = v10;
      v24 = i[4];
      v20 = v25[0];
      v21 = v8;
      sub_1D5CE9930(v25, &v14);
      a1(&v19, &v20);
      if (v3)
      {
        break;
      }

      v16 = v22;
      v17 = v23;
      v18 = v24;
      v14 = v20;
      v15 = v21;
      v12 = sub_1D5CEC67C(&v14);
      if (v19)
      {
        MEMORY[0x1DA6F9CE0](v12);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v29;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    v16 = v22;
    v17 = v23;
    v18 = v24;
    v14 = v20;
    v15 = v21;
    sub_1D5CEC67C(&v14);
  }

  return v4;
}

void *sub_1D5FBE51C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x1DA6F9CE0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t sub_1D5FBE6FC(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = result;
    for (i = v12; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v15 = (a4)(0, a2);
      v17 = *(v15 - 8);
      result = v15 - 8;
      v16 = v17;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      a1(&v29, a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * i);
      if (v6)
      {

        return v28;
      }

      if ((~v29 & 0xF000000000000007) != 0)
      {
        break;
      }

      result = a6();
      if (v12 == v7)
      {
        return v28;
      }
    }

    v26 = v29;
    v18 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = a5(0, *(v28 + 16) + 1, 1, v28);
    }

    v19 = v18;
    v20 = *(v18 + 16);
    v21 = v19;
    v22 = *(v19 + 24);
    v23 = v20 + 1;
    v24 = v26;
    if (v20 >= v22 >> 1)
    {
      v25 = a5(v22 > 1, v20 + 1, 1, v21);
      v23 = v20 + 1;
      v21 = v25;
      v24 = v26;
    }

    *(v21 + 16) = v23;
    result = v21;
    *(v21 + 8 * v20 + 32) = v24;
  }

  while (v12 != v7);
  return result;
}

uint64_t FeedModelFactory.create<A>(headline:context:namespace:metadata:nativeAdInfo:)@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a6;
  v47 = a9;
  v48 = a8;
  v45 = a7;
  v46 = a5;
  v42 = a2;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v44, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v41 - v23;
  v25 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7270C10;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;

  v27 = [a1 identifier];
  v28 = sub_1D726207C();
  v30 = v29;

  *(v26 + 48) = v28;
  *(v26 + 56) = v30;
  v49 = v26;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v25, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v31 = sub_1D7261F3C();
  v33 = v32;

  v34 = v31;
  v35 = v42;
  sub_1D5D1FA14(v34, v33, a1, v42, v43, v24);

  sub_1D5BD81F0(v24, v20, type metadata accessor for FeedHeadline);
  sub_1D5BD81F0(v35, v17, type metadata accessor for FeedContext);
  v36 = v41;
  v37 = v45;
  (*(v12 + 16))(v41, v46, v45);
  v38 = sub_1D5D21194(&unk_1EDF34AD8, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  v39 = sub_1D5D21194(&qword_1EDF34AE8, type metadata accessor for FeedHeadline, &protocol conformance descriptor for FeedHeadline);
  FeedModel<>.init(model:context:namespace:metadata:)(v20, v17, 0, 0, v36, v44, v37, v38, v47, v39, v48);
  return sub_1D5C0AD80(v24, type metadata accessor for FeedHeadline);
}

uint64_t FeedModelFactory.create(headline:context:namespace:nativeAdInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v35 = a3;
  v37 = a7;
  sub_1D5C1F6F0(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for FeedHeadline(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7270C10;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a1;
  *(v21 + 56) = a2;
  v38 = v21;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v20, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v22 = sub_1D7261F3C();
  v24 = v23;

  v25 = v22;
  v26 = v35;
  sub_1D70FFEE8(v25, v24, a1, a2, v35, v36, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D5FC4FD8(v14, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5D211DC(0);
    return (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  }

  else
  {
    sub_1D5BE2EB4(v14, v19, type metadata accessor for FeedHeadline);
    v29 = v37;
    sub_1D5BE2EB4(v19, v37, type metadata accessor for FeedHeadline);
    sub_1D5D211DC(0);
    v31 = v30;
    sub_1D5BD81F0(v26, v29 + *(v30 + 52), type metadata accessor for FeedContext);
    v32 = (v29 + *(v31 + 56));
    *v32 = 0;
    v32[1] = 0;
    v33 = (v29 + *(v31 + 64));
    *v33 = sub_1D5C00104;
    v33[1] = 0;
    return (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  }
}

__n128 FeedModelFactory.create(issue:context:namespace:traits:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v15 = [a1 identifier];
  v16 = sub_1D726207C();
  v18 = v17;

  *(v14 + 48) = v16;
  *(v14 + 56) = v18;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v13, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v19 = sub_1D7261F3C();
  v21 = v20;

  v30 = v11;
  v31 = v12;
  sub_1D71CCC34(v19, v21, a1, a2, &v30, v32);

  sub_1D5FC4A58(0, &qword_1EC881DB8, sub_1D5FC45A4, sub_1D5FC45F8, &type metadata for FeedIssue);
  v23 = v22;
  sub_1D5BD81F0(a2, a6 + *(v22 + 52), type metadata accessor for FeedContext);
  v24 = v33[0];
  *(a6 + 96) = v32[6];
  *(a6 + 112) = v24;
  *(a6 + 121) = *(v33 + 9);
  v25 = v32[3];
  *(a6 + 32) = v32[2];
  *(a6 + 48) = v25;
  v26 = v32[5];
  *(a6 + 64) = v32[4];
  *(a6 + 80) = v26;
  result = v32[1];
  *a6 = v32[0];
  *(a6 + 16) = result;
  v28 = (a6 + *(v23 + 56));
  *v28 = 0;
  v28[1] = 0;
  v29 = (a6 + *(v23 + 64));
  *v29 = sub_1D5C00104;
  v29[1] = 0;
  return result;
}

uint64_t (*FeedModelFactory.create<A>(issue:context:namespace:metadata:traits:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>))(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v41 = a9;
  v42 = a8;
  v39 = a7;
  v40 = a5;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *a6;
  v36 = *(a6 + 8);
  v20 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7270C10;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;

  v22 = [a1 identifier];
  v23 = sub_1D726207C();
  v25 = v24;

  *(v21 + 48) = v23;
  *(v21 + 56) = v25;
  *&v43[0] = v21;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v20, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v26 = sub_1D7261F3C();
  v28 = v27;

  *&v43[0] = v37;
  BYTE8(v43[0]) = v36;
  v29 = v26;
  v30 = v38;
  sub_1D71CCC34(v29, v28, a1, v38, v43, v45);

  v43[6] = v45[6];
  v44[0] = v46[0];
  *(v44 + 9) = *(v46 + 9);
  v43[2] = v45[2];
  v43[3] = v45[3];
  v43[4] = v45[4];
  v43[5] = v45[5];
  v43[0] = v45[0];
  v43[1] = v45[1];
  sub_1D5BD81F0(v30, v19, type metadata accessor for FeedContext);
  v31 = v39;
  (*(v13 + 16))(v15, v40, v39);
  v32 = sub_1D5FC45A4();
  v33 = sub_1D5FC45F8();
  return FeedModel<>.init(model:context:namespace:metadata:)(v43, v19, 0, 0, v15, &type metadata for FeedIssue, v31, v32, v41, v33, v42);
}

id FeedModelFactory.create(tag:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  *(v13 + 48) = v15;
  *(v13 + 56) = v17;
  v35 = v13;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v18 = sub_1D7261F3C();
  v20 = v19;

  result = [*(*(v6 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v22 = result;
    v23 = sub_1D726267C();

    v24 = sub_1D5B86020(v23);

    v25 = [a1 identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    LOBYTE(v25) = sub_1D5BE240C(v26, v28, v24);

    *a5 = v18;
    *(a5 + 8) = v20;
    *(a5 + 16) = a1;
    *(a5 + 24) = 0;
    *(a5 + 25) = v35;
    *(a5 + 28) = *(&v35 + 3);
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 41) = *v34;
    *(a5 + 44) = *&v34[3];
    v29 = MEMORY[0x1E69E7CD0];
    *(a5 + 48) = 0;
    *(a5 + 56) = 0xE000000000000000;
    *(a5 + 64) = v25 & 1;
    *(a5 + 72) = v29;
    *(a5 + 80) = xmmword_1D7279980;
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984, &type metadata for FeedTag);
    v31 = v30;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0;
    sub_1D5BD81F0(a2, a5 + *(v30 + 52), type metadata accessor for FeedContext);
    v32 = (a5 + *(v31 + 56));
    *v32 = 0;
    v32[1] = 0;
    v33 = (a5 + *(v31 + 64));
    *v33 = sub_1D5C00104;
    v33[1] = 0;
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FeedModelFactory.create<A>(tag:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v43 = a8;
  v44 = a7;
  v39 = a2;
  v45 = a6;
  v40 = *(a6 - 8);
  v41 = a5;
  MEMORY[0x1EEE9AC00](a1, a2);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;

  v20 = [a1 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  *(v19 + 48) = v21;
  *(v19 + 56) = v23;
  v47[0] = v19;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v18, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v24 = sub_1D7261F3C();
  v26 = v25;

  result = [*(*(v9 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v28 = result;
    v29 = sub_1D726267C();

    v30 = sub_1D5B86020(v29);

    v31 = [a1 identifier];
    v32 = sub_1D726207C();
    v34 = v33;

    LOBYTE(v31) = sub_1D5BE240C(v32, v34, v30);

    v55 = xmmword_1D7279980;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    v47[0] = v24;
    v47[1] = v26;
    v47[2] = a1;
    v48 = 0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v49 = 0;
    v50 = 0;
    v53 = v31 & 1;
    v54 = MEMORY[0x1E69E7CD0];
    sub_1D5EE5AF8(v47, v46);
    sub_1D5BD81F0(v39, v17, type metadata accessor for FeedContext);
    v35 = v42;
    v36 = v45;
    (*(v40 + 16))(v42, v41, v45);
    v37 = sub_1D5FC464C();
    v38 = sub_1D5EEF984();
    swift_unknownObjectRetain();
    FeedModel<>.init(model:context:namespace:metadata:)(v46, v17, 0, 0, v35, &type metadata for FeedTag, v36, v37, v43, v38, v44);
    return sub_1D5EE5B54(v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedModelFactory.create(tag:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a1;
  *(v13 + 56) = a2;
  *&v40 = v13;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v14 = sub_1D7261F3C();
  v16 = v15;

  sub_1D6BAD648(v14, v16, v31);

  if (*(&v31[0] + 1))
  {
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v17 = v39;
    v49 = v39;
    v18 = v32;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v40 = v31[0];
    v41 = v31[1];
    v19 = v37;
    v20 = v38;
    *(a6 + 96) = v36;
    *(a6 + 112) = v19;
    *(a6 + 128) = v20;
    *(a6 + 144) = v17;
    v21 = v43;
    v22 = v44;
    *(a6 + 32) = v18;
    *(a6 + 48) = v21;
    v23 = v45;
    *(a6 + 64) = v22;
    *(a6 + 80) = v23;
    v24 = v41;
    *a6 = v40;
    *(a6 + 16) = v24;
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984, &type metadata for FeedTag);
    v26 = v25;
    sub_1D5BD81F0(a3, a6 + *(v25 + 52), type metadata accessor for FeedContext);
    v27 = (a6 + *(v26 + 56));
    *v27 = 0;
    v27[1] = 0;
    v28 = (a6 + *(v26 + 64));
    *v28 = sub_1D5C00104;
    v28[1] = 0;
    return (*(*(v26 - 8) + 56))(a6, 0, 1, v26);
  }

  else
  {
    sub_1D5FC46A0(v31, &unk_1EDF34F60, &type metadata for FeedTag);
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984, &type metadata for FeedTag);
    return (*(*(v30 - 8) + 56))(a6, 1, 1, v30);
  }
}

uint64_t FeedModelFactory.create(webEmbed:context:namespace:)@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = a1[1];
  *(v11 + 48) = *a1;
  *(v11 + 56) = v12;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v13 = sub_1D7261F3C();
  v15 = v14;

  sub_1D6BC7B84(v13, v15, a1, a2, a5);

  sub_1D5FC4710(0);
  v17 = v16;
  result = sub_1D5BD81F0(a2, a5 + *(v16 + 52), type metadata accessor for FeedContext);
  v19 = (a5 + *(v17 + 56));
  *v19 = 0;
  v19[1] = 0;
  v20 = (a5 + *(v17 + 64));
  *v20 = sub_1D5C00104;
  v20[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(webEmbed:context:namespace:metadata:)@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a2;
  v43 = a8;
  v44 = a7;
  v41 = a6;
  v42 = a5;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v40, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v37 - v22);
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = a1[1];
  *(v25 + 48) = *a1;
  *(v25 + 56) = v26;
  v45 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v27 = sub_1D7261F3C();
  v29 = v28;

  v30 = v27;
  v31 = v38;
  sub_1D6BC7B84(v30, v29, a1, v38, v23);

  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedWebEmbed);
  sub_1D5BD81F0(v31, v16, type metadata accessor for FeedContext);
  v32 = v39;
  v33 = v41;
  (*(v11 + 16))(v39, v42, v41);
  v34 = sub_1D5D21194(&qword_1EDF12B90, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  v35 = sub_1D5D21194(&qword_1EDF12B98, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  FeedModel<>.init(model:context:namespace:metadata:)(v19, v16, 0, 0, v32, v40, v33, v34, v43, v35, v44);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedWebEmbed);
}

uint64_t FeedModelFactory.create(customItem:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FeedCustomItem(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7270C10;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v17 = a1[1];
  *(v16 + 48) = *a1;
  *(v16 + 56) = v17;
  v30[1] = v16;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v15, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v18 = sub_1D7261F3C();
  v20 = v19;

  sub_1D5BD81F0(a1, v14 + *(v11 + 28), type metadata accessor for FormatCustomItem.Resolved);
  v21 = (a1 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 32));
  v22 = *v21;
  v23 = v21[1];
  v24 = (v14 + *(v11 + 32));
  *v14 = v18;
  v14[1] = v20;
  *v24 = v22;
  v24[1] = v23;
  sub_1D5BD81F0(v14, a5, type metadata accessor for FeedCustomItem);
  sub_1D5FC47F0(0);
  v26 = v25;
  sub_1D5BD81F0(a2, a5 + *(v25 + 52), type metadata accessor for FeedContext);
  v27 = (a5 + *(v26 + 56));
  *v27 = 0;
  v27[1] = 0;
  v28 = (a5 + *(v26 + 64));
  *v28 = sub_1D5C00104;
  v28[1] = 0;

  return sub_1D5C0AD80(v14, type metadata accessor for FeedCustomItem);
}

uint64_t FeedModelFactory.create<A>(customItem:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v46 = a7;
  v43 = a6;
  v44 = a5;
  v42 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v40 - v22);
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v26 = a1[1];
  *(v25 + 48) = *a1;
  *(v25 + 56) = v26;
  v47 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v27 = sub_1D7261F3C();
  v29 = v28;

  sub_1D5BD81F0(a1, v23 + *(v16 + 20), type metadata accessor for FormatCustomItem.Resolved);
  v30 = (a1 + *(type metadata accessor for FormatCustomItem.Resolved(0) + 32));
  v31 = *v30;
  v32 = v30[1];
  v33 = (v23 + *(v16 + 24));
  *v23 = v27;
  v23[1] = v29;
  *v33 = v31;
  v33[1] = v32;
  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedCustomItem);
  v34 = v40;
  sub_1D5BD81F0(v42, v40, type metadata accessor for FeedContext);
  v35 = v41;
  v36 = v43;
  (*(v11 + 16))(v41, v44, v43);
  v37 = sub_1D5D21194(&qword_1EDF15718, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
  v38 = sub_1D5D21194(&qword_1EDF15720, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);

  FeedModel<>.init(model:context:namespace:metadata:)(v19, v34, 0, 0, v35, v16, v36, v37, v45, v38, v46);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedCustomItem);
}

uint64_t FeedModelFactory.createBannerAd(context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[10];
  v10 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v9);
  (*(v10 + 8))(v9, v10);
  sub_1D5FC48D0(0);
  v12 = v11;
  sub_1D5BD81F0(a1, a4 + *(v11 + 52), type metadata accessor for FeedContext);
  v13 = (a4 + *(v12 + 56));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a4 + *(v12 + 64));
  *v14 = sub_1D5C00104;
  v14[1] = 0;
}

uint64_t FeedModelFactory.createBannerAd<A>(context:namespace:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v30 = a6;
  v31 = a5;
  v28 = a1;
  v29 = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - v21;
  v23 = v6[10];
  v24 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 7, v23);
  (*(v24 + 8))(v23, v24);
  sub_1D5BD81F0(v22, v18, type metadata accessor for FeedBannerAd);
  sub_1D5BD81F0(v28, v14, type metadata accessor for FeedContext);
  (*(v8 + 16))(v10, v29, a4);
  v25 = sub_1D5D21194(&qword_1EDF12C50, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
  v26 = sub_1D5D21194(&qword_1EDF34B10, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
  FeedModel<>.init(model:context:namespace:metadata:)(v18, v14, 0, 0, v10, v15, a4, v25, v30, v26, v31);
  return sub_1D5C0AD80(v22, type metadata accessor for FeedBannerAd);
}

uint64_t FeedModelFactory.create(puzzle:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  swift_getObjectType();

  v13 = [a1 identifier];
  v14 = sub_1D726207C();
  v16 = v15;

  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  v48[0] = v12;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v11, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v43 = sub_1D7261F3C();
  v18 = v17;

  v19 = *(v6 + 96);
  v20 = v19[10];
  v21 = v19[11];
  __swift_project_boxed_opaque_existential_1(v19 + 7, v20);
  v22 = [a1 identifier];
  v23 = sub_1D726207C();
  v25 = v24;

  v26 = (*(*(v21 + 8) + 56))(v23, v25, v20);

  v27 = v19[5];
  v28 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v27);
  (*(v28 + 16))(&v49, a1, v27, v28);
  LOBYTE(v11) = v49;
  sub_1D5B68374((v19 + 12), v48);
  sub_1D5B68374((v19 + 17), v47);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = xmmword_1D728A8D0;
  *(a5 + 40) = v43;
  *(a5 + 48) = v18;
  *(a5 + 56) = a1;
  *(a5 + 64) = v26;
  *(a5 + 72) = v11;
  sub_1D5C3AE10(v48, a5 + 88, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D5C3AE10(v47, a5 + 128, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5C3AE10(v45, a5 + 168, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  *(a5 + 80) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v30 = [a1 teaserClue];
    v29 = 0x8000000000;
    if (v30)
    {
      v31 = v30;
      v32 = sub_1D726207C();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v29 = 0x28000000000;
      }
    }
  }

  else
  {
    v29 = 0x8000000000;
  }

  v36 = [a1 thumbnailSmallImageAssetHandle];
  if (v36)
  {

    v29 |= 4uLL;
  }

  v37 = [a1 thumbnailLargeImageAssetHandle];
  if (v37)
  {

    v29 |= 0x40000000000uLL;
  }

  sub_1D5BFB774(v45, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB774(v47, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5BFB774(v48, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  *a5 = v29;
  sub_1D5FC4A58(0, &qword_1EDF12FF8, sub_1D5FC49B0, sub_1D5FC4A04, &type metadata for FeedPuzzle);
  v39 = v38;
  result = sub_1D5BD81F0(a2, a5 + *(v38 + 52), type metadata accessor for FeedContext);
  v41 = (a5 + *(v39 + 56));
  *v41 = 0;
  v41[1] = 0;
  v42 = (a5 + *(v39 + 64));
  *v42 = sub_1D5C00104;
  v42[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(puzzle:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v56 = a8;
  v57 = a7;
  v52 = a2;
  v58 = a6;
  v53 = *(a6 - 8);
  v54 = a5;
  MEMORY[0x1EEE9AC00](a1, a2);
  v55 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v50[1] = swift_getObjectType();

  v19 = [a1 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  *(v18 + 48) = v20;
  *(v18 + 56) = v22;
  v64[0] = v18;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v17, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v50[0] = sub_1D7261F3C();
  v24 = v23;

  v25 = *(v9 + 96);
  v26 = v25[10];
  v27 = v25[11];
  __swift_project_boxed_opaque_existential_1(v25 + 7, v26);
  v28 = [a1 identifier];
  v29 = sub_1D726207C();
  v31 = v30;

  v32 = (*(*(v27 + 8) + 56))(v29, v31, v26);

  v33 = v25[5];
  v34 = v25[6];
  __swift_project_boxed_opaque_existential_1(v25 + 2, v33);
  (*(v34 + 16))(&v63, a1, v33, v34);
  LOBYTE(v19) = v63;
  sub_1D5B68374((v25 + 12), v59);
  sub_1D5B68374((v25 + 17), v62);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v64[1] = 0;
  v65 = 1;
  v66 = xmmword_1D728A8D0;
  v67 = v50[0];
  v68 = v24;
  v69 = a1;
  v70 = v32;
  v71 = v19;
  sub_1D5C3AE10(v59, &v73, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  sub_1D5C3AE10(v62, &v74, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5C3AE10(v60, &v75, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v72 = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
  {
    v36 = [a1 teaserClue];
    v35 = 0x8000000000;
    if (v36)
    {
      v37 = v36;
      v38 = sub_1D726207C();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v35 = 0x28000000000;
      }
    }
  }

  else
  {
    v35 = 0x8000000000;
  }

  v42 = [a1 thumbnailSmallImageAssetHandle];
  if (v42)
  {

    v35 |= 4uLL;
  }

  v43 = [a1 thumbnailLargeImageAssetHandle];
  if (v43)
  {

    v35 |= 0x40000000000uLL;
  }

  sub_1D5BFB774(v60, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB774(v62, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D5BFB774(v59, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
  v64[0] = v35;
  sub_1D5F2DEAC(v64, v59);
  v44 = v51;
  sub_1D5BD81F0(v52, v51, type metadata accessor for FeedContext);
  v45 = v55;
  v46 = v58;
  (*(v53 + 16))(v55, v54, v58);
  v47 = sub_1D5FC49B0();
  v48 = sub_1D5FC4A04();
  FeedModel<>.init(model:context:namespace:metadata:)(v59, v44, 0, 0, v45, &type metadata for FeedPuzzle, v46, v47, v56, v48, v57);
  return sub_1D5F2DF58(v64);
}

uint64_t FeedModelFactory.create(puzzleType:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = [a1 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 48) = v13;
  *(v11 + 56) = v15;
  v24 = v11;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v16 = sub_1D7261F3C();
  v18 = v17;

  sub_1D5FC4A58(0, &unk_1EC89B010, sub_1D5FC4AE8, sub_1D5FC4B3C, &type metadata for FeedPuzzleType);
  v20 = v19;
  sub_1D5BD81F0(a2, a5 + *(v19 + 52), type metadata accessor for FeedContext);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 17) = v24;
  *(a5 + 20) = *(&v24 + 3);
  *(a5 + 24) = xmmword_1D728A8E0;
  *(a5 + 40) = v16;
  *(a5 + 48) = v18;
  *(a5 + 56) = a1;
  v21 = (a5 + *(v20 + 56));
  *v21 = 0;
  v21[1] = 0;
  v22 = (a5 + *(v20 + 64));
  *v22 = sub_1D5C00104;
  v22[1] = 0;
  return swift_unknownObjectRetain();
}

uint64_t FeedModelFactory.create(puzzleStatistic:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v9 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for PuzzleStatistic(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7270C10;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  *(v22 + 48) = PuzzleStatistic.identifier.getter();
  *(v22 + 56) = v23;
  v44 = v22;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v21, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v24 = sub_1D7261F3C();
  v26 = v25;

  sub_1D5BD81F0(a1, v20, type metadata accessor for PuzzleStatistic);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = xmmword_1D728A8F0;
  *(a5 + 40) = v24;
  *(a5 + 48) = v26;
  v27 = type metadata accessor for FeedPuzzleStatistic(0);
  sub_1D5BD81F0(v20, a5 + *(v27 + 32), type metadata accessor for PuzzleStatistic);
  v28 = *(v17 + 28);
  sub_1D5BD81F0(&v20[v28], v15, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v30 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v31 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
    if ((v31 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D5C0AD80(v15, type metadata accessor for PuzzleStatisticCategory);
  }

  v30 = 0x80000000000;
LABEL_8:
  v32 = &v20[v28];
  v33 = v42;
  sub_1D5BD81F0(v32, v42, type metadata accessor for PuzzleStatisticCategory);
  v34 = swift_getEnumCaseMultiPayload();
  sub_1D5C0AD80(v33, type metadata accessor for PuzzleStatisticCategory);
  if (v34 == 2)
  {
    v35 = v30 | 0x1000000000000;
  }

  else
  {
    v35 = v30;
  }

  sub_1D5C0AD80(v20, type metadata accessor for PuzzleStatistic);
  *a5 = v35;
  sub_1D5FC4B90(0);
  v37 = v36;
  result = sub_1D5BD81F0(v43, a5 + *(v36 + 52), type metadata accessor for FeedContext);
  v39 = (a5 + *(v37 + 56));
  *v39 = 0;
  v39[1] = 0;
  v40 = (a5 + *(v37 + 64));
  *v40 = sub_1D5C00104;
  v40[1] = 0;
  return result;
}

uint64_t (*FeedModelFactory.create<A>(puzzleType:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>))(uint64_t a1, uint64_t a2)
{
  v34 = a8;
  v35 = a7;
  v32 = a2;
  v33 = a5;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  v21 = [a1 identifier];
  v22 = sub_1D726207C();
  v24 = v23;

  *(v20 + 48) = v22;
  *(v20 + 56) = v24;
  v36[0] = v20;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v19, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v25 = sub_1D7261F3C();
  v27 = v26;

  v36[0] = 0;
  v36[1] = 0;
  v37 = 1;
  *v38 = *v43;
  *&v38[3] = *&v43[3];
  v39 = xmmword_1D728A8E0;
  v40 = v25;
  v41 = v27;
  v42 = a1;
  sub_1D5BD81F0(v32, v18, type metadata accessor for FeedContext);
  (*(v12 + 16))(v14, v33, a6);
  v28 = sub_1D5FC4AE8();
  v29 = sub_1D5FC4B3C();
  swift_unknownObjectRetain();
  return FeedModel<>.init(model:context:namespace:metadata:)(v36, v18, 0, 0, v14, &type metadata for FeedPuzzleType, a6, v28, v34, v29, v35);
}

uint64_t FeedModelFactory.create(recipe:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;

  v12 = [a1 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  *(v11 + 48) = v13;
  *(v11 + 56) = v15;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v10, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v16 = sub_1D7261F3C();
  v18 = v17;

  sub_1D67A22E4(v16, v18, a1, a2, a5);

  sub_1D5FC4C70(0);
  v20 = v19;
  result = sub_1D5BD81F0(a2, a5 + *(v19 + 52), type metadata accessor for FeedContext);
  v22 = (a5 + *(v20 + 56));
  *v22 = 0;
  v22[1] = 0;
  v23 = (a5 + *(v20 + 64));
  *v23 = sub_1D5C00104;
  v23[1] = 0;
  return result;
}

uint64_t FeedModelFactory.create<A>(recipe:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a2;
  v46 = a8;
  v47 = a7;
  v44 = a6;
  v45 = a5;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v43, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v40 - v22;
  v24 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7270C10;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;

  v26 = [a1 identifier];
  v27 = sub_1D726207C();
  v29 = v28;

  *(v25 + 48) = v27;
  *(v25 + 56) = v29;
  v48 = v25;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v24, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v30 = sub_1D7261F3C();
  v32 = v31;

  v33 = v30;
  v34 = v42;
  sub_1D67A22E4(v33, v32, a1, v42, v23);

  sub_1D5BD81F0(v23, v19, type metadata accessor for FeedRecipe);
  sub_1D5BD81F0(v34, v16, type metadata accessor for FeedContext);
  v35 = v41;
  v36 = v44;
  (*(v11 + 16))(v41, v45, v44);
  v37 = sub_1D5D21194(&qword_1EDF12E08, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
  v38 = sub_1D5D21194(&qword_1EDF12E10, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
  FeedModel<>.init(model:context:namespace:metadata:)(v19, v16, 0, 0, v35, v43, v36, v37, v46, v38, v47);
  return sub_1D5C0AD80(v23, type metadata accessor for FeedRecipe);
}

uint64_t FeedModelFactory.create<A>(puzzleStatistic:context:namespace:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a8;
  v63 = a7;
  v60 = a5;
  v54 = a3;
  v64 = a6;
  v10 = *(a6 - 8);
  v57 = a2;
  v58 = v10;
  MEMORY[0x1EEE9AC00](a1, a2);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedContext(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v55, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for PuzzleStatistic(0);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v56 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v54 - v32;
  v34 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7270C10;
  *(v35 + 32) = v54;
  *(v35 + 40) = a4;

  *(v35 + 48) = PuzzleStatistic.identifier.getter();
  *(v35 + 56) = v36;
  v65 = v35;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v34, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v37 = sub_1D7261F3C();
  v39 = v38;

  sub_1D5BD81F0(a1, v26, type metadata accessor for PuzzleStatistic);
  *v33 = 0;
  *(v33 + 1) = 0;
  v33[16] = 1;
  *(v33 + 24) = xmmword_1D728A8F0;
  *(v33 + 5) = v37;
  *(v33 + 6) = v39;
  v40 = v27;
  sub_1D5BD81F0(v26, &v33[*(v27 + 32)], type metadata accessor for PuzzleStatistic);
  v41 = *(v23 + 28);
  sub_1D5BD81F0(&v26[v41], v21, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v43 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v44 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
    if ((v44 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D5C0AD80(v21, type metadata accessor for PuzzleStatisticCategory);
  }

  v43 = 0x80000000000;
LABEL_8:
  sub_1D5BD81F0(&v26[v41], v17, type metadata accessor for PuzzleStatisticCategory);
  v45 = swift_getEnumCaseMultiPayload();
  sub_1D5C0AD80(v17, type metadata accessor for PuzzleStatisticCategory);
  if (v45 == 2)
  {
    v46 = v43 | 0x1000000000000;
  }

  else
  {
    v46 = v43;
  }

  sub_1D5C0AD80(v26, type metadata accessor for PuzzleStatistic);
  *v33 = v46;
  v47 = v56;
  sub_1D5BD81F0(v33, v56, type metadata accessor for FeedPuzzleStatistic);
  v48 = v59;
  sub_1D5BD81F0(v57, v59, type metadata accessor for FeedContext);
  v49 = v61;
  v50 = v64;
  (*(v58 + 16))(v61, v60, v64);
  v51 = sub_1D5D21194(&qword_1EC881DD8, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
  v52 = sub_1D5D21194(&qword_1EC881DE0, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
  FeedModel<>.init(model:context:namespace:metadata:)(v47, v48, 0, 0, v49, v40, v50, v51, v62, v52, v63);
  return sub_1D5C0AD80(v33, type metadata accessor for FeedPuzzleStatistic);
}

void *FeedModelFactory.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t FeedModelFactory.__deallocating_deinit()
{
  FeedModelFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedModelFactory.createAuxiliary(auxiliary:context:parentIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v12[2] = a3;
  v12[3] = a4;
  v12[5] = a2;

  v10 = sub_1D5FBD224(sub_1D5FC4D50, v12, v8);
  *a5 = a3;
  a5[1] = a4;
  a5[2] = v10;
  a5[3] = v9;
  a5[4] = 0x7261696C69787561;
  a5[5] = 0xE900000000000079;
}

id sub_1D5FC2BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X4>, _OWORD *a6@<X8>)
{
  ObjectType = a5;
  v233 = a4;
  v235 = a2;
  v236 = a3;
  v237 = a6;
  v224 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v224, v7);
  v223 = (&v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for FormatCustomItem.Resolved(0);
  MEMORY[0x1EEE9AC00](v222, v9);
  v228 = (&v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v231 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v231, v11);
  v230 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v225 = &v220 - v15;
  v221 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v221, v16);
  v229 = (&v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v220, v18);
  v227 = &v220 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v226 = &v220 - v22;
  v23 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = (&v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for FormatWebEmbed.Resolved(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = (&v220 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v220 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C1F6F0(0, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v220 - v37;
  v39 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v220 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = (&v220 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = a1;
  sub_1D5BD81F0(a1, v46, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v63 = v228;
          sub_1D5BE2EB4(v46, v228, type metadata accessor for FormatCustomItem.Resolved);
          v65 = *v63;
          v64 = v63[1];
          v66 = MEMORY[0x1E69E6158];
          sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1D7279970;
          *(v67 + 32) = 0x7261696C69787561;
          *(v67 + 40) = 0xE900000000000079;
          v68 = v236;
          *(v67 + 48) = v235;
          *(v67 + 56) = v68;
          *(v67 + 64) = v65;
          *(v67 + 72) = v64;
          *&v245 = v67;
          sub_1D5B5D3F4(0, &qword_1EDF43BA0, v66, MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();

          v69 = sub_1D7261F3C();
          v71 = v70;

          v73 = v223;
          v72 = v224;
          sub_1D5BD81F0(v63, v223 + *(v224 + 20), type metadata accessor for FormatCustomItem.Resolved);
          v74 = (v63 + *(v222 + 32));
          v75 = *v74;
          v76 = v74[1];
          v77 = (v73 + *(v72 + 24));
          *v73 = v69;
          v73[1] = v71;
          *v77 = v75;
          v77[1] = v76;
          v78 = v73;
          v56 = v237;
          sub_1D5BE2EB4(v78, v237, type metadata accessor for FeedCustomItem);
          type metadata accessor for FeedItem(0);
          swift_storeEnumTagMultiPayload();
          v79 = type metadata accessor for FormatContentSlotItemResolution(0);
          v80 = *(v234 + *(v79 + 28));
          v81 = *(v234 + *(v79 + 24));
          v60 = type metadata accessor for FeedItemAuxiliaryItem(0);
          *(v56 + *(v60 + 20)) = v80;
          *(v56 + *(v60 + 24)) = v81;

          v61 = type metadata accessor for FormatCustomItem.Resolved;
          v62 = v63;
          goto LABEL_10;
        }

        sub_1D5C0AD80(v46, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v163 = type metadata accessor for FeedItemAuxiliaryItem(0);
        return (*(*(v163 - 8) + 56))(v237, 1, 1, v163);
      }

      v131 = *v46;
      v132 = [*v46 identifier];
      v133 = sub_1D726207C();
      v135 = v134;

      v136 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D7279970;
      *(v137 + 32) = 0x7261696C69787561;
      *(v137 + 40) = 0xE900000000000079;
      v138 = v236;
      *(v137 + 48) = v235;
      *(v137 + 56) = v138;
      *(v137 + 64) = v133;
      *(v137 + 72) = v135;
      *&v245 = v137;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v136, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v139 = sub_1D7261F3C();
      v141 = v140;

      sub_1D67A22E4(v139, v141, v131, ObjectType, v34);

      v95 = v237;
      sub_1D5BE2EB4(v34, v237, type metadata accessor for FeedRecipe);
      type metadata accessor for FeedItem(0);
LABEL_45:
      swift_storeEnumTagMultiPayload();
      v218 = type metadata accessor for FormatContentSlotItemResolution(0);
      v211 = *(v234 + *(v218 + 28));
      v212 = *(v234 + *(v218 + 24));
LABEL_46:
      v219 = type metadata accessor for FeedItemAuxiliaryItem(0);
      *(v95 + *(v219 + 20)) = v211;
      *(v95 + *(v219 + 24)) = v212;
      (*(*(v219 - 8) + 56))(v95, 0, 1, v219);
      goto LABEL_47;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v96 = *v46;
      v97 = [*v46 identifier];
      v98 = sub_1D726207C();
      v100 = v99;

      v101 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1D7279970;
      *(v102 + 32) = 0x7261696C69787561;
      *(v102 + 40) = 0xE900000000000079;
      v103 = v236;
      *(v102 + 48) = v235;
      *(v102 + 56) = v103;
      *(v102 + 64) = v98;
      *(v102 + 72) = v100;
      *&v245 = v102;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v101, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v104 = sub_1D7261F3C();
      v106 = v105;

      v107 = v237;
      *v237 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = 1;
      *(v107 + 17) = v245;
      *(v107 + 20) = *(&v245 + 3);
      *(v107 + 24) = xmmword_1D728A8E0;
      *(v107 + 40) = v104;
      *(v107 + 48) = v106;
      *(v107 + 56) = v96;
      type metadata accessor for FeedItem(0);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      v127 = type metadata accessor for FormatContentSlotItemResolution(0);
      v128 = *(v234 + *(v127 + 28));
      v129 = *(v234 + *(v127 + 24));
      v130 = type metadata accessor for FeedItemAuxiliaryItem(0);
      *(v107 + *(v130 + 20)) = v128;
      *(v107 + *(v130 + 24)) = v129;
      (*(*(v130 - 8) + 56))(v107, 0, 1, v130);
LABEL_47:
    }

    v179 = v226;
    sub_1D5BE2EB4(v46, v226, type metadata accessor for PuzzleStatistic);
    v180 = PuzzleStatistic.identifier.getter();
    v182 = v181;
    v183 = MEMORY[0x1E69E6158];
    sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_1D7279970;
    *(v184 + 32) = 0x7261696C69787561;
    *(v184 + 40) = 0xE900000000000079;
    v185 = v236;
    *(v184 + 48) = v235;
    *(v184 + 56) = v185;
    *(v184 + 64) = v180;
    *(v184 + 72) = v182;
    *&v245 = v184;
    sub_1D5B5D3F4(0, &qword_1EDF43BA0, v183, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v186 = sub_1D7261F3C();
    v188 = v187;

    v189 = v227;
    sub_1D5BD81F0(v179, v227, type metadata accessor for PuzzleStatistic);
    v190 = v229;
    *v229 = 0;
    *(v190 + 8) = 0;
    *(v190 + 16) = 1;
    *(v190 + 24) = xmmword_1D728A8F0;
    *(v190 + 40) = v186;
    *(v190 + 48) = v188;
    sub_1D5BD81F0(v189, v190 + *(v221 + 32), type metadata accessor for PuzzleStatistic);
    v191 = *(v220 + 20);
    v192 = v225;
    sub_1D5BD81F0(v189 + v191, v225, type metadata accessor for PuzzleStatisticCategory);
    v193 = swift_getEnumCaseMultiPayload();
    if ((v193 - 2) < 2)
    {
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
LABEL_26:
      v194 = 0x100000000000;
LABEL_41:
      v214 = v189 + v191;
      v215 = v230;
      sub_1D5BD81F0(v214, v230, type metadata accessor for PuzzleStatisticCategory);
      v216 = swift_getEnumCaseMultiPayload();
      sub_1D5C0AD80(v215, type metadata accessor for PuzzleStatisticCategory);
      if (v216 == 2)
      {
        v217 = v194 | 0x1000000000000;
      }

      else
      {
        v217 = v194;
      }

      sub_1D5C0AD80(v189, type metadata accessor for PuzzleStatistic);
      *v190 = v217;
      sub_1D5C0AD80(v179, type metadata accessor for PuzzleStatistic);
      v95 = v237;
      sub_1D5BE2EB4(v190, v237, type metadata accessor for FeedPuzzleStatistic);
      type metadata accessor for FeedItem(0);
      goto LABEL_45;
    }

    if (v193)
    {
      swift_getObjectType();
      v213 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
      if ((v213 & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D5C0AD80(v192, type metadata accessor for PuzzleStatisticCategory);
    }

    v194 = 0x80000000000;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v164 = *v46;
      v165 = [*v46 identifier];
      v166 = sub_1D726207C();
      v168 = v167;

      v169 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_1D7279970;
      *(v170 + 32) = 0x7261696C69787561;
      *(v170 + 40) = 0xE900000000000079;
      v171 = v236;
      *(v170 + 48) = v235;
      *(v170 + 56) = v171;
      *(v170 + 64) = v166;
      *(v170 + 72) = v168;
      *&v245 = v170;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v169, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v172 = sub_1D7261F3C();
      v174 = v173;

      *&v245 = 0;
      BYTE8(v245) = 1;
      sub_1D71CCC34(v172, v174, v164, ObjectType, &v245, v238);

      v175 = v239[0];
      v95 = v237;
      v237[6] = v238[6];
      v95[7] = v175;
      *(v95 + 121) = *(v239 + 9);
      v176 = v238[3];
      v95[2] = v238[2];
      v95[3] = v176;
      v177 = v238[5];
      v95[4] = v238[4];
      v95[5] = v177;
      v178 = v238[1];
      *v95 = v238[0];
      v95[1] = v178;
    }

    else
    {
      v83 = *v46;
      v84 = [*v46 identifier];
      v85 = sub_1D726207C();
      v87 = v86;

      v88 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1D7279970;
      *(v89 + 32) = 0x7261696C69787561;
      *(v89 + 40) = 0xE900000000000079;
      v90 = v236;
      *(v89 + 48) = v235;
      *(v89 + 56) = v90;
      *(v89 + 64) = v85;
      *(v89 + 72) = v87;
      *&v245 = v89;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v88, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v91 = sub_1D7261F3C();
      v93 = v92;

      v94 = sub_1D726045C();
      (*(*(v94 - 8) + 56))(v38, 1, 1, v94);
      sub_1D5D1FA14(v91, v93, v83, ObjectType, v38, v42);
      swift_unknownObjectRelease();

      sub_1D5FC4FD8(v38, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      v95 = v237;
      sub_1D5BE2EB4(v42, v237, type metadata accessor for FeedHeadline);
    }

    type metadata accessor for FeedItem(0);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5BE2EB4(v46, v30, type metadata accessor for FormatWebEmbed.Resolved);
      v49 = *v30;
      v48 = v30[1];
      v50 = MEMORY[0x1E69E6158];
      sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1D7279970;
      *(v51 + 32) = 0x7261696C69787561;
      *(v51 + 40) = 0xE900000000000079;
      v52 = v236;
      *(v51 + 48) = v235;
      *(v51 + 56) = v52;
      *(v51 + 64) = v49;
      *(v51 + 72) = v48;
      *&v245 = v51;
      sub_1D5B5D3F4(0, &qword_1EDF43BA0, v50, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();

      v53 = sub_1D7261F3C();
      v55 = v54;

      sub_1D6BC7B84(v53, v55, v30, ObjectType, v26);

      v56 = v237;
      sub_1D5BE2EB4(v26, v237, type metadata accessor for FeedWebEmbed);
      type metadata accessor for FeedItem(0);
      swift_storeEnumTagMultiPayload();
      v57 = type metadata accessor for FormatContentSlotItemResolution(0);
      v58 = *(v234 + *(v57 + 28));
      v59 = *(v234 + *(v57 + 24));
      v60 = type metadata accessor for FeedItemAuxiliaryItem(0);
      *(v56 + *(v60 + 20)) = v58;
      *(v56 + *(v60 + 24)) = v59;

      v61 = type metadata accessor for FormatWebEmbed.Resolved;
      v62 = v30;
LABEL_10:
      sub_1D5C0AD80(v62, v61);
      return (*(*(v60 - 8) + 56))(v56, 0, 1, v60);
    }

    v142 = *v46;
    ObjectType = swift_getObjectType();
    v143 = [v142 identifier];
    v144 = sub_1D726207C();
    v146 = v145;

    v147 = MEMORY[0x1E69E6158];
    sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_1D7279970;
    *(v148 + 32) = 0x7261696C69787561;
    *(v148 + 40) = 0xE900000000000079;
    v149 = v236;
    *(v148 + 48) = v235;
    *(v148 + 56) = v149;
    *(v148 + 64) = v144;
    *(v148 + 72) = v146;
    *&v245 = v148;
    sub_1D5B5D3F4(0, &qword_1EDF43BA0, v147, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v150 = sub_1D7261F3C();
    v235 = v151;
    v236 = v150;

    v152 = *(v233 + 96);
    v154 = v152[10];
    v153 = v152[11];
    __swift_project_boxed_opaque_existential_1(v152 + 7, v154);
    v155 = [v142 identifier];
    v156 = sub_1D726207C();
    v158 = v157;

    v159 = (*(*(v153 + 8) + 56))(v156, v158, v154);

    v160 = v152[5];
    v161 = v152[6];
    __swift_project_boxed_opaque_existential_1(v152 + 2, v160);
    (*(v161 + 16))(&v244, v142, v160, v161);
    LOBYTE(v147) = v244;
    sub_1D5B68374((v152 + 12), v243);
    sub_1D5B68374((v152 + 17), v242);
    v241 = 0;
    memset(v240, 0, sizeof(v240));
    *(&v245 + 1) = 0;
    LOBYTE(v246[0]) = 1;
    *(v246 + 8) = xmmword_1D728A8D0;
    *(&v246[1] + 1) = v236;
    *&v247 = v235;
    *(&v247 + 1) = v142;
    *&v248 = v159;
    BYTE8(v248) = v147;
    sub_1D5C3AE10(v243, v249 + 8, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
    sub_1D5C3AE10(v242, v250, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
    sub_1D5C3AE10(v240, v251 + 8, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
    *&v249[0] = MEMORY[0x1E69E7CD0];
    swift_unknownObjectRetain();
    if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 4) != 0)
    {
      v195 = [v142 teaserClue];
      v162 = 0x8000000000;
      if (v195)
      {
        v196 = v195;
        v197 = sub_1D726207C();
        v199 = v198;

        v200 = HIBYTE(v199) & 0xF;
        if ((v199 & 0x2000000000000000) == 0)
        {
          v200 = v197 & 0xFFFFFFFFFFFFLL;
        }

        if (v200)
        {
          v162 = 0x28000000000;
        }
      }
    }

    else
    {
      v162 = 0x8000000000;
    }

    v201 = [v142 thumbnailSmallImageAssetHandle];
    if (v201)
    {

      v162 |= 4uLL;
    }

    v202 = [v142 thumbnailLargeImageAssetHandle];
    swift_unknownObjectRelease();
    if (v202)
    {

      v162 |= 0x40000000000uLL;
    }

    v203 = v234;
    sub_1D5BFB774(v240, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
    sub_1D5BFB774(v242, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
    sub_1D5BFB774(v243, qword_1EDF1CE10, &qword_1EDF3CFD0, &protocol descriptor for PuzzleImageShareAttributeProviderType);
    *&v245 = v162;
    v204 = v251[1];
    v95 = v237;
    v237[10] = v251[0];
    v95[11] = v204;
    v95[12] = v251[2];
    v205 = v249[2];
    v95[6] = v249[1];
    v95[7] = v205;
    v206 = v250[1];
    v95[8] = v250[0];
    v95[9] = v206;
    v207 = v247;
    v95[2] = v246[1];
    v95[3] = v207;
    v208 = v249[0];
    v95[4] = v248;
    v95[5] = v208;
    v209 = v246[0];
    *v95 = v245;
    v95[1] = v209;
    type metadata accessor for FeedItem(0);
    swift_storeEnumTagMultiPayload();
    v210 = type metadata accessor for FormatContentSlotItemResolution(0);
    v211 = *(v203 + *(v210 + 28));
    v212 = *(v203 + *(v210 + 24));
    goto LABEL_46;
  }

  v108 = *v46;
  v109 = [*v46 identifier];
  v110 = sub_1D726207C();
  v112 = v111;

  v113 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1D7279970;
  *(v114 + 32) = 0x7261696C69787561;
  *(v114 + 40) = 0xE900000000000079;
  v115 = v236;
  *(v114 + 48) = v235;
  *(v114 + 56) = v115;
  *(v114 + 64) = v110;
  *(v114 + 72) = v112;
  *&v245 = v114;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v113, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v116 = sub_1D7261F3C();
  v118 = v117;

  result = [*(*(v233 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v119 = result;
    v120 = sub_1D726267C();

    v121 = sub_1D5B86020(v120);

    v122 = [v108 identifier];
    v123 = sub_1D726207C();
    v125 = v124;

    LOBYTE(v122) = sub_1D5BE240C(v123, v125, v121);

    v242[0] = 0;
    v107 = v237;
    *v237 = v116;
    *(v107 + 8) = v118;
    *(v107 + 16) = v108;
    *(v107 + 24) = 0;
    *(v107 + 25) = v245;
    *(v107 + 28) = *(&v245 + 3);
    *(v107 + 32) = 0;
    *(v107 + 40) = 0;
    *(v107 + 41) = *v243;
    *(v107 + 44) = *&v243[3];
    v126 = MEMORY[0x1E69E7CD0];
    *(v107 + 48) = 0;
    *(v107 + 56) = 0xE000000000000000;
    *(v107 + 64) = v122 & 1;
    *(v107 + 72) = v126;
    *(v107 + 80) = xmmword_1D7279980;
    type metadata accessor for FeedItem(0);
    *(v107 + 96) = 0u;
    *(v107 + 112) = 0u;
    *(v107 + 128) = 0u;
    *(v107 + 144) = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5FC44FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *v5;
  v10 = *a1;
  v11 = a1[1];
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v9;
  v14[5] = a2;

  v12 = sub_1D5FBD224(sub_1D5FC5038, v14, v10);
  *a5 = a3;
  a5[1] = a4;
  a5[2] = v12;
  a5[3] = v11;
  a5[4] = 0x7261696C69787561;
  a5[5] = 0xE900000000000079;
}

unint64_t sub_1D5FC45A4()
{
  result = qword_1EC881DC0;
  if (!qword_1EC881DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DC0);
  }

  return result;
}

unint64_t sub_1D5FC45F8()
{
  result = qword_1EDF34E48;
  if (!qword_1EDF34E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E48);
  }

  return result;
}

unint64_t sub_1D5FC464C()
{
  result = qword_1EDF13048;
  if (!qword_1EDF13048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13048);
  }

  return result;
}

uint64_t sub_1D5FC46A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B5D3F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5FC4710(uint64_t a1)
{
  if (!qword_1EDF12FE0)
  {
    v2 = type metadata accessor for FeedWebEmbed(255);
    v3 = sub_1D5D21194(&qword_1EDF12B90, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
    v4 = sub_1D5D21194(&qword_1EDF12B98, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E7CA8] + 8;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for FeedModel(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF12FE0);
    }
  }
}

void sub_1D5FC47F0(uint64_t a1)
{
  if (!qword_1EDF13008)
  {
    v2 = type metadata accessor for FeedCustomItem(255);
    v3 = sub_1D5D21194(&qword_1EDF15718, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
    v4 = sub_1D5D21194(&qword_1EDF15720, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E7CA8] + 8;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for FeedModel(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF13008);
    }
  }
}

void sub_1D5FC48D0(uint64_t a1)
{
  if (!qword_1EC881DC8)
  {
    v2 = type metadata accessor for FeedBannerAd(255);
    v3 = sub_1D5D21194(&qword_1EDF12C50, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
    v4 = sub_1D5D21194(&qword_1EDF34B10, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E7CA8] + 8;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for FeedModel(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC881DC8);
    }
  }
}

unint64_t sub_1D5FC49B0()
{
  result = qword_1EDF12E40;
  if (!qword_1EDF12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E40);
  }

  return result;
}

unint64_t sub_1D5FC4A04()
{
  result = qword_1EDF12E50;
  if (!qword_1EDF12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12E50);
  }

  return result;
}

void sub_1D5FC4A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a4();
    v13[0] = a5;
    v13[1] = MEMORY[0x1E69E7CA8] + 8;
    v13[2] = v9;
    v13[3] = v10;
    v11 = type metadata accessor for FeedModel(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1D5FC4AE8()
{
  result = qword_1EDF15508;
  if (!qword_1EDF15508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15508);
  }

  return result;
}

unint64_t sub_1D5FC4B3C()
{
  result = qword_1EDF15510[0];
  if (!qword_1EDF15510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15510);
  }

  return result;
}

void sub_1D5FC4B90(uint64_t a1)
{
  if (!qword_1EC881DD0)
  {
    v2 = type metadata accessor for FeedPuzzleStatistic(255);
    v3 = sub_1D5D21194(&qword_1EC881DD8, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
    v4 = sub_1D5D21194(&qword_1EC881DE0, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E7CA8] + 8;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for FeedModel(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC881DD0);
    }
  }
}

void sub_1D5FC4C70(uint64_t a1)
{
  if (!qword_1EDF12FF0)
  {
    v2 = type metadata accessor for FeedRecipe(255);
    v3 = sub_1D5D21194(&qword_1EDF12E08, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
    v4 = sub_1D5D21194(&qword_1EDF12E10, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E7CA8] + 8;
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for FeedModel(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF12FF0);
    }
  }
}

double sub_1D5FC4E38(uint64_t a1, uint64_t a2, char a3, void *a4, char a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_1D5F26348(a1, a2, a3 & 1);
    sub_1D5FC4E9C(a4, a5 & 1);
  }

  return result;
}

void sub_1D5FC4E9C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D5FC4EA8(unint64_t result, unint64_t a2)
{
  if (result)
  {

    return sub_1D5C08648(a2);
  }

  return result;
}

void sub_1D5FC4EE8(uint64_t a1)
{
  if (!qword_1EDF338D8[0])
  {
    v2 = sub_1D5B4C8E0();
    v4 = type metadata accessor for FormatObject(a1, &type metadata for FormatDecoration, v2, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDF338D8);
    }
  }
}

void sub_1D5FC4F44(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF04200)
  {
    sub_1D5E2C428(255, a2);
    sub_1D5D21194(&qword_1EDF17218, sub_1D5E2C428, MEMORY[0x1E69D79A0]);
    v2 = sub_1D7263FAC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF04200);
    }
  }
}

uint64_t sub_1D5FC4FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C1F6F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatCompilerOptions.newsroom.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B592C0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5FC5680(v1 + *(v7 + 24), v6, sub_1D5B592C0);
  return sub_1D5E4B86C(v6, a1);
}

uint64_t FormatCompilerOptions.compilerFlags.getter()
{
  type metadata accessor for FormatCompilerOptions(0);
}

uint64_t sub_1D5FC51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B592C0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5FC5680(a1 + *(v8 + 24), v7, sub_1D5B592C0);
  return sub_1D5E4B86C(v7, a2);
}

uint64_t FormatCompilerOptions.newsroom.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions(0) + 24);

  return sub_1D5FC52C4(a1, v3);
}

uint64_t sub_1D5FC52C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatCompilerOptions.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions(0) + 28);

  return sub_1D5D5FBC4(v3, a1);
}

void sub_1D5FC53B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatCompilerOptions(0) + 32);

  *(a2 + v4) = v3;
}

void FormatCompilerOptions.compilerFlags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatCompilerOptions(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_1D5FC548C()
{
  v0 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  __swift_allocate_value_buffer(v0, qword_1EC881E08);
  v1 = __swift_project_value_buffer(v0, qword_1EC881E08);
  if (qword_1EC87D4D0 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1EC881E20;
  v3 = xmmword_1EC881E30;
  v5 = qword_1EC881E40;
  v4 = qword_1EC881E48;
  v6 = *(v0 + 20);
  v7 = sub_1D725B76C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *v1 = v2;
  *(v1 + 16) = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;
}

uint64_t FormatCompilerOptions.Newsroom.init(environments:editorProperties:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = a1[2];
  v5 = a3 + *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);

  return sub_1D5FC55FC(a2, v5);
}

uint64_t sub_1D5FC55FC(uint64_t a1, uint64_t a2)
{
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC5680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void FormatCompilerOptions.Newsroom.environments.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1D5E4B8D0(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatCompilerOptions.Newsroom.editorProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);

  return sub_1D5D5FBC4(v3, a1);
}

double sub_1D5FC5748()
{
  result = 0.0;
  xmmword_1EC881E30 = 0u;
  *&qword_1EC881E40 = 0u;
  xmmword_1EC881E20 = 0u;
  return result;
}

__n128 FormatCompilerOptions.Newsroom.Environments.init(qa:staging:production:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  a4[1] = v4;
  result = *a3;
  a4[2] = *a3;
  return result;
}

uint64_t static FormatCompilerOptions.Newsroom.Environments.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D4D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EC881E48;
  *a1 = xmmword_1EC881E20;
  *(a1 + 8) = *(&xmmword_1EC881E20 + 8);
  *(a1 + 24) = *(&xmmword_1EC881E30 + 8);
  *(a1 + 40) = v1;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.qa.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.staging.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environments.production.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t FormatCompilerOptions.Newsroom.Environment.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatCompilerOptions.Newsroom.Environment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCompilerOptions.init(properties:slots:newsroom:editorProperties:compilerFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5E4B86C(a3, a6 + v10[6]);
  result = sub_1D5FC55FC(a4, a6 + v10[7]);
  *(a6 + v10[8]) = a5;
  return result;
}

uint64_t _s8NewsFeed21FormatCompilerOptionsV8NewsroomV5emptyAEvgZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D4C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC881E08);
  return sub_1D5FC5680(v3, a1, type metadata accessor for FormatCompilerOptions.Newsroom);
}

uint64_t sub_1D5FC5A1C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  sub_1D5FC702C(0);
  v5 = *(v4 + 48);
  sub_1D5FC6FC4(0);
  v7 = *(v6 + 48);
  v9 = *a1;
  v8 = *(a1 + 1);
  v10 = sub_1D725B76C();
  (*(*(v10 - 8) + 16))(&a2[v7], &a1[v5], v10);
  *a2 = v9;
  *(a2 + 1) = v8;
}

BOOL _s8NewsFeed21FormatCompilerOptionsV8NewsroomV12EnvironmentsV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v8 = a2[1];
  v7 = a2[2];
  v10 = a2[3];
  v9 = a2[4];
  v11 = a2[5];
  if (v2)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    if ((*a1 != *a2 || v2 != v8) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
LABEL_7:
      if (v10)
      {
        if ((v3 != v7 || v5 != v10) && (sub_1D72646CC() & 1) == 0)
        {
          return 0;
        }

        if (v6)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }

LABEL_22:

      return 0;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    goto LABEL_22;
  }

  if (v6)
  {
LABEL_12:
    if (v11)
    {
      return v4 == v9 && v6 == v11 || (sub_1D72646CC() & 1) != 0;
    }

    goto LABEL_22;
  }

LABEL_25:
  if (v11)
  {
    goto LABEL_22;
  }

  return 1;
}

uint64_t _s8NewsFeed21FormatCompilerOptionsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1D5D5FB44(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D633C7DC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((sub_1D6356728(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = type metadata accessor for FormatCompilerOptions(0);
  if (!_s8NewsFeed21FormatCompilerOptionsV8NewsroomV2eeoiySbAE_AEtFZ_0((a1 + *(v18 + 24)), (a2 + *(v18 + 24))))
  {
    goto LABEL_10;
  }

  v27 = v18;
  v19 = *(v18 + 28);
  v20 = *(v14 + 48);
  sub_1D5D5FBC4(a1 + v19, v17);
  sub_1D5D5FBC4(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1D5FC6B34(v17);
LABEL_13:
      v22 = sub_1D5E1ED0C(*(a1 + *(v27 + 32)), *(a2 + *(v27 + 32)));
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_1D5D5FBC4(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1D5D5FC44(v17);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v20], v4);
  sub_1D5B56FBC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
  v24 = sub_1D7261FBC();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_1D5FC6B34(v17);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

BOOL _s8NewsFeed21FormatCompilerOptionsV8NewsroomV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D725B76C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = &v55 - v9;
  sub_1D5D5FB44(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  v20 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v22 = a2[3];
  v68 = a2[4];
  v69 = a2[5];
  if (v15 == 1)
  {
    v66 = v14;
    v67 = v20;
    v61 = v12;
    v24 = v16;
    sub_1D5E4B8D0(v14, 1, v17, v16, v18, v19);
    if (v21 == 1)
    {
      sub_1D5E4B8D0(v67, 1, v23, v22, v68, v69);
      sub_1D5E4B984(v66, 1, v17, v24, v18, v19);
      goto LABEL_9;
    }

    v27 = v23;
    v31 = v23;
    v30 = v68;
    v29 = v69;
    sub_1D5E4B8D0(v67, v21, v31, v22, v68, v69);
LABEL_7:
    sub_1D5E4B984(v66, v15, v17, v24, v18, v19);
    sub_1D5E4B984(v67, v21, v27, v22, v30, v29);
    return 0;
  }

  v71[0] = v14;
  v71[1] = v15;
  v71[2] = v17;
  v71[3] = v16;
  v71[4] = v18;
  v71[5] = v19;
  if (v21 == 1)
  {
    v24 = v16;
    v66 = v14;
    v25 = v20;
    sub_1D5E4B8D0(v14, v15, v17, v16, v18, v19);
    v67 = v25;
    v26 = v25;
    v27 = v23;
    v28 = v23;
    v30 = v68;
    v29 = v69;
    sub_1D5E4B8D0(v26, 1, v28, v22, v68, v69);
    sub_1D5E4B8D0(v66, v15, v17, v24, v18, v19);

    goto LABEL_7;
  }

  v61 = v12;
  v70[0] = v20;
  v70[1] = v21;
  v56 = v23;
  v70[2] = v23;
  v70[3] = v22;
  v34 = v68;
  v33 = v69;
  v70[4] = v68;
  v70[5] = v69;
  v57 = v17;
  v35 = v17;
  v58 = v16;
  v59 = v18;
  v36 = v18;
  v37 = v19;
  v38 = v19;
  v39 = v14;
  v40 = v20;
  sub_1D5E4B8D0(v14, v15, v35, v16, v36, v38);
  sub_1D5E4B8D0(v40, v21, v56, v22, v34, v33);
  v41 = v57;
  v42 = v58;
  v43 = v59;
  sub_1D5E4B8D0(v39, v15, v57, v58, v59, v37);
  LODWORD(v69) = _s8NewsFeed21FormatCompilerOptionsV8NewsroomV12EnvironmentsV2eeoiySbAG_AGtFZ_0(v71, v70);

  sub_1D5E4B984(v39, v15, v41, v42, v43, v37);
  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v44 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
  v45 = *(v61 + 48);
  v46 = a1 + v44;
  v47 = v63;
  sub_1D5D5FBC4(v46, v63);
  sub_1D5D5FBC4(a2 + v44, v47 + v45);
  v49 = v64;
  v48 = v65;
  v50 = *(v64 + 48);
  if (v50(v47, 1, v65) != 1)
  {
    v51 = v62;
    sub_1D5D5FBC4(v47, v62);
    if (v50(v47 + v45, 1, v48) == 1)
    {
      (*(v49 + 8))(v51, v48);
      goto LABEL_14;
    }

    v52 = v60;
    (*(v49 + 32))(v60, v47 + v45, v48);
    sub_1D5B56FBC(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
    v53 = sub_1D7261FBC();
    v54 = *(v49 + 8);
    v54(v52, v48);
    v54(v51, v48);
    sub_1D5FC6B34(v47);
    return (v53 & 1) != 0;
  }

  if (v50(v47 + v45, 1, v48) != 1)
  {
LABEL_14:
    sub_1D5D5FC44(v47);
    return 0;
  }

  sub_1D5FC6B34(v47);
  return 1;
}

unint64_t sub_1D5FC6554(uint64_t a1)
{
  result = sub_1D5FC657C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC657C()
{
  result = qword_1EC881E50;
  if (!qword_1EC881E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E50);
  }

  return result;
}

unint64_t sub_1D5FC6610()
{
  result = qword_1EDF0E3B0;
  if (!qword_1EDF0E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3B0);
  }

  return result;
}

unint64_t sub_1D5FC6664()
{
  result = qword_1EC881E58;
  if (!qword_1EC881E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E58);
  }

  return result;
}

unint64_t sub_1D5FC66B8(uint64_t a1)
{
  result = sub_1D5FC66E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC66E0()
{
  result = qword_1EC881E60;
  if (!qword_1EC881E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E60);
  }

  return result;
}

uint64_t sub_1D5FC6774(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FC67C8()
{
  result = qword_1EDF0E3B8;
  if (!qword_1EDF0E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3B8);
  }

  return result;
}

unint64_t sub_1D5FC681C()
{
  result = qword_1EC881E68;
  if (!qword_1EC881E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E68);
  }

  return result;
}

uint64_t sub_1D5FC6870(uint64_t a1)
{
  result = sub_1D5B56FBC(&qword_1EC881E70, type metadata accessor for FormatCompilerOptions.Newsroom, &protocol conformance descriptor for FormatCompilerOptions.Newsroom);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC68C8(void *a1)
{
  a1[1] = sub_1D5B56FBC(&qword_1EDF29BE0, type metadata accessor for FormatCompilerOptions.Newsroom, &protocol conformance descriptor for FormatCompilerOptions.Newsroom);
  a1[2] = sub_1D5B56FBC(&qword_1EDF0E3A8, type metadata accessor for FormatCompilerOptions.Newsroom, &protocol conformance descriptor for FormatCompilerOptions.Newsroom);
  result = sub_1D5B56FBC(&qword_1EC881E78, type metadata accessor for FormatCompilerOptions.Newsroom, &protocol conformance descriptor for FormatCompilerOptions.Newsroom);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5FC6974(uint64_t a1)
{
  result = sub_1D5B56FBC(&qword_1EC881E80, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC69CC(void *a1)
{
  a1[1] = sub_1D5B56FBC(&qword_1EDF29BD8, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  a1[2] = sub_1D5B56FBC(&qword_1EDF0E3A0, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  result = sub_1D5B56FBC(&qword_1EC881E88, type metadata accessor for FormatCompilerOptions, &protocol conformance descriptor for FormatCompilerOptions);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FC6A78(uint64_t a1)
{
  result = sub_1D5B5931C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5FC6AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC6B34(uint64_t a1)
{
  sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5FC6BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v62 = a5;
  v9 = sub_1D725B76C();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = v47 - v14;
  sub_1D5B4BDE4(0, &qword_1EDF054B8, sub_1D5FC6FC4);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (v47 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v55 = a1;
  v56 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v57 = v20;
  v58 = 0;
  v59 = v23 & v21;
  v60 = a2;
  v61 = a3;

  v47[1] = a3;

  sub_1D6F5B500(v18);
  sub_1D5FC6FC4(0);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 48);
  v49 = v26 + 48;
  v50 = v27;
  if (v27(v18, 1, v24) == 1)
  {
LABEL_5:
    sub_1D5B87E38(v55);
  }

  else
  {
    v52 = *(v51 + 32);
    v53 = v51 + 32;
    v47[4] = v51 + 8;
    v47[5] = v51 + 16;
    v47[3] = v51 + 40;
    while (1)
    {
      v32 = *v18;
      v31 = v18[1];
      v52(v54, v18 + *(v25 + 48), v9);
      v33 = *v62;
      v35 = sub_1D5B69D90(v32, v31);
      v36 = v33[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v34;
      if (v33[3] >= v38)
      {
        if ((a4 & 1) == 0)
        {
          sub_1D6D7F424();
        }
      }

      else
      {
        sub_1D6D68568(v38, a4 & 1);
        v40 = sub_1D5B69D90(v32, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_20;
        }

        v35 = v40;
      }

      v42 = *v62;
      if (v39)
      {
        v28 = v51;
        v29 = *(v51 + 72) * v35;
        v30 = v48;
        (*(v51 + 16))(v48, v42[7] + v29, v9);
        (*(v28 + 8))(v54, v9);

        (*(v28 + 40))(v42[7] + v29, v30, v9);
      }

      else
      {
        v42[(v35 >> 6) + 8] |= 1 << v35;
        v43 = (v42[6] + 16 * v35);
        *v43 = v32;
        v43[1] = v31;
        v52((v42[7] + *(v51 + 72) * v35), v54, v9);
        v44 = v42[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_19;
        }

        v42[2] = v46;
      }

      sub_1D6F5B500(v18);
      a4 = 1;
      if (v50(v18, 1, v25) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1D726493C();
    __break(1u);
  }
}

void sub_1D5FC6FC4(uint64_t a1)
{
  if (!qword_1EDF054C0)
  {
    sub_1D725B76C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF054C0);
    }
  }
}

void sub_1D5FC702C(uint64_t a1)
{
  if (!qword_1EDF05558)
  {
    sub_1D725B76C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05558);
    }
  }
}

uint64_t sub_1D5FC70A4(uint64_t a1)
{
  v2 = sub_1D5BBE0F8(&qword_1EDF3BFA0, MEMORY[0x1E69D72A0]);
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D5FC7114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5BBE0F8(&qword_1EDF3BFA0, MEMORY[0x1E69D72A0]);
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

double static FeedScalingManager.shared.getter()
{
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }

  return result;
}

double FeedScalingManager.currentFeedScaleSize.getter()
{

  sub_1D725972C();

  return result;
}

uint64_t sub_1D5FC7230(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725A19C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v15 - v11;
  v13 = *(v4 + 16);
  v13(&v15 - v11, a1, v3, v10);
  (v13)(v7, v12, v3);

  sub_1D725973C();

  return (*(v4 + 8))(v12, v3);
}

uint64_t FeedScalingManager.$currentFeedScaleSize.getter()
{

  v0 = sub_1D725974C();

  return v0;
}

Swift::Void __swiftcall FeedScalingManager.resetSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v10 - v8;
  (*(v1 + 104))(&v10 - v8, *MEMORY[0x1E69D7278], v0, v7);
  (*(v1 + 16))(v4, v9, v0);

  sub_1D725973C();

  (*(v1 + 8))(v9, v0);
}

BOOL sub_1D5FC7510(unsigned int *a1)
{
  v2 = sub_1D725A19C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;

  sub_1D725972C();

  (*(v3 + 104))(v6, *a1, v2);
  sub_1D5BBE0F8(&qword_1EDF3BFA8, MEMORY[0x1E69D7298]);
  v11 = sub_1D7261FBC();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v10, v2);
  return (v11 & 1) == 0;
}

Swift::Void __swiftcall FeedScalingManager.increaseSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;

  sub_1D725972C();

  v13 = (*(v1 + 88))(v12, v0);
  v14 = *MEMORY[0x1E69D7268];
  if (v13 == *MEMORY[0x1E69D7250] || (v14 = *MEMORY[0x1E69D7270], v13 == *MEMORY[0x1E69D7268]) || (v15 = v13 == v14, v14 = *MEMORY[0x1E69D7278], v15) || (v14 = *MEMORY[0x1E69D7260], v13 == *MEMORY[0x1E69D7278]) || (v15 = v13 == v14, v14 = *MEMORY[0x1E69D7248], v15) || (v14 = *MEMORY[0x1E69D7258], v13 == *MEMORY[0x1E69D7248]))
  {
    (*(v1 + 104))(v8, v14, v0);
    (*(v1 + 16))(v4, v8, v0);

    sub_1D725973C();

    (*(v1 + 8))(v8, v0);
  }

  else if (v13 != v14)
  {
    sub_1D72646BC();
    __break(1u);
  }
}

Swift::Void __swiftcall FeedScalingManager.decreaseSize()()
{
  v0 = sub_1D725A19C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;

  sub_1D725972C();

  v13 = (*(v1 + 88))(v12, v0);
  v14 = *MEMORY[0x1E69D7250];
  if (v13 != v14)
  {
    if (v13 == *MEMORY[0x1E69D7268] || (v14 = *MEMORY[0x1E69D7268], v13 == *MEMORY[0x1E69D7270]) || (v14 = *MEMORY[0x1E69D7270], v13 == *MEMORY[0x1E69D7278]) || (v14 = *MEMORY[0x1E69D7278], v13 == *MEMORY[0x1E69D7260]) || (v14 = *MEMORY[0x1E69D7260], v13 == *MEMORY[0x1E69D7248]) || (v14 = *MEMORY[0x1E69D7248], v13 == *MEMORY[0x1E69D7258]))
    {
      (*(v1 + 104))(v8, v14, v0);
      (*(v1 + 16))(v4, v8, v0);

      sub_1D725973C();

      (*(v1 + 8))(v8, v0);
    }

    else
    {
      sub_1D72646BC();
      __break(1u);
    }
  }
}

uint64_t FeedScalingManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D5FC7C08()
{
  xmmword_1EDF1C298 = 0x4030000000000000uLL;
  word_1EDF1C2A8 = 3072;
  byte_1EDF1C2AA = 0;
  qword_1EDF1C2B0 = MEMORY[0x1E69E7CD0];
  result = 0.0;
  xmmword_1EDF1C2B8 = 0u;
  unk_1EDF1C2C8 = 0u;
  word_1EDF1C2D8 = 1280;
  return result;
}

uint64_t sub_1D5FC7C44()
{
  v0 = swift_allocObject();
  if (qword_1EDF1C290 != -1)
  {
    v6 = v0;
    swift_once();
    v0 = v6;
  }

  v1 = unk_1EDF1C2C8;
  v8[2] = xmmword_1EDF1C2B8;
  v8[3] = unk_1EDF1C2C8;
  v2 = word_1EDF1C2D8;
  v9 = word_1EDF1C2D8;
  v4 = xmmword_1EDF1C298;
  v3 = *&word_1EDF1C2A8;
  v8[0] = xmmword_1EDF1C298;
  v8[1] = *&word_1EDF1C2A8;
  *(v0 + 48) = xmmword_1EDF1C2B8;
  *(v0 + 64) = v1;
  *(v0 + 80) = v2;
  *(v0 + 16) = v4;
  *(v0 + 32) = v3;
  qword_1EDF1C280 = v0;
  return sub_1D5D3F188(v8, v7);
}

double static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDF1C280;

  return result;
}

double static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDF1C280 = v1;

  return result;
}

uint64_t (*static FormatCodingBlackSixteenSystemFontStrategy.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1D5FC7E88@<D0>(void *a1@<X8>)
{
  if (qword_1EDF1C278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDF1C280;

  return result;
}

double sub_1D5FC7F0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDF1C278;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDF1C280 = v1;

  return result;
}

uint64_t _s8NewsFeed42FormatCodingBlackSixteenSystemFontStrategyV12shouldEncode12wrappedValueSbAA0cH0O_tFZ_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 61)
  {
    return 1;
  }

  v2 = *(v1 + 48);
  v15[1] = *(v1 + 32);
  v15[2] = v2;
  v15[3] = *(v1 + 64);
  v16 = *(v1 + 80);
  v15[0] = *(v1 + 16);
  v3 = *(v1 + 64);
  v13[2] = *(v1 + 48);
  v13[3] = v3;
  v14 = *(v1 + 80);
  v4 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v4;
  sub_1D5D3F188(v15, v19);
  if (qword_1EDF1C290 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_1EDF1C2B8;
  v17[3] = unk_1EDF1C2C8;
  v18 = word_1EDF1C2D8;
  v17[0] = xmmword_1EDF1C298;
  v17[1] = *&word_1EDF1C2A8;
  v10 = xmmword_1EDF1C2B8;
  v11 = unk_1EDF1C2C8;
  v12 = word_1EDF1C2D8;
  v8 = xmmword_1EDF1C298;
  v9 = *&word_1EDF1C2A8;
  sub_1D5D3F188(v17, v19);
  v6 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(v13, &v8, v5);
  v19[2] = v10;
  v19[3] = v11;
  v20 = v12;
  v19[0] = v8;
  v19[1] = v9;
  sub_1D5D41588(v19);
  sub_1D5D41588(v15);
  return (v6 ^ 1) & 1;
}

unint64_t sub_1D5FC80CC(uint64_t a1)
{
  result = sub_1D5FC80F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC80F4()
{
  result = qword_1EDF1C470;
  if (!qword_1EDF1C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1C470);
  }

  return result;
}

unint64_t sub_1D5FC8148()
{
  result = qword_1EDF10C48;
  if (!qword_1EDF10C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10C48);
  }

  return result;
}

unint64_t sub_1D5FC819C(uint64_t a1)
{
  result = sub_1D5FC81C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC81C4()
{
  result = qword_1EC881E98;
  if (!qword_1EC881E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881E98);
  }

  return result;
}

unint64_t sub_1D5FC8218(uint64_t a1)
{
  result = sub_1D5FC8240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FC8240()
{
  result = qword_1EC881EA0;
  if (!qword_1EC881EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881EA0);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceConfigViewController(uint64_t a1)
{
  result = qword_1EC881EE8;
  if (!qword_1EC881EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5FC8328(uint64_t a1)
{
  result = type metadata accessor for DebugFormatWorkspace(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D5FC83EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v24[3] = ObjectType;
    v24[0] = v4;
    v10 = v4;
    v11 = sub_1D726203C();
    if (ObjectType)
    {
      v12 = __swift_project_boxed_opaque_existential_1(v24, ObjectType);
      v13 = *(ObjectType - 8);
      v14 = MEMORY[0x1EEE9AC00](v12, v12);
      v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_1D72646AC();
      (*(v13 + 8))(v16, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v17 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v18 = *a4;
    v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v20 = [v19 initWithTitle:v11 style:0 target:v17 action:{v18, v24[0]}];

    swift_unknownObjectRelease();
    v21 = *&v4[v5];
    *&v4[v5] = v20;
    v7 = v20;

    v6 = 0;
  }

  v22 = v6;
  return v7;
}

void sub_1D5FC85B4(uint64_t a1)
{
  v2 = qword_1EC881EB0;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(a1 + v2) = v3;
  *(v3 + 16) = 0;
  *(a1 + qword_1EC881ED8) = 0;
  *(a1 + qword_1EC881EE0) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D5FC8668()
{
  v1 = v0;
  sub_1D5B73DC0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7257A4C();
  v72 = *(v5 - 8);
  v73 = v5;
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 becomeFirstResponder];
  v10 = &v0[qword_1EC881EB8];
  v11 = &v10[*(type metadata accessor for DebugFormatWorkspace(0) + 20)];
  v12 = *(v11 + 7);
  v13 = *(v11 + 9);
  v105 = *(v11 + 8);
  v106 = v13;
  v14 = *(v11 + 9);
  v107[0] = *(v11 + 10);
  v15 = *(v11 + 5);
  v16 = *(v11 + 6);
  v17 = *(v11 + 3);
  v104[4] = *(v11 + 4);
  v104[5] = v15;
  v18 = *(v11 + 7);
  v104[6] = v16;
  v104[7] = v18;
  v19 = *(v11 + 3);
  v104[2] = *(v11 + 2);
  v104[3] = v19;
  v20 = *(v11 + 1);
  v21 = *(v11 + 2);
  v104[0] = *v11;
  v104[1] = v20;
  v92 = v104[0];
  v89 = v21;
  v90 = v17;
  *(v107 + 15) = *(v11 + 175);
  v71 = *(&v20 + 1);
  v91 = *(v11 + 8);
  v85 = v12;
  v86 = v105;
  v22 = *(v11 + 10);
  v23 = *&v1[qword_1EC881EC8];
  v87 = v14;
  v88 = v22;
  v24 = (v23 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
  v25 = v24[1];
  v67 = *v24;
  *&v68 = v25;
  *(&v68 + 1) = v24[2];
  sub_1D5ECF1C0(v104, v131);

  v26 = (*&v1[qword_1EC881ED0] + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag);
  v27 = *v26;
  v28 = v26[1];

  v69 = v1;

  sub_1D725972C();

  sub_1D72579DC();
  sub_1D5BF4D9C();
  v29 = sub_1D7263A4C();
  v31 = v30;
  v32 = v9;
  v33 = v67;
  (*(v72 + 8))(v32, v73);

  v34 = v29;
  sub_1D6BCADE0(v131);
  v35 = *(v11 + 9);
  v36 = *(v11 + 7);
  v115 = *(v11 + 8);
  v116 = v35;
  v37 = *(v11 + 9);
  v117[0] = *(v11 + 10);
  v38 = *(v11 + 5);
  v39 = *(v11 + 3);
  v111 = *(v11 + 4);
  v112 = v38;
  v40 = *(v11 + 5);
  v41 = *(v11 + 7);
  v113 = *(v11 + 6);
  v114 = v41;
  v42 = *(v11 + 1);
  v108[0] = *v11;
  v108[1] = v42;
  v43 = *(v11 + 3);
  v45 = *v11;
  v44 = *(v11 + 1);
  v109 = *(v11 + 2);
  v110 = v43;
  v101 = v115;
  v102 = v37;
  v103[0] = *(v11 + 10);
  v97 = v111;
  v98 = v40;
  v99 = v113;
  v100 = v36;
  *(v117 + 15) = *(v11 + 175);
  v46 = *(v11 + 175);
  v47 = v68;
  *(v103 + 15) = v46;
  v93 = v45;
  v94 = v44;
  v95 = v109;
  v96 = v39;
  v118 = v92;
  *&v119 = v29;
  v73 = v31;
  *(&v119 + 1) = v31;
  v120 = v89;
  v121 = v90;
  *&v122 = v91;
  *(&v122 + 1) = v33;
  v123 = v68;
  v48 = *(&v68 + 1);
  *&v124 = v27;
  *(&v124 + 1) = v28;
  v128[0] = v88;
  v127 = v87;
  v126 = v86;
  v125 = v85;
  LODWORD(v72) = LOBYTE(v131[0]);
  LOWORD(v128[1]) = v131[0];
  v70 = BYTE2(v131[0]);
  LODWORD(v71) = BYTE1(v131[0]);
  BYTE2(v128[1]) = BYTE2(v131[0]);
  v82 = v86;
  v83 = v87;
  v84[0] = v88;
  *(v84 + 15) = *(v128 + 15);
  v78 = v122;
  v79 = v68;
  v80 = v124;
  v81 = v85;
  v74 = v92;
  v75 = v119;
  v76 = v89;
  v77 = v90;
  sub_1D5ECF1C0(v108, v131);
  sub_1D5ECF1C0(&v118, v131);
  LOBYTE(v10) = _s8NewsFeed15FormatWorkspaceV2eeoiySbAC_ACtFZ_0(&v93, &v74);
  v129[8] = v82;
  v129[9] = v83;
  v130[0] = v84[0];
  *(v130 + 15) = *(v84 + 15);
  v129[4] = v78;
  v129[5] = v79;
  v129[6] = v80;
  v129[7] = v81;
  v129[0] = v74;
  v129[1] = v75;
  v129[2] = v76;
  v129[3] = v77;
  sub_1D5ECF21C(v129);
  v131[8] = v101;
  v131[9] = v102;
  v132[0] = v103[0];
  *(v132 + 15) = *(v103 + 15);
  v131[4] = v97;
  v131[5] = v98;
  v131[6] = v99;
  v131[7] = v100;
  v131[0] = v93;
  v131[1] = v94;
  v131[2] = v95;
  v131[3] = v96;
  sub_1D5ECF21C(v131);
  if (v10)
  {
    [v69 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v49 = sub_1D726294C();
    v50 = *(*(v49 - 8) + 56);
    v65 = v29;
    v51 = v28;
    v52 = v27;
    v53 = v66;
    v50(v66, 1, 1, v49);
    sub_1D726290C();
    v54 = v69;
    v55 = sub_1D72628FC();
    v93 = v92;
    *&v94 = v65;
    *(&v94 + 1) = v73;
    v95 = v89;
    v96 = v90;
    *&v97 = v91;
    *(&v97 + 1) = v33;
    *&v98 = v47;
    *(&v98 + 1) = v48;
    *&v99 = v52;
    *(&v99 + 1) = v51;
    v102 = v87;
    v103[0] = v88;
    v100 = v85;
    v101 = v86;
    LOBYTE(v103[1]) = v72;
    BYTE1(v103[1]) = v71;
    BYTE2(v103[1]) = v70;
    v56 = swift_allocObject();
    v57 = v102;
    *(v56 + 168) = v101;
    *(v56 + 184) = v57;
    *(v56 + 200) = v103[0];
    v58 = v98;
    *(v56 + 104) = v97;
    *(v56 + 120) = v58;
    v59 = v100;
    *(v56 + 136) = v99;
    *(v56 + 152) = v59;
    v60 = v94;
    *(v56 + 40) = v93;
    *(v56 + 56) = v60;
    v61 = v96;
    *(v56 + 72) = v95;
    v62 = MEMORY[0x1E69E85E0];
    *(v56 + 16) = v55;
    *(v56 + 24) = v62;
    *(v56 + 32) = v54;
    *(v56 + 215) = *(v103 + 15);
    *(v56 + 88) = v61;
    sub_1D5ECF1C0(&v93, &v74);
    v63 = v53;
    v27 = v52;
    v28 = v51;
    v34 = v65;
    sub_1D6BD1334(0, 0, v63, &unk_1D728AF90, v56);
  }

  v74 = v92;
  *&v75 = v34;
  *(&v75 + 1) = v73;
  v76 = v89;
  v77 = v90;
  *&v78 = v91;
  *(&v78 + 1) = v33;
  *&v79 = v47;
  *(&v79 + 1) = v48;
  *&v80 = v27;
  *(&v80 + 1) = v28;
  v83 = v87;
  v84[0] = v88;
  v81 = v85;
  v82 = v86;
  LOBYTE(v84[1]) = v72;
  BYTE1(v84[1]) = v71;
  BYTE2(v84[1]) = v70;
  return sub_1D5ECF21C(&v74);
}

uint64_t sub_1D5FC8D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[95] = a5;
  v5[94] = a4;
  sub_1D726290C();
  v5[96] = sub_1D72628FC();
  v7 = sub_1D726285C();
  v5[97] = v7;
  v5[98] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D5FC8DE4, v7, v6);
}

uint64_t sub_1D5FC8DE4()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v2 + qword_1EC881EA8);
  *(v0 + 792) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = qword_1EC881EB8;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 800) = v14;
  *v14 = v0;
  v14[1] = sub_1D5FC8F10;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D5FC8F10()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 16);
    v4 = *(v2 + 32);
    v5 = *(v2 + 64);
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
  }

  else
  {
    v14 = *(v2 + 16);
    v15 = *(v2 + 32);
    v16 = *(v2 + 64);
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v16;
    *(v2 + 568) = v14;
    *(v2 + 584) = v15;
    v17 = *(v2 + 80);
    v18 = *(v2 + 96);
    v19 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v19;
    *(v2 + 632) = v17;
    *(v2 + 648) = v18;
    v20 = *(v2 + 144);
    v21 = *(v2 + 160);
    v22 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v21;
    *(v2 + 728) = v22;
    *(v2 + 696) = v20;
    sub_1D5ECF21C(v2 + 568);
  }

  v12 = *(v2 + 784);
  v13 = *(v2 + 776);

  return MEMORY[0x1EEE6DFA0](sub_1D5FC90E0, v13, v12);
}

uint64_t sub_1D5FC90E0()
{

  [*(v0 + 752) dismissViewControllerAnimated:1 completion:0];
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D5FC9158(void *a1)
{
  v1 = a1;
  sub_1D5FC8668();
}

void sub_1D5FC91D8()
{

  sub_1D5EF0664(v0 + qword_1EC881EB8);

  v1 = *(v0 + qword_1EC881EE0);
}

void sub_1D5FC9278(uint64_t a1)
{

  sub_1D5EF0664(a1 + qword_1EC881EB8);

  v2 = *(a1 + qword_1EC881EE0);
}

void sub_1D5FC932C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DebugFormatWorkspace(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EC881EB0;
  type metadata accessor for DebugFormatStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v3[v11] = v12;
  *&v3[qword_1EC881ED8] = 0;
  *&v3[qword_1EC881EE0] = 0;
  *&v3[qword_1EC881EA8] = a1;
  sub_1D5FC998C(a2, &v3[qword_1EC881EB8]);
  sub_1D5FC998C(a2, v10);
  v13 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceSettingsViewController(0));

  v15 = sub_1D6BCBDA0(v14, v10);
  *&v3[qword_1EC881EC0] = v15;
  sub_1D5FC998C(a2, v10);
  v16 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceFeedViewController());

  v17 = v15;
  v18 = sub_1D68063DC(a1, v10);

  *&v3[qword_1EC881EC8] = v18;
  sub_1D5FC998C(a2, v10);
  objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceTagViewController());

  v19 = v18;
  v20 = sub_1D69D996C(a1, v10);

  *&v3[qword_1EC881ED0] = v20;
  v52.receiver = v3;
  v52.super_class = ObjectType;
  v21 = v20;
  v22 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  v23 = sub_1D5FC83EC(&qword_1EC881ED8, 1702256979, 0xE400000000000000, &selRef_doSave);
  v24 = [objc_opt_self() systemBlueColor];
  [v23 setTintColor_];

  sub_1D5E42B34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D728AF30;
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v26 = inited & 0xC000000000000001;
  v27 = v17;
  v50 = v19;
  v51 = v21;
  v49 = v27;
  if ((inited & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1DA6FB460](0, inited);
  }

  else
  {
    v28 = v27;
  }

  v29 = v28;
  v30 = [v28 navigationItem];
  v31 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
  [v30 setLeftBarButtonItem_];

  v32 = [v29 navigationItem];
  v33 = qword_1EC881ED8;
  [v32 setRightBarButtonItem_];

  if (v26)
  {
    v34 = MEMORY[0x1DA6FB460](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }

    v34 = *(inited + 40);
  }

  v35 = v34;
  v36 = [v34 navigationItem];
  v37 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
  [v36 setLeftBarButtonItem_];

  v38 = [v35 navigationItem];
  [v38 setRightBarButtonItem_];

  if (v26)
  {
    v39 = MEMORY[0x1DA6FB460](2, inited);
LABEL_11:
    v40 = v39;

    v41 = [v40 navigationItem];
    v42 = sub_1D5FC83EC(&qword_1EC881EE0, 0x6C65636E6143, 0xE600000000000000, &selRef_doCancel);
    [v41 setLeftBarButtonItem_];

    v43 = [v40 navigationItem];
    [v43 setRightBarButtonItem_];

    sub_1D5FC99F0(&qword_1EC881EF8, type metadata accessor for DebugFormatWorkspaceSettingsViewController, &unk_1D73331FC);
    v44 = v49;
    sub_1D725E69C();

    sub_1D5FC99F0(&qword_1EC881F00, type metadata accessor for DebugFormatWorkspaceFeedViewController, &unk_1D72F2888);
    v45 = v50;
    sub_1D725E69C();

    sub_1D5FC99F0(&qword_1EC881F08, type metadata accessor for DebugFormatWorkspaceTagViewController, &unk_1D730E6D8);
    v46 = v51;
    sub_1D725E69C();

    v47 = *&v22[v33];
    sub_1D62D7C2C();
    v48 = sub_1D61881BC();

    [v47 setEnabled_];

    sub_1D5EF0664(a2);
    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v39 = *(inited + 48);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D5FC998C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5FC99F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D5FC9A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D5FC8D44(a1, v4, v5, v6, (v1 + 5));
}

uint64_t FeedBannerAdRequester.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedBannerAdRequester.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall FeedBannerAdRequester.hasScheduledRequest(for:)(Swift::String a1)
{

  v1 = sub_1D725AC7C();

  return v1 & 1;
}

Swift::Void __swiftcall FeedBannerAdRequester.executeScheduledRequest(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1D7261ABC();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7261B2C();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = countAndFlagsBits;
  v20 = object;

  v12 = sub_1D725AC7C();

  if (v12)
  {
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = countAndFlagsBits;
    v13[4] = object;
    v23 = sub_1D5FCA338;
    v24 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D5B6B06C;
    v22 = &block_descriptor_14;
    v14 = _Block_copy(&aBlock);

    sub_1D7261AEC();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D5B73908(0);
    sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v11, v7, v14);
    _Block_release(v14);
    (*(v17 + 8))(v7, v4);
    (*(v8 + 8))(v11, v16);
  }
}

void sub_1D5FC9EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5BE1514(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v36 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v38 = (&v36 - v19);
  swift_beginAccess();
  ObjectType = a1;
  v20 = *(a1 + 56);
  v21 = *(v20 + 16);

  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        return;
      }

      sub_1D5C3ABB0(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v13, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      if (sub_1D7260A8C() == a2 && v23 == a3)
      {
        break;
      }

      v25 = sub_1D72646CC();

      if (v25)
      {
        goto LABEL_12;
      }

      ++v22;
      sub_1D5FCBA70(v13, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      if (v21 == v22)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    v26 = v36;
    sub_1D5C3AC18(v13, v36, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    v27 = v38;
    sub_1D5C3AC18(v26, v38, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    v28 = v39;
    v29 = ObjectType;
    sub_1D5FCA344(v27, v39);
    swift_beginAccess();
    if (*(v29 + 16))
    {
      v30 = *(v29 + 24);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      sub_1D5B5E1BC(0, &qword_1EDF19AB0, sub_1D5BE1514, MEMORY[0x1E69E6F90]);
      v31 = v40;
      v32 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D7273AE0;
      v34 = v41;
      (*(v31 + 16))(v33 + v32, v28, v41);
      v35 = *(v30 + 8);
      swift_unknownObjectRetain();
      v35(v33, ObjectType, v30);
      swift_unknownObjectRelease();

      (*(v31 + 8))(v28, v34);
      sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    }

    else
    {
      (*(v40 + 8))(v28, v41);
      sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      swift_endAccess();
    }
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_1D5FCA344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v96 = type metadata accessor for FeedBannerAd(0);
  MEMORY[0x1EEE9AC00](v96, v3);
  v94 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726035C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v87 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7260DDC();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v88 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v91 = &v83 - v13;
  sub_1D5FCB9C0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v90 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v101 = &v83 - v19;
  v102 = sub_1D72604BC();
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v20);
  v86 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v100 = &v83 - v24;
  sub_1D5C25550(0);
  v97 = *(v25 - 8);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v85 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCB9F4(0);
  v84 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v83 - v34;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  v83 = qword_1EDFFC830;
  sub_1D5B5E1BC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7270C10;
  v37 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  v38 = sub_1D7260A8C();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1D5B7E2C0();
  *(v36 + 64) = v42;
  *(v36 + 32) = v38;
  *(v36 + 40) = v40;
  v103 = *(a1 + *(v37 + 24));
  type metadata accessor for CGPoint(0);
  v43 = sub_1D72620FC();
  *(v36 + 96) = v41;
  *(v36 + 104) = v42;
  *(v36 + 72) = v43;
  *(v36 + 80) = v44;
  v45 = sub_1D7262EDC();
  sub_1D725C30C("Executing scheduled request for placement=%{public}@, position=%{public}@", 73, 2, &dword_1D5B42000, v83, v45, v36);

  v46 = sub_1D726025C();
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v83 - 2) = a1;
  sub_1D72606DC();

  v89 = v35;
  sub_1D5C3ABB0(v35, v31, sub_1D5FCB9F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v31;
    v85 = v31[1];

    v49 = *MEMORY[0x1E69B3EA8];
    v50 = sub_1D72604AC();
    v51 = v100;
    (*(*(v50 - 8) + 104))(v100, v49, v50);
    v52 = v99;
    v53 = v102;
    (*(v99 + 104))(v51, *MEMORY[0x1E69B3E98], v102);
    (*(v97 + 56))(v101, 1, 1, v98);
    v54 = v96;
    sub_1D7260D7C();
    (*(v52 + 16))(v86, v51, v53);
    sub_1D7260D7C();
    sub_1D7260CCC();

    v55 = v91;
    sub_1D7260D8C();
    v57 = *a1;
    v56 = a1[1];
    v59 = v92;
    v58 = v93;
    v60 = v88;
    (*(v92 + 16))(v88, v55, v93);
    v61 = v94;
    *&v94[v54[6]] = 0x2000;
    v62 = &v61[v54[7]];
    *v62 = 0;
    v62[8] = 1;
    *&v61[v54[8]] = xmmword_1D72830B0;
    *v61 = v57;
    *(v61 + 1) = v56;
    (*(v59 + 32))(&v61[v54[5]], v60, v58);
    v63 = v101;
    sub_1D5C3ABB0(v101, v90, sub_1D5FCB9C0);
    sub_1D5B73758(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);

    sub_1D726051C();
    (*(v59 + 8))(v55, v58);
    sub_1D5FCBA70(v63, sub_1D5FCB9C0);
    (*(v52 + 8))(v100, v102);
  }

  else
  {
    sub_1D5FCBAD0(0);
    v84 = *(v31 + *(v64 + 48));
    v65 = v98;
    v66 = v97;
    v67 = v85;
    (*(v97 + 32))(v85, v31, v98);
    v68 = v100;
    v69 = v99;
    v70 = v102;
    (*(v99 + 104))(v100, *MEMORY[0x1E69B3ED0], v102);
    v71 = v101;
    (*(v66 + 16))(v101, v67, v65);
    (*(v66 + 56))(v71, 0, 1, v65);
    v72 = v96;
    sub_1D7260D7C();
    (*(v69 + 16))(v86, v68, v70);
    sub_1D7260D7C();
    sub_1D7260CCC();

    v73 = v91;
    sub_1D7260D8C();
    v75 = *a1;
    v74 = a1[1];
    v77 = v92;
    v76 = v93;
    v78 = v88;
    (*(v92 + 16))(v88, v73, v93);
    v79 = v94;
    *&v94[v72[6]] = 0x2000;
    v80 = &v79[v72[7]];
    *v80 = 0;
    v80[8] = 1;
    *&v79[v72[8]] = xmmword_1D72830B0;
    *v79 = v75;
    *(v79 + 1) = v74;
    (*(v77 + 32))(&v79[v72[5]], v78, v76);
    v81 = v101;
    sub_1D5C3ABB0(v101, v90, sub_1D5FCB9C0);
    sub_1D5B73758(qword_1EDF42200, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);

    sub_1D726051C();
    (*(v77 + 8))(v73, v76);
    sub_1D5FCBA70(v81, sub_1D5FCB9C0);
    (*(v99 + 8))(v100, v102);
    (*(v97 + 8))(v85, v98);
  }

  return sub_1D5FCBA70(v89, sub_1D5FCB9F4);
}

uint64_t sub_1D5FCADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7)
{
  sub_1D5BE1514(0);
  v45 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  v20 = (v19 - 8);
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v43 - v26);
  sub_1D5C3ABB0(a1, &v43 - v26, type metadata accessor for FeedBannerAd);
  v28 = v20[7];
  v29 = sub_1D7260A9C();
  (*(*(v29 - 8) + 16))(v27 + v28, a2, v29);
  v30 = (v27 + v20[8]);
  *v30 = a6;
  v30[1] = a7;
  v31 = (v27 + v20[9]);
  *v31 = a3;
  v31[1] = a4;

  sub_1D725B96C();

  if (v46 == 1 && (v47.x = a6, v47.y = a7, !CGRectContainsPoint(*(a5 + 72), v47)))
  {
    sub_1D5C3ABB0(v27, v23, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    swift_beginAccess();
    v39 = *(a5 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 56) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1D6991680(0, v39[2] + 1, 1, v39);
      *(a5 + 56) = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1D6991680((v41 > 1), v42 + 1, 1, v39);
    }

    v39[2] = v42 + 1;
    sub_1D5C3AC18(v23, v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v42, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
    *(a5 + 56) = v39;
    swift_endAccess();
  }

  else
  {
    sub_1D5FCA344(v27, v18);
    swift_beginAccess();
    if (!*(a5 + 16))
    {
      (*(v15 + 8))(v18, v45);
      sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
      return swift_endAccess();
    }

    v32 = *(a5 + 24);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_1D5B5E1BC(0, &qword_1EDF19AB0, sub_1D5BE1514, MEMORY[0x1E69E6F90]);
    v34 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7273AE0;
    v36 = v45;
    (*(v15 + 16))(v35 + v34, v18, v45);
    v37 = *(v32 + 8);
    swift_unknownObjectRetain();
    v37(v35, ObjectType, v32);
    swift_unknownObjectRelease();

    (*(v15 + 8))(v18, v36);
  }

  return sub_1D5FCBA70(v27, type metadata accessor for FeedBannerAdRequester.ScheduledRequest);
}

uint64_t sub_1D5FCB3E4()
{
  v1 = *(type metadata accessor for FeedBannerAd(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D7260A9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v7);
  v12 = *(v0 + v7 + 8);
  v13 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D5FCADDC(v0 + v2, v0 + v5, v11, v12, v13, v9, v10);
}

void sub_1D5FCB4FC()
{
  v1 = v0;
  v2 = sub_1D7261ABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7261B2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725EC1C();
  sub_1D7262E6C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = *(v1 + 64);
  v44.origin.x = v14;
  v44.origin.y = v16;
  v44.size.width = v18;
  v44.size.height = v20;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = v14;
  v45.origin.y = v16;
  v45.size.width = v18;
  v45.size.height = v20;
  v23 = MinX - CGRectGetWidth(v45) * v21;
  v46.origin.x = v14;
  v46.origin.y = v16;
  v46.size.width = v18;
  v46.size.height = v20;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = v14;
  v47.origin.y = v16;
  v47.size.width = v18;
  v47.size.height = v20;
  v25 = MinY - CGRectGetHeight(v47) * v21;
  v48.origin.x = v14;
  v48.origin.y = v16;
  v48.size.width = v18;
  v48.size.height = v20;
  v26 = v21 + v21;
  v27 = (v21 + v21) * CGRectGetWidth(v48);
  v49.origin.x = v14;
  v49.origin.y = v16;
  v49.size.width = v18;
  v49.size.height = v20;
  v28 = v26 * CGRectGetHeight(v49);
  v54.origin.x = v23;
  v29 = v23;
  v54.origin.y = v25;
  v30 = v25;
  v54.size.width = v27;
  v54.size.height = v28;
  v50 = CGRectIntersection(*(v1 + 72), v54);
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  x = v50.origin.x;
  v34 = CGRectGetWidth(v50);
  v41 = v29;
  v51.origin.x = v29;
  v51.origin.y = v30;
  v51.size.width = v27;
  v51.size.height = v28;
  if (v34 < CGRectGetWidth(v51) / 3.0 || (v52.origin.x = x, v52.origin.y = y, v52.size.width = width, v52.size.height = height, v35 = CGRectGetHeight(v52), v53.origin.x = v41, v53.origin.y = v30, v53.size.width = v27, v53.size.height = v28, v35 < CGRectGetHeight(v53) / 3.0))
  {
    v36 = v41;
    *(v1 + 72) = v41;
    *(v1 + 80) = v30;
    *(v1 + 88) = v27;
    *(v1 + 96) = v28;
    v37 = swift_allocObject();
    *(v37 + 16) = v1;
    *(v37 + 24) = v36;
    *(v37 + 32) = v30;
    *(v37 + 40) = v27;
    *(v37 + 48) = v28;
    aBlock[4] = sub_1D5FCBC2C;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_27;
    v38 = _Block_copy(aBlock);

    sub_1D7261AEC();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D5B73758(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D5B73908(0);
    sub_1D5B73758(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v11, v6, v38);
    _Block_release(v38);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1D5FCBA14(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FeedBannerAdRequester.ScheduledRequest(0);
  return (*(v3 + *(v4 + 28)))(a1);
}

uint64_t sub_1D5FCBA70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5FCBAD0(uint64_t a1)
{
  if (!qword_1EDF3A928)
  {
    sub_1D5C25550(255);
    sub_1D5FCBB60(255, &qword_1EDF438F0, MEMORY[0x1E69B43B0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3A928);
    }
  }
}

void sub_1D5FCBB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_1D72609CC();
    v8[1] = sub_1D7260A9C();
    v8[2] = sub_1D5B73758(&qword_1EDF43930, MEMORY[0x1E69B41B0], MEMORY[0x1E69B41A8]);
    v8[3] = MEMORY[0x1E69B41F8];
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t FeedCategory.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D5FCBCA4(uint64_t a1, uint64_t a2)
{
  sub_1D5FCBD08(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5FCBD08(uint64_t a1)
{
  if (!qword_1EDF3B6B0)
  {
    sub_1D5C0EEEC();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B6B0);
    }
  }
}

double FeedCategory.largestCachedIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D5FCBCA4(v1 + 112, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v5)
    {

      v6 = v2 + 112;
LABEL_12:
      sub_1D5FCBCA4(v6, a1);
      return result;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  sub_1D5FCBCA4(v2 + 72, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v8)
    {

      v6 = v2 + 72;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  sub_1D5FCBCA4(v2 + 32, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1D725D2CC();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v10)
    {

      v6 = v2 + 32;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D5EED418(v12);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 FeedCategory.init(identifier:title:icon1x:icon2x:icon3x:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v8 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v8;
  *(a8 + 64) = *(a5 + 32);
  v9 = *(a6 + 16);
  *(a8 + 72) = *a6;
  *(a8 + 88) = v9;
  *(a8 + 104) = *(a6 + 32);
  result = *a7;
  v11 = *(a7 + 16);
  *(a8 + 144) = *(a7 + 32);
  *(a8 + 112) = result;
  *(a8 + 128) = v11;
  return result;
}

uint64_t static FeedCategory.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

double sub_1D5FCBF7C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D728B0D0;
  return result;
}

double FeedCategory.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D728B0D0;
  return result;
}

uint64_t sub_1D5FCBFA8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCategory.debugTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1D5FCC018(uint64_t a1)
{
  result = sub_1D5FCC040();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5FCC040()
{
  result = qword_1EDF12C48;
  if (!qword_1EDF12C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12C48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI15AssetHandleType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D5FCC0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1D5FCC128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatShareAttributionData(uint64_t a1)
{
  result = qword_1EDF23248;
  if (!qword_1EDF23248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5FCC214(uint64_t a1)
{
  result = type metadata accessor for SharedItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1D5FCC280(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedItem(0);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FCC6B8(0, v5);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6F90];
  sub_1D5FCC6EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v28 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5FCC6EC(0, &qword_1EC880490, sub_1D5EA74B8, v12);
  sub_1D5EA74B8(0);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v28;
  sub_1D5FCC750(a2, v11, sub_1D5FCC6B8);
  v17 = type metadata accessor for FormatShareAttributionData(0);
  if ((*(*(v17 - 8) + 48))(v11, 1, v17) == 1)
  {
    sub_1D5FCC7B8(v11, sub_1D5FCC6B8);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    sub_1D5FCC750(v11, v7, type metadata accessor for SharedItem);
    sub_1D5FCC7B8(v11, type metadata accessor for FormatShareAttributionData);
    v20 = sub_1D725844C();
    v21 = [v20 fc_NewsArticleID];

    if (v21)
    {
      v18 = sub_1D726207C();
      v19 = v22;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    sub_1D5FCC7B8(v7, type metadata accessor for SharedItem);
  }

  sub_1D711F844(0x696669746E656449, 0xEA00000000007265, v18, v19, (v16 + v15));
  v23 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v23 - 8) + 56))(v16 + v15, 0, 1, v23);
  sub_1D6795150(0xD000000000000016, 0x80000001D73C5380, 0, 0, v16, v29);
  swift_setDeallocating();
  sub_1D5FCC7B8(v16 + v15, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v24 = swift_allocObject();
  *(inited + 32) = v24;
  *(v24 + 48) = v30;
  v25 = v29[1];
  *(v24 + 16) = v29[0];
  *(v24 + 32) = v25;
  v26 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5FCC7B8(inited + 32, sub_1D5E4F358);
  return v26;
}

void sub_1D5FCC6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5FCC750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FCC7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Feed.name.getter()
{
  v1 = *v0;

  return v1;
}

id Feed.init(name:log:adsEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return a3;
}

uint64_t Feed.init(name:log:dbLog:adsEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1D5FCC888()
{
  result = sub_1D72644BC();
  qword_1EC881F18 = result;
  unk_1EC881F20 = v1;
  return result;
}

uint64_t static Feed.databaseVersion.getter()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC881F18;

  return v0;
}

uint64_t static Feed.layoutTransitionsValue<A>(on:off:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1EDF29DD8 != -1)
  {
    v4 = a1;
    v5 = a3;
    swift_once();
    a1 = v4;
    a3 = v5;
  }

  if (byte_1EDF29DE0 == 1)
  {
    return a1();
  }

  else
  {
    return a3();
  }
}

void sub_1D5FCCA04(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  if ((sub_1D7261A3C() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 effectWithStyle_];
    [v9 setBackgroundEffect_];

    [v9 setBackgroundColor_];
  }

  [v7 setShadowColor_];
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v27 = v7;
  v12 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v13 = objc_opt_self();
  v28 = v12;
  v14 = [v13 labelColor];
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DB958];
  v26 = v16;
  v19 = [v17 systemFontOfSize:a3 weight:v18];
  v20 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 104) = v20;
  *(inited + 80) = v19;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v21 = sub_1D7261D2C();

  [v27 setTitleTextAttributes_];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1D7270C10;
  *(v22 + 32) = v28;
  *(v22 + 40) = [v13 secondaryLabelColor];
  *(v22 + 64) = v15;
  *(v22 + 72) = v26;
  v23 = [v17 systemFontOfSize:a4 weight:*MEMORY[0x1E69DB968]];
  *(v22 + 104) = v20;
  *(v22 + 80) = v23;
  sub_1D5C09CEC(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = sub_1D7261D2C();

  [v27 setSubtitleTextAttributes_];

  v25 = v27;
  [a1 setStandardAppearance_];
  [a1 setScrollEdgeAppearance_];
  [a1 setCompactAppearance_];
}

void sub_1D5FCCDD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      v36 = [a1 theme];
      if (!v36)
      {
        goto LABEL_82;
      }

      v5 = [v36 darkStyleForegroundColor];
      goto LABEL_32;
    case 2:
      v31 = [a1 theme];
      if (!v31)
      {
        goto LABEL_78;
      }

      v13 = [v31 backgroundColor];
      goto LABEL_49;
    case 3:
      v33 = [a1 theme];
      if (!v33)
      {
        goto LABEL_78;
      }

      v13 = [v33 darkStyleBackgroundColor];
      goto LABEL_49;
    case 4:
      v14 = [a1 groupTitleColor];
      if (!v14)
      {
        goto LABEL_82;
      }

      goto LABEL_39;
    case 5:
      v14 = [a1 groupDarkStyleTitleColor];
      if (!v14)
      {
        goto LABEL_82;
      }

LABEL_39:
      v37 = v14;
      goto LABEL_50;
    case 6:
      v64 = [a1 asSports];
      if (!v64)
      {
        goto LABEL_78;
      }

      v65 = [v64 sportsTheme];
      swift_unknownObjectRelease();
      if (!v65)
      {
        goto LABEL_78;
      }

      v13 = [v65 sportsPrimaryColor];
      goto LABEL_49;
    case 7:
      v34 = [a1 asSports];
      if (!v34)
      {
        goto LABEL_78;
      }

      v35 = [v34 sportsTheme];
      swift_unknownObjectRelease();
      if (!v35)
      {
        goto LABEL_78;
      }

      v13 = [v35 sportsSecondaryColor];
      goto LABEL_49;
    case 8:
      swift_getObjectType();
      v91 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v141 = v93;
      v146 = v92;
      v95 = v94;
      v97 = v96;

      v98 = swift_allocObject();
      v99.f64[0] = v146;
      v99.f64[1] = v141;
      *(v98 + 16) = vmulq_f64(v99, vdupq_n_s64(0x406FE00000000000uLL));
      *(v98 + 32) = v95 * 255.0;
      *(v98 + 40) = v97;
      *(v98 + 48) = 0;
      v41 = v98 | 0x6000000000000000;
      goto LABEL_84;
    case 9:
      v17 = [a1 theme];
      if (v17)
      {
        v18 = [v17 navigationChromeBackgroundColor];
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = [v18 ne_color];

          sub_1D726353C();
          v139 = v21;
          v144 = v20;
          v23 = v22;
          v25 = v24;
          v26 = swift_allocObject();
          v27.f64[0] = v144;
          v27.f64[1] = v139;
          *(v26 + 16) = vmulq_f64(v27, vdupq_n_s64(0x406FE00000000000uLL));
          *(v26 + 32) = v23 * 255.0;
          *(v26 + 40) = v25;
          *(v26 + 48) = 0;
          v28 = [a1 theme];
          if (v28 && (v29 = [v28 darkStyleNavigationChromeBackgroundColor], swift_unknownObjectRelease(), v29))
          {
            v30 = [v29 ne_color];
          }

          else
          {
            v30 = v19;
          }

          v115 = swift_allocObject();
          sub_1D726353C();
          v142 = v117;
          v148 = v116;
          v119 = v118;
          v121 = v120;

          v122 = swift_allocObject();
          v123.f64[0] = v148;
          v123.f64[1] = v142;
          *(v122 + 16) = vmulq_f64(v123, vdupq_n_s64(0x406FE00000000000uLL));
          *(v122 + 32) = v119 * 255.0;
          *(v122 + 40) = v121;
          *(v122 + 48) = 0;
          v124 = v122 | 0x6000000000000000;
          v125 = v26 | 0x6000000000000000;
          goto LABEL_75;
        }
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v100 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
        swift_unknownObjectRelease();
        if (v100)
        {
          v101 = [objc_opt_self() systemBackgroundColor];
          v102 = swift_allocObject();
          *(v102 + 16) = v101;
          v103 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          aBlock[4] = sub_1D5FCF5F4;
          aBlock[5] = v102;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D6E0CD34;
          aBlock[3] = &block_descriptor_15;
          v104 = _Block_copy(aBlock);
          v105 = [v103 initWithDynamicProvider_];
          _Block_release(v104);

          UIColor.dynamicFormatColor.getter(a2);

          return;
        }
      }

      if ([a1 asSports])
      {
        swift_getObjectType();
        v107 = FCSportsProviding.navigationBarBackgroundColor.getter();
        goto LABEL_68;
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v135 = FCFeedTheming.navigationBarBackgroundColor.getter();
        goto LABEL_81;
      }

LABEL_78:
      v136 = swift_allocObject();
      v137 = 29;
      goto LABEL_83;
    case 0xA:
      v76 = [a1 theme];
      if (v76)
      {
        v77 = [v76 navigationChromeBackgroundColor];
        swift_unknownObjectRelease();
        if (v77)
        {
          v78 = [v77 ne_color];

          v79 = sub_1D726355C();
          sub_1D726353C();
          v140 = v81;
          v145 = v80;
          v83 = v82;
          v85 = v84;

          v86 = swift_allocObject();
          v87.f64[0] = v145;
          v87.f64[1] = v140;
          *(v86 + 16) = vmulq_f64(v87, vdupq_n_s64(0x406FE00000000000uLL));
          *(v86 + 32) = v83 * 255.0;
          *(v86 + 40) = v85;
          *(v86 + 48) = 0;
          v88 = [a1 theme];
          if (v88 && (v89 = [v88 darkStyleNavigationChromeBackgroundColor], swift_unknownObjectRelease(), v89))
          {
            v90 = [v89 ne_color];
          }

          else
          {
            v90 = v78;
          }

          v115 = swift_allocObject();
          v126 = sub_1D726355C();

          sub_1D726353C();
          v143 = v128;
          v149 = v127;
          v130 = v129;
          v132 = v131;

          v133 = swift_allocObject();
          v134.f64[0] = v149;
          v134.f64[1] = v143;
          *(v133 + 16) = vmulq_f64(v134, vdupq_n_s64(0x406FE00000000000uLL));
          *(v133 + 32) = v130 * 255.0;
          *(v133 + 40) = v132;
          *(v133 + 48) = 0;
          v124 = v133 | 0x6000000000000000;
          v125 = v86 | 0x6000000000000000;
LABEL_75:
          *(v115 + 16) = v125;
          *(v115 + 24) = v124;
          v41 = v115 | 0x3000000000000000;
          goto LABEL_84;
        }
      }

      if ([a1 theme])
      {
        swift_getObjectType();
        v106 = FCFeedTheming.hasNavigationChromeBackgroundImage.getter();
        swift_unknownObjectRelease();
        if (v106)
        {
          goto LABEL_82;
        }
      }

      if (![a1 asSports])
      {
        if ([a1 theme])
        {
          swift_getObjectType();
          v135 = FCFeedTheming.navigationBarForegroundColor.getter();
LABEL_81:
          v138 = v135;
          swift_unknownObjectRelease();
          UIColor.dynamicFormatColor.getter(aBlock);

          v41 = aBlock[0];
LABEL_84:
          *a2 = v41;
          return;
        }

LABEL_82:
        v136 = swift_allocObject();
        v137 = 21;
LABEL_83:
        *(v136 + 16) = v137;
        *(v136 + 24) = 0x3FF0000000000000;
        *(v136 + 32) = 0;
        v41 = v136 | 0x1000000000000000;
        goto LABEL_84;
      }

      swift_getObjectType();
      v107 = FCSportsProviding.navigationBarForegroundColor.getter();
LABEL_68:
      v147 = v107;
      UIColor.dynamicFormatColor.getter(a2);
      swift_unknownObjectRelease();

      return;
    case 0xB:
      v12 = [a1 theme];
      if (!v12)
      {
        goto LABEL_78;
      }

      v13 = [v12 feedBackgroundColor];
      goto LABEL_49;
    case 0xC:
      v15 = [a1 theme];
      if (!v15)
      {
        goto LABEL_78;
      }

      v13 = [v15 darkStyleFeedBackgroundColor];
LABEL_49:
      v37 = v13;
      swift_unknownObjectRelease();
      if (v37)
      {
        goto LABEL_50;
      }

      goto LABEL_78;
    case 0xD:
      v43 = [a1 theme];
      if (!v43)
      {
        goto LABEL_78;
      }

      v8 = [v43 feedBackgroundColor];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_78;
      }

      v44 = [a1 theme];
      if (!v44)
      {
        goto LABEL_65;
      }

      v10 = [v44 darkStyleFeedBackgroundColor];
      goto LABEL_44;
    case 0xE:
      v11 = [a1 theme];
      if (!v11)
      {
        goto LABEL_82;
      }

      v5 = [v11 feedControlColor];
      goto LABEL_32;
    case 0xF:
      v32 = [a1 theme];
      if (!v32)
      {
        goto LABEL_82;
      }

      v5 = [v32 darkStyleFeedControlColor];
      goto LABEL_32;
    case 0x10:
      v7 = [a1 theme];
      if (!v7)
      {
        goto LABEL_82;
      }

      v8 = [v7 feedControlColor];
      swift_unknownObjectRelease();
      if (!v8)
      {
        goto LABEL_82;
      }

      v9 = [a1 theme];
      if (!v9)
      {
        goto LABEL_65;
      }

      v10 = [v9 darkStyleFeedControlColor];
LABEL_44:
      v45 = v10;
      swift_unknownObjectRelease();
      if (v45)
      {
        v46 = swift_allocObject();
        v47 = swift_allocObject();
        [v8 red];
        v49 = v48 * 255.0;
        [v8 green];
        v51 = v50 * 255.0;
        [v8 blue];
        v53 = v52 * 255.0;
        [v8 alpha];
        *(v47 + 16) = v49;
        *(v47 + 24) = v51;
        *(v47 + 32) = v53;
        *(v47 + 40) = v54;
        *(v47 + 48) = 0;
        v55 = swift_allocObject();
        [v45 red];
        v57 = v56 * 255.0;
        [v45 green];
        v59 = v58 * 255.0;
        [v45 blue];
        v61 = v60 * 255.0;
        [v45 alpha];
        v63 = v62;

        *(v55 + 16) = v57;
        *(v55 + 24) = v59;
        *(v55 + 32) = v61;
        *(v55 + 40) = v63;
        *(v55 + 48) = 0;
        *(v46 + 16) = v47 | 0x6000000000000000;
        *(v46 + 24) = v55 | 0x6000000000000000;
        v41 = v46 | 0x3000000000000000;
      }

      else
      {
LABEL_65:
        v66 = swift_allocObject();
        [v8 red];
        v109 = v108 * 255.0;
        [v8 green];
        v111 = v110 * 255.0;
        [v8 blue];
        v113 = v112 * 255.0;
        [v8 alpha];
        *(v66 + 16) = v109;
        *(v66 + 24) = v111;
        *(v66 + 32) = v113;
        *(v66 + 40) = v114;
        *(v66 + 48) = 0;

LABEL_51:
        v41 = v66 | 0x6000000000000000;
      }

      goto LABEL_84;
    case 0x11:
      v38 = [a1 asSports];
      if (v38)
      {
        v39 = [v38 sportsTheme];
        swift_unknownObjectRelease();
        if (v39)
        {
          v37 = [v39 sportsEventNavigationForegroundColor];
          swift_unknownObjectRelease();
          if (v37)
          {
            goto LABEL_50;
          }
        }
      }

      v40 = swift_allocObject();
      *(v40 + 16) = 11;
      *(v40 + 24) = 0x3FF0000000000000;
      *(v40 + 32) = 0;
      v41 = v40 | 0x2000000000000000;
      goto LABEL_84;
    default:
      v4 = [a1 theme];
      if (!v4)
      {
        goto LABEL_82;
      }

      v5 = [v4 foregroundColor];
LABEL_32:
      v37 = v5;
      swift_unknownObjectRelease();
      if (!v37)
      {
        goto LABEL_82;
      }

LABEL_50:
      v66 = swift_allocObject();
      [v37 red];
      v68 = v67 * 255.0;
      [v37 green];
      v70 = v69 * 255.0;
      [v37 blue];
      v72 = v71 * 255.0;
      [v37 alpha];
      v74 = v73;

      *(v66 + 16) = v68;
      *(v66 + 24) = v70;
      *(v66 + 32) = v72;
      *(v66 + 40) = v74;
      *(v66 + 48) = 0;
      goto LABEL_51;
  }
}

unint64_t sub_1D5FCDB24(char a1)
{
  result = 0x756F726765726F66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x756F72676B636162;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x74695470756F7267;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6F6C6F436E6F6369;
      break;
    case 9:
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5FCDD44(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D5FCDB24(*a1);
  v5 = v4;
  if (v3 == sub_1D5FCDB24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D5FCDDCC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5FCDB24(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5FCDE30(uint64_t a1)
{
  sub_1D5FCDB24(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5FCDE84(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D5FCDB24(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5FCDEE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5FCF7C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D5FCDF14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5FCDB24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTagBinding.Color.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5FCE098()
{
  result = qword_1EC881F28;
  if (!qword_1EC881F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F28);
  }

  return result;
}

unint64_t sub_1D5FCE0EC(uint64_t a1)
{
  result = sub_1D5FCE114();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FCE114()
{
  result = qword_1EC881F30;
  if (!qword_1EC881F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F30);
  }

  return result;
}

unint64_t sub_1D5FCE1A8(void *a1)
{
  a1[1] = sub_1D5FCE1E0();
  a1[2] = sub_1D5FCE234();
  result = sub_1D5FCE098();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FCE1E0()
{
  result = qword_1EDF2FBC8;
  if (!qword_1EDF2FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBC8);
  }

  return result;
}

unint64_t sub_1D5FCE234()
{
  result = qword_1EDF110C0;
  if (!qword_1EDF110C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110C0);
  }

  return result;
}

unint64_t sub_1D5FCE30C()
{
  result = qword_1EC881F58;
  if (!qword_1EC881F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881F58);
  }

  return result;
}

unint64_t sub_1D5FCE360()
{
  result = qword_1EDF2FBD8;
  if (!qword_1EDF2FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBD8);
  }

  return result;
}

uint64_t sub_1D5FCE3B4@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  switch(*a1)
  {
    case 1:
      v8 = 0x80000001D73C54F0;
      goto LABEL_15;
    case 2:
      sub_1D5FCCDD4(a2, &v62);
      v22 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v23 = *(v5 + 24);
      *(a3 + v23) = v22;
      v24 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a3 + v23, 0, 1, v24);
      *a3 = xmmword_1D728B300;
      break;
    case 3:
      v8 = 0x80000001D73C54D0;
LABEL_15:
      sub_1D5FCCDD4(a2, &v62);
      v31 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v32 = *(v5 + 24);
      *(a3 + v32) = v31;
      v33 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(a3 + v32, 0, 1, v33);
      v21 = 0xD000000000000011;
      goto LABEL_22;
    case 4:
      sub_1D5FCCDD4(a2, &v62);
      v15 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v16 = *(v5 + 24);
      *(a3 + v16) = v15;
      v17 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
      *a3 = xmmword_1D728B2F0;
      break;
    case 5:
      v8 = 0x80000001D73C54B0;
      goto LABEL_21;
    case 6:
      sub_1D5FCCDD4(a2, &v62);
      v40 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v41 = *(v5 + 24);
      *(a3 + v41) = v40;
      v42 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v42 - 8) + 56))(a3 + v41, 0, 1, v42);
      *a3 = xmmword_1D728B2E0;
      break;
    case 7:
      v8 = 0x80000001D73C5490;
      sub_1D5FCCDD4(a2, &v62);
      v28 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v29 = *(v5 + 24);
      *(a3 + v29) = v28;
      v30 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(a3 + v29, 0, 1, v30);
      v21 = 0xD000000000000010;
      goto LABEL_22;
    case 8:
      swift_getObjectType();
      v48 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v60 = v50;
      v61 = v49;
      v52 = v51;
      v54 = v53;

      v55 = swift_allocObject();
      v56.f64[0] = v61;
      v56.f64[1] = v60;
      *(v55 + 16) = vmulq_f64(v56, vdupq_n_s64(0x406FE00000000000uLL));
      *(v55 + 32) = v52 * 255.0;
      *(v55 + 40) = v54;
      *(v55 + 48) = 0;
      v57 = v55 | 0x6000000000000000;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v58 = *(v5 + 24);
      *(a3 + v58) = v57;
      v59 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(a3 + v58, 0, 1, v59);
      *a3 = xmmword_1D728B2D0;
      break;
    case 9:
      v8 = 0x80000001D73C5440;
      goto LABEL_21;
    case 0xA:
      v8 = 0x80000001D73C5420;
LABEL_21:
      sub_1D5FCCDD4(a2, &v62);
      v43 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v44 = *(v5 + 24);
      *(a3 + v44) = v43;
      v45 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(a3 + v44, 0, 1, v45);
      v21 = 0xD000000000000012;
      goto LABEL_22;
    case 0xB:
      sub_1D5FCCDD4(a2, &v62);
      v12 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(v5 + 24);
      *(a3 + v13) = v12;
      v14 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(a3 + v13, 0, 1, v14);
      *a3 = xmmword_1D728B2C0;
      break;
    case 0xC:
      v8 = 0x80000001D73C5400;
      goto LABEL_8;
    case 0xD:
      v8 = 0x80000001D73C53E0;
      sub_1D5FCCDD4(a2, &v62);
      v37 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v38 = *(v5 + 24);
      *(a3 + v38) = v37;
      v39 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(a3 + v38, 0, 1, v39);
      v21 = 0xD000000000000019;
      goto LABEL_22;
    case 0xE:
      sub_1D5FCCDD4(a2, &v62);
      v9 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v10 = *(v5 + 24);
      *(a3 + v10) = v9;
      v11 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(a3 + v10, 0, 1, v11);
      *a3 = xmmword_1D728B2B0;
      break;
    case 0xF:
      v8 = 0x80000001D73C53C0;
      sub_1D5FCCDD4(a2, &v62);
      v25 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(v5 + 24);
      *(a3 + v26) = v25;
      v27 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(a3 + v26, 0, 1, v27);
      v21 = 0xD000000000000013;
      goto LABEL_22;
    case 0x10:
      v8 = 0x80000001D73C53A0;
LABEL_8:
      sub_1D5FCCDD4(a2, &v62);
      v18 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v19 = *(v5 + 24);
      *(a3 + v19) = v18;
      v20 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v20 - 8) + 56))(a3 + v19, 0, 1, v20);
      v21 = 0xD000000000000016;
      goto LABEL_22;
    case 0x11:
      v8 = 0x80000001D73C5460;
      sub_1D5FCCDD4(a2, &v62);
      v34 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v35 = *(v5 + 24);
      *(a3 + v35) = v34;
      v36 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(a3 + v35, 0, 1, v36);
      v21 = 0xD000000000000028;
LABEL_22:
      *a3 = v21;
      *(a3 + 8) = v8;
      break;
    default:
      sub_1D5FCCDD4(a2, &v62);
      v4 = v62;
      v5 = type metadata accessor for FormatInspectionItem(0);
      v6 = *(v5 + 24);
      *(a3 + v6) = v4;
      v7 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v7 - 8) + 56))(a3 + v6, 0, 1, v7);
      *a3 = xmmword_1D728B310;
      break;
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v46 = a3 + *(v5 + 28);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 16) = -1;
  type metadata accessor for FormatInspectionItem(0);
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t sub_1D5FCEDAC@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v5 = type metadata accessor for FormatJsonKeyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 18, 0);
  v10 = 0;
  v11 = v17;
  do
  {
    v16 = byte_1F50F36F8[v10 + 32];
    sub_1D5FCEF50(&v16, a1, v9);
    v17 = v11;
    v13 = *(v11 + 16);
    v12 = *(v11 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D6997B40((v12 > 1), v13 + 1, 1);
      v11 = v17;
    }

    ++v10;
    *(v11 + 16) = v13 + 1;
    sub_1D5FCF818(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for FormatJsonKeyValue);
  }

  while (v10 != 18);
  *a2 = v11;
  type metadata accessor for FormatJson(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5FCEF50@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FormatJson(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(*a1)
  {
    case 1:
      v12 = 0xD000000000000018;
      v28 = 1;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "darkStyleForegroundColor";
      goto LABEL_17;
    case 2:
      v28 = 2;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v10 = 1801675106;
      goto LABEL_10;
    case 3:
      v12 = 0xD000000000000018;
      v28 = 3;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "darkStyleBackgroundColor";
      goto LABEL_17;
    case 4:
      v28 = 4;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0xEF726F6C6F43656CLL;
      v12 = 0x74695470756F7267;
      break;
    case 5:
      v12 = 0xD000000000000018;
      v28 = 5;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v14 = "groupDarkStyleTitleColor";
LABEL_17:
      v11 = (v14 - 32) | 0x8000000000000000;
      break;
    case 6:
      v28 = 6;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7B50;
      v12 = 0xD000000000000012;
      break;
    case 7:
      v28 = 7;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7B70;
      v12 = 0xD000000000000014;
      break;
    case 8:
      swift_getObjectType();
      v15 = FCTagProviding.iconColor.getter();
      sub_1D726353C();
      v26 = v17;
      v27 = v16;
      v19 = v18;
      v21 = v20;

      v22 = swift_allocObject();
      *&v23.f64[0] = v27;
      *&v23.f64[1] = v26;
      *(v22 + 16) = vmulq_f64(v23, vdupq_n_s64(0x406FE00000000000uLL));
      *(v22 + 32) = v19 * 255.0;
      *(v22 + 40) = v21;
      *(v22 + 48) = 0;
      *v9 = v22 | 0x6000000000000000;
      swift_storeEnumTagMultiPayload();
      v11 = 0xE900000000000072;
      v12 = 0x6F6C6F436E6F6369;
      break;
    case 9:
      v28 = 9;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v13 = "navBarBackgroundColor";
      goto LABEL_21;
    case 0xA:
      v28 = 10;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v13 = "navBarForegroundColor";
LABEL_21:
      v11 = (v13 - 32) | 0x8000000000000000;
      v12 = 0xD000000000000015;
      break;
    case 0xB:
      v28 = 11;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7BD0;
      v12 = 0xD000000000000013;
      break;
    case 0xC:
      v28 = 12;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7BF0;
      v12 = 0xD00000000000001CLL;
      break;
    case 0xD:
      v28 = 13;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C10;
      v12 = 0xD00000000000001ALL;
      break;
    case 0xE:
      v28 = 14;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C30;
      v12 = 0xD000000000000010;
      break;
    case 0xF:
      v28 = 15;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C50;
      v12 = 0xD000000000000019;
      break;
    case 0x10:
      v28 = 16;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C70;
      v12 = 0xD000000000000017;
      break;
    case 0x11:
      v28 = 17;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v11 = 0x80000001D73B7C90;
      v12 = 0xD000000000000024;
      break;
    default:
      v28 = 0;
      sub_1D5FCCDD4(a2, &v29);
      *v9 = v29;
      swift_storeEnumTagMultiPayload();
      v10 = 1701998438;
LABEL_10:
      v12 = v10 | 0x756F726700000000;
      v11 = 0xEF726F6C6F43646ELL;
      break;
  }

  *a3 = v12;
  a3[1] = v11;
  v24 = type metadata accessor for FormatJsonKeyValue(0);
  return sub_1D5FCF818(v9, a3 + *(v24 + 20), type metadata accessor for FormatJson);
}

double sub_1D5FCF5FC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 18, 0);
  v9 = 0;
  v10 = *&v17[0];
  do
  {
    v16 = byte_1F50F36F8[v9 + 32];
    sub_1D5FCE3B4(&v16, a1, v8);
    *&v17[0] = v10;
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D69972A4((v11 > 1), v12 + 1, 1);
      v10 = *&v17[0];
    }

    ++v9;
    *(v10 + 16) = v12 + 1;
    sub_1D5FCF818(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, sub_1D5EA74B8);
  }

  while (v9 != 18);
  sub_1D6795150(0x726F6C6F43, 0xE500000000000000, 0, 0, v10, v17);

  result = *v17;
  v14 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v14;
  *(a2 + 32) = v18;
  return result;
}

unint64_t sub_1D5FCF7C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5FCF818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5FCF888(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for FormatContentSlotItemResolution(0);
    return a2;
  }

  return result;
}