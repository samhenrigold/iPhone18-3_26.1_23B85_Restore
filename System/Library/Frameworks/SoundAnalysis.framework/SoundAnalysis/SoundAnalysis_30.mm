id sub_1C9A1A82C(uint64_t a1, double a2)
{
  v42 = a1;
  v38 = sub_1C9A92108();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C9A92188();
  sub_1C97AE9C8();
  v40 = v9;
  v41 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v37 - v13;
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = -1;
  sub_1C97BD318(v16, 0, &qword_1EC3C54C0, 0x1E695FE90);
  v17 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;

  v19 = v14;
  sub_1C9A93188();

  result = sub_1C9A92168();
  v21 = a2 * 1000.0;
  if (COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *v7 = v21;
  v22 = v38;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E7F38], v38);
  v23 = v39;
  sub_1C9A92178();
  (*(v4 + 8))(v7, v22);
  v24 = v41;
  v25 = *(v40 + 8);
  v25(v12, v41);
  sub_1C9A930C8();
  if ((sub_1C9A92118() & 1) == 0)
  {
    type metadata accessor for SNError(v26);
    sub_1C98573F8();
    v29 = sub_1C9A1C194();
LABEL_10:
    sub_1C9929478(v29, v30, 1, v31, v32, v33);
    goto LABEL_11;
  }

  swift_beginAccess();
  v28 = *(v15 + 24);
  if (v28 == 255)
  {
    type metadata accessor for SNError(v27);
    v32 = 0x6C65646F6D206F6ELL;
    v33 = 0xEF646564616F6C20;
    v30 = 0x80000001C9AD4AA0;
    v29 = 0xD000000000000017;
    v31 = 0;
    goto LABEL_10;
  }

  if (v28)
  {
    sub_1C97E82A8(*(v15 + 16));
LABEL_11:
    swift_willThrow();

    v25(v23, v24);
  }

  v34 = *(v15 + 16);
  v35 = v23;
  v36 = v34;
  v25(v35, v24);

  return v36;
}

uint64_t sub_1C9A1AC58(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = a1;
  v7 = *(a3 + 24);
  *(a3 + 24) = a2 & 1;
  sub_1C9A1BFE0(v6, v7);
  sub_1C97E82A8(a1);
  return sub_1C9A930D8();
}

unint64_t sub_1C9A1AE7C()
{
  result = qword_1EC3D22E8;
  if (!qword_1EC3D22E8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D22E8);
  }

  return result;
}

id sub_1C9A1AED4(uint64_t a1, uint64_t a2, double a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  sub_1C97BD318(a3, 0, &qword_1EC3C54B0, 0x1E696AD98);
  v5 = sub_1C9A92768();

  v10[0] = 0;
  v6 = [v3 initWithShape:v5 dataType:a2 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C9A913C8();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1C9A1AFD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v35[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v35[0] = a1;
    v33 = *(a1 + 16);
    if (v33)
    {
      v3 = 0;
      v4 = a2 + 56;
      v5 = a1 + 32;
      v6 = *(a2 + 40);
      v31 = -1 << *(a2 + 32);
      v32 = v6;
      v7 = ~v31;
      v34 = a1;
      while (2)
      {
        v8 = v5;
        v9 = *(v5 + 8 * v3);
        v3 = (v3 + 1);
        for (i = sub_1C9A93CB8(); ; i = v11 + 1)
        {
          v11 = i & v7;
          v12 = (i & v7) >> 6;
          v13 = 1 << (i & v7);
          if ((v13 & *(v4 + 8 * v12)) == 0)
          {
            break;
          }

          if (*(*(v2 + 48) + 8 * v11) == v9)
          {
            v35[1] = v3;
            v14 = (63 - v31) >> 6;
            v15 = 8 * v14;
            v32 = v14;
            if (v14 > 0x80)
            {
              goto LABEL_31;
            }

            v16 = v34;

            while (1)
            {
              v33 = &v31;
              MEMORY[0x1EEE9AC00](v17);
              v11 = &v31 - v18;
              memcpy(&v31 - v18, (v2 + 56), v15);
              v19 = *(v2 + 16);
              *(v11 + 8 * v12) &= ~v13;
              v15 = v19 - 1;
              v20 = *(v16 + 16);
              if (v3 == v20)
              {
                break;
              }

              v12 = *(v2 + 40);
              v14 = ~(-1 << *(v2 + 32));
              while (v3 < v20)
              {
                v21 = *(v8 + 8 * v3);
                v3 = (v3 + 1);
                v22 = sub_1C9A93CB8();
                do
                {
                  v23 = v22 & v14;
                  v24 = (v22 & v14) >> 6;
                  v25 = 1 << (v22 & v14);
                  if ((v25 & *(v4 + 8 * v24)) == 0)
                  {
                    v13 = v34;
                    goto LABEL_25;
                  }

                  v22 = v23 + 1;
                }

                while (*(*(v2 + 48) + 8 * v23) != v21);
                v26 = *(v11 + 8 * v24);
                *(v11 + 8 * v24) = v26 & ~v25;
                v13 = v34;
                if ((v26 & v25) != 0)
                {
                  if (__OFSUB__(v15--, 1))
                  {
                    goto LABEL_30;
                  }

                  if (!v15)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_27;
                  }
                }

LABEL_25:
                v20 = *(v13 + 16);
                if (v3 == v20)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_30:
              __break(1u);
LABEL_31:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                v29 = swift_slowAlloc();
                v30 = sub_1C9A1BA14(v29, v14, (v2 + 56), v14, v2, v11, v35);

                sub_1C9A1C1E0();

                return v30;
              }

              v16 = v34;
            }

LABEL_26:
            v2 = sub_1C9A1BB24(v11, v32, v15, v2);
LABEL_27:

            return v2;
          }
        }

        v5 = v8;
        if (v3 != v33)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t *sub_1C9A1B308(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1C9A93CC8();

      sub_1C9A92528();
      v9 = sub_1C9A93D18();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_1C9A93B18() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_1C9A1BA9C(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x1CCA93280](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_1C9A1BD08(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1C9A93CC8();

          sub_1C9A92528();
          v25 = sub_1C9A93D18();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1C9A93B18();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1C9A1B710(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_11:

    return sub_1C9A1BB24(v7, a2, v9, a3);
  }

  while (2)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < v12)
    {
      v14 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = sub_1C9A93CB8();
      v15 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v16 = result & v15;
        v17 = (result & v15) >> 6;
        v18 = 1 << (result & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          break;
        }

        result = v16 + 1;
        if (*(*(a3 + 48) + 8 * v16) == v14)
        {
          v19 = v7[v17];
          v7[v17] = v19 & ~v18;
          if ((v19 & v18) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_15;
            }

            if (!v9)
            {
              return MEMORY[0x1E69E7CD0];
            }
          }

          break;
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 != v12)
      {
        continue;
      }

      goto LABEL_11;
    }

    break;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t *sub_1C9A1B868(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1C9A1BD08(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1C9A93CC8();

    sub_1C9A92528();
    v14 = sub_1C9A93D18();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1C9A93B18();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1C9A1BA14(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9A1B710(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_1C9A1BA9C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1C9A1B868(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1C9A1BB24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3D2330, &qword_1C9ACF218);
  result = sub_1C9A93588();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1C9A93CB8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9A1BD08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1C97A2CEC(&qword_1EC3D22F8, &unk_1C9AD21C0);
  result = sub_1C9A93588();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1C9A93CC8();

    sub_1C9A92528();
    result = sub_1C9A93D18();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C9A1BF24(void *a1)
{
  v1 = [a1 classLabels];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9A92798();

  return v3;
}

unint64_t sub_1C9A1BF80()
{
  result = qword_1EC3D2320;
  if (!qword_1EC3D2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2320);
  }

  return result;
}

void sub_1C9A1BFE0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1C99E6114(a1);
  }
}

uint64_t sub_1C9A1C034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for SNUtils.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A1C118()
{
  result = qword_1EC3D2338;
  if (!qword_1EC3D2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2338);
  }

  return result;
}

uint64_t sub_1C9A1C1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C9A936A8();
}

uint64_t sub_1C9A1C1C4()
{

  return sub_1C9A934C8();
}

void sub_1C9A1C1E0()
{

  JUMPOUT(0x1CCA93280);
}

uint64_t sub_1C9A1C23C(uint64_t a1)
{

  return sub_1C9A93678();
}

double SNAudioCorrelationResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNAudioCorrelationResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C9A1C2B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR___SNAudioCorrelationResult_impl);
  v4[7] = result;
  v4[8] = a2;
  v4[9] = a3;
  return result;
}

BOOL sub_1C9A1C2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v2;
  v23[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 68);
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v9;
  v22[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 68);
  v15 = *(a2 + 72);
  v14 = *(a2 + 80);
  v16 = static TimeRange.== infix(_:_:)(v23, v22);
  result = 0;
  if (v16 && v3 == v10 && v4 == v11 && v5 == v12 && v6 == v13 && v8 == v15)
  {
    return v7 == v14;
  }

  return result;
}

uint64_t sub_1C9A1C398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756C61566B616570 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D69546B616570 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x496C656E6E616863 && a2 == 0xEC0000007865646ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C9A1C504(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x756C61566B616570;
      break;
    case 2:
      result = 0x656D69546B616570;
      break;
    case 3:
      result = 0x496C656E6E616863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9A1C590(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3D2360, &qword_1C9ACF438);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *(v3 + 7);
  v12 = *(v3 + 8);
  v17 = *(v3 + 9);
  v18 = v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A1DB40();
  sub_1C9A93DD8();
  v13 = v3[1];
  v19 = *v3;
  v20 = v13;
  v21 = v3[2];
  v22 = 0;
  sub_1C97BD12C();
  sub_1C97C2CE8();
  sub_1C9A93A18();
  if (!v2)
  {
    v15 = v17;
    v14 = v18;
    LOBYTE(v19) = 1;
    sub_1C9A939E8();
    *&v19 = v14;
    *(&v19 + 1) = v12;
    *&v20 = v15;
    v22 = 2;
    sub_1C97BCB34();
    sub_1C97C2CE8();
    sub_1C9A93A18();
    LOBYTE(v19) = 3;
    sub_1C97C2CE8();
    sub_1C9A93A08();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9A1C784()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  MEMORY[0x1CCA919B0](*&v6);
  MEMORY[0x1CCA919B0](v5);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v8);
  return MEMORY[0x1CCA91980](v9);
}

uint64_t sub_1C9A1C87C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[6];
  v6 = *(v0 + 7);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
  }

  MEMORY[0x1CCA919B0](*&v7);
  MEMORY[0x1CCA919B0](v6);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v9);
  MEMORY[0x1CCA91980](v10);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A1C9BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D2350, &qword_1C9ACF430);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A1DB40();
  sub_1C9A93DB8();
  if (!v2)
  {
    v33 = 0;
    v11 = sub_1C97BD0D8();
    sub_1C9A1DDB0(&type metadata for TimeRange, &v33, v12, v13, v11);
    v29 = v26;
    v30 = v27;
    v31 = v28;
    sub_1C9A1DD78(1);
    sub_1C9A938C8();
    v15 = v14;
    v32 = 2;
    v16 = sub_1C97BCA8C();
    sub_1C9A1DDB0(&type metadata for Time, &v32, v17, v18, v16);
    v20 = v25[1];
    v21 = v25[2];
    v22 = v25[3];
    sub_1C9A1DD78(3);
    v23 = sub_1C9A938E8();
    (*(v7 + 8))(v10, v5);
    v24 = v30;
    *a2 = v29;
    *(a2 + 16) = v24;
    *(a2 + 32) = v31;
    *(a2 + 48) = v15;
    *(a2 + 56) = v20;
    *(a2 + 64) = v21;
    *(a2 + 72) = v22;
    *(a2 + 80) = v23;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C9A1CBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A1C398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A1CBFC(uint64_t a1)
{
  v2 = sub_1C9A1DB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A1CC38(uint64_t a1)
{
  v2 = sub_1C9A1DB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A1CC7C()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = v0[6];
  v6 = *(v0 + 7);
  v9 = *(v0 + 9);
  v10 = *(v0 + 10);
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
  }

  MEMORY[0x1CCA919B0](*&v7);
  MEMORY[0x1CCA919B0](v6);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v9);
  MEMORY[0x1CCA91980](v10);
  return sub_1C9A93D18();
}

double SNAudioCorrelationResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNAudioCorrelationResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNAudioCorrelationResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNAudioCorrelationResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C9A1CED8@<D0>(_OWORD *a1@<X8>)
{
  SNAudioCorrelationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNAudioCorrelationResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNAudioCorrelationResult.timeRange.getter((v3 + 1));
  return sub_1C9A1CF80;
}

void sub_1C9A1CF80(void **a1)
{
  v1 = *a1;
  SNAudioCorrelationResult.timeRange.setter(*a1 + 8);

  free(v1);
}

id sub_1C9A1D0F8()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C98] + 40);
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v7 = &v0[OBJC_IVAR___SNAudioCorrelationResult_impl];
  *v7 = *MEMORY[0x1E6960C98];
  *(v7 + 1) = *(v2 + 8);
  *(v7 + 1) = *(v2 + 16);
  *(v7 + 4) = *(v2 + 32);
  *(v7 + 5) = v4;
  *(v7 + 6) = 0;
  *(v7 + 7) = v5;
  *(v7 + 8) = *(v3 + 8);
  *(v7 + 9) = v6;
  *(v7 + 10) = 0;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

void *SNAudioCorrelationResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNAudioCorrelationResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNAudioCorrelationResult_impl], __dst, 0x58uLL);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNAudioCorrelationResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v11);
  if (v12)
  {
    sub_1C97A2D34(&v11, v10);
    sub_1C97BD360(v10, v9);
    if (swift_dynamicCast())
    {
      v3 = v8;
      memcpy(__dst, (v1 + OBJC_IVAR___SNAudioCorrelationResult_impl), sizeof(__dst));
      memcpy(v6, &v8[OBJC_IVAR___SNAudioCorrelationResult_impl], sizeof(v6));
      v4 = sub_1C9A1C2D4(__dst, v6);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v10);
  }

  else
  {
    return 0;
  }

  return v4;
}

id SNAudioCorrelationResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A277C(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  memcpy(&v3[OBJC_IVAR___SNAudioCorrelationResult_impl], __src, 0x58uLL);
  v7.receiver = v3;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);

  v5 = swift_getObjectType();
  sub_1C9A1DD90(v5);
  return v4;
}

uint64_t SNAudioCorrelationResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1C9A935B8();
  v27 = 0;
  v28 = 0xE000000000000000;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v26, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  MEMORY[0x1CCA90230](v4, v6);

  MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9ADEE70);
  v23 = *&v1[OBJC_IVAR___SNAudioCorrelationResult_impl + 80];
  v7 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v7);

  MEMORY[0x1CCA90230](0x54206B616550203BLL, 0xED0000203A656D69);
  v8 = *&v1[OBJC_IVAR___SNAudioCorrelationResult_impl + 56];
  v9 = *&v1[OBJC_IVAR___SNAudioCorrelationResult_impl + 64];
  v10 = *&v1[OBJC_IVAR___SNAudioCorrelationResult_impl + 72];
  v11 = objc_opt_self();
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v12 = [v11 valueWithCMTime_];
  v13 = [v12 description];
  v14 = sub_1C9A924A8();
  v16 = v15;

  MEMORY[0x1CCA90230](v14, v16);

  MEMORY[0x1CCA90230](0x56206B616550203BLL, 0xEE00203A65756C61);
  sub_1C9A92AF8();
  MEMORY[0x1CCA90230](0xD000000000000013, 0x80000001C9ADEE90);
  v17 = [v11 valueWithCMTimeRange_];
  v18 = [v17 description];
  v19 = sub_1C9A924A8();
  v21 = v20;

  MEMORY[0x1CCA90230](v19, v21);

  return v27;
}

id SNAudioCorrelationResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C9A1D9F8@<D0>(_OWORD *a1@<X8>)
{
  SNAudioCorrelationResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C9A1DA78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9A1DA98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 88) = v3;
  return result;
}

unint64_t sub_1C9A1DAEC()
{
  result = qword_1EC3D2348;
  if (!qword_1EC3D2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2348);
  }

  return result;
}

unint64_t sub_1C9A1DB40()
{
  result = qword_1EC3D2358;
  if (!qword_1EC3D2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioCorrelationResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A1DC74()
{
  result = qword_1EC3D2368;
  if (!qword_1EC3D2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2368);
  }

  return result;
}

unint64_t sub_1C9A1DCCC()
{
  result = qword_1EC3D2370;
  if (!qword_1EC3D2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2370);
  }

  return result;
}

