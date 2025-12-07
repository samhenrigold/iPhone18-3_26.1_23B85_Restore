void sub_1DAD7F078(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();

  v6 = sub_1DAD84884(v5);

  os_unfair_lock_unlock(*(v3 + 16));

  if (v6 >> 62)
  {
LABEL_33:
    v7 = sub_1DAED247C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_29:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v26 = v6 + 32;
  v27 = v6 & 0xFFFFFFFFFFFFFF8;
  v29 = v6;
  v28 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v9)
    {
      v10 = MEMORY[0x1E127E1F0](v8, v6);
      goto LABEL_9;
    }

    if (v8 >= *(v27 + 16))
    {
      break;
    }

    v10 = *(v26 + 8 * v8);
LABEL_9:
    v6 = v10;
    v11 = __OFADD__(v8, 1);
    v12 = v8 + 1;
    if (v11)
    {
      goto LABEL_32;
    }

    v13 = [v10 widgets];
    sub_1DAD674D4(0, &unk_1EE005500, 0x1E6994238);
    v14 = sub_1DAED1E7C();

    v30 = v12;
    v31 = v6;
    if (v14 >> 62)
    {
      v15 = sub_1DAED247C();
      if (v15)
      {
LABEL_12:
        v16 = 0;
        v6 = v14 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1E127E1F0](v16, v14);
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
            break;
          }

          v20 = [v17 uniqueIdentifier];
          v21 = sub_1DAED1CEC();
          v23 = v22;

          if (v21 == a1 && v23 == a2)
          {

            goto LABEL_29;
          }

          v25 = sub_1DAED289C();

          if (v25)
          {

            goto LABEL_29;
          }

          ++v16;
          if (v19 == v15)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_12;
      }
    }

LABEL_4:

    v6 = v29;
    v8 = v30;
    v9 = v28;
    if (v30 == v7)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_1DAD7F350(uint64_t a1)
{
  v2 = sub_1DAED15DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  result = MEMORY[0x1E127DBF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1DAD7F4EC(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1DAD7F4EC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DAED15DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v33 = a2;
  v11 = sub_1DAED1C5C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DAD7CB5C(&qword_1EE005710, MEMORY[0x1E6985750], MEMORY[0x1E6985768]);
      v21 = sub_1DAED1CAC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DAD7F7CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1DAD7F7CC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1DAED15DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DAE8852C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DAE89068();
      goto LABEL_12;
    }

    sub_1DAE896B4(v11 + 1);
  }

  v13 = *v3;
  sub_1DAD7CB5C(&qword_1EE005718, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  v14 = sub_1DAED1C5C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1DAD7CB5C(&qword_1EE005710, MEMORY[0x1E6985750], MEMORY[0x1E6985768]);
      v22 = sub_1DAED1CAC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DAED28EC();
  __break(1u);
  return result;
}

uint64_t sub_1DAD7FA70(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v4 = sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
    v5 = sub_1DAE8A564(&qword_1EE005538, &qword_1EE005540, 0x1E69943A0);
    result = MEMORY[0x1E127DBF0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x1E69943A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1DAD8C3E4(&v12, v10, &qword_1EE005540, 0x1E69943A0, &qword_1ECC0A2F0, &qword_1DAEDD848);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DAED247C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DAD7FBFC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DAED0DDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DAD805B0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DADDB9D8();
      goto LABEL_7;
    }

    sub_1DAD80034(v17, a3 & 1);
    v21 = sub_1DAD805B0(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1DAD7FDEC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1DAED28FC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1DAD7FDEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DAED0DDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1DAD7FEC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection);

  if (sub_1DAED101C())
  {

    v2 = 0;
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void *sub_1DAD7FF28(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload);

  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (v4 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
    os_unfair_lock_lock(*(v5 + 16));
    v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

    v7 = sub_1DAD84F7C(a1, v6);

    os_unfair_lock_unlock(*(v5 + 16));
    return v7;
  }

  else
  {
    sub_1DADA5978();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_1DAD80034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1DAED0DDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C0, &qword_1DAED6248);
  v40 = v4;
  v10 = sub_1DAED277C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1DAD888A8(&qword_1EE0057E0, MEMORY[0x1E6993D98], MEMORY[0x1E6993DA0]);
      v26 = sub_1DAED1C5C();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

unint64_t sub_1DAD80410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1DAD8E95C(v24, v25, v26);
      v20 = sub_1DAED1CAC();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1DAD805B0(uint64_t a1)
{
  sub_1DAED0DDC();
  v2 = MEMORY[0x1E6993D98];
  sub_1DAD8E95C(&qword_1EE0057E0, MEMORY[0x1E6993D98], MEMORY[0x1E6993DA0]);
  v3 = sub_1DAED1C5C();
  return sub_1DAD80410(a1, v3, MEMORY[0x1E6993D98], &qword_1EE0057D8, v2, MEMORY[0x1E6993DA8]);
}

double sub_1DAD80684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED0DDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock) + 16));
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews) & 1) == 0)
  {
    v37 = v7;
    v38 = v8;
    v39 = v5;
    v40 = v4;
    v35 = *(v11 + 16);
    v36 = a1;
    v35(v15, a1, v10);
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED200C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v19 = 136446210;
      v33 = sub_1DAED0D8C();
      v21 = v20;
      (*(v11 + 8))(v15, v10);
      v22 = sub_1DAD6482C(v33, v21, aBlock);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_1DAD61000, v17, v18, "Attempting to load content for key: %{public}s", v19, 0xCu);
      v23 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E127F100](v23, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    v24 = *(v2 + 32);
    v25 = v41;
    v35(v41, v36, v10);
    v26 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    (*(v11 + 32))(v27 + v26, v25, v10);
    aBlock[4] = sub_1DAD84E14;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_78;
    v28 = _Block_copy(aBlock);
    v29 = v24;

    v30 = v42;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v44 = MEMORY[0x1E69E7CC0];
    sub_1DAD722E0(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    v31 = v37;
    v32 = v40;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v30, v31, v28);
    _Block_release(v28);

    (*(v39 + 8))(v31, v32);
    (*(v43 + 8))(v30, v38);
  }

  return result;
}

uint64_t sub_1DAD80BE4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DAED0DDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED0DBC();
  v12 = [v11 widgetByReplacingIntent_];

  v13 = [v12 widgetByRemovingPersona];
  v14 = v13;
  sub_1DAED0DCC();
  sub_1DAED0DAC();
  v15 = *(v3 + 72);
  v16 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v17 = *(v16 + 16);

  os_unfair_lock_lock(v17);
  sub_1DAD72328(v15, v10, a1, a2, a3);
  os_unfair_lock_unlock(*(v16 + 16));

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1DAD80D9C(void *a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1DAD80EFC(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_1DAD7C4F4(v13, a2 & 1);
      result = sub_1DAD80EFC(a1);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1DADDB87C();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a3;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a1;
  *(v18[7] + 8 * result) = a3;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a1;
}

double sub_1DAD80F4C(char a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction))
  {
    if (a1)
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction) = 0;
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_hasBeenActive) = 1;
    sub_1DAED112C();
    v3 = v1;
    sub_1DAED256C();

    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
    v5 = [v4 widget];
    v6 = sub_1DAED22BC();
    v8 = v7;

    MEMORY[0x1E127DA50](v6, v8);

    MEMORY[0x1E127DA50](0x3A656E6563732820, 0xE900000000000020);
    v9 = sub_1DAD8CE78(v4);
    MEMORY[0x1E127DA50](v9);

    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    *(v3 + v2) = sub_1DAED111C();
  }

  return result;
}

_BYTE *sub_1DAD810E0(void *a1, void *a2, void *a3)
{
  v286 = a3;
  v265 = a1;
  v266 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v253 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v253 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v253 - v10;
  v279 = sub_1DAECEDEC();
  v258 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v13 = &v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08358, &qword_1DAED6568);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v281 = &v253 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v274 = &v253 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v273 = &v253 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v272 = &v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v271 = &v253 - v23;
  v24 = sub_1DAECF0AC();
  v267 = *(v24 - 8);
  v268 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v259 = &v253 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v270 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v269 = &v253 - v29;
  v30 = sub_1DAED10DC();
  v263 = *(v30 - 8);
  v264 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v262 = &v253 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1DAECDD3C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08378, &qword_1DAEDA7F0);
  v282 = *(v36 - 8);
  v283 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v253 - v37;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v39 + 16, v299, &qword_1ECC08380, &unk_1DAED6590);
  if (!v300)
  {
    __break(1u);
    goto LABEL_70;
  }

  v41 = __swift_project_boxed_opaque_existential_1(v299, v300);
  sub_1DAD648F8(*v41 + 64, v301);

  __swift_destroy_boxed_opaque_existential_1Tm(v299);
  result = sub_1DAD6495C(v39 + 16, v299, &qword_1ECC08380, &unk_1DAED6590);
  if (!v300)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v285 = *(*__swift_project_boxed_opaque_existential_1(v299, v300) + 104);

  __swift_destroy_boxed_opaque_existential_1Tm(v299);
  result = sub_1DAD6495C(v39 + 16, v297, &qword_1ECC08380, &unk_1DAED6590);
  if (!v298)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v42 = __swift_project_boxed_opaque_existential_1(v297, v298);
  sub_1DAD648F8(*v42 + 16, v299);
  __swift_destroy_boxed_opaque_existential_1Tm(v297);
  result = sub_1DAD6495C(v39 + 16, v297, &qword_1ECC08380, &unk_1DAED6590);
  if (!v298)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v255 = v5;
  v275 = v11;
  v284 = *(*__swift_project_boxed_opaque_existential_1(v297, v298) + 56);

  __swift_destroy_boxed_opaque_existential_1Tm(v297);
  sub_1DAD648F8(v39 + 144, v297);
  sub_1DAD648F8(v39 + 104, v296);
  result = sub_1DAD6495C(v39 + 16, &v293, &qword_1ECC08380, &unk_1DAED6590);
  if (!v295)
  {
LABEL_73:
    __break(1u);
    return result;
  }

  v43 = __swift_project_boxed_opaque_existential_1(&v293, v295);
  *(v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter) = *(*v43 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm(&v293);
  v44 = [v286 hostIdentifier];
  v261 = v39;
  v256 = v8;
  v257 = v13;
  if (v44)
  {
    v45 = v44;
    sub_1DAED1CEC();
  }

  v280 = v38;
  sub_1DAECE24C();
  v293 = 0;
  v294 = 0xE000000000000000;
  sub_1DAED256C();

  v293 = 0xD000000000000014;
  v294 = 0x80000001DAEE0E50;
  sub_1DAECDD2C();
  v46 = sub_1DAECDD1C();
  (*(v33 + 8))(v35, v32);
  v292[0] = v46;
  v47 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v47);

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  v48 = v286;
  v49 = [v286 _FBSScene];
  v50 = [v49 identifier];

  v51 = sub_1DAED1CEC();
  v53 = v52;

  MEMORY[0x1E127DA50](v51, v53);

  v54 = v293;
  v55 = v294;
  v260 = [v48 contentType];
  sub_1DAD648F8(v299, &v293);
  sub_1DAD648F8(v297, v292);
  sub_1DAD648F8(v296, v291);
  type metadata accessor for WidgetRendererSession(0);
  v56 = swift_allocObject();
  *(v56 + 56) = 0;
  v57 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  v58 = *MEMORY[0x1E6993F90];
  v59 = sub_1DAECE20C();
  (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
  v60 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
  v61 = sub_1DAECE55C();
  v254 = *(v61 - 8);
  v62 = *(v254 + 56);
  v277 = v254 + 56;
  v278 = v61;
  v276 = v62;
  (v62)(v56 + v60, 1, 1);
  *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) = 0;
  v63 = v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
  v65 = sub_1DAECDCEC();
  (*(*(v65 - 8) + 56))(v56 + v64, 1, 1, v65);
  *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
  *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
  v66 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = objc_allocWithZone(WRWidgetRendererSessionKey);
  v68 = v284;

  v69 = sub_1DAED1CBC();
  v71 = v265;
  v70 = v266;
  v72 = [v67 initWithIdentifier:v69 widget:v265 metrics:v266];

  *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID) = v72;
  sub_1DAD648F8(&v293, v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
  *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) = v68;
  sub_1DAD648F8(v292, v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider);
  sub_1DAD648F8(v291, v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor);
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  *(v56 + 32) = v71;
  *(v56 + 40) = v70;
  v73 = *(v56 + 56);
  *(v56 + 48) = v260;
  *(v56 + 56) = 0;

  v74 = v71;
  v75 = v70;

  v76 = v262;
  sub_1DAED10CC();
  (*(v263 + 32))(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers, v76, v264);
  v77 = sub_1DAD7D2C8(v56);
  v78 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  *v78 = v77;
  v78[1] = v79;

  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v279, qword_1EE0117D8);

  v80 = sub_1DAECEDCC();
  v81 = sub_1DAED203C();

  v82 = os_log_type_enabled(v80, v81);
  v265 = v74;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v288 = v84;
    *v83 = 136446210;
    v85 = *v78;
    v86 = v78[1];

    v87 = sub_1DAD6482C(v85, v86, &v288);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_1DAD61000, v80, v81, "[%{public}s] Created", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x1E127F100](v84, -1, -1);
    MEMORY[0x1E127F100](v83, -1, -1);
  }

  v88 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
  sub_1DAD648F8(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, &v288);
  v89 = v290;
  __swift_project_boxed_opaque_existential_1(&v288, *(&v289 + 1));
  v90 = *(v89 + 64);
  v91 = *(v56 + 32);
  v92 = v90();

  v93 = *(v56 + 56);
  *(v56 + 56) = v92;

  __swift_destroy_boxed_opaque_existential_1Tm(&v288);
  v94 = v88[3];
  v95 = v88[4];
  v96 = __swift_project_boxed_opaque_existential_1(v88, v94);
  v97 = *(v94 - 8);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = &v253 - v99;
  (*(v97 + 16))(&v253 - v99, v98);
  v101 = (*(v95 + 48))(v94, v95);
  (*(v97 + 8))(v100, v94);
  *&v288 = v101;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v291);
  __swift_destroy_boxed_opaque_existential_1Tm(v292);
  __swift_destroy_boxed_opaque_existential_1Tm(&v293);
  v102 = *(v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession);
  *(v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession) = v56;
  if (v102)
  {

    sub_1DADD52BC();
  }

  v103 = v286;
  sub_1DAD83970(v286);
  sub_1DAD83EA8(v103);
  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = v56;
  v105[4] = v103;

  v106 = v103;
  v107 = sub_1DAD8E484();
  swift_getKeyPath();
  swift_getKeyPath();
  v108 = swift_allocObject();
  *(v108 + 16) = sub_1DADE6300;
  *(v108 + 24) = v105;
  v293 = sub_1DADE630C;
  v294 = v108;
  v266 = v105;

  sub_1DAECEF4C();
  v109 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v110 = swift_allocObject();
  swift_weakInit();
  v111 = swift_allocObject();
  *(v111 + 16) = v109;
  *(v111 + 24) = v110;
  v112 = swift_allocObject();
  swift_weakInit();
  v113 = swift_allocObject();
  v113[2] = v112;
  v113[3] = sub_1DADE6314;
  v113[4] = v111;
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1DADE631C;
  *(v114 + 24) = v113;
  v293 = sub_1DADE6328;
  v294 = v114;
  swift_retain_n();
  sub_1DAECEF4C();
  LOBYTE(v112) = [v106 canAppearInSecureEnvironment];
  v115 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  v116 = *(v107 + v115);
  *(v107 + v115) = v112;
  sub_1DAD95310(v116);
  LOBYTE(v112) = [v106 supportsLowLuminance];
  v117 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  v118 = *(v107 + v117);
  *(v107 + v117) = v112;
  sub_1DAD956A0(v118);
  LOBYTE(v112) = [v106 contentType] == 2;
  v119 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  v120 = *(v107 + v119);
  *(v107 + v119) = v112;
  sub_1DAD9590C(v120);
  LOBYTE(v112) = [v106 prefersUnredactedContentInLowLuminanceEnvironment];
  v121 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  v122 = *(v107 + v121);
  *(v107 + v121) = v112;
  sub_1DAD95AA0(v122);
  v123 = [v106 _FBSScene];
  v124 = [v123 settings];

  v125 = [v124 displayConfiguration];
  if (v125)
  {
    if ([v125 isCarDisplay])
    {
      v126 = 1;
    }

    else
    {
      v126 = [v125 isCarInstrumentsDisplay];
    }

    v127 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
    swift_beginAccess();
    v128 = *(v107 + v127);
    *(v107 + v127) = v126;
    sub_1DAE9CDC4(v128);
    v129 = [v125 identity];
    LOBYTE(v127) = [v129 isContinuityDisplay];

    v130 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
    swift_beginAccess();
    v131 = *(v107 + v130);
    *(v107 + v130) = v127;
    sub_1DAE9D090(v131);
    v132 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    v133 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
    swift_beginAccess();
    v134 = *(v107 + v133);
    *(v107 + v133) = v132;
    v135 = v132;
    sub_1DAD996A0(v134);
  }

  v136 = [v106 tintParameters];
  v137 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  v138 = 1;
  swift_beginAccess();
  v139 = *(v107 + v137);
  *(v107 + v137) = v136;
  v140 = v136;
  sub_1DAD95C3C(v139);

  v141 = [v106 inlineTextParameters];
  v142 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v143 = *(v107 + v142);
  *(v107 + v142) = v141;
  v144 = v141;
  sub_1DAD95EE8(v143);

  v145 = [v106 colorScheme];
  if (v145 == 1)
  {
    v149 = MEMORY[0x1E697DBB8];
    v146 = v268;
    v147 = v269;
    v148 = v267;
  }

  else
  {
    v146 = v268;
    v147 = v269;
    v148 = v267;
    if (v145 != 2)
    {
      goto LABEL_26;
    }

    v149 = MEMORY[0x1E697DBA8];
  }

  v150 = v259;
  (*(v148 + 104))(v259, *v149, v146);
  (*(v148 + 32))(v147, v150, v146);
  v138 = 0;
LABEL_26:
  (*(v148 + 56))(v147, v138, 1, v146);
  v151 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  v152 = v270;
  sub_1DAD6495C(v107 + v151, v270, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v147, v107 + v151, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAD99B74(v152);
  sub_1DAD64398(v152, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v147, &qword_1ECC08370, &unk_1DAED6580);
  LOBYTE(v151) = [v106 showsWidgetLabel];
  v153 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  v154 = *(v107 + v153);
  *(v107 + v153) = v151;
  sub_1DAD9A040(v154);
  v155 = [v106 clipBehavior] == 1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v293) = v155;

  sub_1DAECEF4C();
  LOBYTE(v151) = [v106 isInteractionDisabled];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v293) = v151;

  sub_1DAECEF4C();
  LOBYTE(v151) = [v106 isContentPaused];
  v156 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v157 = *(v107 + v156);
  *(v107 + v156) = v151;
  BSDispatchQueueAssertMain();
  if (v157 != *(v107 + v156))
  {
    v158 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(v107 + v158) & v157 & 1);
  }

  v159 = [v106 widgetPriority] == 1;
  v160 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  v161 = 1;
  swift_beginAccess();
  *(v107 + v160) = v159;
  v162 = [v106 renderScheme];
  v163 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v164 = *(v107 + v163);
  *(v107 + v163) = v162;
  v165 = v162;
  sub_1DAD9A058(v164);

  [v106 proximity];
  v166 = v271;
  sub_1DAED170C();
  v167 = sub_1DAED16FC();
  (*(*(v167 - 8) + 56))(v166, 0, 1, v167);
  v168 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v169 = v272;
  sub_1DAD6495C(v107 + v168, v272, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_beginAccess();
  sub_1DAD901C4(v166, v107 + v168, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_endAccess();
  sub_1DAD9A254(v169);
  sub_1DAD64398(v169, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD64398(v166, &qword_1ECC08368, &unk_1DAEDE2B0);
  v170 = [v106 idealizedDateComponents];
  v171 = v273;
  if (v170)
  {
    v172 = v170;
    sub_1DAECDA4C();

    v161 = 0;
  }

  v173 = v274;
  v174 = sub_1DAECDA5C();
  (*(*(v174 - 8) + 56))(v171, v161, 1, v174);
  v175 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  sub_1DAD6495C(v107 + v175, v173, &qword_1ECC08360, &unk_1DAED6570);
  swift_beginAccess();
  sub_1DAD901C4(v171, v107 + v175, &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  sub_1DAD9A5B0(v173);
  sub_1DAD64398(v173, &qword_1ECC08360, &unk_1DAED6570);
  sub_1DAD64398(v171, &qword_1ECC08360, &unk_1DAED6570);
  LOBYTE(v175) = [v106 areAnimationsPaused];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v293) = v175;

  sub_1DAECEF4C();
  sub_1DAD9AB3C();
  LOBYTE(v175) = *(v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene) != 0;
  v176 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  v177 = *(v107 + v176);
  *(v107 + v176) = v175;
  sub_1DAD9B9DC(v177);
  v178 = [v106 remoteViewControllerClassName];
  if (!v178)
  {
    goto LABEL_40;
  }

  v179 = v178;
  v180 = sub_1DAED1CEC();
  v182 = v181;

  v293 = v180;
  v294 = v182;
  v292[0] = 0x6F436F6E6F726843;
  v292[1] = 0xEA00000000006572;
  strcpy(v291, "WidgetRenderer");
  HIBYTE(v291[1]) = -18;
  sub_1DADE6330();
  v183 = sub_1DAED236C();
  v185 = v184;

  v186 = sub_1DAED1CBC();
  v187 = NSClassFromString(v186);

  if (!v187 || (swift_getObjCClassMetadata(), type metadata accessor for WidgetSceneContentViewController(0), (v188 = swift_dynamicCastMetatype()) == 0))
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v279, qword_1EE011748);

    v190 = sub_1DAECEDCC();
    v191 = sub_1DAED201C();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v293 = v193;
      *v192 = 136446210;
      v194 = sub_1DAD6482C(v183, v185, &v293);

      *(v192 + 4) = v194;
      _os_log_impl(&dword_1DAD61000, v190, v191, "Failed to load custom vc class %{public}s", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v193);
      MEMORY[0x1E127F100](v193, -1, -1);
      MEMORY[0x1E127F100](v192, -1, -1);
    }

    else
    {
    }

LABEL_40:
    v189 = type metadata accessor for WidgetSceneContentViewController(0);
    goto LABEL_41;
  }

  v189 = v188;

