unint64_t sub_1000A3EF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000E23F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000E23D8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_1000A3F70(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000E10C8();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011F920, &unk_1000F23A0);
  result = sub_1000E2B78();
  v7 = result;
  v8 = 0;
  v38 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v36 = v4;
  v32[1] = v4 + 32;
  v33 = result + 8;
  v34 = result;
  if (v14)
  {
    while (1)
    {
      v43 = v2;
      v16 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v42 = v32;
      v40 = 16 * v19;
      v20 = *(v38 + 56);
      v21 = (*(v38 + 48) + 16 * v19);
      v22 = v21[1];
      v41 = *v21;
      v23 = *(v20 + 8 * v19);
      __chkstk_darwin(result);
      v32[-2] = v23;
      sub_1000A75DC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo, &protocol conformance descriptor for NCProtoContactInfo);

      v24 = v23;
      v25 = v35;
      v26 = v37;
      v27 = v43;
      sub_1000E0E38();
      v2 = v27;

      v7 = v34;
      *(v33 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v28 = (v7[6] + v40);
      *v28 = v41;
      v28[1] = v22;
      result = (*(v36 + 32))(v7[7] + *(v36 + 72) * v19, v25, v26);
      v29 = v7[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v7[2] = v31;
      v14 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v43 = v2;
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A42A0(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_1000E29B8();

    if (v13)
    {
      v14 = sub_1000A4448(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_10000CAAC(0, a2, a3);
  v18 = sub_1000E2808(*(v7 + 40));
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_1000E2818();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_1000A45B8(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t sub_1000A4448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_1000E2968();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v22 = v12;
  v13 = *(v12 + 40);

  v14 = sub_1000E2808(v13);
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_10000CAAC(0, a4, a5);
    while (1)
    {
      v18 = *(*(v12 + 48) + 8 * v16);
      v19 = sub_1000E2818();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v12 + 48) + 8 * v16);
  sub_1000A45B8(v16);
  result = sub_1000E2818();
  if (result)
  {
    *v9 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A45B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000E28E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_1000E2808(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1000A4758(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1000E2968())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10000EA70(&qword_10011EA60, &unk_10011F930, TUHandle_ptr, &protocol conformance descriptor for NSObject);
    sub_1000E2628();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_10000A840(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1000A42A0(v15, &unk_10011F930, TUHandle_ptr, sub_1000D4078, sub_1000D30AC);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1000A49DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10000EA70(&qword_10011EA60, &unk_10011F930, TUHandle_ptr, &protocol conformance descriptor for NSObject);
    sub_1000E2628();
    v4 = v79;
    v6 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v74 = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v65 = v7;
  v13 = (v7 + 64) >> 6;
  v71 = v3 + 7;
  v78 = v9;
  v68 = v6;
  v69 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_1000E29A8();
      if (!v21)
      {
        goto LABEL_65;
      }

      v72 = v21;
      sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
      swift_dynamicCast();
      v19 = v73;
      v17 = v8;
      v2 = v9;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        if (v13 <= (v8 + 1))
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_67;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v74 = v4;
      v75 = v6;
      v76 = v65;
      v77 = v17;
      v78 = v2;
      if (!v19)
      {
LABEL_65:
        v54 = v4;
        goto LABEL_63;
      }
    }

    v22 = v19;
    v23 = sub_1000E2808(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v68;
    v4 = v69;
  }

  v25 = ~v24;
  v26 = sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  v27 = *(v3[6] + 8 * v8);
  v70 = v26;
  while (1)
  {
    v28 = sub_1000E2818();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v71[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v62 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v62;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    __chkstk_darwin(v29);
    v32 = &v61 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v71, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v64 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v68;
    v35 = v69;
    v37 = i;
LABEL_33:
    v66 = v4;
    while (v35 < 0)
    {
      v38 = sub_1000E29A8();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_1000E2808(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v71[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = sub_1000E2818();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v71[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v64[v48];
        v64[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
        if (!v53)
        {
          v4 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v68;
        v35 = v69;
        v4 = v66;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v74 = v35;
      v75 = v36;
      v76 = v65;
      v77 = v41;
      v17 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1000CC910(v64, v62, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= (v17 + 1))
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v5;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_1000A5088(v58, v62, v3, v8, &v74);
  v60 = v59;

  v3 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_10000A840(v54);
  return v3;
}

void sub_1000A5088(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1000E29A8())
          {
            goto LABEL_30;
          }

          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1000CC910(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1000E2808(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1000E2818();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1000E2818();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1000A5324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v29 = a3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  v30 = v13;
  v15 = sub_10000B348(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v29;
      v21 = v30;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000CAE84(v15, v11, a1, v21);
      v28 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
      result = (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
      goto LABEL_12;
    }

LABEL_10:
    sub_1000CBCE0();
    v22 = v29;
    v21 = v30;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_10001FF0C(v18, isUniquelyReferenced_nonNull_native);
  v19 = sub_10000B348(a2);
  if ((v4 & 1) == (v20 & 1))
  {
    v15 = v19;
    v22 = v29;
    v21 = v30;
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = v21[7];
    v24 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 72) * v15;
    sub_1000AD400(v23 + v26, v22, &qword_10011EBB0, &qword_1000F04F0);
    sub_1000AD400(a1, v21[7] + v26, &qword_10011EBB0, &qword_1000F04F0);
    result = (*(v25 + 56))(v22, 0, 1, v24);
LABEL_12:
    *v5 = v21;
    return result;
  }

  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

void sub_1000A55D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1000E2968())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1000E29B8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_1000A56D4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v3 = *a2;
  *a3 = v6;
  a3[1] = v3;
  v4 = v3;

  return v6;
}

NSObject *sub_1000A5718(void *a1, void *a2, uint64_t a3, NSObject *a4, NSObject *a5, void *a6, NSObject *a7, NSObject *a8)
{
  v100 = a8;
  v99 = a7;
  v98 = a5;
  v95 = a4;
  v93 = a3;
  v97 = a2;
  v103 = sub_1000E2128();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v91 - v12;
  v14 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v91 - v15;
  v112[3] = &type metadata for ConversationServerBag;
  v112[4] = &off_100116DE8;
  v94 = type metadata accessor for NeighborhoodActivityConduit(0);
  v17 = objc_allocWithZone(v94);
  sub_1000037BC(v112, &type metadata for ConversationServerBag);
  v111[3] = &type metadata for ConversationServerBag;
  v111[4] = &off_100116DE8;
  v18 = OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *&v17[v18] = qword_1001230E8;
  v96 = v13;
  v92 = v18;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {

    v19 = sub_1000DFC4C(_swiftEmptyArrayStorage);
  }

  else
  {

    v19 = &_swiftEmptySetSingleton;
  }

  *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_cancellables] = v19;
  *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v21 = type metadata accessor for HandoffState(0);
  v22 = *(*(v21 - 8) + 56);
  v22(&v17[v20], 1, 1, v21);
  v23 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject;
  v22(v16, 1, 1, v21);
  sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
  swift_allocObject();
  *&v17[v23] = sub_1000E2008();
  v24 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers;
  if (qword_10011DCC8 != -1)
  {
    swift_once();
  }

  v25 = qword_1001231E0;
  *&v17[v24] = qword_1001231E0;
  v26 = OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer;
  v27 = qword_10011DC48;
  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  *&v17[v26] = qword_100123118;
  v29 = OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyCallServer;
  v30 = qword_10011DC00;

  if (v30 != -1)
  {
    swift_once();
  }

  *&v17[v29] = qword_1001230C8;
  v31 = OBJC_IVAR___CSDNeighborhoodActivityConduit_callHistoryManager;
  v32 = objc_allocWithZone(TUCallHistoryManager);

  *&v17[v31] = [v32 init];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport] = result;
    v34 = OBJC_IVAR___CSDNeighborhoodActivityConduit_startedConversations;
    *&v17[v34] = sub_10000BE04(_swiftEmptyArrayStorage);
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion] = 0;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion] = 0;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyDevices] = &_swiftEmptySetSingleton;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable] = 0;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy] = 0;
    v35 = OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor;
    *&v17[v35] = [objc_allocWithZone(CUSystemMonitor) init];
    v36 = OBJC_IVAR___CSDNeighborhoodActivityConduit_activatedSubject;
    LOBYTE(aBlock) = 0;
    sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
    swift_allocObject();
    *&v17[v36] = sub_1000E2008();
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer] = 0;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle] = 0;
    v37 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationUIStateObserver;
    type metadata accessor for ConversationUIStateObserver(0);
    v38 = swift_allocObject();
    v39 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
    v40 = type metadata accessor for ConversationUIState(0);
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *&v17[v37] = v38;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager] = a1;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] = a6;
    v41 = v97;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_idsService] = v97;
    v42 = v98;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags] = v98;
    sub_10002B4BC(v111, &v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationServerBag]);
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_vouchingEnablement] = v93;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_voucherManager] = v95;
    v43 = v99;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery] = v99;
    type metadata accessor for NeighborhoodActivityPublisherService();
    swift_allocObject();
    v95 = a1;
    v44 = a6;
    v97 = v41;
    v45 = v42;
    v99 = v43;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService] = sub_1000D8940(v99, v46, v47);
    v48 = v100;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController] = v100;
    v49 = *&v17[v92];
    type metadata accessor for IncomingCallServer();
    v50 = swift_allocObject();
    v50[2] = v45;
    v50[3] = v44;
    v50[4] = v49;
    *&v17[OBJC_IVAR___CSDNeighborhoodActivityConduit_incomingCallServer] = v50;
    v110.receiver = v17;
    v110.super_class = v94;
    v98 = v44;
    v100 = v48;

    v51 = objc_msgSendSuper2(&v110, "init");
    TURegisterIDSAvailabilityListener();
    v52 = OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery;
    v53 = *&v51[OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery];
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = sub_1000A9674;
    v109 = v54;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_100067144;
    v107 = &unk_100114BC0;
    v55 = _Block_copy(&aBlock);
    v56 = v53;

    [v56 setDiscoverySessionStateChangedHandler:v55];
    _Block_release(v55);

    v57 = *&v51[v52];
    v108 = sub_1000671D0;
    v109 = 0;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v94 = &v106;
    v106 = sub_100067380;
    v107 = &unk_100114BE8;
    v58 = _Block_copy(&aBlock);
    v59 = v57;
    [v59 activateWithCompletion:v58];
    _Block_release(v58);

    v60 = sub_1000E2538();
    v61 = v96;
    (*(*(v60 - 8) + 56))(v96, 1, 1, v60);
    v62 = qword_10011DC30;
    v64 = v51;
    if (v62 != -1)
    {
      swift_once();
    }

    v65 = qword_1001230F0;
    v66 = sub_1000A75DC(&qword_100120020, v63, type metadata accessor for ConduitActor, &unk_1000F2250);
    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v66;
    v67[4] = v64;

    sub_100022960(0, 0, v61, &unk_1000F2428, v67);

    v68 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v69 = *(&v64->isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v96 = sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
    v70 = v102;
    v71 = *(v102 + 104);
    v72 = v101;
    v73 = v103;
    v71(v101, enum case for DispatchQoS.QoSClass.userInteractive(_:), v103);
    v74 = v69;
    v75 = sub_1000E2758();
    v76 = *(v70 + 8);
    v76(v72, v73);
    [v74 addDelegate:v64 queue:v75];

    [*(&v64->isa + v68) registerWithCompletionHandler:0];
    sub_100068D30();
    v71(v72, enum case for DispatchQoS.QoSClass.background(_:), v73);
    v77 = sub_1000E2758();
    v76(v72, v73);
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = sub_1000A9730;
    v109 = v78;
    aBlock = _NSConcreteStackBlock;
    v105 = 1107296256;
    v106 = sub_1000643C8;
    v107 = &unk_100114C38;
    v79 = _Block_copy(&aBlock);

    v80 = os_state_add_handler();
    _Block_release(v79);

    *(&v64->isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle) = v80;
    sub_100064418();
    sub_1000658F8();
    sub_100064884();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v81 = sub_1000E1F08();
    sub_1000049D0(v81, qword_100123128);
    v82 = sub_1000E1EE8();
    v83 = sub_1000E2698();
    v84 = os_log_type_enabled(v82, v83);
    v85 = v100;
    v86 = v98;
    if (v84)
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Initialized NeighborhoodActivityConduit", v87, 2u);

      v88 = v95;
      v89 = v86;
      v86 = v99;
      v90 = v85;
      v85 = v64;
    }

    else
    {
      v88 = v82;
      v82 = v64;
      v89 = v95;
      v90 = v99;
    }

    sub_10000E9DC(v111);
    sub_10000E9DC(v112);
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A63CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A63F0, 0, 0);
}

uint64_t sub_1000A63F0()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_10000CAAC(0, &qword_10011FCC8, TUNearbySuggestionResult_ptr);
  *v3 = v0;
  v3[1] = sub_1000A6504;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AD714, v2, v4);
}

uint64_t sub_1000A6504()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE1F0, 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

void sub_1000A6650(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &qword_10011FCD0, &qword_1000F2AA0);
}

uint64_t sub_1000A66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1000AE1A0;

  return sub_10006039C(a2, a3, a4, a5, a6);
}

uint64_t sub_1000A6798(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000A688C;

  return v7(v4 + 40);
}

uint64_t sub_1000A688C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1000A69C4;
  }

  else
  {
    v2 = sub_1000A69A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1000A6A7C;

  return sub_1000A7214(a4, a5);
}

uint64_t sub_1000A6A7C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1000A6B90(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1000E2A78();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_1000E2A78();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_1000A6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A6C50, 0, 0);
}

uint64_t sub_1000A6C50()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  *v3 = v0;
  v3[1] = sub_1000A6D64;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000ABC80, v2, v4);
}

uint64_t sub_1000A6D64()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A6EB0, 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000A6EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000A6F14(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &qword_10011FC00, &qword_1000F2878);
}

uint64_t sub_1000A6F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A6FB8, 0, 0);
}

uint64_t sub_1000A6FB8()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  *v3 = v0;
  v3[1] = sub_1000A6504;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AB3F4, v2, v4);
}

void sub_1000A70CC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &unk_10011FB40, &qword_1000F2758);
}