unint64_t sub_1C9A1DD24()
{
  result = qword_1EC3D2378;
  if (!qword_1EC3D2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2378);
  }

  return result;
}

uint64_t sub_1C9A1DD90(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C9A1DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9A1DDD0(void *a1)
{
  v2 = sub_1C9A91288();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C9A912C8();
  swift_allocObject();
  sub_1C9A912B8();
  sub_1C9A91278();
  sub_1C9A91298();
  sub_1C97A5A8C(a1, a1[3]);
  v3 = sub_1C9A912A8();

  return v3;
}

uint64_t sub_1C9A1DEBC()
{
  sub_1C9A91268();
  swift_allocObject();
  sub_1C9A91258();
  sub_1C9A91248();
}

_BYTE *storeEnumTagSinglePayload for JSONUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9A1E03C()
{
  result = qword_1EC3D2380;
  if (!qword_1EC3D2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D2380);
  }

  return result;
}

void sub_1C9A1E0E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1C9A913B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1C9A1E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  sub_1C9921854(a3, v21 - v9);
  v11 = sub_1C9A92988();
  v12 = sub_1C97ABF20(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1C9A212E4(v10);
  }

  else
  {
    sub_1C9A92978();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1C9A92928();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1C9A92508() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = sub_1C9A218D8();

      sub_1C9A212E4(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C9A212E4(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return sub_1C9A218D8();
}

uint64_t sub_1C9A1E374(uint64_t a1, void *a2)
{
  v3 = sub_1C97A5A8C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1C9A1E3E4(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_1C9A1E3E4(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  swift_allocError();
  *v3 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C9A1E454(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_1C9A92328();
  if (a3)
  {
    a3 = sub_1C9A92328();
  }

  v8 = _Block_copy(a4);
  sub_1C97F07FC();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_1C9A2168C, v9);
}

void sub_1C9A1E55C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_1C9A922F8();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_1C9A922F8();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_1C9A913B8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_1C9A1E644(uint64_t *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v21 = a1[7];
  v22 = a1[6];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v19 = a2[7];
  v20 = a2[6];
  if (!v12 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v5 == v9;
  if (!v13 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v14 = v6 == v10 && v7 == v11;
  if (!v14 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  v15 = v22 == v20 && v21 == v19;
  if (!v15 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C9808C60(a1[8], a2[8]) & 1) == 0)
  {
    return 0;
  }

  v16 = a1[9] == a2[9] && a1[10] == a2[10];
  if (!v16 && (sub_1C9A93B18() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C9A1E7C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49726576726573 && a2 == 0xEA00000000006F66;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6946726576726573 && a2 == 0xEF7368746150656CLL;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6142726576726573 && a2 == 0xEE00687461506573;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001C9ADEFE0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C9A1E940(char a1)
{
  result = 0x6E49726576726573;
  switch(a1)
  {
    case 1:
      result = 0x6946726576726573;
      break;
    case 2:
      result = 0x6142726576726573;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9A1E9E4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3D23C0, &unk_1C9ACF7C0);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A210A4();
  sub_1C9A93DD8();
  v11 = *v3;
  v12 = v3[2];
  v24 = v3[1];
  v25 = v12;
  v13 = v3[2];
  v26 = v3[3];
  v19 = v11;
  v20 = v24;
  v14 = *v3;
  v21 = v13;
  v22 = v3[3];
  v23 = v14;
  v18[79] = 0;
  sub_1C9840AC4(&v23, v18);
  sub_1C9877B9C();
  sub_1C9A93A18();
  if (v2)
  {
    sub_1C99CC424();
  }

  else
  {
    sub_1C99CC424();
    v17 = *(v3 + 8);
    v16[7] = 1;
    sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
    sub_1C9877B30(&unk_1EC3D23D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C9A93A18();
    sub_1C9A2189C(2);
    sub_1C9A2189C(3);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9A1EC14(uint64_t a1)
{
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C97C7EF4();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C9A1ECC0()
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C97C7EF4();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C9A1ED7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = sub_1C97A2CEC(&qword_1EC3D23A8, &unk_1C9ACF7B0);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A210A4();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v10 = v6;
  v38 = 0;
  sub_1C9877A74();
  v11 = v26;
  sub_1C9A938F8();
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  LOBYTE(v27[0]) = 1;
  sub_1C9877B30(&qword_1EC3CA010, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C9A938F8();
  v25 = v28[0];
  LOBYTE(v28[0]) = 2;
  v23 = sub_1C9A938A8();
  v24 = v12;
  v37 = 3;
  v13 = sub_1C9A938A8();
  v14 = *(v10 + 8);
  v22 = v15;
  v14(v9, v11);
  v27[0] = v33;
  v27[1] = v34;
  v27[2] = v35;
  v27[3] = v36;
  v17 = v24;
  v16 = v25;
  v19 = v22;
  v18 = v23;
  *&v27[4] = v25;
  *(&v27[4] + 1) = v23;
  *&v27[5] = v24;
  *(&v27[5] + 1) = v13;
  *&v27[6] = v22;
  sub_1C9A210F8(v27, v28);
  sub_1C97A592C(a1);
  sub_1C9A218C4();
  v28[8] = v16;
  v28[9] = v18;
  v28[10] = v17;
  v28[11] = v13;
  v28[12] = v19;
  sub_1C9A21130(v28);
  return memcpy(a2, v27, 0x68uLL);
}

uint64_t sub_1C9A1F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A1E7C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A1F0E8(uint64_t a1)
{
  v2 = sub_1C9A210A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A1F124(uint64_t a1)
{
  v2 = sub_1C9A210A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9A1F160@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9A1ED7C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1C9A1F1CC()
{
  sub_1C9A93CC8();
  sub_1C9A1EC14(v1);
  return sub_1C9A93D18();
}

char *sub_1C9A1F20C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 16];
  v23[0] = *&a1[OBJC_IVAR___SNFileServerInfo_impl];
  v23[1] = v12;
  v13 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 48];
  v24 = *&a1[OBJC_IVAR___SNFileServerInfo_impl + 32];
  v25 = v13;
  v26 = v23[0];
  v27 = v12;
  v28 = v24;
  v29 = v13;
  v14 = type metadata accessor for SNCopyFilesRequest(*v23);
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___SNCopyFilesRequest_impl];
  v17 = v27;
  *v16 = v23[0];
  *(v16 + 1) = v17;
  v18 = v29;
  *(v16 + 2) = v28;
  *(v16 + 3) = v18;
  *(v16 + 8) = a4;
  *(v16 + 9) = a2;
  *(v16 + 10) = a3;
  *(v16 + 11) = a5;
  *(v16 + 12) = a6;
  sub_1C9840AC4(v23, v22);
  v21.receiver = v15;
  v21.super_class = v14;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

uint64_t (*sub_1C9A1F3A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v30 = a4;
  sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v12 setDispatchQueue_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69C6B68]) init];
  [v13 setDispatchQueue_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69C6B90]) init];
  sub_1C97F07FC();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v13;
  v16[6] = v5;
  v16[7] = v14;
  v17 = v30;
  v16[8] = a1;
  v16[9] = v17;
  v16[10] = a5;
  aBlock[4] = sub_1C9A211DC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C991EE58;
  aBlock[3] = &unk_1F494E860;
  v18 = _Block_copy(aBlock);

  v19 = v13;
  v20 = v5;
  v21 = v14;
  v22 = a1;

  [v12 setLocalDeviceUpdatedHandler_];
  _Block_release(v18);
  v23 = sub_1C9A92988();
  v24 = v31;
  sub_1C97ACC50(v31, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v12;
  v26 = v12;
  v27 = sub_1C9A1E148(0, 0, v24, &unk_1C9ACF7D8, v25);
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = v19;
  v28[4] = v21;
  v28[5] = v27;

  return sub_1C9A212D8;
}

uint64_t sub_1C9A1F670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v17 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v31 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v31 = a9;
    v22 = sub_1C9A92988();
    sub_1C97ACC50(v19, 1, 1, v22);
    v23 = swift_allocObject();
    v24 = a3;
    v25 = v23;
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v21;
    v23[5] = v24;
    v23[6] = a4;
    v23[7] = a1;
    v23[8] = a5;
    v23[9] = a6;
    v23[10] = a7;
    v23[11] = a8;
    v23[12] = v31;
    v23[13] = a10;

    v26 = a1;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = a8;

    sub_1C9A1E148(0, 0, v19, &unk_1C9ACF7E8, v25);
  }

  return result;
}

uint64_t sub_1C9A1F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 576) = v14;
  *(v8 + 544) = v12;
  *(v8 + 560) = v13;
  *(v8 + 536) = a8;
  *(v8 + 528) = a7;
  *(v8 + 520) = a6;
  *(v8 + 504) = a4;
  *(v8 + 512) = a5;
  v9 = sub_1C9A91558();
  *(v8 + 584) = v9;
  *(v8 + 592) = *(v9 - 8);
  *(v8 + 600) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9A1F8FC, 0, 0);
}

uint64_t sub_1C9A1F8FC()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = sub_1C9A92478();
  [v3 deregisterRequestID_];

  v6 = sub_1C9A92478();
  sub_1C97AA878();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  sub_1C97AA878();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C9A2156C;
  *(v8 + 24) = v7;
  v0[46] = sub_1C9A21574;
  v0[47] = v8;
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1C9A1E454;
  v0[45] = &unk_1F494E978;
  v9 = _Block_copy(v0 + 42);

  [v3 registerRequestID:v6 options:0 handler:v9];
  _Block_release(v9);

  sub_1C984099C(v1, &selRef_idsDeviceIdentifier);
  v0[76] = v11;
  if (!v11)
  {
    __break(1u);
  }

  v0[77] = type metadata accessor for SNFileSharingUtils(v10);
  v12 = swift_task_alloc();
  v0[78] = v12;
  *v12 = v0;
  v12[1] = sub_1C9A1FB54;

  return sub_1C983F074();
}

uint64_t sub_1C9A1FB54()
{
  sub_1C97AA95C();
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 632) = v4;
  *(v2 + 640) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9A1FC9C()
{
  sub_1C97AA95C();
  *(v0 + 648) = OBJC_IVAR___SNCopyFilesRequest_impl;
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A1FD80;

  return sub_1C983F074();
}

uint64_t sub_1C9A1FD80()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 664) = v4;
  *(v2 + 672) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9A1FEB8()
{
  v1 = v0[79];
  sub_1C97A2CEC(&qword_1EC3D23E0, &qword_1C9ACF7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9FB90;
  v0[54] = 0x7550746567726174;
  v0[55] = 0xEF79654B63696C62;
  sub_1C9A93548();
  v3 = sub_1C9A21178(v1);
  if (v4 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v0[79];
  *(inited + 96) = MEMORY[0x1E6969080];
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  v0[56] = 0x4449746567726174;
  v0[57] = 0xE800000000000000;
  v6 = MEMORY[0x1E69E6158];
  sub_1C9A93548();
  v7 = sub_1C984099C(v5, &selRef_idsDeviceID);
  if (!v8)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v9 = v0[83];
  v10 = (v0[68] + v0[81]);
  *(inited + 168) = v6;
  *(inited + 144) = v7;
  *(inited + 152) = v8;
  v0[58] = 0x6874615065736162;
  v0[59] = 0xE800000000000000;
  sub_1C98ADF18();
  sub_1C9A93548();
  v12 = v10[9];
  v11 = v10[10];
  *(inited + 240) = v6;
  *(inited + 216) = v12;
  *(inited + 224) = v11;
  v0[60] = 0x68746150656C6966;
  v0[61] = 0xE900000000000073;

  sub_1C98ADF18();
  sub_1C9A93548();
  v13 = v10[8];
  *(inited + 312) = sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  *(inited + 288) = v13;

  v14 = sub_1C9A92348();
  v0[85] = v14;
  v15 = sub_1C984099C(v9, &selRef_identifier);
  v0[86] = v16;
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v15;
  v18 = v16;
  v19 = swift_task_alloc();
  v0[87] = v19;
  *v19 = v0;
  v19[1] = sub_1C9A20190;
  v20 = v0[63];

  return sub_1C983F420(0xD000000000000013, 0x80000001C9AD96F0, v14, v17, v18, v20);
}

uint64_t sub_1C9A20190()
{
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 704) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A20304()
{
  v1 = v0[69];
  [v1 setDispatchQueue_];
  [v1 setFlags_];
  v0[62] = 0;
  v2 = [v1 prepareTemplateAndReturnError_];
  v3 = v0[62];
  if (v2)
  {
    v31 = v0[83];
    v4 = v0[75];
    v5 = v0[74];
    v6 = v0[73];
    v7 = v0[72];
    v8 = v0[71];
    v9 = v0[69];
    v10 = v3;
    sub_1C9A91458();
    v11 = sub_1C9A91488();
    (*(v5 + 8))(v4, v6);
    [v9 setTemporaryDirectoryURL_];

    sub_1C97AA878();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C9A2159C;
    *(v13 + 24) = v12;
    v0[52] = sub_1C9A215A4;
    v0[53] = v13;
    v0[48] = MEMORY[0x1E69E9820];
    v0[49] = 1107296256;
    v0[50] = sub_1C9A20AA8;
    v0[51] = &unk_1F494E9F0;
    v14 = _Block_copy(v0 + 48);

    [v9 setReceivedItemHandler_];
    _Block_release(v14);
    v15 = sub_1C9A21178(v31);
    if (v16 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v22 = v15;
      v23 = v16;
      v17 = sub_1C9A915F8();
      sub_1C97AA780(v22, v23);
    }

    v24 = v0[79];
    [v0[69] setPeerPublicKey_];

    sub_1C984099C(v24, &selRef_idsDeviceID);
    if (v25)
    {
      v26 = sub_1C9A92478();
    }

    else
    {
      v26 = 0;
    }

    v27 = v0[83];
    v28 = v0[79];
    v29 = v0[69];
    [v29 setTargetID_];

    [v29 activate];

    v21 = v0[1];
  }

  else
  {
    v18 = v0[83];
    v19 = v0[79];
    v20 = v3;
    sub_1C9A913C8();

    swift_willThrow();

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1C9A20688()
{
  sub_1C97AA884();

  sub_1C9A2188C();

  return v0();
}

uint64_t sub_1C9A20714()
{
  sub_1C97AA884();

  sub_1C9A2188C();

  return v1();
}

uint64_t sub_1C9A207A0()
{
  sub_1C97AA95C();
  v1 = *(v0 + 664);
  v2 = *(v0 + 632);

  sub_1C9A2188C();

  return v3();
}

uint64_t sub_1C9A20850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9A91B58();
  sub_1C97BFF6C(v6, qword_1EC3D3108);
  v7 = sub_1C9A91B38();
  v8 = sub_1C9A92FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C9788000, v7, v8, "Transfer completed", v9, 2u);
    MEMORY[0x1CCA93280](v9, -1, -1);
  }

  return a5(0);
}

void sub_1C9A20948(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(void *))
{
  v7 = type metadata accessor for FileCopyingResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SNFileSharingUtils(v10);
  sub_1C98405D8(a1, v9);
  v11 = type metadata accessor for SNFileCopyingResult(0);
  v12 = objc_allocWithZone(v11);
  sub_1C9A215CC(v9, v12 + OBJC_IVAR___SNFileCopyingResult_impl);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_1C9A21630(v9);
  v16[3] = v11;
  v16[0] = v13;
  v14 = v13;
  a4(v16);
  sub_1C97A592C(v16);
  a2(0);
}

void sub_1C9A20AA8(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

uint64_t sub_1C9A20B80()
{
  sub_1C97AA95C();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C9A20C90;
  v2 = swift_continuation_init();
  v0[17] = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C9A1E374;
  v0[13] = &unk_1F494E8D8;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C9A20C90()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = *(v3 + 48);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C9A20D94()
{
  sub_1C97AA95C();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9A20DFC(void *a1, void *a2, void *a3, uint64_t a4)
{
  [a1 invalidate];
  [a2 invalidate];
  [a3 invalidate];
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);

  return sub_1C9A92A28();
}

id SNCopyFilesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNCopyFilesRequest.__deallocating_deinit(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNCopyFilesRequest(a1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C9A21050()
{
  result = qword_1EC3D23A0;
  if (!qword_1EC3D23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D23A0);
  }

  return result;
}

unint64_t sub_1C9A210A4()
{
  result = qword_1EC3D23B0;
  if (!qword_1EC3D23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D23B0);
  }

  return result;
}

uint64_t sub_1C9A21178(void *a1)
{
  v1 = [a1 edPKData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C9A91618();

  return v3;
}

uint64_t sub_1C9A21214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9A2122C()
{
  sub_1C97AA95C();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C9A21880;
  sub_1C98ADF18();

  return sub_1C9A20B60(v4, v5, v6, v2);
}

uint64_t sub_1C9A212E4(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C9A21378()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C9A21480;
  sub_1C98ADF18();

  return sub_1C9A1F7F0(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_1C9A21480()
{
  sub_1C97AA884();
  v1 = *v0;
  sub_1C97AA84C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C9A215CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileCopyingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9A21630(uint64_t a1)
{
  v2 = type metadata accessor for FileCopyingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CopyFilesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9A21774()
{
  result = qword_1EC3D23E8;
  if (!qword_1EC3D23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D23E8);
  }

  return result;
}

unint64_t sub_1C9A217CC()
{
  result = qword_1EC3D23F0;
  if (!qword_1EC3D23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D23F0);
  }

  return result;
}

unint64_t sub_1C9A21824()
{
  result = qword_1EC3D23F8;
  if (!qword_1EC3D23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D23F8);
  }

  return result;
}

uint64_t sub_1C9A2189C@<X0>(char a3@<W8>)
{
  *(v3 - 312) = a3;

  return sub_1C9A939C8();
}

__n128 sub_1C9A218C4()
{
  v2 = *(v1 - 144);
  *(v0 + 160) = *(v1 - 160);
  *(v0 + 176) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 192) = result;
  *(v0 + 208) = v4;
  return result;
}

uint64_t sub_1C9A218D8()
{

  return swift_task_create();
}

uint64_t sub_1C9A218F8(uint64_t a1, char a2)
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C9A21974(uint64_t a1, char a2)
{
  sub_1C9A93CC8();
  sub_1C9A92528();

  return sub_1C9A93D18();
}

uint64_t sub_1C9A21A08(uint64_t a1, unsigned __int8 a2)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A21A4C(uint64_t a1, char a2)
{
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](a2 & 1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A21A90()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C9A38020();
  v8 = v3;
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v4;
  *v4 = v5;
  v6 = sub_1C98ADE1C(v4);

  return v8(v6);
}

uint64_t sub_1C9A21B54()
{
  sub_1C97AA95C();
  *(v0 + 16) = v1;
  sub_1C9A38020();
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = sub_1C981E3D8(v3);
  *v4 = v5;
  sub_1C97DA950(v4);

  return v7(v0 + 16);
}

uint64_t sub_1C9A21C14()
{
  sub_1C97AA884();
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = v1[2];
  sub_1C9A38020();
  v8 = v3;
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 64) = v4;
  *v4 = v5;
  v6 = sub_1C98ADE1C(v4);

  return v8(v6);
}

uint64_t sub_1C9A21CD8()
{
  sub_1C97AA95C();
  *(v0 + 16) = v1;
  sub_1C9A38020();
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = sub_1C981E3D8(v3);
  *v4 = v5;
  sub_1C97DA950(v4);

  return v7(v0 + 16);
}

uint64_t sub_1C9A21D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v8 = (a5 + *a5);
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1C9819228;

  return v8(v5 + 2);
}

uint64_t sub_1C9A21E98(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1C981942C;

  return v6(v3 + 2);
}

void sub_1C9A21F94()
{
  sub_1C98139FC();
  sub_1C9A38764(v2);
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  sub_1C9A91C28();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C9A3890C(v6 - v5);
  v7 = sub_1C97A2CEC(&qword_1EC3D2890, &qword_1C9AD0DF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D2898, &qword_1C9AD0E00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&qword_1EC3D28A0, &qword_1C9AD0E08);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  sub_1C9A387B8();
  if (qword_1EC3C5E30 != -1)
  {
    sub_1C9A38438(&qword_1EC3C5E30);
  }

  sub_1C9A38518(&qword_1EC3D3488);
  if (v0)
  {

    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v12 = xmmword_1C9A9C440;
    sub_1C9A384E8(v12, 3);
    swift_willThrow();
  }

  else
  {
    sub_1C9A2C35C(v11);
    sub_1C97A2CEC(&unk_1EC3D28A8, &unk_1C9AD0E10);
    swift_allocObject();
    v47 = sub_1C9A91E78();

    v13 = sub_1C9813668();
    v15 = sub_1C97A2CEC(v13, v14);
    v16 = sub_1C97A2CEC(&unk_1EC3D28B8, &qword_1C9AD0E20);
    v17 = sub_1C9A38334(&unk_1EC3C4A80);
    sub_1C9A385AC(v17, v18, v19, v20, v17);

    v21 = sub_1C9A383E0(&unk_1EC3D28C8);
    sub_1C9A38290(v21, v22, v23, &type metadata for CLAP.Detection, v21);
    v24 = sub_1C997121C();
    v25(v24, v7);
    sub_1C9A383AC(&unk_1EC3D28D0);
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3D28D8, &qword_1C9AD0E28);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97FB318();
    v48 = sub_1C9945DA4();
    v26 = sub_1C9A383D0();
    v27(v26);
    v28 = sub_1C9A3868C();
    v29(v28);
    sub_1C9A3831C();
    qword_1C9AB34D8 = v30;
    unk_1C9AB34E0 = 0;
    v31 = sub_1C9A386D8();
    v32(v31);
    sub_1C9A382C4();
    v34 = sub_1C9939700(v33);
    sub_1C9A3857C(v34);
    v35 = sub_1C98B7720();
    v36(v35);
    (*(v15 + 8))(v7, v16);

    v37 = sub_1C9A38494(&unk_1EC3D28E8);
    sub_1C9A389DC(v37);
    v38 = sub_1C997121C();
    v39(v38, v1 + 8);
    sub_1C9A91738();

    v40 = sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
    sub_1C9A3874C(v40);
    *v41 = &unk_1C9AD0E78;
    v41[1] = v47;
    sub_1C97AA878();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1C9A37FF8;
    *(v42 + 24) = v47;
    v43 = (v49 + v48[12]);
    *v43 = &unk_1C9AD0E88;
    v43[1] = v42;
    v44 = (v49 + v48[13]);
    *v44 = &unk_1C9AD0E80;
    v44[1] = v47;
    sub_1C97AA878();
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1C9A38010;
    *(v45 + 24) = v47;
    v46 = (v49 + v48[10]);
    *v46 = &unk_1C9AD0E90;
    v46[1] = v45;
    swift_retain_n();
  }

  sub_1C98139E0();
}

void sub_1C9A2258C()
{
  sub_1C98139FC();
  sub_1C9A38764(v2);
  sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  sub_1C9A91C28();
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  sub_1C9A3890C(v6 - v5);
  v7 = sub_1C97A2CEC(&qword_1EC3D2890, &qword_1C9AD0DF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D2898, &qword_1C9AD0E00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&qword_1EC3D28A0, &qword_1C9AD0E08);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AC02C();
  sub_1C9A387B8();
  if (qword_1EC3C5E30 != -1)
  {
    sub_1C9A38438(&qword_1EC3C5E30);
  }

  sub_1C9A38518(&qword_1EC3D3488);
  if (v0)
  {

    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v11 = xmmword_1C9A9C440;
    sub_1C9A384E8(v11, 3);
    swift_willThrow();
  }

  else
  {
    sub_1C9A2CB48();
    sub_1C97A2CEC(&unk_1EC3D28A8, &unk_1C9AD0E10);
    swift_allocObject();
    v46 = sub_1C9A91E78();

    v12 = sub_1C9813668();
    v14 = sub_1C97A2CEC(v12, v13);
    v15 = sub_1C97A2CEC(&unk_1EC3D28B8, &qword_1C9AD0E20);
    v16 = sub_1C9A38334(&unk_1EC3C4A80);
    sub_1C9A385AC(v16, v17, v18, v19, v16);

    v20 = sub_1C9A383E0(&unk_1EC3D28C8);
    sub_1C9A38290(v20, v21, v22, &type metadata for CLAP.Detection, v20);
    v23 = sub_1C997121C();
    v24(v23, v7);
    sub_1C9A383AC(&unk_1EC3D28D0);
    sub_1C9A92008();
    sub_1C97A2CEC(&qword_1EC3D28D8, &qword_1C9AD0E28);
    sub_1C97AA878();
    swift_allocObject();
    sub_1C97FB318();
    v47 = sub_1C9945DA4();
    v25 = sub_1C9A383D0();
    v26(v25);
    v27 = sub_1C9A3868C();
    v28(v27);
    sub_1C9A3831C();
    qword_1C9AB34D8 = v29;
    unk_1C9AB34E0 = 0;
    v30 = sub_1C9A386D8();
    v31(v30);
    sub_1C9A382C4();
    v33 = sub_1C9939700(v32);
    sub_1C9A3857C(v33);
    v34 = sub_1C98B7720();
    v35(v34);
    (*(v14 + 8))(v7, v15);

    v36 = sub_1C9A38494(&unk_1EC3D28E8);
    sub_1C9A389DC(v36);
    v37 = sub_1C997121C();
    v38(v37, v1 + 8);
    sub_1C9A91738();

    v39 = sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
    sub_1C9A3874C(v39);
    *v40 = &unk_1C9AD0E38;
    v40[1] = v46;
    sub_1C97AA878();
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1C9A369C8;
    *(v41 + 24) = v46;
    v42 = (v48 + v47[12]);
    *v42 = &unk_1C9AD0E58;
    v42[1] = v41;
    v43 = (v48 + v47[13]);
    *v43 = &unk_1C9AD0E48;
    v43[1] = v46;
    sub_1C97AA878();
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1C9A36A7C;
    *(v44 + 24) = v46;
    v45 = (v48 + v47[10]);
    *v45 = &unk_1C9AD0E68;
    v45[1] = v44;
    swift_retain_n();
  }

  sub_1C98139E0();
}

uint64_t sub_1C9A22B84()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 272) = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C98905A0(v3);
}