LABEL_41:
  v195 = *(v189 + 800);
  v196 = v106;

  v197 = v195(v196, v107);
  sub_1DAD648F8(v301, &v293);
  v198 = v197;
  v199 = [v196 widgetConfigurationIdentifier];
  v286 = v196;
  if (v199)
  {
    v200 = v199;
    v201 = sub_1DAED1CEC();
    v273 = v202;
    v274 = v201;
  }

  else
  {
    v273 = 0;
    v274 = 0;
  }

  v203 = v281;
  v204 = v282;
  v205 = v283;
  (*(v282 + 16))(v281, v280, v283);
  v206 = *(v204 + 56);
  v206(v203, 0, 1, v205);
  v207 = type metadata accessor for WidgetSceneContentViewController(0);
  v292[4] = &protocol witness table for BaseWidgetContentViewController;
  v292[3] = v207;
  v292[0] = v198;
  v291[3] = sub_1DAED12AC();
  v291[4] = sub_1DAD8E1BC(&qword_1EE005768, MEMORY[0x1E6993EF8], MEMORY[0x1E6993EE8]);
  v291[0] = v285;
  type metadata accessor for WidgetMetricsAggregator(0);
  v208 = swift_allocObject();
  swift_weakInit();
  *(v208 + 64) = 0;
  *(v208 + 72) = 0;
  v206(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier, 1, 1, v205);
  *(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = 0;
  *(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration) = 0;
  v209 = v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  *(v209 + 32) = 0;
  *v209 = 0u;
  *(v209 + 16) = 0u;
  v210 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  v211 = sub_1DAED12CC();
  (*(*(v211 - 8) + 56))(v208 + v210, 1, 1, v211);
  *(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = 0;
  v212 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  v213 = sub_1DAED11EC();
  (*(*(v213 - 8) + 56))(v208 + v212, 1, 1, v213);
  *(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  v276(v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility, 1, 1, v278);
  sub_1DAD648F8(v292, v208 + 16);
  v214 = v273;
  *(v208 + 64) = v274;
  *(v208 + 72) = v214;
  v215 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier;
  swift_beginAccess();
  swift_retain_n();

  v216 = v198;
  sub_1DAD901C4(v203, v208 + v215, &qword_1ECC08358, &qword_1DAED6568);
  swift_endAccess();
  sub_1DAD648F8(&v293, v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
  sub_1DAD648F8(v291, &v288);
  v217 = v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  swift_beginAccess();
  v218 = *(&v289 + 1);
  if (*(v217 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v217);
  }

  v219 = v286;
  if (v218)
  {
    sub_1DAD657D8(&v288, v217);
  }

  else
  {
    v220 = v289;
    *v217 = v288;
    *(v217 + 16) = v220;
    *(v217 + 32) = v290;
  }

  swift_endAccess();
  v221 = sub_1DAED120C();
  v222 = sub_1DAED11FC();
  v223 = MEMORY[0x1E6993EE0];
  v224 = (v208 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder);
  v224[3] = v221;
  v224[4] = v223;
  *v224 = v222;
  swift_weakAssign();

  sub_1DADB2FF8(v208);

  sub_1DAD64398(v281, &qword_1ECC08358, &qword_1DAED6568);
  __swift_destroy_boxed_opaque_existential_1Tm(&v293);
  __swift_destroy_boxed_opaque_existential_1Tm(v291);
  __swift_destroy_boxed_opaque_existential_1Tm(v292);
  v225 = [v219 contentType];
  v226 = v275;
  if (!v225)
  {
    v227 = qword_1EE005E48;

    if (v227 != -1)
    {
      swift_once();
    }

    v228 = v279;
    v229 = __swift_project_value_buffer(v279, qword_1EE011748);
    v230 = v257;
    (*(v258 + 16))(v257, v229, v228);
    type metadata accessor for VisibilityPolicyController(0);
    swift_allocObject();
    v231 = sub_1DADB3BFC(v56, v107, v208, v230);

    v232 = (v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController);
    v233 = *(v287 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController);
    *v232 = v231;
    v232[1] = &off_1F56B2178;
    if (v233)
    {

      sub_1DAE0CC08(v234);

      swift_unknownObjectRelease();
    }

    v235 = [v286 visibility];
    if (v235)
    {
      v236 = v235;
      [v236 isSettled];
      [v236 isFocal];
      [v236 visibleBounds];
      sub_1DAECE52C();

      v237 = 0;
    }

    else
    {
      v237 = 1;
    }

    v238 = v278;
    v276(v226, v237, 1, v278);
    if (*v232)
    {
      v239 = v256;
      sub_1DAD6495C(v226, v256, &qword_1ECC07CD0, &qword_1DAED6560);
      swift_unknownObjectRetain();
      sub_1DAD6D8C0(v239);
      swift_unknownObjectRelease();
      v238 = v278;
      sub_1DAD64398(v239, &qword_1ECC07CD0, &qword_1DAED6560);
    }

    if ([v286 widgetPriority])
    {
      v240 = v226;
    }

    else
    {
      v241 = v226;
      v242 = v255;
      sub_1DAD6495C(v241, v255, &qword_1ECC07CD0, &qword_1DAED6560);
      v243 = v254;
      if ((*(v254 + 48))(v242, 1, v238) == 1)
      {
        sub_1DAD64398(v242, &qword_1ECC07CD0, &qword_1DAED6560);
        v244 = 0;
      }

      else
      {
        v244 = sub_1DAECE51C();
        (*(v243 + 8))(v242, v238);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v293) = v244 & 1;

      sub_1DAECEF4C();
      v240 = v275;
    }

    sub_1DAD64398(v240, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  *(v216 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) = *(v56 + 48) != 1;
  v245 = qword_1EE008AC0;
  v246 = v216;
  if (v245 != -1)
  {
    swift_once();
  }

  v247 = qword_1EE008AD0;
  v248 = [v265 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v249 = sub_1DAECE26C();
  v251 = v250;
  swift_endAccess();

  LOBYTE(v249) = sub_1DADB410C(v249, v251, v247);

  v252 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  v246[v252] = v249 & 1;
  sub_1DADB4204(v246[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting]);
  sub_1DAEC7848();

  (*(v282 + 8))(v280, v283);
  __swift_destroy_boxed_opaque_existential_1Tm(v296);
  __swift_destroy_boxed_opaque_existential_1Tm(v297);
  __swift_destroy_boxed_opaque_existential_1Tm(v299);
  __swift_destroy_boxed_opaque_existential_1Tm(v301);
  return v246;
}

uint64_t sub_1DAD836B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD836F0()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD83740()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD83780()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD837C8()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD83820(uint64_t a1)
{
  v2 = sub_1DAED12BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection);

  if (sub_1DAED101C())
  {

    os_unfair_lock_unlock(*(v6 + 16));
  }

  else
  {
    os_unfair_lock_unlock(*(v6 + 16));
    if (v7)
    {
      sub_1DAED0F7C();
      sub_1DAED0FEC();

      (*(v3 + 8))(v5, v2);
      return v9[1];
    }
  }

  return 0;
}

uint64_t sub_1DAD83970(void *a1)
{
  v3 = sub_1DAECE20C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = *(v4 + 104);
  v13(&v45 - v11, *MEMORY[0x1E6993F90], v3, v10);
  if (*&v1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
  {
    v14 = [a1 widgetPriority];
    (*(v4 + 8))(v12, v3);
    v15 = MEMORY[0x1E6993F98];
    if (v14 != 1)
    {
      v15 = MEMORY[0x1E6993FA0];
    }

    (v13)(v12, *v15, v3);
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE011748);
  v17 = a1;
  v18 = v1;
  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED200C();

  if (os_log_type_enabled(v19, v20))
  {
    v46 = v20;
    v47 = v6;
    v21 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49[0] = v45;
    *v21 = 136446722;
    v22 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = (v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v25 = *v23;
      v24 = v23[1];
    }

    else
    {
      v26 = v17;
      v25 = sub_1DAD8CE78(v26);
      v24 = v27;
    }

    v28 = sub_1DAD6482C(v25, v24, v49);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    swift_beginAccess();
    sub_1DAD8E1BC(&qword_1ECC083B8, MEMORY[0x1E6993FA8], MEMORY[0x1E6993FD0]);
    v29 = sub_1DAED287C();
    v31 = sub_1DAD6482C(v29, v30, v49);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2082;
    v32 = [v17 widgetPriority];
    v33 = v32 == 1;
    if (v32 == 1)
    {
      v34 = 0xD000000000000017;
    }

    else
    {
      v34 = 0;
    }

    if (v33)
    {
      v35 = 0x80000001DAEE0E70;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v36 = sub_1DAD6482C(v34, v35, v49);

    *(v21 + 24) = v36;
    _os_log_impl(&dword_1DAD61000, v19, v46, "[%{public}s] Task priority changed to %{public}s %{public}s", v21, 0x20u);
    v37 = v45;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v37, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);

    v6 = v47;
  }

  else
  {
  }

  v38 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
  if (!v38)
  {
    return (*(v4 + 8))(v12, v3);
  }

  swift_beginAccess();
  v39 = *(v4 + 16);
  v40 = v48;
  v39(v48, v12, v3);
  v41 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  swift_beginAccess();
  v39(v6, (v38 + v41), v3);
  swift_beginAccess();
  v42 = *(v4 + 24);

  v42(v38 + v41, v40, v3);
  swift_endAccess();
  sub_1DAD7D4B8(v6);

  v43 = *(v4 + 8);
  v43(v6, v3);
  v43(v40, v3);
  return (v43)(v12, v3);
}

void *sub_1DAD83EA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v69 - v5;
  v6 = sub_1DAED167C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = sub_1DAED15DC();
  v7 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED10DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  BSDispatchQueueAssertMain();
  sub_1DAED10CC();
  [a1 canAppearInSecureEnvironment];
  sub_1DAED104C();
  if ([a1 supportedColorSchemes])
  {
    [a1 supportedColorSchemes];
  }

  else
  {
    [a1 colorScheme];
  }

  sub_1DAED107C();
  v15 = [a1 supportedRenderSchemes];
  v77 = v10;
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v72 = v14;
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v17 = sub_1DAED1E7C();

  v18 = v17;
  if (v17 >> 62)
  {
    if (sub_1DAED247C())
    {
      v33 = sub_1DAED247C();
      v18 = v17;
      v19 = v33;
      if (!v33)
      {

        v32 = a1;
        v23 = MEMORY[0x1E69E7CC0];
        v14 = v72;
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    goto LABEL_19;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_19:

    v14 = v72;
LABEL_20:
    v34 = [a1 renderScheme];
    v35 = [v34 renderingMode];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083A8, &unk_1DAEDF6A0);
    v32 = a1;
    v23 = swift_allocObject();
    if (v35)
    {
      *(v23 + 16) = xmmword_1DAED64C0;
      v36 = [v32 renderScheme];
      sub_1DAED15EC();
      sub_1DAED166C();
      v37 = [v32 renderScheme];
      [v37 backgroundViewPolicy];

      sub_1DAED15BC();
    }

    else
    {
      *(v23 + 16) = xmmword_1DAED6200;
      v38 = [v32 renderScheme];
      sub_1DAED15EC();
    }

    goto LABEL_23;
  }

LABEL_7:
  v20 = v18;
  v79[0] = MEMORY[0x1E69E7CC0];
  result = sub_1DAE021A4(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    return result;
  }

  v78 = v19;
  v69 = a1;
  v70 = v2;
  v71 = v9;
  v22 = 0;
  v23 = v79[0];
  v24 = v20;
  v25 = v20 & 0xC000000000000001;
  v27 = v73;
  v26 = v74;
  v28 = v20;
  do
  {
    if (v25)
    {
      MEMORY[0x1E127E1F0](v22, v24);
    }

    else
    {
      v29 = *(v24 + 8 * v22 + 32);
    }

    sub_1DAED15EC();
    v79[0] = v23;
    v31 = *(v23 + 16);
    v30 = *(v23 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1DAE021A4((v30 > 1), v31 + 1, 1);
      v26 = v74;
      v23 = v79[0];
    }

    ++v22;
    *(v23 + 16) = v31 + 1;
    (*(v7 + 32))(v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31, v27, v26);
    v24 = v28;
  }

  while (v78 != v22);

  v9 = v71;
  v14 = v72;
  v32 = v69;
  v2 = v70;
LABEL_23:
  sub_1DAD7D8E0(v32);
  sub_1DAD7F350(v23);

  sub_1DAED108C();
  [v32 supportsLowLuminance];
  sub_1DAED10AC();
  [v32 showsWidgetLabel];
  sub_1DAED105C();
  if ([v32 supportedProximities])
  {
    [v32 supportedProximities];
  }

  else
  {
    [v32 proximity];
    sub_1DAED212C();
  }

  sub_1DAED106C();
  v39 = [v32 _FBSScene];
  v40 = [v39 settings];

  v41 = [v40 displayConfiguration];
  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
    sub_1DAD7FA70(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1DAED10BC();
  }

  v43 = [v32 idealizedDateComponents];
  if (v43)
  {
    v44 = v76;
    v45 = v43;
    sub_1DAECDA4C();

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v44 = v76;
  }

  v47 = sub_1DAECDA5C();
  (*(*(v47 - 8) + 56))(v44, v46, 1, v47);
  sub_1DAED109C();
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v48 = sub_1DAECEDEC();
  __swift_project_value_buffer(v48, qword_1EE0117D8);
  v49 = v32;
  v50 = v2;
  v51 = sub_1DAECEDCC();
  v52 = sub_1DAED203C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = v14;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v79[0] = v55;
    *v54 = 136446466;
    v56 = *&v50[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v56)
    {
      v57 = (v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v59 = *v57;
      v58 = v57[1];
    }

    else
    {
      v60 = v49;
      v59 = sub_1DAD8CE78(v60);
      v58 = v61;
    }

    v62 = sub_1DAD6482C(v59, v58, v79);

    *(v54 + 4) = v62;
    *(v54 + 12) = 2082;
    swift_beginAccess();
    sub_1DAD8E1BC(&qword_1EE005780, MEMORY[0x1E6993E88], MEMORY[0x1E6993EA0]);
    v63 = sub_1DAED287C();
    v65 = sub_1DAD6482C(v63, v64, v79);

    *(v54 + 14) = v65;
    _os_log_impl(&dword_1DAD61000, v51, v52, "[%{public}s] Environment modifiers changed to: %{public}s", v54, 0x16u);
    swift_arrayDestroy();
    v66 = v55;
    v14 = v53;
    MEMORY[0x1E127F100](v66, -1, -1);
    MEMORY[0x1E127F100](v54, -1, -1);
  }

  v67 = v77;
  if (*&v50[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
  {
    swift_beginAccess();
    v68 = v75;
    (*(v67 + 16))(v75, v14, v9);

    sub_1DAD8E294(v68);
  }

  return (*(v67 + 8))(v14, v9);
}

unint64_t sub_1DAD84884(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v38 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = [v11 containerDescriptors];
    sub_1DAD674D4(0, &qword_1EE0054C8, 0x1E6994230);
    v13 = sub_1DAED1E7C();

    v14 = v13 >> 62;
    v43 = v13;
    if (v13 >> 62)
    {
      v15 = sub_1DAED247C();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_1DAED247C();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_1DAED247C();
      }

LABEL_22:
      result = sub_1DAED258C();
      v40 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v40 = v9;
LABEL_23:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      v23 = v1;
      v24 = v19;
      result = sub_1DAED247C();
      v19 = v24;
      v1 = v23;
      v22 = result;
    }

    else
    {
      v22 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v22)
    {
      if (((v21 >> 1) - v20) < v41)
      {
        goto LABEL_42;
      }

      v25 = v19 + 8 * v20 + 32;
      v39 = v5;
      v36 = v19;
      if (v14)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_1DAD64B94(&qword_1EE005680, &qword_1ECC08D58, &unk_1DAED7E60, MEMORY[0x1E69E6340]);
        v26 = 0;
        v27 = v43;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D58, &unk_1DAED7E60);
          v28 = v25;
          v29 = sub_1DAD8DE4C(v42, v26, v27);
          v31 = v22;
          v32 = *v30;
          (v29)(v42, 0);
          v25 = v28;
          *(v28 + 8 * v26) = v32;
          v22 = v31;
          ++v26;
        }

        while (v31 != v26);
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v9 = v40;
      v1 = v35;
      v6 = v37;
      v2 = v38;
      v5 = v39;
      if (v41 >= 1)
      {
        v33 = *(v36 + 16);
        v17 = __OFADD__(v33, v41);
        v34 = v33 + v41;
        if (v17)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v34;
      }
    }

    else
    {

      v6 = v37;
      v2 = v38;
      v9 = v40;
      if (v41 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_1DAD84C40()
{
  result = qword_1EE00AA30;
  if (!qword_1EE00AA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00AA30);
  }

  return result;
}

uint64_t sub_1DAD84C8C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

unint64_t sub_1DAD84D0C(uint64_t a1)
{
  v2 = sub_1DAED227C();

  return sub_1DAD84D50(a1, v2);
}

unint64_t sub_1DAD84D50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1DAED21EC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DAED228C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DAD84E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_71Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

void *sub_1DAD84F7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1DAED26FC();

    if (v4)
    {
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1DAD84D0C(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1DAD85040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v57 = a4;
  v52 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = v50 - v10;
  v11 = sub_1DAED18CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  v18 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  result = swift_beginAccess();
  v20 = *(a1 + v18);
  if (*(v20 + 16))
  {

    v50[4] = a2;
    v21 = sub_1DAD805B0(a2);
    if (v22)
    {
      v50[1] = a5;
      v50[3] = v5;
      v23 = *(*(v20 + 56) + 8 * v21);

      v50[2] = a1;
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
      sub_1DAED127C();
      swift_beginAccess();
      v51 = v23;
      v24 = *(v23 + 16);
      sub_1DAED0B9C();

      sub_1DAD722E0(&qword_1EE00AAF0, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
      LOBYTE(v24) = sub_1DAED1C9C();
      v27 = *(v12 + 8);
      v25 = v12 + 8;
      v26 = v27;
      v27(v14, v11);
      if (v24)
      {
        *&v54[0] = 0;
        *(&v54[0] + 1) = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](91, 0xE100000000000000);
        v28 = sub_1DAED0D8C();
        MEMORY[0x1E127DA50](v28);

        MEMORY[0x1E127DA50](0xD000000000000043, 0x80000001DAEE1980);
        v29 = v51;
        v30 = *(v51 + 16);
        sub_1DAED0B9C();

        sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
        v31 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v31);

        v57 = v25;
        v26(v14, v11);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v32 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v32);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v33 = v54[0];
        v34 = *(v29 + 16);
        v55 = 0;
        memset(v54, 0, sizeof(v54));
        v35 = v34;
        sub_1DAED0C6C();

        swift_beginAccess();
        *(v29 + 24) = 1;
        v36 = *(v29 + 16);

        sub_1DAED0BCC();

        v37 = sub_1DAECEDCC();
        v38 = sub_1DAED201C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v56[0] = v40;
          *v39 = 136446210;
          v41 = sub_1DAD6482C(v33, *(&v33 + 1), v56);

          *(v39 + 4) = v41;
          _os_log_impl(&dword_1DAD61000, v37, v38, "%{public}s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x1E127F100](v40, -1, -1);
          MEMORY[0x1E127F100](v39, -1, -1);
        }

        else
        {
        }

        return (v26)(v17, v11);
      }

      else
      {
        v42 = v26;
        v43 = v51;
        swift_beginAccess();
        *(v43 + 24) = 256;
        v44 = *(v43 + 16);
        sub_1DAD6495C(v52, v54, &unk_1ECC08880, &unk_1DAED6F50);
        v45 = v44;
        sub_1DAED0C6C();

        v46 = v53;
        sub_1DAD6495C(v57, v53, &qword_1ECC07CE8, &qword_1DAED6F60);
        v47 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1DAD84E40(v46, v43 + v47);
        swift_endAccess();
        v48 = *(v43 + 16);

        v49 = v48;
        sub_1DAED0BCC();

        return v42(v17, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DAD85694(uint64_t a1)
{
  v2 = sub_1DAED09DC();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECDCEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DAD84C40();
  v11 = sub_1DAED20EC();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_1DADB93E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD722E0(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_1DAD85A80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
  {
    v8 = *a3;

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E127E1F0](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v6 + 8 * j + 32);
      }

      v11 = v10;
      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a3 = *(a2 + v8);
      sub_1DAECEE6C();

      if (v12 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

double sub_1DAD85BA0(void **a1, uint64_t a2)
{
  v3 = sub_1DAED0DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = [v7 widget];
    v10 = [v7 metrics];
    sub_1DAED0DAC();
    v11 = sub_1DAD85CEC(v6);
    (*(v4 + 8))(v6, v3, v11);
  }

  return result;
}

double sub_1DAD85CEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {

    sub_1DAD805B0(a1);
    v8 = v7;

    if (v8)
    {
      sub_1DAD80684(a1);
    }
  }

  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

uint64_t sub_1DAD85DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08138, &qword_1DAED6448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DAD85E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RBImageSnapshotter(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RBLayer.SnapshotFormat(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v86 - v10;
  v99 = sub_1DAECEDEC();
  v103 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  v18 = type metadata accessor for CALayer.SnapshotFormat(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1DAED0D3C();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 184);
  v117 = sub_1DAECE30C();
  v118 = MEMORY[0x1E6994130];
  *&v116 = v22;
  v23 = type metadata accessor for WidgetRendererClient(0);
  v24 = objc_allocWithZone(v23);
  v25 = v22;
  v26 = sub_1DAD87190(&v116);
  v105 = a1;
  if (*(a1 + 200) == 1)
  {
    v117 = v23;
    v118 = sub_1DAD88900(&unk_1EE008178, type metadata accessor for WidgetRendererClient, &unk_1DAEDEFB8);
    *&v116 = v26;
    v23 = type metadata accessor for XcodePreviewWidgetRendererClient();
    v27 = swift_allocObject();
    sub_1DAD657D8(&v116, v27 + 16);
    v28 = sub_1DAD88900(&qword_1ECC08170, type metadata accessor for XcodePreviewWidgetRendererClient, &unk_1DAEDF094);
  }

  else
  {
    v28 = sub_1DAD88900(&unk_1EE008178, type metadata accessor for WidgetRendererClient, &unk_1DAEDEFB8);
    v27 = v26;
  }

  v117 = v23;
  v118 = v28;
  *&v116 = v27;
  sub_1DAD648F8(&v116, (v3 + 2));
  sub_1DAD648F8(&v116, &v113);
  v29 = type metadata accessor for ConfigurationService();
  swift_allocObject();
  v95 = v26;
  v30 = sub_1DAD87DAC(&v113);
  v3[11] = v29;
  v31 = sub_1DAD88900(qword_1EE006EE0, type metadata accessor for ConfigurationService, &unk_1DAED7E28);
  v3[8] = v30;
  v3[12] = v31;
  v100 = a2;
  sub_1DAD85DAC(a2, &v111);
  v102 = v17;
  v101 = v20;
  v97 = v14;
  if (v112)
  {
    sub_1DAD657D8(&v111, &v113);
  }

  else
  {
    v32 = v117;
    v33 = v118;
    v34 = __swift_project_boxed_opaque_existential_1(&v116, v117);
    v114 = v32;
    v115 = *(v33 + 24);
    v35 = __swift_allocate_boxed_opaque_existential_1(&v113);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    if (v112)
    {
      sub_1DAD64398(&v111, &qword_1ECC08138, &qword_1DAED6448);
    }
  }

  v88 = sub_1DAECE6CC();
  v3[14] = sub_1DAECE6AC();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08140, &unk_1DAED6450);
  v36 = v105;
  v37 = *(v105 + 96);
  v114 = sub_1DAED140C();
  v115 = MEMORY[0x1E6993F48];
  v113 = v37;
  sub_1DAED0DDC();
  sub_1DAED0D7C();
  sub_1DAD88900(&qword_1EE0057C8, MEMORY[0x1E6993D98], MEMORY[0x1E6993D90]);

  v38 = sub_1DAED13CC();
  v39 = MEMORY[0x1E127D030](0xD000000000000010, 0x80000001DAEE0A30, &v113, v38);
  v86 = type metadata accessor for WidgetArchiveService();
  sub_1DAD648F8(&v116, &v113);
  sub_1DAD648F8((v3 + 8), &v111);
  v40 = v3[14];
  v41 = v117;
  v42 = v118;
  v43 = __swift_project_boxed_opaque_existential_1(&v116, v117);
  v44 = sub_1DAD648F8(v36 + 104, v110);
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  v45 = *(v36 + 200);
  v107 = v40;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v86 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48, v43, v41, v46);
  v106 = v39;
  v50 = sub_1DAD88900(qword_1EE00AC78, MEMORY[0x1E6994480], MEMORY[0x1E6994478]);
  v51 = *(v42 + 16);
  v52 = sub_1DAD64B94(&qword_1EE005750, &qword_1ECC08140, &unk_1DAED6450, MEMORY[0x1E6993F38]);

  v92 = v39;

  *(&v85 + 1) = v51;
  *&v85 = v50;
  v3[7] = sub_1DAD88A98(&v113, &v111, &v107, v48, v110, &v106, v108, v45, v86, v88, v41, v87, v85, v52);
  sub_1DAED12AC();
  (*(v90 + 104))(v89, *MEMORY[0x1E6993D70], v91);
  v53 = sub_1DAED129C();
  v91 = v3;
  v3[13] = v53;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  LOBYTE(v41) = sub_1DAECE11C();

  if (v41)
  {
    v54 = v99;
    v55 = v104;
    v56 = v102;
    v57 = v101;
    if (qword_1ECC07A28 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    v59 = __swift_project_value_buffer(v58, qword_1ECC09BD8);
    sub_1DAD93268(v59, v57, type metadata accessor for CAMLSnapshotter.CAMLOptions);
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  }

  else
  {
    v60 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
    (*(*(v60 - 8) + 56))(v101, 1, 1, v60);
    v54 = v99;
    v55 = v104;
    v56 = v102;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v61 = __swift_project_value_buffer(v54, qword_1EE011748);
  v62 = *(v103 + 16);
  v62(v56, v61, v54);
  sub_1DAD648F8(v105 + 104, &v113);
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v63 = __swift_project_value_buffer(v93, qword_1EE00A948);
  sub_1DAD93268(v63, v55, type metadata accessor for RBLayer.SnapshotFormat);
  v99 = [objc_opt_self() sharedManager];
  v64 = v94;
  sub_1DAD93268(v55, v94, type metadata accessor for RBLayer.SnapshotFormat);
  v65 = v96;
  sub_1DAD93338(v64, v96, type metadata accessor for RBImageSnapshotter.RBImageOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08148, &unk_1DAEDB950);
  v66 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08150, &unk_1DAED6460);
  v67 = swift_allocObject();
  sub_1DAD93338(v65, v67 + *(*v67 + 128), type metadata accessor for RBImageSnapshotter);
  *(v66 + 16) = v67;
  v68 = sub_1DAD93568();
  v69 = v97;
  v62(v97, v56, v54);
  sub_1DAD648F8(&v113, &v111);
  v70 = v54;
  if (qword_1EE00B1D0 != -1)
  {
    swift_once();
  }

  v71 = qword_1EE011BC8;
  type metadata accessor for LayerSnapshotter(0);
  v72 = swift_allocObject();
  *(v72 + 5) = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v73 = swift_allocObject();
  v74 = v71;
  v75 = swift_slowAlloc();
  *v75 = 0;
  *(v73 + 16) = v75;
  *(v72 + 6) = v73;
  v76 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08158, &unk_1DAEDB960);
  v77 = swift_allocObject();
  *(v77 + 16) = v66;
  *(v76 + 16) = v77;
  *(v72 + 3) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
  v78 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08168, &unk_1DAEDB970);
  v79 = swift_allocObject();
  *(v79 + 16) = v68;
  *(v78 + 16) = v79;
  *(v72 + 2) = v78;
  v62(&v72[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger], v69, v70);
  v62(v98, v69, v70);
  sub_1DAECED4C();
  v80 = *(v103 + 8);
  v80(v69, v70);
  sub_1DAD93B48(v104, type metadata accessor for RBLayer.SnapshotFormat);
  __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  v80(v102, v70);
  sub_1DAD93B48(v101, type metadata accessor for CALayer.SnapshotFormat);
  *(v72 + 4) = v99;
  sub_1DAD657D8(&v111, &v72[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor]);
  *(v72 + 7) = v74;
  v81 = v91;
  *(v91 + 120) = v72;
  v82 = v81[5];
  v83 = v81[6];
  __swift_project_boxed_opaque_existential_1(v81 + 2, v82);
  (*(v83 + 160))(v82, v83);

  sub_1DAD64398(v100, &qword_1ECC08138, &qword_1DAED6448);
  __swift_destroy_boxed_opaque_existential_1Tm(&v116);
  return v81;
}

uint64_t sub_1DAD86CEC(uint64_t a1)
{
  result = type metadata accessor for RBImageSnapshotter.RBImageOptions(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAD86D6C(uint64_t a1)
{
  if (!qword_1EE00AA68)
  {
    type metadata accessor for RBColorMode(255);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00AA68);
    }
  }
}

void sub_1DAD86DC4(uint64_t a1)
{
  sub_1DAD86D6C(319);
  if (v1 <= 0x3F)
  {
    sub_1DAD86E60();
    if (v2 <= 0x3F)
    {
      sub_1DAECDFCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DAD86E60()
{
  if (!qword_1EE00AA88)
  {
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AA88);
    }
  }
}

uint64_t sub_1DAD86EF0(uint64_t a1, __n128 a2)
{
  v2 = type metadata accessor for CAMLSnapshotter.CAMLOptions(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1DAD86F68(uint64_t a1)
{
  sub_1DAECDFCC();
  if (v1 <= 0x3F)
  {
    sub_1DAD86FFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAD86FFC()
{
  if (!qword_1EE00AAA8)
  {
    v0 = sub_1DAED1C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AAA8);
    }
  }
}

uint64_t type metadata accessor for WidgetRendererClient(uint64_t a1)
{
  result = qword_1EE008168;
  if (!qword_1EE008168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD870A4(uint64_t a1)
{
  result = sub_1DAECF8EC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DAD87190(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v39 = sub_1DAED20DC();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue;
  v8 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v36[5] = "idgetRendererClient";
  v36[6] = v8;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v36[3] = sub_1DAD649C4(&qword_1EE00AA50, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v36[4] = sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  v9 = *MEMORY[0x1E69E8098];
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  v36[1] = v10;
  v11(v5, v9, v39);
  *&v1[v37] = sub_1DAED210C();
  v37 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  v11(v5, v9, v39);
  *&v1[v37] = sub_1DAED210C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection] = 0;
  v12 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  *&v2[v12] = v13;
  v15 = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions] = MEMORY[0x1E69E7CC8];
  v16 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_extensionsDidChangePublisher;
  v39 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_extensionsDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09928, &qword_1DAEDF150);
  swift_allocObject();
  *&v2[v16] = sub_1DAECEE7C();
  v17 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9D0, &qword_1DAEDF158);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  *(v18 + 16) = 0;
  *&v2[v17] = v18;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity] = v15;
  v19 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
  sub_1DAD87A90(MEMORY[0x1E69E7CC0]);
  *&v2[v19] = sub_1DAED100C();
  v20 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_configurationsDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09920, &unk_1DAEDA730);
  swift_allocObject();
  *&v2[v20] = sub_1DAECEE7C();
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier] = v15;
  v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_hasReceivedInitialEnvironment] = 0;
  v21 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  v37 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
  swift_allocObject();
  *&v2[v21] = sub_1DAECEE7C();
  sub_1DAECF8DC();
  v22 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_timelineReloadedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9D8, &unk_1DAEDF160);
  swift_allocObject();
  *&v2[v22] = sub_1DAECEE7C();
  v23 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_snapshotReloadedPublisher;
  swift_allocObject();
  *&v2[v23] = sub_1DAECEE7C();
  v24 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue_placeholderReloadedPublisher;
  swift_allocObject();
  *&v2[v24] = sub_1DAECEE7C();
  aBlock[0] = *&v2[v20];
  v25 = MEMORY[0x1E695BF88];
  sub_1DAD64B94(&unk_1EE005C20, &qword_1ECC09920, &unk_1DAEDA730, MEMORY[0x1E695BF88]);
  v26 = v38;
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_configurationsDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v39];
  sub_1DAD64B94(&unk_1EE005C10, &qword_1ECC09928, &qword_1DAEDF150, v25);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v37];
  sub_1DAD64B94(&unk_1EE00ABE0, &unk_1ECC0A3E0, &qword_1DAEDA740, v25);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_systemEnvironmentDidChangePublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v22];
  sub_1DAD64B94(&unk_1EE005BF8, &qword_1ECC0A9D8, &unk_1DAEDF160, v25);
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_timelineReloadedPublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v23];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_snapshotReloadedPublisher] = sub_1DAECEF6C();
  aBlock[0] = *&v2[v24];
  *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_placeholderReloadedPublisher] = sub_1DAECEF6C();
  v27 = type metadata accessor for WidgetRendererClient(0);
  v45.receiver = v2;
  v45.super_class = v27;
  v28 = objc_msgSendSuper2(&v45, sel_init);
  sub_1DAD6495C(v26, aBlock, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(aBlock, v42);
    v40[3] = v27;
    v40[4] = sub_1DAD649C4(&unk_1EE0081A8, 255, type metadata accessor for WidgetRendererClient, &unk_1DAEDF0B0);
    v40[0] = v28;
    v29 = v28;
    sub_1DAECE35C();
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  }

  else
  {
    sub_1DAD64398(aBlock, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v30 = *&v28[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v43 = sub_1DAEBB198;
  v44 = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  v42 = &block_descriptor_211;
  v32 = _Block_copy(aBlock);
  v33 = v28;
  v34 = v30;

  WRRegisterForChronodStartup(v34, v32);
  _Block_release(v32);

  sub_1DAD64398(v26, &qword_1ECC0A9E0, &qword_1DAED7570);
  return v33;
}

uint64_t sub_1DAD87A54()
{

  return swift_deallocObject();
}

unint64_t sub_1DAD87A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A0, &qword_1DAED6230);
    v3 = sub_1DAED279C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1DAD84D0C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DAD87B88()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A948, &qword_1DAEDF0E8);
  return sub_1DAED1D4C();
}

void WRRegisterForChronodStartup(NSObject *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E69941D8];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __WRRegisterForChronodStartup_block_invoke;
  handler[3] = &unk_1E85EB028;
  v7 = v3;
  v5 = v3;
  notify_register_dispatch(v4, _serverStartupToken, a1, handler);
}

uint64_t sub_1DAD87C84(void *a1)
{
  a1[1] = sub_1DAD649C4(&qword_1EE008190, 255, type metadata accessor for WidgetRendererClient, &unk_1DAEDEF60);
  a1[2] = sub_1DAD649C4(&qword_1EE008198, 255, type metadata accessor for WidgetRendererClient, &unk_1DAEDEF28);
  result = sub_1DAD649C4(&qword_1EE0081A0, 255, type metadata accessor for WidgetRendererClient, &unk_1DAEDEF88);
  a1[3] = result;
  return result;
}

void *sub_1DAD87DAC(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  v1[2] = sub_1DAECEE7C();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  v2[4] = v4;
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[6] = 0;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 80))(v6, v7);
  swift_beginAccess();
  v2[5] = v8;

  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
  v2[3] = sub_1DAECEF6C();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 72))(v9, v10);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D60, &unk_1DAED7E70);
  sub_1DAD64B94(&qword_1EE005CA8, &qword_1ECC08D60, &unk_1DAED7E70, MEMORY[0x1E695BED8]);
  v11 = sub_1DAECF00C();

  v2[6] = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_1DAD88004()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD8803C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v2 + 16);

  os_unfair_lock_unlock(v5);
  return v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DAD88188(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    result = sub_1DAED18CC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1DAD8830C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  BSDispatchQueueAssertMain();
  v9 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v10 = *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v10)
  {
    if (!*&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter])
    {
      goto LABEL_5;
    }

    v11 = v10;

    v12 = sub_1DAD8C688(a1, v10, 1);
  }

  else
  {
    if (a2)
    {
      *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = a2;
      v13 = a2;
LABEL_9:
      v14 = v13;
      sub_1DAD80F4C(1);
      sub_1DAE09410(v15);
      if (qword_1EE008AC0 != -1)
      {
        swift_once();
      }

      v16 = qword_1EE008AD0;
      v17 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene;
      v18 = [*&v14[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] widget];
      v19 = [v18 extensionIdentity];

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
      v20 = sub_1DAECE26C();
      v22 = v21;
      swift_endAccess();

      LOBYTE(v20) = sub_1DADB410C(v20, v22, v16);

      if (v20)
      {
        v23 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
        v24 = *&v14[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
        if (v24)
        {
          if (*(v24 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) == 1)
          {
            if (!*&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter])
            {
              __break(1u);
              return;
            }

            v25 = v24;

            sub_1DADC8A98(v8);
            v26 = sub_1DADE5DD8(v8);

            sub_1DAD64398(v8, &qword_1ECC08338, &unk_1DAEDB980);
            if (v26)
            {
              v27 = *&v14[v23];
              if (v27)
              {
                v28 = v27;
                sub_1DADB4204(1);
              }

              v29 = *&v14[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
              *(v29 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting) = 1;
              v30 = *(v29 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
              v30[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 1;
              [v30 setNeedsLayout];
              v31 = swift_allocObject();
              v31[2] = v3;
              v31[3] = a1;
              v31[4] = v14;
              aBlock[4] = sub_1DADE6384;
              aBlock[5] = v31;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1DAD751C0;
              aBlock[3] = &block_descriptor_132;
              v32 = _Block_copy(aBlock);
              v33 = v14;
              v34 = v3;
              v35 = a1;

              BSRunLoopPerformAfterCACommit();
              _Block_release(v32);
            }
          }
        }
      }

      v36 = *&v14[v17];
      sub_1DAD6B5EC(v36);

      return;
    }

    v12 = *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundSceneLimiter];
    if (v12)
    {

      v37 = sub_1DAD8C688(a1, 0, 1);

      v12 = *&v3[v9];
      *&v3[v9] = v37;
    }

    else
    {
      *&v3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection] = 0;
    }
  }

LABEL_5:
  v13 = *&v3[v9];
  if (v13)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1DAD88724()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD8878C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAD88828()
{
  result = qword_1EE00AA40;
  if (!qword_1EE00AA40)
  {
    sub_1DAD674D4(255, &qword_1EE00AA30, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AA40);
  }

  return result;
}

uint64_t sub_1DAD888A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD88900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD88948(uint64_t a1)
{
  result = type metadata accessor for RBImageSnapshotter.RBImageOptions(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1DAD889F0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1DAECF8EC();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

void *sub_1DAD88A98(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v58 = a8;
  v56 = a5;
  v57 = a7;
  v49 = a4;
  v50 = a6;
  v54 = a1;
  v55 = a2;
  v53 = a13;
  v52 = a14;
  v48 = a12;
  v14 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v44 = &v43 - v17;
  v19 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v43 - v31;
  (*(v25 + 32))(&v43 - v31, v33, a10, v30);
  v45 = v24;
  v46 = v19;
  v34 = v24;
  (*(v19 + 32))(v24, v49, a11);
  v35 = v18;
  v36 = v48;
  (*(v14 + 32))(v35, v50, v48);
  type metadata accessor for WidgetArchiveService();
  v50 = swift_allocObject();
  v37 = *(v25 + 16);
  v43 = a10;
  v37(v28, v32, a10);
  v38 = v47;
  (*(v19 + 16))(v47, v34, a11);
  v39 = v51;
  v40 = v44;
  (*(v14 + 16))(v51, v44, v36);
  v41 = sub_1DAD88E38(v54, v55, v28, v38, v56, v39, v57, v58, v50, a10, a11, v36, v53, *(&v53 + 1), v52);
  (*(v14 + 8))(v40, v36);
  (*(v46 + 8))(v45, a11);
  (*(v25 + 8))(v32, v43);
  return v41;
}

void *sub_1DAD88E38(void *a1, void *a2, char *a3, void (*a4)(char *), void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  LODWORD(v217) = a8;
  v220 = a7;
  v214 = a4;
  v215 = a6;
  v200 = a5;
  v212 = a3;
  v213 = a15;
  v211 = a14;
  v205 = a13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v175 = &v168 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5C8, &qword_1DAEDDF18);
  v176 = *(v19 - 8);
  v177 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v169 = &v168 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v168 - v24;
  v210 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v210);
  v209 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1DAED20DC();
  v216 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v206 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1DAECEDEC();
  v218 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v197 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v196 = &v168 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v178 = &v168 - v33;
  v34 = sub_1DAED18CC();
  v222 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v168 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1DAED16DC();
  v199 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v203 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v168 - v39;
  v247[3] = a10;
  v247[4] = v205;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v247);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, v212, a10);
  v246[3] = a11;
  v246[4] = v211;
  v42 = __swift_allocate_boxed_opaque_existential_1(v246);
  (*(*(a11 - 8) + 32))(v42, v214, a11);
  v245[3] = a12;
  v245[4] = v213;
  v43 = __swift_allocate_boxed_opaque_existential_1(v245);
  (*(*(a12 - 8) + 32))(v43, v215, a12);
  v204 = type metadata accessor for UnfairLock();
  v44 = swift_allocObject();
  v45 = swift_slowAlloc();
  *v45 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  *(v44 + 16) = v45;
  *(a9 + 288) = v44;
  *(a9 + 296) = v46;
  *(a9 + 304) = MEMORY[0x1E69E7CD0];
  sub_1DAD648F8(a1, a9 + 16);
  v173 = a2;
  sub_1DAD648F8(a2, a9 + 80);
  sub_1DAD648F8(v247, a9 + 120);
  sub_1DAD648F8(v246, a9 + 160);
  sub_1DAD648F8(v200, a9 + 200);
  sub_1DAD648F8(v245, a9 + 240);
  LODWORD(v205) = v217 & 1;
  *(a9 + 280) = v217;
  v47 = a1[3];
  v48 = a1[4];
  v49 = __swift_project_boxed_opaque_existential_1(a1, v47);
  v243 = v47;
  v244 = *(v48 + 8);
  v50 = __swift_allocate_boxed_opaque_existential_1(v242);
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  sub_1DAED16CC();
  __swift_destroy_boxed_opaque_existential_1Tm(v242);
  v51 = sub_1DAED0EBC();
  sub_1DAED0EAC();
  sub_1DAED0E9C();
  v213 = v51;
  v52 = sub_1DAED0E8C();
  v53 = sub_1DAED13AC();
  v54 = *MEMORY[0x1E6985998];
  v55 = *(v222 + 104);
  v221 = v34;
  v214 = v55;
  v215 = v222 + 104;
  (v55)(v36, v54, v34);
  v56 = a1[3];
  v57 = a1[4];
  v174 = a1;
  v58 = a1;
  v59 = v53;
  v60 = __swift_project_boxed_opaque_existential_1(v58, v56);
  v243 = v56;
  v244 = *(v57 + 8);
  v61 = __swift_allocate_boxed_opaque_existential_1(v242);
  (*(*(v56 - 8) + 16))(v61, v60, v56);
  v217 = v36;
  v62 = sub_1DAED139C();
  v63 = sub_1DAED0F4C();
  sub_1DAD648F8(a9 + 240, v242);
  v241 = MEMORY[0x1E6993F30];
  v240 = v59;
  v239[0] = v62;

  sub_1DAED0F2C();
  v193 = v63;
  v64 = sub_1DAED0F1C();
  v65 = *(v199 + 16);
  v212 = v40;
  v66 = v64;
  v191 = v65;
  v192 = v199 + 16;
  v65(v203, v40, v219);
  v211 = v66;
  sub_1DAED0F3C();
  if (qword_1EE005DC0 != -1)
  {
    swift_once();
  }

  v67 = v223;
  v68 = __swift_project_value_buffer(v223, qword_1EE011658);
  v69 = v218 + 16;
  v70 = *(v218 + 16);
  v71 = v178;
  v70(v178, v68, v67);
  sub_1DAD648F8(v247, v242);
  sub_1DAD648F8(v246, v239);
  v238 = MEMORY[0x1E6993E28];
  *(&v237 + 1) = v213;
  *&v236 = v52;
  v201 = a9;
  sub_1DAD648F8(a9 + 200, v235);
  sub_1DAD6495C(v220, v234, &qword_1ECC0A9E0, &qword_1DAED7570);
  v233 = MEMORY[0x1E6993F30];
  v171 = v59;
  v232 = v59;
  v231[0] = v62;
  v213 = type metadata accessor for WidgetArchiveServiceStore(0);
  v72 = swift_allocObject();
  v73 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v74 = swift_allocObject();
  v198 = v62;

  v172 = v52;

  v75 = swift_slowAlloc();
  *v75 = 0;
  *(v74 + 16) = v75;
  *&v72[v73] = v74;
  *&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v72 + 5) = 0x656E696C656D6974;
  *(v72 + 6) = 0xE900000000000073;
  v194 = v70;
  v195 = v69;
  v70(&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger], v71, v67);
  v202 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v228 = 0;
  v229 = 0xE000000000000000;
  sub_1DAED256C();
  v190 = "_lock_configLifetimeAssertions";
  MEMORY[0x1E127DA50](0xD000000000000034, 0x80000001DAEE57F0);
  MEMORY[0x1E127DA50](0x656E696C656D6974, 0xE900000000000073);
  sub_1DAED0A0C();
  v76 = *(v216 + 104);
  v189 = *MEMORY[0x1E69E8098];
  v216 += 104;
  v188 = v76;
  v76(v208);
  v228 = MEMORY[0x1E69E7CC0];
  v77 = sub_1DAD8878C(&qword_1EE00AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v185 = sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480, MEMORY[0x1E69E6328]);
  v186 = v78;
  v187 = v77;
  sub_1DAED23CC();
  *(v72 + 4) = sub_1DAED210C();
  sub_1DAD648F8(v242, &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v239, &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider]);
  sub_1DAD6495C(&v236, &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v231, &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v235, &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor]);
  v184 = *MEMORY[0x1E6985988];
  v79 = v221;
  v214(&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel]);
  v80 = sub_1DAD8878C(&qword_1EE005798, MEMORY[0x1E6993E58], MEMORY[0x1E6993DE8]);
  *(v72 + 2) = v211;
  *(v72 + 3) = v80;
  v182 = v80;
  v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews] = v205;
  v81 = sub_1DAED13EC();
  sub_1DAD648F8(v239, &v228);
  v82 = sub_1DAED13DC();
  v83 = &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver];
  v84 = MEMORY[0x1E6993F40];
  v183 = v81;
  v83[3] = v81;
  v83[4] = v84;
  *v83 = v82;
  sub_1DAD6495C(&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &v228, &qword_1ECC087A8, &unk_1DAED71F0);
  v85 = v223;
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v225[0] = sub_1DAED0F6C();
    v86 = sub_1DAED20EC();
    v224 = v86;
    v87 = sub_1DAED20AC();
    v88 = v175;
    (*(*(v87 - 8) + 56))(v175, 1, 1, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38, MEMORY[0x1E695BED8]);
    sub_1DAD88828();
    v89 = v181;
    sub_1DAECEFBC();
    v90 = v221;
    sub_1DAD64398(v88, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18, MEMORY[0x1E695BE98]);
    v91 = v177;
    sub_1DAECF00C();

    v92 = v89;
    v85 = v223;
    (*(v176 + 8))(v92, v91);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    v90 = v79;
    sub_1DAD64398(&v228, &qword_1ECC087A8, &unk_1DAED71F0);
  }

  v93 = &v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor];
  __swift_project_boxed_opaque_existential_1(&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor], *&v72[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24]);
  v94 = v217;
  sub_1DAED127C();
  v95 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v96 = *(v222 + 40);
  v222 += 40;
  v180 = v96;
  v96(&v72[v95], v94, v90);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v93, *(v93 + 3));
  v228 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  v98 = sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488, MEMORY[0x1E695BED8]);
  v181 = v97;
  v179 = v98;
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v234, &v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  v99 = v178;
  v100 = MEMORY[0x1E6993F30];
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v226 = v213;
    v227 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore, &unk_1DAED7130);
    v225[0] = v72;

    sub_1DAECE35C();
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    (*(v218 + 8))(v99, v85);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    __swift_destroy_boxed_opaque_existential_1Tm(v225);
    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
  }

  else
  {
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    (*(v218 + 8))(v99, v85);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    sub_1DAD64398(&v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v101 = v201;
  v201[7] = v72;
  sub_1DAD648F8((v101 + 30), v242);
  v241 = v100;
  v102 = v171;
  v240 = v171;
  v103 = v198;
  v239[0] = v198;
  swift_retain_n();
  sub_1DAED0F2C();
  v104 = sub_1DAED0F1C();
  v191(v203, v212, v219);
  sub_1DAED0F3C();
  if (qword_1EE005DC8 != -1)
  {
    swift_once();
  }

  v105 = v223;
  v106 = __swift_project_value_buffer(v223, qword_1EE011670);
  v107 = v196;
  v108 = v194;
  v194(v196, v106, v105);
  sub_1DAD648F8(v247, v242);
  sub_1DAD648F8(v246, v239);
  v238 = 0;
  v236 = 0u;
  v237 = 0u;
  sub_1DAD648F8((v101 + 25), v235);
  sub_1DAD6495C(v220, v234, &qword_1ECC0A9E0, &qword_1DAED7570);
  v233 = MEMORY[0x1E6993F30];
  v232 = v102;
  v231[0] = v103;
  v109 = swift_allocObject();
  v110 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v111 = swift_allocObject();

  v112 = swift_slowAlloc();
  *v112 = 0;
  *(v111 + 16) = v112;
  *&v109[v110] = v111;
  *&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v109 + 5) = 0x746F687370616E73;
  *(v109 + 6) = 0xE900000000000073;
  v108(&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger], v107, v105);
  v228 = 0;
  v229 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, v190 | 0x8000000000000000);
  MEMORY[0x1E127DA50](0x746F687370616E73, 0xE900000000000073);
  sub_1DAED0A0C();
  v188(v208, v189, v207);
  v228 = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  *(v109 + 4) = sub_1DAED210C();
  sub_1DAD648F8(v242, &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v239, &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider]);
  sub_1DAD6495C(&v236, &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v231, &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v235, &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor]);
  v113 = v221;
  (v214)(&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel], v184, v221);
  v178 = v104;
  v114 = v182;
  *(v109 + 2) = v104;
  *(v109 + 3) = v114;
  v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews] = v205;
  sub_1DAD648F8(v239, &v228);
  v115 = v183;
  v116 = sub_1DAED13DC();
  v117 = &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver];
  v117[3] = v115;
  v117[4] = MEMORY[0x1E6993F40];
  *v117 = v116;
  sub_1DAD6495C(&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer], &v228, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v225[0] = sub_1DAED0F6C();
    v118 = sub_1DAED20EC();
    v224 = v118;
    v119 = sub_1DAED20AC();
    v120 = v175;
    (*(*(v119 - 8) + 56))(v175, 1, 1, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38, MEMORY[0x1E695BED8]);
    sub_1DAD88828();
    v121 = v169;
    sub_1DAECEFBC();
    v122 = v221;
    sub_1DAD64398(v120, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18, MEMORY[0x1E695BE98]);
    v123 = v177;
    sub_1DAECF00C();

    (*(v176 + 8))(v121, v123);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    sub_1DAD64398(&v228, &qword_1ECC087A8, &unk_1DAED71F0);
    v122 = v113;
  }

  v124 = &v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor];
  __swift_project_boxed_opaque_existential_1(&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor], *&v109[OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24]);
  v125 = v217;
  sub_1DAED127C();
  v126 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v180(&v109[v126], v125, v122);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v124, *(v124 + 3));
  v228 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v234, &v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v226 = v213;
    v227 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore, &unk_1DAED7130);
    v225[0] = v109;

    sub_1DAECE35C();
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    v127 = v223;
    (*(v218 + 8))(v196, v223);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    __swift_destroy_boxed_opaque_existential_1Tm(v225);
    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
  }

  else
  {
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    v127 = v223;
    (*(v218 + 8))(v196, v223);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    sub_1DAD64398(&v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v128 = v201;
  v201[8] = v109;
  v129 = sub_1DAED130C();
  (v214)(v217, *MEMORY[0x1E69859A0], v122);
  v130 = sub_1DAED131C();
  sub_1DAD648F8((v128 + 30), v242);
  v241 = MEMORY[0x1E6993F28];
  v240 = v129;
  v239[0] = v130;

  sub_1DAED0F2C();
  v131 = sub_1DAED0F1C();
  v191(v203, v212, v219);
  v203 = v131;
  sub_1DAED0F3C();
  if (qword_1EE005E50 != -1)
  {
    swift_once();
  }

  v132 = __swift_project_value_buffer(v127, qword_1EE011760);
  v133 = v197;
  v134 = v194;
  v194(v197, v132, v127);
  sub_1DAD648F8(v247, v242);
  sub_1DAD648F8(v246, v239);
  v238 = 0;
  v236 = 0u;
  v237 = 0u;
  sub_1DAD648F8((v128 + 25), v235);
  sub_1DAD6495C(v220, v234, &qword_1ECC0A9E0, &qword_1DAED7570);
  v233 = MEMORY[0x1E6993F28];
  v232 = v129;
  v231[0] = v130;
  v135 = swift_allocObject();
  v136 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock;
  v137 = swift_allocObject();
  v204 = v130;

  v138 = v203;

  v139 = swift_slowAlloc();
  *v139 = 0;
  *(v137 + 16) = v139;
  *(v135 + v136) = v137;
  *(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage) = MEMORY[0x1E69E7CC8];
  *(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  strcpy((v135 + 40), "placeholders");
  *(v135 + 53) = 0;
  *(v135 + 54) = -5120;
  v134(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger, v133, v127);
  v228 = 0;
  v229 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, v190 | 0x8000000000000000);
  MEMORY[0x1E127DA50](0x6C6F686563616C70, 0xEC00000073726564);
  sub_1DAED0A0C();
  v188(v208, v189, v207);
  v228 = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  *(v135 + 32) = sub_1DAED210C();
  sub_1DAD648F8(v242, v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory);
  sub_1DAD648F8(v239, v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider);
  sub_1DAD6495C(&v236, v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &qword_1ECC087A8, &unk_1DAED71F0);
  sub_1DAD648F8(v231, v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider);
  sub_1DAD648F8(v235, v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor);
  v140 = v221;
  (v214)(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel, v184, v221);
  v141 = v182;
  *(v135 + 16) = v138;
  *(v135 + 24) = v141;
  *(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__forXcodePreviews) = v205;
  sub_1DAD648F8(v239, &v228);
  v142 = v183;
  v143 = sub_1DAED13DC();
  v144 = (v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver);
  v144[3] = v142;
  v144[4] = MEMORY[0x1E6993F40];
  *v144 = v143;
  sub_1DAD6495C(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &v228, &qword_1ECC087A8, &unk_1DAED71F0);
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v225[0] = sub_1DAED0F6C();
    v145 = sub_1DAED20EC();
    v224 = v145;
    v146 = sub_1DAED20AC();
    v147 = v175;
    (*(*(v146 - 8) + 56))(v175, 1, 1, v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5E0, &qword_1DAEDDF38);
    sub_1DAD64B94(&qword_1EE005CE8, &qword_1ECC0A5E0, &qword_1DAEDDF38, MEMORY[0x1E695BED8]);
    sub_1DAD88828();
    v148 = v170;
    sub_1DAECEFBC();
    v149 = v221;
    sub_1DAD64398(v147, &unk_1ECC07D20, &unk_1DAED57D0);

    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1EE005D38, &qword_1ECC0A5C8, &qword_1DAEDDF18, MEMORY[0x1E695BE98]);
    v150 = v177;
    sub_1DAECF00C();

    (*(v176 + 8))(v148, v150);
    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
    v149 = v140;
    sub_1DAD64398(&v228, &qword_1ECC087A8, &unk_1DAED71F0);
  }

  v151 = v218;
  v152 = (v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor);
  __swift_project_boxed_opaque_existential_1((v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor), *(v135 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor + 24));
  v153 = v217;
  sub_1DAED127C();
  v154 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  v180((v135 + v154), v153, v149);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v152, v152[3]);
  v228 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD6495C(v234, &v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  if (v230)
  {
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v226 = v213;
    v227 = sub_1DAD8878C(&qword_1ECC0A5D8, type metadata accessor for WidgetArchiveServiceStore, &unk_1DAED7130);
    v225[0] = v135;

    sub_1DAECE35C();
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    (*(v151 + 8))(v197, v223);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    __swift_destroy_boxed_opaque_existential_1Tm(v225);
    __swift_destroy_boxed_opaque_existential_1Tm(&v228);
  }

  else
  {
    sub_1DAD64398(v234, &qword_1ECC0A9E0, &qword_1DAED7570);
    __swift_destroy_boxed_opaque_existential_1Tm(v235);
    sub_1DAD64398(&v236, &qword_1ECC087A8, &unk_1DAED71F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    (*(v151 + 8))(v197, v223);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    sub_1DAD64398(&v228, &qword_1ECC0A9E0, &qword_1DAED7570);
  }

  v155 = v201;
  v201[9] = v135;
  v156 = v155[5];
  v157 = v155[6];
  __swift_project_boxed_opaque_existential_1(v155 + 2, v156);
  v242[0] = (*(v157 + 48))(v156, v157);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  v158 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v159 = v155[5];
  v160 = v155[6];
  __swift_project_boxed_opaque_existential_1(v155 + 2, v159);
  v242[0] = (*(v160 + 104))(v159, v160);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A5D0, &unk_1DAEDDF28);
  sub_1DAD64B94(&qword_1EE005C60, &qword_1ECC0A5D0, &unk_1DAEDDF28, v158);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v161 = v155[5];
  v162 = v155[6];
  __swift_project_boxed_opaque_existential_1(v155 + 2, v161);
  v242[0] = (*(v162 + 96))(v161, v162);
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v163 = v155[5];
  v164 = v155[6];
  __swift_project_boxed_opaque_existential_1(v155 + 2, v163);
  v242[0] = (*(v164 + 88))(v163, v164);
  swift_allocObject();
  swift_weakInit();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v155 + 10, v155[13]);
  v242[0] = sub_1DAED11CC();
  v165 = swift_allocObject();
  swift_weakInit();

  v166 = swift_allocObject();
  *(v166 + 16) = sub_1DADC0140;
  *(v166 + 24) = v165;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, v158);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAD64398(v220, &qword_1ECC0A9E0, &qword_1DAED7570);
  __swift_destroy_boxed_opaque_existential_1Tm(v200);
  __swift_destroy_boxed_opaque_existential_1Tm(v173);
  (*(v199 + 8))(v212, v219);
  __swift_destroy_boxed_opaque_existential_1Tm(v245);
  __swift_destroy_boxed_opaque_existential_1Tm(v246);
  __swift_destroy_boxed_opaque_existential_1Tm(v247);
  __swift_destroy_boxed_opaque_existential_1Tm(v174);
  return v155;
}

