Swift::Int sub_100160C94(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = _swiftEmptySetSingleton;
  while (2)
  {
    v31 = v11;
    do
    {
      while (1)
      {
        do
        {
          v15 = a5[3];
          v16 = a5[4];
          if (!v16)
          {
            v18 = (a5[2] + 64) >> 6;
            v19 = a5[3];
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
                goto LABEL_25;
              }

              if (v17 >= v18)
              {
                break;
              }

              v16 = *(a5[1] + 8 * v17);
              ++v19;
              if (v16)
              {
                goto LABEL_10;
              }
            }

            if (v18 <= v15 + 1)
            {
              v27 = v15 + 1;
            }

            else
            {
              v27 = (a5[2] + 64) >> 6;
            }

            a5[3] = v27 - 1;
            a5[4] = 0;

            return sub_100161508(v9, a2, v31, a3, a6, a7);
          }

          v17 = a5[3];
LABEL_10:
          v20 = *(*(*a5 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v16)))));
          a5[3] = v17;
          a5[4] = (v16 - 1) & v16;
          sub_1004A6E94();
          sub_1004A6EE4(v20);
          result = sub_1004A6F14();
          v21 = -1 << *(a3 + 32);
          v22 = result & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
        }

        while (((1 << v22) & *(v12 + 8 * (v22 >> 6))) == 0);
        v25 = *(a3 + 48);
        if (*(v25 + 4 * v22) == v20)
        {
          break;
        }

        v26 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v12 + 8 * (v22 >> 6))) == 0)
          {
            break;
          }

          if (*(v25 + 4 * v22) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v14 = v9[v23];
      v9[v23] = v14 & ~v24;
    }

    while ((v14 & v24) == 0);
    v11 = v31 - 1;
    if (!__OFSUB__(v31, 1))
    {
      if (v31 != 1)
      {
        continue;
      }

      return v13;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100160E84(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            sub_100161EEC(result, a2, v34, a3);
            return;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = a5[3];
LABEL_9:
      v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_1004A6E94();
      sub_1004A6EB4(v18);
      v19 = sub_1004A6F14();
      v20 = -1 << *(a3 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if (v25[1] == v18)
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = result[v22];
        result[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1001610AC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v35 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v33 = v11 + 1;
            }

            else
            {
              v33 = (a5[2] + 64) >> 6;
            }

            a5[3] = v33 - 1;
            a5[4] = 0;

            sub_10016210C(result, a2, v35, a3);
            return;
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      sub_1004A6E94();
      v19 = v18 | (v18 << 32);
      sub_1004A6EB4(v19);
      v20 = sub_1004A6F14();
      v21 = -1 << *(a3 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v10 + 8 * (v22 >> 6))) != 0)
      {
        v25 = ~v21;
        while (1)
        {
          v26 = (*(a3 + 48) + 16 * v22);
          if ((v26[2] | (v26[2] << 32)) == v19)
          {
            v27 = *v26;
            v28 = *(*v26 + 16);
            if (v28 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v22 = (v22 + 1) & v25;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v28)
        {
          v29 = v27 == v17;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = (v27 + 32);
          v31 = (v17 + 32);
          while (v28)
          {
            if (*v30 != *v31)
            {
              goto LABEL_11;
            }

            ++v30;
            ++v31;
            if (!--v28)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v32 = result[v23];
        result[v23] = v32 & ~v24;
        if ((v32 & v24) != 0)
        {
          break;
        }
      }
    }

    v9 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      goto LABEL_32;
    }

    if (v35 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1001612E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  result = sub_1004A66B4();
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
    sub_1004A6E94();
    sub_100014CEC(v17, v18);
    sub_1004A4424();
    result = sub_1004A6F14();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v9[6] + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100161508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = _swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_10000C9C0(a5, a6);
  result = sub_1004A66B4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 4 * (v15 | (v13 << 6)));
    sub_1004A6E94();
    sub_1004A6EE4(v18);
    result = sub_1004A6F14();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v11[6] + 4 * v22) = v18;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100161708(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - v9;
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v78 = *(v11 - 8);
  __chkstk_darwin(v11);
  v82 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  if (!a3)
  {
LABEL_57:

    return;
  }

  if (*(a4 + 16) != a3)
  {
    sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
    v15 = sub_1004A66B4();
    v16 = v15;
    v69 = v10;
    if (a2 < 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = *a1;
    }

    v18 = 0;
    v77 = v15;
    v72 = a4;
    v71 = a2;
    v70 = a1;
    v74 = v11;
    v75 = v15 + 56;
    while (1)
    {
      if (v17)
      {
        v19 = __clz(__rbit64(v17));
        v79 = (v17 - 1) & v17;
      }

      else
      {
        v20 = v18;
        do
        {
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_59;
          }

          if (v18 >= a2)
          {
            goto LABEL_57;
          }

          v21 = a1[v18];
          ++v20;
        }

        while (!v21);
        v19 = __clz(__rbit64(v21));
        v79 = (v21 - 1) & v21;
      }

      v22 = *(a4 + 48);
      v80 = *(v78 + 72);
      v23 = v83;
      sub_1001669C8(v22 + v80 * (v19 | (v18 << 6)), v83, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1004A6E94();
      sub_1001669C8(v23, v82, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v73 = a3;
          v76 = *v82;
          v26 = *(v82 + 2);
          v27 = v82[2];
          sub_1004A6EB4(3uLL);
          sub_1004A6EB4(v26 | (v26 << 32));
          v28 = v27 + 64;
          v29 = 1 << *(v27 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(v27 + 64);
          v32 = (v29 + 63) >> 6;
          v81 = v27;

          v33 = 0;
          v34 = 0;
          if (v31)
          {
            while (1)
            {
              v35 = v34;
LABEL_28:
              v36 = __clz(__rbit64(v31)) | (v35 << 6);
              v37 = *(*(v81 + 48) + 4 * v36);
              v38 = (*(v81 + 56) + 16 * v36);
              v39 = *v38;
              v40 = v38[1];
              sub_100014CEC(*v38, v40);
              if (v40 >> 60 == 15)
              {
                break;
              }

              v31 &= v31 - 1;
              v86 = v91;
              v87 = v92;
              v88 = v93;
              v84 = v89;
              v85 = v90;
              sub_1004A6EE4(v37);
              sub_1004A4424();
              sub_100014D40(v39, v40);
              v33 ^= sub_1004A6F14();
              v34 = v35;
              if (!v31)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            while (1)
            {
LABEL_25:
              v35 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                goto LABEL_60;
              }

              if (v35 >= v32)
              {
                break;
              }

              v31 = *(v28 + 8 * v35);
              ++v34;
              if (v31)
              {
                goto LABEL_28;
              }
            }
          }

          sub_1004A6EB4(v33);

          a4 = v72;
          a3 = v73;
          a2 = v71;
          a1 = v70;
          v16 = v77;
        }

        else
        {
          sub_1004A6EB4(1uLL);
        }
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v73 = a3;
          v68 = *v82;
          v41 = *(v82 + 2);
          v42 = v82[2];
          sub_1004A6EB4(2uLL);
          sub_1004A6EB4(v41 | (v41 << 32));
          v43 = v42 + 64;
          v44 = 1 << *(v42 + 32);
          if (v44 < 64)
          {
            v45 = ~(-1 << v44);
          }

          else
          {
            v45 = -1;
          }

          v46 = v45 & *(v42 + 64);
          v47 = (v44 + 63) >> 6;
          v76 = v42;

          v48 = 0;
          for (i = 0; v46; v16 = v77)
          {
            v81 = v48;
            v50 = i;
LABEL_40:
            v51 = __clz(__rbit64(v46));
            v46 &= v46 - 1;
            v52 = v51 | (v50 << 6);
            v53 = *(*(v76 + 48) + 4 * v52);
            v54 = (*(v76 + 56) + 24 * v52);
            v55 = *v54;
            v57 = *(v54 + 1);
            v56 = *(v54 + 2);
            sub_100014CEC(v57, v56);
            v86 = v91;
            v87 = v92;
            v88 = v93;
            v84 = v89;
            v85 = v90;
            sub_1004A6EE4(v53);
            sub_1004A6EB4(v55);
            sub_100014CEC(v57, v56);
            sub_1004A4424();
            sub_100014D40(v57, v56);
            sub_100014D40(v57, v56);
            v48 = sub_1004A6F14() ^ v81;
          }

          while (1)
          {
            v50 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v50 >= v47)
            {

              sub_1004A6EB4(v48);

              a4 = v72;
              a3 = v73;
              a2 = v71;
              a1 = v70;
              goto LABEL_45;
            }

            v46 = *(v43 + 8 * v50);
            ++i;
            if (v46)
            {
              v81 = v48;
              i = v50;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v25 = v69;
        sub_100025FDC(v82, v69, &unk_1005D91B0, &unk_1004CF400);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v25, &unk_1005D91B0, &unk_1004CF400);
      }

LABEL_45:
      v58 = sub_1004A6F14();
      v59 = -1 << *(v16 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v75 + 8 * (v60 >> 6))) == 0)
      {
        v63 = 0;
        v64 = (63 - v59) >> 6;
        while (++v61 != v64 || (v63 & 1) == 0)
        {
          v65 = v61 == v64;
          if (v61 == v64)
          {
            v61 = 0;
          }

          v63 |= v65;
          v66 = *(v75 + 8 * v61);
          if (v66 != -1)
          {
            v62 = __clz(__rbit64(~v66)) + (v61 << 6);
            goto LABEL_55;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      v62 = __clz(__rbit64((-1 << v60) & ~*(v75 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_55:
      *(v75 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      sub_10016680C(v83, *(v16 + 48) + v62 * v80, type metadata accessor for MoveAndCopyMessages.CommandID);
      ++*(v16 + 16);
      if (__OFSUB__(a3--, 1))
      {
        goto LABEL_62;
      }

      v17 = v79;
      if (!a3)
      {
        goto LABEL_57;
      }
    }
  }
}

void sub_100161EEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
      v8 = sub_1004A66B4();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v30 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
        v17 = *v16;
        v18 = v16[1];
        sub_1004A6E94();
        sub_1004A6EB4(v18);
        v19 = sub_1004A6F14();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v9 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v30;
        if (!v5)
        {
          goto LABEL_5;
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
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_10016210C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
      v8 = sub_1004A66B4();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v30 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        sub_1004A6E94();
        sub_1004A6EB4(v18 | (v18 << 32));
        v19 = sub_1004A6F14();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v9 + 48) + 16 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v30;
        if (!v5)
        {
          goto LABEL_5;
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
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_100162334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v5;
  v30 = *(a1 + 112);
  v6 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v4;
  v7 = v25;
  v8 = DWORD2(v25);
  result = sub_100063B5C(v25, DWORD2(v25));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10000E268(&v25, v24, &qword_1005D0C30, &qword_1004D52F8);
    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v3[6] + 16 * result;
    *v12 = v7;
    *(v12 + 8) = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    *(v13 + 64) = v30;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10000E268(&v25, v24, &qword_1005D0C30, &qword_1004D52F8);
    v20 = v11[2];
    v21 = v11[4];
    v28 = v11[3];
    v29 = v21;
    v30 = *(v11 + 40);
    v22 = v11[1];
    v25 = *v11;
    v26 = v22;
    v27 = v20;
    v7 = v25;
    v8 = DWORD2(v25);
    result = sub_100063B5C(v25, DWORD2(v25));
    v11 = (v11 + 88);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001624F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 176 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 176 * a3;
  v13 = (v7 + 32 + 176 * a2);
  if (result != v13 || result >= v13 + 176 * v12)
  {
    result = memmove(result, v13, 176 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_1001625CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  sub_10000C9C0(&qword_1005CF008, &qword_1004D1EF0);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void sub_1001626C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_100085514(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  sub_1001625CC(a1, a2, 1, a3, a4);
  *v4 = v6;
}

void sub_1001627A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = variable initialization expression of Cache._converters();
  v4 = *(v2 + 168);
  v5 = *(v2 + 192);
  if (v5 == 1)
  {
    v6 = 0;
    v7 = *(v4 + 16);
    v8 = _swiftEmptyArrayStorage;
LABEL_3:
    v9 = v4 - 128 + 176 * v6;
    while (v7 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      ++v6;
      v10 = v9 + 176;
      v11 = *(v9 + 256);
      if (*(*(v9 + 296) + 16))
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      v9 += 176;
      if (!v12)
      {
        v13 = *v10;
        v64 = *(v10 + 8);
        v65 = v5;
        v14 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v15 = *(v11 + v14);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100085648(0, v8[2] + 1, 1, v8);
        }

        v17 = v8[2];
        v16 = v8[3];
        if (v17 >= v16 >> 1)
        {
          v8 = sub_100085648((v16 > 1), v17 + 1, 1, v8);
        }

        v8[2] = v17 + 1;
        v18 = &v8[3 * v17];
        *(v18 + 8) = v15;
        v18[5] = v13;
        v5 = v65;
        *(v18 + 12) = v64;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v19 = v8[2];
  if (v19)
  {
    v20 = 0;
    v21 = (v8 + 6);
    while (v20 < v8[2])
    {
      ++v20;
      v22 = *v21;
      v23 = *(v21 - 4);

      MailboxesSelectionUsage.subscript.setter(v24, v22, 1, 1, v23);
      v21 += 6;
      if (v19 == v20)
      {
        goto LABEL_20;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:

  v25 = sub_100121FD0(*(v3 + 264), *(v3 + 272));
  v26 = v25;
  v27 = v25[2];
  if (v27)
  {
    v28 = 0;
    v29 = (v25 + 6);
    while (v28 < v26[2])
    {
      ++v28;
      v30 = *v29;
      v31 = *(v29 - 4);

      MailboxesSelectionUsage.subscript.setter(v32, v30, 2, 1, v31);
      v29 += 6;
      if (v27 == v28)
      {
        goto LABEL_24;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_24:

  if (v5)
  {
    v33 = 0;
    v34 = *(v4 + 16);
    v35 = _swiftEmptyArrayStorage;
LABEL_26:
    v36 = v4 - 128 + 176 * v33;
    while (v34 != v33)
    {
      if (v33 >= *(v4 + 16))
      {
        goto LABEL_67;
      }

      ++v33;
      v37 = v36 + 176;
      v38 = *(v36 + 256);
      if (*(*(v36 + 296) + 16))
      {
        v39 = 1;
      }

      else
      {
        v39 = v38 == 0;
      }

      v36 += 176;
      if (!v39)
      {
        v40 = *v37;
        v41 = *(v37 + 8);
        v42 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v43 = *(v38 + v42);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100085648(0, v35[2] + 1, 1, v35);
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          v35 = sub_100085648((v44 > 1), v45 + 1, 1, v35);
        }

        v35[2] = v45 + 1;
        v46 = &v35[3 * v45];
        *(v46 + 8) = v43;
        v46[5] = v40;
        *(v46 + 12) = v41;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v47 = v35[2];
  if (!v47)
  {
LABEL_61:

    return;
  }

  v48 = 0;
  while (v48 < v35[2])
  {
    v49 = &v35[3 * v48 + 4];
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);

    MailboxesSelectionUsage.subscript.getter(v50, v68);
    if (v53)
    {
    }

    else
    {
      v54 = *(a1 + 16);
      if (v54)
      {
        v55 = 0;
        while (1)
        {
          v56 = (a1 + 32 + 16 * v55);
          if ((v56[2] | (v56[2] << 32)) == (v52 | (v52 << 32)))
          {
            v57 = *v56;
            v58 = *(*v56 + 16);
            if (v58 == *(v51 + 16))
            {
              break;
            }
          }

LABEL_47:
          if (++v55 == v54)
          {
            goto LABEL_59;
          }
        }

        if (v58)
        {
          v59 = v57 == v51;
        }

        else
        {
          v59 = 1;
        }

        if (!v59)
        {
          v60 = (v57 + 32);
          v61 = (v51 + 32);
          while (v58)
          {
            if (*v60 != *v61)
            {
              goto LABEL_47;
            }

            ++v60;
            ++v61;
            if (!--v58)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_58:
        v62 = 0;
        v63 = *(a2 + 16) - v55;
      }

      else
      {
LABEL_59:
        v63 = 0;
        v62 = 1;
      }

      MailboxesSelectionUsage.subscript.setter(v51, v52, v63, v62, v50);
    }

    if (++v48 == v47)
    {
      goto LABEL_61;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

unint64_t sub_100162C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF790, &qword_1004D2CB0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_100063D94(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 12 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100162D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[160] = *(a1 + 192);
  *&v33[169] = *(a1 + 201);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = *v33;
  result = sub_100067004();
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10000E268(v33, v32, &qword_1005CEF20, &qword_1004D1DF0);
    return v3;
  }

  v12 = (a1 + 224);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v9;
    v13 = v3[7] + 184 * result;
    v14 = *&v33[8];
    v15 = *&v33[24];
    v16 = *&v33[56];
    *(v13 + 32) = *&v33[40];
    *(v13 + 48) = v16;
    *v13 = v14;
    *(v13 + 16) = v15;
    v17 = *&v33[72];
    v18 = *&v33[88];
    v19 = *&v33[120];
    *(v13 + 96) = *&v33[104];
    *(v13 + 112) = v19;
    *(v13 + 64) = v17;
    *(v13 + 80) = v18;
    v20 = *&v33[136];
    v21 = *&v33[152];
    v22 = *&v33[168];
    *(v13 + 176) = v33[184];
    *(v13 + 144) = v21;
    *(v13 + 160) = v22;
    *(v13 + 128) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10000E268(v33, v32, &qword_1005CEF20, &qword_1004D1DF0);
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[160] = v12[10];
    *&v33[169] = *(v12 + 169);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = *v33;
    result = sub_100067004();
    v12 += 12;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100162F48(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE820, &unk_1004D1138);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005CF6E0, &qword_1004D2B58);
    v7 = sub_1004A6A74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;
    while (1)
    {
      sub_10000E268(v9, v5, &qword_1005CE820, &unk_1004D1138);
      v10 = *v5;
      v11 = *(v5 + 2);
      result = sub_100063B5C(*v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6] + 16 * result;
      *v15 = v10;
      *(v15 + 8) = v11;
      v16 = v7[7];
      v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100025FDC(&v5[v22], v16 + *(*(v17 - 8) + 72) * v14, &unk_1005D91B0, &unk_1004CF400);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100163144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_100067004();
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 17) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10016324C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF798, &unk_1004F76A0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 65); ; i += 40)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      sub_100014CEC(v5, v6);
      result = sub_100063DD8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 17) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100163378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6C8, &qword_1004D2B40);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = sub_100063C84(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 24 * v12;
    *v16 = v6;
    *(v16 + 4) = v7 & 1;
    *(v16 + 8) = v8;
    *(v16 + 16) = v9 & 1;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 40;
    v21 = *(v14 - 4);
    v4 = *(v14 - 3);
    v6 = *(v14 - 4);
    v7 = *(v14 - 12);
    v8 = *(v14 - 1);
    v9 = *v14;

    v12 = sub_100063C84(v21, v4);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001634D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF788, &qword_1004D2CA8);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100067004();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 8);
    v18 = *v12;

    v10 = sub_100067004();
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100163608(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D1DB0, &qword_1004D92C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005CF7C0, &unk_1004D2CD0);
    v7 = sub_1004A6A74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000E268(v9, v5, &qword_1005D1DB0, &qword_1004D92C0);
      result = sub_100063E04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
      result = sub_10016680C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001637EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF7B0, &qword_1004D2CC0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100063E70(v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001638E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF748, &qword_1004D2BB0);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063C84(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 2 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 12;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_100063C84(v17, v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100067004();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = result;
    *(v13 + 16) = v7 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 32;
    v4 = *(v12 - 6);
    v5 = *(v12 - 16);
    v18 = *(v12 - 1);
    v7 = *v12;

    v10 = sub_100067004();
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163B3C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF768, &qword_1004D2C88);
  v3 = sub_1004A6A74();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = sub_100063C84(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v18 = *v11;

    v9 = sub_100063C84(v17, v4);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163C88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(a2, a3);
  v5 = sub_1004A6A74();
  v6 = *(a1 + 32);
  LODWORD(v7) = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = sub_100063B5C(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 60);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = result;
    *(v14 + 8) = v7;
    *(v5[7] + v11) = v8;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 16;
    v19 = *(v13 - 12);
    v7 = *(v13 - 1);
    v8 = *v13;

    v11 = sub_100063B5C(v19, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6D8, &qword_1004D2B50);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100063C84(v5, v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = result;
    v14[1] = v4;
    v15 = v3[7] + v13;
    *v15 = v6;
    *(v15 + 8) = v7;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 8;
    v20 = *(v12 - 3);
    v4 = *(v12 - 2);
    v21 = *(v12 - 1);
    v7 = *v12;

    v10 = sub_100063C84(v20, v4);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6D0, &qword_1004D2B48);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = sub_100063C84(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v14 + 12;
    v20 = *(v14 - 5);
    v4 = *(v14 - 4);
    v21 = *(v14 - 3);
    v7 = *(v14 - 4);
    v22 = *(v14 - 1);
    v9 = *v14;

    v12 = sub_100063C84(v20, v4);
    v14 = v24;
    v8 = v22;
    v6 = v21;
    result = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10016407C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF740, &qword_1004D2BA8);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  LODWORD(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063B5C(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v6 = *v11;

    v9 = sub_100063B5C(v17, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001641A4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D1DC0, qword_1004D92F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005CF780, &qword_1004D2CA0);
    v7 = sub_1004A6A74();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10000E268(v8, v5, &qword_1005D1DC0, qword_1004D92F8);
      v20 = *v5;
      result = sub_100063F7C(v20, *(&v20 + 1));
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = v20;
      v13 = v7[7];
      v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100025FDC(v5 + v19, v13 + *(*(v14 - 8) + 72) * v12, &unk_1005D91B0, &unk_1004CF400);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001643A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF778, &qword_1004D2C98);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100067004();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_100067004();
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001644B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF738, &qword_1004D2BA0);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = sub_100067004();
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 4 * v11) = v4;
    v14 = v3[7] + 32 * v11;
    *v14 = v5;
    *(v14 + 8) = result;
    *(v14 + 16) = v7 & 1;
    *(v14 + 24) = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 8);
    v5 = *(v13 - 24);
    v19 = *(v13 - 2);
    v7 = *(v13 - 8);
    v8 = *v13;

    v11 = sub_100067004();
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001645F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001646E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1001648C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = v13 + 40 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001649EC(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_100164FA4(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

char *sub_100164AC4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1004A40D4();
  v8 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1004A40F4();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t sub_100164B7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100164C68(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100164D6C(uint64_t a1)
{
  v2 = type metadata accessor for RunningTask(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v24 = _swiftEmptyArrayStorage;
  sub_100092388(0, v6, 0);
  v7 = v24;
  v22 = a1;
  if (v6)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    v10 = v6;
    do
    {
      sub_1001669C8(v8, v5, type metadata accessor for RunningTask);
      sub_100014B90((v5 + 64), v23);
      sub_100166900(v5, type metadata accessor for RunningTask);
      v24 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_100092388((v11 > 1), v12 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v12 + 1;
      v13 = (v7 + 48 * v12);
      v14 = v23[0];
      v15 = v23[2];
      v13[3] = v23[1];
      v13[4] = v15;
      v13[2] = v14;
      v8 += v9;
      --v10;
    }

    while (v10);
  }

  v16 = sub_1000CE960(v7);

  v17 = 0;
  *&v23[0] = _swiftEmptyDictionarySingleton;
  v18 = v22;
  while (v6 != v17)
  {
    v19 = v17 + 1;
    sub_100121274(v23, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17);
    v17 = v19;
  }

  sub_100155A98(v18);
  return v16;
}

unint64_t sub_100164FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10016511C(uint64_t a1, int a2, uint64_t a3)
{
  v40 = a2;
  v38 = a1;
  v4 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v46 = type metadata accessor for TaskHistory.Running(0);
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for RunningTask(0) - 8;
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a3 + 16);
  if (v41)
  {
    v20 = 0;
    v21 = *(v17 + 80);
    v43 = *(v17 + 72);
    v44 = a3 + ((v21 + 32) & ~v21);
    v37 = v6 + 8;
    v39 = v4;
    v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v45 = v20;
      sub_1001669C8(v44 + v43 * v20, v19, type metadata accessor for RunningTask);
      v22 = *(v19 + 6);
      v23 = *(v22 + 16);
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          if (i >= *(v22 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            JUMPOUT(0x10016572CLL);
          }

          sub_1001669C8(v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i, v15, type metadata accessor for TaskHistory.Running);
          sub_1001669C8(v15, v12, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v25 = type metadata accessor for TaskHistory.Running;
            v26 = v12;
          }

          else
          {
            v27 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_10016680C(&v12[*(v27 + 64)], v9, type metadata accessor for ClientCommand);
            sub_1001669C8(v9, v6, type metadata accessor for ClientCommand);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0xAu:
                sub_100166900(v9, type metadata accessor for ClientCommand);

                v34 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
                v35 = *(v34 + 64);
                sub_100014D40(*&v6[*(v34 + 80)], *&v6[*(v34 + 80) + 8]);
                sub_100025F40(&v6[v35], &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_25;
              case 0xFu:
                sub_100166900(v9, type metadata accessor for ClientCommand);
                sub_10000C9C0(&qword_1005CD558, &unk_1004CF330);
                goto LABEL_30;
              case 0x10u:
                sub_100166900(v9, type metadata accessor for ClientCommand);
                sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);
LABEL_30:

                sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
                goto LABEL_25;
              case 0x11u:
              case 0x12u:
                v28 = &v6[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
                v29 = *v28;
                v30 = *(v28 + 2);
                sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
                if (v30 != v40)
                {
                  goto LABEL_22;
                }

                v31 = *(v29 + 16);
                if (v31 != *(v38 + 16))
                {
                  goto LABEL_22;
                }

                if (v31)
                {
                  v32 = v29 == v38;
                }

                else
                {
                  v32 = 1;
                }

                if (v32)
                {
                  goto LABEL_33;
                }

                v33 = 32;
                break;
              case 0x13u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
              case 0x1Cu:
              case 0x1Du:
                goto LABEL_23;
              default:
                sub_100166900(v9, type metadata accessor for ClientCommand);
                v26 = v6;
                v25 = type metadata accessor for ClientCommand;
                goto LABEL_24;
            }

            while (1)
            {
              if (!v31)
              {
                goto LABEL_35;
              }

              if (*(v29 + v33) != *(v38 + v33))
              {
                break;
              }

              ++v33;
              if (!--v31)
              {
LABEL_33:

                sub_100166900(v9, type metadata accessor for ClientCommand);
                sub_100166900(v15, type metadata accessor for TaskHistory.Running);
                sub_100166900(v42, type metadata accessor for RunningTask);
                return 0;
              }
            }

LABEL_22:

LABEL_23:
            v25 = type metadata accessor for ClientCommand;
            v26 = v9;
          }

LABEL_24:
          sub_100166900(v26, v25);
LABEL_25:
          sub_100166900(v15, type metadata accessor for TaskHistory.Running);
        }
      }

      v20 = v45 + 1;
      v19 = v42;
      sub_100166900(v42, type metadata accessor for RunningTask);
    }

    while (v20 != v41);
  }

  return 1;
}

uint64_t sub_1001657B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for State.Logger(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100165878(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for State.Logger(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10016591C(uint64_t a1)
{
  result = type metadata accessor for State.Logger(319);
  if (v2 <= 0x3F)
  {
    result = _s30MailboxesToSelectLoggingHelperCMa();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001659C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100165A24()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100165A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v98 = a5;
  v99 = a6;
  v96 = a3;
  v97 = a4;
  v95 = type metadata accessor for Command(0);
  __chkstk_darwin(v95);
  v102 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for State.Logger(0);
  __chkstk_darwin(v88);
  v86 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = &v85 - v13;
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  v17 = type metadata accessor for StateWithTasks(0);
  sub_1001669C8(a2 + *(v17 + 28), v16, type metadata accessor for State.Logger);
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v94 = a7 & 1;
  v93 = a2 + 264;
  v100 = a1;

  v23 = 0;
  v105 = 0;
  v24.n128_u64[0] = 68158723;
  v85 = v24;
  v24.n128_u64[0] = 68158467;
  v87 = v24;
  v104 = v16;
  v91 = a1 + 56;
  v90 = v22;
  v92 = a2;
  while (v21)
  {
    v29 = v102;
LABEL_15:
    v31 = *(v100 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21))));
    v32 = *v31;
    v33 = *(v31 + 8);
    *v29 = *v31;
    *(v29 + 8) = v33;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    v34 = ConnectionUsage.init()();
    v36 = v35;
    v109[0] = v98;
    v109[1] = v99;
    v110 = v94;
    v111 = v34;
    v112 = v35;
    v37 = v105;
    v38 = v96(v29, v109);
    v105 = v37;
    if (v37)
    {
      sub_100166900(v29, type metadata accessor for Command);

      sub_10001324C(v36);
      v40 = v104;
      v41 = v89;
      sub_1001669C8(v104, v89, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v42 = sub_1004A4A54();
      v43 = sub_1004A6024();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v108[0] = v103;
        *v44 = v87.n128_u32[0];
        *(v44 + 4) = 2;
        *(v44 + 8) = 256;
        v45 = *(v88 + 20);
        v101 = v42;
        v46 = *(v41 + v45);
        sub_100166900(v41, type metadata accessor for State.Logger);
        *(v44 + 10) = v46;
        *(v44 + 11) = 2160;
        *(v44 + 13) = 0x786F626C69616DLL;
        *(v44 + 21) = 2085;
        v106 = v32;
        v107 = v33;

        v47 = sub_1004A5824();
        v49 = sub_10015BA6C(v47, v48, v108);

        *(v44 + 23) = v49;
        v42 = v101;
        _os_log_impl(&_mh_execute_header, v101, v43, "[%.*hhx] Failed to de-select mailbox '%{sensitive,mask.mailbox}s'", v44, 0x1Fu);
        sub_1000197E0(v103);

        v40 = v104;
      }

      else
      {
        sub_100166900(v41, type metadata accessor for State.Logger);
      }

      v52 = 0;
    }

    else
    {
      v50 = v39;
      v51 = v38;
      sub_100166900(v29, type metadata accessor for Command);

      sub_10001324C(v36);
      if (v50)
      {
        v40 = v104;
      }

      else
      {
        v40 = v104;
        v53 = v86;
        sub_1001669C8(v104, v86, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v54 = sub_1004A4A54();
        v55 = sub_1004A6034();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          LODWORD(v101) = v55;
          v57 = v56;
          v103 = swift_slowAlloc();
          v108[0] = v103;
          *v57 = v85.n128_u32[0];
          *(v57 + 4) = 2;
          *(v57 + 8) = 256;
          v58 = v53;
          v59 = *(v53 + *(v88 + 20));
          sub_100166900(v58, type metadata accessor for State.Logger);
          *(v57 + 10) = v59;
          *(v57 + 11) = 2160;
          *(v57 + 13) = 0x786F626C69616DLL;
          *(v57 + 21) = 2085;
          v106 = v32;
          v107 = v33;

          v60 = sub_1004A5824();
          v62 = v54;
          v63 = sub_10015BA6C(v60, v61, v108);

          *(v57 + 23) = v63;
          *(v57 + 31) = 2082;
          v64 = ConnectionID.debugDescription.getter(v51);
          v66 = sub_10015BA6C(v64, v65, v108);

          *(v57 + 33) = v66;
          v40 = v104;
          _os_log_impl(&_mh_execute_header, v62, v101, "[%.*hhx] De-selected '%{sensitive,mask.mailbox}s' on %{public}s", v57, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100166900(v53, type metadata accessor for State.Logger);
        }
      }

      v52 = v105;
    }

    v67 = *(a2 + 272);
    v68 = v67[2];
    if (v68)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v67 = sub_1001399D0(v67);
      }

      v70 = 0;
      while (v70 < v67[2])
      {
        type metadata accessor for RunningTask(0);
        sub_100119D34(v32, v33, a2, v40);
        if (v68 == ++v70)
        {

          *(a2 + 272) = v67;
          v52 = v105;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_34:
    __chkstk_darwin(v71);
    *(&v85 - 2) = v93;
    *(&v85 - 1) = v40;
    sub_10015C69C(sub_100166A30, (&v85 - 2));
    v73 = *(a2 + 272);
    v74 = v73[2];
    v75 = v74 - v72;
    if (v74 < v72)
    {
      goto LABEL_51;
    }

    v76 = v72;
    if (v72 < 0)
    {
      goto LABEL_52;
    }

    v77 = v72;
    if (__OFADD__(v74, v72 - v74))
    {
      goto LABEL_53;
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v52;
    v103 = &v85;
    v101 = -v75;
    if (!v78 || v77 > v73[3] >> 1)
    {
      if (v74 <= v77)
      {
        v79 = v74 - v75;
      }

      else
      {
        v79 = v74;
      }

      v73 = sub_100087480(v78, v79, 1, v73);
    }

    v80 = *(type metadata accessor for RunningTask(0) - 8);
    v81 = v73 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v82 = *(v80 + 72);
    v83 = v82 * v76;
    swift_arrayDestroy();
    if (v74 != v76)
    {
      if (v83 < v82 * v74 || &v81[v82 * v76] >= &v81[v82 * v74 + (v73[2] - v74) * v82])
      {
        swift_arrayInitWithTakeFrontToBack();
        v25 = v101;
      }

      else
      {
        v84 = v83 == v82 * v74;
        v25 = v101;
        if (!v84)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v26 = v73[2];
      v27 = __OFADD__(v26, v25);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_54;
      }

      v73[2] = v28;
    }

    v21 &= v21 - 1;
    v16 = v104;
    a2 = v92;
    *(v92 + 272) = v73;
    v18 = v91;
    v22 = v90;
  }

  v29 = v102;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v22)
    {

      sub_100166900(v16, type metadata accessor for State.Logger);
      return;
    }

    v21 = *(v18 + 8 * v30);
    ++v23;
    if (v21)
    {
      v23 = v30;
      goto LABEL_15;
    }
  }

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
}

uint64_t sub_10016642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v45 = a2;
  v46 = a1;
  v8 = type metadata accessor for StateWithTasks(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  sub_1001669C8(a4, &v41[-v12], type metadata accessor for StateWithTasks);
  v14 = sub_100012C04();
  v43 = v15;
  v44 = v14;
  v42 = v16;
  sub_100166900(v13, type metadata accessor for StateWithTasks);
  sub_1001669C8(a4, v10, type metadata accessor for StateWithTasks);
  memcpy(v54, v10, sizeof(v54));
  v17 = sub_10012E208();
  v18 = LOBYTE(v54[3]);
  v19 = BYTE1(v54[3]);
  v20 = v54[4];
  v21 = v54[7];

  sub_100166D28();
  v23 = v22;
  if (v20 == 3 || v20 == 2)
  {

    v24 = 1;
    goto LABEL_4;
  }

  v39 = sub_100166E18(v22);
  if (v19)
  {
    goto LABEL_12;
  }

  if (v20 == 1)
  {
    if (v18)
    {
      v24 = v18 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v24 = v39 ^ 1;
    goto LABEL_13;
  }

  if (v20 || (v18 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v24 = 0;
LABEL_13:
  sub_100013AD0(&off_100598658, v21);
  sub_100166E18(v23);
  v40 = sub_100013CF4(v21);

  if (v40 & 1) == 0 && (v19)
  {
    sub_100166E18(v23);
  }

LABEL_4:

  sub_1000CF79C(v54[21], v54[22], v54[23], v54[24] & 1, v54[15], v17, v24 & 1, v54[26]);
  v26 = v25;
  v28 = v27;

  sub_1001627A4(v26, v28);
  v30 = v29;

  sub_1001222A0(*(v10 + 264), v10[34]);
  v32 = v31;
  sub_100166900(v10, type metadata accessor for StateWithTasks);
  v49[0] = v45;
  v49[1] = a3;

  v33 = sub_10000C9C0(&qword_1005D1D98, &qword_1004D92B0);
  v34 = sub_10000DF44(&qword_1005D1DA0, &qword_1005D1D98, &qword_1004D92B0, &protocol conformance descriptor for OrderedSet<A>);
  MailboxesSelectionUsage.removing<A>(notContainedIn:)(v49, v30, v33, v34);
  v36 = v35;

  v50[0] = v44;
  v50[1] = v43;
  v51 = v42 & 1;
  v52 = v36;
  v53 = v32;
  v37 = v48(v46, v50);

  sub_10001324C(v32);
  return v37;
}

uint64_t sub_10016680C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001668B4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100166900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100166960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001669C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100166A54@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = result;
  if ((result & 0x1000000) == 0)
  {
    v4 = _swiftEmptyArrayStorage;
    if ((result & 0xFF0000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  result = sub_1000864D4(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = result;
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    result = sub_1000864D4((v5 > 1), v6 + 1, 1, result);
    v4 = result;
    v5 = *(result + 24);
    v7 = v5 >> 1;
  }

  v4[2] = v8;
  *(v4 + v6 + 32) = 2;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    result = sub_1000864D4((v5 > 1), v9, 1, v4);
    v4 = result;
  }

  v4[2] = v9;
  *(v4 + v8 + 32) = 4;
  if ((*&v2 & 0xFF0000) == 0)
  {
LABEL_9:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000864D4(0, v4[2] + 1, 1, v4);
      v4 = result;
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      result = sub_1000864D4((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    v4[2] = v11 + 1;
    *(v4 + v11 + 32) = 10;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

BOOL sub_100166BDC(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[6];
  v18 = a2[7];
  if (v10)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v9 & 1) == 0;
  v21 = 0x1000000000000;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x1000000000000;
  }

  v20 = (v8 & 1) == 0;
  v23 = 0x10000000000;
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x10000000000;
  }

  v20 = (v7 & 1) == 0;
  v25 = &_mh_execute_header;
  if (v20)
  {
    v26 = 0;
  }

  else
  {
    v26 = &_mh_execute_header;
  }

  v20 = (v6 & 1) == 0;
  v27 = 0x1000000;
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    v28 = 0x1000000;
  }

  v29 = v3 & 1;
  v30 = ((v4 << 8) | (v5 << 16) | v28 | v26 | v24 | v22) + v19;
  if (v18)
  {
    v31 = 0x100000000000000;
  }

  else
  {
    v31 = 0;
  }

  if ((v17 & 1) == 0)
  {
    v21 = 0;
  }

  if ((v16 & 1) == 0)
  {
    v23 = 0;
  }

  if ((v15 & 1) == 0)
  {
    v25 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v27 = 0;
  }

  v32 = (v12 << 8) | (v13 << 16) | v27 | v25;

  return sub_100166EB4(v30 | v29, ((v32 | v23 | v21) + v31) | v11 & 1);
}

uint64_t sub_100166CE8()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x746C7561666564;
  }
}

void sub_100166D28()
{
  v1 = *(v0 + 64);
  v10 = _swiftEmptySetSingleton;
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_100088064(&v9, *(*(v1 + 56) + ((v7 << 11) | (32 * v8))));
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100166E18(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + (v7 | (v6 << 6))) - 2 >= 3)
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100166F34()
{
  result = qword_1005D1DC8;
  if (!qword_1005D1DC8)
  {
    result = swift_getWitnessTable(byte_1004D936C, &type metadata for SyncBehavior.MailboxSync, v0, v1);
    atomic_store(result, &qword_1005D1DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10016708C()
{
  result = qword_1005D1DD0;
  if (!qword_1005D1DD0)
  {
    result = swift_getWitnessTable(byte_1004D9464, &type metadata for SyncBehavior.MessageBodyDownload, v0, v1);
    atomic_store(result, &qword_1005D1DD0);
  }

  return result;
}

unint64_t sub_1001670E4()
{
  result = qword_1005D1DD8;
  if (!qword_1005D1DD8)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for SyncBehavior.FetchMessages, v0, v1);
    atomic_store(result, &qword_1005D1DD8);
  }

  return result;
}

unint64_t sub_10016716C()
{
  result = qword_1005D1DF0;
  if (!qword_1005D1DF0)
  {
    result = swift_getWitnessTable(byte_1004D95A0, &type metadata for SyncBehavior.DownloadBehavior, v0, v1);
    atomic_store(result, &qword_1005D1DF0);
  }

  return result;
}

unint64_t sub_1001671C4()
{
  result = qword_1005D1DF8;
  if (!qword_1005D1DF8)
  {
    result = swift_getWitnessTable(aA_11, &type metadata for SyncBehavior.DetectChangesToMessages, v0, v1);
    atomic_store(result, &qword_1005D1DF8);
  }

  return result;
}

unint64_t sub_10016721C()
{
  result = qword_1005D1E00;
  if (!qword_1005D1E00)
  {
    result = swift_getWitnessTable(byte_1004D9670, &type metadata for SyncBehavior.PurgeMessages, v0, v1);
    atomic_store(result, &qword_1005D1E00);
  }

  return result;
}

uint64_t sub_1001672A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001672F8()
{
  result = qword_1005D1E18;
  if (!qword_1005D1E18)
  {
    result = swift_getWitnessTable(aQ_6, &type metadata for SyncBehavior.PendingResponsesTaskGeneration, v0, v1);
    atomic_store(result, &qword_1005D1E18);
  }

  return result;
}

void *sub_10016735C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v1, 0);
  v24 = a1 + 56;
  result = sub_1004A6554();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = sub_100167A8C(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_100091A08((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_100020944(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_100167580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v5 = 0;
  v6 = a1 + 56;
  v7 = a2 + 56;
  v8 = a3 + 56;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = *(&off_100598680 + v5 + 32);
    if (*(v4 + 16) && (sub_1004A6E94(), sub_1004A6EB4(v10), v11 = sub_1004A6F14(), v12 = -1 << *(v4 + 32), v13 = v11 & ~v12, ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
    {
      v14 = ~v12;
      while (*(*(v4 + 48) + v13) != v10)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = _swiftEmptyArrayStorage;
    }

    else
    {
LABEL_9:
      v15 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_100085070((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[16 * v17];
      strcpy(v18 + 32, "not-completed");
      *(v18 + 23) = -4864;
      v3 = a3;
    }

    if (!*(a2 + 16))
    {
      v4 = a1;
      if (!*(v3 + 16))
      {
        goto LABEL_39;
      }

LABEL_22:
      sub_1004A6E94();
      sub_1004A6EB4(v10);
      v23 = sub_1004A6F14();
      v24 = -1 << *(v3 + 32);
      v25 = v23 & ~v24;
      if ((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = ~v24;
        while (*(*(v3 + 48) + v25) != v10)
        {
          v25 = (v25 + 1) & v26;
          if (((*(v8 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100085070(0, *(v15 + 2) + 1, 1, v15);
        }

        v31 = *(v15 + 2);
        v30 = *(v15 + 3);
        if (v31 >= v30 >> 1)
        {
          v15 = sub_100085070((v30 > 1), v31 + 1, 1, v15);
        }

        *(v15 + 2) = v31 + 1;
        v32 = &v15[16 * v31];
        *(v32 + 4) = 0x6E65646E65706564;
        *(v32 + 5) = 0xEA00000000007963;
        v3 = a3;
      }

      goto LABEL_39;
    }

    sub_1004A6E94();
    sub_1004A6EB4(v10);
    v19 = sub_1004A6F14();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      v4 = a1;
      while (*(*(a2 + 48) + v21) != v10)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100085070(0, *(v15 + 2) + 1, 1, v15);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_100085070((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[16 * v28];
      *(v29 + 4) = 0x74726174736572;
      *(v29 + 5) = 0xE700000000000000;
      v3 = a3;
      if (*(a3 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v4 = a1;
LABEL_21:
      if (*(v3 + 16))
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    if (*(v15 + 2))
    {
      v44 = sub_100167A8C(v10);
      v45 = v33;
      v46._countAndFlagsBits = 8250;
      v46._object = 0xE200000000000000;
      sub_1004A5994(v46);
      sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
      sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
      v34 = sub_1004A5614();
      v36 = v35;

      v47._countAndFlagsBits = v34;
      v47._object = v36;
      sub_1004A5994(v47);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100085070(0, *(v9 + 2) + 1, 1, v9);
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      if (v38 >= v37 >> 1)
      {
        v9 = sub_100085070((v37 > 1), v38 + 1, 1, v9);
      }

      *(v9 + 2) = v38 + 1;
      v39 = &v9[16 * v38];
      *(v39 + 4) = v44;
      *(v39 + 5) = v45;
      v3 = a3;
    }

    else
    {
    }

    ++v5;
  }

  while (v5 != 15);
  return v9;
}

unint64_t sub_100167A8C(char a1)
{
  result = 0x636E79736552;
  switch(a1)
  {
    case 1:
      result = 0x73654D6863746546;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x654D64616F6C7055;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100167C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100082EA0(*a1, *a2) & 1) == 0 || (sub_100082EA0(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_100082EA0(v3, v5);
}

uint64_t sub_100167D14(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 56;
  v6 = a2 + 56;
  while (*(a1 + 16))
  {
    v7 = *(&off_100598680 + v4 + 32);
    sub_1004A6E94();
    sub_1004A6EB4(v7);
    v8 = sub_1004A6F14();
    v9 = -1 << *(a1 + 32);
    v10 = v8 & ~v9;
    if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      break;
    }

    ++v4;
    v11 = ~v9;
    while (*(*(a1 + 48) + v10) != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a2 + 16))
    {
      sub_1004A6E94();
      sub_1004A6EB4(v7);
      v12 = sub_1004A6F14();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        v15 = ~v13;
        while (*(*(a2 + 48) + v14) != v7)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }

LABEL_13:
    if (v4 == 15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100167E8C(uint64_t a1, uint64_t a2)
{
  sub_1004A6724(30);

  strcpy(v11, "completed: {");
  sub_10016735C(a1);
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v4 = sub_1004A5614();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_1004A5994(v12);

  v13._countAndFlagsBits = 0x6174736572202C7DLL;
  v13._object = 0xED00007B203A7472;
  sub_1004A5994(v13);
  sub_10016735C(a2);
  v7 = sub_1004A5614();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_1004A5994(v14);

  v15._countAndFlagsBits = 125;
  v15._object = 0xE100000000000000;
  sub_1004A5994(v15);
  return v11[0];
}

Swift::Int sub_100168038(Swift::Int result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 56;
LABEL_3:
  if (v3 <= 0xF)
  {
    v5 = 15;
  }

  else
  {
    v5 = v3;
  }

  while (v3 != v5)
  {
    v6 = v3++;
    if (*(v1 + 16))
    {
      v7 = *(&off_100598680 + v6 + 32);
      sub_1004A6E94();
      sub_1004A6EB4(v7);
      result = sub_1004A6F14();
      v8 = -1 << *(v1 + 32);
      v9 = result & ~v8;
      if ((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        while (*(*(v1 + 48) + v9) != v7)
        {
          v9 = (v9 + 1) & v10;
          if (((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v2 = (1 << v6) | v2;
        if (v3 == 15)
        {
          return v2;
        }

        goto LABEL_3;
      }
    }

LABEL_6:
    if (v3 == 15)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SyncStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001682FC()
{
  result = qword_1005D1E30;
  if (!qword_1005D1E30)
  {
    result = swift_getWitnessTable(byte_1004D9888, &type metadata for SyncStep, v0, v1);
    atomic_store(result, &qword_1005D1E30);
  }

  return result;
}

uint64_t sub_100168350@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_10011D9F0(a1, v29);
  if (v30)
  {
    sub_1000B364C(v29, v26);
    sub_1004A4A64();
    v6 = v27;
    v7 = v28;
    sub_10002587C(v26, v27);
    v8 = (*(v7 + 72))(v6, v7);
    v10 = v9;
    v11 = v27;
    v12 = v28;
    sub_10002587C(v26, v27);
    (*(v12 + 32))(&v31, v11, v12);
    v13 = v32;
    v41 = v31;
    sub_1000D69D0(&v41);
    v39 = v33;
    v40 = v34;
    sub_10009DA94(&v39);
    v14 = v27;
    v15 = v28;
    sub_10002587C(v26, v27);
    (*(v15 + 32))(&v35, v14, v15);
    sub_10011DA4C(a1);
    v16 = v36;
    v17 = v37;
    v38 = v35;
    sub_1000D69D0(&v38);
    v18 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v18 = a2;
    *(v18 + 8) = v8;
    *(v18 + 16) = v10;
    *(v18 + 24) = v13 | 0x8000000000000000;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
  }

  else
  {
    sub_1000B364C(v29, v26);
    sub_1004A4A64();
    v19 = v27;
    v20 = v28;
    sub_10002587C(v26, v27);
    v21 = (*(v20 + 32))(v19, v20);
    v23 = v22;
    sub_10011DA4C(a1);
    v24 = a3 + *(type metadata accessor for Task.Logger(0) + 20);
    *v24 = a2;
    *(v24 + 8) = v21;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 16) = v23;
    *(v24 + 40) = 0;
  }

  return sub_1000197E0(v26);
}

uint64_t sub_1001685A8(uint64_t a1)
{
  sub_10011D9F0(v1, v11);
  if (v12)
  {
    sub_1000B364C(v11, v8);
    v3 = v9;
    v4 = v10;
    sub_10002587C(v8, v9);
    (*(v4 + 64))(a1, v3, v4);
  }

  else
  {
    sub_1000B364C(v11, v8);
    v5 = v9;
    v6 = v10;
    sub_10002587C(v8, v9);
    (*(v6 + 24))(a1, v5, v6);
  }

  return sub_1000197E0(v8);
}

uint64_t TaskID.debugDescription.getter()
{
  v1 = sub_1004A7164();
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6634();
  sub_1004A5994(v3);

  return v1;
}

uint64_t static TaskID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1004A6654();
  }

  else
  {
    return 0;
  }
}

Swift::Int TaskID.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6664();
  return sub_1004A6F14();
}

Swift::Int sub_100168774(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6664();
  return sub_1004A6F14();
}

unint64_t sub_1001687B8()
{
  result = qword_1005D1E38;
  if (!qword_1005D1E38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TaskID, &type metadata for TaskID, v0, v1);
    atomic_store(result, &qword_1005D1E38);
  }

  return result;
}

uint64_t sub_10016880C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100168854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for TaskID()
{
  return &type metadata for TaskID;
}

{
  return &type metadata for TaskID;
}

uint64_t sub_1001688C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 1);
    if (v10 > 0x80000000)
    {
      return -v10;
    }

    else
    {
      return 0;
    }
  }
}

double sub_100168994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1004A4A74();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *v12 = -a2 << 8;
    result = 0.0;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0;
  }

  return result;
}

uint64_t sub_100168A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100168AE8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 8;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_100168B58(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(result + 12) | (a2 << 63);
  *result = *result;
  *(result + 3) = v2;
  return result;
}

uint64_t sub_100168B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100168C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100168D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1004A4A74();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100168DE0@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139804(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 176 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 13, 176 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100168E9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10013982C(v3);
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
    v7 = v3 + 24 * a1;
    v9 = *(v7 + 32);
    v7 += 32;
    v8 = v9;
    v10 = *(v7 + 4);
    memmove(v7, (v7 + 24), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    v11 = &_mh_execute_header;
    if (!v10)
    {
      v11 = 0;
    }

    return v11 | v8;
  }

  return result;
}

uint64_t sub_100168FA8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139890(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 240 * a1);
    v10 = v9[15];
    a2[12] = v9[14];
    a2[13] = v10;
    *(a2 + 217) = *(v9 + 249);
    v11 = v9[11];
    a2[8] = v9[10];
    a2[9] = v11;
    v12 = v9[13];
    a2[10] = v9[12];
    a2[11] = v12;
    v13 = v9[7];
    a2[4] = v9[6];
    a2[5] = v13;
    v14 = v9[9];
    a2[6] = v9[8];
    a2[7] = v14;
    v15 = v9[3];
    *a2 = v9[2];
    a2[1] = v15;
    v16 = v9[5];
    a2[2] = v9[4];
    a2[3] = v16;
    result = memmove(v9 + 2, v9 + 17, 240 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100169078@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001398B8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 192 * a1);
    v9 = v8[11];
    v10 = v7 - 1;
    a2[8] = v8[10];
    a2[9] = v9;
    a2[10] = v8[12];
    *(a2 + 169) = *(v8 + 201);
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[9];
    a2[6] = v8[8];
    a2[7] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    v14 = v8[5];
    a2[2] = v8[4];
    a2[3] = v14;
    result = memmove(v8 + 2, v8 + 14, 192 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100169180(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100139930(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_100169210(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100139994(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 8);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1001692B4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(a3(0) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_10016B7A0(v17, a5, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

uint64_t sub_1001693F4()
{
  v1 = v0;
  v2 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10016AF30(v1, v7, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  v10 = *(v7 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 1);
    v20 = *v7;
    v21 = sub_1004A6CE4();
    v22 = v12;
    v23._countAndFlagsBits = 2304032;
    v23._object = 0xE300000000000000;
    sub_1004A5994(v23);
    v20 = v10;
    v24._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v24);

    v25._countAndFlagsBits = 8233;
    v25._object = 0xE200000000000000;
    sub_1004A5994(v25);
    v13 = Action.kind.getter(v11);
    v26._countAndFlagsBits = Action.Kind.description.getter(v13);
    sub_1004A5994(v26);

    sub_100020EDC(v11);
    return v21;
  }

  else
  {
    v15 = *(v7 + 2);
    v16 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016B7A0(&v7[*(v16 + 64)], v4, type metadata accessor for ClientCommand);
    LOBYTE(v21) = v9;
    HIDWORD(v21) = v10;
    v21 = sub_1004A5804();
    v22 = v17;
    v27._countAndFlagsBits = 2304032;
    v27._object = 0xE300000000000000;
    sub_1004A5994(v27);
    v20 = v15;
    v28._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v28);

    v29._countAndFlagsBits = 8233;
    v29._object = 0xE200000000000000;
    sub_1004A5994(v29);
    v30._countAndFlagsBits = ClientCommand.logIdentifier.getter();
    sub_1004A5994(v30);

    v14 = v21;
    sub_10016AF98(v4, type metadata accessor for ClientCommand);
  }

  return v14;
}

void sub_100169680(unint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v39 = a1;
  v36 = a2;
  v3 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v3 - 8);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v35 = v2;
  v14 = *v2;
  v15 = *(*v2 + 16);
  if (!v15)
  {
LABEL_12:
    v26 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
    (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
    return;
  }

  v16 = 0;
  v37 = HIDWORD(v39);
  v17 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    sub_10016AF30(v17 + *(v6 + 72) * v16, v13, type metadata accessor for TaskHistory.Running);
    sub_10016B7A0(v13, v10, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_10016AF98(v10, type metadata accessor for TaskHistory.Running);
LABEL_4:
    if (v15 == ++v16)
    {
      goto LABEL_12;
    }
  }

  v18 = v14;
  v19 = v15;
  v20 = v6;
  v21 = v5;
  v23 = *v10;
  v22 = v10[1];
  v38 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_10016AF98(v10 + *(v38 + 64), type metadata accessor for ClientCommand);
  v24 = v23 == v39;
  v5 = v21;
  v6 = v20;
  v15 = v19;
  v14 = v18;
  if (!v24 || v22 != v37)
  {
    goto LABEL_4;
  }

  v25 = v34;
  sub_1001692B4(v16, sub_1001399A8, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10016AF98(v25, type metadata accessor for TaskHistory.Running);
    goto LABEL_12;
  }

  v27 = *(v25 + 8);
  v28 = v33;
  sub_10016B7A0(v25 + *(v38 + 64), v33, type metadata accessor for ClientCommand);
  v29 = sub_10000C9C0(&qword_1005D0F50, &qword_1004D6060);
  v30 = *(v29 + 48);
  v31 = v36;
  *v36 = v27;
  sub_10016B7A0(v28, v31 + v30, type metadata accessor for ClientCommand);
  (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
}

void sub_100169A68(int a1)
{
  v3 = type metadata accessor for TaskHistory.Running(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = *(*v1 + 16);
  if (v13)
  {
    v19 = v1;
    v20 = v9;
    v14 = 0;
    v15 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = a1;
    do
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        return;
      }

      sub_10016AF30(v15 + *(v4 + 72) * v14, v11, type metadata accessor for TaskHistory.Running);
      sub_10016B7A0(v11, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *v7;
        sub_100020EDC(*(v7 + 1));
        if (v17 == v16)
        {
          v18 = v20;
          sub_1001692B4(v14, sub_1001399A8, type metadata accessor for TaskHistory.Running, type metadata accessor for TaskHistory.Running, v20);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_10016AF98(v18, type metadata accessor for TaskHistory.Running);
          }

          return;
        }
      }

      else
      {
        sub_10016AF98(v7, type metadata accessor for TaskHistory.Running);
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

uint64_t sub_100169CC8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for ClientCommand(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016B730(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_100025F40(v15, &qword_1005D0F28, &qword_1004D6018);
  }

  sub_10016B7A0(v15, v19, type metadata accessor for ClientCommand);
  v21 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
  *v12 = a2;
  *(v12 + 2) = a3;
  sub_10016AF30(v19, &v12[v21], type metadata accessor for ClientCommand);
  swift_storeEnumTagMultiPayload();
  v22 = v30;
  v23 = *v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_10008732C(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10008732C((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  sub_10016B7A0(v12, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, type metadata accessor for TaskHistory.Running);
  *v22 = v23;
  v26 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
  sub_10016AF30(v19, v9, type metadata accessor for ClientCommand);
  *&v9[v26] = a3;
  swift_storeEnumTagMultiPayload();
  v27 = v22[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_100087354(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_100087354((v28 > 1), v29 + 1, 1, v27);
  }

  sub_10016AF98(v19, type metadata accessor for ClientCommand);
  v27[2] = v29 + 1;
  result = sub_10016B7A0(v9, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for TaskHistory.Previous);
  v22[1] = v27;
  return result;
}

uint64_t sub_10016A138(unint64_t a1, int a2, int a3)
{
  v7 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 1) = a1;
  swift_storeEnumTagMultiPayload();
  v14 = *v3;
  sub_10011D8FC(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_10008732C(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_10008732C((v15 > 1), v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  sub_10016B7A0(v13, v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16, type metadata accessor for TaskHistory.Running);
  *v3 = v14;
  *v9 = a1;
  *(v9 + 2) = a3;
  swift_storeEnumTagMultiPayload();
  v17 = *(v3 + 8);
  sub_10011D8FC(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_100087354(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_100087354((v18 > 1), v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  result = sub_10016B7A0(v9, v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, type metadata accessor for TaskHistory.Previous);
  *(v3 + 8) = v17;
  return result;
}

uint64_t sub_10016A3F0()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v1);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(v0, v3, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v3;
    sub_100020EDC(v3[1]);
  }

  else
  {
    v4 = *v3;
    v5 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016AF98(v3 + *(v5 + 64), type metadata accessor for ClientCommand);
  }

  return v4;
}

uint64_t sub_10016A4F8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_100102B68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100102D20(v2, v3);
}

uint64_t sub_10016A554(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for TaskHistory.Previous(0);
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v43 - v7;
  v46 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1004A6724(40);

  v51 = 0x20676E696E6E7572;
  v52 = 0xE900000000000028;
  v50 = *(a1 + 16);
  v14 = v50;
  v53._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v53);

  v54._countAndFlagsBits = 2065709609;
  v54._object = 0xE400000000000000;
  sub_1004A5994(v54);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v43 = v4;
    v44 = a2;
    v50 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v14, 0);
    v15 = v50;
    v16 = v8;
    v17 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v45 = *(v16 + 72);
    do
    {
      sub_10016AF30(v17, v13, type metadata accessor for TaskHistory.Running);
      sub_10016AF30(v13, v10, type metadata accessor for TaskHistory.Running);
      v18 = sub_1004A5824();
      v20 = v19;
      sub_10016AF98(v13, type metadata accessor for TaskHistory.Running);
      v50 = v15;
      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        sub_100091A08((v21 > 1), v22 + 1, 1);
        v15 = v50;
      }

      v15[2] = v22 + 1;
      v23 = &v15[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      v17 += v45;
      --v14;
    }

    while (v14);
    v4 = v43;
    a2 = v44;
  }

  v50 = v15;
  v24 = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v25 = sub_1004A5614();
  v27 = v26;

  v55._countAndFlagsBits = v25;
  v55._object = v27;
  sub_1004A5994(v55);

  v56._countAndFlagsBits = 0x6976657270202C7DLL;
  v56._object = 0xEE0028203A73756FLL;
  sub_1004A5994(v56);
  v50 = *(a2 + 16);
  v28 = v50;
  v57._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v57);

  v58._countAndFlagsBits = 2065709609;
  v58._object = 0xE400000000000000;
  sub_1004A5994(v58);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v46 = v24;
    v50 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v28, 0);
    v29 = v50;
    v30 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = *(v4 + 72);
    do
    {
      v32 = v47;
      sub_10016AF30(v30, v47, type metadata accessor for TaskHistory.Previous);
      sub_10016AF30(v32, v48, type metadata accessor for TaskHistory.Previous);
      v33 = sub_1004A5824();
      v35 = v34;
      sub_10016AF98(v32, type metadata accessor for TaskHistory.Previous);
      v50 = v29;
      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        sub_100091A08((v36 > 1), v37 + 1, 1);
        v29 = v50;
      }

      v29[2] = v37 + 1;
      v38 = &v29[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      v30 += v31;
      --v28;
    }

    while (v28);
  }

  v50 = v29;
  v39 = sub_1004A5614();
  v41 = v40;

  v59._countAndFlagsBits = v39;
  v59._object = v41;
  sub_1004A5994(v59);

  v60._countAndFlagsBits = 125;
  v60._object = 0xE100000000000000;
  sub_1004A5994(v60);
  return v51;
}

unint64_t sub_10016AA64(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(v2, v8, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = Action.kind.getter(*v8);
    v11 = Action.Kind.description.getter(v10);
    sub_100020EDC(v9);
  }

  else
  {
    sub_10016B7A0(v8, v5, type metadata accessor for ClientCommand);
    v11 = ClientCommand.logIdentifier.getter();
    sub_10016AF98(v5, type metadata accessor for ClientCommand);
  }

  return v11;
}

BOOL sub_10016AC00(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 8))
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

uint64_t sub_10016AC38(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016AF30(a1, v7, type metadata accessor for TaskHistory.Running);
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10008732C(0, v8[2] + 1, 1, v8);
    *a2 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_10008732C((v10 > 1), v11 + 1, 1, v8);
    *a2 = v8;
  }

  v8[2] = v11 + 1;
  return sub_10016B7A0(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for TaskHistory.Running);
}

uint64_t sub_10016ADA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10016AF30(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v6;
    sub_100020EDC(v6[1]);
  }

  else
  {
    v8 = *v6;
    v9 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
    sub_10016AF98(v6 + *(v9 + 64), type metadata accessor for ClientCommand);
  }

  v10 = *(a2 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v10;
  if ((result & 1) == 0)
  {
    result = sub_100087F48(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *(a2 + 8) = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_100087F48((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *(a2 + 8) = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 12 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_10016AF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016AF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10016AFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v33[-v8];
  v10 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  v16 = sub_10000C9C0(&qword_1005D1F60, &qword_1004D9BB8);
  __chkstk_darwin(v16 - 8);
  v18 = &v33[-v17];
  v20 = &v33[*(v19 + 56) - v17];
  sub_10016AF30(a1, &v33[-v17], type metadata accessor for TaskHistory.Running);
  sub_10016AF30(a2, v20, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10016AF30(v18, v15, type metadata accessor for TaskHistory.Running);
    v25 = v15[2];
    v26 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *v15;
      v27 = v15[1];
      v35 = v25;
      v36 = v27;
      v29 = *v20;
      v30 = *(v20 + 1);
      v34 = *(v20 + 2);
      sub_10016B7A0(v15 + v26, v9, type metadata accessor for ClientCommand);
      sub_10016B7A0(&v20[v26], v6, type metadata accessor for ClientCommand);
      v31 = v28 == v29 && v36 == v30;
      if (v31 && v35 == v34)
      {
        v24 = static ClientCommand.__derived_enum_equals(_:_:)(v9, v6);
        sub_10016AF98(v6, type metadata accessor for ClientCommand);
        sub_10016AF98(v9, type metadata accessor for ClientCommand);
        goto LABEL_17;
      }

      sub_10016AF98(v6, type metadata accessor for ClientCommand);
      sub_10016AF98(v9, type metadata accessor for ClientCommand);
      goto LABEL_20;
    }

    sub_10016AF98(v15 + v26, type metadata accessor for ClientCommand);
LABEL_9:
    sub_100025F40(v18, &qword_1005D1F60, &qword_1004D9BB8);
LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  sub_10016AF30(v18, v12, type metadata accessor for TaskHistory.Running);
  v21 = *(v12 + 1);
  v22 = *(v12 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100020EDC(v22);
    goto LABEL_9;
  }

  if (*v12 != *v20 || v21 != *(v20 + 1))
  {
    sub_100020EDC(*(v20 + 1));
    sub_100020EDC(v22);
LABEL_20:
    sub_10016AF98(v18, type metadata accessor for TaskHistory.Running);
    goto LABEL_21;
  }

  v23 = *(v20 + 1);
  v24 = static Action.__derived_enum_equals(_:_:)(v22, v23);
  sub_100020EDC(v23);
  sub_100020EDC(v22);
LABEL_17:
  sub_10016AF98(v18, type metadata accessor for TaskHistory.Running);
  return v24 & 1;
}

uint64_t sub_10016B3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TaskHistory.Previous(0);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_10000C9C0(&qword_1005D0940, &qword_1004D43A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v17 = &v30 + *(v16 + 56) - v14;
  sub_10016AF30(a1, &v30 - v14, type metadata accessor for TaskHistory.Previous);
  sub_10016AF30(a2, v17, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10016AF30(v15, v12, type metadata accessor for TaskHistory.Previous);
    v24 = *(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48);
    v25 = *&v12[v24];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = *&v17[v24];
      sub_10016B7A0(v17, v6, type metadata accessor for ClientCommand);
      v27 = static ClientCommand.__derived_enum_equals(_:_:)(v12, v6);
      sub_10016AF98(v6, type metadata accessor for ClientCommand);
      sub_10016AF98(v12, type metadata accessor for ClientCommand);
      if (v27)
      {
        v23 = v25 == v26;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    sub_10016AF98(v12, type metadata accessor for ClientCommand);
LABEL_8:
    sub_100025F40(v15, &qword_1005D0940, &qword_1004D43A8);
    return 0;
  }

  sub_10016AF30(v15, v9, type metadata accessor for TaskHistory.Previous);
  v18 = *v9;
  v19 = *(v9 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100020EDC(v18);
    goto LABEL_8;
  }

  v20 = *v17;
  v21 = *(v17 + 2);
  v22 = static Action.__derived_enum_equals(_:_:)(v18, v20);
  sub_100020EDC(v20);
  sub_100020EDC(v18);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    sub_10016AF98(v15, type metadata accessor for TaskHistory.Previous);
    return 0;
  }

  v23 = v19 == v21;
LABEL_11:
  v28 = v23;
  sub_10016AF98(v15, type metadata accessor for TaskHistory.Previous);
  return v28;
}

uint64_t sub_10016B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F28, &qword_1004D6018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016B7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016B808(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 != 3)
  {
    return 1;
  }

  v14 = swift_projectBox();
  sub_10016AF30(v14, v13, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_10016AF98(v13, type metadata accessor for UntaggedResponse);
    return 1;
  }

  v41 = a2;
  v15 = *v13;
  v16 = *(v13 + 1);
  v17 = *(v13 + 2);
  v18 = *(v13 + 3);
  v19 = v13[32];
  v20 = *(v13 + 5);
  if (!v16)
  {
    v23 = *v13;
    v24 = 0;
    goto LABEL_8;
  }

  v39 = *(v13 + 2);
  v40 = v18;

  v21._countAndFlagsBits = v15;
  v21._object = v16;
  v44 = Tag.init(_:)(v21);
  v22 = v15;
  if (v44.is_nil)
  {
    v23 = v15;
    v24 = v16;
    v17 = v39;
LABEL_8:
    sub_100073984(v23, v24, v17);
LABEL_24:

    return 0;
  }

  value = v44.value;
  v36 = v22;
  v37 = v19;
  v38 = v20;
  v27 = *(v41 + 16);

  if (!v27)
  {
LABEL_23:

    sub_100073984(v36, v16, v39);
    goto LABEL_24;
  }

  connectionIdentifier = value.connectionIdentifier;
  v42 = HIDWORD(*&value);
  v28 = v41 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v29 = *(v5 + 72);
  while (1)
  {
    sub_10016AF30(v28, v10, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_10016AF98(v10, type metadata accessor for TaskHistory.Running);
LABEL_12:
    v28 += v29;
    if (!--v27)
    {
      goto LABEL_23;
    }
  }

  v30 = *v10;
  v31 = *(v10 + 1);
  v32 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_10016AF98(&v10[*(v32 + 64)], type metadata accessor for ClientCommand);
  if (v30 != connectionIdentifier || v31 != v42)
  {
    goto LABEL_12;
  }

  sub_10016AF30(v28, v7, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *v7;
    v35 = *(v7 + 1);
    sub_10016AF98(&v7[*(v32 + 64)], type metadata accessor for ClientCommand);

    sub_100073984(v36, v16, v39);

    if (v34 == connectionIdentifier)
    {
      if (v35 == v42)
      {
        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_10016AF98(v7, type metadata accessor for TaskHistory.Running);
  __break(1u);
  return result;
}

void sub_10016BC28(uint64_t a1)
{
  if (!qword_1005D1FE8)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1FE8);
    }
  }
}

void sub_10016BC90()
{
  if (!qword_1005D1FF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D1FF0);
    }
  }
}

uint64_t sub_10016BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10016BD9C(uint64_t a1)
{
  if (!qword_1005D20A0)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D20A0);
    }
  }
}

void sub_10016BE0C()
{
  if (!qword_1005D20A8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D20A8);
    }
  }
}

uint64_t sub_10016BE7C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  __chkstk_darwin(v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t sub_10016C124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v19.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v10 + 40);
  v7.i64[0] = v5;
  v19 = *(v10 + 24);
  *&v12 = vdupq_laneq_s64(v19, 1).u64[0];
  *(&v12 + 1) = v11;
  *v20 = vzip1q_s64(v7, v19);
  *&v20[16] = v12;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v20);
  v14 = __chkstk_darwin(v13);
  v16 = &v19.i8[-v15];
  (*(v6 + 16))(v9, a2, v5, v14);
  *v16 = v4;
  *v20 = v5;
  *&v20[8] = v19;
  *&v20[24] = v11;
  v17 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v20);
  (*(v6 + 32))(&v16[*(v17 + 52)], v9, v5);
  sub_1004A5CD4();
  return sub_1004A5CA4();
}

uint64_t sub_10016C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  *&v11 = v10;
  *(&v11 + 1) = v5;
  v18 = *(v9 + 32);
  v19 = v11;
  v20 = v18;
  v12 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v19);
  v13 = __chkstk_darwin(v12);
  v15 = &v18 - v14;
  (*(v6 + 16))(v8, a2, v5, v13);
  *v15 = v4;
  *&v19 = v10;
  *(&v19 + 1) = v5;
  v20 = v18;
  v16 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v19);
  (*(v6 + 32))(&v15[*(v16 + 52)], v8, v5);
  sub_1004A5CD4();
  return sub_1004A5CA4();
}

uint64_t sub_10016C45C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32[0] = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(255, v32);
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v32[0] = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v18 = sub_1004A5CD4();

  swift_getWitnessTable(&protocol conformance descriptor for [A], v18);
  sub_1004A5B54();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v20 = *(a3 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a3 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v17[*(v13 + 52)], a3);
    (*(v19 + 8))(v17, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a3);
}

uint64_t sub_10016C704@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v32[0] = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a6;
  v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(255, v32);
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v32[0] = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a1;
  v18 = sub_1004A5CD4();

  swift_getWitnessTable(&protocol conformance descriptor for [A], v18);
  sub_1004A5B54();

  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v20 = *(a4 - 8);
    v21 = 1;
    v22 = v26;
  }

  else
  {
    v20 = *(a4 - 8);
    v23 = v26;
    (*(v20 + 16))(v26, &v17[*(v13 + 52)], a4);
    (*(v19 + 8))(v17, v13);
    v21 = 0;
    v22 = v23;
  }

  return (*(v20 + 56))(v22, v21, 1, a4);
}

uint64_t sub_10016C9AC(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9[8] = v6;
  v9[9] = v7;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, v9);
  return sub_1004A5724() & 1;
}

uint64_t sub_10016CA34(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v9[8] = v6;
  v9[9] = v7;
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, v9);
  return sub_1004A5724() & 1;
}

uint64_t sub_10016CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v12 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Command(0, &v16);
  swift_getWitnessTable(byte_1004D9DA8, v12);
  if (sub_1004A5CE4())
  {
    v16 = a5;
    v17 = a6;
    v18 = a7;
    v19 = a8;
    v13 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap.Action(0, &v16);
    swift_getWitnessTable(byte_1004D9DD0, v13);
    v14 = sub_1004A5CE4();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_10016CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  v42 = v9;
  if (v9)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v9, 0);
    v12 = a8;
    v10 = _swiftEmptyArrayStorage;
    v13 = *(type metadata accessor for TaskHistory.Running(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v9;
    do
    {
      sub_10016D034(v14, a3, a4, a5, a6, a7, &v51, v12);
      v17 = v51;
      v18 = v52;
      v53 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_100091A08((v19 > 1), v20 + 1, 1);
        v12 = a8;
        v10 = v53;
      }

      v10[2] = v20 + 1;
      v21 = &v10[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v14 += v15;
      --v16;
      v8 = a2;
    }

    while (v16);
    v9 = v42;
  }

  v22 = *(v8 + 16);
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v53 = _swiftEmptyArrayStorage;
    v24 = v8;
    sub_100091A08(0, v22, 0);
    v25 = a8;
    v23 = v53;
    v26 = *(type metadata accessor for TaskHistory.Previous(0) - 8);
    v27 = v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v44 = *(v26 + 72);
    v41 = v22;
    v28 = v22;
    do
    {
      sub_10016D514(v27, a3, a4, a5, a6, a7, &v51, v25);
      v29 = v51;
      v30 = v52;
      v53 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_100091A08((v31 > 1), v32 + 1, 1);
        v25 = a8;
        v23 = v53;
      }

      v23[2] = v32 + 1;
      v33 = &v23[2 * v32];
      v33[4] = v29;
      v33[5] = v30;
      v27 += v44;
      --v28;
    }

    while (v28);
    v22 = v41;
    v9 = v42;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1004A6724(39);

  v51 = 0x20676E696E6E7572;
  v52 = 0xE900000000000028;
  v53 = v9;
  v54._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v54);

  v55._countAndFlagsBits = 2065709609;
  v55._object = 0xE400000000000000;
  sub_1004A5994(v55);
  v53 = v10;
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v34 = sub_1004A5614();
  v36 = v35;

  v56._countAndFlagsBits = v34;
  v56._object = v36;
  sub_1004A5994(v56);

  v57._countAndFlagsBits = 0x7472617473202C7DLL;
  v57._object = 0xED000028203A6465;
  sub_1004A5994(v57);
  v53 = v22;
  v58._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v58);

  v59._countAndFlagsBits = 2065709609;
  v59._object = 0xE400000000000000;
  sub_1004A5994(v59);
  v53 = v23;
  v37 = sub_1004A5614();
  v39 = v38;

  v60._countAndFlagsBits = v37;
  v60._object = v39;
  sub_1004A5994(v60);

  v61._countAndFlagsBits = 125;
  v61._object = 0xE100000000000000;
  sub_1004A5994(v61);
  return v51;
}

uint64_t sub_10016D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v48 = a6;
  v43 = a2;
  v44 = a3;
  v49 = a7;
  v47 = a8;
  v11 = sub_1004A6374();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016DA2C(a1, v20, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v20;
  v22 = *(v20 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_100020EDC(*(v20 + 1));
    v25 = v47;
    v24 = v48;
    v26 = sub_10016C704(v22, v44, a4, a5, v48, v47, v13);
    __chkstk_darwin(v26);
    *(&v43 - 4) = a4;
    *(&v43 - 3) = a5;
    *(&v43 - 2) = v24;
    *(&v43 - 1) = v25;
    v27 = v46;
    sub_10016BE7C(sub_10016DA94, (&v43 - 6), &type metadata for Never, &type metadata for String, v28, &v50);
    (*(v45 + 8))(v13, v27);
    if (v51)
    {
      v29 = v50;
    }

    else
    {
      v29 = 15932;
    }

    if (v51)
    {
      v30 = v51;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    v52 = v23;
    v50 = sub_1004A6CE4();
    v51 = v31;
    v54._countAndFlagsBits = 2304032;
    v54._object = 0xE300000000000000;
    sub_1004A5994(v54);
    v52 = v22;
    v55._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v55);

    v56._countAndFlagsBits = 8233;
    v56._object = 0xE200000000000000;
    sub_1004A5994(v56);
    v57._countAndFlagsBits = v29;
    v57._object = v30;
    sub_1004A5994(v57);

    v33 = v50;
    v34 = v51;
  }

  else
  {
    LODWORD(v45) = *(v20 + 1);
    LODWORD(v46) = *(v20 + 2);
    LODWORD(v44) = v23;
    v35 = v47;
    v36 = v48;
    v37 = sub_10016C45C(v46, v43, a4, a5, v48, v47, v17);
    __chkstk_darwin(v37);
    *(&v43 - 4) = a4;
    *(&v43 - 3) = a5;
    *(&v43 - 2) = v36;
    *(&v43 - 1) = v35;
    sub_10016BE7C(sub_10016DB00, (&v43 - 6), &type metadata for Never, &type metadata for String, v38, &v50);
    (*(v15 + 8))(v17, v14);
    if (v51)
    {
      v39 = v50;
    }

    else
    {
      v39 = 15932;
    }

    if (v51)
    {
      v40 = v51;
    }

    else
    {
      v40 = 0xE200000000000000;
    }

    v41 = *(sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0) + 64);
    v50 = 0;
    v51 = 0xE000000000000000;
    LOBYTE(v52) = v44;
    v53 = v45;
    sub_1004A6934();
    v58._countAndFlagsBits = 2304032;
    v58._object = 0xE300000000000000;
    sub_1004A5994(v58);
    v52 = v46;
    v59._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v59);

    v60._countAndFlagsBits = 8233;
    v60._object = 0xE200000000000000;
    sub_1004A5994(v60);
    v61._countAndFlagsBits = v39;
    v61._object = v40;
    sub_1004A5994(v61);

    v33 = v50;
    v34 = v51;
    result = sub_10016D98C(&v20[v41]);
  }

  v42 = v49;
  *v49 = v33;
  v42[1] = v34;
  return result;
}

uint64_t sub_10016D514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v43 = a6;
  v38 = a3;
  v39 = a2;
  v44 = a7;
  v42 = a8;
  v11 = sub_1004A6374();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1004A6374();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for TaskHistory.Previous(0);
  __chkstk_darwin(v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016DA2C(a1, v19, type metadata accessor for TaskHistory.Previous);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *(v19 + 2);
    sub_100020EDC(*v19);
    v22 = v42;
    v21 = v43;
    v23 = sub_10016C704(v20, v38, a4, a5, v43, v42, v13);
    __chkstk_darwin(v23);
    *(&v38 - 4) = a4;
    *(&v38 - 3) = a5;
    *(&v38 - 2) = v21;
    *(&v38 - 1) = v22;
    sub_10016BE7C(sub_10016E424, (&v38 - 6), &type metadata for Never, &type metadata for String, v24, &v45);
    (*(v41 + 8))(v13, v11);
    if (v46)
    {
      v25 = v45;
    }

    else
    {
      v25 = 15932;
    }

    if (v46)
    {
      v26 = v46;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    v45 = 9000;
    v46 = 0xE200000000000000;
    v47 = v20;
    v48._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v48);

    v49._countAndFlagsBits = 8233;
    v49._object = 0xE200000000000000;
    sub_1004A5994(v49);
    v50._countAndFlagsBits = v25;
    v50._object = v26;
    sub_1004A5994(v50);

    v28 = v45;
    v29 = v46;
  }

  else
  {
    v30 = *&v19[*(sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0) + 48)];
    v32 = v42;
    v31 = v43;
    v33 = sub_10016C45C(v30, v39, a4, a5, v43, v42, v16);
    __chkstk_darwin(v33);
    *(&v38 - 4) = a4;
    *(&v38 - 3) = a5;
    *(&v38 - 2) = v31;
    *(&v38 - 1) = v32;
    sub_10016BE7C(sub_10016E43C, (&v38 - 6), &type metadata for Never, &type metadata for String, v34, &v45);
    (*(v40 + 8))(v16, v14);
    if (v46)
    {
      v35 = v45;
    }

    else
    {
      v35 = 15932;
    }

    if (v46)
    {
      v36 = v46;
    }

    else
    {
      v36 = 0xE200000000000000;
    }

    v45 = 9000;
    v46 = 0xE200000000000000;
    v47 = v30;
    v51._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v51);

    v52._countAndFlagsBits = 8233;
    v52._object = 0xE200000000000000;
    sub_1004A5994(v52);
    v53._countAndFlagsBits = v35;
    v53._object = v36;
    sub_1004A5994(v53);

    v28 = v45;
    v29 = v46;
    result = sub_10016D98C(v19);
  }

  v37 = v44;
  *v44 = v28;
  v37[1] = v29;
  return result;
}

uint64_t sub_10016D98C(uint64_t a1)
{
  v2 = type metadata accessor for ClientCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016DA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016DAAC@<X0>(void *a2@<X8>)
{
  result = sub_1004A6CF4();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10016DB18@<X0>(void *a2@<X8>)
{
  result = sub_1004A6CF4();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_10016DB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10016DBC8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016DC48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_10016DDA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_10016DFCC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016E04C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_10016E1AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t sub_10016E3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10016E474(uint64_t a1, int a2)
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

uint64_t sub_10016E494(uint64_t result, int a2, int a3)
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

Swift::Int sub_10016E4F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_1004A6EF4(*&v3);
  return sub_1004A6F14();
}

void sub_10016E55C()
{
  v1 = *(v0 + 8);
  sub_1004A6EB4(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1004A6EF4(*&v2);
}

Swift::Int sub_10016E5A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_1004A6EF4(*&v4);
  return sub_1004A6F14();
}

unint64_t sub_10016E640()
{
  result = qword_1005D22D8;
  if (!qword_1005D22D8)
  {
    result = swift_getWitnessTable(byte_1004D9E80, &type metadata for TaskScheduling.IndexAndWeight, v0, v1);
    atomic_store(result, &qword_1005D22D8);
  }

  return result;
}

Swift::Int DisplayPart.PlainTextLineKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1004A6E94();
  sub_1004A6EB4(a1);
  return sub_1004A6F14();
}

unint64_t sub_10016E72C()
{
  result = qword_1005D22E0;
  if (!qword_1005D22E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Update.Kind, &type metadata for Update.Kind, v0, v1);
    atomic_store(result, &qword_1005D22E0);
  }

  return result;
}

unint64_t sub_10016E780(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10016E79C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10016E7F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_10016E858(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_10016E8A4(char *a1, unint64_t a2, int a3)
{
  LODWORD(v447) = a3;
  v450 = a1;
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v4 - 8);
  v429 = &v418 - v5;
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v6 - 8);
  v430 = &v418 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v443 = (&v418 - v9);
  v444.i64[0] = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v444.i64[0]);
  v428 = &v418 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v441 = (&v418 - v12);
  __chkstk_darwin(v13);
  v426 = &v418 - v14;
  __chkstk_darwin(v15);
  v431 = &v418 - v16;
  __chkstk_darwin(v17);
  v427 = &v418 - v18;
  __chkstk_darwin(v19);
  v446 = (&v418 - v20);
  __chkstk_darwin(v21);
  v425 = &v418 - v22;
  __chkstk_darwin(v23);
  v440 = (&v418 - v24);
  v25 = sub_1004A4944();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v439 = &v418 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v445 = &v418 - v29;
  __chkstk_darwin(v30);
  v437 = &v418 - v31;
  __chkstk_darwin(v32);
  v435 = &v418 - v33;
  __chkstk_darwin(v34);
  v442 = &v418 - v35;
  __chkstk_darwin(v36);
  v434 = &v418 - v37;
  __chkstk_darwin(v38);
  v436 = &v418 - v39;
  __chkstk_darwin(v40);
  v438 = &v418 - v41;
  __chkstk_darwin(v42);
  v424 = &v418 - v43;
  __chkstk_darwin(v44);
  v433 = &v418 - v45;
  __chkstk_darwin(v46);
  v432 = &v418 - v47;
  __chkstk_darwin(v48);
  v422 = &v418 - v49;
  __chkstk_darwin(v50);
  v421 = &v418 - v51;
  __chkstk_darwin(v52);
  v419 = &v418 - v53;
  __chkstk_darwin(v54);
  v423 = &v418 - v55;
  __chkstk_darwin(v56);
  v58 = &v418 - v57;
  __chkstk_darwin(v59);
  v420 = &v418 - v60;
  __chkstk_darwin(v61);
  v63 = &v418 - v62;
  __chkstk_darwin(v64);
  v66 = &v418 - v65;
  __chkstk_darwin(v67);
  v69 = &v418 - v68;
  __chkstk_darwin(v70);
  v72 = &v418 - v71;
  __chkstk_darwin(v73);
  v75 = &v418 - v74;
  __chkstk_darwin(v76);
  v78 = &v418 - v77;
  v79 = sub_1004A4904();
  v448 = *(v79 - 8);
  v449 = v79;
  __chkstk_darwin(v79);
  v450 = &v418 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A4914();
  if (v447)
  {
    v447 = v25;
    v418 = v26;
    v82 = v445;
    v81 = v446;
    switch((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
    {
      case 1uLL:
        v234 = tracingSignposter.unsafeMutableAddressor();
        v235 = v418;
        v236 = v447;
        (*(v418 + 16))(v72, v234, v447);
        v237 = sub_1004A4934();
        v238 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v239 = swift_slowAlloc();
          *v239 = 0;
          v91 = v450;
          v240 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v237, v238, v240, "PersistenceEvent.update.credentials", "", v239, 2u);

          (*(v235 + 8))(v72, v236);
          goto LABEL_9;
        }

        (*(v235 + 8))(v72, v236);
        goto LABEL_99;
      case 2uLL:
        v190 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v191 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v192 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v193 = tracingSignposter.unsafeMutableAddressor();
        v194 = v418;
        v195 = v420;
        v196 = v447;
        (*(v418 + 16))(v420, v193, v447);

        v197 = sub_1004A4934();
        v198 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {

          goto LABEL_84;
        }

        v199 = swift_slowAlloc();
        *v199 = 67109632;
        *(v199 + 4) = v190;
        *(v199 + 8) = 256;
        v200 = 0x403010505uLL >> (8 * v191);
        if (v191 >= 5)
        {
          LOBYTE(v200) = 5;
        }

        *(v199 + 10) = v200;
        *(v199 + 11) = 2048;
        v91 = v450;
        if (v192)
        {
          v201 = *(v192 + 16);
        }

        else
        {
          v201 = 0;
        }

        *(v199 + 13) = v201;
        v416 = v199;

        v417 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v197, v198, v417, "PersistenceEvent.update.sync", "%u %hhu %ld", v416, 0x15u);

        goto LABEL_103;
      case 3uLL:
        v218 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v219 = tracingSignposter.unsafeMutableAddressor();
        v220 = v418;
        v221 = v447;
        (*(v418 + 16))(v58, v219, v447);
        v222 = sub_1004A4934();
        v223 = sub_1004A6154();
        v224 = sub_1004A6354();
        v91 = v450;
        if (v224)
        {
          v225 = swift_slowAlloc();
          *v225 = 67109120;
          *(v225 + 4) = v218;
          v226 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v222, v223, v226, "PersistenceEvent.update.sync", "%u", v225, 8u);
        }

        (*(v220 + 8))(v58, v221);
        goto LABEL_9;
      case 4uLL:
        v147 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v148 = tracingSignposter.unsafeMutableAddressor();
        v149 = v418;
        v150 = v447;
        (*(v418 + 16))(v63, v148, v447);

        v151 = sub_1004A4934();
        v152 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v153 = swift_slowAlloc();
          *v153 = 134217984;
          *(v153 + 4) = *(v147 + 16);
          swift_bridgeObjectRelease_n();
          v154 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v151, v152, v154, "PersistenceEvent.update.setLocalMailboxes", "count %ld", v153, 0xCu);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v101 = v448;
        v385 = v449;
        (*(v149 + 8))(v63, v150);
        v100 = v385;
        v91 = v450;
        return (*(v101 + 8))(v91, v100);
      case 5uLL:
        v272 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v273 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

        v274 = tracingSignposter.unsafeMutableAddressor();
        v194 = v418;
        v195 = v423;
        v196 = v447;
        (*(v418 + 16))(v423, v274, v447);

        v275 = sub_1004A4934();
        v276 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v277 = swift_slowAlloc();
          *v277 = 134218240;
          *(v277 + 4) = *(v272 + 16);
          *(v277 + 12) = 2048;
          *(v277 + 14) = *(v273 + 16);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v278 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v275, v276, v278, "PersistenceEvent.update.setUserVisibleMailboxes", "%ld %ld", v277, 0x16u);

LABEL_103:
          v101 = v448;
          v386 = v449;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
LABEL_84:
          v101 = v448;
          v386 = v449;
          v91 = v450;
        }

        (*(v194 + 8))(v195, v196);
        v100 = v386;
        return (*(v101 + 8))(v91, v100);
      case 6uLL:
        v319 = tracingSignposter.unsafeMutableAddressor();
        v320 = v418;
        v321 = v419;
        v322 = v447;
        (*(v418 + 16))(v419, v319, v447);
        v323 = sub_1004A4934();
        v324 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v325 = swift_slowAlloc();
          *v325 = 0;
          v91 = v450;
          v326 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v323, v324, v326, "PersistenceEvent.update.temporarilyGrowWindowOfInterest", "", v325, 2u);

          (*(v320 + 8))(v321, v322);
          goto LABEL_9;
        }

        (*(v320 + 8))(v321, v322);
        goto LABEL_99;
      case 7uLL:
        v227 = tracingSignposter.unsafeMutableAddressor();
        v228 = v418;
        v229 = v447;
        (*(v418 + 16))(v66, v227, v447);
        v230 = sub_1004A4934();
        v231 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v232 = swift_slowAlloc();
          *v232 = 0;
          v91 = v450;
          v233 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v230, v231, v233, "PersistenceEvent.update.pushRegistrationInfo", "", v232, 2u);

          (*(v228 + 8))(v66, v229);
          goto LABEL_9;
        }

        (*(v228 + 8))(v66, v229);
        goto LABEL_99;
      case 8uLL:
        v357 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v358 = tracingSignposter.unsafeMutableAddressor();
        v359 = v418;
        v360 = v433;
        v361 = v447;
        (*(v418 + 16))(v433, v358, v447);
        swift_bridgeObjectRetain_n();
        v362 = sub_1004A4934();
        v363 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v364 = swift_slowAlloc();
          v452 = swift_slowAlloc();
          *v364 = 136315394;

          v366 = OpaqueMailboxID.description.getter(v365);
          v368 = v367;

          v369 = sub_10015BA6C(v366, v368, &v452);

          *(v364 + 4) = v369;
          *(v364 + 12) = 2082;
          v454 = v357;
          sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
          v370 = MessageIdentifierRange.debugDescription.getter();
          v372 = sub_10015BA6C(v370, v371, &v452);

          *(v364 + 14) = v372;
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v373 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v362, v363, v373, "PersistenceEvent.update.didFindWindowOfInterest", "mailbox %s, UID range %{public}s", v364, 0x16u);
          swift_arrayDestroy();

          (*(v359 + 8))(v433, v361);
          goto LABEL_9;
        }

        swift_bridgeObjectRelease_n();
        (*(v359 + 8))(v360, v361);
        goto LABEL_99;
      case 9uLL:
        v170 = sub_10000C9C0(&qword_1005CDA40, &qword_1004CF7A0);
        v171 = swift_projectBox();
        v172 = *(v171 + *(v170 + 64));
        v173 = v440;
        sub_10000E268(v171 + *(v170 + 48), v440, &unk_1005D91B0, &unk_1004CF400);

        v174 = tracingSignposter.unsafeMutableAddressor();
        v175 = v418;
        v176 = v424;
        v177 = v447;
        (*(v418 + 16))(v424, v174, v447);
        v178 = v425;
        sub_10000E268(v173, v425, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v179 = sub_1004A4934();
        LODWORD(v446) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v180 = swift_slowAlloc();
          v445 = v172;
          v181 = v180;
          v182 = swift_slowAlloc();
          v452 = v182;
          *v181 = 136315650;

          v184 = OpaqueMailboxID.description.getter(v183);
          v186 = v185;

          v187 = sub_10015BA6C(v184, v186, &v452);

          *(v181 + 4) = v187;
          *(v181 + 12) = 2048;
          v188 = MessageIdentifierSet.count.getter();
          sub_100025F40(v178, &unk_1005D91B0, &unk_1004CF400);
          *(v181 + 14) = v188;
          *(v181 + 22) = 2048;
          *(v181 + 24) = v445;
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v189 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v179, v446, v189, "PersistenceEvent.update.didFindMessageBatches", "mailbox %s, UID range count %ld, message count: %ld", v181, 0x20u);
          sub_1000197E0(v182);

          (*(v175 + 8))(v176, v177);
          v146 = v440;
          goto LABEL_64;
        }

        sub_100025F40(v178, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v175 + 8))(v176, v177);
        v384 = v173;
        goto LABEL_88;
      case 0xAuLL:
        v332 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
        v333 = swift_projectBox();
        v445 = *(v333 + 8);
        v334 = *(v332 + 64);
        sub_10000E268(v333 + *(v332 + 48), v81, &unk_1005D91B0, &unk_1004CF400);
        v335 = v81;
        v336 = v443;
        sub_10000E268(v333 + v334, v443, &qword_1005CD1D0, &unk_1004CF2C0);

        v337 = tracingSignposter.unsafeMutableAddressor();
        v338 = v418;
        v339 = v438;
        (*(v418 + 16))(v438, v337, v447);
        v340 = v335;
        v341 = v427;
        sub_10000E268(v340, v427, &unk_1005D91B0, &unk_1004CF400);
        v342 = v430;
        sub_10000E268(v336, v430, &qword_1005CD1D0, &unk_1004CF2C0);
        swift_bridgeObjectRetain_n();
        v343 = sub_1004A4934();
        v344 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v345 = swift_slowAlloc();
          LODWORD(v442) = v344;
          v346 = v345;
          v347 = swift_slowAlloc();
          v452 = v347;
          *v346 = 136315650;

          v349 = OpaqueMailboxID.description.getter(v348);
          v351 = v350;

          v352 = sub_10015BA6C(v349, v351, &v452);

          *(v346 + 4) = v352;
          *(v346 + 12) = 2048;
          v353 = MessageIdentifierSet.count.getter();
          sub_100025F40(v341, &unk_1005D91B0, &unk_1004CF400);
          *(v346 + 14) = v353;
          *(v346 + 22) = 2048;
          v354 = MessageIdentifierSet.count.getter();
          sub_100025F40(v342, &qword_1005CD1D0, &unk_1004CF2C0);
          *(v346 + 24) = v354;
          swift_bridgeObjectRelease_n();
          v355 = v450;
          v356 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v343, v442, v356, "PersistenceEvent.update.didFindMessageUIDs", "mailbox %s, UID count %ld range UID count %ld)", v346, 0x20u);
          sub_1000197E0(v347);

          (*(v338 + 8))(v438, v447);
          v91 = v355;
          sub_100025F40(v443, &qword_1005CD1D0, &unk_1004CF2C0);
          v146 = v446;
          goto LABEL_64;
        }

        sub_100025F40(v342, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025F40(v341, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v338 + 8))(v339, v447);
        sub_100025F40(v336, &qword_1005CD1D0, &unk_1004CF2C0);
        v384 = v446;
        goto LABEL_88;
      case 0xBuLL:
        v125 = sub_10000C9C0(&qword_1005CDC20, &qword_1004CF9E8);
        v126 = swift_projectBox();
        v127 = *(v126 + *(v125 + 64));
        v128 = v431;
        sub_10000E268(v126 + *(v125 + 48), v431, &unk_1005D91B0, &unk_1004CF400);

        v129 = tracingSignposter.unsafeMutableAddressor();
        v130 = v418;
        v131 = v436;
        v132 = v447;
        (*(v418 + 16))(v436, v129, v447);
        v133 = v426;
        sub_10000E268(v128, v426, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v134 = sub_1004A4934();
        LODWORD(v446) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v135 = swift_slowAlloc();
          v445 = v127;
          v136 = v135;
          v137 = swift_slowAlloc();
          v452 = v137;
          *v136 = 136315650;

          v139 = OpaqueMailboxID.description.getter(v138);
          v141 = v140;

          v142 = sub_10015BA6C(v139, v141, &v452);

          *(v136 + 4) = v142;
          v143 = v128;
          *(v136 + 12) = 2048;
          v144 = MessageIdentifierSet.count.getter();
          sub_100025F40(v133, &unk_1005D91B0, &unk_1004CF400);
          *(v136 + 14) = v144;
          *(v136 + 22) = 2048;
          *(v136 + 24) = v445;
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v145 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v134, v446, v145, "PersistenceEvent.update.didFindNewestMessageUIDs", "mailbox %s, UID count %ld, limit %ld", v136, 0x20u);
          sub_1000197E0(v137);

          (*(v130 + 8))(v436, v132);
          v146 = v143;
          goto LABEL_64;
        }

        sub_100025F40(v133, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v130 + 8))(v131, v132);
        v384 = v128;
        goto LABEL_88;
      case 0xCuLL:
        v155 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v156 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v157 = tracingSignposter.unsafeMutableAddressor();
        v112 = v418;
        v113 = v434;
        v114 = v447;
        (*(v418 + 16))(v434, v157, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1004A4934();
        v158 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_74;
        }

        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        LODWORD(v446) = v158;
        v161 = v160;
        v452 = v160;
        *v159 = 136315650;

        v163 = OpaqueMailboxID.description.getter(v162);
        v165 = v164;

        v166 = sub_10015BA6C(v163, v165, &v452);

        *(v159 + 4) = v166;
        *(v159 + 12) = 256;
        if (v155)
        {
          v167 = 2;
        }

        else
        {
          v167 = 1;
        }

        *(v159 + 14) = v167;
        *(v159 + 15) = 2048;
        v168 = *(v156 + 16);

        *(v159 + 17) = v168;

        swift_bridgeObjectRelease_n();
        v91 = v450;
        v169 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v446, v169, "PersistenceEvent.update.downloadSectionsInMessages", "mailbox %s, downloadPass %hhu, messageCount %ld", v159, 0x19u);
        sub_1000197E0(v161);

        (*(v112 + 8))(v434, v114);
        goto LABEL_9;
      case 0xDuLL:
        v292 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v293 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v294 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x1C);
        v295 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v296 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v297 = tracingSignposter.unsafeMutableAddressor();
        v298 = v418;
        v299 = v442;
        v300 = v447;
        (*(v418 + 16))(v442, v297, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v301 = sub_1004A4934();
        v302 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          (*(v298 + 8))(v299, v300);
          goto LABEL_99;
        }

        v444.i32[0] = v302;
        v446 = v301;
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v454 = v304;
        *v303 = 141559043;
        *(v303 + 4) = 0x786F626C69616DLL;
        *(v303 + 12) = 2085;
        v452 = v292;
        v453 = v293;

        v305 = sub_1004A5824();
        v307 = sub_10015BA6C(v305, v306, &v454);

        *(v303 + 14) = v307;
        *(v303 + 22) = 256;
        if (v294)
        {
          v308 = 2;
        }

        else
        {
          v308 = 1;
        }

        *(v303 + 24) = v308;
        *(v303 + 25) = 1024;
        *(v303 + 27) = v295;
        *(v303 + 31) = 2080;
        v309 = *(v296 + 2);
        v310 = v296;
        v311 = _swiftEmptyArrayStorage;
        v445 = v310;
        if (v309)
        {
          v441 = v304;
          v443 = v292;
          v452 = _swiftEmptyArrayStorage;
          sub_100091A08(0, v309, 0);
          v311 = v452;
          v312 = (v310 + 32);
          do
          {
            v451 = *v312;

            v313 = sub_1004A5804();
            v315 = v314;
            v452 = v311;
            v317 = v311[2];
            v316 = v311[3];
            if (v317 >= v316 >> 1)
            {
              sub_100091A08((v316 > 1), v317 + 1, 1);
              v311 = v452;
            }

            v311[2] = v317 + 1;
            v318 = &v311[2 * v317];
            v318[4] = v313;
            v318[5] = v315;
            ++v312;
            --v309;
          }

          while (v309);
        }

        v452 = v311;
        sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
        sub_100031CDC();
        v410 = sub_1004A5614();
        v412 = v411;

        v413 = sub_10015BA6C(v410, v412, &v454);

        *(v303 + 33) = v413;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v91 = v450;
        v414 = sub_1004A48F4();
        v415 = v446;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v446, v444.i8[0], v414, "PersistenceEvent.update.downloadSectionData", "mailbox %{sensitive,mask.mailbox}s, downloadPass %hhu, UID %u, sections, %s", v303, 0x29u);
        swift_arrayDestroy();

        (*(v418 + 8))(v442, v447);
        goto LABEL_9;
      case 0xEuLL:
        v107 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v108 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v109 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v110 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v111 = tracingSignposter.unsafeMutableAddressor();
        v112 = v418;
        v113 = v435;
        v114 = v447;
        (*(v418 + 16))(v435, v111, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1004A4934();
        v116 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_74;
        }

        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        LODWORD(v446) = v116;
        v119 = v118;
        v454 = v118;
        *v117 = 141558787;
        *(v117 + 4) = 0x786F626C69616DLL;
        *(v117 + 12) = 2085;
        v452 = v107;
        v453 = v108;

        v120 = sub_1004A5824();
        v122 = sub_10015BA6C(v120, v121, &v454);

        *(v117 + 14) = v122;
        *(v117 + 22) = 2048;
        v123 = *(v109 + 16);

        *(v117 + 24) = v123;
        *(v117 + 32) = 1024;
        *(v117 + 34) = v110;
        swift_bridgeObjectRelease_n();

        v91 = v450;
        v124 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v446, v124, "PersistenceEvent.update.uploadMessages", "mailbox %{sensitive,mask.mailbox}s, count %ld, isLast: %{BOOL}d", v117, 0x26u);
        sub_1000197E0(v119);

        (*(v112 + 8))(v435, v114);
        goto LABEL_9;
      case 0xFuLL:
        v202 = sub_10000C9C0(&qword_1005D22F0, &unk_1004EFDE0);
        v203 = swift_projectBox();
        v204 = *v203;
        v205 = *(v203 + 8);
        v206 = *(v203 + 16);
        v207 = *(v203 + 24);
        v208 = *(v203 + 36);
        v209 = *(v203 + 37);
        LODWORD(v446) = *(v203 + 38);
        LODWORD(v445) = *(v203 + 40);
        v210 = *(v202 + 80);
        v211 = (v203 + *(v202 + 96));
        v212.i32[0] = *(v203 + 32);
        v444 = vmovl_u8(v212);
        v213 = *v211;
        v214 = v211[1];
        v215 = v429;
        v216 = sub_10000E268(v203 + v210, v429, &qword_1005D0F20, &qword_1004E9390);
        v447 = &v418;
        __chkstk_darwin(v216);
        v217 = v450;
        *(&v418 - 8) = v450;
        *(&v418 - 7) = v204;
        *(&v418 - 12) = v205;
        v91 = v217;
        *(&v418 - 11) = vuzp1_s8((v444.i64[0] & 0xFF01FF01FF01FF01), (v444.i64[0] & 0xFF01FF01FF01FF01)).u32[0];
        *(&v418 - 40) = v208 & 1;
        *(&v418 - 39) = v209 & 1;
        *(&v418 - 19) = v446;
        *(&v418 - 36) = v445 & 1;
        *(&v418 - 4) = v215;
        *(&v418 - 3) = v213;
        *(&v418 - 2) = v214;

        sub_100014CEC(v206, v207);
        sub_100014CEC(v213, v214);
        sub_100172534(sub_1001735CC, (&v418 - 10), v206, v207);

        sub_100014D40(v213, v214);
        sub_100014D40(v206, v207);
        sub_100025F40(v215, &qword_1005D0F20, &qword_1004E9390);
        goto LABEL_9;
      case 0x10uLL:
        v103 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v104 = *(v103 + 16);
        if (v104)
        {
          v105 = *(v103 + 32);
          v106 = *(v103 + 32 * v104);
        }

        else
        {
          v106 = 0;
          v105 = 0;
        }

        v113 = v437;
        LODWORD(v446) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v387 = tracingSignposter.unsafeMutableAddressor();
        v112 = v418;
        v114 = v447;
        (*(v418 + 16))(v113, v387, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v388 = sub_1004A4934();
        LODWORD(v445) = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_97;
        }

        v389 = swift_slowAlloc();
        v390 = swift_slowAlloc();
        v444.i32[0] = v106;
        v391 = v390;
        v452 = v390;
        *v389 = 136316162;

        v393 = OpaqueMailboxID.description.getter(v392);
        v395 = v394;

        v396 = sub_10015BA6C(v393, v395, &v452);

        *(v389 + 4) = v396;
        *(v389 + 12) = 2048;
        v397 = *(v103 + 16);

        *(v389 + 14) = v397;
        *(v389 + 22) = 1024;
        *(v389 + 24) = v105;
        *(v389 + 28) = 1024;
        *(v389 + 30) = v444.i32[0];
        *(v389 + 34) = 1024;
        *(v389 + 36) = v446;
        swift_bridgeObjectRelease_n();

        v91 = v450;
        v398 = sub_1004A48F4();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v388, v445, v398, "PersistenceEvent.update.uploadChangedFlags", "mailbox %s, message count %ld, {%u %u}, isLast: %{BOOL}d", v389, 0x28u);
        sub_1000197E0(v391);

        (*(v112 + 8))(v437, v114);
        goto LABEL_9;
      case 0x11uLL:
        v241 = sub_10000C9C0(&qword_1005D22E8, &unk_1004DA480);
        v242 = swift_projectBox();
        v243 = v441;
        sub_10000E268(v242 + *(v241 + 48), v441, &unk_1005D91B0, &unk_1004CF400);

        v244 = tracingSignposter.unsafeMutableAddressor();
        v245 = v418;
        v246 = v82;
        v247 = v82;
        v248 = v447;
        (*(v418 + 16))(v246, v244, v447);
        v249 = v428;
        sub_10000E268(v243, v428, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRetain_n();
        v250 = sub_1004A4934();
        v251 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v252 = swift_slowAlloc();
          LODWORD(v446) = v251;
          v253 = v252;
          v254 = swift_slowAlloc();
          v452 = v254;
          *v253 = 136315394;

          v256 = OpaqueMailboxID.description.getter(v255);
          v258 = v257;

          v259 = sub_10015BA6C(v256, v258, &v452);

          *(v253 + 4) = v259;
          *(v253 + 12) = 2048;
          v260 = MessageIdentifierSet.count.getter();
          sub_100025F40(v249, &unk_1005D91B0, &unk_1004CF400);
          *(v253 + 14) = v260;
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v261 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v250, v446, v261, "PersistenceEvent.update.uploadMessagesWithChangedFlagAfterCopy", "mailbox %s, message count %ld", v253, 0x16u);
          sub_1000197E0(v254);

          (*(v245 + 8))(v247, v248);
          v146 = v441;