uint64_t sub_1000A714C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = 0x656E6F685069;
  v4._object = 0xE600000000000000;
  if (sub_1000E2408(v4))
  {

    return 1;
  }

  else
  {
    v5._countAndFlagsBits = 1684099177;
    v5._object = 0xE400000000000000;
    if (sub_1000E2408(v5))
    {

      return 2;
    }

    else
    {
      v6._countAndFlagsBits = 0x5654656C707041;
      v6._object = 0xE700000000000000;
      v3 = sub_1000E2408(v6);

      if (v3)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1000A7214(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000E2B28();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061A00, 0, 0);
}

uint64_t sub_1000A72D4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000A738C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009C6EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A744C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009BE44(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A750C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10007DBA0(a1, v4, v5, v6);
}

uint64_t sub_1000A75DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A7624(int a1, char *a2, void *a3, void *a4)
{
  v55 = a2;
  v52 = a1;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for HandoffInfo(0);
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v48 - v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = qword_10011DC60;
  v19 = a3;
  v53 = a4;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  v50 = sub_1000049D0(v20, qword_100123128);
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2698();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49 = v13;
    v26 = v8;
    v27 = v17;
    v28 = v25;
    v57[0] = v25;
    *v24 = 136315138;
    v56 = v52 & 1;
    v29 = sub_1000E2368();
    v31 = sub_100029C70(v29, v30, v57);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Safely get handoff info, requireJoined: %s", v24, 0xCu);
    sub_10000E9DC(v28);
    v17 = v27;
    v8 = v26;
    v13 = v49;

    v19 = v48;
  }

  v32 = v55;
  v33 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(&v32[v33], v16, &qword_10011F888, &qword_1000F22B0);
  v34 = type metadata accessor for HandoffState(0);
  if ((*(*(v34 - 8) + 48))(v16, 1, v34) == 1)
  {
    (*(v54 + 56))(v13, 1, 1, v9);
    sub_10009A70C(v13, v19, v53);
LABEL_7:
    sub_1000033C8(v13, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v51;
    sub_1000A877C(v16, v51, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v35, v13, type metadata accessor for HandoffInfo);
    (*(v54 + 56))(v13, 0, 1, v9);
    sub_10009A70C(v13, v19, v53);
    sub_1000033C8(v13, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v35, type metadata accessor for HandoffInfo);
  }

  v37 = *v16;
  if (v52)
  {
    v38 = sub_1000E1EE8();
    v39 = sub_1000E2678();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
    }

    (*(v54 + 56))(v13, 1, 1, v9);
    sub_10009A70C(v13, v19, v53);

    goto LABEL_7;
  }

  v41 = sub_1000E2538();
  (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
  v42 = qword_10011DC30;

  v43 = v32;

  if (v42 != -1)
  {
    swift_once();
  }

  v45 = qword_1001230F0;
  v46 = sub_1000A75DC(&qword_100120020, v44, type metadata accessor for ConduitActor, &unk_1000F2250);
  v47 = swift_allocObject();
  v47[2] = v45;
  v47[3] = v46;
  v47[4] = v37;
  v47[5] = v43;
  v47[6] = sub_1000A9868;
  v47[7] = v17;

  sub_100022960(0, 0, v8, &unk_1000F2458, v47);
}

uint64_t sub_1000A7CE4(int a1, char *a2, void *a3)
{
  v52 = a2;
  v49 = a1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for HandoffInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v13 - 8);
  v51 = (&v45 - v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = qword_10011DC60;
  v50 = a3;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_1000E1F08();
  v47 = sub_1000049D0(v17, qword_100123128);
  v18 = sub_1000E1EE8();
  v19 = sub_1000E2698();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54[0] = v21;
    *v20 = 136315138;
    v53 = v49 & 1;
    v22 = sub_1000E2368();
    v46 = v12;
    v24 = v8;
    v25 = sub_100029C70(v22, v23, v54);
    v12 = v46;

    *(v20 + 4) = v25;
    v8 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Safely get handoff info, requireJoined: %s", v20, 0xCu);
    sub_10000E9DC(v21);
  }

  v26 = v52;
  v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v28 = v51;
  sub_10000CB64(&v26[v27], v51, &qword_10011F888, &qword_1000F22B0);
  v29 = type metadata accessor for HandoffState(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    (*(v8 + 56))(v12, 1, 1, v7);
    sub_10007DCB0(v12, v50);
LABEL_7:
    sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v48;
    sub_1000A877C(v28, v48, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v30, v12, type metadata accessor for HandoffInfo);
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_10007DCB0(v12, v50);
    sub_1000033C8(v12, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v30, type metadata accessor for HandoffInfo);
  }

  v32 = v8;
  v33 = *v28;
  if (v49)
  {
    v34 = sub_1000E1EE8();
    v35 = sub_1000E2678();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
    }

    (*(v32 + 56))(v12, 1, 1, v7);
    sub_10007DCB0(v12, v50);

    goto LABEL_7;
  }

  v37 = sub_1000E2538();
  (*(*(v37 - 8) + 56))(v6, 1, 1, v37);
  v38 = qword_10011DC30;

  v39 = v26;

  v41 = v15;
  if (v38 != -1)
  {
    swift_once();
  }

  v42 = qword_1001230F0;
  v43 = sub_1000A75DC(&qword_100120020, v40, type metadata accessor for ConduitActor, &unk_1000F2250);
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = v43;
  v44[4] = v33;
  v44[5] = v39;
  v44[6] = sub_1000A8390;
  v44[7] = v41;

  sub_100022960(0, 0, v6, &unk_1000F22E8, v44);
}

uint64_t sub_1000A8398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100062A18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000A846C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D64;

  return sub_100063118(a1, v1);
}

uint64_t sub_1000A8508(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_1000A66D0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000A85E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A6798(a1, v4, v5, v6);
}

uint64_t sub_1000A86B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000A69DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A877C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A87E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A884C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A88BC()
{
  result = qword_10011F910;
  if (!qword_10011F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F910);
  }

  return result;
}

uint64_t sub_1000A8910(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10007EFFC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1000A8A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10009BA58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A8B1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000DADAC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A8BE4(int a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v54 = a1;
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for HandoffInfo(0);
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - v14;
  v16 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v16 - 8);
  v58 = (&v50 - v17);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v19 = qword_10011DC60;
  v55 = a3;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  v52 = sub_1000049D0(v20, qword_100123128);
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2698();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v51 = v10;
    v25 = v24;
    v61[0] = v24;
    *v23 = 136315138;
    v60 = v54 & 1;
    v26 = sub_1000E2368();
    v28 = sub_100029C70(v26, v27, v61);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Safely get handoff info, requireJoined: %s", v23, 0xCu);
    sub_10000E9DC(v25);
    v10 = v51;
  }

  v29 = v59;
  v30 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v31 = &v29[v30];
  v32 = v58;
  sub_10000CB64(v31, v58, &qword_10011F888, &qword_1000F22B0);
  v33 = type metadata accessor for HandoffState(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    (*(v56 + 56))(v15, 1, 1, v57);
    sub_1000DAEE4(v15, v55, a4, a5);
    v34 = v15;
LABEL_7:
    sub_1000033C8(v34, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v32;
    v36 = v53;
    sub_1000A877C(v35, v53, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v36, v15, type metadata accessor for HandoffInfo);
    (*(v56 + 56))(v15, 0, 1, v57);
    sub_1000DAEE4(v15, v55, a4, a5);
    sub_1000033C8(v15, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v36, type metadata accessor for HandoffInfo);
  }

  v38 = v15;
  v39 = *v32;
  if (v54)
  {
    v40 = sub_1000E1EE8();
    v41 = sub_1000E2678();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
    }

    (*(v56 + 56))(v38, 1, 1, v57);
    sub_1000DAEE4(v38, v55, a4, a5);

    v34 = v38;
    goto LABEL_7;
  }

  v43 = sub_1000E2538();
  (*(*(v43 - 8) + 56))(v10, 1, 1, v43);
  v44 = qword_10011DC30;

  v45 = v29;

  if (v44 != -1)
  {
    swift_once();
  }

  v47 = qword_1001230F0;
  v48 = sub_1000A75DC(&qword_100120020, v46, type metadata accessor for ConduitActor, &unk_1000F2250);
  v49 = swift_allocObject();
  v49[2] = v47;
  v49[3] = v48;
  v49[4] = v39;
  v49[5] = v45;
  v49[6] = sub_1000A92C8;
  v49[7] = v18;

  sub_100022960(0, 0, v10, &unk_1000F23C8, v49);
}

uint64_t sub_1000A92D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009B178(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A93B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_100098918();
}

uint64_t sub_1000A9460(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for HandoffInfo(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000E13E8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002E7C;

  return sub_1000989A0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000A95C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009AA5C(a1, v4, v5, v6);
}

uint64_t sub_1000A967C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000673EC(a1, v4, v5, v6);
}

uint64_t sub_1000A97A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064DB0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A9870()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A98C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064AE0(a1, v4, v5, v7, v6);
}

void sub_1000A9980(void *a1)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E1F08();
  sub_1000049D0(v6, qword_100123128);
  v7 = a1;
  v17 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  if (os_log_type_enabled(v17, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = [v7 UUID];
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = sub_1000E2C18();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_100029C70(v12, v14, &v18);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v17, v8, "Conversation %s was joined.", v9, 0xCu);
    sub_10000E9DC(v10);
  }

  else
  {
    v16 = v17;
  }
}

uint64_t sub_1000A9C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100065BF0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000A9D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064740(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A9EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000704F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000AA028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009CD9C(a1, v4, v5, v6);
}

uint64_t sub_1000AA15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100069E68(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10006EBD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100069328(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100066868(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_1000AA47C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10006D204(a1, v4, v5, v9, v6, v7, v8);
}

uint64_t sub_1000AA578()
{
  v1 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v0 + v7, v6, &qword_10011F888, &qword_1000F22B0);
  v8 = type metadata accessor for HandoffState(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_1000033C8(v6, &qword_10011F888, &qword_1000F22B0);
LABEL_5:
    v9 = sub_1000E2538();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = qword_10011DC30;
    v12 = v0;
    if (v10 != -1)
    {
      swift_once();
    }

    v13 = qword_1001230F0;
    v14 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;

    sub_100022960(0, 0, v3, &unk_1000F2610, v15);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000AD5EC(v6, type metadata accessor for HandoffState);
    goto LABEL_5;
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v16 = sub_1000E1F08();
  sub_1000049D0(v16, qword_100123128);
  v17 = sub_1000E1EE8();
  v18 = sub_1000E2698();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Cancelling handoff task due to cancel add member event.", v19, 2u);
  }

  type metadata accessor for HandoffInfo(0);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E2558();
}

uint64_t sub_1000AA924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10007D940(a1, v4, v5, v6);
}