uint64_t sub_1DAD8B828()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD8B860()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD8B8BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A950, &unk_1DAEDF0F0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAED136C();
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20, MEMORY[0x1E695BED8]);
  sub_1DAECEF8C();

  sub_1DAD64B94(&qword_1EE005D98, &unk_1ECC0A950, &unk_1DAEDF0F0, MEMORY[0x1E695BD60]);
  v5 = sub_1DAECEF6C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1DAD8BA88()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor____lazy_storage___maxUnlockedProtectionLevelPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09BC8, &qword_1DAEDB940);
    sub_1DAD64B94(&qword_1EE00ABC8, &qword_1ECC09BC8, &qword_1DAEDB940, MEMORY[0x1E695BFB0]);
    v2 = sub_1DAECEF6C();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1DAD8BB88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAED18CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED200C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      sub_1DAD722E0(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v15 = sub_1DAED287C();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_1DAD6482C(v15, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DAD61000, v10, v11, "Protection Type changed to %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      v19 = v13;
      a1 = v22;
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v20 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    sub_1DAD8BE48(v9, a1);
    os_unfair_lock_unlock(*(v20 + 16));
  }

  return result;
}

void sub_1DAD8BE48(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v51 = sub_1DAED0DDC();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v46 = a1;
  v12 = *(a1 + v11);
  v13 = *(v12 + 64);
  v40 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v39 = (v14 + 63) >> 6;
  v41 = v3 + 16;
  v49 = (v3 + 32);
  v44 = v3;
  v45 = v12;
  v47 = (v3 + 8);

  v17 = 0;
  v18 = &qword_1ECC08788;
  v42 = v10;
  v43 = v7;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v25 = v44;
      v24 = v45;
      v26 = v50;
      v27 = v51;
      (*(v44 + 16))(v50, *(v45 + 48) + *(v44 + 72) * v23, v51);
      v28 = *(*(v24 + 56) + 8 * v23);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, &qword_1DAED71C8);
      v30 = v18;
      v31 = *(v29 + 48);
      v32 = *(v25 + 32);
      v7 = v43;
      v32(v43, v26, v27);
      *&v7[v31] = v28;
      v18 = v30;
      (*(*(v29 - 8) + 56))(v7, 0, 1, v29);

      v21 = v19;
      v10 = v42;