uint64_t sub_1C9A22C08()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C9840CC0();

    return v4(0);
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A22D24()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A22DFC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A4C(v5);
  if (v0)
  {
    *(v3 + 328) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A22F00()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C9A38614();
  sub_1C98DA994(v2);
  if (v0)
  {

    *(v1 + 328) = v0;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1C9A387F8();

    sub_1C97D9AA4(v1 + 16);
    v7 = swift_setDeallocating();
    sub_1C9890A5C(v7);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C9A22FE8()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A2307C;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A2307C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A23194()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v2 = swift_initStackObject();
  sub_1C98ADDD4(v2);
  v3 = swift_initStackObject();
  sub_1C98ADE94(v3);
  sub_1C9A38648();
  sub_1C9A38630();
  v8 = sub_1C9A3836C(&dword_1C9AADE60);

  v4 = swift_task_alloc();
  v5 = sub_1C98ADF9C(v4);
  *v5 = v6;
  sub_1C97DA950(v5);

  return v8(v0);
}

uint64_t sub_1C9A2328C()
{
  sub_1C97AA884();
  v0[34] = v1;
  v2 = sub_1C9A91748();
  v0[35] = v2;
  sub_1C97BE2AC(v2);
  v0[36] = v3;
  v0[37] = swift_task_alloc();
  swift_task_alloc();
  sub_1C97DA928();
  v0[38] = v4;
  *v4 = v5;
  v6 = sub_1C98ADE1C(v4);

  return sub_1C98905A0(v6);
}

uint64_t sub_1C9A23368()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_1C97DA7BC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1C9A23494()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  *(v0 + 312) = inited;
  *(inited + 16) = *(v0 + 240);
  v2 = *(v0 + 48);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 128) = v2;
  type metadata accessor for XPCProxyDecoder(*&v2);
  v3 = swift_initStackObject();
  *(v0 + 320) = v3;
  v4 = *(v0 + 128);
  *(v3 + 16) = *(v0 + 112);
  *(v3 + 32) = v4;
  type metadata accessor for XPCDecoder(*&v4);
  v5 = swift_initStackObject();
  *(v0 + 328) = v5;
  *(v5 + 16) = inited;
  *(v5 + 24) = v3;
  sub_1C9A38648();
  sub_1C9A38630();
  v6 = swift_task_alloc();
  *(v0 + 336) = v6;
  *v6 = v0;
  sub_1C98ADD10(v6);

  return sub_1C988FB68();
}