uint64_t sub_1000AA9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10007D4C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AAADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000E1C48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_100077390(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_1000AAC60(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100079638(a1, v6, v1 + v5);
}

uint64_t sub_1000AAD60(uint64_t a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v8 = (v6 + *(v7 + 80) + 9) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(v1 + v5);
  v11 = v1 + v6;
  v12 = *(v1 + v6);
  v13 = *(v11 + 8);
  v14 = *(v1 + v9);
  v15 = *(v1 + (v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_100002D64;

  return sub_10009325C(a1, v1 + v4, v10, v12, v13, v1 + v8, v14, v15);
}

uint64_t sub_1000AAF3C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_1000608BC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000AB004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100060F7C(a1, v4, v5, v6);
}

uint64_t sub_1000AB0C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100061940(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AB208()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AB250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000DB9DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000AB324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A6F94(a1, v4, v5, v6);
}

uint64_t sub_1000AB43C(uint64_t *a1, uint64_t *a2)
{
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000ADE4(a1, a2) - 8);
  return sub_1000A3634(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t sub_1000AB580()
{
  v0 = sub_1000E2118();
  v15 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000E2148();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E2128();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.userInteractive(_:), v6);
  v10 = sub_1000E2758();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = sub_10009864C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115340;
  v11 = _Block_copy(aBlock);
  sub_1000E2138();
  v16 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v11);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

uint64_t sub_1000AB908(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_10005FED0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000AB9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100060F7C(a1, v4, v5, v6);
}

uint64_t sub_1000ABA90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100061650(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABBB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A6C2C(a1, v4, v5, v6);
}

uint64_t sub_1000ABD04(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10008F254(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000ABDFC(uint64_t a1)
{
  v4 = *(sub_1000E1948() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100072DC0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000ABF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10008A700(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABFC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_10008DFFC(a1, v5, v4);
}

void sub_1000AC070()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter) joinConversationWithConversationRequest:*(v0 + 24)];
}

uint64_t sub_1000AC0E4()
{
  sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_10008A548(v1, v2);
}

uint64_t sub_1000AC154(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100002D64;

  return sub_10007B8D0(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000AC28C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_10009F8B8(a1, v4, v5, v6);
}

uint64_t sub_1000AC3B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a1(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000ADE4(a2, a3) - 8);
  v11 = *(v4 + 16);
  v12 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(v11, v4 + v8, v12);
}

uint64_t sub_1000AC4B0(uint64_t *a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000ADE4(&qword_10011FC50, &qword_1000F2958) - 8);
  v7 = *(v1 + 16);
  v8 = *a1;
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000A370C(v8, v7, v1 + v4, v9);
}

uint64_t sub_1000AC594(uint64_t a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000ADE4(&qword_10011FC50, &qword_1000F2958) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000A39E8(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000AC678(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002D64;

  return sub_10007CAE8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1000AC7BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_10008F930(a1, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_1000AC928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100097608(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AC9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009850C(a1, v4, v5, v6);
}

uint64_t sub_1000ACAB0(char a1, uint64_t a2)
{
  sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);

  return sub_100098048(a1, a2);
}

uint64_t sub_1000ACB3C(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10006A5DC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000ACC40(uint64_t a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = v8[9];
  v11 = v8[8];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002D64;

  return sub_1000804F8(a1, v5, v6, v7, v1 + v4, v9, v11, v10);
}

uint64_t sub_1000ACDB0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_1000E0FE8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((((v8 + v9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1000ACF90(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_100084D9C(a1, v6, v7, v8, v1 + v5);
}

void sub_1000AD088()
{
  sub_1000E0D68();
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  sub_1000E0FE8();
  v1 = *(v0 + 16);

  sub_100089C08(v1);
}

uint64_t sub_1000AD1C0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AD284(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000883D8(a1, v6, v1 + v5);
}

uint64_t sub_1000AD368()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AD400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ADE4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000AD468()
{
  v1 = *(sub_1000E0D68() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_10000ADE4(&qword_10011E478, &unk_1000F0998) - 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + v6);
  v10 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = v0 + (((v6 & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1000891F8(v8, v0 + v2, v0 + v5, v9, v10, v11);
}

uint64_t sub_1000AD5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AD64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A63CC(a1, v4, v5, v6);
}

uint64_t sub_1000AD720(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10000ADE4(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v15 + 8, v14 | 7);
}

uint64_t sub_1000AD8B8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_1000E0D68() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_10000ADE4(a1, a2) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v3 + 16);
  v12 = *(v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v11, v3 + v7, v3 + v10, v12);
}

void sub_1000ADA04(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_1000E0D68() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000ADE4(a2, a3) - 8);
  sub_1000A38D4(*a1, *(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_1000ADAEC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10000ADE4(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_1000ADC70(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(sub_1000E0D68() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000ADE4(a2, a3) - 8);
  v12 = *(v4 + 16);
  v13 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a4(a1, v12, v4 + v9, v13);
}

uint64_t sub_1000ADD70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ADDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10008A04C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ADE78(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000851B8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000ADF68(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000ADE4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000ADFEC(uint64_t a1, void *a2)
{
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);

  return sub_1000880D8(a1, a2);
}

uint64_t sub_1000AE094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AE0DC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1000AE14C()
{
  result = qword_10011FD18;
  if (!qword_10011FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FD18);
  }

  return result;
}

void sub_1000AE290(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000E0BD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

Swift::Int sub_1000AE300(uint64_t a1, uint64_t a2)
{
  sub_1000E2D48();
  sub_1000E22E8();
  return sub_1000E2D68();
}

uint64_t sub_1000AE364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B2AF0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000AE3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000E2D48();
  sub_1000E22E8();
  return sub_1000E2D68();
}

unint64_t sub_1000AE410@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000B0F6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000AE444(uint64_t a1)
{
  v2 = sub_1000B2AF0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000AE480(uint64_t a1)
{
  v2 = sub_1000B2AF0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000AE4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B2AF0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1000AE52C(uint64_t a1)
{
  result = 0xD000000000000015;
  v3 = *v1;
  if (*v1 > 2)
  {
    switch(v3)
    {
      case 3:
        return result;
      case 4:
        return 0xD00000000000001FLL;
      case 5:
        return 0xD000000000000020;
    }

LABEL_14:
    result = sub_1000E2CA8();
    __break(1u);
    return result;
  }

  if (!v3)
  {
    return 0xD000000000000014;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      return 0xD000000000000020;
    }

    goto LABEL_14;
  }

  return result;
}

id sub_1000AE60C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000E2108();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v7 = objc_opt_self();
  v8 = a1;
  result = [v7 sharedInstance];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(TUVouchingEnablementImpl);
    v12 = v10;
    v13 = [v11 init];
    *v6 = 10;
    (*(v4 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v3);
    v14 = sub_1000B0AC4(v8, v12, v13, v6, objc_allocWithZone(ObjectType));

    swift_deallocPartialClassInstance();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000AE814(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100123170);
    swift_errorRetain();
    sub_1000123E0(a4, a5);
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v51 = v17;
      *v16 = 134218242;
      *(v16 + 4) = sub_1000E0CB8();
      sub_100006660(a4, a5);
      *(v16 + 12) = 2080;
      swift_errorRetain();
      sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
      v18 = sub_1000E2358();
      v20 = sub_100029C70(v18, v19, &v51);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sign data (%ld) due to error %s.", v16, 0x16u);
      sub_10000E9DC(v17);
    }

    else
    {
      sub_100006660(a4, a5);
    }

    swift_errorRetain();
    a6(0, a3);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123170);
    sub_1000123E0(a4, a5);
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2678();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = sub_1000E0CB8();
      sub_100006660(a4, a5);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to sign data (%ld) because encrypted data was missing from response (without an error).", v25, 0xCu);
    }

    else
    {
      sub_100006660(a4, a5);
    }

    sub_1000B2718();
    v47 = swift_allocError();
    *v48 = 2;
    a6(0, v47);
  }

  else
  {
    v27 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 24);
    v28 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 32);
    sub_1000036AC((a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler), v27);
    v29 = *(v28 + 8);
    sub_1000123E0(a1, a2);
    v30 = v29(v27, v28);
    v32 = v31;
    isa = sub_1000E0C78().super.isa;
    v34 = TUCopyIDSFromIDForHandle();
    v35 = IDSCopyIDForTokenWithID();

    if (v35)
    {
      sub_100006660(v30, v32);
      v36 = objc_allocWithZone(TUVoucher);
      sub_1000123E0(a1, a2);
      v37 = sub_1000E0C78().super.isa;
      v38 = sub_1000E0C78().super.isa;
      v39 = [v36 initWithHandle:a9 tokenPrefixedURI:v35 data:v37 encryptedData:v38];

      sub_100015904(a1, a2);
      if (qword_10011DC78 != -1)
      {
        swift_once();
      }

      v40 = sub_1000E1F08();
      sub_1000049D0(v40, qword_100123170);
      sub_1000123E0(a4, a5);
      v41 = v39;
      v42 = sub_1000E1EE8();
      v43 = sub_1000E2698();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 134218242;
        *(v44 + 4) = sub_1000E0CB8();
        sub_100006660(a4, a5);
        *(v44 + 12) = 2112;
        *(v44 + 14) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Successfully signed data (%ld) into %@.", v44, 0x16u);
        sub_1000033C8(v45, &unk_10011EAC0, &unk_1000F0E60);
      }

      else
      {
        sub_100006660(a4, a5);
      }

      v49 = v41;
      a6(v41, 0);

      sub_100015904(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000AEE5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000E2118();
  v20 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E2148();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1000B28BC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001160D0;
  v16 = _Block_copy(aBlock);

  sub_1000B28C8(a1, a2);
  swift_errorRetain();
  sub_1000E2138();
  v21 = _swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v16);
  (*(v20 + 8))(v11, v9);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_1000AF148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2, a3, a4);
    sub_100009BB4(v8, v9);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v10, v11);
}

uint64_t sub_1000AF1F8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1000B2718();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, 0xF000000000000000, v4);
    sub_100009BB4(v2, v3);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v6, v7);
}

void sub_1000AF388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xFF)
  {
    v16 = *v3;
    v17 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v18 = objc_allocWithZone(v17);
    *&v18[*((swift_isaMask & *v18) + 0x68)] = a3;
    v21.receiver = v18;
    v21.super_class = v17;
    v15 = objc_msgSendSuper2(&v21, "init");
    [v16 removeObjectForKey:v15];
  }

  else
  {
    v5 = a2;
    v7 = *v3;
    v8 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
    v9 = objc_allocWithZone(v8);
    v10 = v9 + *((swift_isaMask & *v9) + 0x68);
    *v10 = a1;
    v10[8] = v5 & 1;
    v11 = sub_1000B27B4(a1, v5 & 1);
    v20.receiver = v9;
    v20.super_class = v8;
    v12 = objc_msgSendSuper2(&v20, "init", v11);
    v13 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v14 = objc_allocWithZone(v13);
    *&v14[*((swift_isaMask & *v14) + 0x68)] = a3;
    v19.receiver = v14;
    v19.super_class = v13;
    v15 = objc_msgSendSuper2(&v19, "init");
    [v7 setObject:v12 forKey:v15];
    sub_1000B27DC(a1, v5);
  }
}

uint64_t sub_1000AF548(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123170);
    v9 = a3;
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v7;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v9;
      *v14 = v9;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully verified %@.", v13, 0xCu);
      sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);

      v7 = v12;
LABEL_10:
    }
  }

  else
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v16 = sub_1000E1F08();
    sub_1000049D0(v16, qword_100123170);
    v17 = a3;
    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v18 = sub_1000E2678();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v7;
      v21 = swift_slowAlloc();
      v47[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2080;
      v45 = a2;
      v22 = v17;
      swift_errorRetain();
      sub_10000ADE4(&qword_10011FF28, &unk_1000F2E80);
      v23 = sub_1000E2358();
      v25 = sub_100029C70(v23, v24, v47);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v18, "Failed to verify %@ with error %s", v19, 0x16u);
      sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v21);
      v7 = v43;

      goto LABEL_10;
    }
  }

  v26 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  swift_beginAccess();
  v27 = *(a4 + v26);
  v28 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
  v29 = objc_allocWithZone(v28);
  *&v29[*((swift_isaMask & *v29) + 0x68)] = a3;
  v46.receiver = v29;
  v46.super_class = v28;
  v30 = a3;
  v31 = objc_msgSendSuper2(&v46, "init");
  v32 = [v27 objectForKey:v31];

  if (v32 && (v33 = v32 + *((swift_isaMask & *v32) + 0x68), v34 = *v33, v35 = v33[8], sub_1000B27B4(*v33, v33[8]), v32, v35 == 1))
  {
    swift_endAccess();
    v36 = *(v34 + 16);
    if (v36)
    {
      v44 = v7;
      v37 = v7 & 1;
      v38 = v34 + 40;
      do
      {
        v39 = *(v38 - 8);
        LOBYTE(v45) = v37;
        v47[0] = a2;

        v39(&v45, v47);

        v38 += 16;
        --v36;
      }

      while (v36);
      sub_1000B27C0(v34, 1);
      v7 = v44;
    }

    else
    {
      sub_1000B27C0(v34, 1);
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v40 = v30;
  if (a2)
  {
    v41 = 0xFFFFFFFFLL;
  }

  else
  {
    v41 = 0;
  }

  sub_1000AF388((a2 == 0) & v7, v41, v40);
  return swift_endAccess();
}

uint64_t sub_1000AF9E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000E2118();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E2148();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_1000B27CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115FB8;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_1000E2138();
  v19 = _swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_1000AFCC8(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(a2 & 1, a3);
    sub_100009BB4(v6, v7);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v8, v9);
}

uint64_t sub_1000AFD70(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1000B2718();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, v4);
    sub_100009BB4(v2, v3);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v6, v7);
}

id sub_1000AFEEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AFFE0(void *a1)
{
  v1 = a1;
  v2 = sub_1000B0014();

  return v2;
}