LABEL_64:
          sub_100025F40(v146, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_9;
        }

        sub_100025F40(v249, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();

        (*(v245 + 8))(v247, v248);
        v384 = v243;
LABEL_88:
        sub_100025F40(v384, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_99;
      case 0x12uLL:
        v327 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v328 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v329 = *(v328 + 16);
        if (v329)
        {
          v330 = *(v328 + 36);
          v331 = *(v328 + 40 * v329 - 4);
        }

        else
        {
          v331 = 0;
          v330 = 0;
        }

        v113 = v439;
        v399 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        LODWORD(v446) = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v400 = tracingSignposter.unsafeMutableAddressor();
        v112 = v418;
        v114 = v447;
        (*(v418 + 16))(v113, v400, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v388 = sub_1004A4934();
        LODWORD(v445) = sub_1004A6154();
        if (sub_1004A6354())
        {
          v401 = swift_slowAlloc();
          v402 = swift_slowAlloc();
          v444.i32[0] = v331;
          v403 = v330;
          v404 = v402;
          v454 = v402;
          *v401 = 141559299;
          *(v401 + 4) = 0x786F626C69616DLL;
          *(v401 + 12) = 2085;
          v452 = v327;
          v453 = v399;

          v405 = sub_1004A5824();
          v407 = sub_10015BA6C(v405, v406, &v454);

          *(v401 + 14) = v407;
          *(v401 + 22) = 2048;
          v408 = *(v328 + 16);

          *(v401 + 24) = v408;
          *(v401 + 32) = 1024;
          *(v401 + 34) = v403;
          *(v401 + 38) = 1024;
          *(v401 + 40) = v444.i32[0];
          *(v401 + 44) = 1024;
          *(v401 + 46) = v446;
          swift_bridgeObjectRelease_n();

          v91 = v450;
          v409 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v388, v445, v409, "PersistenceEvent.update.moveOrCopyMessages", "mailbox %{sensitive,mask.mailbox}s, moves count %ld, {%u %u}, isLast: %{BOOL}d", v401, 0x32u);
          sub_1000197E0(v404);

          (*(v112 + 8))(v439, v114);
          goto LABEL_9;
        }

LABEL_97:

        swift_bridgeObjectRelease_n();
        goto LABEL_98;
      case 0x13uLL:
        v381 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v382 = tracingSignposter.unsafeMutableAddressor();
        v264 = v418;
        v265 = v421;
        v266 = v447;
        (*(v418 + 16))(v421, v382, v447);

        v267 = sub_1004A4934();
        v268 = sub_1004A6154();
        if ((sub_1004A6354() & 1) == 0)
        {
          goto LABEL_72;
        }

        v269 = swift_slowAlloc();
        *v269 = 134217984;
        *(v269 + 4) = *(v381 + 16);
        swift_bridgeObjectRelease_n();
        v91 = v450;
        v270 = sub_1004A48F4();
        v271 = "PersistenceEvent.update.setSearchRequests";
        goto LABEL_71;
      case 0x14uLL:
        v262 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

        v263 = tracingSignposter.unsafeMutableAddressor();
        v264 = v418;
        v265 = v422;
        v266 = v447;
        (*(v418 + 16))(v422, v263, v447);

        v267 = sub_1004A4934();
        v268 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v269 = swift_slowAlloc();
          *v269 = 134217984;
          *(v269 + 4) = *(v262 + 16);
          swift_bridgeObjectRelease_n();
          v91 = v450;
          v270 = sub_1004A48F4();
          v271 = "PersistenceEvent.update.setDownloadRequests";
LABEL_71:
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v267, v268, v270, v271, "count %ld", v269, 0xCu);

          v101 = v448;
          v383 = v449;
        }

        else
        {
LABEL_72:

          swift_bridgeObjectRelease_n();
          v101 = v448;
          v383 = v449;
          v91 = v450;
        }

        (*(v264 + 8))(v265, v266);
        v100 = v383;
        return (*(v101 + 8))(v91, v100);
      case 0x15uLL:
        v279 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v280 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v281 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v282 = tracingSignposter.unsafeMutableAddressor();
        v112 = v418;
        v113 = v432;
        v114 = v447;
        (*(v418 + 16))(v432, v282, v447);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v115 = sub_1004A4934();
        v283 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v284 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          LODWORD(v446) = v283;
          v286 = v285;
          v454 = v285;
          *v284 = 141558531;
          *(v284 + 4) = 0x786F626C69616DLL;
          *(v284 + 12) = 2085;
          v452 = v279;
          v453 = v280;

          v287 = sub_1004A5824();
          v289 = sub_10015BA6C(v287, v288, &v454);

          *(v284 + 14) = v289;
          *(v284 + 22) = 2048;
          v290 = *(v281 + 16);

          *(v284 + 24) = v290;

          swift_bridgeObjectRelease_n();
          v91 = v450;
          v291 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v115, v446, v291, "PersistenceEvent.update.setUIDsForDownloadRequests", "mailbox %{sensitive,mask.mailbox}s, UID count %ld", v284, 0x20u);
          sub_1000197E0(v286);

          (*(v112 + 8))(v432, v114);
          goto LABEL_9;
        }