LABEL_13:
      sub_1DAD8C374(v7, v10);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, &qword_1DAED71C8);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        break;
      }

      v34 = *&v10[*(v33 + 48)];
      v35 = v50;
      v36 = v51;
      (*v49)(v50, v10, v51);
      sub_1DADBD3C0(v35, v34, v48);

      (*v47)(v35, v36);
      v17 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v39 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v39;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v39)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, &qword_1DAED71C8);
        (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v40 + 8 * v19);
      ++v17;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1DAD8C264(uint64_t a1)
{
  sub_1DAD8C31C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAD8C31C(uint64_t a1)
{
  if (!qword_1EE00C278)
  {
    sub_1DAECDCEC();
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE00C278);
    }
  }
}

uint64_t sub_1DAD8C374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAD8C3E4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1DAED248C();

    if (v17)
    {

      sub_1DAD674D4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1DAED247C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1DAE87ED4(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1DADAAF4C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1DAE88E64(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1DAD674D4(0, a3, a4);
    v19 = sub_1DAED227C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1DAED228C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1DAD8E02C(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

char *sub_1DAD8C688(void *a1, char *a2, char a3)
{
  v6 = v3;
  v10 = sub_1DAECDB3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  v14 = *(v6 + 16);

  v15 = sub_1DAD8DA44(a1, v14);

  if (v15)
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = &selRef__registerSceneActionsHandlerArray_forKey_;
  if ([*(v6 + 24) containsObject_])
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
LABEL_31:
    v45 = v4 * v5;
    v46 = sub_1DAECEDEC();
    __swift_project_value_buffer(v46, qword_1EE011B58);
    v47 = v14;
    v48 = sub_1DAECEDCC();
    v49 = sub_1DAED203C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v66 = v51;
      *v50 = 136446466;
      v52 = [v47 *(v15 + 3432)];
      v53 = [v52 identifier];

      v54 = sub_1DAED1CEC();
      v56 = v55;

      v57 = sub_1DAD6482C(v54, v56, &v66);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2050;
      *(v50 + 14) = v45;
      _os_log_impl(&dword_1DAD61000, v48, v49, "Add existing foreground content: %{public}s %{public}f", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E127F100](v51, -1, -1);
      MEMORY[0x1E127F100](v50, -1, -1);
    }

    [*(v6 + 32) addObject_];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1DAD80D9C(v47, isUniquelyReferenced_nonNull_native, v45);
    *(v6 + 40) = *&v65[0];
    swift_endAccess();
    goto LABEL_35;
  }

  if ([*(v6 + 32) containsObject_])
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v14 = a1;
  sub_1DAD8DAE0(v65, v14);
  swift_endAccess();

  if (sub_1DAD8DB4C())
  {
    goto LABEL_29;
  }

  v60 = v11;
  v61 = v10;
  v62 = a2;
  if (a3)
  {
    v16 = *(v6 + 64);
    if (v16)
    {
      v17 = *(v6 + 72);

      v16(v14);
      sub_1DAD660D8(v16, v17);
    }
  }

  v63 = v14;
  v18 = *(v6 + 32);
  sub_1DAED1FEC();

  sub_1DAECDB2C();
  if (!v67)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1DADDC968(&v66, v65);
    sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v19 = qword_1EE005478;
    v20 = v64;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = [qword_1EE005480 objectForKey_];
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = v21;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      break;
    }

    v23 = *&v22[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
    swift_unknownObjectRelease();
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_10:
    sub_1DAECDB2C();
    if (!v67)
    {
      goto LABEL_28;
    }
  }

  swift_unknownObjectRelease();
LABEL_19:
  if (qword_1EE00AC50 != -1)
  {
    swift_once();
  }

  v24 = sub_1DAECEDEC();
  __swift_project_value_buffer(v24, qword_1EE011B58);
  v25 = v20;
  v26 = sub_1DAECEDCC();
  v27 = sub_1DAED203C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v65[0] = v29;
    *v28 = 136446210;
    v30 = [v25 _FBSScene];
    v31 = [v30 identifier];

    v32 = sub_1DAED1CEC();
    v34 = v33;

    v35 = sub_1DAD6482C(v32, v34, v65);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1DAD61000, v26, v27, "No current content availability, revoking content for older scene to make room: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E127F100](v29, -1, -1);
    MEMORY[0x1E127F100](v28, -1, -1);
  }

  [*(v6 + 32) removeObject_];
  swift_beginAccess();
  v36 = v25;
  sub_1DADC7B44(0, 1, v36);
  swift_endAccess();
  [*(v6 + 24) addObject_];
  v37 = qword_1EE005480;
  v38 = [v37 objectForKey_];

  if (v38)
  {
    swift_getObjectType();
    v39 = swift_conformsToProtocol2();
    if (v39)
    {
      sub_1DADE615C(v39);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_28:
  (*(v60 + 8))(v13, v61);
  a2 = v62;
  v14 = v63;
LABEL_29:
  if (a2)
  {
    a2 = a2;
    v15 = &off_1E85EB000;
    v40 = [v14 _FBSScene];
    v41 = [v40 settings];

    [v41 frame];
    v4 = v42;
    v5 = v43;

    v44 = [v14 widget];
    [v44 family];

    CHSWidgetFamilyIsAccessory();
    if (qword_1EE00AC50 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  a2 = sub_1DAD7CD98(v14);
LABEL_35:
  sub_1DAD7C75C();
  return a2;
}

uint64_t sub_1DAD8CE78(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 identifier];

  v4 = sub_1DAED1CEC();
  v6 = v5;

  v33 = 45;
  v34 = 0xE100000000000000;
  v32[2] = &v33;
  v7 = sub_1DAD8D150(sub_1DAD8D274, v32, v4, v6);
  if ((v8 & 1) == 0)
  {
    v9 = sub_1DAD8D2CC(v7, v4, v6);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v4 = MEMORY[0x1E127DA00](v9, v11, v13, v15);
    v6 = v16;
  }

  [a1 contentType];
  v17 = NSStringFromCHSWidgetContentType();
  if (!v17)
  {
    sub_1DAED1CEC();
    v17 = sub_1DAED1CBC();
  }

  v18 = [a1 _FBSScene];
  v19 = [v18 hostHandle];

  if (v19)
  {
    v20 = [v19 auditToken];

    v21 = [v20 pid];
    LODWORD(v33) = v21;
    sub_1DAD8D318();
    v22 = sub_1DAED237C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = [a1 widget];
  v26 = [a1 metrics];
  v27 = [v25 _loggingIdentifierWithMetrics_prefix_];

  v28 = sub_1DAED1CEC();
  v30 = v29;

  v33 = v28;
  v34 = v30;
  MEMORY[0x1E127DA50](0x3A6469702DLL, 0xE500000000000000);
  MEMORY[0x1E127DA50](v22, v24);

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](v4, v6);

  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  return v33;
}

unint64_t sub_1DAD8D150(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1DAED1DBC();
    v13[0] = sub_1DAED1E1C();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_1DAD8D274(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DAED289C() & 1;
  }
}

uint64_t sub_1DAD8D2CC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE69100]();
}

unint64_t sub_1DAD8D318()
{
  result = qword_1EE005428;
  if (!qword_1EE005428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005428);
  }

  return result;
}