uint64_t sub_1000B0084(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1000B26A8(a1, v6);
  if (!v7)
  {
    sub_1000033C8(v6, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_5;
  }

  type metadata accessor for CountLimitCache.WrappedKey(0, v2[10], v2[11], v2[12]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = sub_1000E2318();

  return v3 & 1;
}

uint64_t sub_1000B01B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1000E28B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1000B0084(v8);

  sub_1000033C8(v8, &unk_10011ECF0, &qword_1000F08A0);
  return v6 & 1;
}

id sub_1000B0360(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000B0450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  isa = sub_1000E0C78().super.isa;
  v15 = sub_1000E0C78().super.isa;
  v18[4] = a7;
  v18[5] = a8;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10005FC2C;
  v18[3] = &unk_100116120;
  v16 = _Block_copy(v18);

  [v13 verifySignedData:isa matchesExpectedData:v15 withTokenURI:a5 forAlgorithm:a6 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1000B0558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  isa = sub_1000E0C78().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000B0630;
  v13[3] = &unk_1001160F8;
  v11 = _Block_copy(v13);

  [v9 signData:isa withAlgorithm:a3 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000B0630(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1000E0C88();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100015904(v4, v8);
}

id sub_1000B06DC()
{
  result = [*v0 pushToken];
  if (result)
  {
    v2 = result;
    v3 = sub_1000E0C88();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VoucherManagerImpl(uint64_t a1)
{
  result = qword_10011FD78;
  if (!qword_10011FD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B0790(uint64_t a1)
{
  result = sub_1000E2108();
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

uint64_t sub_1000B0844(uint64_t a1)
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

uint64_t sub_1000B08F0(uint64_t a1)
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

uint64_t sub_1000B09A8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000B09BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B0A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B0A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1000B0AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v29 = a4;
  v27 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1000E2708();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E26B8();
  __chkstk_darwin(v10);
  v11 = sub_1000E2148();
  __chkstk_darwin(v11 - 8);
  v33[3] = sub_10000CAAC(0, &qword_10011FF30, IDSService_ptr);
  v33[4] = &off_100115C50;
  v33[0] = a1;
  v32[3] = sub_10000CAAC(0, &qword_10011FF38, IDSPushHandler_ptr);
  v32[4] = &off_100115C68;
  v32[0] = a2;
  v12 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  v13 = [objc_allocWithZone(NSCache) init];
  [v13 setCountLimit:32];
  *&a5[v12] = v13;
  if (qword_10011DC78 != -1)
  {
    swift_once();
  }

  v14 = sub_1000E1F08();
  sub_1000049D0(v14, qword_100123170);
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2668();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initializing VoucherManager.", v17, 2u);
  }

  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2138();
  v31 = _swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_100011FD8(&qword_10011DCE8, &qword_10011DCE0, &qword_1000F0190);
  sub_1000E28C8();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue] = sub_1000E2748();
  sub_10002B4BC(v33, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsService]);
  sub_10002B4BC(v32, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler]);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement] = v27;
  v18 = OBJC_IVAR___CSDVoucherManagerImpl_timeout;
  v19 = sub_1000E2108();
  v20 = *(v19 - 8);
  v21 = v29;
  (*(v20 + 16))(&a5[v18], v29, v19);
  v30.receiver = a5;
  v30.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v30, "init");
  (*(v20 + 8))(v21, v19);
  sub_10000E9DC(v32);
  sub_10000E9DC(v33);
  return v22;
}

unint64_t sub_1000B0F6C(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000B0F7C(uint64_t a1, unint64_t a2, void *a3, char *a4, void (**a5)(void, void, void))
{
  v47 = a2;
  v9 = sub_1000E2118();
  v48 = *(v9 - 8);
  __chkstk_darwin(v9);
  v46 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E2148();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000E2168();
  v50 = *(v52 - 8);
  v14 = __chkstk_darwin(v52);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = v40 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v19 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a5);
  if ([v19 isEnabled])
  {
    v20 = swift_allocObject();
    v21 = swift_allocObject();
    v22 = v18;
    v23 = v47;
    v21[2] = a1;
    v21[3] = v23;
    v21[4] = sub_1000B27F4;
    v21[5] = v22;
    v43 = v22;
    v21[6] = a4;
    v21[7] = a3;
    *(v20 + 16) = sub_1000B283C;
    *(v20 + 24) = v21;
    v41 = v16;
    v45 = v11;
    v25 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
    v24 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
    v26 = sub_1000036AC(&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v25);
    v42 = v9;
    v40[1] = v26;
    v27 = swift_allocObject();
    v44 = v12;
    v28 = v27;
    *(v27 + 16) = a4;
    *(v27 + 24) = v20;
    v40[0] = *(v24 + 16);
    v29 = a4;
    sub_1000123E0(a1, v23);

    v30 = a3;

    (v40[0])(a1, v23, 3, sub_1000B28AC, v28, v25, v24);

    v47 = *&v29[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
    v31 = v41;
    sub_1000E2158();
    v32 = v49;
    sub_1000E21A8();
    v50 = *(v50 + 8);
    (v50)(v31, v52);
    aBlock[4] = sub_1000B28B4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_100116080;
    v33 = _Block_copy(aBlock);

    v34 = v51;
    sub_1000E2138();
    v53 = _swiftEmptyArrayStorage;
    sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
    v35 = v46;
    v36 = v42;
    sub_1000E28C8();
    sub_1000E26C8();
    _Block_release(v33);
    (*(v48 + 8))(v35, v36);
    (*(v44 + 8))(v34, v45);
    (v50)(v32, v52);
  }

  else
  {
    sub_1000B2718();
    swift_allocError();
    *v38 = 3;
    v39 = sub_1000E0BD8();
    (a5)[2](a5, 0, v39);
  }
}

uint64_t sub_1000B1568(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = sub_1000E2118();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E2148();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v134 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000E2168();
  v133 = *(v135 - 8);
  v13 = __chkstk_darwin(v135);
  v131 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v121 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = *&a2[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a3);
  if ([v17 isEnabled])
  {
    v126 = v11;
    v127 = v9;
    v128 = v10;
    v129 = v7;
    v130 = v6;
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v136 = v16;
    v18 = sub_1000E1F08();
    sub_1000049D0(v18, qword_100123170);
    v19 = a1;
    v20 = sub_1000E1EE8();
    v21 = sub_1000E2668();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Requested to verify %@.", v22, 0xCu);
      sub_1000033C8(v23, &unk_10011EAC0, &unk_1000F0E60);
    }

    v25 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
    swift_beginAccess();
    v26 = *&a2[v25];
    v27 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v28 = objc_allocWithZone(v27);
    *&v28[*((swift_isaMask & *v28) + 0x68)] = v19;
    v143.receiver = v28;
    v143.super_class = v27;
    v29 = v19;
    v30 = objc_msgSendSuper2(&v143, "init");
    v31 = [v26 objectForKey:v30];

    if (v31)
    {
      v32 = v31 + *((swift_isaMask & *v31) + 0x68);
      v33 = *v32;
      v34 = v32[8];
      sub_1000B27B4(*v32, v34);
      swift_endAccess();

      if (v34)
      {
        sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000F07C0;
        v36 = swift_allocObject();
        v37 = v136;
        *(v36 + 16) = sub_10001B2A8;
        *(v36 + 24) = v37;
        *(inited + 32) = sub_1000B2B58;
        *(inited + 40) = v36;
        aBlock[0] = v33;
        v38 = v29;
        sub_1000B27B4(v33, 1);

        sub_1000CC3E4(inited);
        v39 = aBlock[0];
        swift_beginAccess();
        v40 = *&a2[v25];
        v41 = v27;
        v42 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
        v43 = objc_allocWithZone(v42);
        v44 = &v43[*((swift_isaMask & *v43) + 0x68)];
        *v44 = v39;
        v44[8] = 1;
        v138.receiver = v43;
        v138.super_class = v42;

        v45 = objc_msgSendSuper2(&v138, "init");
        v46 = objc_allocWithZone(v41);
        *&v46[*((swift_isaMask & *v46) + 0x68)] = v38;
        v137.receiver = v46;
        v137.super_class = v41;
        v47 = objc_msgSendSuper2(&v137, "init");
        [v40 setObject:v45 forKey:v47];
        swift_endAccess();

        sub_1000B27C0(v33, 1);
      }

      else
      {
        v61 = sub_1000E1EE8();
        v62 = sub_1000E2698();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 67109120;
          *(v63 + 4) = v33 & 1;
          _os_log_impl(&_mh_execute_header, v61, v62, "Retrieved previously verified voucher: %{BOOL}d.", v63, 8u);
        }

        a3[2](a3, v33 & 1, 0);
      }
    }

    v125 = v27;
    swift_endAccess();
    v51 = [v29 handle];
    v52 = TUCopyIDSFromIDForHandle();

    if (v52)
    {
      v124 = sub_1000E2338();
      v54 = v53;

      v55 = [v29 tokenPrefixedURI];
      if (!v55)
      {
        sub_1000E2338();
        v55 = sub_1000E2328();
      }

      v56 = IDSCopyAddressDestinationForDestination();

      if (v56)
      {
        v57 = sub_1000E2338();
        v59 = v58;

        if (v124 == v57 && v54 == v59)
        {

          v60 = v136;
LABEL_24:
          v65 = [v29 tokenPrefixedURI];
          if (!v65)
          {
            sub_1000E2338();
            v65 = sub_1000E2328();
          }

          v66 = [objc_allocWithZone(IDSURI) initWithPrefixedURI:v65];

          v67 = v125;
          if (v66)
          {
            v124 = v66;
            sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1000F07C0;
            v69 = swift_allocObject();
            *(v69 + 16) = sub_10001B2A8;
            *(v69 + 24) = v60;
            *(v68 + 32) = sub_1000B276C;
            *(v68 + 40) = v69;
            swift_beginAccess();
            v123 = *&a2[v25];
            v70 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
            v71 = objc_allocWithZone(v70);
            v72 = &v71[*((swift_isaMask & *v71) + 0x68)];
            *v72 = v68;
            v72[8] = 1;
            v142.receiver = v71;
            v142.super_class = v70;
            v73 = v29;

            v74 = objc_msgSendSuper2(&v142, "init");
            v75 = objc_allocWithZone(v67);
            *&v75[*((swift_isaMask & *v75) + 0x68)] = v73;
            v141.receiver = v75;
            v141.super_class = v67;
            v76 = objc_msgSendSuper2(&v141, "init");
            [v123 setObject:v74 forKey:v76];
            swift_endAccess();

            v77 = swift_allocObject();
            v78 = swift_allocObject();
            *(v77 + 16) = sub_1000B279C;
            *(v78 + 16) = v73;
            *(v78 + 24) = a2;
            *(v77 + 24) = v78;
            v79 = v73;
            v80 = a2;
            if ([v17 shouldForceVerificationFailures])
            {
              sub_1000B2718();
              v81 = swift_allocError();
              *v82 = 5;

              sub_1000AF548(0, v81, *(v78 + 16), *(v78 + 24));
              sub_100009BB4(sub_1000B279C, v78);

              v83 = *(v77 + 16);
              v84 = *(v77 + 24);
              *(v77 + 16) = 0;
              *(v77 + 24) = 0;
              sub_100009BB4(v83, v84);
            }

            else
            {
              v101 = *&v80[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
              v100 = *&v80[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
              v125 = sub_1000036AC(&v80[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v101);
              v102 = [v79 encryptedData];
              v123 = sub_1000E0C88();
              v122 = v103;

              v104 = [v79 unsafeData];
              v105 = sub_1000E0C88();
              v107 = v106;

              v108 = swift_allocObject();
              *(v108 + 16) = v80;
              *(v108 + 24) = v77;
              v109 = *(v100 + 8);
              v110 = v80;

              v119 = v101;
              v120 = v100;
              v111 = v123;
              v112 = v122;
              v109(v123, v122, v105, v107, v124, 3, sub_1000B27A4, v108, v119, v120);

              sub_100006660(v105, v107);
              sub_100006660(v111, v112);
              v125 = *&v110[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
              v113 = v131;
              sub_1000E2158();
              v114 = v132;
              sub_1000E21A8();
              v133 = *(v133 + 8);
              (v133)(v113, v135);
              aBlock[4] = sub_1000B27AC;
              aBlock[5] = v77;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000026A0;
              aBlock[3] = &unk_100115F40;
              v115 = _Block_copy(aBlock);

              v116 = v134;
              sub_1000E2138();
              v139 = _swiftEmptyArrayStorage;
              sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
              sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
              v117 = v127;
              v118 = v130;
              sub_1000E28C8();
              sub_1000E26C8();

              _Block_release(v115);
              (*(v129 + 8))(v117, v118);
              (*(v126 + 8))(v116, v128);
              (v133)(v114, v135);
            }
          }

          v94 = v29;
          v95 = sub_1000E1EE8();
          v96 = sub_1000E2678();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *v97 = 138412290;
            *(v97 + 4) = v94;
            *v98 = v94;
            v99 = v94;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed to verify %@ because we couldn't create a URI.", v97, 0xCu);
            sub_1000033C8(v98, &unk_10011EAC0, &unk_1000F0E60);
          }

          sub_1000B2718();
          swift_allocError();
          v92 = 1;
LABEL_32:
          *v91 = v92;
          v93 = sub_1000E0BD8();
          (a3)[2](a3, 0, v93);
        }

        v64 = sub_1000E2C68();

        v60 = v136;
        if (v64)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v85 = v29;
    v86 = sub_1000E1EE8();
    v87 = sub_1000E2678();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138412290;
      *(v88 + 4) = v85;
      *v89 = v85;
      v90 = v85;
      _os_log_impl(&_mh_execute_header, v86, v87, "Failed to verify %@ because the token prefixed URI did not come from the handle.", v88, 0xCu);
      sub_1000033C8(v89, &unk_10011EAC0, &unk_1000F0E60);
    }

    sub_1000B2718();
    swift_allocError();
    v92 = 4;
    goto LABEL_32;
  }

  sub_1000B2718();
  swift_allocError();
  *v48 = 3;
  v49 = sub_1000E0BD8();
  (a3)[2](a3, 0, v49);
}

uint64_t sub_1000B26A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2718()
{
  result = qword_10011FF08;
  if (!qword_10011FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF08);
  }

  return result;
}

double sub_1000B27B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000B27C0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000B27DC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000B27C0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000B27FC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B286C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B28C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000123E0(result, a2);
  }

  return result;
}

uint64_t sub_1000B28DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B293C()
{
  result = qword_10011FF40;
  if (!qword_10011FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF40);
  }

  return result;
}

unint64_t sub_1000B2994()
{
  result = qword_10011FF48;
  if (!qword_10011FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF48);
  }

  return result;
}

unint64_t sub_1000B29EC()
{
  result = qword_10011FF50;
  if (!qword_10011FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF50);
  }

  return result;
}

unint64_t sub_1000B2A44()
{
  result = qword_10011FF58;
  if (!qword_10011FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF58);
  }

  return result;
}

unint64_t sub_1000B2A9C()
{
  result = qword_10011FF60;
  if (!qword_10011FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF60);
  }

  return result;
}

unint64_t sub_1000B2AF0()
{
  result = qword_10011FF68;
  if (!qword_10011FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF68);
  }

  return result;
}

uint64_t sub_1000B2B74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1D08();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v3[8] = qword_1001230F0;

  return _swift_task_switch(sub_1000B2C70, v5, 0);
}

uint64_t sub_1000B2C70()
{
  v26 = v0;
  if (qword_10011DC90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_1001231B8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = sub_1000E1CF8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100029C70(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Incoming call server got an incoming call answer request %s", v12, 0xCu);
    sub_10000E9DC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 64);
  v19 = sub_1000B41BC(&qword_100120020, type metadata accessor for ConduitActor, &unk_1000F2250);
  v20 = swift_task_alloc();
  *(v0 + 72) = v20;
  v20[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v21 = swift_task_alloc();
  *(v0 + 80) = v21;
  v22 = sub_1000E1D28();
  *v21 = v0;
  v21[1] = sub_1000B2F44;
  v23 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v18, v19, 0xD00000000000002CLL, 0x80000001000EC1B0, sub_1000B40D8, v20, v22);
}

uint64_t sub_1000B2F44()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return _swift_task_switch(sub_1000B3090, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000B3090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a3;
  v34 = sub_1000E2118();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E2148();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000ADE4(&unk_100120028, &qword_1000F3048);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v28 = &v27 - v9;
  v11 = sub_1000E1D08();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [*(a2 + 24) queue];
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v14, v30, v11);
  v16 = v10;
  v17 = v7;
  (*(v8 + 16))(v16, v29, v7);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = (v13 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  (*(v12 + 32))(v20 + v18, v14, v11);
  (*(v8 + 32))(v20 + v19, v28, v17);
  aBlock[4] = sub_1000B40E0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001161B8;
  v21 = _Block_copy(aBlock);

  v22 = v32;
  sub_1000E2138();
  v38 = _swiftEmptyArrayStorage;
  sub_1000B41BC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_10002B8C4();
  v24 = v33;
  v23 = v34;
  sub_1000E28C8();
  v25 = v31;
  sub_1000E2738();
  _Block_release(v21);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v22, v36);
}

void sub_1000B35A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E1D28();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000E1D08();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v72 - v12;
  __chkstk_darwin(v11);
  v15 = &v72 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = v7;
    v77 = a3;
    v78 = Strong;
    v18 = *(Strong + 24);
    sub_1000E1CF8();
    v19 = sub_1000E2328();

    v20 = [v18 callWithCallUUID:v19];

    if (v20)
    {
      if ([v20 status] != 4)
      {
        if (qword_10011DC90 != -1)
        {
          swift_once();
        }

        v48 = sub_1000E1F08();
        sub_1000049D0(v48, qword_1001231B8);
        v25 = v20;
        v49 = sub_1000E1EE8();
        v50 = sub_1000E2678();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 67109120;
          *(v51 + 4) = [v25 status];

          _os_log_impl(&_mh_execute_header, v49, v50, "Attempting to answer a call that is not ringing. Call status: %d", v51, 8u);
        }

        else
        {

          v49 = v25;
        }

        sub_1000B4204();
        v55 = swift_allocError();
        *v56 = 1;
        v79 = v55;
        sub_10000ADE4(&unk_100120028, &qword_1000F3048);
        sub_1000E24C8();

        goto LABEL_32;
      }

      if ((sub_1000E1CE8() & 1) == 0)
      {
        v25 = 0;
        v54 = v78;
LABEL_29:
        v66 = [objc_allocWithZone(TUAnswerRequest) initWithCall:v20];
        [v66 setWantsHoldMusic:v25 == 0];
        [*(v54 + 24) answerWithRequest:v66];
        if (v25)
        {
          v67 = *(v54 + 24);
          v68 = v25;
          v69 = [v67 routeController];
          [v69 pickRoute:v68];
        }

        sub_1000E1D18();
        sub_10000ADE4(&unk_100120028, &qword_1000F3048);
        sub_1000E24D8();

LABEL_32:
        return;
      }

      v21 = [*(v78 + 24) routeController];
      v22 = [v21 routes];

      sub_1000B4258();
      v23 = sub_1000E2468();

      __chkstk_darwin(v24);
      *(&v72 - 2) = a2;
      v25 = sub_1000DF118(sub_1000B42A4, (&v72 - 4), v23);

      if (v25)
      {
        if (qword_10011DC90 != -1)
        {
          swift_once();
        }

        v26 = sub_1000E1F08();
        sub_1000049D0(v26, qword_1001231B8);
        (*(v17 + 16))(v15, a2, v6);
        v27 = v25;
        v28 = sub_1000E1EE8();
        v29 = sub_1000E2698();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v79 = v76;
          *v30 = 136315394;
          v74 = v29;
          v31 = sub_1000E1CD8();
          v73 = v28;
          v32 = v31;
          v34 = v33;
          (*(v17 + 8))(v15, v6);
          v35 = sub_100029C70(v32, v34, &v79);

          *(v30 + 4) = v35;
          *(v30 + 12) = 2112;
          *(v30 + 14) = v27;
          v36 = v75;
          *v75 = v25;
          v37 = v27;
          v38 = v73;
          _os_log_impl(&_mh_execute_header, v73, v74, "Found TURoute for route identifier %s. Routing call audio to %@", v30, 0x16u);
          sub_1000222AC(v36);

          sub_10000E9DC(v76);
        }

        else
        {

          (*(v17 + 8))(v15, v6);
        }

        v54 = v78;
        goto LABEL_29;
      }

      if (qword_10011DC90 != -1)
      {
        swift_once();
      }

      v57 = sub_1000E1F08();
      sub_1000049D0(v57, qword_1001231B8);
      (*(v17 + 16))(v13, a2, v6);
      v58 = sub_1000E1EE8();
      v59 = sub_1000E2678();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v79 = v61;
        *v60 = 136315138;
        v62 = sub_1000E1CD8();
        v64 = v63;
        (*(v17 + 8))(v13, v6);
        v65 = sub_100029C70(v62, v64, &v79);

        *(v60 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v58, v59, "TURouteController could not find TURoute with identifier %s", v60, 0xCu);
        sub_10000E9DC(v61);
      }

      else
      {

        (*(v17 + 8))(v13, v6);
      }

      sub_1000B4204();
      v70 = swift_allocError();
      *v71 = 2;
      v79 = v70;
      sub_10000ADE4(&unk_100120028, &qword_1000F3048);
      sub_1000E24C8();
    }

    else
    {
      if (qword_10011DC90 != -1)
      {
        swift_once();
      }

      v39 = sub_1000E1F08();
      sub_1000049D0(v39, qword_1001231B8);
      (*(v17 + 16))(v10, a2, v6);
      v40 = sub_1000E1EE8();
      v41 = sub_1000E2678();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v79 = v43;
        *v42 = 136315138;
        v44 = sub_1000E1CF8();
        v46 = v45;
        (*(v17 + 8))(v10, v6);
        v47 = sub_100029C70(v44, v46, &v79);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "Couldn't find incoming call with UUID %s", v42, 0xCu);
        sub_10000E9DC(v43);
      }

      else
      {

        (*(v17 + 8))(v10, v6);
      }

      sub_1000B4204();
      v52 = swift_allocError();
      *v53 = 0;
      v79 = v52;
      sub_10000ADE4(&unk_100120028, &qword_1000F3048);
      sub_1000E24C8();
    }
  }
}