LABEL_74:

        swift_bridgeObjectRelease_n();
LABEL_98:
        swift_bridgeObjectRelease_n();
        (*(v112 + 8))(v113, v114);
        goto LABEL_99;
      case 0x16uLL:
        v374 = tracingSignposter.unsafeMutableAddressor();
        v375 = v418;
        v376 = v447;
        (*(v418 + 16))(v69, v374, v447);
        v377 = sub_1004A4934();
        v378 = sub_1004A6154();
        if (sub_1004A6354())
        {
          v379 = swift_slowAlloc();
          *v379 = 0;
          v91 = v450;
          v380 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v377, v378, v380, "PersistenceEvent.update.credentialsDidChange", "", v379, 2u);

          (*(v375 + 8))(v69, v376);
          goto LABEL_9;
        }

        (*(v375 + 8))(v69, v376);
LABEL_99:
        v101 = v448;
        v100 = v449;
        v91 = v450;
        break;
      default:
        v83 = *(a2 + 16);
        v84 = *(a2 + 17);
        v85 = *(a2 + 18);
        v86 = *(a2 + 24);
        v87 = tracingSignposter.unsafeMutableAddressor();
        (*(v418 + 16))(v75, v87, v447);
        v88 = sub_1004A4934();
        v89 = sub_1004A6154();
        v90 = sub_1004A6354();
        v91 = v450;
        if (v90)
        {
          v92 = swift_slowAlloc();
          *v92 = 16778240;
          *(v92 + 4) = v83 + 1;
          *(v92 + 5) = 1024;
          *(v92 + 7) = v84 ^ 1;
          *(v92 + 11) = 1024;
          *(v92 + 13) = v85;
          *(v92 + 17) = 2048;
          *(v92 + 19) = v86;
          v93 = sub_1004A48F4();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v88, v89, v93, "PersistenceEvent.update.environmentDidChange", "power %hhu, app visible %{BOOL}d, locked %{BOOL}d, thermals %ld", v92, 0x1Bu);
        }

        (*(v418 + 8))(v75, v447);
        goto LABEL_9;
    }
  }

  else
  {
    v94 = tracingSignposter.unsafeMutableAddressor();
    (*(v26 + 16))(v78, v94, v25);
    v95 = sub_1004A4934();
    v96 = sub_1004A6154();
    v97 = sub_1004A6354();
    v91 = v450;
    if (v97)
    {
      v98 = swift_slowAlloc();
      *v98 = 67109120;
      *(v98 + 4) = a2;
      v99 = sub_1004A48F4();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, v96, v99, "PersistenceEvent.actionDidComplete", "ID %u", v98, 8u);
    }

    (*(v26 + 8))(v78, v25);
LABEL_9:
    v101 = v448;
    v100 = v449;
  }

  return (*(v101 + 8))(v91, v100);
}