uint64_t sub_1C9A235A8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  v3[43] = v5;
  v3[44] = v0;

  if (v0)
  {
    v3[45] = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A236B4()
{
  sub_1C97DAA1C();
  v1 = v0[44];
  v2 = v0[37];

  sub_1C98DA1C0(v2);
  if (v1)
  {

    v0[45] = v1;
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    v7 = v0[36];
    v6 = v0[37];
    v9 = v0[34];
    v8 = v0[35];

    (*(v7 + 32))(v9, v6, v8);
    sub_1C97D9AA4((v0 + 2));
    v10 = swift_setDeallocating();
    sub_1C9890A5C(v10);
    sub_1C97AA878();
    swift_deallocClassInstance();

    sub_1C97DA8DC();

    return v11();
  }
}

uint64_t sub_1C9A237F0()
{
  sub_1C97AA884();
  sub_1C97D9AA4(v0 + 16);
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9A2386C()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A23900;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A23900()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A23A18()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A23AF0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A4C(v5);
  if (v0)
  {
    *(v3 + 328) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A23BF4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C9A38614();
  sub_1C98DA93C(v2);
  if (v0)
  {

    *(v1 + 328) = v0;
    sub_1C97AA8AC();
    sub_1C97DABB0();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {

    sub_1C97D9AA4(v1 + 16);
    v7 = swift_setDeallocating();
    sub_1C9890A5C(v7);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C97DABB0();

    return v11(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C9A23CF4()
{
  sub_1C97AA884();
  sub_1C98AE274();
  v0 = swift_setDeallocating();
  sub_1C9890A5C(v0);
  sub_1C97AA878();
  swift_deallocClassInstance();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9A23D60()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A23DF4;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A23DF4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A23F0C()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A23FE4()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A4C(v5);
  if (v0)
  {
    *(v3 + 328) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A240E8()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C9A38614();
  sub_1C98DAA88(v2);
  if (v0)
  {

    *(v1 + 328) = v0;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1C9A387F8();

    sub_1C97D9AA4(v1 + 16);
    v7 = swift_setDeallocating();
    sub_1C9890A5C(v7);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C9A241D0()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 272) = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C98905A0(v3);
}

uint64_t sub_1C9A24254()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A2436C()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A24444()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A4C(v5);
  if (v0)
  {
    *(v3 + 328) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A24548()
{
  sub_1C98AE148();
  sub_1C97DA934();
  sub_1C9A38614();
  sub_1C98DA9F4(v2);
  if (v0)
  {

    *(v1 + 328) = v0;
    sub_1C97AA8AC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    sub_1C9A387F8();

    sub_1C97D9AA4(v1 + 16);
    v7 = swift_setDeallocating();
    sub_1C9890A5C(v7);
    sub_1C97AA878();
    swift_deallocClassInstance();
    sub_1C9840CC0();
    sub_1C98AE0F8();

    return v10(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C9A24630()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 272) = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C98905A0(v3);
}

uint64_t sub_1C9A246B4()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A247CC()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v2 = swift_initStackObject();
  sub_1C98ADDD4(v2);
  v3 = swift_initStackObject();
  sub_1C98ADE94(v3);
  sub_1C9A38648();
  sub_1C9A38630();
  v8 = sub_1C9A3836C(&dword_1C9AADEF8);

  v4 = swift_task_alloc();
  v5 = sub_1C98ADF9C(v4);
  *v5 = v6;
  sub_1C97DA950(v5);

  return v8(v0);
}

uint64_t sub_1C9A248C4()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 272) = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C98905A0(v3);
}

uint64_t sub_1C9A24948()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A24A60()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v2 = swift_initStackObject();
  sub_1C98ADDD4(v2);
  v3 = swift_initStackObject();
  sub_1C98ADE94(v3);
  sub_1C9A38648();
  sub_1C9A38630();
  v8 = sub_1C9A3836C(&dword_1C9AADED0);

  v4 = swift_task_alloc();
  v5 = sub_1C98ADF9C(v4);
  *v5 = v6;
  sub_1C97DA950(v5);

  return v8(v0);
}

uint64_t sub_1C9A24B58()
{
  sub_1C97AA884();
  swift_task_alloc();
  sub_1C97DA928();
  *(v0 + 272) = v1;
  *v1 = v2;
  v3 = sub_1C98ADE1C(v1);

  return sub_1C98905A0(v3);
}

uint64_t sub_1C9A24BDC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A24CF4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A24DCC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A1C(v5);
  if (v0)
  {
    *(v3 + 360) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A24ED0()
{
  sub_1C97AA95C();
  sub_1C9A3839C();
  sub_1C98ADEF4();
  v0 = swift_task_alloc();
  v1 = sub_1C9A3896C(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return v4();
}

uint64_t sub_1C9A24F64()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[42] = v1;

  if (!v1)
  {

    v5[43] = v0;
    v5[44] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A25070()
{
  sub_1C97AA884();

  sub_1C9A38978();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1C9A250DC()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A25170;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A25170()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A25288()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A25360()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A1C(v5);
  if (v0)
  {
    *(v3 + 360) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A25464()
{
  sub_1C97AA95C();
  sub_1C9A3839C();
  sub_1C98ADEF4();
  v0 = swift_task_alloc();
  v1 = sub_1C9A3896C(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return v4();
}

uint64_t sub_1C9A254F8()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A2558C;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A2558C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A256A4()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A2577C()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A1C(v5);
  if (v0)
  {
    *(v3 + 360) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A25880()
{
  sub_1C97AA95C();
  sub_1C9A3839C();
  sub_1C98ADEF4();
  v0 = swift_task_alloc();
  v1 = sub_1C9A3896C(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return v4();
}

uint64_t sub_1C9A25914()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_1C9A259A8;

  return sub_1C98905A0(v0 + 16);
}

uint64_t sub_1C9A259A8()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  if (v0)
  {
    sub_1C97DA91C();

    return v4();
  }

  else
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C9A25AC0()
{
  sub_1C97AA95C();
  sub_1C98ADF24();
  inited = swift_initStackObject();
  sub_1C98ADCBC(inited);
  v1 = swift_initStackObject();
  sub_1C98ADDD4(v1);
  v2 = swift_initStackObject();
  sub_1C98ADE94(v2);
  sub_1C9A38648();
  sub_1C9A38630();
  v3 = swift_task_alloc();
  v4 = sub_1C98ADF9C(v3);
  *v4 = v5;
  sub_1C98ADD10(v4);

  return sub_1C988FB68();
}

uint64_t sub_1C9A25B98()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  *v4 = *v1;
  sub_1C9A38A1C(v5);
  if (v0)
  {
    *(v3 + 360) = v0;
  }

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C9A25C9C()
{
  sub_1C97AA95C();
  sub_1C9A3839C();
  sub_1C98ADEF4();
  v0 = swift_task_alloc();
  v1 = sub_1C9A3896C(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return v4();
}

uint64_t sub_1C9A25D30()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[42] = v1;

  if (!v1)
  {

    v5[43] = v0;
    v5[44] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A25E3C()
{
  sub_1C97AA884();

  sub_1C97D9AA4((v0 + 2));
  v1 = swift_setDeallocating();
  sub_1C9890A5C(v1);
  sub_1C97AA878();
  swift_deallocClassInstance();
  v2 = v0[1];
  v4 = v0[43];
  v3 = v0[44];

  return v2(v3, v4);
}

uint64_t sub_1C9A25EC0()
{
  sub_1C97AA884();

  sub_1C9A38978();
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1C9A25F2C(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_1C9A91E68();
  return a1;
}

uint64_t sub_1C9A25F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 32); ; i += 5)
  {
    if (v6 == v5)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v8 = i[3];
    v9 = i[4];
    sub_1C97A5A8C(i, v8);
    if ((*(v9 + 40))(v8, v9) == a2 && v10 == a3)
    {
      break;
    }

    v12 = sub_1C9A93B18();

    if (v12)
    {
      goto LABEL_11;
    }

    ++v5;
  }

LABEL_11:
  v13 = v5;
LABEL_12:

  return v13;
}

uint64_t sub_1C9A2606C(uint64_t a1, double a2)
{
  type metadata accessor for SafeLock(a2);
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  return v2;
}

uint64_t sub_1C9A260C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_29;
      }

LABEL_15:
      result = a1 == a4;
      break;
    case 3:
      switch(a1)
      {
        case 1:
          v8 = a6 == 3 && a4 == 1;
          break;
        case 2:
          v8 = a6 == 3 && a4 == 2;
          break;
        case 3:
          v8 = a6 == 3 && a4 == 3;
          break;
        default:
          if (a6 != 3 || a5 | a4)
          {
            goto LABEL_29;
          }

          goto LABEL_30;
      }

      if (!v8 || a5 != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    default:
      if (a6)
      {
LABEL_29:
        result = 0;
      }

      else if (a1 == a4 && a2 == a5)
      {
LABEL_30:
        result = 1;
      }

      else
      {
        result = sub_1C9A93B18();
      }

      break;
  }

  return result;
}

uint64_t sub_1C9A261B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000021 && 0x80000001C9ADF040 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C9ADF070 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4964696C61766E69 && a2 == 0xE900000000000044;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x80000001C9ADF090 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C9ADF0B0 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x52646570706F7264 && a2 == 0xED0000746C757365)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C9A93B18();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C9A26400(char a1)
{
  result = 0x6F70707553746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x4964696C61766E69;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x52646570706F7264;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9A26500(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1C9A3894C();
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C9A2656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C97AEB94();
  v102 = v29;
  v103 = v27;
  v98 = v30;
  v99 = v31;
  sub_1C97A2CEC(&qword_1EC3D2820, &qword_1C9AD0D70);
  sub_1C97AE9C8();
  v88 = v33;
  v89 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v87 = v35;
  sub_1C97A2CEC(&qword_1EC3D2828, &qword_1C9AD0D78);
  sub_1C97AE9C8();
  v96 = v37;
  v97 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  sub_1C9A3890C(v39);
  sub_1C97A2CEC(&qword_1EC3D2830, &qword_1C9AD0D80);
  sub_1C97AE9C8();
  v93 = v41;
  v94 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  v92 = v43;
  sub_1C97A2CEC(&qword_1EC3D2838, &qword_1C9AD0D88);
  sub_1C97AE9C8();
  v90 = v45;
  v91 = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C97FB2D8();
  sub_1C97A2CEC(&qword_1EC3D2840, &qword_1C9AD0D90);
  sub_1C97AE9C8();
  v85 = v48;
  v86 = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v84 = v50;
  sub_1C97A2CEC(&qword_1EC3D2848, &qword_1C9AD0D98);
  sub_1C97AE9C8();
  v83 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97FB2C8();
  v53 = sub_1C97A2CEC(&qword_1EC3D2850, &qword_1C9AD0DA0);
  sub_1C97AE9C8();
  v82 = v54;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v81 - v56;
  sub_1C97A2CEC(&qword_1EC3D2858, &qword_1C9AD0DA8);
  sub_1C97AE9C8();
  v100 = v59;
  v101 = v58;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C98021C4();
  v61 = sub_1C9813668();
  sub_1C97BE20C(v61, v62);
  sub_1C9A36698();
  sub_1C9A388EC();
  sub_1C9A93DD8();
  switch(v99)
  {
    case 1:
      sub_1C9A36794();
      v65 = v92;
      v63 = v101;
      sub_1C9A38284();
      sub_1C9A93988();
      v66 = v94;
      sub_1C9A93A08();
      v67 = v93;
      goto LABEL_7;
    case 2:
      sub_1C9A36740();
      v65 = v95;
      v63 = v101;
      sub_1C9A38284();
      sub_1C9A93988();
      v66 = v97;
      sub_1C9A93A08();
      v67 = v96;
LABEL_7:
      (*(v67 + 8))(v65, v66);
      goto LABEL_8;
    case 3:
      switch(v102)
      {
        case 1:
          sub_1C9A36890();
          v75 = v101;
          sub_1C9A38284();
          sub_1C9A93988();
          v78 = sub_1C98EE738();
          v80(v78, v79);
          goto LABEL_13;
        case 2:
          sub_1C9A3683C();
          v74 = v84;
          v75 = v101;
          sub_1C9A38284();
          sub_1C9A93988();
          v77 = v85;
          v76 = v86;
          goto LABEL_11;
        case 3:
          sub_1C9A366EC();
          v74 = v87;
          v75 = v101;
          sub_1C9A38284();
          sub_1C9A93988();
          v77 = v88;
          v76 = v89;
LABEL_11:
          (*(v77 + 8))(v74, v76);
LABEL_13:
          v69 = sub_1C997121C();
          v71 = v75;
          break;
        default:
          sub_1C9A368E4();
          v68 = v101;
          sub_1C9A38284();
          sub_1C9A93988();
          (*(v82 + 8))(v57, v53);
          v69 = sub_1C997121C();
          v71 = v68;
          break;
      }

      v70(v69, v71);
      goto LABEL_15;
    default:
      sub_1C9A367E8();
      v63 = v101;
      sub_1C9A38284();
      sub_1C9A93988();
      v64 = v91;
      sub_1C9A939C8();
      (*(v90 + 8))(v28, v64);
LABEL_8:
      v72 = sub_1C997121C();
      v73(v72, v63);
LABEL_15:
      sub_1C97AEB5C();
      return;
  }
}

uint64_t sub_1C9A26BE8()
{
  sub_1C98AE1E8();
  switch(v1)
  {
    case 1:
      v3 = 4;
      goto LABEL_9;
    case 2:
      v3 = 5;
LABEL_9:
      MEMORY[0x1CCA91980](v3);
      v4 = v0;
      goto LABEL_10;
    case 3:
      switch(v0)
      {
        case 1:
          v4 = 1;
          break;
        case 2:
          v4 = 2;
          break;
        case 3:
          v4 = 6;
          break;
        default:
          v4 = 0;
          break;
      }

LABEL_10:
      result = MEMORY[0x1CCA91980](v4);
      break;
    default:
      MEMORY[0x1CCA91980](3);

      result = sub_1C9A92528();
      break;
  }

  return result;
}

uint64_t sub_1C9A26CC8()
{
  sub_1C9A38894();
  sub_1C97BE32C(v0);
  sub_1C9A382F8();
  sub_1C9A26BE8();
  return sub_1C9A93D18();
}

void sub_1C9A26D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C97AEB94();
  a26 = v29;
  a27 = v30;
  v122 = v27;
  v32 = v31;
  v120 = sub_1C97A2CEC(&qword_1EC3D2798, &qword_1C9AD0D28);
  sub_1C97AE9C8();
  v117 = v33;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v115 = v35;
  sub_1C97A2CEC(&qword_1EC3D27A0, &qword_1C9AD0D30);
  sub_1C97AE9C8();
  v113 = v37;
  v114 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  v119 = v39;
  sub_1C97A2CEC(&qword_1EC3D27A8, &qword_1C9AD0D38);
  sub_1C97AE9C8();
  v111 = v40;
  v112 = v41;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  sub_1C9A3890C(v43);
  v107 = sub_1C97A2CEC(&qword_1EC3D27B0, &qword_1C9AD0D40);
  sub_1C97AE9C8();
  v110 = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v116 = v46;
  sub_1C97A2CEC(&qword_1EC3D27B8, &qword_1C9AD0D48);
  sub_1C97AE9C8();
  v108 = v48;
  v109 = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C97AC02C();
  v118 = v50;
  sub_1C97A2CEC(&qword_1EC3D27C0, &qword_1C9AD0D50);
  sub_1C97AE9C8();
  v105 = v52;
  v106 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v100 - v54;
  v56 = sub_1C97A2CEC(&qword_1EC3D27C8, &qword_1C9AD0D58);
  sub_1C97AE9C8();
  v104 = v57;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C97AEA4C();
  v59 = sub_1C97A2CEC(&qword_1EC3D27D0, &unk_1C9AD0D60);
  sub_1C97AE9C8();
  v61 = v60;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = v100 - v63;
  v121 = v32;
  sub_1C98138A0(v32);
  sub_1C9A36698();
  v65 = v122;
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (v65)
  {
    goto LABEL_9;
  }

  v102 = v28;
  v101 = v56;
  v103 = v55;
  v66 = v118;
  v122 = v61;
  v67 = v64;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v69 == v70 >> 1)
  {
LABEL_8:
    sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v80 = v79;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v80 = &type metadata for CLAP.DomainError;
    sub_1C9A93868();
    sub_1C9A93638();
    sub_1C97AEB3C();
    (*(v81 + 104))(v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v122 + 8))(v67, v59);
LABEL_9:
    sub_1C97A592C(v121);
LABEL_10:
    sub_1C97CB094();
    sub_1C97AEB5C();
    return;
  }

  v100[1] = 0;
  if (v69 < (v70 >> 1))
  {
    v71 = *(v68 + v69);
    sub_1C98EE520();
    v73 = v72;
    v75 = v74;
    swift_unknownObjectRelease();
    if (v73 == v75 >> 1)
    {
      switch(v71)
      {
        case 1:
          a12 = 1;
          sub_1C9A36890();
          v85 = v103;
          sub_1C9A38120(&type metadata for CLAP.DomainError.LanguageAlignedAudioEncodingErrorCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v105 + 8))(v85, v106);
          v86 = sub_1C9A380A4();
          v87(v86);
          goto LABEL_18;
        case 2:
          a13 = 2;
          sub_1C9A3683C();
          sub_1C9A38120(&type metadata for CLAP.DomainError.UnsupportedEmbeddingTypeCodingKeys, &a13);
          swift_unknownObjectRelease();
          (*(v108 + 8))(v66, v109);
          v83 = sub_1C9A380A4();
          v84(v83);
          goto LABEL_18;
        case 3:
          a14 = 3;
          sub_1C9A367E8();
          sub_1C9A38120(&type metadata for CLAP.DomainError.InvalidIDCodingKeys, &a14);
          sub_1C9A938A8();
          v82 = v121;
          swift_unknownObjectRelease();
          v96 = sub_1C9A388C0();
          v97(v96);
          v98 = sub_1C9A38360();
          v99(v98);
          goto LABEL_19;
        case 4:
          a15 = 4;
          sub_1C9A36794();
          sub_1C9A38120(&type metadata for CLAP.DomainError.UnexpectedAudioEmbeddingSizeCodingKeys, &a15);
          goto LABEL_12;
        case 5:
          a16 = 5;
          sub_1C9A36740();
          sub_1C9A38120(&type metadata for CLAP.DomainError.UnexpectedTextEmbeddingSizeCodingKeys, &a16);
LABEL_12:
          sub_1C9A938E8();
          v82 = v121;
          swift_unknownObjectRelease();
          v92 = sub_1C98EE738();
          v93(v92);
          v94 = sub_1C9A38360();
          v95(v94);
          goto LABEL_19;
        case 6:
          a17 = 6;
          sub_1C9A366EC();
          sub_1C9A38120(&type metadata for CLAP.DomainError.DroppedResultCodingKeys, &a17);
          swift_unknownObjectRelease();
          v88 = sub_1C97AEB30();
          v89(v88);
          v90 = sub_1C9A380A4();
          v91(v90);
          goto LABEL_18;
        default:
          a11 = 0;
          sub_1C9A368E4();
          v76 = v102;
          sub_1C9A38120(&type metadata for CLAP.DomainError.NotSupportedCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v104 + 8))(v76, v101);
          v77 = sub_1C9A380A4();
          v78(v77);
LABEL_18:
          v82 = v121;
LABEL_19:
          sub_1C97A592C(v82);
          break;
      }

      goto LABEL_10;
    }

    v67 = v64;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9A276CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A261B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A276F4(uint64_t a1)
{
  v2 = sub_1C9A36698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27730(uint64_t a1)
{
  v2 = sub_1C9A36698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A2776C(uint64_t a1)
{
  v2 = sub_1C9A366EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A277A8(uint64_t a1)
{
  v2 = sub_1C9A366EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A277E4(uint64_t a1)
{
  v2 = sub_1C9A367E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27820(uint64_t a1)
{
  v2 = sub_1C9A367E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A2785C(uint64_t a1)
{
  v2 = sub_1C9A36890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27898(uint64_t a1)
{
  v2 = sub_1C9A36890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A278D4(uint64_t a1)
{
  v2 = sub_1C9A368E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27910(uint64_t a1)
{
  v2 = sub_1C9A368E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A2794C(uint64_t a1)
{
  v2 = sub_1C9A36794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27988(uint64_t a1)
{
  v2 = sub_1C9A36794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A279C4(uint64_t a1)
{
  v2 = sub_1C9A36740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27A00(uint64_t a1)
{
  v2 = sub_1C9A36740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A27A3C(uint64_t a1)
{
  v2 = sub_1C9A3683C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27A78(uint64_t a1)
{
  v2 = sub_1C9A3683C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A27B1C()
{
  sub_1C9A93CC8();
  sub_1C9A26BE8();
  return sub_1C9A93D18();
}

uint64_t CLAP.Detection.values.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C9A32C34();
  v4 = sub_1C9A3418C(&v7, (v3 + 32), v2, v1);

  sub_1C9A06CFC();
  sub_1C979B1D4(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t CLAP.Detection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = sub_1C9A32230(a1, a2);
  if ((v6 & 1) == 0)
  {
    v4 = 0;
LABEL_5:
    v7 = 1;
    return v4 | (v7 << 32);
  }

  v7 = 0;
  v4 = *(*(v3 + 56) + 4 * v5);
  return v4 | (v7 << 32);
}

uint64_t sub_1C9A27CB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69746365746564 && a2 == 0xEA0000000000736ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9A27D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A27CB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9A27D80(uint64_t a1)
{
  v2 = sub_1C9A34274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A27DBC(uint64_t a1)
{
  v2 = sub_1C9A34274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CLAP.Detection.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v21 = v20;
  sub_1C97A2CEC(&qword_1EC3D2400, &qword_1C9ACF930);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C98138A0(v21);
  sub_1C9A34274();

  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3D2410, &qword_1C9ACF938);
  sub_1C9A342C8(&unk_1EC3D2418);
  sub_1C9A38488();
  sub_1C9A93A18();

  v23 = sub_1C98B7720();
  v24(v23);
  sub_1C97AEB5C();
}

uint64_t CLAP.Detection.hashValue.getter(uint64_t a1)
{
  v1 = sub_1C97BE32C(a1);
  v9 = sub_1C98995AC(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13);
  sub_1C984A154(v9, v10);
  return sub_1C9A93D18();
}

void CLAP.Detection.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v22 = v21;
  v24 = v23;
  sub_1C97A2CEC(&qword_1EC3D2420, &unk_1C9ACF940);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97FB2C8();
  sub_1C98138A0(v22);
  sub_1C9A34274();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (!v20)
  {
    sub_1C97A2CEC(&qword_1EC3D2410, &qword_1C9ACF938);
    sub_1C9A342C8(&unk_1EC3D2428);
    sub_1C9A384DC();
    sub_1C9A938F8();
    v26 = sub_1C97E89F0();
    v27(v26);
    *v24 = a10;
  }

  sub_1C97A592C(v22);
  sub_1C9A3892C();
  sub_1C97AEB5C();
}

uint64_t sub_1C9A2814C()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C984A154(v3, v1);
  return sub_1C9A93D18();
}

uint64_t CLAP.BinaryDetection.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA91980](v2);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A28224()
{
  result = sub_1C9A93168();
  qword_1EC3D3488 = result;
  dword_1EC3D3490 = v1;
  unk_1EC3D3494 = v2;
  qword_1EC3D3498 = v3;
  return result;
}

uint64_t CLAP.AudioEmbedding.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C983B718(a1, v13);
  if (v2)
  {
    return sub_1C9A34334(a1);
  }

  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v6 = sub_1C99E3F3C(v14);
  sub_1C993973C(v14, &qword_1EC3CE010);
  v7 = type metadata accessor for CLAP.DetectorAudioFile(0);
  v8 = v6[2];
  if (v8 != 512)
  {

    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v12 = v8;
    v12[1] = 0;
    sub_1C9A384E8(v12, 1);
    swift_willThrow();
    return sub_1C9A34334(a1);
  }

  v9 = (a1 + *(v7 + 20));
  v11 = *v9;
  v10 = v9[1];

  result = sub_1C9A34334(a1);
  *a2 = v6;
  a2[1] = v11;
  a2[2] = v10;
  return result;
}

uint64_t sub_1C9A283B0(uint64_t a1)
{
  v2 = sub_1C9A343B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A283EC(uint64_t a1)
{
  v2 = sub_1C9A343B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

SoundAnalysis::CLAP::TextEmbedding __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLAP.TextEmbedding.init(from:)(SoundAnalysis::CLAP::DetectorString from)
{
  v4 = v1;
  v6 = *from.string._countAndFlagsBits;
  v5 = *(from.string._countAndFlagsBits + 8);
  v8 = *(from.string._countAndFlagsBits + 16);
  v7 = *(from.string._countAndFlagsBits + 24);
  v9 = sub_1C99E43FC(v3);
  if (v2)
  {
  }

  else
  {
    v10 = v9;
    v11 = sub_1C99E4540(v6, v5, v9);

    *v4 = v11;
    v4[1] = v8;
    v4[2] = v7;
  }

  result.name._object = v14;
  result.name._countAndFlagsBits = v13;
  result.embedding._rawValue = v12;
  return result;
}

uint64_t sub_1C9A285C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1C9807FAC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1C97CB094();

  return sub_1C9A93B18();
}

uint64_t sub_1C9A28654(uint64_t a1)
{
  v2 = sub_1C9A34404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A28690(uint64_t a1)
{
  v2 = sub_1C9A34404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9A28700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v22 = v21;
  v24 = v23;
  v26 = sub_1C993AF6C(v23, v25);
  sub_1C97A2CEC(v26, v27);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AEA4C();
  v29 = sub_1C97BE20C(v24, v24[3]);
  v22(v29);

  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9A38404(&qword_1EC3CE700);
  sub_1C9A38488();
  sub_1C9A93A18();

  if (!v20)
  {
    sub_1C97BE02C();
    sub_1C9A939C8();
  }

  v30 = sub_1C9A383D0();
  v31(v30);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t sub_1C9A28884(uint64_t a1)
{
  sub_1C97C80D0();
  sub_1C9A382F8();

  return sub_1C9A92528();
}

uint64_t sub_1C9A288D4(uint64_t a1)
{
  v1 = sub_1C97BE32C(a1);
  sub_1C98995AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1C97C80D0();
  sub_1C9A382F8();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C9A2895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v22 = v21;
  v24 = v23;
  v36 = v25;
  v27 = sub_1C993AF6C(v23, v26);
  sub_1C97A2CEC(v27, v28);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98021C4();
  v30 = sub_1C97BE20C(v24, v24[3]);
  v22(v30);
  sub_1C9A93DB8();
  if (v20)
  {
    sub_1C97A592C(v24);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9A38378(&qword_1EC3CBB00);
    sub_1C9A384DC();
    sub_1C9A938F8();
    v31 = sub_1C9A938A8();
    v33 = v32;
    v34 = sub_1C97BE31C();
    v35(v34);
    *v36 = a10;
    v36[1] = v31;
    v36[2] = v33;

    sub_1C97A592C(v24);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9A28B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 16);
  *&v8[72] = *v4;
  v9 = v6;
  sub_1C9A93CC8();
  a4(v8);
  return sub_1C9A93D18();
}

SoundAnalysis::CLAP::DetectorString __swiftcall CLAP.DetectorString.init(string:name:)(Swift::String string, Swift::String_optional name)
{
  sub_1C9A38894();
  v9 = v8;
  if (!v7)
  {

    v6 = v3;
    v7 = v2;
  }

  *v9 = v3;
  v9[1] = v2;
  v9[2] = v6;
  v9[3] = v7;
  result.name._object = v7;
  result.name._countAndFlagsBits = v6;
  result.string._object = v5;
  result.string._countAndFlagsBits = v4;
  return result;
}

uint64_t static CLAP.DetectorString.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C9A93B18(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1C97CB094();

      return sub_1C9A93B18();
    }
  }

  return result;
}

uint64_t sub_1C9A28CD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A28D9C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1C9A28DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A28CD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A28DF8(uint64_t a1)
{
  v2 = sub_1C9A34458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A28E34(uint64_t a1)
{
  v2 = sub_1C9A34458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CLAP.DetectorString.encode(to:)()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3D2468, &qword_1C9ACF978);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97BE20C(v2, v2[3]);
  sub_1C9A34458();
  sub_1C9A388E0();
  sub_1C9A93DD8();
  sub_1C97BE02C();
  sub_1C9A939C8();
  if (!v0)
  {
    sub_1C9A06CD8();
    sub_1C97BE02C();
    sub_1C9A939C8();
  }

  v4 = sub_1C9A383D0();
  v5(v4);
  sub_1C97BE538();
  sub_1C97AEB5C();
}

uint64_t CLAP.DetectorString.hash(into:)(uint64_t a1)
{
  sub_1C9A92528();
  sub_1C9A382F8();

  return sub_1C9A92528();
}

uint64_t CLAP.DetectorString.hashValue.getter(uint64_t a1)
{
  v1 = sub_1C97BE32C(a1);
  sub_1C98995AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void CLAP.DetectorString.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C97AEB94();
  v25 = v24;
  v27 = v26;
  v28 = sub_1C97A2CEC(&qword_1EC3D2478, &qword_1C9ACF980);
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C98021C4();
  sub_1C98138A0(v25);
  sub_1C9A34458();
  sub_1C9A388EC();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (v22)
  {
    sub_1C97A592C(v25);
  }

  else
  {
    sub_1C9A388A0();
    v32 = sub_1C9A938A8();
    v34 = v33;
    sub_1C9A06CD8();
    sub_1C9A388A0();
    v35 = sub_1C9A938A8();
    v37 = v36;
    v38 = v35;
    (*(v30 + 8))(v23, v28);
    *v27 = v32;
    v27[1] = v34;
    v27[2] = v38;
    v27[3] = v37;

    sub_1C97A592C(v25);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C9A29230()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1C9A93CC8();
  CLAP.DetectorString.hash(into:)(v4);
  return sub_1C9A93D18();
}

uint64_t CLAP.DetectorAudioFile.init(file:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9A38894();
  v8 = v7;
  sub_1C9A91558();
  sub_1C97DA940();
  (*(v9 + 32))(v8, v5);
  result = sub_1C9A38714();
  v12 = (v8 + v11);
  *v12 = v4;
  v12[1] = a3;
  return result;
}

uint64_t static CLAP.DetectorAudioFile.== infix(_:_:)()
{
  sub_1C98AE1E8();
  if ((sub_1C9A914E8() & 1) == 0)
  {
    return 0;
  }

  sub_1C9A38714();
  v3 = *(v1 + v2);
  v4 = *(v1 + v2 + 8);
  v5 = (v0 + v2);
  if (v3 == *v5 && v4 == v5[1])
  {
    return 1;
  }

  return sub_1C9A93B18();
}

uint64_t sub_1C9A29368(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A29438(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1C9A29460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A29368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A29488(uint64_t a1)
{
  v2 = sub_1C9A344AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A294C4(uint64_t a1)
{
  v2 = sub_1C9A344AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLAP.DetectorAudioFile.encode(to:)(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3D2480, &qword_1C9ACF988);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9A344AC();
  sub_1C9A388E0();
  sub_1C9A93DD8();
  sub_1C9A91558();
  sub_1C9A38054();
  sub_1C9A34500(v4);
  sub_1C9A38488();
  sub_1C9A93A18();
  if (!v1)
  {
    type metadata accessor for CLAP.DetectorAudioFile(0);
    sub_1C9A06CD8();
    sub_1C9A939C8();
  }

  v5 = sub_1C97AEB30();
  return v6(v5);
}

uint64_t CLAP.DetectorAudioFile.hash(into:)(uint64_t a1)
{
  sub_1C9A91558();
  sub_1C9A38054();
  sub_1C9A34500(v1);
  sub_1C9A92398();
  sub_1C9A38714();

  return sub_1C9A92528();
}

uint64_t CLAP.DetectorAudioFile.hashValue.getter(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9A91558();
  sub_1C9A38054();
  v2 = sub_1C9A34500(v1);
  sub_1C98995AC(v2, v3, v2, v4, v5, v6, v7, v8, v10, v11);
  sub_1C9A92398();
  sub_1C9A38714();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void CLAP.DetectorAudioFile.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C97AEB94();
  v24 = v23;
  v44 = v25;
  sub_1C9A91558();
  sub_1C97AE9C8();
  v45 = v27;
  v46 = v26;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AEAD8();
  v30 = v29 - v28;
  sub_1C97A2CEC(&unk_1EC3D2490, &unk_1C9ACF990);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97FB2D8();
  v32 = type metadata accessor for CLAP.DetectorAudioFile(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AEAD8();
  v36 = v35 - v34;
  sub_1C97BE20C(v24, v24[3]);
  sub_1C9A344AC();
  sub_1C9A93DB8();
  if (v22)
  {
    sub_1C97A592C(v24);
  }

  else
  {
    sub_1C9A38054();
    sub_1C9A34500(v37);
    sub_1C9A938F8();
    (*(v45 + 32))(v36, v30, v46);
    sub_1C9A06CD8();
    v38 = sub_1C9A938A8();
    v40 = v39;
    v41 = sub_1C99F1FF4();
    v42(v41);
    v43 = (v36 + *(v32 + 20));
    *v43 = v38;
    v43[1] = v40;
    sub_1C9A34540(v36, v44);
    sub_1C97A592C(v24);
    sub_1C9A34334(v36);
  }

  sub_1C9A3892C();
  sub_1C97AEB5C();
}

uint64_t sub_1C9A29A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1C9807FAC(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  sub_1C9A382F8();
  sub_1C9A3894C();

  return sub_1C9A93B18();
}

uint64_t sub_1C9A29ABC()
{
  sub_1C98AE1E8();
  v3 = v1 == 0x6E69646465626D65 && v2 == 0xE900000000000067;
  if (v3 || (sub_1C9A3894C(), (sub_1C9A93B18() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 1701667182 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C9A3894C();
    v6 = sub_1C9A93B18();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1C9A29B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v23 = v22;
  v24 = sub_1C97A2CEC(&qword_1EC3D2A28, &qword_1C9AD17D0);
  sub_1C97AE9C8();
  v26 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97FB2C8();
  sub_1C97BE20C(v23, v23[3]);
  sub_1C9A37D28();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9A38404(&qword_1EC3CE700);
  sub_1C9A38488();
  sub_1C9A93A18();
  if (!v20)
  {
    sub_1C9A939C8();
  }

  (*(v26 + 8))(v21, v24);
  sub_1C9A3892C();
  sub_1C97AEB5C();
}

uint64_t sub_1C9A29CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97C80D0();
  sub_1C97BE264();

  return sub_1C9A92528();
}

uint64_t sub_1C9A29D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9A38894();
  sub_1C97BE32C(v4);
  sub_1C97C80D0();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A29DA4(void *a1)
{
  sub_1C97A2CEC(&qword_1EC3D2A18, &qword_1C9AD17C8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  v4 = a1[3];
  sub_1C97BE20C(a1, v4);
  sub_1C9A37D28();
  sub_1C9A93DB8();
  if (!v1)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C9A38378(&qword_1EC3CBB00);
    sub_1C9A384DC();
    sub_1C9A938F8();
    v4 = v8;
    sub_1C9A938A8();
    v6 = sub_1C97E89F0();
    v7(v6);
  }

  sub_1C97A592C(a1);
  return v4;
}

uint64_t sub_1C9A29FC4(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9A91558();
  sub_1C9A34500(&qword_1EC3C6BA0);
  sub_1C9A92398();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

uint64_t sub_1C9A2A06C(uint64_t a1)
{
  v2 = sub_1C9A37D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A2A0A8(uint64_t a1)
{
  v2 = sub_1C9A37D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9A2A0E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C9A29DA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C9A2A14C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9A93CC8();
  sub_1C9A29CFC(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A2A1AC()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1C9A2A1F8(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1C9A2A278(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t _s13SoundAnalysis4CLAPV12AudioSessionV22binaryDetectionResults2id18detectionThreshold7Combine12AnyPublisherVyAC06BinaryG0Os5Error_pGSS_SftF_0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = sub_1C97A2CEC(&unk_1EC3D2900, &qword_1C9AD0E98);
  MEMORY[0x1EEE9AC00](v34);
  v33 = sub_1C97A2CEC(&qword_1EC3CC2E8, &qword_1C9AD0EA0);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v37 = sub_1C97A2CEC(&qword_1EC3D2910, &qword_1C9AD0EA8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - v13;
  v14 = sub_1C97A2CEC(&qword_1EC3D2918, &qword_1C9AD0EB0);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v30 - v16;
  v42 = *(v4 + *(v7 + 44));
  v17 = sub_1C97A2CEC(&qword_1EC3D2760, &qword_1C9AD0BF8);
  v18 = sub_1C9939700(&unk_1EC3D2920);
  MEMORY[0x1CCA8FD00](v17, v18);
  sub_1C9A36F4C();
  swift_allocObject();
  sub_1C9A347FC();
  sub_1C9939700(&unk_1EC3D2928);
  sub_1C9A93738();
  v19 = *(v8 + 32);
  v20 = v31;
  v21 = v33;
  v19(v31, v12, v33);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v19((v23 + v22), v20, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  *(v24 + 24) = v41;
  *(v24 + 32) = a3;
  v42 = sub_1C9A37FDC;
  v43 = v23;

  sub_1C97A2CEC(&qword_1EC3D2930, &qword_1C9AD0ED8);
  sub_1C9939700(&unk_1EC3D2938);
  v25 = v36;
  sub_1C9A93AD8();
  sub_1C9939700(&unk_1EC3D2940);
  sub_1C9A348A8();
  v26 = v35;
  sub_1C9A920D8();
  sub_1C993973C(v25, &qword_1EC3D2910);
  sub_1C9939700(&unk_1EC3D2948);
  v27 = v38;
  v28 = sub_1C9A91F28();
  (*(v39 + 8))(v26, v27);
  return v28;
}

uint64_t _s13SoundAnalysis4CLAPV11TextSessionV22binaryDetectionResults2id18detectionThreshold7Combine12AnyPublisherVyAC06BinaryG0Os5Error_pGSS_SftF_0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a2;
  v6 = sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
  v7 = v6 - 8;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = sub_1C97A2CEC(&unk_1EC3D2900, &qword_1C9AD0E98);
  MEMORY[0x1EEE9AC00](v34);
  v33 = sub_1C97A2CEC(&qword_1EC3CC2E8, &qword_1C9AD0EA0);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v37 = sub_1C97A2CEC(&qword_1EC3D2910, &qword_1C9AD0EA8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - v13;
  v14 = sub_1C97A2CEC(&qword_1EC3D2918, &qword_1C9AD0EB0);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v30 - v16;
  v42 = *(v4 + *(v7 + 44));
  v17 = sub_1C97A2CEC(&qword_1EC3D2760, &qword_1C9AD0BF8);
  v18 = sub_1C9939700(&unk_1EC3D2920);
  MEMORY[0x1CCA8FD00](v17, v18);
  sub_1C9A36F4C();
  swift_allocObject();
  sub_1C9A347FC();
  sub_1C9939700(&unk_1EC3D2928);
  sub_1C9A93738();
  v19 = *(v8 + 32);
  v20 = v31;
  v21 = v33;
  v19(v31, v12, v33);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v19((v23 + v22), v20, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  *(v24 + 24) = v41;
  *(v24 + 32) = a3;
  v42 = sub_1C9A36DD0;
  v43 = v23;

  sub_1C97A2CEC(&qword_1EC3D2930, &qword_1C9AD0ED8);
  sub_1C9939700(&unk_1EC3D2938);
  v25 = v36;
  sub_1C9A93AD8();
  sub_1C9939700(&unk_1EC3D2940);
  sub_1C9A348A8();
  v26 = v35;
  sub_1C9A920D8();
  sub_1C993973C(v25, &qword_1EC3D2910);
  sub_1C9939700(&unk_1EC3D2948);
  v27 = v38;
  v28 = sub_1C9A91F28();
  (*(v39 + 8))(v26, v27);
  return v28;
}

uint64_t _s13SoundAnalysis4CLAPV12AudioSessionV16detectionResultsAA16AnyAsyncSequenceVyAC9DetectionVGvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
  v4 = v3 - 8;
  v19[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = sub_1C97A2CEC(&unk_1EC3D2900, &qword_1C9AD0E98);
  MEMORY[0x1EEE9AC00](v21);
  v20 = sub_1C97A2CEC(&qword_1EC3CC2E8, &qword_1C9AD0EA0);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v20);
  v19[0] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v23 = *(v2 + *(v4 + 44));
  v10 = sub_1C97A2CEC(&qword_1EC3D2760, &qword_1C9AD0BF8);
  v11 = sub_1C9939700(&unk_1EC3D2920);
  MEMORY[0x1CCA8FD00](v10, v11);
  sub_1C9A36F4C();
  swift_allocObject();
  sub_1C9A347FC();
  sub_1C9939700(&unk_1EC3D2928);
  sub_1C9A93738();
  v12 = *(v5 + 32);
  v13 = v19[0];
  v14 = v20;
  v12(v19[0], v9, v20);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = v12(v16 + v15, v13, v14);
  v18 = v22;
  *v22 = sub_1C9A37FDC;
  v18[1] = v16;
  return result;
}

uint64_t _s13SoundAnalysis4CLAPV11TextSessionV16detectionResultsAA16AnyAsyncSequenceVyAC9DetectionVGvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
  v4 = v3 - 8;
  v19[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = sub_1C97A2CEC(&unk_1EC3D2900, &qword_1C9AD0E98);
  MEMORY[0x1EEE9AC00](v21);
  v20 = sub_1C97A2CEC(&qword_1EC3CC2E8, &qword_1C9AD0EA0);
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v20);
  v19[0] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v23 = *(v2 + *(v4 + 44));
  v10 = sub_1C97A2CEC(&qword_1EC3D2760, &qword_1C9AD0BF8);
  v11 = sub_1C9939700(&unk_1EC3D2920);
  MEMORY[0x1CCA8FD00](v10, v11);
  sub_1C9A36F4C();
  swift_allocObject();
  sub_1C9A347FC();
  sub_1C9939700(&unk_1EC3D2928);
  sub_1C9A93738();
  v12 = *(v5 + 32);
  v13 = v19[0];
  v14 = v20;
  v12(v19[0], v9, v20);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = v12(v16 + v15, v13, v14);
  v18 = v22;
  *v22 = sub_1C9A37FDC;
  v18[1] = v16;
  return result;
}

uint64_t sub_1C9A2B558(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = *a2;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1C9A2B584, 0, 0);
}

uint64_t sub_1C9A2B584()
{
  sub_1C97DA934();
  if (*(*(v0 + 40) + 16) && (v1 = sub_1C9A32230(*(v0 + 24), *(v0 + 32)), (v2 & 1) != 0))
  {
    **(v0 + 16) = *(*(*(v0 + 40) + 56) + 4 * v1) <= *(v0 + 48);
    sub_1C97DA8DC();

    return v3();
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = v5;
    *(v7 + 16) = 0;
    swift_willThrow();
    sub_1C97DA91C();
    v9 = v8;

    return v9();
  }
}

uint64_t CLAP.AudioSession.addDetector(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

uint64_t sub_1C9A2B6B4()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
  sub_1C9A38204();
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1C98D91C0;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t CLAP.AudioSession.removeDetector(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C97DA66C();
}

uint64_t sub_1C9A2B7AC()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
  sub_1C9A3817C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_1C9A3877C(v1);

  return v3(v2);
}

uint64_t sub_1C9A2B88C(uint64_t *a1, uint64_t *a2)
{
  sub_1C97A2CEC(a1, a2);
}

uint64_t CLAP.TextSession.addDetector(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return sub_1C97DA66C();
}

uint64_t sub_1C9A2B8E4()
{
  sub_1C98AE148();
  sub_1C97DA934();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v13 = *(v0 + 56);
  sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
  *(v0 + 16) = v13;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_1C9A38204();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  sub_1C97DA950(v3);
  sub_1C98AE0F8();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C9A2B9E0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t CLAP.TextSession.addDetectors(_:)()
{
  sub_1C97AA884();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C981E178(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C9A2BBA0(v1);
}

uint64_t sub_1C9A2BBA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

void sub_1C9A2BBB4(double a1)
{
  v2 = sub_1C99E43FC(a1);
  v1[4] = v2;
  v5 = v2;
  v6 = v1[2];
  v7 = *(v6 + 16);
  v1[5] = v7;
  v1[6] = 0;
  if (v7)
  {
    sub_1C9A38794(v6);

    sub_1C97E89F0();
    v8 = sub_1C9A92478();
    [v5 runOnInputText:v8 error:0];

    v9 = [v5 inferenceOutputs];
    v10 = [v9 CSUTextEmbedding];

    v11 = sub_1C9990AE8();
    v1[8] = v11;

    v12 = *(v11 + 16);
    if (v12 == 512)
    {
      sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
      sub_1C9A389A4();
      sub_1C9A381D0();
      v13 = swift_task_alloc();
      v1[9] = v13;
      *v13 = v1;
      sub_1C97DA950(v13);
      sub_1C9A388AC();
      sub_1C9A389C4();

      __asm { BRAA            X3, X16 }
    }

    v16 = v1[4];

    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v17 = v12;
    v17[1] = 0;
    sub_1C9A384E8(v17, 2);
    swift_willThrow();

    sub_1C97DA91C();
  }

  else
  {

    sub_1C97DA8DC();
  }

  sub_1C9A389C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C9A2BDD8()
{
  sub_1C97AA95C();
  sub_1C97DA70C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  sub_1C97DA7BC();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C9A2BF14()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48) + 1;
  *(v0 + 48) = v2;
  if (v2 == v1)
  {

    sub_1C97DA8DC();
  }

  else
  {
    v3 = *(v0 + 32);
    sub_1C9A38794(*(v0 + 16) + 32 * v2);

    sub_1C97E89F0();
    v4 = sub_1C9A92478();
    [v3 runOnInputText:v4 error:0];

    v5 = [v3 inferenceOutputs];
    v6 = [v5 CSUTextEmbedding];

    v7 = sub_1C9990AE8();
    *(v0 + 64) = v7;

    v8 = *(v7 + 16);
    if (v8 == 512)
    {
      sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
      sub_1C9A389A4();
      sub_1C9A381D0();
      v9 = swift_task_alloc();
      *(v0 + 72) = v9;
      *v9 = v0;
      sub_1C97DA950(v9);
      sub_1C9A388AC();
      sub_1C9A389C4();

      __asm { BRAA            X3, X16 }
    }

    v12 = *(v0 + 32);

    sub_1C99E4628();
    sub_1C97AA928();
    swift_allocError();
    *v13 = v8;
    v13[1] = 0;
    sub_1C9A384E8(v13, 2);
    swift_willThrow();

    sub_1C97DA91C();
  }

  sub_1C9A389C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C9A2C12C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v1();
}

uint64_t CLAP.TextSession.removeDetector(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1C97DA66C();
}

uint64_t sub_1C9A2C1A0()
{
  sub_1C97AA884();
  sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
  sub_1C9A3817C();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_1C9A3877C(v1);

  return v3(v2);
}

uint64_t sub_1C9A2C264()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

SoundAnalysis::CLAP::TextRequest __swiftcall CLAP.TextRequest.init(detectors:featurePrintOverlapFactor:)(Swift::OpaquePointer detectors, Swift::Double featurePrintOverlapFactor)
{
  *v2 = detectors;
  *(v2 + 8) = featurePrintOverlapFactor;
  result.featurePrintOverlapFactor = featurePrintOverlapFactor;
  result.detectorStrings = detectors;
  return result;
}

void sub_1C9A2C35C(double a1)
{
  v26 = *v1;
  if (*(*v1 + 16))
  {
    v3 = sub_1C99E43FC(a1);
    if (!v2)
    {
      v4 = v3;
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v7 = (v26 + 56);
      v25 = *(v26 + 16);
      while (1)
      {
        if (v25 == v5)
        {
          sub_1C97E9094(v6);

          return;
        }

        if (v5 >= *(v26 + 16))
        {
          break;
        }

        v9 = *(v7 - 1);
        v8 = *v7;

        v10 = sub_1C9A92478();
        [v4 runOnInputText:v10 error:0];

        v11 = [v4 inferenceOutputs];
        v12 = [v11 CSUTextEmbedding];

        v13 = sub_1C9990AE8();
        v14 = *(v13 + 16);
        if (v14 != 512)
        {

          sub_1C99E4628();
          sub_1C97AA928();
          swift_allocError();
          *v24 = v14;
          v24[1] = 0;
          sub_1C9A384E8(v24, 2);
          swift_willThrow();

          return;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C9A38458();
          sub_1C97E5C44(v18, v19, v20, v6);
          v6 = v21;
        }

        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          v22 = sub_1C97CE0F4(v15);
          sub_1C97E5C44(v22, v16 + 1, 1, v6);
          v6 = v23;
        }

        *(v6 + 16) = v16 + 1;
        v17 = (v6 + 24 * v16);
        v17[4] = v13;
        v17[5] = v9;
        v17[6] = v8;
        v7 += 4;
        ++v5;
      }

      __break(1u);
    }
  }

  else
  {
    sub_1C97E9094(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1C9A2C5D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F746365746564 && a2 == 0xEF73676E69727453;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C9ADF000 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A2C6A8(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x726F746365746564;
  }
}

uint64_t sub_1C9A2C6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A2C5D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A2C720(uint64_t a1)
{
  v2 = sub_1C9A345A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A2C75C(uint64_t a1)
{
  v2 = sub_1C9A345A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CLAP.TextRequest.encode(to:)()
{
  sub_1C98139FC();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3D24A0, &qword_1C9ACF9D8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C98138A0(v1);
  v3 = sub_1C9A345A4();

  sub_1C9A388E0();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3D24B0, &qword_1C9ACF9E0);
  sub_1C9A3464C(&unk_1EC3D24B8);
  sub_1C9A38488();
  sub_1C97BE02C();
  sub_1C9A93A18();

  if (!v3)
  {
    sub_1C9A38428();
    sub_1C97BE02C();
    sub_1C9A939E8();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97BE538();
  sub_1C98139E0();
}

void CLAP.TextRequest.init(from:)()
{
  sub_1C98139FC();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3D24C8, &qword_1C9ACF9E8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C98138A0(v2);
  sub_1C9A345A4();
  sub_1C9A388EC();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3D24B0, &qword_1C9ACF9E0);
    v6 = sub_1C9A3464C(&unk_1EC3D24D0);
    sub_1C9A3854C(v6);
    sub_1C9A38428();
    sub_1C9A388A0();
    sub_1C9A938C8();
    v8 = v7;
    v9 = sub_1C97FB2B8();
    v10(v9);
    *v4 = v11;
    v4[1] = v8;

    sub_1C97A592C(v2);
  }

  sub_1C97BE538();
  sub_1C98139E0();
}

void sub_1C9A2CB48()
{
  sub_1C97AEB94();
  v30 = type metadata accessor for CLAP.DetectorAudioFile(0);
  sub_1C97AE9C8();
  v34 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  v8 = *v0;
  if (!*(*v0 + 16))
  {
    sub_1C97E90B4(MEMORY[0x1E69E7CC0]);
    goto LABEL_15;
  }

  v9 = objc_allocWithZone(type metadata accessor for SNCreateFeaturePrintRequest(v4));
  v10 = sub_1C997DD94();
  sub_1C997E82C(v10, v32);

  if (v1)
  {
LABEL_15:
    sub_1C97AEB5C();
    return;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v29 = *(v8 + 16);
  for (i = v8; ; v8 = i)
  {
    if (v29 == v11)
    {
      sub_1C97E90B4(v12);

      sub_1C97A592C(v32);
      goto LABEL_15;
    }

    if (v11 >= *(v8 + 16))
    {
      break;
    }

    sub_1C9A34540(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v11, v7);
    sub_1C983B718(v7, v31);
    v33[0] = v31[0];
    v33[1] = v31[1];
    v33[2] = v31[2];
    v33[3] = v31[3];
    v13 = sub_1C99E3F3C(v33);
    sub_1C993973C(v33, &qword_1EC3CE010);
    v14 = v13[2];
    if (v14 != 512)
    {

      sub_1C99E4628();
      sub_1C97AA928();
      swift_allocError();
      *v27 = v14;
      v27[1] = 0;
      sub_1C9A384E8(v27, 1);
      swift_willThrow();
      sub_1C9A34334(v7);
      sub_1C97A592C(v32);

      goto LABEL_15;
    }

    v15 = (v7 + *(v30 + 20));
    v16 = *v15;
    v17 = v15[1];

    sub_1C9A34334(v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1C9A38458();
      sub_1C97E5C60(v21, v22, v23, v12);
      v12 = v24;
    }

    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      v25 = sub_1C97CE0F4(v18);
      sub_1C97E5C60(v25, v19 + 1, 1, v12);
      v12 = v26;
    }

    *(v12 + 16) = v19 + 1;
    v20 = (v12 + 24 * v19);
    v20[4] = v13;
    v20[5] = v16;
    v20[6] = v17;
    ++v11;
  }

  __break(1u);
}

uint64_t sub_1C9A2CE64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F746365746564 && a2 == 0xED000073656C6946;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C9ADF000 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C9A2CF3C(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x726F746365746564;
  }
}

uint64_t sub_1C9A2CF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A2CFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9A2CE64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9A2D000(uint64_t a1)
{
  v2 = sub_1C9A34714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9A2D03C(uint64_t a1)
{
  v2 = sub_1C9A34714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CLAP.AudioRequest.encode(to:)()
{
  sub_1C98139FC();
  v1 = v0;
  sub_1C97A2CEC(&qword_1EC3D24E0, &qword_1C9ACF9F0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEA4C();
  sub_1C98138A0(v1);
  v3 = sub_1C9A34714();

  sub_1C9A388E0();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C97A2CEC(&qword_1EC3D24F0, &qword_1C9ACF9F8);
  sub_1C9A34768(&unk_1EC3D24F8);
  sub_1C9A38488();
  sub_1C97BE02C();
  sub_1C9A93A18();

  if (!v3)
  {
    sub_1C9A38428();
    sub_1C97BE02C();
    sub_1C9A939E8();
  }

  v4 = sub_1C97AEB30();
  v5(v4);
  sub_1C97BE538();
  sub_1C98139E0();
}

uint64_t sub_1C9A2D220(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = *(v2 + 8);
  a2(a1, *v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x1CCA919B0](*&v4);
}

uint64_t sub_1C9A2D28C(void (*a1)(_BYTE *, void))
{
  v3 = *v1;
  v4 = v1[1];
  sub_1C97BE32C(a1);
  a1(v7, *&v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1CCA919B0](*&v5);
  return sub_1C9A93D18();
}

void CLAP.AudioRequest.init(from:)()
{
  sub_1C98139FC();
  v2 = v1;
  v4 = v3;
  sub_1C97A2CEC(&qword_1EC3D2508, &unk_1C9ACFA00);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C98138A0(v2);
  sub_1C9A34714();
  sub_1C9A388EC();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (v0)
  {
    sub_1C97A592C(v2);
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3D24F0, &qword_1C9ACF9F8);
    v6 = sub_1C9A34768(&unk_1EC3D2510);
    sub_1C9A3854C(v6);
    sub_1C9A38428();
    sub_1C9A388A0();
    sub_1C9A938C8();
    v8 = v7;
    v9 = sub_1C97FB2B8();
    v10(v9);
    *v4 = v11;
    v4[1] = v8;

    sub_1C97A592C(v2);
  }

  sub_1C97BE538();
  sub_1C98139E0();
}

uint64_t sub_1C9A2D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = v4[1];
  v9 = *v4;
  v10 = v6;
  sub_1C9A93CC8();
  a4(v8);
  return sub_1C9A93D18();
}

uint64_t sub_1C9A2D558@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = sub_1C9A92348();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();
    v8 = [v7 featureVector];
    v9 = sub_1C9990AE8();

    v10 = *(v9 + 16);
    if (v10 != 512)
    {

      sub_1C99E4628();
      swift_allocError();
      *v45 = v10;
      *(v45 + 8) = 0;
      *(v45 + 16) = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v46 = a3;
    v11 = *(a2 + 16);
    v12 = a2 + 32;
    if (!v11)
    {
LABEL_14:

      result = swift_unknownObjectRelease();
      *v46 = v5;
      return result;
    }

    while (1)
    {
      sub_1C97D9AF8(v12, v49);
      v13 = v50;
      v14 = v51;
      sub_1C97A5A8C(v49, v50);
      v15 = (*(v14 + 32))(v13, v14);
      v16 = v15;
      if (*(v15 + 16) != 512)
      {

        sub_1C989DCAC();
        swift_allocError();
        swift_willThrow();

        swift_unknownObjectRelease();
        return sub_1C97A592C(v49);
      }

      v47 = v12;
      LODWORD(__C) = 0;
      vDSP_dotpr((v15 + 32), 1, (v9 + 32), 1, &__C, 0x200uLL);
      v17 = *&__C;
      LODWORD(__C) = 0;
      vDSP_dotpr((v16 + 32), 1, (v16 + 32), 1, &__C, 0x200uLL);
      v18 = *&__C;
      LODWORD(__C) = 0;
      v19 = v9;
      vDSP_dotpr((v9 + 32), 1, (v9 + 32), 1, &__C, 0x200uLL);
      v20 = *&__C;

      v21 = sqrt(v18 * v20);
      v22 = v50;
      v23 = v51;
      sub_1C97A5A8C(v49, v50);
      v24 = (*(v23 + 40))(v22, v23);
      v26 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      __C = v5;
      v27 = sub_1C9A32230(v24, v26);
      if (__OFADD__(v5[2], (v28 & 1) == 0))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v29 = v27;
      v30 = v28;
      sub_1C97A2CEC(&qword_1EC3D28F8, &qword_1C9AD0E70);
      if (sub_1C9A93748())
      {
        v31 = sub_1C9A32230(v24, v26);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_1C9A93BF8();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v33 = v21;
      v5 = __C;
      v34 = v17 / v33;
      if (v30)
      {
        *(__C[7] + 4 * v29) = v34;
      }

      else
      {
        __C[(v29 >> 6) + 8] |= 1 << v29;
        v35 = (v5[6] + 16 * v29);
        *v35 = v24;
        v35[1] = v26;
        *(v5[7] + 4 * v29) = v34;
        v36 = v5[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_22;
        }

        v5[2] = v38;
      }

      sub_1C97A592C(v49);
      v12 = v47 + 40;
      --v11;
      v9 = v19;
      if (!v11)
      {
        goto LABEL_14;
      }
    }
  }

  if (qword_1EC3C5520 != -1)
  {
LABEL_23:
    swift_once();
  }

  v40 = sub_1C9A91B58();
  sub_1C97BFF6C(v40, qword_1EC3D3108);
  v41 = sub_1C9A91B38();
  v42 = sub_1C9A92FC8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1C9788000, v41, v42, "CLAP Recieved a result other than SNFeaturePrint from SNCreateFeaturePrintRequest", v43, 2u);
    MEMORY[0x1CCA93280](v43, -1, -1);
  }

  sub_1C99E4628();
  swift_allocError();
  *v44 = xmmword_1C9A9C440;
  *(v44 + 16) = 3;
  return swift_willThrow();
}

double sub_1C9A2DA94@<D0>(uint64_t *a1@<X8>)
{
  sub_1C99E4628();
  *a1 = swift_allocError();
  *&result = 3;
  *v3 = xmmword_1C9ACF910;
  *(v3 + 16) = 3;
  return result;
}

uint64_t sub_1C9A2DAE8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  type metadata accessor for CLAP.DetectorAudioFile(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9A2DB78, 0, 0);
}

uint64_t sub_1C9A2DB78()
{
  v15 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  sub_1C9A91E68();
  sub_1C9A34540(v2, v1);
  CLAP.AudioEmbedding.init(from:)(v1, v14);
  v4 = v14[0];
  v3 = v14[1];
  v5 = v14[2];
  v6 = *(v0 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C9A38458();
    sub_1C97E6D9C();
    v6 = v12;
  }

  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_1C97CE0F4(v7);
    sub_1C97E6D9C();
    v6 = v13;
  }

  *(v0 + 40) = &type metadata for CLAP.AudioEmbedding;
  v9 = sub_1C97F0590();
  *(v0 + 16) = v4;
  *(v0 + 48) = v9;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v6 + 16) = v8 + 1;
  sub_1C97F0778((v0 + 16), v6 + 40 * v8 + 32);
  *(v0 + 64) = v6;
  sub_1C9A91E58();

  sub_1C97DA8DC();

  return v10();
}

uint64_t sub_1C9A2DCF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  sub_1C9A91E68();
  v7 = sub_1C99E43FC(v6);
  if (!v1)
  {
    v8 = v7;
    v9 = sub_1C99E4540(v2, v3, v7);

    v11 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C97E6D9C();
      v11 = v13;
    }

    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1C97E6D9C();
      v11 = v14;
    }

    v17 = &type metadata for CLAP.TextEmbedding;
    *&v15 = v9;
    *(&v15 + 1) = v5;
    v18 = sub_1C9A34CC8();
    v16 = v4;
    *(v11 + 16) = v12 + 1;
    sub_1C97F0778(&v15, v11 + 40 * v12 + 32);
    *&v15 = v11;
    sub_1C9A91E58();
  }
}

uint64_t sub_1C9A2DE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9A2DE5C, 0, 0);
}

uint64_t sub_1C9A2DE5C()
{
  sub_1C97DAA1C();
  sub_1C9A91E68();
  v1 = *(v0 + 56);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C9A38458();
    sub_1C97E6D9C();
    v1 = v7;
  }

  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 >= v2 >> 1)
  {
    sub_1C97CE0F4(v2);
    sub_1C97E6D9C();
    v1 = v8;
  }

  v4 = *(v0 + 80);
  v9 = *(v0 + 64);
  *(v0 + 40) = &type metadata for CLAP.TextEmbedding;
  *(v0 + 48) = sub_1C9A34CC8();
  *(v0 + 16) = v9;
  *(v0 + 32) = v4;
  *(v1 + 16) = v3 + 1;
  sub_1C97F0778((v0 + 16), v1 + 40 * v3 + 32);
  *(v0 + 16) = v1;
  sub_1C9A91E58();

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C9A2DF94(uint64_t a1, uint64_t a2)
{
  sub_1C9A91E68();

  result = sub_1C9A33070(&v6, a1, a2);
  v5 = *(v6 + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C97EFB28(result, v5);
    sub_1C9A91E58();
  }

  return result;
}

uint64_t sub_1C9A2E02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1C9A91748();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1C9A91AA8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9A2E184, 0, 0);
}

uint64_t sub_1C9A2E184()
{
  v46 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    sub_1C9A38468(&qword_1EC3C57A8);
  }

  v1 = sub_1C9A91AD8();
  sub_1C97BFF6C(v1, qword_1EC3D3120);
  sub_1C97BE264();
  sub_1C9A36F4C();

  sub_1C9A91A98();
  v2 = sub_1C9A91AB8();
  sub_1C9A93088();

  v3 = sub_1C9A93238();
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  if (v3)
  {
    v7 = sub_1C9A38660();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v7 = 136315394;
    v8 = sub_1C9A92338();
    v10 = v9;
    v39 = v6;
    v11 = sub_1C9849140(v8, v9, &v45);

    v12 = sub_1C9A384F4();
    v13(v12);
    sub_1C993973C(v4, &qword_1EC3C9900);
    sub_1C9A3808C();
    sub_1C9A34500(v14);
    sub_1C9A93A98();
    v15 = sub_1C9A386F0();
    v16(v15);
    v17 = sub_1C9849140(v11, v10, &v45);

    *(v7 + 14) = v17;
    v18 = v37;
    v19 = sub_1C9A91A88();
    sub_1C9A38870(&dword_1C9788000, v20, v21, v19, "ClientReadResult_CLAP", "{text detections:%s,workloadID:%s}", v22, v23, v37, v39, v42, *v44, v44[4]);
    sub_1C9A389FC(v24, v25, v26, v27, v28, v29, v30, v31, v38, v40, v43);
    sub_1C9840CEC();
    sub_1C9840CEC();

    (*(v5 + 8))(v18, v41);
  }

  else
  {
    sub_1C993973C(v0[11], &qword_1EC3C9900);

    v32 = sub_1C9813668();
    v34(v32, v33);
  }

  sub_1C9A38984();

  sub_1C97DA91C();

  return v35();
}

uint64_t sub_1C9A2E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1C9A91748();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1C9A91AA8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C9A2E578, 0, 0);
}

uint64_t sub_1C9A2E578()
{
  v46 = v0;
  if (qword_1EC3C57A8 != -1)
  {
    sub_1C9A38468(&qword_1EC3C57A8);
  }

  v1 = sub_1C9A91AD8();
  sub_1C97BFF6C(v1, qword_1EC3D3120);
  sub_1C97BE264();
  sub_1C9A36F4C();

  sub_1C9A91A98();
  v2 = sub_1C9A91AB8();
  sub_1C9A93088();

  v3 = sub_1C9A93238();
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  if (v3)
  {
    v7 = sub_1C9A38660();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v7 = 136315394;
    v8 = sub_1C9A92338();
    v10 = v9;
    v39 = v6;
    v11 = sub_1C9849140(v8, v9, &v45);

    v12 = sub_1C9A384F4();
    v13(v12);
    sub_1C993973C(v4, &qword_1EC3C9908);
    sub_1C9A3808C();
    sub_1C9A34500(v14);
    sub_1C9A93A98();
    v15 = sub_1C9A386F0();
    v16(v15);
    v17 = sub_1C9849140(v11, v10, &v45);

    *(v7 + 14) = v17;
    v18 = v37;
    v19 = sub_1C9A91A88();
    sub_1C9A38870(&dword_1C9788000, v20, v21, v19, "ClientReadResult_CLAP", "{text detections:%s,workloadID:%s}", v22, v23, v37, v39, v42, *v44, v44[4]);
    sub_1C9A389FC(v24, v25, v26, v27, v28, v29, v30, v31, v38, v40, v43);
    sub_1C9840CEC();
    sub_1C9840CEC();

    (*(v5 + 8))(v18, v41);
  }

  else
  {
    sub_1C993973C(v0[11], &qword_1EC3C9908);

    v32 = sub_1C9813668();
    v34(v32, v33);
  }

  sub_1C9A38984();

  sub_1C97DA91C();

  return v35();
}

uint64_t sub_1C9A2E814()
{
  sub_1C97AA884();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1C9A91748();
  v0[6] = v5;
  sub_1C97BE2AC(v5);
  v0[7] = v6;
  v0[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  sub_1C97DA950(v7);

  return sub_1C988FC80();
}

uint64_t sub_1C9A2E8F8()
{
  sub_1C98AE148();
  v17 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[10] = v1;
  v5[11] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0C60);
    v16 = v13;
    v14 = swift_task_alloc();
    v5[12] = v14;
    *v14 = v7;
    sub_1C98ADD10(v14);

    return v16();
  }
}

uint64_t sub_1C9A2EA58()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C9A2EB58()
{
  sub_1C97AA95C();
  v1 = v0[13];
  v2 = v0[2];
  v4 = type metadata accessor for CLAP.Session(0, v0[4], v0[5], v3);
  v0[15] = v4;
  *(v2 + *(v4 + 36)) = v1;
  v7 = sub_1C9A3836C(&dword_1C9AD0C68);

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  sub_1C9A386C8(v5);

  return v7();
}

uint64_t sub_1C9A2EC24()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[17] = v1;

  if (!v1)
  {
    v5[18] = v0;
    v5[19] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A2ED28()
{
  sub_1C98AE148();
  v10 = v3;
  sub_1C97DA934();
  sub_1C9A386B8();
  sub_1C97AA878();
  v4 = swift_allocObject();
  sub_1C9A38854(v4, v1[9]);
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AD0C78;
  *(v5 + 24) = v4;
  v6 = (v2 + *(v0 + 40));
  *v6 = &unk_1C9AD0C88;
  v6[1] = v5;
  sub_1C98ADEF4();
  v7 = swift_task_alloc();
  v1[10].i64[0] = v7;
  *v7 = v1;
  sub_1C9A386C8(v7);

  return v9();
}

uint64_t sub_1C9A2EE20()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[21] = v1;

  if (!v1)
  {
    v5[22] = v0;
    v5[23] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A2EF24()
{
  sub_1C97AA95C();
  v1 = *(v0 + 136);
  sub_1C9A38838();

  if (!v1)
  {
    sub_1C9A38238();
  }

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9A2EFA8()
{
  sub_1C98AE148();
  v9 = v3;
  sub_1C97DA934();
  sub_1C9A386B8();
  sub_1C97AA878();
  v4 = swift_allocObject();
  sub_1C9A38854(v4, v1[11]);
  v5 = (v2 + *(v0 + 48));
  *v5 = &unk_1C9AD0CA0;
  v5[1] = v4;
  sub_1C98ADEF4();
  v6 = swift_task_alloc();
  v1[12].i64[0] = v6;
  *v6 = v1;
  sub_1C9A386C8(v6);

  return v8();
}

uint64_t sub_1C9A2F07C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[25] = v1;

  if (!v1)
  {
    v5[26] = v0;
    v5[27] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A2F180()
{
  sub_1C97AA95C();
  v1 = *(v0 + 136);
  sub_1C9A38838();

  if (!v1)
  {
    sub_1C9A38238();
  }

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9A2F208()
{
  sub_1C98AE148();
  v13 = v3;
  sub_1C97DA934();
  sub_1C9A386B8();
  sub_1C97AA878();
  v4 = swift_allocObject();
  sub_1C9A38854(v4, v1[13]);
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AD0CB8;
  *(v5 + 24) = v4;
  v6 = (v2 + *(v0 + 52));
  *v6 = &unk_1C9AD0CC8;
  v6[1] = v5;
  sub_1C981E080(&unk_1C9AD0CD0);
  v12 = v7;
  swift_task_alloc();
  sub_1C97DA928();
  v1[14].i64[0] = v8;
  *v8 = v9;
  v8[1] = sub_1C9A2F30C;
  v10 = v1[4].i64[0];

  return v12(v10);
}

uint64_t sub_1C9A2F30C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C981E01C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C9A2F404()
{
  sub_1C97AA95C();
  v1 = *(v0 + 136);
  sub_1C9A38838();

  if (!v1)
  {
    sub_1C9A38238();
  }

  sub_1C9A38814();

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C9A2F490()
{
  sub_1C97DA934();
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[2];

  (*(v3 + 32))(v5, v2, v4);
  v6 = (v5 + *(v1 + 44));
  *v6 = &unk_1C9AD0CD8;
  v6[1] = 0;

  sub_1C97DA8DC();

  return v7();
}

uint64_t sub_1C9A2F550()
{
  sub_1C97AA884();

  sub_1C9A38238();
  sub_1C9A38814();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A2F5EC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A2F650()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A2F6C0(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1C98D91C0;

  return v6(v3 + 2);
}

uint64_t sub_1C9A2F7BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1C9A2C264;

  return v7(v4 + 2);
}

uint64_t sub_1C9A2F8D4()
{
  sub_1C97AA95C();
  sub_1C99E4628();
  sub_1C97AA928();
  swift_allocError();
  *v0 = 0;
  v0[1] = 0;
  sub_1C9A384E8(v0, 3);
  swift_willThrow();
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C9A2F958(uint64_t a1, int *a2)
{
  sub_1C99DC5A4();
  v5 = *(v2 + a2[9]);
  v32 = sub_1C97A2CEC(&qword_1EC3D2760, &qword_1C9AD0BF8);
  v33 = sub_1C9A35C04();
  v30 = v5;

  sub_1C99DC674(&v30, v6);
  if (!v3)
  {
    sub_1C97A592C(&v30);
    v7 = (v2 + a2[10]);
    v9 = *v7;
    v8 = v7[1];
    sub_1C97AA878();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_1C97AA878();
    v11 = swift_allocObject();
    *(v11 + 16) = &unk_1C9AD0C08;
    *(v11 + 24) = v10;
    v12 = sub_1C97A2CEC(&qword_1EC3D2770, &qword_1C9AD0C20);
    v32 = v12;
    v13 = sub_1C9A3618C();
    v33 = v13;
    v30 = &unk_1C9AD0C18;
    v31 = v11;
    sub_1C97A5A8C(&v30, v12);
    v28 = v12;
    v29 = *(v13 + 8);
    sub_1C981CDF0(v27);
    sub_1C97AEB3C();
    (*(v14 + 16))();

    sub_1C99DC674(v27, v15);

    sub_1C97A592C(v27);
    sub_1C97A592C(&v30);
    v16 = (v2 + a2[12]);
    v18 = *v16;
    v17 = v16[1];
    sub_1C97AA878();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    v20 = sub_1C97A2CEC(&qword_1EC3D2780, &qword_1C9AD0C38);
    v32 = v20;
    v21 = sub_1C9A362B0();
    v33 = v21;
    v30 = &unk_1C9AD0C30;
    v31 = v19;
    sub_1C97A5A8C(&v30, v20);
    v28 = v20;
    v29 = *(v21 + 8);
    sub_1C981CDF0(v27);
    sub_1C97AEB3C();
    (*(v22 + 16))();

    sub_1C99DC674(v27, v23);
    sub_1C97A592C(v27);
    sub_1C97A592C(&v30);
    v32 = sub_1C9A91748();
    v33 = &off_1F494ACE0;
    sub_1C981CDF0(&v30);
    sub_1C97AEB3C();
    v26 = (*(v25 + 16))();
    sub_1C99DC674(&v30, v26);
  }

  return sub_1C97A592C(&v30);
}

uint64_t sub_1C9A2FC8C(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C97DA5D0;

  return v7(v3, v4);
}

uint64_t sub_1C9A2FD88()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C9A38274();

  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C9A38488();
  sub_1C97DABB0();

  return sub_1C9A2E814();
}

uint64_t sub_1C9A2FE4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9A2FD88();
}

uint64_t sub_1C9A2FEFC()
{
  sub_1C99DC5A4();
  v2 = sub_1C9A91428();
  v3 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E6158];
  v14 = &off_1F494AB80;
  v11 = v2;
  v12 = v4;
  sub_1C99DC674(&v11, v5);
  if (!v1)
  {
    sub_1C97A592C(&v11);
    v6 = (v0 + *(type metadata accessor for CLAP.DetectorAudioFile(0) + 20));
    v8 = *v6;
    v7 = v6[1];
    v13 = v3;
    v14 = &off_1F494AB80;
    v11 = v8;
    v12 = v7;

    sub_1C99DC674(&v11, v9);
  }

  return sub_1C97A592C(&v11);
}

uint64_t sub_1C9A2FFCC()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  sub_1C97DA950(v3);

  return sub_1C988FC80();
}

uint64_t sub_1C9A30064()
{
  sub_1C98AE148();
  v17 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[5] = v1;
  v5[6] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF8);
    v16 = v13;
    v14 = swift_task_alloc();
    v5[7] = v14;
    *v14 = v7;
    sub_1C98ADD10(v14);

    return v16();
  }
}

uint64_t sub_1C9A301C4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = v1;

  if (!v1)
  {
    v5[9] = v0;
    v5[10] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A302C8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A30324()
{
  sub_1C97AA884();
  sub_1C9A91468();

  sub_1C981E080(&unk_1C9AD0CF8);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1C9A303D4;

  return v4();
}

uint64_t sub_1C9A303D4()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[12] = v1;

  if (!v1)
  {
    v5[13] = v0;
    v5[14] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A304D8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A30540()
{
  sub_1C97AA95C();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[2];

  sub_1C9A38714();
  v5 = (v3 + v4);
  *v5 = v1;
  v5[1] = v2;
  sub_1C97DA8DC();

  return v6();
}

uint64_t sub_1C9A305BC()
{
  sub_1C97AA884();
  v1 = *(v0 + 16);

  sub_1C9A91558();
  sub_1C97DA940();
  (*(v2 + 8))(v1);
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9A3066C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9A2FFCC();
}

uint64_t sub_1C9A3070C()
{
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];

  sub_1C99DC5A4();
  v6 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F494AB80;
  v10 = v3;
  v11 = v2;
  sub_1C99DC674(&v10, v7);
  if (!v1)
  {
    sub_1C97A592C(&v10);
    v12 = v6;
    v13 = &off_1F494AB80;
    v10 = v5;
    v11 = v4;

    sub_1C99DC674(&v10, v8);
  }

  return sub_1C97A592C(&v10);
}

uint64_t sub_1C9A307D4()
{
  sub_1C97AA884();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  sub_1C97DA950(v2);

  return sub_1C988FC80();
}

uint64_t sub_1C9A30860()
{
  sub_1C98AE148();
  v17 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[8] = v1;
  v5[9] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF8);
    v16 = v13;
    v14 = swift_task_alloc();
    v5[10] = v14;
    *v14 = v7;
    sub_1C98ADD10(v14);

    return v16();
  }
}

uint64_t sub_1C9A309C0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  v3[11] = v9;
  v3[12] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF8);
    v16 = v13;
    v14 = swift_task_alloc();
    v3[13] = v14;
    *v14 = v7;
    v14[1] = sub_1C9A30B34;

    return v16();
  }
}

uint64_t sub_1C9A30B34()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[14] = v1;

  if (!v1)
  {
    v9 = v5[3];
    v5[15] = v0;
    v5[16] = v3;
    v5[17] = v9;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C9A30C40()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A30C9C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[6];

  *v5 = v2;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v3;
  sub_1C97DA8DC();
  sub_1C97DABB0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C9A30D14()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A30D94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9A307D4();
}

uint64_t sub_1C9A30E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C99DC5A4();
  v16 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  v17 = sub_1C9A384B8(&unk_1EC3D2790);
  v15[0] = a2;

  sub_1C9A38A64(v10, v8, v9);
  if (!v4)
  {
    sub_1C97A592C(v15);
    v16 = MEMORY[0x1E69E6158];
    v17 = &off_1F494AB80;
    v15[0] = a3;
    v15[1] = a4;

    sub_1C9A38A64(v13, v11, v12);
  }

  return sub_1C97A592C(v15);
}

uint64_t sub_1C9A30F10()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C988FC80();
}

uint64_t sub_1C9A30F98()
{
  sub_1C98AE148();
  v17 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = v1;
  v5[5] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF0);
    v16 = v13;
    v14 = swift_task_alloc();
    v5[6] = v14;
    *v14 = v7;
    sub_1C98ADD10(v14);

    return v16();
  }
}

uint64_t sub_1C9A310F8()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[7] = v6;
  v3[8] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF8);
    v22 = v10;
    v11 = swift_task_alloc();
    v3[9] = v11;
    *v11 = v5;
    v19 = sub_1C9A38958(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);

    return v19();
  }
}

uint64_t sub_1C9A31258()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[10] = v1;

  if (v1)
  {
  }

  else
  {
    v5[11] = v0;
    v5[12] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A31364()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A313C8()
{
  sub_1C97AA884();

  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[7];

  return v1(v4, v2, v3);
}

uint64_t sub_1C9A3143C()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A314A0()
{
  sub_1C97AA884();

  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C9A30F10();
}

uint64_t sub_1C9A31530()
{
  sub_1C97AA95C();
  sub_1C98ADD54();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_1C98B7720();
  }

  return v5(v4);
}

uint64_t sub_1C9A3164C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C9A316E4;

  return sub_1C9A314A0();
}

uint64_t sub_1C9A316E4()
{
  sub_1C97DA934();
  sub_1C9A38274();
  sub_1C97AA890();
  v6 = v5;
  sub_1C97DA70C();
  *v7 = v6;
  v8 = *v3;
  sub_1C97AA83C();
  *v9 = v8;

  if (!v1)
  {
    v10 = *(v6 + 16);
    *v10 = v4;
    v10[1] = v2;
    v10[2] = v0;
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1C9A317E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];

  sub_1C99DC5A4();
  v13 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  v14 = sub_1C9A384B8(&unk_1EC3D2790);
  v12[0] = v3;
  sub_1C9A38A64(v7, v14, v6);
  if (!a1)
  {
    sub_1C97A592C(v12);
    v13 = MEMORY[0x1E69E6158];
    v14 = &off_1F494AB80;
    v12[0] = v4;
    v12[1] = v5;

    sub_1C9A38A64(v10, v8, v9);
  }

  return sub_1C97A592C(v12);
}

uint64_t sub_1C9A318C4()
{
  sub_1C97AA884();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  v3 = sub_1C981E3D8(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C988FC80();
}

uint64_t sub_1C9A3194C()
{
  sub_1C98AE148();
  v17 = v3;
  sub_1C97DA934();
  sub_1C97DA7CC();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[4] = v1;
  v5[5] = v0;

  if (v0)
  {
    sub_1C97DA7BC();
    sub_1C98AE0F8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF0);
    v16 = v13;
    v14 = swift_task_alloc();
    v5[6] = v14;
    *v14 = v7;
    sub_1C98ADD10(v14);

    return v16();
  }
}

uint64_t sub_1C9A31AAC()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97DA70C();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[7] = v6;
  v3[8] = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C981E080(&unk_1C9AD0CF8);
    v22 = v10;
    v11 = swift_task_alloc();
    v3[9] = v11;
    *v11 = v5;
    v19 = sub_1C9A38958(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22);

    return v19();
  }
}

uint64_t sub_1C9A31C14()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  sub_1C98ADD54();
  v5 = v4;
  sub_1C97DA70C();
  *v6 = v5;
  v7 = *v2;
  sub_1C97AA83C();
  *v8 = v7;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v0;
    v5[12] = v3;
  }

  sub_1C987D484();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C9A31D18()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A31D74()
{
  sub_1C97AA95C();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[2];

  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C9A31DE8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C9A31E68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C9A318C4();
}

void run(_:)(uint64_t a1)
{
  sub_1C9A31FA8();
}

{
  sub_1C9A31FA8();
}

void sub_1C9A31FA8()
{
  sub_1C98139FC();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  v7 = sub_1C993AF6C(v4, v6);
  v9 = sub_1C97A2CEC(v7, v8);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v11 = *v5;
  v12 = v5[1];
  if (qword_1EC3C5D70 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC3D3150;
  if (byte_1EC3D3158)
  {
    v14 = qword_1EC3D3150;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C97B8, &unk_1C9ACFA10);
    v15 = swift_allocObject();
    v16 = objc_opt_self();
    sub_1C98591C8(v13, 0);
    *(v15 + 16) = [v16 mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CBDC0, &qword_1C9AB0EB0);
    sub_1C97AA878();
    swift_allocObject();
    v17 = sub_1C97FB318();
    v19 = sub_1C9A2606C(v17, v18);
    v22[3] = &unk_1F492E308;
    v22[4] = &off_1F492ECD0;
    v20 = swift_allocObject();
    v22[0] = v20;
    *(v20 + 16) = v3;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 40) = v19;
    *(v20 + 48) = v13;
    v21(v22, *&v11, v12);
    sub_1C97A592C(v22);
    if (!v0)
    {
      sub_1C9A347FC();
    }
  }

  sub_1C9A3892C();
  sub_1C98139E0();
}

uint64_t sub_1C9A321BC(uint64_t a1, uint64_t a2)
{
  sub_1C9A924A8();
  sub_1C9A93CC8();
  sub_1C9A92528();
  v2 = sub_1C9A93D18();

  return v2;
}

unint64_t sub_1C9A32230(uint64_t a1, uint64_t a2)
{
  sub_1C9A93CC8();
  sub_1C9A92528();
  v4 = sub_1C9A93D18();

  return sub_1C9A3252C(a1, a2, v4);
}

unint64_t sub_1C9A322A8(uint64_t a1)
{
  v1 = a1;
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  v2 = sub_1C9A93D18();
  return sub_1C9A325E0(v1, v2);
}

unint64_t sub_1C9A32310(uint64_t a1)
{
  sub_1C9A924A8();
  sub_1C9A93CC8();
  sub_1C9A92528();
  sub_1C9A93D18();

  v1 = sub_1C97BE264();

  return sub_1C9A32640(v1, v2);
}

unint64_t sub_1C9A323A0(char a1)
{
  v3 = sub_1C9A218F8(*(v1 + 40), a1 & 1);

  return sub_1C9A32738(a1 & 1, v3);
}

unint64_t sub_1C9A323E4()
{
  sub_1C9A931D8();
  v0 = sub_1C97FB318();

  return sub_1C9A32880(v2, v0, v1);
}

unint64_t sub_1C9A32424(uint64_t a1)
{
  v2 = sub_1C9A93CB8();

  return sub_1C9A32940(a1, v2);
}

unint64_t sub_1C9A32468()
{
  sub_1C9A91748();
  sub_1C9A3808C();
  sub_1C9A34500(v0);
  sub_1C9A92388();
  v1 = sub_1C97FB318();

  return sub_1C9A329A0(v1, v2);
}

unint64_t sub_1C9A324EC()
{
  sub_1C9A93518();
  v0 = sub_1C97FB318();

  return sub_1C9A32B5C(v0, v1);
}

unint64_t sub_1C9A3252C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1C9A93B18() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C9A325E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1C9A32640(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1C9A924A8();
    v7 = v6;
    if (v5 == sub_1C9A924A8() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1C9A93B18();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1C9A32738(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a1)
    {
      v6 = "SNVGGishEmbeddingModel";
    }

    else
    {
      v6 = "oefDecay";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD00000000000001BLL : 0xD000000000000016;
      v9 = *(*(v2 + 48) + v4) ? "SNVGGishEmbeddingModel" : "oefDecay";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1C9A93B18();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1C9A32880(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3 + 64;
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v5 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    sub_1C97C8930(a1);
    v8 = *(*(v4 + 48) + 8 * i);
    v9 = sub_1C9A931E8();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C9A32940(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1C9A329A0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1C9A91748();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1C9A34500(&unk_1EC3D2758);
    v9 = sub_1C9A92438();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C9A32B5C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C97C9078(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCA911D0](v8, a1);
    sub_1C97C90D4(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1C9A32C34()
{
  sub_1C9A38708();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C97A2CEC(&qword_1EC3C6938, &qword_1C9A9D3F0);
  v1 = sub_1C97BE490();
  sub_1C9A38730(v1);
  sub_1C9A385EC(v2 / 4);
  return v0;
}

uint64_t sub_1C9A32CD4()
{
  sub_1C9A38708();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C9A38A34(v1, v2, v3, v4);
  v5 = sub_1C97BE490();
  sub_1C9A38730(v5);
  sub_1C9A385EC(v6 / 8);
  return v0;
}

uint64_t sub_1C9A32D28()
{
  sub_1C9A38708();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1C97A2CEC(&unk_1EC3C6E20, &qword_1C9A9FF60);
  v3 = sub_1C97BE490();
  sub_1C9A38730(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_1C9A32D94()
{
  sub_1C9A38708();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C97A2CEC(&unk_1EC3D2860, &qword_1C9AD0DB0);
  v1 = swift_allocObject();
  sub_1C9A38730(v1);
  sub_1C9A385EC(v2 / 24);
  return v0;
}

size_t sub_1C9A32E08(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C97A2CEC(&unk_1EC3D2748, &unk_1C9AD0BE0);
  v3 = sub_1C97A2CEC(&unk_1EC3C76B0, &unk_1C9AAFB60);
  sub_1C97BE2AC(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  result = j__malloc_size(v8);
  if (v5)
  {
    if (result - v7 != 0x8000000000000000 || v5 != -1)
    {
      sub_1C9A385EC((result - v7) / v5);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}