uint64_t sub_1000B3FBC(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  v2 = sub_1000E2338();
  v4 = v3;

  if (v2 == sub_1000E1CD8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000E2C68();
  }

  return v7 & 1;
}

uint64_t sub_1000B406C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1000B40E0()
{
  v1 = *(sub_1000E1D08() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10000ADE4(&unk_100120028, &qword_1000F3048) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1000B35A4(v5, v0 + v2, v6);
}

uint64_t sub_1000B41BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B4204()
{
  result = qword_100120038;
  if (!qword_100120038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120038);
  }

  return result;
}

unint64_t sub_1000B4258()
{
  result = qword_100120040;
  if (!qword_100120040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingCallServerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingCallServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B4418()
{
  result = qword_100120050;
  if (!qword_100120050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120050);
  }

  return result;
}

void *sub_1000B446C(uint64_t a1)
{
  v48 = sub_1000E1668();
  v3 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E16C8();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1000E2968();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return result;
  }

  v61 = _swiftEmptyArrayStorage;
  sub_10002A248(0, v9 & ~(v9 >> 63), 0);
  v56 = v61;
  if (v54)
  {
    result = sub_1000E2908();
  }

  else
  {
    result = sub_1000E28D8();
    v11 = *(a1 + 36);
  }

  v58 = result;
  v59 = v11;
  v60 = v54 != 0;
  if (v9 < 0)
  {
    goto LABEL_47;
  }

  v41 = v1;
  v12 = 0;
  v46 = (v3 + 104);
  v51 = v53 + 32;
  v43 = enum case for NCProtoContactHandleAnonym.AnonymType.emailAddress(_:);
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  v50 = enum case for NCProtoContactHandleAnonym.AnonymType.phoneNumber(_:);
  if (a1 < 0)
  {
    v13 = a1;
  }

  v44 = a1 + 56;
  v45 = v13;
  v42 = a1 + 64;
  v49 = v9;
  while (v12 < v9)
  {
    if (__OFADD__(v12++, 1))
    {
      goto LABEL_43;
    }

    v16 = v58;
    v17 = v60;
    v55 = v59;
    v18 = a1;
    sub_1000D4B14(v58, v59, v60, a1);
    v20 = v19;
    sub_1000E16B8();
    v21 = [v20 identifier];
    sub_1000E2338();

    sub_1000E1678();
    v22 = [v20 localizedDisplayName];
    sub_1000E2338();

    sub_1000E1688();
    v23 = [v20 label];
    if (v23)
    {
      v24 = v23;
      sub_1000E2338();
    }

    sub_1000E16A8();
    v25 = [v20 type];
    v26 = v50;
    a1 = v18;
    if (v25 == 1)
    {
      goto LABEL_20;
    }

    if (v25 == 2)
    {
      v26 = v43;
LABEL_20:
      (*v46)(v47, v26, v48);
      sub_1000E1698();
    }

    v27 = v56;
    v61 = v56;
    v29 = v56[2];
    v28 = v56[3];
    if (v29 >= v28 >> 1)
    {
      sub_10002A248((v28 > 1), v29 + 1, 1);
      v27 = v61;
    }

    v27[2] = v29 + 1;
    v30 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = v27;
    result = (*(v53 + 32))(v27 + v30 + *(v53 + 72) * v29, v8, v52);
    if (v54)
    {
      if (!v17)
      {
        goto LABEL_48;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v9 = v49;
      sub_10000ADE4(&unk_100120180, &qword_1000F3348);
      v14 = sub_1000E2618();
      sub_1000E29D8();
      result = v14(v57, 0);
      if (v12 == v9)
      {
LABEL_40:
        sub_10000A848(v58, v59, v60);
        return v56;
      }
    }

    else
    {
      if (v17)
      {
        goto LABEL_49;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v31 = (1 << *(v18 + 32));
      if (v16 >= v31)
      {
        goto LABEL_44;
      }

      v32 = v16 >> 6;
      v33 = *(v44 + 8 * (v16 >> 6));
      if (((v33 >> v16) & 1) == 0)
      {
        goto LABEL_45;
      }

      if (*(v18 + 36) != v55)
      {
        goto LABEL_46;
      }

      v34 = v33 & (-2 << (v16 & 0x3F));
      if (v34)
      {
        v31 = (__clz(__rbit64(v34)) | v16 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v35 = v32 << 6;
        v36 = v32 + 1;
        v37 = (v42 + 8 * v32);
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_10000A848(v16, v55, 0);
            v31 = (__clz(__rbit64(v38)) + v35);
            goto LABEL_39;
          }
        }

        result = sub_10000A848(v16, v55, 0);
      }

LABEL_39:
      v40 = *(v18 + 36);
      v58 = v31;
      v59 = v40;
      v60 = 0;
      v9 = v49;
      if (v12 == v49)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void *sub_1000B4A24(uint64_t a1)
{
  v3 = sub_1000E14D8();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1000E2968();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_10002A28C(0, v6 & ~(v6 >> 63), 0);
    v45 = v50;
    if (v42)
    {
      result = sub_1000E2908();
    }

    else
    {
      result = sub_1000E28D8();
      v8 = *(a1 + 36);
    }

    v47 = result;
    v48 = v8;
    v49 = v42 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v40 = v3;
      v44 = v1;
      v9 = 0;
      v38 = v6;
      v39 = v41 + 32;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v36 = a1 + 56;
      v37 = v10;
      v35 = a1 + 64;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v47;
        v14 = v49;
        v43 = v48;
        v15 = a1;
        sub_1000D4B28(v47, v48, v49, a1);
        v17 = v16;
        *(&v35 - 2) = __chkstk_darwin(v16);
        sub_1000041BC(&qword_1001200B8, 255, &type metadata accessor for NCProtoActiveConversation, &protocol conformance descriptor for NCProtoActiveConversation);
        v18 = v5;
        v19 = v40;
        v20 = v44;
        sub_1000E0E38();
        v44 = v20;

        v21 = v45;
        v50 = v45;
        v23 = v45[2];
        v22 = v45[3];
        if (v23 >= v22 >> 1)
        {
          sub_10002A28C((v22 > 1), v23 + 1, 1);
          v21 = v50;
        }

        v21[2] = v23 + 1;
        v24 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v45 = v21;
        result = (*(v41 + 32))(v21 + v24 + *(v41 + 72) * v23, v18, v19);
        if (v42)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          a1 = v15;
          v5 = v18;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v38;
          sub_10000ADE4(&unk_1001200C0, &unk_1000F3C00);
          v11 = sub_1000E2618();
          sub_1000E29D8();
          result = v11(v46, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_10000A848(v47, v48, v49);
            return v45;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v15;
          v5 = v18;
          v25 = (1 << *(v15 + 32));
          if (v13 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v13 >> 6;
          v27 = *(v36 + 8 * (v13 >> 6));
          if (((v27 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v15 + 36) != v43)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v13 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v13 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v35 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_10000A848(v13, v43, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_33;
              }
            }

            result = sub_10000A848(v13, v43, 0);
          }

LABEL_33:
          v34 = *(v15 + 36);
          v47 = v25;
          v48 = v34;
          v49 = 0;
          v6 = v38;
          if (v9 == v38)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_1000B4EC0(uint64_t a1)
{
  v42 = sub_1000E10C8();
  __chkstk_darwin(v42);
  v41 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000E1528();
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1000E2968();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_10002A2D0(0, v5 & ~(v5 >> 63), 0);
    v47 = v52;
    if (v44)
    {
      result = sub_1000E2908();
    }

    else
    {
      result = sub_1000E28D8();
      v7 = *(a1 + 36);
    }

    v49 = result;
    v50 = v7;
    v51 = v44 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v38 = v43 + 32;
      v39 = a1;
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v35 = a1 + 56;
      v36 = v9;
      v34 = a1 + 64;
      v37 = v5;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_39;
        }

        v12 = v49;
        v46 = v50;
        v45 = v51;
        sub_1000D4B3C(v49, v50, v51, a1);
        v14 = v13;
        sub_1000E1518();
        v15 = [v14 contactIdentifier];
        sub_1000E2338();
        v16 = v4;

        sub_1000E1508();
        v17 = [v14 contact];
        *(&v34 - 2) = __chkstk_darwin(v17);
        sub_1000041BC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo, &protocol conformance descriptor for NCProtoContactInfo);
        sub_1000E0E38();

        sub_1000E14E8();
        v18 = [v14 anonyms];
        sub_10000CAAC(0, &qword_100120160, TUContinuityHandleAnonym_ptr);
        sub_10001B174(&qword_100120168, &qword_100120160, TUContinuityHandleAnonym_ptr);
        v19 = sub_1000E25E8();

        sub_1000B446C(v19);

        sub_1000E14F8();

        v20 = v47;
        v52 = v47;
        v22 = v47[2];
        v21 = v47[3];
        if (v22 >= v21 >> 1)
        {
          sub_10002A2D0((v21 > 1), v22 + 1, 1);
          v20 = v52;
        }

        v20[2] = v22 + 1;
        v23 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v47 = v20;
        result = (*(v43 + 32))(v20 + v23 + *(v43 + 72) * v22, v4, v40);
        if (v44)
        {
          a1 = v39;
          if (!v45)
          {
            goto LABEL_44;
          }

          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10000ADE4(&qword_100120178, &qword_1000F3340);
          v10 = sub_1000E2618();
          sub_1000E29D8();
          result = v10(v48, 0);
        }

        else
        {
          a1 = v39;
          if (v45)
          {
            goto LABEL_45;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v24 = (1 << *(v39 + 32));
          if (v12 >= v24)
          {
            goto LABEL_40;
          }

          v25 = v12 >> 6;
          v26 = *(v35 + 8 * (v12 >> 6));
          if (((v26 >> v12) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v39 + 36) != v46)
          {
            goto LABEL_42;
          }

          v27 = v26 & (-2 << (v12 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                result = sub_10000A848(v12, v46, 0);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_34;
              }
            }

            result = sub_10000A848(v12, v46, 0);
LABEL_34:
            v4 = v16;
          }

          v33 = *(a1 + 36);
          v49 = v24;
          v50 = v33;
          v51 = 0;
        }

        v5 = v37;
        if (v8 == v37)
        {
          sub_10000A848(v49, v50, v51);
          return v47;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

void sub_1000B549C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_100120110, CHHandle_ptr);
    sub_10001B174(&qword_10011EB70, &unk_100120110, CHHandle_ptr);
    sub_1000E2628();
    v1 = v24;
    v23 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);

    v3 = 0;
  }

  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1000E29A8() || (sub_10000CAAC(0, &unk_100120110, CHHandle_ptr), swift_dynamicCast(), v13 = v29, v11 = v3, v12 = v4, !v29))
      {
LABEL_31:
        sub_10000A840(v1);
        return;
      }

      goto LABEL_18;
    }

    v9 = v3;
    v10 = v4;
    v11 = v3;
    if (!v4)
    {
      break;
    }

LABEL_14:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_18:
    v14 = sub_10005FCA4();

    v15 = *(v14 + 16);
    v16 = *(v8 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v17 <= *(v8 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_27;
      }

LABEL_8:

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v8 = sub_1000D2030(isUniquelyReferenced_nonNull_native, v19, 1, v8);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((*(v8 + 3) >> 1) - *(v8 + 2) < v15)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        v20 = *(v8 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_36;
        }

        *(v8 + 2) = v22;
        v3 = v11;
        v4 = v12;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v2 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v10 = *(v23 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000B5788(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B5834, v8, 0);
}

uint64_t sub_1000B5834()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1638();
    sub_1000041BC(&qword_100120250, 255, &type metadata accessor for NCProtoDeviceTokenRequest, &protocol conformance descriptor for NCProtoDeviceTokenRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v3;
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1000B5B18;

    return sub_100057500(v0 + 16, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 74);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 74);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000B5B18()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1000CF784;
  }

  else
  {
    v4 = sub_1000B5C44;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B5C44()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v9 = sub_1000E1728();
  *v8 = v0;
  v8[1] = sub_1000B5DAC;
  v10 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CF4EC, v7, v9);
}

uint64_t sub_1000B5DAC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1000CF78C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1000CF788;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B5ED4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B5F80, v8, 0);
}

uint64_t sub_1000B5F80()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1428();
    sub_1000041BC(&unk_10011F8A0, 255, &type metadata accessor for NCProtoDisconnectRequest, &protocol conformance descriptor for NCProtoDisconnectRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v3;
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1000B6264;

    return sub_100057500(v0 + 16, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 74);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 74);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000B6264()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1000CF784;
  }

  else
  {
    v4 = sub_1000B6390;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B6390()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v9 = sub_1000E1658();
  *v8 = v0;
  v8[1] = sub_1000B5DAC;
  v10 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CEE80, v7, v9);
}

uint64_t sub_1000B64F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B65A4, v8, 0);
}

uint64_t sub_1000B65A4()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E18B8();
    sub_1000041BC(&unk_1001201C8, 255, &type metadata accessor for NCProtoLagunaConnectionRequest, &protocol conformance descriptor for NCProtoLagunaConnectionRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v3;
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1000B6888;

    return sub_100057500(v0 + 16, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 74);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 74);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000B6888()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1000CF784;
  }

  else
  {
    v4 = sub_1000B69B4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B69B4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v9 = sub_1000E1928();
  *v8 = v0;
  v8[1] = sub_1000B5DAC;
  v10 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CE978, v7, v9);
}

uint64_t sub_1000B6B1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B6BC8, v8, 0);
}

uint64_t sub_1000B6BC8()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1358();
    sub_1000041BC(&qword_100120270, 255, &type metadata accessor for NCProtoCallStateRequest, &protocol conformance descriptor for NCProtoCallStateRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v3;
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1000B6EAC;

    return sub_100057500(v0 + 16, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 74);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 74);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000B6EAC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_1000B7268;
  }

  else
  {
    v4 = sub_1000B6FD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B6FD8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor, &unk_1000F1B48);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v9 = sub_1000E13B8();
  *v8 = v0;
  v8[1] = sub_1000B7140;
  v10 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CF544, v7, v9);
}