void sub_1DAD8D36C(uint64_t a1)
{
  sub_1DAECE20C();
  if (v1 <= 0x3F)
  {
    sub_1DADD5988(319, &qword_1EE005EB0, MEMORY[0x1E6994460]);
    if (v2 <= 0x3F)
    {
      sub_1DAED10DC();
      if (v3 <= 0x3F)
      {
        sub_1DADD5988(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1DAD8D568(uint64_t a1)
{
  if (!qword_1EE005EB0)
  {
    sub_1DAECE55C();
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005EB0);
    }
  }
}

uint64_t sub_1DAD8D5C0()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117D8);
  __swift_project_value_buffer(v0, qword_1EE0117D8);
  return sub_1DAECEDDC();
}

void sub_1DAD8D644()
{
  if (!qword_1EE005698)
  {
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005698);
    }
  }
}

uint64_t sub_1DAD8D6A4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAD674D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAD8D6E8(void *a1)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v31 = a1;
    v5 = [v4 nullableWidget];
    if (v5)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v6 = sub_1DAECEDEC();
      __swift_project_value_buffer(v6, qword_1EE011748);
      v7 = v31;
      v8 = v1;
      v9 = sub_1DAECEDCC();
      v10 = sub_1DAED203C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32[0] = v12;
        *v11 = 136446210;
        v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v13)
        {
          v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v18 = v17;
            v19 = v7;
            v20 = sub_1DAD8CE78(v18);
          }

          else
          {
            v22 = [v7 _FBSScene];
            v19 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v16 = v20;
          v15 = v21;
        }

        v23 = sub_1DAD6482C(v16, v15, v32);

        *(v11 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Will foreground", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E127F100](v12, -1, -1);
        MEMORY[0x1E127F100](v11, -1, -1);
      }

      v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 0;
      v24 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene];
      *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene] = v4;
      v25 = v7;

      v26 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
        if (v27)
        {
          if ((v27[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated] & 1) == 0)
          {
            v28 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
            swift_beginAccess();
            v29 = v27[v28];
            v27[v28] = 1;
            v30 = v27;
            sub_1DADC68E4(v29);
          }
        }
      }

      sub_1DAD8830C(v4, 0);
      sub_1DAD83970(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1DAD8DB4C()
{
  v1 = [*(v0 + 32) count];
  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if (v1 == *(v3 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = 0.0;
    if (v7)
    {
      while (1)
      {
        v10 = v4;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v9 = v9 + *(*(v3 + 56) + ((v10 << 9) | (8 * v11)));
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 64 + 8 * v10);
      ++v4;
      if (v7)
      {
        v4 = v10;
        goto LABEL_10;
      }
    }

    return v9 < *(v0 + 48) && *(*(v0 + 40) + 16) < *(v0 + 56);
  }

  else
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAD8DD18(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E127E1F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1DAED247C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void (*sub_1DAD8DE4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E127E1F0](a2, a3);
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
    return sub_1DAD8DE48;
  }

  __break(1u);
  return result;
}

double sub_1DAD8DECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 48);
  if (v4 == 2)
  {
    sub_1DAD648F8(a2, a4);
  }

  else
  {
    v7 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService);
    if (v4 == 1)
    {
      v14 = *(v7 + 64);
      v10 = *(v14 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
      v15 = *(v10 + 16);

      os_unfair_lock_lock(v15);
      v12 = a4;
      v13 = v14;
    }

    else
    {
      v9 = *(v7 + 56);
      v10 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
      v11 = *(v10 + 16);

      os_unfair_lock_lock(v11);
      v12 = a4;
      v13 = v9;
    }

    sub_1DAD72328(v13, a3, 0x4D7765695677656ELL, 0xEC0000006C65646FLL, v12);
    os_unfair_lock_unlock(*(v10 + 16));
  }

  return result;
}

void sub_1DAD8E02C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1DADAAF4C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DAE89574(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1DADA65C8(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1DAED227C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1DAD674D4(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1DAED228C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DAED28EC();
  __break(1u);
}

uint64_t sub_1DAD8E1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD8E204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD8E24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD8E294(uint64_t a1)
{
  v3 = sub_1DAED10DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) != 1)
  {
    return (*(v4 + 8))(a1, v3);
  }

  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v15);
  v8 = v16;
  v9 = v17;
  v14 = __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v4 + 16))(v6, v1 + v7, v3);
  v10 = *(v9 + 152);
  v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
  v10(v6, v11, v8, v9);

  v12 = *(v4 + 8);
  v12(a1, v3);
  v12(v6, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_1DAD8E484()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0DDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v10 = *(v0 + 40);
  v11 = *(v0 + 32);
  v12 = v10;
  sub_1DAED0DAC();

  sub_1DAD80BE4(0x4D7765695677656ELL, 0xEC0000006C65646FLL, v49);

  sub_1DAD648F8(v49, v48);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v48, v48[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;

  v20 = sub_1DADD721C(v19, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  sub_1DAD8DECC(v1, v49, v9, v48);
  v21 = *(v1 + 48);
  if (v21 == 2)
  {
    v22 = type metadata accessor for PlaceholderWidgetEntrySource();

    v23 = v20;
  }

  else
  {
    sub_1DAD648F8(v48, v47);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v47, v47[3]);
    v41 = v3;
    v40[1] = v40;
    v25 = MEMORY[0x1EEE9AC00](v24);
    v27 = v20;
    v28 = v2;
    v29 = v5;
    v30 = v7;
    v31 = v6;
    v32 = (v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v25);
    v34 = *v32;
    v6 = v31;
    v7 = v30;
    v5 = v29;
    v2 = v28;
    v20 = v27;

    v23 = sub_1DADD7008(v35, v34, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v3 = v41;
    v22 = type metadata accessor for LiveWidgetEntrySource();
  }

  v45 = v22;
  v46 = &off_1F56B6798;
  *&v44 = v23;
  sub_1DAD657D8(&v44, v47);
  sub_1DAD648F8(v47, &v44);
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v2, qword_1EE011730);
  (*(v3 + 16))(v5, v36, v2);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider, v43);
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor, v42);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  v37 = swift_allocObject();
  v38 = sub_1DAD96130(&v44, v20, v5, v43, v42, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  (*(v7 + 8))(v9, v6);
  return v38;
}

uint64_t sub_1DAD8E95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t type metadata accessor for TintedWidgetViewModel(uint64_t a1)
{
  result = qword_1EE00BCB8;
  if (!qword_1EE00BCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAD8EAF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DAECDCEC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DAED157C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1DAD8EC1C(unsigned __int8 *a1)
{
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v125 = &v119 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v129 = (&v119 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v128 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v119 - v11;
  v12 = sub_1DAECDCEC();
  v131 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v119 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v119 - v25;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing))
  {
    return;
  }

  v27 = *a1;
  v28 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch);
  v124 = v1;
  if (v28 == 1)
  {
    v29 = v27;
    v30 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
    swift_beginAccess();
    v31 = *(v1 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v30) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1DAEB1F7C(0, *(v31 + 2) + 1, 1, v31);
      *(v124 + v30) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v118 = sub_1DAEB1F7C((v33 > 1), v34 + 1, 1, v31);
      v35 = v29;
      v31 = v118;
    }

    else
    {
      v35 = v29;
    }

    *(v31 + 2) = v34 + 1;
    v31[v34 + 32] = v35;
    *(v124 + v30) = v31;
    swift_endAccess();
    return;
  }

  v123 = v27;
  v135[0] = v27;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x646E456863746162 && v36 == 0xEA00000000006465)
  {

LABEL_13:
    v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons;
    v39 = v124;
    swift_beginAccess();
    v122 = *(v39 + v38);

    goto LABEL_15;
  }

  v37 = sub_1DAED289C();

  if (v37)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A660, &unk_1DAEDE850);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1DAED6200;
  v122 = v40;
  *(v40 + 32) = v123;
  v39 = v124;
LABEL_15:
  BSDispatchQueueAssertMain();
  v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v119 = v41;
  sub_1DAD6495C(v39 + v41, v26, &qword_1ECC07CE8, &qword_1DAED6F60);
  v120 = *(v131 + 48);
  v121 = v131 + 48;
  LODWORD(v41) = v120(v26, 1, v12);
  sub_1DAD64398(v26, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v41 != 1)
  {
    v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    if (*(v39 + v43) != 1)
    {
      v42 = 1;
      goto LABEL_26;
    }

    sub_1DADC9D74(v23);
    v44 = *(v15 + 48);
    sub_1DAD6495C(v23, v17, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD6495C(v39 + v119, &v17[v44], &qword_1ECC07CE8, &qword_1DAED6F60);
    v45 = v120;
    if (v120(v17, 1, v12) == 1)
    {
      sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
      v46 = v45(&v17[v44], 1, v12);
      v39 = v124;
      if (v46 == 1)
      {
        sub_1DAD64398(v17, &qword_1ECC07CE8, &qword_1DAED6F60);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1DAD6495C(v17, v20, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v45(&v17[v44], 1, v12) != 1)
      {
        v47 = v131;
        (*(v131 + 32))(v14, &v17[v44], v12);
        sub_1DAD900EC(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v48 = sub_1DAED1CAC();
        v49 = *(v47 + 8);
        v49(v14, v12);
        sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
        v49(v20, v12);
        sub_1DAD64398(v17, &qword_1ECC07CE8, &qword_1DAED6F60);
        v42 = v48 ^ 1;
        v39 = v124;
        goto LABEL_26;
      }

      sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v131 + 8))(v20, v12);
      v39 = v124;
    }

    sub_1DAD64398(v17, &qword_1ECC087B0, qword_1DAEDCBF0);
    v42 = 1;
    goto LABEL_26;
  }

LABEL_16:
  v42 = 0;
LABEL_26:
  v50 = v122;
  v51 = *(v39 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce);
  v131 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce;
  if (v51 != 1 || *(v39 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) != 1)
  {
    goto LABEL_35;
  }

  v135[0] = v123;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x6C616974696E69 && v52 == 0xE700000000000000)
  {

LABEL_35:
    v56 = 1;
    goto LABEL_36;
  }

  v53 = sub_1DAED289C();

  if (v53)
  {
    goto LABEL_35;
  }

  if (sub_1DADC1344(6, v50))
  {
    goto LABEL_35;
  }

  v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
  swift_beginAccess();
  if (*(v39 + v54) != 1)
  {
    goto LABEL_35;
  }

  v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v56 = *(v39 + v55) ^ 1 | v42;
LABEL_36:
  v57 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  v58 = v124;
  swift_beginAccess();
  v59 = *(v58 + v57);
  v135[0] = v123;
  v61 = &_serverStartupToken[892];
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0xD00000000000001CLL && 0x80000001DAEE0300 == v60)
  {
  }

  else
  {
    v62 = sub_1DAED289C();

    if ((v62 & 1) == 0)
    {
      v69 = 0;
      goto LABEL_45;
    }
  }

  v63 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  v64 = v124;
  swift_beginAccess();
  v65 = v64 + v63;
  v66 = v64;
  v67 = v127;
  sub_1DAD6495C(v65, v127, &unk_1ECC07D30, &unk_1DAED57E0);
  v68 = v128;
  sub_1DAD7C48C(v67, v128, &unk_1ECC07D30, &unk_1DAED57E0);
  LODWORD(v67) = swift_getEnumCaseMultiPayload();
  sub_1DAD64398(v68, &unk_1ECC07D30, &unk_1DAED57E0);
  if (v67)
  {
    v69 = 0;
  }

  else
  {
    sub_1DAD648F8(v66 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v132);
    v70 = v133;
    v71 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v72 = (*(v71 + 16))(v70, v71);
    sub_1DAED0C5C();

    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    v69 = v136 == 0;
    sub_1DAD64398(v135, &unk_1ECC08880, &unk_1DAED6F50);
  }

  v61 = _serverStartupToken + 3568;
LABEL_45:
  v135[0] = v123;
  if (LiveWidgetViewChangeReason.rawValue.getter() == 0x7265646E6572 && v73 == 0xE600000000000000)
  {

    goto LABEL_49;
  }

  v74 = sub_1DAED289C();

  if (((v74 | v69 | v59 & v56) & 1) == 0)
  {
    v103 = v124;
    *(v124 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 1;
    swift_retain_n();

    v104 = sub_1DAECEDCC();
    v105 = sub_1DAED203C();

    if (!os_log_type_enabled(v104, v105))
    {

      return;
    }

    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v137 = v107;
    *v106 = 136446978;
    *(v106 + 4) = sub_1DAD6482C(*(v103 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v103 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v137);
    *(v106 + 12) = 2082;
    v108 = MEMORY[0x1E127DB00](v50, &type metadata for LiveWidgetViewChangeReason);
    v110 = v109;

    v111 = sub_1DAD6482C(v108, v110, &v137);

    *(v106 + 14) = v111;
    *(v106 + 22) = 1026;
    v112 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    v113 = v124;
    if (*(v124 + v112) == 1)
    {
      v114 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      LOBYTE(v114) = *(v113 + v114);

      if (v114)
      {
        v115 = 1;
LABEL_79:
        *(v106 + 24) = v115;
        v116 = v124;

        *(v106 + 28) = 1026;
        v117 = *(v116 + v57);

        *(v106 + 30) = v117;

        _os_log_impl(&dword_1DAD61000, v104, v105, "[%{public}s] Ignored view update for reason: %{public}s, (content paused: %{BOOL,public}d, foreground: %{BOOL,public}d)", v106, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v107, -1, -1);
        MEMORY[0x1E127F100](v106, -1, -1);

        return;
      }
    }

    else
    {
    }

    v115 = 0;
    goto LABEL_79;
  }

LABEL_49:
  v75 = v129;
  v76 = v124;
  sub_1DAD9022C(v129);
  v77 = *(v61 + 353);
  swift_beginAccess();
  sub_1DAD901C4(v75, v76 + v77, &unk_1ECC07D30, &unk_1DAED57E0);
  swift_endAccess();
  sub_1DAD64398(v75, &unk_1ECC07D30, &unk_1DAED57E0);
  v78 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  swift_beginAccess();
  v79 = *(v76 + v78);
  v80 = __OFADD__(v79, 1);
  v81 = v79 + 1;
  if (v80)
  {
    __break(1u);
  }

  else
  {
    *(v76 + v78) = v81;
    swift_retain_n();

    v82 = sub_1DAECEDCC();
    v83 = sub_1DAED203C();

    if (os_log_type_enabled(v82, v83))
    {
      LODWORD(v129) = v83;
      v84 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v132[0] = v128;
      *v84 = 136446978;
      *(v84 + 4) = sub_1DAD6482C(*(v76 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v76 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v132);
      *(v84 + 12) = 2082;
      v85 = v125;
      sub_1DAD6495C(v76 + v77, v125, &unk_1ECC07D30, &unk_1DAED57E0);
      v86 = v126;
      sub_1DAD6495C(v85, v126, &unk_1ECC07D30, &unk_1DAED57E0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v88 = v85;
      }

      else
      {
        v88 = v86;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v89 = v86;
      }

      else
      {
        v89 = v85;
      }

      v90 = EnumCaseMultiPayload == 0;
      if (EnumCaseMultiPayload)
      {
        v91 = v88;
      }

      else
      {
        v91 = v85;
      }

      if (v90)
      {
        v92 = v86;
      }

      else
      {
        v92 = v89;
      }

      sub_1DAD64398(v91, &unk_1ECC07D30, &unk_1DAED57E0);
      sub_1DAD64398(v92, &unk_1ECC07D30, &unk_1DAED57E0);
      v93 = sub_1DAED1D6C();
      v95 = v94;

      v96 = sub_1DAD6482C(v93, v95, v132);

      *(v84 + 14) = v96;
      *(v84 + 22) = 2050;
      v97 = *(v76 + v78);

      *(v84 + 24) = v97;

      *(v84 + 32) = 2082;
      v50 = v122;
      v98 = MEMORY[0x1E127DB00](v122, &type metadata for LiveWidgetViewChangeReason);
      v100 = sub_1DAD6482C(v98, v99, v132);

      *(v84 + 34) = v100;
      _os_log_impl(&dword_1DAD61000, v82, v129, "[%{public}s] Evaluated inner view with result: %{public}s - view sequence number: %{public}lld, reasons: %{public}s", v84, 0x2Au);
      v101 = v128;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v101, -1, -1);
      MEMORY[0x1E127F100](v84, -1, -1);
    }

    else
    {
    }

    v102 = v131;
    if (*(v76 + v131) != 1 || (*(v76 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) & 1) == 0)
    {

      *(v76 + v102) = 1;
      sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);

      sub_1DAED22FC();

      v50 = &unk_1F56AF988;
    }

    *(v76 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (LOBYTE(v132[0]) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v132[0]) = 0;

      sub_1DAECEF4C();
    }

    v132[0] = v50;

    sub_1DAECEE6C();

    v132[0] = v50;

    sub_1DAECEE6C();
  }
}