uint64_t sub_1000B7140()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1000B7350;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1000B72D8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000B7268()
{
  sub_100006660(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B72D8()
{
  sub_100006660(v0[17], v0[18]);

  sub_10002B7FC((v0 + 2));
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000B7350()
{
  v2 = v0[17];
  v1 = v0[18];

  sub_100006660(v2, v1);

  sub_10002B7FC((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B73E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10)
{
  v53 = a3;
  v51 = a1;
  v52 = sub_10000ADE4(a7, a8);
  v50 = *(v52 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v52);
  v48 = &v41 - v14;
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1000E1F08();
  sub_1000049D0(v15, qword_1001231A0);
  sub_10002B7A0(a4, v62);

  v16 = sub_1000E1EE8();
  v17 = sub_1000E2698();

  if (os_log_type_enabled(v16, v17))
  {
    v46 = a5;
    v47 = a6;
    v18 = a4;
    v19 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100029C70(*(a2 + 16), *(a2 + 24), v61);
    *(v19 + 12) = 2080;
    v20 = sub_10003E4B0(v53);
    v22 = sub_100029C70(v20, v21, v61);

    *(v19 + 14) = v22;
    *(v19 + 22) = 2080;
    sub_10002B7A0(v62, v56);
    if (v60 == 1)
    {
      sub_10002B7FC(v56);
      v23 = 0xEB00000000726565;
      v24 = 0x507463657269642ELL;
    }

    else
    {
      v54 = 0x286465726168732ELL;
      v55 = 0xE800000000000000;
      sub_1000E23A8(v59);

      v66._countAndFlagsBits = 41;
      v66._object = 0xE100000000000000;
      sub_1000E23A8(v66);
      v24 = v54;
      v23 = v55;
      sub_10000E9DC(v56);
    }

    sub_10002B7FC(v62);
    v25 = sub_100029C70(v24, v23, v61);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Sending request %s via %s.", v19, 0x20u);
    swift_arrayDestroy();

    a4 = v18;
    a5 = v46;
    a6 = v47;
  }

  else
  {

    sub_10002B7FC(v62);
  }

  v47 = a10;
  sub_10002B7A0(a4, v62);
  if (v65 == 1)
  {
    sub_1000E0EF8();
  }

  else
  {

    sub_1000079B4(v62, v56);
  }

  v43 = v58;
  v45 = v57;
  v44 = sub_1000036AC(v56, v57);
  v42 = sub_10003E4B0(v53);
  v46 = v26;
  sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *&v62[0] = 0x6567617373656DLL;
  *(&v62[0] + 1) = 0xE700000000000000;
  sub_1000E2A08();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a5;
  *(inited + 80) = a6;
  sub_1000123E0(a5, a6);
  v28 = sub_10000C018(inited);
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
  sub_10002B7A0(a4, v62);
  v29 = a2;
  if (v65 == 1)
  {
    sub_10002B7FC(v62);
    v30 = sub_1000E2338();
    v32 = v31;
  }

  else
  {
    v30 = v63;
    v32 = v64;
    sub_10000E9DC(v62);
  }

  v33 = v50;
  v34 = v48;
  v35 = v52;
  (*(v50 + 16))(v48, v51, v52);
  v36 = (*(v33 + 80) + 25) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  *(v37 + 24) = v53;
  (*(v33 + 32))(v37 + v36, v34, v35);
  v38 = v43;
  v39 = *(v43 + 200);

  v39(v42, v46, v28, v30, v32, 0, v47, v37, v45, v38);

  return sub_10000E9DC(v56);
}

uint64_t sub_1000B7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000E1728();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  if (a3)
  {
    swift_willThrow();
    v18 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    swift_errorRetain();
    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v49[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
      *(v26 + 12) = 2080;
      v28 = sub_10003E4B0(a5);
      v30 = sub_100029C70(v28, v29, v49);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v31;
      *v27 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Request failed %s: %@.", v26, 0x20u);
      sub_1000033C8(v27, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v49[0] = v18;
    sub_10000ADE4(&qword_100120258, &unk_1000F34E0);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v46 = v15;
  v47 = 0x6567617373656DLL;
  v48 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v19 = sub_10000B3E0(v49), (v20 & 1) == 0))
  {
    sub_10000C1C0(v49);
LABEL_10:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v19, &v51);
  sub_10000C1C0(v49);
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1000033C8(&v51, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v18 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v21 = v49[0];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1000123E0(v21, *(&v21 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&unk_100120260, 255, &type metadata accessor for NCProtoDeviceTokenResponse, &protocol conformance descriptor for NCProtoDeviceTokenResponse);
  v44 = *(&v21 + 1);
  v45 = v21;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E1F08();
  sub_1000049D0(v33, qword_1001231A0);

  v34 = sub_1000E1EE8();
  v35 = sub_1000E2698();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
    *(v36 + 12) = 2080;
    v37 = sub_10003E4B0(a5);
    v39 = sub_100029C70(v37, v38, v49);

    *(v36 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Response received for %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  v41 = v44;
  v40 = v45;
  v42 = v46;
  (*(v11 + 16))(v14, v17, v46);
  sub_10000ADE4(&qword_100120258, &unk_1000F34E0);
  sub_1000E24D8();
  sub_100006660(v40, v41);
  return (*(v11 + 8))(v17, v42);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000E1658();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  if (a3)
  {
    swift_willThrow();
    v18 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    swift_errorRetain();
    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v49[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
      *(v26 + 12) = 2080;
      v28 = sub_10003E4B0(a5);
      v30 = sub_100029C70(v28, v29, v49);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v31;
      *v27 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Request failed %s: %@.", v26, 0x20u);
      sub_1000033C8(v27, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v49[0] = v18;
    sub_10000ADE4(&qword_100120218, &qword_1000F3428);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v46 = v15;
  v47 = 0x6567617373656DLL;
  v48 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v19 = sub_10000B3E0(v49), (v20 & 1) == 0))
  {
    sub_10000C1C0(v49);
LABEL_10:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v19, &v51);
  sub_10000C1C0(v49);
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1000033C8(&v51, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v18 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v21 = v49[0];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1000123E0(v21, *(&v21 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120220, 255, &type metadata accessor for NCProtoDisconnectResponse, &protocol conformance descriptor for NCProtoDisconnectResponse);
  v44 = *(&v21 + 1);
  v45 = v21;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E1F08();
  sub_1000049D0(v33, qword_1001231A0);

  v34 = sub_1000E1EE8();
  v35 = sub_1000E2698();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
    *(v36 + 12) = 2080;
    v37 = sub_10003E4B0(a5);
    v39 = sub_100029C70(v37, v38, v49);

    *(v36 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Response received for %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  v41 = v44;
  v40 = v45;
  v42 = v46;
  (*(v11 + 16))(v14, v17, v46);
  sub_10000ADE4(&qword_100120218, &qword_1000F3428);
  sub_1000E24D8();
  sub_100006660(v40, v41);
  return (*(v11 + 8))(v17, v42);
}

uint64_t sub_1000B8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000E1928();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  if (a3)
  {
    swift_willThrow();
    v18 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    swift_errorRetain();
    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v49[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
      *(v26 + 12) = 2080;
      v28 = sub_10003E4B0(a5);
      v30 = sub_100029C70(v28, v29, v49);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v31;
      *v27 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Request failed %s: %@.", v26, 0x20u);
      sub_1000033C8(v27, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v49[0] = v18;
    sub_10000ADE4(&qword_1001201E8, &unk_1000F33A8);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v46 = v15;
  v47 = 0x6567617373656DLL;
  v48 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v19 = sub_10000B3E0(v49), (v20 & 1) == 0))
  {
    sub_10000C1C0(v49);
LABEL_10:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v19, &v51);
  sub_10000C1C0(v49);
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1000033C8(&v51, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v18 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v21 = v49[0];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1000123E0(v21, *(&v21 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120200, 255, &type metadata accessor for NCProtoLagunaConnectionResponse, &protocol conformance descriptor for NCProtoLagunaConnectionResponse);
  v44 = *(&v21 + 1);
  v45 = v21;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E1F08();
  sub_1000049D0(v33, qword_1001231A0);

  v34 = sub_1000E1EE8();
  v35 = sub_1000E2698();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
    *(v36 + 12) = 2080;
    v37 = sub_10003E4B0(a5);
    v39 = sub_100029C70(v37, v38, v49);

    *(v36 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Response received for %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  v41 = v44;
  v40 = v45;
  v42 = v46;
  (*(v11 + 16))(v14, v17, v46);
  sub_10000ADE4(&qword_1001201E8, &unk_1000F33A8);
  sub_1000E24D8();
  sub_100006660(v40, v41);
  return (*(v11 + 8))(v17, v42);
}

uint64_t sub_1000B8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000E13B8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - v16;
  if (a3)
  {
    swift_willThrow();
    v18 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_1001231A0);

    swift_errorRetain();
    v24 = sub_1000E1EE8();
    v25 = sub_1000E2678();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v49[0] = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
      *(v26 + 12) = 2080;
      v28 = sub_10003E4B0(a5);
      v30 = sub_100029C70(v28, v29, v49);

      *(v26 + 14) = v30;
      *(v26 + 22) = 2112;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v31;
      *v27 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Request failed %s: %@.", v26, 0x20u);
      sub_1000033C8(v27, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v49[0] = v18;
    sub_10000ADE4(&qword_100120278, &qword_1000F34F8);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v46 = v15;
  v47 = 0x6567617373656DLL;
  v48 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v19 = sub_10000B3E0(v49), (v20 & 1) == 0))
  {
    sub_10000C1C0(v49);
LABEL_10:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v19, &v51);
  sub_10000C1C0(v49);
  if (!*(&v52 + 1))
  {
LABEL_11:
    sub_1000033C8(&v51, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v18 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v21 = v49[0];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1000123E0(v21, *(&v21 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120280, 255, &type metadata accessor for NCProtoCallStateResponse, &protocol conformance descriptor for NCProtoCallStateResponse);
  v44 = *(&v21 + 1);
  v45 = v21;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E1F08();
  sub_1000049D0(v33, qword_1001231A0);

  v34 = sub_1000E1EE8();
  v35 = sub_1000E2698();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v49[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v49);
    *(v36 + 12) = 2080;
    v37 = sub_10003E4B0(a5);
    v39 = sub_100029C70(v37, v38, v49);

    *(v36 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Response received for %s.", v36, 0x16u);
    swift_arrayDestroy();
  }

  v41 = v44;
  v40 = v45;
  v42 = v46;
  (*(v11 + 16))(v14, v17, v46);
  sub_10000ADE4(&qword_100120278, &qword_1000F34F8);
  sub_1000E24D8();
  sub_100006660(v40, v41);
  return (*(v11 + 8))(v17, v42);
}

uint64_t sub_1000B92E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000B348(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB8BC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1000E0D68();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000C9AE0(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1000B93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10000B348(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000CBCE0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1000E0D68();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v20 = *(v13 - 8);
    sub_10000CAF4(v12 + *(v20 + 72) * v7, a2);
    sub_1000C9FB4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1000B9550()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100120060);
  sub_1000049D0(v0, qword_100120060);
  return sub_1000E1EF8();
}

uint64_t sub_1000B95D0()
{
  v0 = [objc_allocWithZone(TUFeatureFlags) init];
  if (qword_10011DCB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1001231D8;
  v12 = type metadata accessor for CallPublisher();
  v13 = &off_100116E48;
  v11[0] = v1;
  type metadata accessor for ContinuitySessionServer();
  v2 = swift_allocObject();
  v3 = sub_1000037BC(v11, v12);
  __chkstk_darwin(v3);
  v5 = (&v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  swift_retain_n();
  v8 = sub_1000CCFAC(v0, v7, v2);

  result = sub_10000E9DC(v11);
  qword_100123118 = v8;
  return result;
}

uint64_t sub_1000B9764()
{
  sub_1000E2A88(64);
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001000EC410;
  sub_1000E23A8(v4);
  sub_1000E23A8(*v0);
  v5._object = 0x80000001000EC440;
  v5._countAndFlagsBits = 0xD000000000000014;
  sub_1000E23A8(v5);
  if (*(v0 + 24))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000E23A8(v1);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  sub_1000E23A8(v6);
  return 0;
}

void sub_1000B9850()
{
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F1FC0;
  *(v0 + 32) = sub_1000E2338();
  *(v0 + 40) = v1;
  v2 = TUPreferredFaceTimeBundleIdentifier();
  v3 = sub_1000E2338();
  v5 = v4;

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  qword_100120078 = v0;
}

uint64_t sub_1000B98E4()
{
  v1 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 128);
    if (v7)
    {
      v8 = *(v1 + 120);
      v9 = *(v1 + 152);
      v19 = *(v1 + 136);
      v20 = v9;
      v21 = *(v1 + 168);
      v17 = v8;
      v18 = v7;
      v22[0] = v8;
      v22[1] = v7;
      v23 = v19;
      v24 = v9;
      v25 = v21;
      sub_1000A9C1C(v22, v16);
      v10 = sub_1000E2368();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100029C70(v10, v12, &v26);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Camera continuity session updated to %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  v14 = (([*(v1 + 232) isGreenTea] & 1) == 0 || TUGreenTeaLagunaEnabled()) && *(v1 + 128) != 0;
  LOBYTE(v22[0]) = v14;
  return sub_1000E1FE8();
}

uint64_t sub_1000B9AE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_100022F54(0, 0, v9, &unk_1000F34C0, v12);
}

uint64_t sub_1000B9C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 80) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_1000B9C88, 0, 0);
}

uint64_t sub_1000B9C88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000B9D4C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000B9D4C()
{
  sub_1000C3CA0(*(v0 + 80), *(v0 + 56), *(v0 + 64));

  return _swift_task_switch(sub_100065074, 0, 0);
}

void sub_1000B9DC4(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100120060);
    swift_errorRetain();
    oslog = sub_1000E1EE8();
    v2 = sub_1000E2678();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate remote display discovery due to %@", v3, 0xCu);
      sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
    }

    else
    {
    }
  }
}

uint64_t sub_1000B9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 208) = a4;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  *(v4 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000BA010, 0, 0);
}

uint64_t sub_1000BA010()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 224) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000BA0D4, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000BA0D4()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 152);
  v3 = *(v1 + 168);
  v4 = *(v1 + 136);
  *(v0 + 16) = *(v1 + 120);
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v1 + 145);
    v10 = *(v1 + 161);
    *(v0 + 175) = *(v1 + 176);
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    if ((v8 & 1) == 0)
    {
      v11 = *(v0 + 216);
      v12 = sub_1000E2538();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v14 = sub_1000041BC(&unk_1001200D0, v13, type metadata accessor for ContinuitySessionServer, &unk_1000F32A8);
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 24) = v14;
      *(v15 + 32) = v1;
      *(v15 + 40) = v6;
      *(v15 + 48) = v5;
      *(v15 + 56) = v7;
      *(v15 + 64) = v8;
      v16 = *(v0 + 160);
      *(v15 + 65) = *(v0 + 144);
      *(v15 + 81) = v16;
      *(v15 + 96) = *(v0 + 175);
      swift_retain_n();
      sub_10000CB64(v0 + 16, v0 + 80, &unk_10011FA58, &unk_1000F25E0);
      sub_1000223DC(0, 0, v11, &unk_1000F34B0, v15);
    }
  }

  return _swift_task_switch(sub_1000BA2A0, 0, 0);
}

uint64_t sub_1000BA2A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1000E2538();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1000223DC(0, 0, v7, a4, v10);
}

uint64_t sub_1000BA478()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 304) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000BA534, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1000BA534()
{
  v1 = *(v0 + 304);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 112) = *(v1 + 152);
  *(v0 + 128) = v3;
  *(v0 + 80) = v4;
  *(v0 + 96) = v2;
  v5 = *(v0 + 88);
  if (v5)
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 24) = v5;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    v8 = *(v1 + 176);
    v9 = *(v1 + 161);
    *(v0 + 41) = *(v1 + 145);
    *(v0 + 57) = v9;
    *(v0 + 72) = v8;
    if (v6)
    {
      v10 = *(v1 + 120);
      v11 = *(v1 + 136);
      v12 = *(v1 + 168);
      *(v0 + 176) = *(v1 + 152);
      *(v0 + 192) = v12;
      *(v0 + 144) = v10;
      *(v0 + 160) = v11;
      sub_1000A9C1C(v0 + 144, v0 + 208);
      sub_1000C4FF4(v0 + 16, v1);
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    }
  }

  return _swift_task_switch(sub_1000BA634, 0, 0);
}

uint64_t sub_1000BA634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BA698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v4 = sub_1000E2118();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_1000E2148();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA7B4, 0, 0);
}

uint64_t sub_1000BA7B4()
{
  sub_1000036AC(*(v0 + 184), *(*(v0 + 184) + 24));
  type metadata accessor for CallPublisher();
  sub_1000DCE7C((v0 + 104));
  v1 = *(v0 + 128);
  v2 = sub_1000036AC((v0 + 104), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 88) = swift_getAssociatedTypeWitness();
  *(v0 + 96) = swift_getAssociatedConformanceWitness();
  sub_100006FD8((v0 + 64));
  sub_1000E25C8();

  sub_10000E9DC((v0 + 104));
  swift_beginAccess();
  sub_1000037BC(v0 + 64, *(v0 + 88));
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_10000308C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 168, 0, 0);
}

uint64_t sub_1000BA9C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v2 + 136);
  v28[0] = *(v2 + 120);
  v28[1] = v6;
  v7 = *(v2 + 168);
  v28[2] = *(v2 + 152);
  v28[3] = v7;
  v8 = v28[0];
  if (!*(&v28[0] + 1))
  {
    v24 = *&v28[0];
    v10 = *(v2 + 152);
    v25 = *(v2 + 136);
    v26 = v10;
    v27 = *(v2 + 168);
    sub_10000CB64(v28, &v20, &unk_10011FA58, &unk_1000F25E0);
    result = sub_1000033C8(&v24, &unk_10011FA58, &unk_1000F25E0);
    goto LABEL_7;
  }

  v24 = v28[0];
  v9 = *(v2 + 152);
  v25 = *(v2 + 136);
  v26 = v9;
  v27 = *(v2 + 168);
  sub_10000CB64(v28, &v20, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(&v24, &unk_10011FA58, &unk_1000F25E0);
  if (v8 != __PAIR128__(v5, v4))
  {
    v12 = sub_1000E2C68();

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_7:
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_8;
  }

LABEL_6:
  v13 = *(v2 + 136);
  v20 = *(v2 + 120);
  v21 = v13;
  v14 = *(v2 + 168);
  v22 = *(v2 + 152);
  v23 = v14;
  result = sub_10000CB64(&v20, &v19, &unk_10011FA58, &unk_1000F25E0);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
LABEL_8:
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  return result;
}

uint64_t sub_1000BAB70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BAB94, v2, 0);
}

uint64_t sub_1000BAB94()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_1000BAC28, v0, 0);
}

uint64_t sub_1000BAC28()
{
  if (*(v0[2] + 72))
  {

    v9._countAndFlagsBits = 0x5654656C707041;
    v9._object = 0xE700000000000000;
    v1 = sub_1000E2408(v9);

    if (v1)
    {
      v2 = swift_task_alloc();
      v0[5] = v2;
      *v2 = v0;
      v2[1] = sub_1000BAEEC;
      v3 = v0[3];
      v4 = v0[2];

      return sub_1000BAFE0(v4, v3);
    }

    v6 = v0[4];
    v7 = sub_1000BAD54;
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1000CF7A8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000BAD54()
{
  v10 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100120060);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to prepare for handoff with %s because the device type is unknown.", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000BAEEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000BAFE0(uint64_t a1, uint64_t a2)
{
  v3[148] = v2;
  v3[147] = a2;
  v3[146] = a1;
  v4 = sub_1000E18B8();
  v3[149] = v4;
  v3[150] = *(v4 - 8);
  v3[151] = swift_task_alloc();
  v5 = sub_1000E1928();
  v3[152] = v5;
  v3[153] = *(v5 - 8);
  v3[154] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v3[155] = v6;
  v3[156] = *(v6 - 8);
  v3[157] = swift_task_alloc();
  v7 = sub_1000E19D8();
  v3[158] = v7;
  v3[159] = *(v7 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[162] = v8;
  *v8 = v3;
  v8[1] = sub_1000BB1FC;

  return sub_100014704();
}

uint64_t sub_1000BB1FC(uint64_t a1)
{
  v3 = *v2;
  v3[163] = a1;
  v3[164] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[148];

    return _swift_task_switch(sub_1000BB384, v6, 0);
  }
}

uint64_t sub_1000BB384()
{
  v104 = v0;
  v1 = *(v0 + 1184);
  if (*(v1 + 128))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100120060);

    v3 = sub_1000E1EE8();
    v4 = sub_1000E2678();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1168);
      v6 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v6 = 136315394;
      *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), v103);
      *(v6 + 12) = 2080;
      v7 = *(v1 + 128);
      if (v7)
      {
        v8 = *(v1 + 120);
        v9 = *(v1 + 136);
        v10 = *(v1 + 152);
        *(v0 + 1088) = *(v1 + 168);
        *(v0 + 1072) = v10;
        *(v0 + 1056) = v9;
        *(v0 + 1040) = v8;
        *(v0 + 1048) = v7;
        *(v0 + 976) = v8;
        *(v0 + 984) = v7;
        v11 = *(v1 + 136);
        v12 = *(v1 + 168);
        *(v0 + 1008) = *(v1 + 152);
        *(v0 + 1024) = v12;
        *(v0 + 992) = v11;
        sub_1000A9C1C(v0 + 976, v0 + 1104);
        v13 = sub_1000E2368();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      v38 = sub_100029C70(v13, v15, v103);

      *(v6 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cannot initiate session with %s while camera session already exists: %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v39 = *(v0 + 8);

    return v39();
  }

  v16 = *(v1 + 120);
  v17 = *(v1 + 136);
  v18 = *(v1 + 168);
  *(v0 + 112) = *(v1 + 152);
  *(v0 + 128) = v18;
  *(v0 + 80) = v16;
  *(v0 + 96) = v17;
  v19 = *(v0 + 80);
  v20 = *(v0 + 88);
  v21 = *(v0 + 136);
  if (v20)
  {
    *(v0 + 144) = v19;
    *(v0 + 152) = v20;
    v22 = *(v1 + 152);
    v23 = *(v1 + 168);
    *(v0 + 160) = *(v1 + 136);
    *(v0 + 176) = v22;
    *(v0 + 192) = v23;
    *(v0 + 200) = v21;
    sub_10000CB64(v0 + 80, v0 + 208, &unk_10011FA58, &unk_1000F25E0);
    v24 = v21;
    sub_1000033C8(v0 + 144, &unk_10011FA58, &unk_1000F25E0);
LABEL_24:
    *(v0 + 1320) = v24;
    v51 = *(v0 + 1184);
    v52 = *(v1 + 152);
    v53 = *(v1 + 168);
    v54 = *(v1 + 136);
    *(v0 + 272) = *(v1 + 120);
    *(v0 + 288) = v54;
    *(v0 + 304) = v52;
    *(v0 + 320) = v53;
    v55 = *(v0 + 272);
    v56 = *(v0 + 280);
    v57 = *(v0 + 304);
    v58 = *(v0 + 312);
    if (v56)
    {
      *(v0 + 336) = v55;
      *(v0 + 344) = v56;
      *(v0 + 352) = *(v51 + 136);
      v99 = v57;
      *(v0 + 368) = v57;
      *(v0 + 376) = v58;
      *(v0 + 384) = *(v51 + 168);
      sub_10000CB64(v0 + 272, v0 + 400, &unk_10011FA58, &unk_1000F25E0);

      sub_1000033C8(v0 + 336, &unk_10011FA58, &unk_1000F25E0);
    }

    else
    {
      v59 = *(v0 + 1256);
      v60 = *(v0 + 1248);
      v61 = *(v0 + 1240);
      *(v0 + 720) = v55;
      *(v0 + 728) = 0;
      *(v0 + 736) = *(v51 + 136);
      *(v0 + 752) = v57;
      *(v0 + 760) = v58;
      *(v0 + 768) = *(v51 + 168);
      sub_10000CB64(v0 + 272, v0 + 784, &unk_10011FA58, &unk_1000F25E0);
      sub_1000033C8(v0 + 720, &unk_10011FA58, &unk_1000F25E0);
      sub_1000E0D58();
      v99 = sub_1000E0D08();
      v58 = v62;
      (*(v60 + 8))(v59, v61);
    }

    v63 = *(v0 + 1184);
    v64 = *(v0 + 1168);
    v102 = *(v64 + 16);
    *(v0 + 1328) = v102;
    v65 = *(v64 + 24);
    *(v0 + 1336) = v65;
    v66 = *(v63 + 240);
    *(v0 + 1344) = v66;

    v67 = [v66 dedicatedDevice];
    if (v67)
    {
      v68 = v67;
      v69 = v24;
      v70 = [v67 idsDeviceIdentifier];
      if (v70)
      {
        v71 = v70;
        v72 = sub_1000E2338();
        v74 = v73;

        if (v102 == v72 && v65 == v74)
        {
          v75 = 1;
        }

        else
        {
          v75 = sub_1000E2C68();
        }
      }

      else
      {
        v75 = 0;
      }
    }

    else
    {
      v69 = v24;
      v75 = 0;
    }

    v76 = *(v0 + 1304);
    v77 = v69;
    v78 = sub_10000C544(_swiftEmptyArrayStorage);
    *(v0 + 528) = v102;
    *(v0 + 536) = v65;
    *(v0 + 544) = v76;
    *(v0 + 552) = v75 & 1;
    *(v0 + 560) = v99;
    *(v0 + 568) = v58;
    *(v0 + 576) = v78;
    *(v0 + 584) = v77;
    v79 = *(v0 + 544);
    *(v0 + 16) = *(v0 + 528);
    *(v0 + 32) = v79;
    v80 = *(v0 + 576);
    v82 = *(v0 + 528);
    v81 = *(v0 + 544);
    *(v0 + 48) = *(v0 + 560);
    *(v0 + 64) = v80;
    v83 = *(v1 + 120);
    v84 = *(v1 + 136);
    v85 = *(v1 + 168);
    *(v0 + 496) = *(v1 + 152);
    *(v0 + 512) = v85;
    *(v0 + 464) = v83;
    *(v0 + 480) = v84;
    v86 = *(v0 + 560);
    *(v1 + 168) = *(v0 + 576);
    *(v1 + 152) = v86;
    *(v1 + 136) = v81;
    *(v1 + 120) = v82;
    sub_1000A9C1C(v0 + 528, v0 + 592);
    sub_1000A9C1C(v0 + 528, v0 + 656);

    sub_1000033C8(v0 + 464, &unk_10011FA58, &unk_1000F25E0);
    sub_1000B98E4();
    sub_1000A9D38(v0 + 528);
    [v77 boostQualityOfService];
    v87 = sub_1000E2328();
    v88 = sub_1000E2328();
    [v66 enterDiscoverySessionWithDevice:v87 reason:v88];

    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v89 = sub_1000E1F08();
    *(v0 + 1352) = sub_1000049D0(v89, qword_100120060);

    v90 = sub_1000E1EE8();
    v91 = sub_1000E2698();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103[0] = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_100029C70(v102, v65, v103);
      _os_log_impl(&_mh_execute_header, v90, v91, "[PrepareForHandoff] Requesting laguna connection with %s.", v92, 0xCu);
      sub_10000E9DC(v93);
    }

    v94 = swift_task_alloc();
    *(v0 + 1360) = v94;
    *v94 = v0;
    v94[1] = sub_1000BBE54;

    return sub_1000C49E4(v0 + 16);
  }

  v98 = *(v0 + 1288);
  v100 = *(v0 + 1280);
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1264);
  *(v0 + 848) = v19;
  *(v0 + 856) = 0;
  v27 = *(v1 + 168);
  v28 = *(v1 + 152);
  *(v0 + 864) = *(v1 + 136);
  *(v0 + 880) = v28;
  *(v0 + 896) = v27;
  *(v0 + 904) = v21;
  sub_10000CB64(v0 + 80, v0 + 912, &unk_10011FA58, &unk_1000F25E0);
  sub_1000033C8(v0 + 848, &unk_10011FA58, &unk_1000F25E0);
  sub_10000ADE4(&qword_1001201D8, &qword_1000F33A0);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:);
  (*(v25 + 104))(v30 + v29, enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:), v26);
  v32 = *(v25 + 16);
  v33 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.UNRECOGNIZED(_:);
  v96 = v29;
  v97 = v30;
  v32(v98, v30 + v29, v26);
  v32(v100, v98, v26);
  v35 = *(v25 + 88);
  v34 = v25 + 88;
  v36 = v35(v100, v26);
  v37 = 0;
  if (v36 == v33 || v36 == enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.default(_:))
  {
LABEL_20:
    v41 = *(v0 + 1184);
    v42 = *(v34 - 80);
    v42(*(v0 + 1288), *(v0 + 1264));
    v43 = *(v41 + 208);
    v44 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v37];
    v24 = [v43 objectForKey:v44];

    v45 = *(v0 + 1264);
    if (v24)
    {
      swift_setDeallocating();
      v46 = v97 + v96;
      v47 = v45;
    }

    else
    {
      v101 = *(v0 + 1264);
      v48 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:4 options:v37 shouldUpdateMetadataCache:0];
      v49 = objc_allocWithZone(NSNumber);
      v24 = v48;
      v50 = [v49 initWithUnsignedInteger:v37];
      [v43 setObject:v24 forKey:v50];

      swift_setDeallocating();
      v46 = v97 + v96;
      v47 = v101;
    }

    v42(v46, v47);
    swift_deallocClassInstance();
    goto LABEL_24;
  }

  if (v36 == v31)
  {
    v37 = 3;
    goto LABEL_20;
  }

  if (v36 == enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.telephony(_:))
  {
    v37 = 4;
    goto LABEL_20;
  }

  v95 = *(v0 + 1264);

  return _diagnoseUnexpectedEnumCase<A>(type:)(v95, v95);
}

uint64_t sub_1000BBE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 1184);
  v4[171] = a1;
  v4[172] = a2;
  v4[173] = a3;

  return _swift_task_switch(sub_1000BBF74, v5, 0);
}

uint64_t sub_1000BBF74()
{
  *(v0 + 1392) = sub_1000C571C(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 1400) = v1;
  *v1 = v0;
  v1[1] = sub_1000BC01C;

  return sub_1000C6D08(v0 + 16);
}

uint64_t sub_1000BC01C(uint64_t a1)
{
  v2 = *(*v1 + 1184);
  *(*v1 + 1408) = a1;

  return _swift_task_switch(sub_1000BC134, v2, 0);
}