unint64_t LiveWidgetViewChangeReason.rawValue.getter()
{
  result = 0x6C616974696E69;
  switch(*v0)
  {
    case 1:
      return 0x7265646E6572;
    case 2:
      return 0x756F726765726F66;
    case 3:
    case 4:
    case 8:
      return 0xD00000000000001CLL;
    case 5:
    case 0x1B:
      v2 = 5;
      goto LABEL_16;
    case 6:
      return 0x7269766E4577656ELL;
    case 7:
    case 0x1A:
    case 0x1C:
      return 0xD000000000000016;
    case 9:
    case 0xE:
    case 0x18:
      return 0xD000000000000017;
    case 0xA:
      return 0xD000000000000010;
    case 0xB:
      return 0x61726150746E6974;
    case 0xC:
    case 0x17:
      return 0xD000000000000014;
    case 0xD:
      return 0x656469727265766FLL;
    case 0xF:
      return 0xD000000000000011;
    case 0x10:
      return 0xD000000000000010;
    case 0x11:
      return 0x41676E6974697865;
    case 0x12:
      v2 = 33;
      goto LABEL_16;
    case 0x13:
      return 0x63537265646E6572;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x646E456863746162;
    case 0x16:
      return 0xD000000000000010;
    case 0x19:
      v2 = 9;
LABEL_16:
      result = v2 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAD900A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD900EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD90134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD9017C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAD901C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD9022C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy;
    swift_beginAccess();
    sub_1DAD648F8(v2 + v5, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16[3] = type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
    v16[4] = sub_1DAD900EC(qword_1EE008FB8, type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource, &unk_1DAEDE750);
    v16[0] = v4;
    v8 = *(v7 + 8);
    v9 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    v10 = sub_1DAD900EC(&qword_1EE008CE0, type metadata accessor for DefaultWidgetLiveViewEntry, &protocol conformance descriptor for DefaultWidgetLiveViewEntry);

    v8(v16, v9, v10, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {

    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED202C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v17);
      _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Could not evaluate inner view because the viewSecurityDataSource is nil.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    *a1 = sub_1DAED087C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1DAD904D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v294 = a5;
  v296 = a3;
  v7 = type metadata accessor for WidgetViewSecurityPolicyResult(0, a2, a3, a4);
  v293 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v277 - v8;
  v301 = sub_1DAED18CC();
  v291 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v309 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v310 = &v277 - v12;
  v313 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v284 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v279 = &v277 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v278 = &v277 - v18;
  v319 = a2;
  v19 = sub_1DAED233C();
  v20 = *(v19 - 8);
  v314 = v19;
  v315 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v283 = &v277 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v300 = &v277 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v288 = &v277 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v289 = &v277 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v280 = &v277 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v308 = &v277 - v31;
  v307 = sub_1DAECF32C();
  v298 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v311 = &v277 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v306 = &v277 - v34;
  v316 = sub_1DAECF8EC();
  v320 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v305 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v295 = &v277 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v304 = &v277 - v39;
  v40 = sub_1DAECEDEC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v290 = &v277 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v282 = &v277 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v281 = &v277 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v287 = &v277 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v277 = &v277 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v302 = &v277 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v277 - v54;
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  (*(v57 + 24))(v56, v57);
  sub_1DAD648F8(a1, &v323);
  v58 = sub_1DAECEDCC();
  v59 = sub_1DAED200C();
  v60 = os_log_type_enabled(v58, v59);
  v318 = v40;
  v312 = v41;
  v297 = v7;
  v292 = v9;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v322 = v62;
    *v61 = 136446210;
    v63 = v325;
    v64 = v326;
    __swift_project_boxed_opaque_existential_1(&v323, v325);
    v65 = (*(v64 + 32))(v63, v64);
    v67 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v68 = sub_1DAD6482C(v65, v67, &v322);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_1DAD61000, v58, v59, "[%{public}s] viewEvaluate: begin", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1E127F100](v62, -1, -1);
    MEMORY[0x1E127F100](v61, -1, -1);

    v317 = *(v41 + 8);
    v317(v55, v318);
  }

  else
  {

    v317 = *(v41 + 8);
    v317(v55, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
  }

  v322 = MEMORY[0x1E69E7CC0];
  v69 = a1[3];
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v69);
  v303 = (*(v70 + 48))(v69, v70);
  v71 = a1[3];
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  LODWORD(v286) = (*(v72 + 56))(v71, v72);
  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v73);
  v75 = v304;
  (*(v74 + 40))(v73, v74);
  v76 = v306;
  sub_1DAECF46C();
  v78 = v320 + 8;
  v77 = *(v320 + 8);
  v79 = v316;
  v77(v75, v316);
  v80 = v311;
  sub_1DAECF31C();
  v81 = sub_1DAD90134(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  v82 = v307;
  v299 = v81;
  LODWORD(v285) = sub_1DAED23AC();
  v83 = *(v298 + 8);
  v83(v80, v82);
  v83(v76, v82);
  v84 = a1[3];
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v84);
  (*(v85 + 40))(v84, v85);
  v86 = sub_1DAECF4BC();
  v320 = v78;
  v311 = v77;
  v77(v75, v79);
  v87 = sub_1DAD9BBC0(v86 & 1, a1, &v322, v285 & 1, v303 & 1, v286 & 1);
  v88 = a1[3];
  v89 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v88);
  v90 = v302;
  (*(v89 + 24))(v88, v89);
  sub_1DAD648F8(a1, &v323);
  v91 = sub_1DAECEDCC();
  v92 = sub_1DAED200C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v321 = v94;
    *v93 = 136446466;
    v95 = v325;
    v96 = v326;
    __swift_project_boxed_opaque_existential_1(&v323, v325);
    v97 = (*(v96 + 32))(v95, v96);
    v99 = v98;
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v100 = sub_1DAD6482C(v97, v99, &v321);

    *(v93 + 4) = v100;
    *(v93 + 12) = 1026;
    *(v93 + 14) = v87 & 1;
    _os_log_impl(&dword_1DAD61000, v91, v92, "[%{public}s] viewEvaluate: securityAllowsLiveContent = %{BOOL,public}d", v93, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    MEMORY[0x1E127F100](v94, -1, -1);
    MEMORY[0x1E127F100](v93, -1, -1);

    v317(v90, v318);
  }

  else
  {

    v317(v90, v318);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
  }

  v101 = v314;
  v102 = v308;
  v103 = v295;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v104 = sub_1DAECE0EC();

  if (v104 & 1) != 0 || (v105 = a1[3], v106 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v105), v107 = v87, ((*(v106 + 72))(v105, v106)))
  {
    v108 = v322;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_1DAD9BF68(0, *(v108 + 2) + 1, 1, v108);
    }

    v110 = *(v108 + 2);
    v109 = *(v108 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_1DAD9BF68((v109 > 1), v110 + 1, 1, v108);
    }

    v87 = 0;
    *(v108 + 2) = v110 + 1;
    v111 = &v108[16 * v110];
    *(v111 + 4) = 0xD00000000000006CLL;
    *(v111 + 5) = 0x80000001DAEE6160;
    v322 = v108;
    v107 = 1;
  }

  v112 = v313;
  v113 = v313[7];
  v286 = (v313 + 7);
  v285 = v113;
  v113(v102, 1, 1, v319);
  LODWORD(v302) = v87;
  if ((v107 & 1) == 0 && ((v303 ^ 1) & 1) == 0)
  {
    v114 = a1[3];
    v115 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v114);
    (*(v115 + 40))(v114, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v323 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
    sub_1DAED23CC();
    sub_1DAECF47C();
    v117 = a1[3];
    v118 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v117);
    v119 = v280;
    (*(v118 + 96))(v103, v117, v118);
    (*(v315 + 40))(v102, v119, v101);
    v120 = v319;
    if ((v112[6])(v102, 1, v319) || (v121 = v278, (v112[2])(v278, v102, v120), v122 = (*(v296 + 40))(v120), (v112[1])(v121, v120), (v122 & 1) == 0))
    {
      (v311)(v103, v316);
    }

    else
    {
      v123 = a1[3];
      v124 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v123);
      v125 = v277;
      (*(v124 + 24))(v123, v124);
      sub_1DAD648F8(a1, &v323);
      v126 = sub_1DAECEDCC();
      v127 = sub_1DAED200C();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v321 = v129;
        *v128 = 136446210;
        v130 = v325;
        v131 = v326;
        __swift_project_boxed_opaque_existential_1(&v323, v325);
        v132 = (*(v131 + 32))(v130, v131);
        v134 = v133;
        __swift_destroy_boxed_opaque_existential_1Tm(&v323);
        v135 = sub_1DAD6482C(v132, v134, &v321);

        *(v128 + 4) = v135;
        _os_log_impl(&dword_1DAD61000, v126, v127, "[%{public}s] viewEvaluate: liveContentContainsPrivacyRedactions = true", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        v136 = v129;
        v103 = v295;
        MEMORY[0x1E127F100](v136, -1, -1);
        MEMORY[0x1E127F100](v128, -1, -1);

        v317(v277, v318);
      }

      else
      {

        v317(v125, v318);
        __swift_destroy_boxed_opaque_existential_1Tm(&v323);
      }

      v137 = v322;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_1DAD9BF68(0, *(v137 + 2) + 1, 1, v137);
      }

      v139 = *(v137 + 2);
      v138 = *(v137 + 3);
      if (v139 >= v138 >> 1)
      {
        v137 = sub_1DAD9BF68((v138 > 1), v139 + 1, 1, v137);
      }

      (v311)(v103, v316);
      *(v137 + 2) = v139 + 1;
      v140 = &v137[16 * v139];
      *(v140 + 4) = 0xD000000000000021;
      *(v140 + 5) = 0x80000001DAEE6130;
      v322 = v137;
      LODWORD(v302) = 1;
    }
  }

  v141 = a1[3];
  v142 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v141);
  (*(v142 + 88))(v141, v142);
  v143 = a1[3];
  v144 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v143);
  (*(v144 + 80))(v143, v144);
  if ((sub_1DAED18AC() & 1) == 0)
  {
    v323 = 0;
    v324 = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD00000000000001ELL, 0x80000001DAEE6040);
    sub_1DAD90134(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
    v145 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v145);

    MEMORY[0x1E127DA50](0xD000000000000026, 0x80000001DAEE6060);
    v146 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v146);

    v147 = v323;
    v148 = v324;
    v149 = v322;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_1DAD9BF68(0, *(v149 + 2) + 1, 1, v149);
    }

    v151 = *(v149 + 2);
    v150 = *(v149 + 3);
    if (v151 >= v150 >> 1)
    {
      v149 = sub_1DAD9BF68((v150 > 1), v151 + 1, 1, v149);
    }

    LODWORD(v302) = 0;
    *(v149 + 2) = v151 + 1;
    v152 = &v149[16 * v151];
    *(v152 + 4) = v147;
    *(v152 + 5) = v148;
    v322 = v149;
  }

  v153 = a1[3];
  v154 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v153);
  v155 = v287;
  (*(v154 + 24))(v153, v154);
  sub_1DAD648F8(a1, &v323);
  v156 = sub_1DAECEDCC();
  v157 = sub_1DAED200C();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v321 = v159;
    *v158 = 136446466;
    v160 = v325;
    v161 = v326;
    __swift_project_boxed_opaque_existential_1(&v323, v325);
    v162 = (*(v161 + 32))(v160, v161);
    v164 = v163;
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v165 = sub_1DAD6482C(v162, v164, &v321);

    *(v158 + 4) = v165;
    *(v158 + 12) = 1026;
    v166 = v302;
    *(v158 + 14) = v302 & 1;
    _os_log_impl(&dword_1DAD61000, v156, v157, "[%{public}s] viewEvaluate: allowedToFetchLiveContent = %{BOOL,public}d", v158, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v159);
    MEMORY[0x1E127F100](v159, -1, -1);
    MEMORY[0x1E127F100](v158, -1, -1);

    v317(v155, v318);
    v167 = v289;
  }

  else
  {

    v317(v155, v318);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v167 = v289;
    v166 = v302;
  }

  v168 = a1[3];
  v169 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v168);
  (*(v169 + 40))(v168, v169);
  v323 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  sub_1DAECF47C();
  v170 = v288;
  if (v166)
  {
    v172 = v314;
    v171 = v315;
    (*(v315 + 16))(v288, v308, v314);
    v173 = v313;
    v174 = v313[6];
    v175 = v319;
    if (v174(v170, 1, v319) == 1)
    {
      v176 = a1[3];
      v177 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v176);
      v178 = *(v177 + 96);
      v179 = v177;
      v175 = v319;
      v178(v305, v176, v179);
      v171 = v315;
      v180 = v174(v170, 1, v175);
      v181 = v292;
      if (v180 != 1)
      {
        (*(v171 + 8))(v170, v172);
      }
    }

    else
    {
      (v173[4])(v167, v170, v175);
      v285(v167, 0, 1, v175);
      v181 = v292;
    }

    if (v174(v167, 1, v175) != 1)
    {
      v248 = v313[4];
      v249 = v279;
      v248(v279, v167, v175);
      v248(v181, v249, v175);
LABEL_62:
      v256 = v290;
      v234 = v297;
      goto LABEL_65;
    }

    (*(v171 + 8))(v167, v172);
    v182 = v322;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_1DAD9BF68(0, *(v182 + 2) + 1, 1, v182);
    }

    v184 = *(v182 + 2);
    v188 = *(v182 + 3);
    v185 = v184 + 1;
    v186 = "placeholder to show";
    v187 = 0xD00000000000003DLL;
    if (v184 >= v188 >> 1)
    {
      v182 = sub_1DAD9BF68((v188 > 1), v184 + 1, 1, v182);
    }
  }

  else
  {
    v182 = v322;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = sub_1DAD9BF68(0, *(v182 + 2) + 1, 1, v182);
    }

    v181 = v292;
    v184 = *(v182 + 2);
    v183 = *(v182 + 3);
    v185 = v184 + 1;
    v186 = " available protection ";
    if (v184 >= v183 >> 1)
    {
      v182 = sub_1DAD9BF68((v183 > 1), v184 + 1, 1, v182);
    }

    v187 = 0xD000000000000024;
  }

  *(v182 + 2) = v185;
  v189 = &v182[16 * v184];
  *(v189 + 4) = v187;
  *(v189 + 5) = v186 | 0x8000000000000000;
  v322 = v182;
  v190 = a1[3];
  v191 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v190);
  v192 = a1[3];
  v193 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v192);
  v194 = v304;
  (*(v193 + 40))(v192, v193);
  v195 = v300;
  (*(v191 + 104))(v194, v190, v191);
  (v311)(v194, v316);
  v172 = v314;
  v196 = v315;
  v197 = v283;
  (*(v315 + 16))(v283, v195, v314);
  v198 = v313;
  v199 = v319;
  if ((v313[6])(v197, 1, v319) == 1)
  {
    v200 = *(v196 + 8);
    v319 = v196 + 8;
    v313 = v200;
    (v200)(v197, v172);
    v202 = *(v182 + 2);
    v201 = *(v182 + 3);
    if (v202 >= v201 >> 1)
    {
      v182 = sub_1DAD9BF68((v201 > 1), v202 + 1, 1, v182);
    }

    *(v182 + 2) = v202 + 1;
    v203 = &v182[16 * v202];
    *(v203 + 4) = 0xD000000000000023;
    *(v203 + 5) = 0x80000001DAEE60C0;
    v322 = v182;
    v323 = v182;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
    sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
    v204 = sub_1DAED1C8C();
    v206 = v205;

    v207 = a1[3];
    v208 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v207);
    v209 = v282;
    (*(v208 + 24))(v207, v208);
    sub_1DAD648F8(a1, &v323);

    v210 = sub_1DAECEDCC();
    v211 = sub_1DAED201C();

    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v307 = v204;
      v214 = v213;
      v321 = v213;
      *v212 = 136446466;
      v215 = v181;
      v216 = v325;
      v217 = v326;
      __swift_project_boxed_opaque_existential_1(&v323, v325);
      v218 = *(v217 + 32);
      v219 = v217;
      v181 = v215;
      v220 = v218(v216, v219);
      v222 = v221;
      __swift_destroy_boxed_opaque_existential_1Tm(&v323);
      v223 = sub_1DAD6482C(v220, v222, &v321);
      v172 = v314;

      *(v212 + 4) = v223;
      *(v212 + 12) = 2082;
      v224 = sub_1DAD6482C(v307, v206, &v321);

      *(v212 + 14) = v224;
      _os_log_impl(&dword_1DAD61000, v210, v211, "[%{public}s] Security policy determined view will be empty: %{public}s.", v212, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v214, -1, -1);
      MEMORY[0x1E127F100](v212, -1, -1);

      v317(v282, v318);
    }

    else
    {

      v317(v209, v318);
      __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    }

    v250 = a1[3];
    v251 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v250);
    v252 = a1[3];
    v253 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v252);
    v254 = v304;
    (*(v253 + 40))(v252, v253);
    v255 = (*(v251 + 112))(v254, v250, v251);
    (v311)(v254, v316);
    (v313)(v300, v172);
    *v181 = v255;
    goto LABEL_62;
  }

  v225 = v198[4];
  v313 = v198 + 4;
  v225(v284, v197, v199);
  v323 = v182;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
  v307 = sub_1DAED1C8C();
  v227 = v226;

  v228 = a1[3];
  v229 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v228);
  v230 = v281;
  (*(v229 + 24))(v228, v229);
  sub_1DAD648F8(a1, &v323);

  v231 = sub_1DAECEDCC();
  v232 = sub_1DAED203C();

  v233 = os_log_type_enabled(v231, v232);
  v234 = v297;
  if (v233)
  {
    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v321 = v236;
    *v235 = 136446466;
    v306 = v225;
    v237 = v181;
    v238 = v325;
    v239 = v326;
    __swift_project_boxed_opaque_existential_1(&v323, v325);
    v240 = *(v239 + 32);
    v241 = v239;
    v181 = v237;
    v242 = v240(v238, v241);
    v244 = v243;
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v245 = sub_1DAD6482C(v242, v244, &v321);
    v225 = v306;

    *(v235 + 4) = v245;
    *(v235 + 12) = 2082;
    v246 = sub_1DAD6482C(v307, v227, &v321);

    *(v235 + 14) = v246;
    _os_log_impl(&dword_1DAD61000, v231, v232, "[%{public}s] Security policy yielding placeholder content: %{public}s.", v235, 0x16u);
    swift_arrayDestroy();
    v247 = v236;
    v234 = v297;
    MEMORY[0x1E127F100](v247, -1, -1);
    MEMORY[0x1E127F100](v235, -1, -1);

    v317(v281, v318);
    v172 = v314;
    (*(v315 + 8))(v300, v314);
  }

  else
  {

    v317(v230, v318);
    v172 = v314;
    (*(v315 + 8))(v300, v314);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
  }

  v256 = v290;
  v225(v181, v284, v319);
LABEL_65:
  swift_storeEnumTagMultiPayload();
  v257 = a1[3];
  v258 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v257);
  (*(v258 + 24))(v257, v258);
  sub_1DAD648F8(a1, &v323);
  v259 = sub_1DAECEDCC();
  v260 = sub_1DAED200C();
  if (os_log_type_enabled(v259, v260))
  {
    v261 = swift_slowAlloc();
    v262 = v256;
    v263 = swift_slowAlloc();
    v321 = v263;
    *v261 = 136446210;
    v264 = v325;
    v265 = v326;
    __swift_project_boxed_opaque_existential_1(&v323, v325);
    v266 = *(v265 + 32);
    v267 = v265;
    v172 = v314;
    v268 = v266(v264, v267);
    v270 = v269;
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
    v271 = sub_1DAD6482C(v268, v270, &v321);

    *(v261 + 4) = v271;
    _os_log_impl(&dword_1DAD61000, v259, v260, "[%{public}s] viewEvaluate: end", v261, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v263);
    MEMORY[0x1E127F100](v263, -1, -1);
    MEMORY[0x1E127F100](v261, -1, -1);

    v317(v262, v318);
    (v311)(v305, v316);
    v272 = *(v291 + 8);
    v273 = v301;
    v272(v309, v301);
    v272(v310, v273);
  }

  else
  {

    v317(v256, v318);
    (v311)(v305, v316);
    v274 = *(v291 + 8);
    v275 = v301;
    v274(v309, v301);
    v274(v310, v275);
    __swift_destroy_boxed_opaque_existential_1Tm(&v323);
  }

  (*(v293 + 32))(v294, v181, v234);
  return (*(v315 + 8))(v308, v172);
}

void sub_1DAD92868()
{
  BSDispatchQueueAssert();
  v1 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue_connection])
  {
    return;
  }

  v2 = "com.apple.chrono.widgetRenderer";
  v3 = sub_1DAED1CBC();
  v4 = sub_1DAED1CBC();
  v16 = [objc_opt_self() endpointForMachName:v3 service:v4 instance:0];

  if (!v16)
  {
    goto LABEL_7;
  }

  v5 = [objc_opt_self() connectionWithEndpoint_];
  if (v5)
  {
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1DAD93F60;
    *(v2 + 24) = v8;
    aBlock[4] = sub_1DAD93F90;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD93F0C;
    aBlock[3] = &block_descriptor_133_0;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v7 configureConnection_];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE0117F0);
    v16 = sub_1DAECEDCC();
    v13 = sub_1DAED202C();
    if (os_log_type_enabled(v16, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1DAD6482C(0xD000000000000018, v2 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_1DAD61000, v16, v13, "Unable to get endpoint for mach-service: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);

      return;
    }
  }
}

uint64_t sub_1DAD92C3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECDFCC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAD92D24(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1DAECEDFC();
}

uint64_t sub_1DAD92DB0()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B38 = result;
  return result;
}

uint64_t sub_1DAD92E18()
{
  v0 = type metadata accessor for RBLayer.SnapshotFormat(0);
  __swift_allocate_value_buffer(v0, qword_1EE00A948);
  v1 = __swift_project_value_buffer(v0, qword_1EE00A948);
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  return sub_1DAD932D0(v3, v1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t sub_1DAD92EE0()
{
  v0 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EE00B178);
  v1 = __swift_project_value_buffer(v0, qword_1EE00B178);
  return sub_1DAD92F2C(v1);
}

uint64_t sub_1DAD92F2C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1DAECDF7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-1] - v6;
  v8 = sub_1DAECDFCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAECDF9C();
  v12 = *(v9 + 104);
  v12(v11, *MEMORY[0x1E6993F60], v8);
  if ((sub_1DAECDFAC() & 1) == 0)
  {
    (*(v9 + 8))(v11, v8);
    *v11 = 0x3FE999999999999ALL;
    v12(v11, *MEMORY[0x1E6993F68], v8);
  }

  sub_1DAECE37C();
  sub_1DAECE36C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_1DAECE28C();
  (*(v2 + 104))(v4, *MEMORY[0x1E6993F58], v1);
  v13 = sub_1DAECDF6C();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (v13)
  {
    v15 = 0x40000000;
  }

  else
  {
    v15 = 1065353216;
  }

  v16 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v17 = v19;
  result = (*(v9 + 32))(v19 + *(v16 + 24), v11, v8);
  *v17 = 0;
  *(v17 + 4) = 1;
  *(v17 + 8) = v15;
  *(v17 + 12) = 0;
  return result;
}

uint64_t sub_1DAD93200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD932D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD933A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAD93484(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1DAD93568()
{
  v1 = v0;
  v2 = type metadata accessor for CAMLSnapshotter(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CALayer.SnapshotFormat(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD932D0(v1, v11, type metadata accessor for CALayer.SnapshotFormat);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C08, &qword_1DAEDBB98);
    v13 = swift_allocObject();
    v13[2] = 0xD00000000000001FLL;
    v13[3] = 0x80000001DAEE3D10;
  }

  else
  {
    sub_1DAD933A0(v11, v8, type metadata accessor for CAMLSnapshotter.CAMLOptions);
    sub_1DAD933A0(v8, v4 + *(v2 + 20), type metadata accessor for CAMLSnapshotter.CAMLOptions);
    *v4 = 0xD00000000000001BLL;
    v4[1] = 0x80000001DAEE3D30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C10, qword_1DAEDBBA0);
    v13 = swift_allocObject();
    sub_1DAD933A0(v4, v13 + *(*v13 + 128), type metadata accessor for CAMLSnapshotter);
  }

  *(v12 + 16) = v13;
  return v12;
}

uint64_t sub_1DAD9384C(uint64_t a1)
{
  result = type metadata accessor for CAMLSnapshotter.CAMLOptions(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAD938DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECDFCC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1DAD939AC()
{
  v0 = objc_opt_self();
  v1 = sub_1DAED1CBC();
  v2 = [v0 createWorkLoopWithLabel:v1 qos:9];

  qword_1EE011BC8 = v2;
}

uint64_t sub_1DAD93A48(uint64_t a1)
{
  result = sub_1DAECEDEC();
  if (v2 <= 0x3F)
  {
    result = sub_1DAECED6C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DAD93B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAD93BA8()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1DAD93D34;
  *(v4 + 24) = v3;
  v7[4] = sub_1DAD93D0C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1DAD93EDC;
  v7[3] = &block_descriptor_20;
  v5 = _Block_copy(v7);
  v6 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1DAD93D58(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_1DAED24CC();
  }

  else if (*(a2 + 16) && (a3(0), v6 = sub_1DAED227C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_1DAED228C();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAD93F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1DAD93FB8(void *a1, char *a2)
{
  v4 = sub_1DAED1CBC();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EE00B5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE00B600;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EE00B5E0 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EE00B5C8 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1DAD69B50;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_136;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_1DAEBB02C;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_142;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_1DAEB6260;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_145_0;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

id sub_1DAD94364()
{
  result = [objc_opt_self() userInteractive];
  qword_1EE00B5D0 = result;
  return result;
}

uint64_t sub_1DAD943B8()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117F0);
  __swift_project_value_buffer(v0, qword_1EE0117F0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DAD94438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAD94560()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08858, &qword_1DAED7288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = sub_1DAED18CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1E127E800]("application(_:didFinishLaunchingWithOptions:)", v11))
  {
    v24 = v6;
    v25 = v5;
    if (qword_1EE00B438 != -1)
    {
      swift_once();
    }

    sub_1DAD648F8(qword_1EE011BD8 + 104, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08860, &unk_1DAED7290);
    type metadata accessor for DataProtectionSuspensionMonitor();
    swift_dynamicCast();
    v14 = v26;
    sub_1DAECEE9C();
    v15 = OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_lastDataProtectionValue;
    swift_beginAccess();
    (*(v10 + 40))(&v1[v15], v13, v9);
    swift_endAccess();
    v27[0] = sub_1DAD8BA88();
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v16 = sub_1DAED20EC();
    v26 = v16;
    v17 = sub_1DAED20AC();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
    sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488, MEMORY[0x1E695BED8]);
    sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
    sub_1DAECEFBC();
    sub_1DAD64398(v4, &unk_1ECC07D20, &unk_1DAED57D0);

    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v14;
    sub_1DAD64B94(&qword_1EE00AC38, &qword_1ECC08858, &qword_1DAED7288, MEMORY[0x1E695BE98]);
    v19 = v1;
    v20 = v14;
    v21 = v25;
    v22 = sub_1DAECF00C();

    (*(v24 + 8))(v8, v21);
    *&v19[OBJC_IVAR____TtC14WidgetRenderer11AppDelegate_dataProtectionMonitorSubscription] = v22;
  }

  return 1;
}

uint64_t sub_1DAD949E4()
{

  return swift_deallocObject();
}

void sub_1DAD94A54(uint64_t a1)
{
  sub_1DAD674D4(319, &unk_1EE005648, 0x1E69943E0);
  if (v1 <= 0x3F)
  {
    sub_1DAD674D4(319, &qword_1EE0054D8, 0x1E6994350);
    if (v2 <= 0x3F)
    {
      sub_1DAD8D644();
      if (v3 <= 0x3F)
      {
        sub_1DAED18CC();
        if (v4 <= 0x3F)
        {
          sub_1DAECED2C();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DAD94B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECF8EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DAD94C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DAD94CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1DAD94D08()
{
  v1 = v0;
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v24);
  v9 = v25;
  v10 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = sub_1DAED0B8C();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (v12)
  {
    sub_1DAD648F8(v1 + v8, v24);
    v13 = v25;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v15 = (*(v14 + 16))(v13, v14);
    sub_1DAED0C3C();

    v16 = sub_1DAED0DBC();
    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v17 = [v16 family];

    LODWORD(v16) = [v12 isTransparentForFamily_];
    if (v16)
    {
      if (v7)
      {
        return result;
      }

      v19 = *(v1 + v6);
      *(v1 + v6) = 1;
      if (v19)
      {
        return result;
      }

LABEL_8:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
      sub_1DAECEEEC();

      return result;
    }
  }

  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v21 = [*(v1 + v20) backgroundViewPolicy];
  if (v7 != (v21 != 0))
  {
    v22 = v21 != 0;
    v23 = *(v1 + v6);
    *(v1 + v6) = v22;
    if (v22 != v23)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAD94FD8()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1DAECF0AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  BSDispatchQueueAssertMain();
  v15 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v15, v7, &qword_1ECC08370, &unk_1DAED6580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DAD64398(v7, &qword_1ECC08370, &unk_1DAED6580);
    v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v16, v1);
    v17 = v0;
    sub_1DAECF39C();
    (*(v2 + 8))(v4, v1);
    v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v9 + 40))(v17 + v18, v11, v8);
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v14, v7, v8);
    v19(v11, v14, v8);
    v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v9 + 40))(v0 + v20, v11, v8);
  }

  return swift_endAccess();
}

void sub_1DAD95310(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1DAECF8EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v15 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  if (*(v2 + v15) != v3)
  {
    v29 = v7;

    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED200C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v27 = v5;
      v21 = v20;
      v31[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v31);
      *(v19 + 12) = 1026;
      *(v19 + 14) = *(v2 + v15);

      _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] canAppearInSecureEnvironment changed %{BOOL,public}d)", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v22 = v21;
      v5 = v27;
      MEMORY[0x1E127F100](v22, -1, -1);
      v23 = v19;
      v4 = v28;
      MEMORY[0x1E127F100](v23, -1, -1);
    }

    else
    {
    }

    v24 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v12 + 16))(v14, v2 + v24, v11);
    sub_1DAECF46C();
    (*(v12 + 8))(v14, v11);
    v25 = v29;
    sub_1DAECF31C();
    sub_1DAD900EC(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
    LOBYTE(v24) = sub_1DAED23AC();
    v26 = *(v5 + 8);
    v26(v25, v4);
    v26(v10, v4);
    if (v24)
    {
      v30 = 8;
      sub_1DAD8EC1C(&v30);
    }
  }
}

void sub_1DAD956A0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  if (*(v2 + v8) != v3)
  {

    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED200C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v17);
      *(v11 + 12) = 1026;
      *(v11 + 14) = *(v2 + v8);

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] supports low luminance changed (%{BOOL,public}d)", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v13, v4);
    LOBYTE(v13) = sub_1DAECF4BC();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      if (*(v2 + v8))
      {
        v14 = 16;
      }

      else
      {
        v14 = 17;
      }

      v16 = v14;
      sub_1DAD8EC1C(&v16);
    }
  }
}

void sub_1DAD95924(uint64_t a1, uint64_t *a2, const char *a3, char a4)
{
  v8 = a1 & 1;
  BSDispatchQueueAssertMain();
  v9 = *a2;
  swift_beginAccess();
  if (*(v4 + v9) != v8)
  {

    v10 = v4;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED200C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1DAD6482C(*(v10 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v10 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v15);
      *(v13 + 12) = 1026;
      *(v13 + 14) = *(v10 + v9);

      _os_log_impl(&dword_1DAD61000, v11, v12, a3, v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    else
    {
    }

    LOBYTE(v15) = a4;
    sub_1DAD8EC1C(&v15);
  }
}

void sub_1DAD95AA0(uint64_t a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11[0] = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v11);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] prefersUnredactedContentInLowLuminanceEnvironment changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    if (*(v2 + v9) == 1)
    {
      v10 = 18;
      sub_1DAD8EC1C(&v10);
    }
  }
}

void sub_1DAD95C3C(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED203C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v21);
    *(v11 + 12) = 2082;
    v13 = *(v2 + v4);
    if (v13)
    {
      v14 = [v13 description];
      v15 = sub_1DAED1CEC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1DAD6482C(v15, v17, &v21);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] tintParameters changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  if (sub_1DAD998A4())
  {
    v19 = *(v2 + v4);
    if (v19)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v21 = v19;
      v20 = v19;
      sub_1DAECEF4C();
    }

    else
    {
    }
  }

  if ((a1 == 0) != (*(v2 + v4) == 0))
  {
    LOBYTE(v21) = 11;
    sub_1DAD8EC1C(&v21);
  }
}

void sub_1DAD95EE8(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &unk_1EE005578, 0x1E69942B8);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED200C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v19);
    *(v11 + 12) = 2082;
    v13 = *(v2 + v4);
    if (v13)
    {
      v14 = [v13 description];
      v15 = sub_1DAED1CEC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1DAD6482C(v15, v17, &v19);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] inlineTextParameters changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  LOBYTE(v19) = 12;
  sub_1DAD8EC1C(&v19);
}

uint64_t sub_1DAD96130(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v288 = a5;
  v289 = a4;
  v290 = a3;
  v295 = a1;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF8, &qword_1DAED57A8);
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v242 - v8;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D00, &unk_1DAED57B0);
  v273 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v272 = &v242 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v286 = &v242 - v11;
  v287 = sub_1DAED22EC();
  v294 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v285 = &v242 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v263 = &v242 - v13;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v267 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v266 = &v242 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v279 = &v242 - v16;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v293 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v280 = &v242 - v17;
  v277 = sub_1DAECDCEC();
  v276 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v245 = &v242 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v275);
  v255 = (&v242 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v258 = &v242 - v21;
  v257 = sub_1DAED0DDC();
  v291 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v242 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1DAECF8EC();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v282 = &v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v260 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  v254 = &v242 - v24;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D48, &qword_1DAEDE1F0);
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v250 = &v242 - v25;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D50, &unk_1DAED5800);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v247 = &v242 - v26;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D58, &qword_1DAEDE100);
  v27 = *(v246 - 1);
  MEMORY[0x1EEE9AC00](v246);
  v29 = &v242 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v292 = *(v30 - 8);
  v31 = v292;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v242 - v32;
  v304[3] = type metadata accessor for PlaceholderWidgetEntrySource();
  v304[4] = &off_1F56B6798;
  v262 = a2;
  v304[0] = a2;
  v34 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__allowsInternalTapTargets;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35 = *(v31 + 32);
  v259 = v34;
  v35(a6 + v34, v33, v30);
  v36 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isInteractionDisabled;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35(a6 + v36, v33, v30);
  v37 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  v253 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__clipToShape;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35(a6 + v37, v33, v30);
  v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__baseContentTouchedDown;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35(a6 + v38, v33, v30);
  v39 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isFocal;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35(a6 + v39, v33, v30);
  v40 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__launchRequestHandler;
  v301 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D68, &unk_1DAEDE610);
  sub_1DAECEEFC();
  (*(v27 + 32))(a6 + v40, v29, v246);
  v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__interactionHandler;
  v301 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D70, &unk_1DAED5820);
  v42 = v247;
  sub_1DAECEEFC();
  (*(v248 + 32))(a6 + v41, v42, v249);
  v43 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__isPendingInteractionUpdate;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v278 = v30;
  v35(a6 + v43, v33, v30);
  v44 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__backgroundViewBuilder;
  v301 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D78, &unk_1DAEDE620);
  v45 = v250;
  sub_1DAECEEFC();
  (*(v251 + 32))(a6 + v44, v45, v252);
  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__renderingScale;
  *&v301 = 0;
  BYTE8(v301) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D80, &unk_1DAED5830);
  v47 = v254;
  sub_1DAECEEFC();
  (*(v260 + 32))(a6 + v46, v47, v261);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber) = 0;
  v48 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__animationsPaused;
  LOBYTE(v301) = 0;
  sub_1DAECEEFC();
  v35(a6 + v48, v33, v30);
  v49 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__contentTransparencyDidChangePublisher;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  *(a6 + v49) = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_contentFromXcodePreviews) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent) = 2;
  v50 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  v51 = *MEMORY[0x1E697DBB8];
  v52 = sub_1DAECF0AC();
  v53 = *(v52 - 8);
  (*(v53 + 104))(a6 + v50, v51, v52);
  (*(v53 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme, 1, 1, v52);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused) = 1;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment) = 0;
  v54 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  v55 = *MEMORY[0x1E6994040];
  v56 = sub_1DAECE21C();
  (*(*(v56 - 8) + 104))(a6 + v54, v55, v56);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay) = 0;
  v251 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers) = 1;
  (*(v276 + 56))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate, 1, 1, v277);
  v57 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v250 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  v248 = sub_1DAECDA5C();
  v58 = *(v248 - 8);
  v247 = *(v58 + 56);
  v249 = v58 + 56;
  (v247)(a6 + v57, 1, 1, v248);
  v59 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel) = 0;
  v252 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = 0;
  v60 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  v61 = sub_1DAED16FC();
  (*(*(v61 - 8) + 56))(a6 + v60, 1, 1, v61);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsIndependentLayerSeparation) = 0;
  v62 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_currentActionURL;
  v63 = sub_1DAECDBFC();
  (*(*(v63 - 8) + 56))(a6 + v62, 1, 1, v63);
  v244 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest) = 1;
  v64 = a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  *(v64 + 32) = 0;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasEverBeenNonEmpty) = 0;
  v65 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__invalidated) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__hasLoadedViewOnce) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__needsViewRebuild) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__inBatch) = 0;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__batchedChangeReasons) = MEMORY[0x1E69E7CC0];
  *(a6 + v65) = 1;
  v66 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  v67 = v295;
  sub_1DAD648F8(v295, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource);
  sub_1DAD648F8(v304, &v301);
  swift_beginAccess();
  sub_1DAD94438(&v301, v64, &unk_1ECC07D90, &unk_1DAED5840);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v69 = sub_1DAECEDEC();
  v260 = *(v69 - 8);
  v70 = *(v260 + 16);
  v261 = v69;
  v70(a6 + v68, v290);
  sub_1DAD648F8(v289, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider);
  sub_1DAD648F8(v288, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor);
  type metadata accessor for LiveWidgetEntryViewableEntryCache(0);
  swift_allocObject();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewableEntryCache) = sub_1DAD99324();
  v71 = v67;
  v72 = v67[3];
  v73 = v71[4];
  v74 = v71;
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v75 = (*(v73 + 16))(v72, v73);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v76 = v282;
  sub_1DAED10EC();
  (*(v283 + 32))(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues, v76, v284);
  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  v77 = v74[3];
  v78 = v74[4];
  __swift_project_boxed_opaque_existential_1(v74, v77);
  v79 = (*(v78 + 16))(v77, v78);
  v80 = v256;
  sub_1DAED0C3C();

  v81 = sub_1DAED0DBC();
  v82 = *(v291 + 8);
  v291 += 8;
  v83 = v257;
  v82(v80, v257);
  v84 = [v81 _loggingIdentifierWithoutMetrics];

  v85 = sub_1DAED1CEC();
  v87 = v86;

  v88 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
  *v88 = v85;
  v88[1] = v87;
  v89 = v253;
  swift_beginAccess();
  v90 = *(v292 + 8);
  v292 += 8;
  v246 = v90;
  v90(a6 + v89, v278);
  v300[0] = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  v91 = v251;
  swift_beginAccess();
  *(a6 + v91) = 0;
  swift_beginAccess();
  v92 = *(a6 + v59);
  *(a6 + v59) = 0;

  v93 = v258;
  (v247)(v258, 1, 1, v248);
  v94 = v250;
  swift_beginAccess();
  sub_1DAD94438(v93, a6 + v94, &qword_1ECC08360, &unk_1DAED6570);
  swift_endAccess();
  v95 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v96 = swift_allocObject();
  v97 = (a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityPolicy);
  v97[3] = v95;
  v97[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v97 = v96;
  v98 = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme) = v98;
  swift_beginAccess();
  v99 = sub_1DAECF79C();
  swift_endAccess();
  v100 = v252;
  swift_beginAccess();
  v101 = *(a6 + v100);
  *(a6 + v100) = v99;

  v102 = v66[3];
  v103 = v66[4];
  v104 = __swift_project_boxed_opaque_existential_1(v66, v102);
  v105 = *(v102 - 8);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v108 = &v242 - v107;
  (*(v105 + 16))(&v242 - v107, v106);
  v109 = (*(v103 + 16))(v102, v103);
  (*(v105 + 8))(v108, v102);
  sub_1DAED0C3C();

  v110 = sub_1DAED0DBC();
  v82(v80, v83);
  v111 = [v110 family];

  v112 = v66[3];
  v113 = v66[4];
  v114 = __swift_project_boxed_opaque_existential_1(v66, v112);
  v115 = *(v112 - 8);
  v116 = MEMORY[0x1EEE9AC00](v114);
  v118 = &v242 - v117;
  (*(v115 + 16))(&v242 - v117, v116);
  v119 = (*(v113 + 16))(v112, v113);
  (*(v115 + 8))(v118, v112);
  v120 = sub_1DAED0B8C();

  [v120 enablesMultipleTapTargets];
  v302 = &type metadata for FeatureFlags.Widgets;
  v303 = sub_1DAD7C1DC();
  LOBYTE(v301) = 4;
  LOBYTE(v120) = sub_1DAECDF5C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  if (v120)
  {
    v121 = v259;
    swift_beginAccess();
    v246(a6 + v121, v278);
    LOBYTE(v299) = 1;
  }

  else
  {
    v122 = (v111 != 1) & ~CHSWidgetFamilyIsAccessory();
    v123 = v259;
    swift_beginAccess();
    v246(a6 + v123, v278);
    LOBYTE(v299) = v122;
  }

  sub_1DAECEEFC();
  swift_endAccess();
  v124 = v66[3];
  v125 = v66[4];
  v126 = __swift_project_boxed_opaque_existential_1(v66, v124);
  v127 = *(v124 - 8);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v130 = &v242 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v127 + 16))(v130, v128);
  v131 = (*(v125 + 16))(v124, v125);
  (*(v127 + 8))(v130, v124);
  v132 = sub_1DAED0B8C();

  if (v132)
  {
    v133 = [v132 supportsInteraction];

    if ((v133 & 1) == 0)
    {
      *(a6 + v244) = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DA0, &unk_1DAEDE7D0);
  swift_allocObject();
  v134 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryWillChangePublisher) = v134;
  *&v301 = v134;
  v135 = MEMORY[0x1E695BF88];
  sub_1DAD64B94(&qword_1EE005C08, &unk_1ECC07DA0, &unk_1DAEDE7D0, MEMORY[0x1E695BF88]);
  v259 = v134;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryWillChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v136 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewEntryDidChangePublisher) = v136;
  *&v301 = v136;
  v258 = v136;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v137 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__overrideDateDidChangePublisher) = v137;
  *&v301 = v137;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, v135);
  v257 = v137;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  swift_allocObject();
  v138 = sub_1DAECEE7C();
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__idealizedDateComponentsDidChangePublisher) = v138;
  *&v301 = v138;
  v256 = v138;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponentsDidChangePublisher) = sub_1DAECEF6C();
  *&v301 = sub_1DAED064C();
  v139 = sub_1DAED087C();
  v140 = v255;
  *v255 = v139;
  swift_storeEnumTagMultiPayload();
  sub_1DAD7C48C(v140, a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, &unk_1ECC07D30, &unk_1DAED57E0);
  type metadata accessor for _LiveWidgetEntryViewModelSecurityDataSource();
  v141 = swift_allocObject();
  *(v141 + 16) = a6;
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__viewSecurityDataSource) = v141;

  sub_1DAD94D08();
  sub_1DAEA1F7C(v142);
  sub_1DAD94FD8();

  v143 = sub_1DAECEDCC();
  v144 = sub_1DAED200C();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v299 = v146;
    *v145 = 136446466;
    v147 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v148 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8);

    v149 = sub_1DAD6482C(v147, v148, &v299);

    *(v145 + 4) = v149;
    *(v145 + 12) = 2082;
    v150 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 24);
    v151 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource + 32);
    v152 = __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource), v150);
    v153 = *(v150 - 8);
    v154 = MEMORY[0x1EEE9AC00](v152);
    v156 = &v242 - v155;
    (*(v153 + 16))(&v242 - v155, v154);
    v157 = (*(v151 + 16))(v150, v151);
    (*(v153 + 8))(v156, v150);
    sub_1DAED0B4C();

    if (v302)
    {
      __swift_project_boxed_opaque_existential_1(&v301, v302);
      v158 = v245;
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v159 = qword_1EE00A708;
      v160 = sub_1DAECDC5C();
      v161 = [v159 stringFromDate_];

      v162 = sub_1DAED1CEC();
      v164 = v163;

      (*(v276 + 8))(v158, v277);
      __swift_destroy_boxed_opaque_existential_1Tm(&v301);
    }

    else
    {
      sub_1DAD64398(&v301, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v164 = 0xE900000000000064;
      v162 = 0x6E756F6620746F6ELL;
    }

    v165 = sub_1DAD6482C(v162, v164, &v299);

    *(v145 + 14) = v165;
    _os_log_impl(&dword_1DAD61000, v143, v144, "[%{public}s] initial entry: %{public}s", v145, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v146, -1, -1);
    MEMORY[0x1E127F100](v145, -1, -1);
  }

  sub_1DAD648F8(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v301);
  v166 = v302;
  v167 = v303;
  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v168 = (*(v167 + 16))(v166, v167);
  v169 = sub_1DAED0C0C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  *&v301 = v169;
  v249 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v170 = sub_1DAED20EC();
  v299 = v170;
  v292 = sub_1DAED20AC();
  v171 = *(v292 - 8);
  v291 = *(v171 + 56);
  v278 = v171 + 56;
  v172 = v279;
  (v291)(v279, 1, 1, v292);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v276 = MEMORY[0x1E695BED8];
  v253 = sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  v277 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v173 = v280;
  sub_1DAECEFBC();
  sub_1DAD64398(v172, &unk_1ECC07D20, &unk_1DAED57D0);

  v174 = swift_allocObject();
  swift_weakInit();
  v175 = swift_allocObject();
  *(v175 + 16) = sub_1DADC4FF8;
  *(v175 + 24) = v174;
  v250 = MEMORY[0x1E695BE98];
  v252 = sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);

  v176 = v281;
  v177 = sub_1DAECF00C();

  v178 = *(v293 + 8);
  v293 += 8;
  v251 = v178;
  v178(v173, v176);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__descriptorDidChangeSubscription) = v177;

  v179 = swift_allocObject();
  v180 = v295;
  v181 = v295[3];
  v182 = v295[4];
  __swift_project_boxed_opaque_existential_1(v295, v181);
  v183 = (*(v182 + 8))(v181, v182);
  swift_beginAccess();
  LOBYTE(v181) = *(v183 + 24);

  *(v179 + 16) = v181;
  v184 = v180[3];
  v185 = v180[4];
  __swift_project_boxed_opaque_existential_1(v180, v184);
  v186 = (*(v185 + 16))(v184, v185);
  v187 = sub_1DAED0BDC();

  v298 = v187;
  v188 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v180, &v301);
  v189 = swift_allocObject();
  *(v189 + 16) = v188;
  *(v189 + 24) = v179;
  v255 = v179;
  sub_1DAD657D8(&v301, v189 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DC0, &unk_1DAEDE7E0);
  sub_1DAD64B94(&qword_1EE005CB8, &unk_1ECC07DC0, &unk_1DAEDE7E0, v276);
  sub_1DAECF00C();

  v190 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__cancellable;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v191 = *(*__swift_project_boxed_opaque_existential_1(v262 + 2, v262[5]) + 16);
  swift_beginAccess();
  v192 = *(v191 + 16);
  v193 = sub_1DAED0BDC();

  v296 = v193;
  v194 = swift_allocObject();
  swift_weakInit();
  sub_1DAD648F8(v304, &v301);
  v195 = swift_allocObject();
  *(v195 + 16) = v194;
  sub_1DAD657D8(&v301, v195 + 24);
  sub_1DAECF00C();

  v275 = v190;
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v242 = sub_1DAECE2AC();
  *&v301 = v242;
  v196 = v285;
  sub_1DAED22DC();
  v262 = objc_opt_self();
  v197 = [v262 mainRunLoop];
  v296 = v197;
  v247 = sub_1DAED22CC();
  v198 = *(v247 - 1);
  v246 = *(v198 + 56);
  v248 = v198 + 56;
  v199 = v286;
  (v246)(v286, 1, 1, v247);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  v245 = sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860, v276);
  v244 = sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v200 = v263;
  sub_1DAECEFCC();
  sub_1DAD64398(v199, &qword_1ECC07D08, &qword_1DAEDCB80);

  v201 = *(v294 + 8);
  v294 += 8;
  v243 = v201;
  v201(v196, v287);

  v202 = sub_1DAED20EC();
  *&v301 = v202;
  v203 = v279;
  (v291)(v279, 1, 1, v292);
  v276 = MEMORY[0x1E695BE50];
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0, MEMORY[0x1E695BE50]);
  v204 = v266;
  v205 = v265;
  sub_1DAECEFBC();
  sub_1DAD64398(v203, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v264 + 8))(v200, v205);
  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8, v250);
  v206 = v268;
  sub_1DAECF00C();

  (*(v267 + 8))(v204, v206);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v267 = swift_allocObject();
  swift_weakInit();

  v207 = swift_allocObject();
  *(v207 + 16) = 0;
  v208 = v295[3];
  v209 = v295[4];
  v210 = v295;
  __swift_project_boxed_opaque_existential_1(v295, v208);
  v211 = (*(v209 + 16))(v208, v209);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v296 = sub_1DAED10FC();
  v212 = sub_1DAED20EC();
  v297 = v212;
  (v291)(v203, 1, 1, v292);
  v213 = v280;
  sub_1DAECEFBC();
  sub_1DAD64398(v203, &unk_1ECC07D20, &unk_1DAED57D0);

  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  v214 = swift_allocObject();
  v268 = v207;
  v214[2] = v207;
  v214[3] = sub_1DADC46D8;
  v215 = v267;
  v214[4] = v267;
  v214[5] = a6;
  v216 = swift_allocObject();
  *(v216 + 16) = sub_1DADC4614;
  *(v216 + 24) = v214;

  v217 = v215;

  v218 = v281;
  v219 = sub_1DAECF00C();

  (v251)(v213, v218);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__firstEnvironmentUpdateCancellable) = v219;

  v220 = v210;
  v221 = v210[3];
  v222 = v210[4];
  __swift_project_boxed_opaque_existential_1(v220, v221);
  v223 = (*(v222 + 16))(v221, v222);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v296 = sub_1DAED10FC();
  v224 = v269;
  sub_1DAECEFEC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  v225 = v285;
  sub_1DAED22DC();
  v226 = [v262 mainRunLoop];
  *&v301 = v226;
  v227 = v286;
  (v246)(v286, 1, 1, v247);
  sub_1DAD64B94(&qword_1EE005D70, &qword_1ECC07CF8, &qword_1DAED57A8, MEMORY[0x1E695BD78]);
  v228 = v272;
  v229 = v271;
  sub_1DAECEFCC();
  sub_1DAD64398(v227, &qword_1ECC07D08, &qword_1DAEDCB80);

  v243(v225, v287);
  (*(v270 + 8))(v224, v229);
  v230 = swift_allocObject();
  *(v230 + 16) = sub_1DADC46D8;
  *(v230 + 24) = v217;
  v231 = swift_allocObject();
  *(v231 + 16) = sub_1DAD93D04;
  *(v231 + 24) = v230;
  sub_1DAD64B94(&qword_1EE005D48, &qword_1ECC07D00, &unk_1DAED57B0, v276);

  v232 = v274;
  sub_1DAECF00C();

  (*(v273 + 8))(v228, v232);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v233 = v295;
  v234 = v295[3];
  v235 = v295[4];
  __swift_project_boxed_opaque_existential_1(v295, v234);
  v236 = (*(v235 + 16))(v234, v235);
  sub_1DAED0BEC();

  __swift_project_boxed_opaque_existential_1(&v301, v302);
  v237 = v282;
  sub_1DAED10EC();
  v238 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v283 + 40))(a6 + v238, v237, v284);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v301);
  swift_beginAccess();
  v239 = sub_1DAECF79C();
  swift_endAccess();
  v240 = *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties);
  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties) = v239;

  *(a6 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__initializing) = 0;
  LOBYTE(v301) = 0;
  sub_1DAD8EC1C(&v301);

  __swift_destroy_boxed_opaque_existential_1Tm(v288);
  __swift_destroy_boxed_opaque_existential_1Tm(v289);
  (*(v260 + 8))(v290, v261);

  __swift_destroy_boxed_opaque_existential_1Tm(v304);
  __swift_destroy_boxed_opaque_existential_1Tm(v233);
  return a6;
}