uint64_t sub_1000BC134()
{
  v1 = v0[176];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[148];
  v7 = v0[147];
  v14 = v0[167];
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v7;
  v8[7] = v2;
  v8[8] = v1;
  sub_1000041BC(&unk_1001201C8, 255, &type metadata accessor for NCProtoLagunaConnectionRequest, &protocol conformance descriptor for NCProtoLagunaConnectionRequest);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[177] = qword_1001230E0;
  v9 = swift_task_alloc();
  v0[178] = v9;
  *v9 = v0;
  v9[1] = sub_1000BC320;
  v10 = v0[166];
  v11 = v0[154];
  v12 = v0[151];

  return sub_1000B64F8(v11, 8, v12, v10, v14, 0);
}

uint64_t sub_1000BC320()
{
  v2 = *v1;
  v2[179] = v0;

  v3 = v2[177];
  if (v0)
  {
    v4 = sub_1000BC5C0;
  }

  else
  {
    v5 = v2[165];
    v6 = v2[154];
    v7 = v2[153];
    v8 = v2[152];

    (*(v7 + 8))(v6, v8);
    v4 = sub_1000BC490;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000BC490()
{
  v1 = v0[148];
  (*(v0[150] + 8))(v0[151], v0[149]);

  return _swift_task_switch(sub_1000BC510, v1, 0);
}

uint64_t sub_1000BC510()
{
  sub_1000A9D38(v0 + 528);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BC5C0()
{
  v1 = v0[148];
  (*(v0[150] + 8))(v0[151], v0[149]);

  return _swift_task_switch(sub_1000BC640, v1, 0);
}

uint64_t sub_1000BC640()
{
  sub_1000A9D38((v0 + 66));
  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "PrepareForHandoff] Failed to establish laguna connection due to %@.", v3, 0xCu);
    sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
  }

  v6 = v0[168];
  v7 = v0[167];
  v8 = v0[166];
  v9 = v0[165];

  sub_1000BE71C(v8, v7);
  v10 = sub_1000E2328();
  [v6 exitDiscoverySessionWithReason:v10];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a6;
  v8 = sub_1000E0FE8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C8FF4();
  sub_1000E1888();

  sub_1000E1858();

  sub_1000E1868();
  (*(v9 + 16))(v11, v14, v8);
  sub_1000E1898();

  sub_1000E18A8();

  return sub_1000E1878();
}

uint64_t sub_1000BC98C(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_1000BC9AC, v1, 0);
}

uint64_t sub_1000BC9AC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_1000BCA40, v0, 0);
}

uint64_t sub_1000BCA40()
{
  if (*(v0[26] + 72) && (, v6._countAndFlagsBits = 0x5654656C707041, v6._object = 0xE700000000000000, v1 = sub_1000E2408(v6), , v1))
  {
    v2 = v0[27];

    return _swift_task_switch(sub_1000BCB18, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000BCB18()
{
  v25 = v0;
  v1 = *(v0 + 216);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (!v5)
  {
    *(v0 + 80) = v6;
    *(v0 + 88) = 0;
    v12 = *(v1 + 136);
    v13 = *(v1 + 168);
    *(v0 + 112) = *(v1 + 152);
    *(v0 + 128) = v13;
    *(v0 + 96) = v12;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    goto LABEL_12;
  }

  v7 = *(v0 + 208);
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v8 = *(v1 + 168);
  v9 = *(v1 + 152);
  *(v0 + 96) = *(v1 + 136);
  *(v0 + 112) = v9;
  *(v0 + 128) = v8;
  sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (v6 == v10 && v5 == v11)
  {
  }

  else
  {
    v14 = sub_1000E2C68();

    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v15 = sub_1000E1F08();
  sub_1000049D0(v15, qword_100120060);

  v16 = sub_1000E1EE8();
  v17 = sub_1000E2698();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100029C70(v10, v11, &v24);
    _os_log_impl(&_mh_execute_header, v16, v17, "Camera session with %s is being torn down - exiting discovery session.", v18, 0xCu);
    sub_10000E9DC(v19);
  }

  v20 = *(*(v0 + 216) + 240);
  v21 = sub_1000E2328();
  [v20 exitDiscoverySessionWithReason:v21];

LABEL_12:
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000BCDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  v5 = sub_1000E0D68();
  v4[80] = v5;
  v4[81] = *(v5 - 8);
  v4[82] = swift_task_alloc();
  v6 = sub_1000E19D8();
  v4[83] = v6;
  v4[84] = *(v6 - 8);
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();

  return _swift_task_switch(sub_1000BCF20, v3, 0);
}

uint64_t sub_1000BCF20()
{
  v10 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  v0[87] = sub_1000049D0(v1, qword_100120060);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[78];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Requesting to start Laguna session with %s.", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  v7 = swift_task_alloc();
  v0[88] = v7;
  *v7 = v0;
  v7[1] = sub_1000BD0D4;

  return sub_100014704();
}

uint64_t sub_1000BD0D4(uint64_t a1)
{
  v3 = *v2;
  v3[89] = a1;
  v3[90] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[79];

    return _swift_task_switch(sub_1000BD238, v6, 0);
  }
}

uint64_t sub_1000BD238()
{
  v1 = *(v0 + 720);
  sub_1000CD800();
  *(v0 + 728) = v1;
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1000BA9C4(*(v0 + 624), (v0 + 80));
    v39 = sub_1000E19E8();
    v4 = *(v39 + 16);
    if (v4)
    {
      v35 = 0;
      v5 = *(v0 + 672);
      v38 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.UNRECOGNIZED(_:);
      v37 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.default(_:);
      v36 = (v5 + 8);
      v34 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:);
      v33 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.telephony(_:);
      v6 = 0;
      while (v6 < v4)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_34;
        }

        v8 = *(v0 + 688);
        v9 = *(v0 + 680);
        v10 = *(v0 + 664);
        v11 = *(v5 + 16);
        v11(v8, v39 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v6, v10);
        v11(v9, v8, v10);
        v12 = (*(v5 + 88))(v9, v10);
        if (v12 == v38 || v12 == v37)
        {
          (*v36)(*(v0 + 688), *(v0 + 664));
          ++v6;
          if (v7 == v4)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 == v34)
          {
            v14 = 3;
          }

          else
          {
            if (v12 != v33)
            {
              goto LABEL_35;
            }

            v14 = 4;
          }

          (*v36)(*(v0 + 688), *(v0 + 664));
          v35 |= v14;
          if (v7 == v4)
          {
            goto LABEL_23;
          }

          v6 = v7;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v32 = *(v0 + 664);

      return _diagnoseUnexpectedEnumCase<A>(type:)(v32, v32);
    }

    else
    {
      v35 = 3;
LABEL_23:
      v15 = *(*(v0 + 632) + 208);
      v16 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v35];
      v17 = [v15 objectForKey:v16];

      if (!v17)
      {
        v18 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:4 options:v35 shouldUpdateMetadataCache:0];
        v19 = objc_allocWithZone(NSNumber);
        v17 = v18;
        v20 = [v19 initWithUnsignedInteger:v35];
        [v15 setObject:v17 forKey:v20];
      }

      v21 = *(v0 + 88);
      if (v21)
      {
        v22 = *(v0 + 136);
        v23 = *(v0 + 112);
        v24 = *(v0 + 104);
        v25 = *(v0 + 96);
        *(v0 + 464) = *(v0 + 80);
        *(v0 + 472) = v21;
        *(v0 + 480) = v25;
        *(v0 + 488) = v24 & 1;
        *(v0 + 496) = v23;
        v40 = *(v0 + 120);
        *(v0 + 504) = v40;
        *(v0 + 520) = v22;
        sub_10000CB64(v0 + 80, v0 + 528, &unk_10011FA58, &unk_1000F25E0);
        v26 = v40;

        sub_1000A9D38(v0 + 464);
      }

      else
      {
        v27 = *(v0 + 656);
        v28 = *(v0 + 648);
        v29 = *(v0 + 640);
        sub_1000E0D58();
        v23 = sub_1000E0D08();
        v26 = v30;
        (*(v28 + 8))(v27, v29);
      }

      *(v0 + 752) = v17;
      *(v0 + 744) = v26;
      *(v0 + 736) = v23;
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v31 = qword_1001230E0;
      *(v0 + 760) = qword_1001230E0;

      return _swift_task_switch(sub_1000BD6F4, v31, 0);
    }
  }
}

uint64_t sub_1000BD6F4()
{
  if (*(*(v0 + 624) + 72))
  {

    v8._countAndFlagsBits = 0x5654656C707041;
    v8._object = 0xE700000000000000;
    v1 = sub_1000E2408(v8);

    if (v1)
    {
      v2 = *(v0 + 632);
      v3 = sub_1000BD920;
      goto LABEL_7;
    }

    v4 = *(v0 + 632);

    v5 = sub_1000BD7DC;
  }

  else
  {
    v4 = *(v0 + 632);

    v5 = sub_1000CF780;
  }

  v3 = v5;
  v2 = v4;
LABEL_7:

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000BD7DC(uint64_t a1)
{
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Rejecting start laguna session request because sender device type is unknown.", v4, 2u);
  }

  v5 = *(v1 + 752);

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  sub_1000033C8(v1 + 80, &unk_10011FA58, &unk_1000F25E0);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1000BD920()
{
  v1 = *(v0[79] + 240);
  v0[96] = v1;
  v2 = [v1 peerDeviceIdentifier];
  if (v2)
  {
    v3 = v0[95];
    v4 = v0[79];
    v5 = v2;
    v6 = sub_1000E2338();
    v8 = v7;

    v0[97] = v6;
    v0[98] = v8;
    v0[99] = *(v4 + 224);

    return _swift_task_switch(sub_1000BDAFC, v3, 0);
  }

  else
  {

    v9 = sub_1000E1EE8();
    v10 = sub_1000E2698();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Rejecting start laguna session request because we're not currently connected via remote display discovery.", v11, 2u);
    }

    v12 = v0[94];

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000BDAFC()
{
  v1 = v0[79];
  v0[100] = sub_1000455D8(v0[97], v0[98]);

  return _swift_task_switch(sub_1000BDB88, v1, 0);
}

uint64_t sub_1000BDB88()
{
  v45 = v0;
  v1 = *(v0 + 800);
  if (v1)
  {
    v2 = *(v0 + 624);
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = *(v2 + 16);
    *(v0 + 808) = v5;
    v6 = *(v2 + 24);
    *(v0 + 816) = v6;
    v7 = v3 == v5 && v4 == v6;
    if (v7 || (sub_1000E2C68() & 1) != 0)
    {
      v8 = *(v0 + 768);

      v9 = [v8 dedicatedDevice];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 idsDeviceIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1000E2338();
          v15 = v14;

          if (v5 == v13 && v6 == v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = sub_1000E2C68();
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      *(v0 + 872) = v17 & 1;
      v29 = *(v0 + 744);
      v30 = *(v0 + 736);
      v31 = *(v0 + 712);
      v32 = *(v0 + 632);
      v33 = *(v0 + 752);
      v34 = sub_10000C544(_swiftEmptyArrayStorage);
      *(v0 + 208) = v5;
      *(v0 + 216) = v6;
      *(v0 + 224) = v31;
      *(v0 + 232) = v17 & 1;
      *(v0 + 240) = v30;
      *(v0 + 248) = v29;
      *(v0 + 256) = v34;
      *(v0 + 264) = v33;
      v35 = *(v0 + 224);
      v36 = *(v0 + 240);
      *(v0 + 16) = *(v0 + 208);
      *(v0 + 32) = v35;
      v37 = *(v0 + 224);
      v38 = *(v0 + 256);
      *(v0 + 48) = *(v0 + 240);
      *(v0 + 64) = v38;
      v39 = *(v32 + 120);
      v40 = *(v32 + 136);
      v41 = *(v32 + 168);
      *(v0 + 176) = *(v32 + 152);
      *(v0 + 192) = v41;
      *(v0 + 144) = v39;
      *(v0 + 160) = v40;
      v42 = *(v0 + 208);
      *(v32 + 168) = v38;
      *(v32 + 152) = v36;
      *(v32 + 136) = v37;
      *(v32 + 120) = v42;
      sub_1000A9C1C(v0 + 208, v0 + 272);
      sub_1000A9C1C(v0 + 208, v0 + 336);
      sub_1000033C8(v0 + 144, &unk_10011FA58, &unk_1000F25E0);
      sub_1000B98E4();
      sub_1000A9D38(v0 + 208);

      [v33 boostQualityOfService];

      v43 = swift_task_alloc();
      *(v0 + 824) = v43;
      *v43 = v0;
      v43[1] = sub_1000BE054;

      return sub_1000C49E4(v0 + 16);
    }

    v22 = sub_1000E1EE8();
    v23 = sub_1000E2698();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100029C70(v5, v6, &v44);
      _os_log_impl(&_mh_execute_header, v22, v23, "Rejecting start laguna session request because we're not currently connected to %s via remote display.", v24, 0xCu);
      sub_10000E9DC(v25);
    }

    v26 = *(v0 + 752);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  else
  {

    v18 = sub_1000E1EE8();
    v19 = sub_1000E2698();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Rejecting start laguna session request because we're not currently connected via remote display discovery.", v20, 2u);
    }

    v21 = *(v0 + 752);

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000BE054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 632);
  v4[104] = a1;
  v4[105] = a2;
  v4[106] = a3;

  return _swift_task_switch(sub_1000BE174, v5, 0);
}

uint64_t sub_1000BE174()
{
  *(v0 + 856) = sub_1000C571C(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 864) = v1;
  *v1 = v0;
  v1[1] = sub_1000BE21C;

  return sub_1000C6D08(v0 + 16);
}

uint64_t sub_1000BE21C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 592) = v1;
  *(v3 + 600) = a1;
  v4 = *(v2 + 632);

  return _swift_task_switch(sub_1000BE334, v4, 0);
}

uint64_t sub_1000BE334()
{
  v22 = v0;

  sub_1000A9C1C(v0 + 208, v0 + 400);

  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 856);
  v5 = *(v0 + 840);
  v6 = *(v0 + 832);
  if (v3)
  {
    v20 = *(v0 + 872);
    v19 = *(v0 + 816);
    v7 = *(v0 + 808);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136316162;
    *(v8 + 4) = sub_100029C70(v7, v19, &v21);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v20;
    sub_1000A9D38(v0 + 208);
    *(v8 + 18) = 2048;
    *(v8 + 20) = *(v6 + 16);
    *(v8 + 28) = 2048;
    *(v8 + 30) = *(v5 + 16);

    *(v8 + 38) = 2048;
    *(v8 + 40) = *(v4 + 16);

    _os_log_impl(&_mh_execute_header, v1, v2, "Starting laguna session with %s. isDedicatedSession:%{BOOL}d. Returning %ld recent calls and %ld contacts and %ld favorites.", v8, 0x30u);
    sub_10000E9DC(v9);
  }

  else
  {

    sub_1000A9D38(v0 + 208);
  }

  v10 = *(v0 + 600);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 632);
  sub_1000E1A88();
  v16 = swift_task_alloc();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v13;
  v16[5] = v12;
  v16[6] = v11;
  v16[7] = v10;
  sub_1000041BC(&qword_1001201C0, 255, &type metadata accessor for NCProtoStartLagunaSessionResponse, &protocol conformance descriptor for NCProtoStartLagunaSessionResponse);
  sub_1000E0E38();
  sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  sub_1000A9D38(v0 + 208);

  v17 = *(v0 + 8);

  return v17();
}