uint64_t sub_1DAD991C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DAD99210()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DAD99258()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DAD99298()
{

  return swift_deallocObject();
}

uint64_t sub_1DAD992E0()
{

  return swift_deallocObject();
}

char *sub_1DAD99324()
{
  v1 = v0;
  v2 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1DAED20DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v14[0] = sub_1DAD84C40();
  sub_1DAED0A2C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8098], v3);
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1DAD94CC0(&qword_1EE00AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAD94C6C(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAED23CC();
  *(v0 + 2) = sub_1DAED210C();
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  v10 = MEMORY[0x1E69E7CC8];
  *(v1 + 3) = v8;
  *(v1 + 4) = v10;
  *(v1 + 5) = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v11 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  v12 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v1[OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued] = 0;
  return v1;
}

uint64_t sub_1DAD99664()
{
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
}

void sub_1DAD996A0(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      sub_1DAD674D4(0, &qword_1EE005540, 0x1E69943A0);
      v6 = v5;
      v7 = a1;
      v8 = sub_1DAED228C();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = sub_1DAECEDCC();
  v10 = sub_1DAED200C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v16);
    *(v11 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A648, &qword_1DAEDE7F8);
    v13 = sub_1DAED232C();
    v15 = sub_1DAD6482C(v13, v14, &v16);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] displayProperties changed (%{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v12, -1, -1);
    MEMORY[0x1E127F100](v11, -1, -1);
  }

  LOBYTE(v16) = 6;
  sub_1DAD8EC1C(&v16);
}

uint64_t sub_1DAD998A4()
{
  v1 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v10, v9, &unk_1ECC07D30, &unk_1DAED57E0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DADB62CC(v9, v3, type metadata accessor for DefaultWidgetLiveViewEntry);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v13 = *v3;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
        v15 = *(v14 + 48);
        sub_1DAD64398(v3 + *(v14 + 64), &qword_1ECC088D8, &qword_1DAED72D0);
        sub_1DADB6334(v3 + v15, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        return v13;
      }

      sub_1DADB6334(v3, type metadata accessor for DefaultWidgetLiveViewEntry);
    }

    else
    {
      sub_1DAD64398(v9, &unk_1ECC07D30, &unk_1DAED57E0);
    }
  }

  else
  {
    sub_1DADB62CC(v9, v6, type metadata accessor for DefaultWidgetLiveViewEntry);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v16 = *v6;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
      v18 = *(v17 + 48);
      sub_1DAD64398(v6 + *(v17 + 64), &qword_1ECC088D8, &qword_1DAED72D0);
      sub_1DADB6334(v6 + v18, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      return v16;
    }

    sub_1DADB6334(v6, type metadata accessor for DefaultWidgetLiveViewEntry);
  }

  return 0;
}

void sub_1DAD99B74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  BSDispatchQueueAssertMain();
  v15 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_1DAD6495C(a1, v14, &qword_1ECC08370, &unk_1DAED6580);
  v29 = v15;
  sub_1DAD6495C(v2 + v15, &v14[v16], &qword_1ECC08370, &unk_1DAED6580);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v14, v10, &qword_1ECC08370, &unk_1DAED6580);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      v25 = v28;
      (*(v5 + 32))(v28, &v14[v16], v4);
      sub_1DAD900EC(&qword_1EE00ABA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
      v26 = sub_1DAED1CAC();
      v27 = *(v5 + 8);
      v27(v25, v4);
      v27(v10, v4);
      sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
      if (v26)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1DAD64398(v14, &qword_1ECC089C8, &qword_1DAED7468);
LABEL_7:
  sub_1DAD94FD8();

  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v32);
    *(v20 + 12) = 2082;
    sub_1DAD6495C(v2 + v29, v30, &qword_1ECC08370, &unk_1DAED6580);
    v22 = sub_1DAED1D4C();
    v24 = sub_1DAD6482C(v22, v23, &v32);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] preferred color scheme changed %{public}s)", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  LOBYTE(v32) = 6;
  sub_1DAD8EC1C(&v32);
}

void sub_1DAD9A058(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
  v5 = v4;
  v6 = sub_1DAED228C();

  if ((v6 & 1) == 0)
  {

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v16);
      *(v9 + 12) = 2082;
      v11 = [*(v2 + v3) description];
      v12 = sub_1DAED1CEC();
      v14 = v13;

      v15 = sub_1DAD6482C(v12, v14, &v16);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] renderScheme changed to (%{public}s)", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    sub_1DAD94D08();
    LOBYTE(v16) = 19;
    sub_1DAD8EC1C(&v16);
  }
}

void sub_1DAD9A254(uint64_t a1)
{
  v3 = sub_1DAED16FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A638, &qword_1DAEDE7F0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  BSDispatchQueueAssertMain();
  v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1DAD6495C(a1, v12, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD6495C(v1 + v13, &v12[v14], &qword_1ECC08368, &unk_1DAEDE2B0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1DAD64398(v12, &qword_1ECC08368, &unk_1DAEDE2B0);
      return;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v12, v8, &qword_1ECC08368, &unk_1DAEDE2B0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1DAD64398(v12, &qword_1ECC0A638, &qword_1DAEDE7F0);
LABEL_7:
    v21 = 22;
    sub_1DAD8EC1C(&v21);
    return;
  }

  v16 = v20;
  (*(v4 + 32))(v20, &v12[v14], v3);
  sub_1DAD900EC(&qword_1ECC0A640, MEMORY[0x1E6985868], MEMORY[0x1E6985870]);
  v17 = sub_1DAED1CAC();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1DAD64398(v12, &qword_1ECC08368, &unk_1DAEDE2B0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_1DAD9A5B0(uint64_t a1)
{
  v34 = a1;
  v2 = sub_1DAECDA5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A650, &qword_1DAEDE848);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  BSDispatchQueueAssertMain();
  v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1DAD6495C(v34, v13, &qword_1ECC08360, &unk_1DAED6570);
  v34 = v14;
  v16 = v1 + v14;
  v17 = v1;
  sub_1DAD6495C(v16, &v13[v15], &qword_1ECC08360, &unk_1DAED6570);
  v18 = *(v3 + 48);
  if (v18(v13, 1, v2) == 1)
  {
    if (v18(&v13[v15], 1, v2) == 1)
    {
      sub_1DAD64398(v13, &qword_1ECC08360, &unk_1DAED6570);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v13, v9, &qword_1ECC08360, &unk_1DAED6570);
    if (v18(&v13[v15], 1, v2) != 1)
    {
      v28 = v32;
      (*(v3 + 32))(v32, &v13[v15], v2);
      sub_1DAD900EC(&qword_1ECC0A658, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v29 = sub_1DAED1CAC();
      v30 = *(v3 + 8);
      v30(v28, v2);
      v30(v9, v2);
      sub_1DAD64398(v13, &qword_1ECC08360, &unk_1DAED6570);
      if (v29)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v3 + 8))(v9, v2);
  }

  sub_1DAD64398(v13, &qword_1ECC0A650, &qword_1DAEDE848);
LABEL_7:

  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v21 = 136446466;
    *(v21 + 4) = sub_1DAD6482C(*(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v35);
    *(v21 + 12) = 2082;
    v22 = v33;
    sub_1DAD6495C(v17 + v34, v33, &qword_1ECC08360, &unk_1DAED6570);
    v23 = v18(v22, 1, v2);
    sub_1DAD64398(v22, &qword_1ECC08360, &unk_1DAED6570);
    if (v23 == 1)
    {
      v24 = 7104878;
    }

    else
    {
      v24 = 0x74616420656D6F73;
    }

    if (v23 == 1)
    {
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = 0xE900000000000065;
    }

    v26 = sub_1DAD6482C(v24, v25, &v35);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] idealizedDateComponents changed to (%{public}s)", v21, 0x16u);
    v27 = v32;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v27, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);
  }

  LOBYTE(v35) = 14;
  sub_1DAD8EC1C(&v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
  sub_1DAECEEEC();
}

void sub_1DAD9AB3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v82 - v6;
  v8 = sub_1DAECDCEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v82 - v13;
  v15 = sub_1DAED10DC();
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAECE20C();
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) & 1) == 0)
  {
    v86 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started;
    v91 = v19;
    v89 = v9;
    v88 = v4;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    v23 = __swift_project_value_buffer(v22, qword_1EE0117D8);

    v84 = v23;
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();

    v26 = os_log_type_enabled(v24, v25);
    v90 = v8;
    v85 = v11;
    v87 = v7;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v94[0] = v83;
      *v27 = 136446210;
      v29 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v28 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v30 = sub_1DAD6482C(v29, v28, v94);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1DAD61000, v24, v25, "[%{public}s] Subscribing", v27, 0xCu);
      v31 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1E127F100](v31, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    v32 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID;
    v33 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v34 = *(v1 + 48);
    v35 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
    swift_beginAccess();
    (*(v91 + 16))(v21, v1 + v35, v18);
    v36 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
    swift_beginAccess();
    (*(v92 + 16))(v17, v1 + v36, v93);
    v37 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v37, v14, &qword_1ECC07CD0, &qword_1DAED6560);
    v38 = sub_1DAECE55C();
    LODWORD(v37) = (*(*(v38 - 8) + 48))(v14, 1, v38);
    v39 = v33;
    if (v37)
    {
      LOBYTE(v40) = 0;
    }

    else
    {
      v40 = sub_1DAECE53C();
    }

    sub_1DAD64398(v14, &qword_1ECC07CD0, &qword_1DAED6560);
    type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v34;
    (*(v91 + 32))(v41 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority, v21, v18);
    (*(v92 + 32))(v41 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers, v17, v93);
    *(v41 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = v40 & 1;
    *(v1 + v86) = 1;
    v42 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client;
    sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v94);
    v43 = v95;
    v44 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v45 = *(v44 + 32);

    v45(v41, sub_1DADAFE94, v1, v43, v44);

    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    v46 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
    swift_beginAccess();
    v47 = v87;
    sub_1DAD6495C(v1 + v46, v87, &qword_1ECC07CE8, &qword_1DAED6F60);
    v48 = v89;
    v49 = v90;
    v50 = &unk_1EE008000;
    if ((*(v89 + 48))(v47, 1, v90) == 1)
    {

      sub_1DAD64398(v47, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      v51 = v85;
      (*(v48 + 32))(v85, v47, v49);
      if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason + 8) == 1)
      {
        (*(v48 + 8))(v51, v49);
      }

      else
      {
        v92 = v32;
        v52 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason);
        sub_1DAECDC8C();
        v54 = v53;

        v55 = sub_1DAECEDCC();
        v56 = sub_1DAED203C();

        LODWORD(v93) = v56;
        v57 = v56;
        v58 = v55;
        v59 = os_log_type_enabled(v55, v57);
        if (v54 >= 15.0)
        {
          if (v59)
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v94[0] = v75;
            *v74 = 136446210;
            v76 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
            v77 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

            v78 = sub_1DAD6482C(v76, v77, v94);

            *(v74 + 4) = v78;
            v48 = v89;
            _os_log_impl(&dword_1DAD61000, v55, v93, "[%{public}s] Pending catastrophic reload ignored because it's been more than 15s since the reload was requested from the widget activating.", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            v79 = v75;
            v49 = v90;
            MEMORY[0x1E127F100](v79, -1, -1);
            MEMORY[0x1E127F100](v74, -1, -1);
          }

          else
          {
          }

          (*(v48 + 8))(v85, v49);
        }

        else
        {
          v91 = v52;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v94[0] = v61;
            *v60 = 136446466;
            v62 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
            v63 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

            v64 = sub_1DAD6482C(v62, v63, v94);

            *(v60 + 4) = v64;
            *(v60 + 12) = 2080;
            v65 = NSStringFromWRReloadReason(v91);
            v66 = sub_1DAED1CEC();
            v68 = v67;

            v69 = sub_1DAD6482C(v66, v68, v94);
            v50 = &unk_1EE008000;

            *(v60 + 14) = v69;
            _os_log_impl(&dword_1DAD61000, v58, v93, "[%{public}s] Reloading for pending catastrophic reload failure: %s", v60, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E127F100](v61, -1, -1);
            MEMORY[0x1E127F100](v60, -1, -1);
          }

          v70 = v92;
          sub_1DAD648F8(v1 + v42, v94);
          v71 = v96;
          __swift_project_boxed_opaque_existential_1(v94, v95);
          v72 = *(v71 + 112);
          v73 = *(v1 + v70);
          v72();

          v48 = v89;
          v49 = v90;
          (*(v89 + 8))(v85, v90);
          __swift_destroy_boxed_opaque_existential_1Tm(v94);
        }
      }
    }

    v80 = v88;
    v81 = v1 + v50[37];
    *v81 = 0;
    *(v81 + 8) = 1;
    (*(v48 + 56))(v80, 1, 1, v49);
    swift_beginAccess();
    sub_1DAD94438(v80, v1 + v46, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
  }
}