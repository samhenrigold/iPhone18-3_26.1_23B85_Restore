uint64_t sub_8F110(uint64_t a1)
{
  if (!*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  sub_93A74();

  v3 = sub_102188();
  sub_81288(v3);
  sub_93B94();
  v6 = v6 && v5 == v1;
  if (v6)
  {
  }

  else
  {
    sub_93AB0(v4);
    sub_93DFC();
    if ((v1 & 1) == 0)
    {

      return 2;
    }
  }

  sub_1023F8();
  sub_94004();
  if (v1 == 1 || v1 == 13)
  {
    return 1;
  }

  if (v1 == 4)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_8F1B8(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 0;
  }

  sub_100914();
  sub_93C14();
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_8F204(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 6;
  }

  sub_100914();
  sub_93C14();
  if (v3)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_8F248(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task);
  if (!v3)
  {
    return 0;
  }

  sub_93D2C();

  v4 = sub_102188();
  sub_81288(v4);
  sub_93F64();
  v6 = v6 && v5 == v2;
  if (v6)
  {
  }

  else
  {
    sub_375CC();
    sub_16AE54();
    sub_93E14();
    if ((v2 & 1) == 0)
    {

      return 0;
    }
  }

  v7 = sub_1023F8();
  sub_8139C(v7);
  sub_93B6C();
  if (v6 && v8 == 0xE600000000000000)
  {
  }

  else
  {
    sub_93BC4();
    sub_93E2C(v10, v11, v12);
    sub_93E14();
  }

  sub_104B2C();
  sub_93FD0();
  sub_93E14();
  sub_8BC30(v3);
  v14 = v13;

  return v14;
}

uint64_t sub_8F458()
{
  if (!*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarCommandsNLv4Intent_task))
  {
    return 2;
  }

  v1 = sub_1023F8();
  sub_8139C(v1);
  sub_93B94();
  v4 = v4 && v3 == 0xEB00000000647261;
  if (v4)
  {
  }

  else
  {
    sub_93AB0(v2);
    sub_93DFC();
  }

  return 1;
}

uint64_t sub_8F558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F5BC(uint64_t a1)
{
  v2 = sub_5758(&qword_1E9190, &qword_172AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8F650(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_16AC14();

    if (v9)
    {

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_16AC04();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_8FB48(v7, result + 1);
        if (v17[3] <= v17[2])
        {
          sub_8FD24();
        }

        v18 = v8;
        sub_902DC(v18, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    sub_16AAC4(*(v6 + 40));
    sub_93DE4();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_90574(v18, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_16AAD4();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v14);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

void sub_8F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_94158();
  v56 = v33;
  v35 = v34;
  v37 = v36;
  v57 = v38;
  v39 = *v32;
  sub_16AF14();
  v40 = v35(v37);
  sub_93C9C(v40, v41, v42, v43, v44);

  sub_16AF54();
  sub_93DE4();
  v47 = ~v46;
  while (1)
  {
    v48 = v45 & v47;
    if (((1 << (v45 & v47)) & *(v39 + 56 + (((v45 & v47) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *v32;
      v56(v37, v48, isUniquelyReferenced_nonNull_native);
      *v32 = v58;
      goto LABEL_12;
    }

    v49 = v35(*(*(v39 + 48) + v48));
    v51 = v50;
    if (v49 == v35(v37) && v51 == v52)
    {
      break;
    }

    v54 = sub_16AE54();

    if (v54)
    {
      goto LABEL_11;
    }

    v45 = v48 + 1;
  }

LABEL_11:
  LOBYTE(v37) = *(*(v39 + 48) + v48);
LABEL_12:
  *v57 = v37;
  sub_9413C();
}

BOOL sub_8FA08(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_16AF14();
  sub_16A6F4();
  sub_16AF54();
  sub_93DE4();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = v13[1];
    v15 = *v13 == a2 && v14 == a3;
    if (v15 || (sub_93FB8(*v13, v14, a2) & 1) != 0)
    {

      v16 = (*(v7 + 48) + 16 * v11);
      v17 = v16[1];
      *a1 = *v16;
      a1[1] = v17;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_908F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

Swift::Int sub_8FB48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_5758(&qword_1E91B0, &qword_172B10);
    v2 = sub_16ACB4();
    v14 = v2;
    sub_16ABC4();
    while (1)
    {
      if (!sub_16AC34())
      {

        return v2;
      }

      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_8FD24();
      }

      v2 = v14;
      result = sub_16AAC4(*(v14 + 40));
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_8FD24()
{
  sub_93F4C();
  sub_5758(&qword_1E91B0, &qword_172B10);
  v2 = sub_9405C();
  v3 = v2;
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v3;
    return;
  }

  v4 = 0;
  v5 = (v1 + 56);
  v6 = 1 << *(v1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v2 + 56;
  if (!v8)
  {
LABEL_7:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v9)
      {
        break;
      }

      ++v12;
      if (v5[v4])
      {
        sub_93C8C();
        v8 = v14 & v13;
        goto LABEL_12;
      }
    }

    sub_940E0();
    if (v25 != v26)
    {
      sub_93DE4();
      *v5 = v27;
    }

    else
    {
      sub_90A58(0, (v24 + 63) >> 6, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v4 << 6)));
    v16 = sub_16AAC4(*(v3 + 40)) & ~(-1 << *(v3 + 32));
    if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    sub_93B58();
LABEL_22:
    sub_93B1C();
    *(v10 + v21) |= v22;
    *(*(v3 + 48) + 8 * v23) = v15;
    ++*(v3 + 16);
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  sub_93B44();
  while (1)
  {
    sub_94108();
    if (v20)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    if (*(v10 + 8 * v17) != -1)
    {
      sub_93B30();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_8FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_94158();
  v68 = v34;
  sub_93F4C();
  sub_5758(v35, v36);
  v37 = sub_9405C();
  if (!v33[2])
  {
LABEL_25:

    *v32 = v37;
    sub_9413C();
    return;
  }

  v67 = v32;
  v38 = 0;
  v39 = v33 + 7;
  sub_93EB4();
  v42 = v41 & v40;
  v44 = (v43 + 63) >> 6;
  v45 = v37 + 56;
  if ((v41 & v40) == 0)
  {
LABEL_4:
    v47 = v38;
    while (1)
    {
      v38 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v38 >= v44)
      {
        break;
      }

      ++v47;
      if (v39[v38])
      {
        sub_93C8C();
        v42 = v49 & v48;
        goto LABEL_9;
      }
    }

    sub_940E0();
    if (v64 != v65)
    {
      sub_93DE4();
      *v39 = v66;
    }

    else
    {
      sub_90A58(0, (v63 + 63) >> 6, (v33 + 7));
    }

    v32 = v67;
    v33[2] = 0;
    goto LABEL_25;
  }

  while (1)
  {
    v46 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_9:
    v50 = *(v33[6] + (v46 | (v38 << 6)));
    sub_16AF14();
    v51 = v68(v50);
    sub_93C9C(v51, v52, v53, v54, v55);

    sub_16AF54();
    sub_93E70();
    if (v56)
    {
      break;
    }

    sub_93B58();
LABEL_19:
    sub_93B1C();
    *(v45 + v60) |= v61;
    *(*(v37 + 48) + v62) = v50;
    ++*(v37 + 16);
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  sub_93B44();
  while (1)
  {
    sub_94108();
    if (v56)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    if (*(v45 + 8 * v57) != -1)
    {
      sub_93B30();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_90080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_5758(&qword_1E91B8, &qword_1777C0);
  result = sub_16ACA4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_90A58(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_16AF14();
    sub_16A6F4();
    result = sub_16AF54();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_902DC(uint64_t a1, void *a2)
{
  sub_16AAC4(a2[5]);
  sub_93DE4();
  result = sub_16ABA4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_90574(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_8FD24();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_90E94(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_16AAC4(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_16484(0, &qword_1E6310, NSNumber_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_16AAD4();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_90ABC();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_908F0(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_90080(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_91250(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_16AF14();
      sub_16A6F4();
      result = sub_16AF54();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_16AE54() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_90D3C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_16AE94();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_90A58(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_16E2A0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id sub_90ABC()
{
  v1 = v0;
  sub_5758(&qword_1E91B0, &qword_172B10);
  v2 = *v0;
  v3 = sub_16AC94();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_90C0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_5758(a1, a2);
  v4 = *v2;
  v5 = sub_16AC94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_90D3C()
{
  v1 = v0;
  sub_5758(&qword_1E91B8, &qword_1777C0);
  v2 = *v0;
  v3 = sub_16AC94();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_90E94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_5758(&qword_1E91B0, &qword_172B10);
  result = sub_16ACA4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_16AAC4(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_910A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_94158();
  v63 = v33;
  v34 = v32;
  v35 = *v32;
  sub_5758(v36, v37);
  v38 = sub_16ACA4();
  if (*(v35 + 16))
  {
    v39 = 0;
    sub_93EB4();
    v42 = v41 & v40;
    v44 = (v43 + 63) >> 6;
    v45 = v38 + 56;
    if ((v41 & v40) != 0)
    {
      while (1)
      {
        v46 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
LABEL_9:
        v50 = *(*(v35 + 48) + (v46 | (v39 << 6)));
        sub_16AF14();
        v51 = v63(v50);
        sub_93C9C(v51, v52, v53, v54, v55);

        sub_16AF54();
        sub_93E70();
        if (v56)
        {
          break;
        }

        sub_93B58();
LABEL_19:
        sub_93B1C();
        *(v45 + v60) |= v61;
        *(*(v38 + 48) + v62) = v50;
        ++*(v38 + 16);
        if (!v42)
        {
          goto LABEL_4;
        }
      }

      sub_93B44();
      while (1)
      {
        sub_94108();
        if (v56)
        {
          if (v58)
          {
            break;
          }
        }

        if (v57 == v59)
        {
          v57 = 0;
        }

        if (*(v45 + 8 * v57) != -1)
        {
          sub_93B30();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v47 = v39;
      while (1)
      {
        v39 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v39 >= v44)
        {

          v34 = v32;
          goto LABEL_23;
        }

        ++v47;
        if (*(v35 + 56 + 8 * v39))
        {
          sub_93C8C();
          v42 = v49 & v48;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v34 = v38;
    sub_9413C();
  }
}

uint64_t sub_91250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_5758(&qword_1E91B8, &qword_1777C0);
  result = sub_16ACA4();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_16AF14();

        sub_16A6F4();
        result = sub_16AF54();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

_BYTE *sub_91484(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v3 = a1;
    v77[0] = a1;
    v71 = *(a1 + 16);
    if (v71)
    {
      v70 = 0x800000000017E530;
      v4 = a2 + 7;
      v5 = a1 + 32;

      v6 = 0;
      v75 = v4;
      v73 = v5;
      while (1)
      {
        v7 = *(v6 + v5);
        v6 = (v6 + 1);
        sub_16AF14();
        v74 = v7;
        sub_81C68(v7, v8, v9);
        sub_16A6F4();

        v10 = sub_16AF54();
        v11 = -1 << *(v2 + 32);
        v12 = v10 & ~v11;
        v13 = v12 >> 6;
        v14 = 1 << v12;
        if (((1 << v12) & v4[v12 >> 6]) != 0)
        {
          break;
        }

LABEL_100:
        v4 = v75;
        v5 = v73;
        if (v6 == v71)
        {
LABEL_211:

          return v2;
        }
      }

      v15 = ~v11;
      while (1)
      {
        v16 = 0xEE0072656E6F6974;
        v17 = 0x69646E6F43726961;
        switch(*(v2[6] + v12))
        {
          case 1:
            v17 = 0x756F756769626D61;
            v18 = 0x746867694C73;
            goto LABEL_31;
          case 2:
            v21 = 1768191329;
            goto LABEL_25;
          case 3:
            v17 = 0x756F536F69647561;
            v16 = 0xEB00000000656372;
            break;
          case 4:
            v16 = 0xE300000000000000;
            v17 = 7496035;
            break;
          case 5:
            v17 = 0x436574616D696C63;
            v18 = 0x6C6F72746E6FLL;
LABEL_31:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v16 = 0xE600000000000000;
            v17 = 0x656E69676E65;
            break;
          case 7:
            v16 = 0xE300000000000000;
            v17 = 7233894;
            break;
          case 8:
            v16 = 0xE500000000000000;
            v17 = 0x746E6F7266;
            break;
          case 9:
            v17 = 0x694C6472617A6168;
            v19 = 1937008743;
            goto LABEL_28;
          case 0xA:
            v23 = 1684104552;
            goto LABEL_46;
          case 0xB:
            v16 = 0xE400000000000000;
            v17 = 1685024616;
            break;
          case 0xC:
            v16 = 0xE400000000000000;
            v17 = 1852993384;
            break;
          case 0xD:
            v17 = 0x726F697265746E69;
            v22 = 0x746867694CLL;
            goto LABEL_34;
          case 0xE:
            v16 = 0xE600000000000000;
            v17 = 0x73746867696CLL;
            break;
          case 0xF:
            v16 = 0xE700000000000000;
            v17 = 0x73726F7272696DLL;
            break;
          case 0x10:
            v17 = 0x42676E696B726170;
            v19 = 1701536114;
            goto LABEL_28;
          case 0x11:
            v17 = 0x4C676E696B726170;
            v19 = 1952999273;
LABEL_28:
            v16 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v17 = 0x6165537265776F70;
            goto LABEL_47;
          case 0x13:
            v16 = 0xE700000000000000;
            v17 = 0x656C69666F7270;
            break;
          case 0x14:
            v16 = 0xE400000000000000;
            v17 = 1918985586;
            break;
          case 0x15:
            v16 = 0xE400000000000000;
            v17 = 1952540019;
            break;
          case 0x16:
            v17 = 0x6C6F6F4374616573;
            goto LABEL_44;
          case 0x17:
            v17 = 0x7461654874616573;
LABEL_44:
            v16 = 0xEA00000000007265;
            break;
          case 0x18:
            v16 = 0xE600000000000000;
            v17 = 0x6C616E676973;
            break;
          case 0x19:
            v17 = 0x676E697265657473;
            v20 = 1701144663;
            goto LABEL_26;
          case 0x1A:
            v17 = 0xD000000000000013;
            v16 = v70;
            break;
          case 0x1B:
            v16 = 0xE700000000000000;
            v17 = 0x666F6F726E7573;
            break;
          case 0x1C:
            v23 = 1818845556;
LABEL_46:
            v17 = v23 | 0x6867694C00000000;
LABEL_47:
            v16 = 0xE900000000000074;
            break;
          case 0x1D:
            v16 = 0xE500000000000000;
            v17 = 0x7365726974;
            break;
          case 0x1E:
            v16 = 0xE500000000000000;
            v17 = 0x6B6E757274;
            break;
          case 0x1F:
            v21 = 1769171318;
LABEL_25:
            v17 = v21 | 0x53656C6200000000;
            v20 = 1634625385;
LABEL_26:
            v22 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_34:
            v16 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            v16 = 0xEA00000000006C61;
            v17 = 0x6E6769536E727574;
            break;
          case 0x21:
            v16 = 0xE700000000000000;
            v17 = 0x6E776F6E6B6E75;
            break;
          case 0x22:
            v16 = 0xE600000000000000;
            v17 = 0x776F646E6977;
            break;
          case 0x23:
            v16 = 0xE600000000000000;
            v17 = 0x737265706977;
            break;
          default:
            break;
        }

        v24 = 0x69646E6F43726961;
        v25 = 0xEE0072656E6F6974;
        switch(v74)
        {
          case 1:
            v24 = 0x756F756769626D61;
            v26 = 0x746867694C73;
            goto LABEL_75;
          case 2:
            v29 = 1768191329;
            goto LABEL_69;
          case 3:
            v24 = 0x756F536F69647561;
            v25 = 0xEB00000000656372;
            break;
          case 4:
            v25 = 0xE300000000000000;
            v24 = 7496035;
            break;
          case 5:
            v24 = 0x436574616D696C63;
            v26 = 0x6C6F72746E6FLL;
LABEL_75:
            v25 = v26 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v25 = 0xE600000000000000;
            v24 = 0x656E69676E65;
            break;
          case 7:
            v25 = 0xE300000000000000;
            v24 = 7233894;
            break;
          case 8:
            v25 = 0xE500000000000000;
            v24 = 0x746E6F7266;
            break;
          case 9:
            v24 = 0x694C6472617A6168;
            v27 = 1937008743;
            goto LABEL_72;
          case 10:
            v31 = 1684104552;
            goto LABEL_90;
          case 11:
            v25 = 0xE400000000000000;
            v24 = 1685024616;
            break;
          case 12:
            v25 = 0xE400000000000000;
            v24 = 1852993384;
            break;
          case 13:
            v24 = 0x726F697265746E69;
            v30 = 0x746867694CLL;
            goto LABEL_78;
          case 14:
            v25 = 0xE600000000000000;
            v24 = 0x73746867696CLL;
            break;
          case 15:
            v25 = 0xE700000000000000;
            v24 = 0x73726F7272696DLL;
            break;
          case 16:
            v24 = 0x42676E696B726170;
            v27 = 1701536114;
            goto LABEL_72;
          case 17:
            v24 = 0x4C676E696B726170;
            v27 = 1952999273;
LABEL_72:
            v25 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            v24 = 0x6165537265776F70;
            goto LABEL_91;
          case 19:
            v25 = 0xE700000000000000;
            v24 = 0x656C69666F7270;
            break;
          case 20:
            v25 = 0xE400000000000000;
            v24 = 1918985586;
            break;
          case 21:
            v25 = 0xE400000000000000;
            v24 = 1952540019;
            break;
          case 22:
            v24 = 0x6C6F6F4374616573;
            goto LABEL_88;
          case 23:
            v24 = 0x7461654874616573;
LABEL_88:
            v25 = 0xEA00000000007265;
            break;
          case 24:
            v25 = 0xE600000000000000;
            v24 = 0x6C616E676973;
            break;
          case 25:
            v24 = 0x676E697265657473;
            v28 = 1701144663;
            goto LABEL_70;
          case 26:
            v24 = 0xD000000000000013;
            v25 = v70;
            break;
          case 27:
            v25 = 0xE700000000000000;
            v24 = 0x666F6F726E7573;
            break;
          case 28:
            v31 = 1818845556;
LABEL_90:
            v24 = v31 | 0x6867694C00000000;
LABEL_91:
            v25 = 0xE900000000000074;
            break;
          case 29:
            v25 = 0xE500000000000000;
            v24 = 0x7365726974;
            break;
          case 30:
            v25 = 0xE500000000000000;
            v24 = 0x6B6E757274;
            break;
          case 31:
            v29 = 1769171318;
LABEL_69:
            v24 = v29 | 0x53656C6200000000;
            v28 = 1634625385;
LABEL_70:
            v30 = v28 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_78:
            v25 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            v25 = 0xEA00000000006C61;
            v24 = 0x6E6769536E727574;
            break;
          case 33:
            v25 = 0xE700000000000000;
            v24 = 0x6E776F6E6B6E75;
            break;
          case 34:
            v25 = 0xE600000000000000;
            v24 = 0x776F646E6977;
            break;
          case 35:
            v25 = 0xE600000000000000;
            v24 = 0x737265706977;
            break;
          default:
            break;
        }

        if (v17 == v24 && v16 == v25)
        {
          break;
        }

        v33 = sub_16AE54();

        if (v33)
        {
          goto LABEL_104;
        }

        v12 = (v12 + 1) & v15;
        v13 = v12 >> 6;
        v14 = 1 << v12;
        if ((v75[v12 >> 6] & (1 << v12)) == 0)
        {
          goto LABEL_100;
        }
      }

LABEL_104:
      v77[1] = v6;
      v35 = *(v2 + 32);
      v69[0] = ((1 << v35) + 63) >> 6;
      v36 = 8 * v69[0];
      if ((v35 & 0x3Fu) > 0xD)
      {
        goto LABEL_216;
      }

      while (1)
      {
        v69[1] = v69;
        __chkstk_darwin(v34);
        v12 = v69 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v12, v75, v36);
        v37 = v2[2];
        v38 = *(v12 + 8 * v13) & ~v14;
        v71 = v12;
        *(v12 + 8 * v13) = v38;
        v74 = v37 - 1;
        v39 = *(v3 + 16);
        if (v6 == v39)
        {
LABEL_210:
          v2 = sub_93550(v71, v69[0], v74, v2);
          goto LABEL_211;
        }

        v14 = v75;
        v72 = v3;
        while (v6 < v39)
        {
          v40 = *(v6 + v73);
          sub_16AF14();
          sub_81C68(v40, v41, v42);
          sub_16A6F4();

          v12 = &v76;
          v43 = sub_16AF54();
          v44 = -1 << *(v2 + 32);
          v45 = v43 & ~v44;
          v46 = v45 >> 6;
          v36 = 1 << v45;
          if (((1 << v45) & *(v14 + 8 * (v45 >> 6))) != 0)
          {
            v47 = ~v44;
            while (1)
            {
              v12 = 0xEE0072656E6F6974;
              v48 = 0x69646E6F43726961;
              switch(*(v2[6] + v45))
              {
                case 1:
                  v48 = 0x756F756769626D61;
                  v49 = 0x746867694C73;
                  goto LABEL_135;
                case 2:
                  v52 = 1768191329;
                  goto LABEL_129;
                case 3:
                  v48 = 0x756F536F69647561;
                  v12 = 0xEB00000000656372;
                  break;
                case 4:
                  v12 = 0xE300000000000000;
                  v48 = 7496035;
                  break;
                case 5:
                  v48 = 0x436574616D696C63;
                  v49 = 0x6C6F72746E6FLL;
LABEL_135:
                  v12 = v49 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                case 6:
                  v12 = 0xE600000000000000;
                  v48 = 0x656E69676E65;
                  break;
                case 7:
                  v12 = 0xE300000000000000;
                  v48 = 7233894;
                  break;
                case 8:
                  v12 = 0xE500000000000000;
                  v48 = 0x746E6F7266;
                  break;
                case 9:
                  v48 = 0x694C6472617A6168;
                  v50 = 1937008743;
                  goto LABEL_132;
                case 0xA:
                  v54 = 1684104552;
                  goto LABEL_150;
                case 0xB:
                  v12 = 0xE400000000000000;
                  v48 = 1685024616;
                  break;
                case 0xC:
                  v12 = 0xE400000000000000;
                  v48 = 1852993384;
                  break;
                case 0xD:
                  v48 = 0x726F697265746E69;
                  v53 = 0x746867694CLL;
                  goto LABEL_138;
                case 0xE:
                  v12 = 0xE600000000000000;
                  v48 = 0x73746867696CLL;
                  break;
                case 0xF:
                  v12 = 0xE700000000000000;
                  v48 = 0x73726F7272696DLL;
                  break;
                case 0x10:
                  v48 = 0x42676E696B726170;
                  v50 = 1701536114;
                  goto LABEL_132;
                case 0x11:
                  v48 = 0x4C676E696B726170;
                  v50 = 1952999273;
LABEL_132:
                  v12 = v50 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                  break;
                case 0x12:
                  v48 = 0x6165537265776F70;
                  goto LABEL_151;
                case 0x13:
                  v12 = 0xE700000000000000;
                  v48 = 0x656C69666F7270;
                  break;
                case 0x14:
                  v12 = 0xE400000000000000;
                  v48 = 1918985586;
                  break;
                case 0x15:
                  v12 = 0xE400000000000000;
                  v48 = 1952540019;
                  break;
                case 0x16:
                  v48 = 0x6C6F6F4374616573;
                  goto LABEL_148;
                case 0x17:
                  v48 = 0x7461654874616573;
LABEL_148:
                  v12 = 0xEA00000000007265;
                  break;
                case 0x18:
                  v12 = 0xE600000000000000;
                  v48 = 0x6C616E676973;
                  break;
                case 0x19:
                  v48 = 0x676E697265657473;
                  v51 = 1701144663;
                  goto LABEL_130;
                case 0x1A:
                  v48 = 0xD000000000000013;
                  v12 = v70;
                  break;
                case 0x1B:
                  v12 = 0xE700000000000000;
                  v48 = 0x666F6F726E7573;
                  break;
                case 0x1C:
                  v54 = 1818845556;
LABEL_150:
                  v48 = v54 | 0x6867694C00000000;
LABEL_151:
                  v12 = 0xE900000000000074;
                  break;
                case 0x1D:
                  v12 = 0xE500000000000000;
                  v48 = 0x7365726974;
                  break;
                case 0x1E:
                  v12 = 0xE500000000000000;
                  v48 = 0x6B6E757274;
                  break;
                case 0x1F:
                  v52 = 1769171318;
LABEL_129:
                  v48 = v52 | 0x53656C6200000000;
                  v51 = 1634625385;
LABEL_130:
                  v53 = v51 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_138:
                  v12 = v53 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  break;
                case 0x20:
                  v12 = 0xEA00000000006C61;
                  v48 = 0x6E6769536E727574;
                  break;
                case 0x21:
                  v12 = 0xE700000000000000;
                  v48 = 0x6E776F6E6B6E75;
                  break;
                case 0x22:
                  v12 = 0xE600000000000000;
                  v48 = 0x776F646E6977;
                  break;
                case 0x23:
                  v12 = 0xE600000000000000;
                  v48 = 0x737265706977;
                  break;
                default:
                  break;
              }

              v55 = 0x69646E6F43726961;
              v56 = 0xEE0072656E6F6974;
              switch(v40)
              {
                case 1:
                  v55 = 0x756F756769626D61;
                  v57 = 0x746867694C73;
                  goto LABEL_179;
                case 2:
                  v60 = 1768191329;
                  goto LABEL_173;
                case 3:
                  v55 = 0x756F536F69647561;
                  v56 = 0xEB00000000656372;
                  break;
                case 4:
                  v56 = 0xE300000000000000;
                  v55 = 7496035;
                  break;
                case 5:
                  v55 = 0x436574616D696C63;
                  v57 = 0x6C6F72746E6FLL;
LABEL_179:
                  v56 = v57 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                  break;
                case 6:
                  v56 = 0xE600000000000000;
                  v55 = 0x656E69676E65;
                  break;
                case 7:
                  v56 = 0xE300000000000000;
                  v55 = 7233894;
                  break;
                case 8:
                  v56 = 0xE500000000000000;
                  v55 = 0x746E6F7266;
                  break;
                case 9:
                  v55 = 0x694C6472617A6168;
                  v58 = 1937008743;
                  goto LABEL_176;
                case 10:
                  v62 = 1684104552;
                  goto LABEL_194;
                case 11:
                  v56 = 0xE400000000000000;
                  v55 = 1685024616;
                  break;
                case 12:
                  v56 = 0xE400000000000000;
                  v55 = 1852993384;
                  break;
                case 13:
                  v55 = 0x726F697265746E69;
                  v61 = 0x746867694CLL;
                  goto LABEL_182;
                case 14:
                  v56 = 0xE600000000000000;
                  v55 = 0x73746867696CLL;
                  break;
                case 15:
                  v56 = 0xE700000000000000;
                  v55 = 0x73726F7272696DLL;
                  break;
                case 16:
                  v55 = 0x42676E696B726170;
                  v58 = 1701536114;
                  goto LABEL_176;
                case 17:
                  v55 = 0x4C676E696B726170;
                  v58 = 1952999273;
LABEL_176:
                  v56 = v58 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                  break;
                case 18:
                  v55 = 0x6165537265776F70;
                  goto LABEL_195;
                case 19:
                  v56 = 0xE700000000000000;
                  v55 = 0x656C69666F7270;
                  break;
                case 20:
                  v56 = 0xE400000000000000;
                  v55 = 1918985586;
                  break;
                case 21:
                  v56 = 0xE400000000000000;
                  v55 = 1952540019;
                  break;
                case 22:
                  v55 = 0x6C6F6F4374616573;
                  goto LABEL_192;
                case 23:
                  v55 = 0x7461654874616573;
LABEL_192:
                  v56 = 0xEA00000000007265;
                  break;
                case 24:
                  v56 = 0xE600000000000000;
                  v55 = 0x6C616E676973;
                  break;
                case 25:
                  v55 = 0x676E697265657473;
                  v59 = 1701144663;
                  goto LABEL_174;
                case 26:
                  v55 = 0xD000000000000013;
                  v56 = v70;
                  break;
                case 27:
                  v56 = 0xE700000000000000;
                  v55 = 0x666F6F726E7573;
                  break;
                case 28:
                  v62 = 1818845556;
LABEL_194:
                  v55 = v62 | 0x6867694C00000000;
LABEL_195:
                  v56 = 0xE900000000000074;
                  break;
                case 29:
                  v56 = 0xE500000000000000;
                  v55 = 0x7365726974;
                  break;
                case 30:
                  v56 = 0xE500000000000000;
                  v55 = 0x6B6E757274;
                  break;
                case 31:
                  v60 = 1769171318;
LABEL_173:
                  v55 = v60 | 0x53656C6200000000;
                  v59 = 1634625385;
LABEL_174:
                  v61 = v59 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_182:
                  v56 = v61 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  break;
                case 32:
                  v56 = 0xEA00000000006C61;
                  v55 = 0x6E6769536E727574;
                  break;
                case 33:
                  v56 = 0xE700000000000000;
                  v55 = 0x6E776F6E6B6E75;
                  break;
                case 34:
                  v56 = 0xE600000000000000;
                  v55 = 0x776F646E6977;
                  break;
                case 35:
                  v56 = 0xE600000000000000;
                  v55 = 0x737265706977;
                  break;
                default:
                  break;
              }

              if (v48 == v55 && v12 == v56)
              {
                break;
              }

              v13 = sub_16AE54();

              if (v13)
              {
                goto LABEL_206;
              }

              v45 = (v45 + 1) & v47;
              v46 = v45 >> 6;
              v14 = v75;
              v36 = 1 << v45;
              if ((v75[v45 >> 6] & (1 << v45)) == 0)
              {
                v3 = v72;
                goto LABEL_209;
              }
            }

LABEL_206:
            v3 = v72;
            v64 = v71[v46];
            v71[v46] = v64 & ~v36;
            v14 = v75;
            if ((v64 & v36) != 0)
            {
              v65 = v74 - 1;
              if (__OFSUB__(v74, 1))
              {
                goto LABEL_215;
              }

              --v74;
              if (!v65)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_211;
              }
            }
          }

LABEL_209:
          v6 = (v6 + 1);
          v39 = *(v3 + 16);
          if (v6 == v39)
          {
            goto LABEL_210;
          }
        }

        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v67 = swift_slowAlloc();
      v68 = sub_93318(v67, v69[0], v75, v69[0], v2, v12, v77);

      return v68;
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_928D8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v47 = v6 - 1;
  v7 = *a5;
  v8 = a5[1];
  v9 = *(*a5 + 16);
  if (v8 != v9)
  {
    v10 = a5;
    v11 = 0xEE0072656E6F6974;
    v12 = 0x69646E6F43726961;
    v49 = a3 + 56;
    do
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        JUMPOUT(0x931F8);
      }

      if (v8 >= v9)
      {
        goto LABEL_111;
      }

      v13 = *(v7 + v8 + 32);
      v10[1] = v8 + 1;
      sub_16AF14();
      v50 = v13;
      sub_81C68(v13, v14, v15);
      sub_16A6F4();

      v16 = sub_16AF54();
      v17 = -1 << *(v5 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v49 + 8 * (v18 >> 6))) == 0)
      {
        goto LABEL_108;
      }

      v48 = ~v17;
      while (1)
      {
        v21 = v11;
        v22 = v12;
        switch(*(*(v5 + 48) + v18))
        {
          case 1:
            v22 = 0x756F756769626D61;
            v23 = 0x746867694C73;
            goto LABEL_32;
          case 2:
            v26 = 1768191329;
            goto LABEL_26;
          case 3:
            v22 = 0x756F536F69647561;
            v21 = 0xEB00000000656372;
            break;
          case 4:
            v21 = 0xE300000000000000;
            v22 = 7496035;
            break;
          case 5:
            v22 = 0x436574616D696C63;
            v23 = 0x6C6F72746E6FLL;
LABEL_32:
            v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v21 = 0xE600000000000000;
            v22 = 0x656E69676E65;
            break;
          case 7:
            v21 = 0xE300000000000000;
            v22 = 7233894;
            break;
          case 8:
            v21 = 0xE500000000000000;
            v22 = 0x746E6F7266;
            break;
          case 9:
            v22 = 0x694C6472617A6168;
            v24 = 1937008743;
            goto LABEL_29;
          case 0xA:
            v28 = 1684104552;
            goto LABEL_47;
          case 0xB:
            v21 = 0xE400000000000000;
            v22 = 1685024616;
            break;
          case 0xC:
            v21 = 0xE400000000000000;
            v22 = 1852993384;
            break;
          case 0xD:
            v22 = 0x726F697265746E69;
            v27 = 0x746867694CLL;
            goto LABEL_35;
          case 0xE:
            v21 = 0xE600000000000000;
            v22 = 0x73746867696CLL;
            break;
          case 0xF:
            v21 = 0xE700000000000000;
            v22 = 0x73726F7272696DLL;
            break;
          case 0x10:
            v22 = 0x42676E696B726170;
            v24 = 1701536114;
            goto LABEL_29;
          case 0x11:
            v22 = 0x4C676E696B726170;
            v24 = 1952999273;
LABEL_29:
            v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v22 = 0x6165537265776F70;
            goto LABEL_48;
          case 0x13:
            v21 = 0xE700000000000000;
            v22 = 0x656C69666F7270;
            break;
          case 0x14:
            v21 = 0xE400000000000000;
            v22 = 1918985586;
            break;
          case 0x15:
            v21 = 0xE400000000000000;
            v22 = 1952540019;
            break;
          case 0x16:
            v22 = 0x6C6F6F4374616573;
            goto LABEL_45;
          case 0x17:
            v22 = 0x7461654874616573;
LABEL_45:
            v21 = 0xEA00000000007265;
            break;
          case 0x18:
            v21 = 0xE600000000000000;
            v22 = 0x6C616E676973;
            break;
          case 0x19:
            v22 = 0x676E697265657473;
            v25 = 1701144663;
            goto LABEL_27;
          case 0x1A:
            v22 = 0xD000000000000013;
            v21 = 0x800000000017E530;
            break;
          case 0x1B:
            v21 = 0xE700000000000000;
            v22 = 0x666F6F726E7573;
            break;
          case 0x1C:
            v28 = 1818845556;
LABEL_47:
            v22 = v28 | 0x6867694C00000000;
LABEL_48:
            v21 = 0xE900000000000074;
            break;
          case 0x1D:
            v21 = 0xE500000000000000;
            v22 = 0x7365726974;
            break;
          case 0x1E:
            v21 = 0xE500000000000000;
            v22 = 0x6B6E757274;
            break;
          case 0x1F:
            v26 = 1769171318;
LABEL_26:
            v22 = v26 | 0x53656C6200000000;
            v25 = 1634625385;
LABEL_27:
            v27 = v25 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_35:
            v21 = v27 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            v21 = 0xEA00000000006C61;
            v22 = 0x6E6769536E727574;
            break;
          case 0x21:
            v21 = 0xE700000000000000;
            v22 = 0x6E776F6E6B6E75;
            break;
          case 0x22:
            v21 = 0xE600000000000000;
            v22 = 0x776F646E6977;
            break;
          case 0x23:
            v21 = 0xE600000000000000;
            v22 = 0x737265706977;
            break;
          default:
            break;
        }

        v29 = v12;
        v30 = v12;
        v31 = v11;
        switch(v50)
        {
          case 1:
            v30 = 0x756F756769626D61;
            v32 = 0x746867694C73;
            goto LABEL_76;
          case 2:
            v35 = 1768191329;
            goto LABEL_70;
          case 3:
            v30 = 0x756F536F69647561;
            v11 = 0xEB00000000656372;
            break;
          case 4:
            v11 = 0xE300000000000000;
            v30 = 7496035;
            break;
          case 5:
            v30 = 0x436574616D696C63;
            v32 = 0x6C6F72746E6FLL;
LABEL_76:
            v11 = v32 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v11 = 0xE600000000000000;
            v30 = 0x656E69676E65;
            break;
          case 7:
            v11 = 0xE300000000000000;
            v30 = 7233894;
            break;
          case 8:
            v11 = 0xE500000000000000;
            v30 = 0x746E6F7266;
            break;
          case 9:
            v30 = 0x694C6472617A6168;
            v33 = 1937008743;
            goto LABEL_73;
          case 10:
            v37 = 1684104552;
            goto LABEL_91;
          case 11:
            v11 = 0xE400000000000000;
            v30 = 1685024616;
            break;
          case 12:
            v11 = 0xE400000000000000;
            v30 = 1852993384;
            break;
          case 13:
            v30 = 0x726F697265746E69;
            v36 = 0x746867694CLL;
            goto LABEL_79;
          case 14:
            v11 = 0xE600000000000000;
            v30 = 0x73746867696CLL;
            break;
          case 15:
            v11 = 0xE700000000000000;
            v30 = 0x73726F7272696DLL;
            break;
          case 16:
            v30 = 0x42676E696B726170;
            v33 = 1701536114;
            goto LABEL_73;
          case 17:
            v30 = 0x4C676E696B726170;
            v33 = 1952999273;
LABEL_73:
            v11 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            v30 = 0x6165537265776F70;
            goto LABEL_92;
          case 19:
            v11 = 0xE700000000000000;
            v30 = 0x656C69666F7270;
            break;
          case 20:
            v11 = 0xE400000000000000;
            v30 = 1918985586;
            break;
          case 21:
            v11 = 0xE400000000000000;
            v30 = 1952540019;
            break;
          case 22:
            v30 = 0x6C6F6F4374616573;
            goto LABEL_89;
          case 23:
            v30 = 0x7461654874616573;
LABEL_89:
            v11 = 0xEA00000000007265;
            break;
          case 24:
            v11 = 0xE600000000000000;
            v30 = 0x6C616E676973;
            break;
          case 25:
            v30 = 0x676E697265657473;
            v34 = 1701144663;
            goto LABEL_71;
          case 26:
            v30 = 0xD000000000000013;
            v11 = 0x800000000017E530;
            break;
          case 27:
            v11 = 0xE700000000000000;
            v30 = 0x666F6F726E7573;
            break;
          case 28:
            v37 = 1818845556;
LABEL_91:
            v30 = v37 | 0x6867694C00000000;
LABEL_92:
            v11 = 0xE900000000000074;
            break;
          case 29:
            v11 = 0xE500000000000000;
            v30 = 0x7365726974;
            break;
          case 30:
            v11 = 0xE500000000000000;
            v30 = 0x6B6E757274;
            break;
          case 31:
            v35 = 1769171318;
LABEL_70:
            v30 = v35 | 0x53656C6200000000;
            v34 = 1634625385;
LABEL_71:
            v36 = v34 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_79:
            v11 = v36 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            v11 = 0xEA00000000006C61;
            v30 = 0x6E6769536E727574;
            break;
          case 33:
            v11 = 0xE700000000000000;
            v30 = 0x6E776F6E6B6E75;
            break;
          case 34:
            v11 = 0xE600000000000000;
            v30 = 0x776F646E6977;
            break;
          case 35:
            v11 = 0xE600000000000000;
            v30 = 0x737265706977;
            break;
          default:
            break;
        }

        v38 = v5;
        if (v22 == v30 && v21 == v11)
        {
          break;
        }

        v40 = sub_16AE54();

        if (v40)
        {
          goto LABEL_103;
        }

        v18 = (v18 + 1) & v48;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        v5 = v38;
        v11 = v31;
        v12 = v29;
        if ((*(v49 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          v10 = a5;
          goto LABEL_108;
        }
      }

LABEL_103:
      v41 = a1[v19];
      a1[v19] = v41 & ~v20;
      if ((v41 & v20) != 0)
      {
        v42 = v47 - 1;
        if (__OFSUB__(v47, 1))
        {
          goto LABEL_112;
        }

        v5 = v38;
        --v47;
        v11 = v31;
        v12 = v29;
        v10 = a5;
        if (!v42)
        {
          return &_swiftEmptySetSingleton;
        }
      }

      else
      {
        v5 = v38;
        v11 = v31;
        v12 = v29;
        v10 = a5;
      }

LABEL_108:
      v7 = *v10;
      v8 = v10[1];
      v9 = *(*v10 + 16);
    }

    while (v8 != v9);
  }

  return sub_93550(a1, a2, v47, v5);
}

void *sub_93318(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_928D8(a1, a2, a5, a6, a7);

  return v12;
}

void sub_933A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_5758(&qword_1E91B0, &qword_172B10);
      v8 = sub_16ACC4();
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
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = *(v9 + 40);
        v18 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v19 = sub_16AAC4(v17) & ~(-1 << *(v9 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          sub_93B44();
          while (1)
          {
            sub_94108();
            if (v23)
            {
              if (v21)
              {
                goto LABEL_30;
              }
            }

            if (v20 == v22)
            {
              v20 = 0;
            }

            if (*(v12 + 8 * v20) != -1)
            {
              sub_93B30();
              goto LABEL_26;
            }
          }
        }

        sub_93B58();
LABEL_26:
        sub_93B1C();
        *(v12 + v24) |= v25;
        *(*(v9 + 48) + 8 * v26) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

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

        ++v14;
        if (a1[v11])
        {
          sub_93C8C();
          v10 = v16 & v15;
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

uint64_t sub_93550(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_5758(&qword_1E91A0, &unk_172AF0);
  result = sub_16ACC4();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_16AF14();
    sub_81C68(v16, v17, v18);
    sub_16A6F4();

    result = sub_16AF54();
    v19 = -1 << v9[32];
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
    *(*(v9 + 6) + v22) = v16;
    ++*(v9 + 2);
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

uint64_t sub_9376C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16ABB4();
  }

  else
  {
    return sub_16AB94();
  }
}

uint64_t sub_937CC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_16AC54();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_93820(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_16AC24();
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    if (sub_16ABE4() == *(a4 + 36))
    {
      sub_16ABF4();
      swift_dynamicCast();
      v4 = v13;
      v7 = sub_16AAC4(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = sub_16AAD4();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t sub_93A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaSet.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_93A60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_93AB0(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t sub_93B78(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_93BA0(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t sub_93BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_16AE54();
}

void sub_93C58()
{
  v2 = *(v0 + 81);

  sub_8139C(v2);
}

uint64_t sub_93C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_16A6F4();
}

uint64_t sub_93CC0()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasCancelled.getter);
}

uint64_t sub_93CE4()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasRejected.getter);
}

uint64_t sub_93D08()
{

  return sub_8AEAC(&Siri_Nlu_External_UserDialogAct.hasAccepted.getter);
}

uint64_t sub_93D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_93DA8(uint64_t a1, uint64_t a2)
{

  return sub_16AE54();
}

uint64_t sub_93DFC()
{
}

uint64_t sub_93E14()
{
}

uint64_t sub_93E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

void sub_93E44()
{

  sub_8139C(v0);
}

BOOL sub_93E98(uint64_t a1)
{

  return sub_96E4(30, a1);
}

uint64_t sub_93EDC()
{
}

uint64_t sub_93EF4()
{
}

uint64_t sub_93F70(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_93F88()
{
}

uint64_t sub_93FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_93FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

BOOL sub_93FD0()
{

  return sub_96E4(7, v0);
}

uint64_t sub_93FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_94004()
{
}

BOOL sub_9401C(uint64_t a1)
{

  return sub_96E4(0, a1);
}

void sub_94038(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000015;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

uint64_t sub_9405C()
{

  return sub_16ACA4();
}

void sub_94080()
{
  v2 = *(v0 + 81);

  sub_8139C(v2);
}

uint64_t sub_9409C()
{
}

uint64_t sub_94174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return sub_16AD84();
}

uint64_t sub_94194(uint64_t a1)
{

  return sub_103A44();
}

void sub_941B4()
{

  sub_16ACF4(49);
}

uint64_t sub_941D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_9420C(uint64_t a1, void *a2)
{
  v3 = sub_D084((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_9427C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_9427C(uint64_t a1, uint64_t a2)
{
  sub_5758(&qword_1E6360, &qword_16E3B0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_942EC(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return _swift_task_switch(sub_9430C);
}

uint64_t sub_9430C()
{
  v1 = *(v0 + 160);
  sub_16ACF4(31);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x8000000000186DE0;
  sub_16A744(v13);
  v2 = *v1;
  v3 = v1[2];
  *(v0 + 96) = v1[1];
  *(v0 + 112) = v3;
  *(v0 + 80) = v2;
  sub_16AD84();
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 168);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x800000000uLL, 0xD00000000000009ALL, 0x8000000000186D20, 0xD000000000000017, 0x8000000000186DC0, 15, v4, v5);

  v9 = sub_16A644();
  *(v0 + 176) = v9;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_94578;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_9420C;
  *(v0 + 104) = &unk_1D6728;
  *(v0 + 112) = v10;
  [v6 changeMediaSourceWithIdentifier:v9 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_94578()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_946EC;
  }

  else
  {
    v2 = sub_94688;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_94688()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_946EC(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_9475C()
{
  v1 = [v0 currentMediaSourceIdentifier];
  v2 = sub_16A664();

  return v2;
}

uint64_t sub_947B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_4D8D0;

  return sub_942EC(a1);
}

void *sub_948E4(uint64_t a1, unsigned int a2, __n128 a3)
{
  HIDWORD(v59) = a2;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v57 = 0x8000000000186F30;
  v58 = 0x8000000000186EA0;
  v5 = _swiftEmptyArrayStorage;
  a3.n128_u64[0] = 136315138;
  v55 = a3;
  if (v3)
  {
    do
    {
      v60 = v3;
      sub_10824(v4, &v69);
      v6 = v70;
      v7 = v71;
      sub_D084(&v69, v70);
      v8 = (*(v7 + 8))(HIDWORD(v59), v6, v7);
      *&v62 = 0;
      *(&v62 + 1) = 0xE000000000000000;
      sub_16ACF4(26);
      v73._countAndFlagsBits = 0x3A65636976726553;
      v73._object = 0xE900000000000020;
      sub_16A744(v73);
      sub_5758(&qword_1E91C0, &qword_172C40);
      sub_16AD84();
      v74._countAndFlagsBits = 0x74756D206E616320;
      v74._object = 0xED0000203A657461;
      sub_16A744(v74);
      if (v8)
      {
        v9._countAndFlagsBits = 1702195828;
      }

      else
      {
        v9._countAndFlagsBits = 0x65736C6166;
      }

      if (v8)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v9._object = v10;
      sub_16A744(v9);

      v11 = v62;
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v12 = sub_16A584();
      sub_9DA0(v12, qword_1E65C0);
      v13 = sub_16A9A4();
      *&v62 = 0xD000000000000086;
      *(&v62 + 1) = v58;
      v67 = (&stru_20 + 15);
      v68 = 0xE100000000000000;
      sub_D030();
      v14 = (sub_16AB34() + 16);
      if (*v14)
      {
        v15 = &v14[2 * *v14];
        v17 = *v15;
        v16 = v15[1];

        *&v62 = v17;
        *(&v62 + 1) = v16;
        v75._countAndFlagsBits = 32;
        v75._object = 0xE100000000000000;
        sub_16A744(v75);
        v76._countAndFlagsBits = 0xD00000000000001FLL;
        v76._object = v57;
        sub_16A744(v76);
        v19 = *(&v62 + 1);
        v18 = v62;
      }

      else
      {

        v18 = 0xD00000000000001FLL;
        v19 = v57;
      }

      *&v62 = v18;
      *(&v62 + 1) = v19;
      v67 = (&stru_20 + 26);
      v68 = 0xE100000000000000;
      v66 = 57;
      v77._countAndFlagsBits = sub_16AE24();
      sub_16A744(v77);

      sub_94ED8(v20, v21, v22, v23, v24, v25, v26, v27, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v60, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);

      v28._countAndFlagsBits = sub_378D0(0x400000uLL);
      if (v28._object)
      {
        v67 = &stru_20;
        v68 = 0xE100000000000000;
        sub_16A744(v28);

        sub_94ED8(v29, v30, v31, v32, v33, v34, v35, v36, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v61, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      }

      v37 = (v11._object >> 56) & 0xF;
      if ((v11._object & 0x2000000000000000) == 0)
      {
        v37 = v11._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v67 = &stru_20;
        v68 = 0xE100000000000000;
        sub_16A744(v11);
        sub_94ED8(v38, v39, v40, v41, v42, v43, v44, v45, v55.n128_i64[0], v55.n128_i64[1], v56, v57, v58, v59, v61, v62, *(&v62 + 1), v63, v64, v65, v66, v67, v68);
      }

      v46 = v62;
      v47 = sub_16A574();
      if (os_log_type_enabled(v47, v13))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v67 = v49;
        *v48 = v55.n128_u32[0];
        v50 = sub_15BC8(v46, *(&v46 + 1), &v67);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_0, v47, v13, "%s", v48, 0xCu);
        sub_D13C(v49);
      }

      else
      {
      }

      if (v8)
      {
        sub_D124(&v69, &v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1468F8(0, v5[2] + 1, 1);
          v5 = v72;
        }

        v53 = v5[2];
        v52 = v5[3];
        if (v53 >= v52 >> 1)
        {
          sub_1468F8((v52 > 1), v53 + 1, 1);
          v5 = v72;
        }

        v5[2] = v53 + 1;
        sub_D124(&v62, &v5[5 * v53 + 4]);
      }

      else
      {
        sub_D13C(&v69);
      }

      v4 += 40;
      v3 = v61 - 1;
    }

    while (v61 != 1);
  }

  return v5;
}

_BYTE *storeEnumTagSinglePayload for ServiceAvailabilityGate(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        JUMPOUT(0x94EA0);
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

void sub_94ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  v24._countAndFlagsBits = a22;
  v24._object = a23;

  sub_16A744(v24);
}

id sub_94EF4(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v24 = v3;
  swift_getObjectType();
  if (v5 == 162)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v25);
    if (v26)
    {
      sub_D124(&v25, v27);
      v6 = [objc_allocWithZone(sub_16A484()) init];
      v7 = v28;
      v8 = v29;
      sub_D084(v27, v28);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {
        sub_95578();
        v10 = sub_955F8();
      }

      else
      {
        v10 = 0;
      }

      [v6 setCarName:v10];

      v22 = swift_dynamicCastClass();
      if (!v22)
      {

        v22 = v24;
      }

      sub_D13C(v27);
      return v22;
    }

    sub_57A80(&v25);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    sub_955CC();
    sub_955BC();
    v19 = 20;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v11 = sub_16A584();
    sub_9DA0(v11, qword_1E65C0);
    sub_16A9A4();
    sub_955CC();
    sub_955BC();
    v19 = 15;
  }

  sub_386D8(v12, v13, v14, v15, v16, v17, v19, v18, v23);

  return v24;
}

id sub_95150(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 162)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_955BC();
    sub_386D8(v6, v7, v8, v9, v10, v11, 36, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(sub_16A484()) init];
  [v13 setCarName:v4];

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_9530C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 162 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_95374(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v17);
  if (v18)
  {
    sub_D124(&v17, v19);
    v5 = [objc_allocWithZone(v1) init];
    v6 = v20;
    v7 = v21;
    sub_D084(v19, v20);
    v8 = *(v7 + 8);
    v9 = v5;
    v8(v6, v7);
    if (v10)
    {
      sub_95578();
      v11 = sub_955F8();
    }

    else
    {
      v11 = 0;
    }

    [v9 setCarName:v11];

    sub_1693E4();
    sub_955E4();
    (*(v15 + 8))(a1);
    sub_D13C(v19);
  }

  else
  {
    sub_57A80(&v17);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x10000uLL, 0xD00000000000009BLL, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 55, 0xD000000000000016, v3);
    sub_1693E4();
    sub_955E4();
    (*(v14 + 8))(a1);
    return 0;
  }

  return v9;
}

unint64_t sub_95578()
{
  result = qword_1E6378;
  if (!qword_1E6378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6378);
  }

  return result;
}

id sub_955F8()
{

  return sub_99BFC(v0, v1);
}

uint64_t type metadata accessor for CarCommandsGetTirePressureCATsSimple(uint64_t a1)
{
  result = qword_1E91C8;
  if (!qword_1E91C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_956A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 179) = v21;
  *(v9 + 136) = v20;
  *(v9 + 144) = v8;
  *(v9 + 120) = v18;
  *(v9 + 128) = v19;
  *(v9 + 178) = v17;
  *(v9 + 104) = v15;
  *(v9 + 112) = v16;
  *(v9 + 177) = v13;
  *(v9 + 88) = v12;
  *(v9 + 96) = v14;
  *(v9 + 72) = v11;
  *(v9 + 176) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return _swift_task_switch(sub_9571C);
}

uint64_t sub_9571C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v6 = swift_allocObject();
  v7 = v6;
  *(v0 + 152) = v6;
  *(v6 + 16) = xmmword_172CB0;
  strcpy((v6 + 32), "tireCondition");
  *(v6 + 46) = -4864;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  *(v6 + 72) = &type metadata for String;
  strcpy((v6 + 80), "pressureUnit");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v3;
  *(v6 + 104) = v2;
  *(v6 + 120) = &type metadata for String;
  *(v6 + 128) = 0x50656E4F65726974;
  *(v6 + 136) = 0xEF6E6F697469736FLL;
  if (v1)
  {
    v8 = *(v0 + 48);
    v9 = &type metadata for String;
    v10 = v1;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v9 = 0;
    *(v6 + 160) = 0;
  }

  v11 = *(v0 + 176);
  *(v6 + 144) = v8;
  *(v6 + 152) = v10;
  *(v6 + 168) = v9;
  *(v6 + 176) = 0x50656E4F65726974;
  *(v6 + 184) = 0xEF65727573736572;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  else
  {
    v12 = *(v0 + 64);
    v13 = &type metadata for Double;
  }

  v14 = *(v0 + 80);
  *(v6 + 192) = v12;
  *(v6 + 216) = v13;
  *(v6 + 224) = 0x506F775465726974;
  *(v6 + 232) = 0xEF6E6F697469736FLL;
  if (v14)
  {
    v15 = *(v0 + 72);
    v16 = &type metadata for String;
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v16 = 0;
    *(v6 + 256) = 0;
  }

  v18 = *(v0 + 177);
  *(v6 + 240) = v15;
  *(v6 + 248) = v17;
  *(v6 + 264) = v16;
  *(v6 + 272) = 0x506F775465726974;
  *(v6 + 280) = 0xEF65727573736572;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    *(v6 + 296) = 0;
    *(v6 + 304) = 0;
  }

  else
  {
    v19 = *(v0 + 88);
    v20 = &type metadata for Double;
  }

  v21 = *(v0 + 104);
  *(v6 + 288) = v19;
  *(v6 + 312) = v20;
  *(v6 + 320) = 0xD000000000000011;
  *(v6 + 328) = 0x80000000001870A0;
  if (v21)
  {
    v22 = *(v0 + 96);
    v23 = &type metadata for String;
    v24 = v21;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v23 = 0;
    *(v6 + 352) = 0;
  }

  v25 = *(v0 + 178);
  *(v6 + 336) = v22;
  *(v6 + 344) = v24;
  *(v6 + 360) = v23;
  *(v6 + 368) = 0xD000000000000011;
  *(v6 + 376) = 0x80000000001870C0;
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    *(v6 + 392) = 0;
    *(v6 + 400) = 0;
  }

  else
  {
    v26 = *(v0 + 112);
    v27 = &type metadata for Double;
  }

  v28 = *(v0 + 128);
  *(v6 + 384) = v26;
  *(v6 + 408) = v27;
  *(v6 + 416) = 0xD000000000000010;
  *(v6 + 424) = 0x80000000001870E0;
  if (v28)
  {
    v29 = *(v0 + 120);
    v30 = &type metadata for String;
    v31 = v28;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v30 = 0;
    *(v6 + 448) = 0;
  }

  v32 = *(v0 + 179);
  *(v6 + 432) = v29;
  *(v6 + 440) = v31;
  *(v6 + 456) = v30;
  *(v6 + 464) = 0xD000000000000010;
  *(v6 + 472) = 0x8000000000187100;
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    *(v6 + 488) = 0;
    *(v6 + 496) = 0;
  }

  else
  {
    v33 = *(v0 + 136);
    v34 = &type metadata for Double;
  }

  *(v6 + 480) = v33;
  *(v6 + 504) = v34;
  v37 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v35 = swift_task_alloc();
  *(v0 + 160) = v35;
  *v35 = v0;
  v35[1] = sub_95AFC;

  return v37(0xD000000000000030, 0x8000000000187120, v7);
}

uint64_t sub_95AFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_95C54);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_95C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_95D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_95E68(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_95F84()
{
  sub_D2DC();
  result = sub_11B48C();
  v0[26] = result;
  v0[27] = _swiftEmptyArrayStorage;
  if (result)
  {
    v2 = v0[25];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16AD04();
    }

    else
    {
      if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v3 = *(v2 + 32);
    }

    v4 = v3;
    v0[28] = v3;
    v0[29] = 1;
    v5 = objc_allocWithZone(type metadata accessor for CarMediaSourceFetcher(0));
    v0[30] = sub_96F74(v4);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    sub_98800(v6);

    return sub_97144();
  }

  else
  {
    v7 = v0[1];

    return v7(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_960A4(uint64_t a1)
{
  v4 = *v2;
  sub_D2A4();
  *v5 = v4;
  v4[2] = v2;
  v4[3] = v6;
  v4[4] = v7;
  v4[5] = v1;
  v8 = *v2;
  sub_D2A4();
  *v9 = v8;
  v4[32] = v1;

  if (v1)
  {

    v10 = sub_96714;
  }

  else
  {
    v4[33] = a1;
    v10 = sub_961D4;
  }

  return _swift_task_switch(v10);
}

void sub_961D4()
{
  v42 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xD000000000000023;
    v40 = *(v0 + 32);
    v3 = *(v0 + 224);
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    sub_16ACF4(45);

    *(v0 + 48) = 0xD00000000000002BLL;
    *(v0 + 56) = 0x8000000000187560;
    v4 = [v3 description];
    v5 = sub_16A664();
    v7 = v6;

    v44._countAndFlagsBits = v5;
    v44._object = v7;
    sub_16A744(v44);

    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    v11 = sub_16A9A4();
    *(v0 + 96) = 0xD00000000000008DLL;
    *(v0 + 104) = 0x8000000000187210;
    *(v0 + 112) = 47;
    *(v0 + 120) = 0xE100000000000000;
    sub_D030();
    v12 = (sub_16AB34() + 16);
    v13 = 0x8000000000187530;
    if (*v12)
    {
      v14 = &v12[2 * *v12];
      v16 = *v14;
      v15 = v14[1];

      *(v0 + 128) = v16;
      *(v0 + 136) = v15;
      v45._countAndFlagsBits = 32;
      v45._object = 0xE100000000000000;
      sub_16A744(v45);
      v46._countAndFlagsBits = 0xD000000000000023;
      v46._object = 0x8000000000187530;
      sub_16A744(v46);
      v2 = *(v0 + 128);
      v13 = *(v0 + 136);
    }

    else
    {
    }

    *(v0 + 80) = v2;
    *(v0 + 88) = v13;
    *(v0 + 144) = 58;
    *(v0 + 152) = 0xE100000000000000;
    *(v0 + 192) = 18;
    v47._countAndFlagsBits = sub_16AE24();
    sub_16A744(v47);

    sub_16A744(*(v0 + 144));

    v19._countAndFlagsBits = sub_378D0(0x800uLL);
    if (v19._object)
    {
      *(v0 + 176) = 32;
      *(v0 + 184) = 0xE100000000000000;
      sub_16A744(v19);

      sub_16A744(*(v0 + 176));
    }

    v20 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v20 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      *(v0 + 160) = 32;
      *(v0 + 168) = 0xE100000000000000;
      v48._countAndFlagsBits = v9;
      v48._object = v8;
      sub_16A744(v48);
      sub_16A744(*(v0 + 160));
    }

    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = sub_16A574();
    if (os_log_type_enabled(v23, v11))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = sub_15BC8(v22, v21, &v41);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_0, v23, v11, "%s", v24, 0xCu);
      sub_D13C(v25);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v0 + 216);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10883C();
      v28 = v38;
    }

    v29 = *(v28 + 16);
    if (v29 >= *(v28 + 24) >> 1)
    {
      sub_10883C();
      v28 = v39;
    }

    v30 = *(v0 + 224);

    *(v28 + 16) = v29 + 1;
    v31 = v28 + 16 * v29;
    *(v31 + 32) = v1;
    *(v31 + 40) = v40;
    v18 = *(v0 + 232);
    *(v0 + 216) = v28;
  }

  else
  {
    v17 = *(v0 + 240);

    v18 = *(v0 + 232);
  }

  if (v18 == *(v0 + 208))
  {
    v32 = *(v0 + 8);
    v33 = *(v0 + 216);

    v32(v33);
    return;
  }

  v34 = *(v0 + 200);
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = sub_16AD04();
  }

  else
  {
    if (v18 >= *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v35 = *(v34 + 8 * v18 + 32);
  }

  v36 = v35;
  *(v0 + 224) = v35;
  *(v0 + 232) = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  objc_allocWithZone(type metadata accessor for CarMediaSourceFetcher(0));
  *(v0 + 240) = sub_96F74(v36);
  v37 = swift_task_alloc();
  *(v0 + 248) = v37;
  *v37 = v0;
  sub_98800(v37);

  sub_97144();
}

uint64_t sub_96714()
{
  sub_D2DC();
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_9677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_D2B0();
}

void sub_96794()
{
  v1 = v0[4];
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = v0[3];
    v4 = v1 + 32;
    v18 = v4;
LABEL_3:
    v5 = (v4 + 16 * v2);
    v6 = *v5;
    v7 = v5[1];
    v20 = v2 + 1;
    v8 = sub_11B48C();
    swift_bridgeObjectRetain_n();
    v21 = v7;
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {
        swift_bridgeObjectRelease_n();

        v2 = v20;
        v4 = v18;
        if (v20 != v19)
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = sub_9878C(v10);
      if (v13)
      {
        if (v12 == v0[2] && v13 == v3)
        {

LABEL_20:
          swift_bridgeObjectRelease_n();
          v16 = v21;
          goto LABEL_21;
        }

        v15 = sub_16AE54();

        if (v15)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_18:
    v16 = 0;
    v11 = 0;
LABEL_21:
    v17 = v0[1];

    v17(v16, v11);
  }
}

uint64_t sub_9694C(void *a1, char **a2)
{
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_16ACF4(76);
  v4._countAndFlagsBits = 0xD000000000000028;
  sub_98860(v4, "ndexGivenMediaItem(_:in:)");
  v5 = [a1 description];
  v6 = sub_16A664();
  v8 = v7;

  v63._countAndFlagsBits = v6;
  v63._object = v8;
  sub_16A744(v63);

  v64._countAndFlagsBits = 544106784;
  v64._object = 0xE400000000000000;
  sub_16A744(v64);
  v9 = [a2 description];
  v10 = sub_16A664();
  v12 = v11;

  v65._countAndFlagsBits = v10;
  v65._object = v12;
  sub_16A744(v65);

  v13._countAndFlagsBits = 0xD00000000000001ALL;
  sub_98860(v13, "st multicast index for: ");
  [a1 multicast];
  v66._countAndFlagsBits = sub_16AE24();
  sub_16A744(v66);

  v14 = 0;
  v15 = 0xE000000000000000;
  if (qword_1E58E8 != -1)
  {
    goto LABEL_32;
  }

LABEL_2:
  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  sub_16A9A4();
  sub_98824();
  sub_386D8(v17, v18, v19, v20, v21, v22, 37, v14, v15);

  v23 = [a2 mediaItems];
  if (v23)
  {
    v14 = v23;
    v24 = [v23 mediaItems];

    sub_98698();
    v25 = sub_16A7D4();

    v60 = [a1 multicast];
    v59 = sub_9878C(a1);
    v61 = _swiftEmptyArrayStorage;
    v26 = sub_11B48C();
    v27 = 0;
    v15 = v25 & 0xC000000000000001;
    a2 = &off_1E2000;
    while (v26 != v27)
    {
      if (v15)
      {
        v28 = sub_16AD04();
      }

      else
      {
        if (v27 >= *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_9ED4(&qword_1E58E8);
        goto LABEL_2;
      }

      v14 = [v28 frequency];
      if (v14 == [a1 frequency])
      {
        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        v14 = &v61;
        sub_16AD44();
      }

      else
      {
      }

      ++v27;
    }

    v30 = v61;
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_16ACF4(48);

    v61 = 0x20646E756F46;
    v62 = 0xE600000000000000;
    sub_11B48C();
    v67._countAndFlagsBits = sub_16AE24();
    sub_16A744(v67);

    v31._countAndFlagsBits = 0xD000000000000026;
    sub_98860(v31, "\nCurrent multicast index: ");
    [a1 frequency];
    v68._countAndFlagsBits = sub_16AE24();
    sub_16A744(v68);

    v32 = v61;
    v33 = v62;
    sub_16A9A4();
    sub_98824();
    sub_386D8(v34, v35, v36, v37, v38, v39, 48, v32, v33);

    result = sub_11B48C();
    if (!result)
    {
LABEL_27:

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_16ACF4(49);

      sub_D434();
      v61 = 0xD000000000000015;
      v62 = v48;
      v69._countAndFlagsBits = sub_16AE24();
      sub_16A744(v69);

      v49._countAndFlagsBits = 0xD000000000000018;
      sub_98860(v49, "New multicast index: ");
      v50 = v59;

      sub_5758(&qword_1E5FA0, &qword_172DD0);
      v70._countAndFlagsBits = sub_16A694();
      sub_16A744(v70);

      v51 = v61;
      v52 = v62;
      sub_16A9A4();
      sub_98824();
      sub_386D8(v53, v54, v55, v56, v57, v58, 57, v51, v52);

      return v50;
    }

    v41 = result;
    if (result >= 1)
    {
      v42 = 0;
      v43 = &off_1E2000;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v44 = sub_16AD04();
        }

        else
        {
          v44 = *(v30 + 8 * v42 + 32);
        }

        v45 = v44;
        if ([v44 v43[246]] >= v60)
        {
        }

        else
        {

          v60 = [v45 v43[246]];
          v46 = [v45 identifier];
          if (v46)
          {
            v47 = v46;
            v59 = sub_16A664();
          }

          else
          {

            v59 = 0;
          }

          v43 = &off_1E2000;
        }

        ++v42;
      }

      while (v41 != v42);
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_96F74(void *a1)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  v4 = sub_5758(&qword_1E9268, &qword_172D50);
  sub_5370(v1 + v3, 1, 1, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CarMediaSourceFetcher(0);
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id sub_9701C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_97B00(Strong, 0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CarMediaSourceFetcher(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for CarMediaSourceFetcher(uint64_t a1)
{
  result = qword_1E9250;
  if (!qword_1E9250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_97144()
{
  sub_D2DC();
  v1[8] = v0;
  sub_5758(&qword_1E92D0, &qword_172DB8);
  v1[9] = swift_task_alloc();
  v2 = sub_5758(&qword_1E9268, &qword_172D50);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_97244);
}

uint64_t sub_97244()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  swift_beginAccess();
  sub_985C0(v3 + v4, v1);
  if (sub_9E2C(v1, 1, v2) == 1)
  {
    sub_98630(v0[9]);
  }

  else
  {
    v5 = v0[8];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    v6 = swift_allocError();
    sub_D434();
    *v7 = 0xD00000000000001BLL;
    v7[1] = v8;
    swift_storeEnumTagMultiPayload();
    v0[7] = v6;
    sub_16A854();
    sub_97728(v5);
    v9 = sub_98834();
    v10(v9);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_allocObject();
    v0[14] = v13;
    swift_unknownObjectWeakInit();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = swift_task_alloc();
    v0[16] = v15;
    v16 = sub_5758(&qword_1E92E8, &qword_172DC8);
    *v15 = v0;
    v15[1] = sub_974F4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD00000000000001DLL, 0x80000000001873B0, sub_98714, v14, v16);
  }

  else
  {

    v17 = v0[1];

    return v17(0, 0);
  }
}

uint64_t sub_974F4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v2 + 136) = v0;

  if (v0)
  {
    v6 = sub_97694;
  }

  else
  {

    v6 = sub_9760C;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_9760C()
{

  v1 = sub_98834();

  return v2(v1);
}

uint64_t sub_97694()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_97728(uint64_t a1)
{
  v2 = sub_5758(&qword_1E92D0, &qword_172DB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_5758(&qword_1E9268, &qword_172D50);
  sub_5370(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
  swift_beginAccess();
  sub_9871C(v4, a1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_97B00(Strong, 0);
}

void sub_9781C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_5758(&qword_1E92D0, &qword_172DB8);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_5758(&qword_1E9268, &qword_172D50);
    (*(*(v10 - 8) + 16))(v7, a1, v10);
    sub_5370(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    swift_beginAccess();
    sub_9871C(v7, v9 + v11);
    swift_endAccess();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_16ACF4(33);

    v21 = 0x6964644120959EE2;
    v22 = 0xAB0000000020676ELL;
    v12 = [v9 description];
    v13 = sub_16A664();
    v15 = v14;

    v23._countAndFlagsBits = v13;
    v23._object = v15;
    sub_16A744(v23);

    v24._object = 0x8000000000187310;
    v24._countAndFlagsBits = 0xD000000000000012;
    sub_16A744(v24);
    v20[1] = swift_unknownObjectWeakLoadStrong();
    sub_5758(&qword_1E92E0, &qword_172DC0);
    v25._countAndFlagsBits = sub_16A694();
    sub_16A744(v25);

    v16 = v21;
    v17 = v22;
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    v19 = sub_16A9A4();
    sub_386D8(v19, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000001DLL, 0x80000000001873B0, 91, v16, v17);

    [a3 registerObserver:v9];
  }
}

id sub_97B00(void *a1, char a2)
{
  v3 = v2;
  sub_16ACF4(50);

  v6 = [v2 description];
  v7 = sub_16A664();
  v9 = v8;

  v15._countAndFlagsBits = v7;
  v15._object = v9;
  sub_16A744(v15);

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x8000000000187310;
  sub_16A744(v16);
  swift_unknownObjectWeakLoadStrong();
  sub_5758(&qword_1E92E0, &qword_172DC0);
  v17._countAndFlagsBits = sub_16A694();
  sub_16A744(v17);

  v18._countAndFlagsBits = 0x61657220726F6620;
  v18._object = 0xED0000203A6E6F73;
  sub_16A744(v18);
  v10 = 0xEF736D6574496169;
  v11._countAndFlagsBits = 0x64654D7974706D65;
  switch(a2)
  {
    case 1:
      v10 = 0x8000000000187370;
      v11._countAndFlagsBits = 0xD000000000000011;
      break;
    case 2:
      break;
    case 3:
      v10 = 0x8000000000187330;
      v11._countAndFlagsBits = 0xD000000000000019;
      break;
    default:
      v10 = 0x8000000000187390;
      v11._countAndFlagsBits = 0xD000000000000018;
      break;
  }

  v11._object = v10;
  sub_16A744(v11);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD000000000000018, 0x8000000000187350, 97, 0x6F6D655220969EE2, 0xAD000020676E6976);

  if (a1)
  {
    return [a1 unregisterObserver:v3];
  }

  return result;
}

void sub_97DF4(uint64_t a1)
{
  sub_97E8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_97E8C(uint64_t a1)
{
  if (!qword_1E9260)
  {
    sub_37130(&qword_1E9268, &qword_172D50);
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1E9260);
    }
  }
}

uint64_t sub_97EF0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E9268, &qword_172D50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v44 - v8;
  v9 = sub_5758(&qword_1E92D0, &qword_172DB8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  if (a2)
  {
    v45 = v7;
    v15 = [a2 mediaItems];
    sub_98698();
    v16 = sub_16A7D4();

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_16ACF4(37);

    sub_D434();
    v49 = 0x1000000000000019;
    v50 = v17;
    v18 = [a1 description];
    v19 = sub_16A664();
    v21 = v20;

    v51._countAndFlagsBits = v19;
    v51._object = v21;
    sub_16A744(v51);

    v52._countAndFlagsBits = 0x203A736D65746920;
    v52._object = 0xE800000000000000;
    sub_16A744(v52);
    v47 = sub_11B48C();
    v53._countAndFlagsBits = sub_16AE24();
    sub_16A744(v53);

    v22 = v49;
    v23 = v50;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v24 = sub_16A584();
    sub_9DA0(v24, qword_1E65C0);
    v25 = sub_16A9A4();
    sub_386D8(v25, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000002ALL, 0x80000000001872A0, 117, v22, v23);

    v26 = a1;
    sub_97B00(a1, 3);
    v27 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    sub_98840();
    sub_985C0(v3 + v27, v14);
    if (sub_9E2C(v14, 1, v6))
    {

      v28 = v14;
      return sub_98630(v28);
    }

    (*(v45 + 16))(v46, v14, v6);
    sub_98630(v14);
    v47 = v16;
    v48 = a1;
    sub_16A864();
    v40 = sub_98834();
    return v41(v40);
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_16ACF4(29);

    sub_D434();
    v49 = 0xD00000000000001BLL;
    v50 = v29;
    v30 = [a1 description];
    v31 = sub_16A664();
    v33 = v32;

    v54._countAndFlagsBits = v31;
    v54._object = v33;
    sub_16A744(v54);

    v34 = v49;
    v35 = v50;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v36 = sub_16A584();
    sub_9DA0(v36, qword_1E65C0);
    v37 = sub_16A9A4();
    sub_386D8(v37, 0x800uLL, 0xD00000000000008DLL, 0x8000000000187210, 0xD00000000000002ALL, 0x80000000001872A0, 111, v34, v35);

    sub_97B00(a1, 2);
    v38 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin21CarMediaSourceFetcher_continuation;
    sub_98840();
    sub_985C0(v3 + v38, v12);
    if (sub_9E2C(v12, 1, v6))
    {
      v28 = v12;
      return sub_98630(v28);
    }

    (*(v7 + 16))(v46, v12, v6);
    sub_98630(v12);
    v47 = 0;
    v48 = 0;
    sub_16A864();
    v42 = sub_98834();
    return v43(v42);
  }
}

uint64_t sub_984E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_16A664();
  }
}

uint64_t sub_98534(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_98574(uint64_t result, int a2, int a3)
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

uint64_t sub_985C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_98630(uint64_t a1)
{
  v2 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_98698()
{
  result = qword_1E92D8;
  if (!qword_1E92D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E92D8);
  }

  return result;
}

uint64_t sub_986DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9871C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E92D0, &qword_172DB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_9878C(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_98840()
{

  return swift_beginAccess();
}

void sub_98860(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{

  a1._object = (a2 | 0x8000000000000000);
  sub_16A744(a1);
}

id sub_98878(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v17);
  if (v17[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E9378, &qword_172E58);
    if (swift_dynamicCast())
    {
      if (*(&v19 + 1))
      {
        sub_D124(&v18, v21);
        sub_D084(v21, v22);
        v4 = sub_991A4();
        v5(v4);
        v7 = v6;
        if (v6)
        {
          sub_47FC4();
          sub_95578();
          v7 = sub_955F8();
        }

        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v9 = v22;
        v10 = v23;
        sub_D084(v21, v22);
        v11 = [v8 initWithCarName:v7 signals:{(*(v10 + 16))(v9, v10)}];

        sub_1693E4();
        sub_955E4();
        (*(v12 + 8))(a1);
        sub_D13C(v21);
        return v11;
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    sub_99140(v17, &qword_1E5F80, &unk_16E7E0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
  }

  sub_99140(&v18, &qword_1E9370, &unk_172E48);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x80uLL, 0xD0000000000000A6, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 66, 0xD000000000000016, v2);
  sub_1693E4();
  sub_955E4();
  (*(v15 + 8))(a1);
  return 0;
}

id sub_98B04(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = a2;
  v29 = v3;
  swift_getObjectType();
  if (v6 > 0xF)
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_991BC();
    sub_99194();
    v17 = 17;
  }

  else
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v30);
    if (v30[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1E9378, &qword_172E58);
      if (swift_dynamicCast())
      {
        if (*(&v32 + 1))
        {
          sub_D124(&v31, v34);
          if (a2)
          {
            v7 = sub_16AE54();

            if ((v7 & 1) == 0)
            {
              v8 = [v29 carName];
              goto LABEL_24;
            }
          }

          else
          {
          }

          sub_D084(v34, v35);
          v20 = sub_991A4();
          v21(v20);
          v8 = v22;
          if (v22)
          {
            sub_47FC4();
            sub_95578();
            v8 = sub_955F8();
          }

          if ((a2 & 1) == 0 && (sub_16AE54() & 1) == 0)
          {
            v25 = [v29 signals];
            goto LABEL_25;
          }

LABEL_24:
          v23 = v35;
          v24 = v36;
          sub_D084(v34, v35);
          v25 = (*(v24 + 16))(v23, v24);
LABEL_25:
          v26 = [objc_allocWithZone(INActivateCarSignalIntent) initWithCarName:v8 signals:v25];

          v27 = swift_dynamicCastUnknownClass();
          if (!v27)
          {

            v27 = v29;
          }

          sub_D13C(v34);
          return v27;
        }
      }

      else
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
      }
    }

    else
    {
      sub_99140(v30, &qword_1E5F80, &unk_16E7E0);
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
    }

    sub_99140(&v31, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_991BC();
    sub_99194();
    v17 = 22;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v28);

  return v29;
}

id sub_98EBC(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  swift_getObjectType();
  v5 = [v23 carName];
  v6 = [v23 signals];
  if (v4 > 0xF)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_99194();
    sub_386D8(v11, v12, v13, v14, v15, v16, 42, v17, 0x8000000000186FF0);
  }

  else if (a2)
  {
    sub_16138(a1, v25);
    type metadata accessor for INCarSignalOptions(0);
    if (sub_991D0(v7, v8, v9, v7))
    {
      v6 = v24;
    }
  }

  else
  {
    sub_16138(a1, v25);
    v20 = sub_95578();
    if (sub_991D0(v20, v21, v22, v20))
    {

      v5 = v24;
    }
  }

  v18 = [objc_allocWithZone(INActivateCarSignalIntent) initWithCarName:v5 signals:v6];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v23;
  }

  return result;
}

double sub_990B0@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 <= 0xFu)
  {
    if (a1)
    {
      [v2 signals];
      v4 = sub_47FC4();
      type metadata accessor for INCarSignalOptions(v4);
LABEL_6:
      *(a2 + 24) = v5;
      *a2 = v2;
      return result;
    }

    if ([v2 carName])
    {
      sub_47FC4();
      v5 = sub_95578();
      goto LABEL_6;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_99140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_5758(a2, a3);
  sub_955E4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_991D0(uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

id sub_991F0(char *a1, char a2)
{
  v3 = v2;
  v32 = v3;
  swift_getObjectType();
  if ((a2 & 0xF0) == 0x20)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, v33);
    if (v33[3])
    {
      sub_5758(&qword_1E5F90, &qword_170270);
      sub_5758(&qword_1E9378, &qword_172E58);
      if (swift_dynamicCast())
      {
        if (*(&v35 + 1))
        {
          sub_D124(&v34, v37);
          v6 = [objc_allocWithZone(sub_16A4A4()) init];
          if (a2)
          {
            v7 = sub_16AE54();

            if ((v7 & 1) == 0)
            {
              v8 = [v32 carName];
              goto LABEL_22;
            }
          }

          else
          {
          }

          v21 = v38;
          v20 = v39;
          sub_D084(v37, v38);
          v22 = (*(*(v20 + 8) + 8))(v21);
          if (!v23)
          {
            v26 = 0;
LABEL_24:
            [v6 setCarName:v26];

            if (a2 & 1) != 0 || (sub_16AE54())
            {
              v27 = v38;
              v28 = v39;
              sub_D084(v37, v38);
              v29 = (*(v28 + 16))(v27, v28);
            }

            else
            {
              v29 = sub_995D4();
            }

            sub_99630(v29);
            v30 = swift_dynamicCastClass();
            if (!v30)
            {

              v30 = v32;
            }

            sub_D13C(v37);
            return v30;
          }

          v24 = v22;
          v25 = v23;
          sub_95578();
          v8 = sub_99BFC(v24, v25);
LABEL_22:
          v26 = v8;
          goto LABEL_24;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }
    }

    else
    {
      sub_99140(v33, &qword_1E5F80, &unk_16E7E0);
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
    }

    sub_99140(&v34, &qword_1E9370, &unk_172E48);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v18 = sub_16A584();
    sub_9DA0(v18, qword_1E65C0);
    sub_16A9A4();
    sub_99C80();
    sub_99C70();
    v17 = 22;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_99C80();
    sub_99C70();
    v17 = 17;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v17, v16, v31);

  return v32;
}

id sub_995D4()
{
  v1 = [v0 carSignal];
  if (!v1)
  {
    return &dword_0 + 1;
  }

  v2 = v1;
  v3 = [v1 unsignedIntegerValue];

  return v3;
}

void sub_99630(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  [v1 setCarSignal:v2];
}

id sub_996A0(uint64_t a1, char a2)
{
  swift_getObjectType();
  v4 = [v22 carName];
  v5 = sub_995D4();
  if ((a2 & 0xF0) == 0x20)
  {
    if (a2)
    {
      sub_16138(a1, v24);
      type metadata accessor for INCarSignalOptions(0);
      if (sub_991D0(v6, v7, v8, v6))
      {
        v5 = v23;
      }
    }

    else
    {
      sub_16138(a1, v24);
      v19 = sub_95578();
      if (sub_991D0(v19, v20, v21, v19))
      {

        v4 = v23;
      }
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    sub_16A9A4();
    sub_99C70();
    sub_386D8(v10, v11, v12, v13, v14, v15, 42, v16, 0x8000000000186FF0);
  }

  v17 = [objc_allocWithZone(sub_16A4A4()) init];
  [v17 setCarName:v4];
  sub_99630(v5);

  result = swift_dynamicCastClass();
  if (!result)
  {

    return v22;
  }

  return result;
}

double sub_99898@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x20)
  {
    if (a1)
    {
      v4 = sub_995D4();
      type metadata accessor for INCarSignalOptions(0);
LABEL_6:
      *(a2 + 24) = v5;
      *a2 = v4;
      return result;
    }

    v7 = [v2 carName];
    if (v7)
    {
      v4 = v7;
      v5 = sub_95578();
      goto LABEL_6;
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_99918(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v24);
  if (v24[3])
  {
    v2 = sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E9378, &qword_172E58);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        sub_D124(&v25, v28);
        v5 = [objc_allocWithZone(v1) init];
        v7 = v29;
        v6 = v30;
        sub_D084(v28, v29);
        v8 = *(v6 + 8);
        v9 = *(v8 + 8);
        v10 = v5;
        v11 = v9(v7, v8);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_95578();
          v15 = sub_99BFC(v13, v14);
        }

        else
        {
          v15 = 0;
        }

        [v10 setCarName:v15];

        v20 = v29;
        v21 = v30;
        sub_D084(v28, v29);
        v22 = (*(v21 + 16))(v20, v21);
        sub_99630(v22);

        sub_1693E4();
        sub_955E4();
        (*(v23 + 8))(a1);
        sub_D13C(v28);
        return v10;
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    sub_99140(v24, &qword_1E5F80, &unk_16E7E0);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  sub_99140(&v25, &qword_1E9370, &unk_172E48);
  sub_93C20();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v16 = sub_16A584();
  sub_9DA0(v16, qword_1E65C0);
  v17 = sub_16A9A4();
  sub_386D8(v17, 0x40000uLL, 0xD0000000000000A3, v2 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 64, 0xD000000000000016, v3);
  sub_1693E4();
  sub_955E4();
  (*(v18 + 8))(a1);
  return 0;
}

id sub_99BFC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_16A644();

  v4 = [v2 initWithSpokenPhrase:v3];

  return v4;
}

uint64_t sub_99C94()
{
  v1 = [v0 spokenPhrase];
  sub_16A664();

  sub_16A6E4();
}

uint64_t sub_99D0C()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v3 = sub_486C4();
  v4 = sub_9F438(v3);
  v5 = sub_9F420(v4);
  sub_D414(v5);
  *(v0 + 80) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_99DAC()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_132B1C(v0);
  sub_9F048();
  v1 = sub_9F300();
  sub_482AC(v1);
  v2 = sub_9F3C8();
  v3 = sub_9F2B0(v2);
  sub_9EFD8(v3);
  v4 = swift_task_alloc();
  v5 = sub_9F2E4(v4);
  *v5 = v6;
  sub_9EFBC(v5);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_99E54()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_93DF0();
    sub_D188(v7, v8, v9);
    sub_93DF0();
    sub_D188(v10, v11, v12);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v13);
  }

  else
  {
    sub_9F338();
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_99FE8()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_9A058()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v3 = sub_486C4();
  v4 = sub_9F438(v3);
  v5 = sub_9F420(v4);
  sub_D414(v5);
  *(v0 + 80) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_9A0F8()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_13067C();
  sub_9F048();
  v0 = sub_9F300();
  sub_482AC(v0);
  v1 = sub_9F3C8();
  v2 = sub_9F2B0(v1);
  sub_9EFD8(v2);
  v3 = swift_task_alloc();
  v4 = sub_9F2E4(v3);
  *v4 = v5;
  sub_9EFBC(v4);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_9A1A0()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_93DF0();
    sub_D188(v7, v8, v9);
    sub_93DF0();
    sub_D188(v10, v11, v12);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v13);
  }

  else
  {
    sub_9F338();
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_9A334()
{
  sub_D2DC();
  sub_9F368(v1);
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v2);
  v3 = sub_486C4();
  v4 = sub_9F438(v3);
  v5 = sub_9F420(v4);
  sub_D414(v5);
  *(v0 + 80) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_9A3D4()
{
  sub_10BC0();
  sub_D3A4();
  sub_9F034();
  sub_132B1C(v0);
  sub_9F048();
  v1 = sub_9F300();
  sub_482AC(v1);
  v2 = sub_9F3C8();
  v3 = sub_9F2B0(v2);
  sub_9EFD8(v3);
  v4 = swift_task_alloc();
  v5 = sub_9F2E4(v4);
  *v5 = v6;
  sub_9EFBC(v5);
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_9A47C(char a1)
{
  *(v1 + 104) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  sub_16A164();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_9A550);
}

uint64_t sub_9A550()
{
  sub_10BC0();
  sub_D3A4();
  sub_132B1C(v1);
  sub_9F048();
  v2 = sub_9F300();
  sub_482AC(v2);
  *(v0 + 80) = sub_9F3C8();
  v3 = sub_16A0C4();
  sub_9EFD8(v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_9A628;
  sub_10BD4();

  return sub_DEEF0();
}

uint64_t sub_9A628()
{
  sub_48638();
  sub_D3A4();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    sub_93DF0();
    sub_D188(v7, v8, v9);
    sub_93DF0();
    sub_D188(v10, v11, v12);
    sub_D388();
    sub_484AC();

    return _swift_task_switch(v13);
  }

  else
  {
    sub_9F278();
    sub_9F25C();

    sub_9F020();
    sub_484AC();

    return v17(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_9A7C0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_9A830(uint64_t a1)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = v1;
  return sub_D2B0();
}

uint64_t sub_9A844()
{
  sub_10824(v0[62], (v0 + 16));
  sub_5758(&qword_1E5F90, &qword_170270);
  v2 = sub_5758(&qword_1E9498, &qword_172F58);
  if (!sub_9F478(v2))
  {
    sub_9F4B0();
    sub_D188((v0 + 21), &qword_1E94A0, &unk_172F60);
    type metadata accessor for CarCommandsError(0);
    v9 = sub_11D28();
    sub_16924(v9);
    sub_9F3F8();
    v0[56] = v12;
    v0[57] = v13;
    sub_9F49C();
    v14._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v14);
    sub_16AD84();
    v15._countAndFlagsBits = v1 + 6;
    v15._object = 0x8000000000187920;
    sub_16A744(v15);
    sub_6B9BC(v0[56]);
    swift_willThrow();
    sub_9F0FC();
    sub_31534();

    __asm { BRAA            X2, X16 }
  }

  sub_9F500();
  swift_task_alloc();
  sub_D3E0();
  v0[64] = v3;
  *v3 = v4;
  sub_9F4EC(v3);
  sub_31534();

  return sub_13AB58(v5, v6);
}

uint64_t sub_9AA00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 520) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9AAF8()
{
  sub_D3A4();
  sub_D084(v0 + 26, v0[29]);
  sub_9F160();
  v5 = (v1 + *v1);
  swift_task_alloc();
  sub_D3E0();
  v0[66] = v2;
  *v2 = v3;
  v2[1] = sub_9AC04;
  sub_93DF0();

  return v5();
}

uint64_t sub_9AC04()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9ACFC()
{
  sub_D2DC();
  sub_D13C((v0 + 88));
  v1 = sub_9F0FC();

  return v2(v1);
}

uint64_t sub_9B060()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 552) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9B158()
{
  sub_D3A4();
  if (*(v0 + 432))
  {
    v1 = *(v0 + 504);
    sub_D124((v0 + 408), v0 + 368);
    if (*(v1 + 112) == 1)
    {
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 560) = v2;
      *v2 = v3;
      v4 = sub_9F4D8(v2);

      return sub_9DDD0(v4, v5);
    }

    else
    {
      *(v0 + 584) = *(v1 + 104);
      sub_9F22C();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 592) = v16;
      *v16 = v17;
      sub_9F1D0(v16);

      return sub_9E0F0();
    }
  }

  else
  {
    sub_D188(v0 + 408, &qword_1E9490, &unk_172F48);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    sub_48154(v7, qword_1E65C0);
    sub_9F390();
    sub_9F150();
    sub_386D8(v8, v9, v10, v11, v12, v13, 30, v14, v18);
    sub_9F200();
    sub_9F0CC();

    return v15(0);
  }
}

uint64_t sub_9B338()
{
  sub_10BC0();
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  sub_D358();
  v7 = v6;
  sub_10AA4();
  *v8 = v7;
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v7 + 568) = v0;

  if (!v0)
  {
    *(v7 + 610) = v3;
    *(v7 + 576) = v5;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v11);
}

uint64_t sub_9B44C()
{
  sub_D3A4();
  v1 = *(v0 + 610);
  v2 = *(v0 + 504);
  *(v2 + 104) = *(v0 + 576);
  *(v2 + 112) = v1 & 1;
  if (v1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v3 = sub_16A584();
    sub_48154(v3, qword_1E65C0);
    sub_9F390();
    sub_9F150();
    sub_386D8(v4, v5, v6, v7, v8, v9, 37, v10, v15);
    sub_9F10C();
    sub_9F0CC();

    return v11(0);
  }

  else
  {
    *(v0 + 584) = *(v0 + 576);
    sub_9F22C();
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 592) = v13;
    *v13 = v14;
    sub_9F1D0(v13);

    return sub_9E0F0();
  }
}

uint64_t sub_9B5A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v4;
  *(v2 + 600) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_9B6A8()
{
  sub_30984();
  v1 = *(v0 + 608);
  if ((v1 & 0x100) != 0)
  {
    v4 = *(v0 + 584);
    sub_16ACF4(80);
    v29._countAndFlagsBits = 0xD000000000000040;
    v29._object = 0x8000000000187A80;
    sub_16A744(v29);
    *(v0 + 480) = v4;
    v30._countAndFlagsBits = sub_16AE24();
    sub_16A744(v30);

    v31._countAndFlagsBits = 0x203D3E2073692029;
    v31._object = 0xEC000000203A3039;
    sub_16A744(v31);
    v17 = v4 <= 89;
    LOBYTE(v4) = v4 > 89;
    if (v17)
    {
      v18._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v18._countAndFlagsBits = 1702195828;
    }

    if (v17)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v18._object = v19;
    sub_16A744(v18);

    v8 = 0;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v20 = sub_16A584();
    sub_9F450(v20, qword_1E65C0);
    v23 = 0xE000000000000000;
    sub_9F150();
    v16 = 46;
  }

  else
  {
    v2 = *(v0 + 584);
    v3 = (v2 - v1) / v1 > 0.3;
    sub_16ACF4(62);
    *(v0 + 464) = 0;
    *(v0 + 472) = 0xE000000000000000;
    v25._countAndFlagsBits = 0xD000000000000017;
    v25._object = 0x8000000000187AD0;
    sub_16A744(v25);
    sub_16A8D4();
    v26._countAndFlagsBits = 0xD000000000000010;
    v26._object = 0x8000000000187AF0;
    sub_16A744(v26);
    *(v0 + 488) = v2;
    v27._countAndFlagsBits = sub_16AE24();
    sub_16A744(v27);

    v28._countAndFlagsBits = 0xD000000000000011;
    v28._object = 0x8000000000187B10;
    sub_16A744(v28);
    LODWORD(v4) = v3 && v2 > 89;
    if (v4)
    {
      v5._countAndFlagsBits = 1702195828;
    }

    else
    {
      v5._countAndFlagsBits = 0x65736C6166;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    v5._object = v6;
    sub_16A744(v5);

    v8 = *(v0 + 464);
    v7 = *(v0 + 472);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v9 = sub_16A584();
    sub_9F450(v9, qword_1E65C0);
    v23 = v7;
    sub_9F150();
    v16 = 43;
  }

  sub_386D8(v10, v11, v12, v13, v14, v15, v16, v8, v23);

  sub_9F10C();
  sub_9F0CC();

  return v21(v4 & 1);
}

uint64_t sub_9BA00()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  sub_D13C((v0 + 88));
  v1 = sub_9F0FC();

  return v2(v1);
}

uint64_t sub_9BA64()
{
  sub_D2DC();
  sub_9F200();
  sub_D13C((v0 + 88));
  v1 = sub_9F0FC();

  return v2(v1);
}

uint64_t sub_9BAC4()
{
  sub_D2DC();
  sub_9F10C();
  sub_D13C((v0 + 88));
  v1 = sub_9F0FC();

  return v2(v1);
}

uint64_t sub_9BB24()
{
  sub_D2DC();
  sub_9F10C();
  sub_D13C((v0 + 88));
  v1 = sub_9F0FC();

  return v2(v1);
}

uint64_t sub_9BB84(uint64_t a1)
{
  *(v2 + 656) = v1;
  *(v2 + 648) = a1;
  return sub_D2B0();
}

uint64_t sub_9BB9C()
{
  sub_10824(v0[81], (v0 + 16));
  sub_5758(&qword_1E5F90, &qword_170270);
  v2 = sub_5758(&qword_1E9498, &qword_172F58);
  if (!sub_9F478(v2))
  {
    sub_9F4B0();
    sub_D188((v0 + 21), &qword_1E94A0, &unk_172F60);
    type metadata accessor for CarCommandsError(0);
    v9 = sub_11D28();
    sub_16924(v9);
    sub_9F3F8();
    v0[74] = v12;
    v0[75] = v13;
    sub_9F49C();
    v14._countAndFlagsBits = 0xD000000000000016;
    sub_16A744(v14);
    sub_16AD84();
    v15._countAndFlagsBits = v1 + 6;
    v15._object = 0x8000000000187920;
    sub_16A744(v15);
    sub_6B9BC(v0[74]);
    swift_willThrow();
    sub_D37C();
    sub_31534();

    __asm { BRAA            X1, X16 }
  }

  sub_9F500();
  swift_task_alloc();
  sub_D3E0();
  v0[83] = v3;
  *v3 = v4;
  sub_9F4EC(v3);
  sub_31534();

  return sub_13AB58(v5, v6);
}

uint64_t sub_9BD60()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 672) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9BE58()
{
  sub_D3A4();
  sub_D084(v0 + 26, v0[29]);
  sub_9F160();
  v5 = (v1 + *v1);
  swift_task_alloc();
  sub_D3E0();
  v0[85] = v2;
  *v2 = v3;
  v2[1] = sub_9BF64;
  sub_93DF0();

  return v5();
}

uint64_t sub_9BF64()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 688) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9C17C()
{
  sub_30984();
  if (*(v0 + 352))
  {
    sub_D084((v0 + 328), *(v0 + 352));
    sub_9F22C();
    sub_93DF0();
    v1();
    sub_D13C((v0 + 328));
    if (*(v0 + 312))
    {
      v2 = *(v0 + 656);
      sub_D124((v0 + 288), v0 + 248);
      v3 = sub_D084((v2 + 64), *(v2 + 88));
      sub_5758(&qword_1E83E0, &unk_170410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D9A0;
      v5 = *(v0 + 272);
      v6 = *(v0 + 280);
      v7 = sub_D084((v0 + 248), v5);
      *(inited + 56) = v5;
      *(inited + 64) = *(v6 + 8);
      v8 = sub_10888((inited + 32));
      v9.n128_f64[0] = (*(*(v5 - 8) + 16))(v8, v7, v5);
      v10 = sub_948E4(inited, *v3, v9);
      swift_setDeallocating();
      sub_EFFF4();
      v11 = v10[2];

      if (v11)
      {
        swift_task_alloc();
        sub_D3E0();
        *(v0 + 696) = v12;
        *v12 = v13;
        v14 = sub_9F4C4(v12);

        return sub_9E6CC(v14, v15);
      }

      else
      {
        if (qword_1E58E8 != -1)
        {
          sub_9ED4(&qword_1E58E8);
        }

        v27 = *(v0 + 656);
        v28 = sub_16A584();
        sub_48154(v28, qword_1E65C0);
        sub_9F3AC();
        sub_57C04();
        sub_386D8(v29, v30, v31, v32, v33, v34, 63, v35, v40);
        v36 = *(v2 + 88);
        v37 = *(v27 + 96);
        sub_D084((v2 + 64), v36);
        v38 = *(v37 + 8);
        v41 = (*(v38 + 40) + **(v38 + 40));
        v39 = swift_task_alloc();
        *(v0 + 784) = v39;
        *v39 = v0;
        v39[1] = sub_9D034;

        return v41(v36, v38);
      }
    }
  }

  else
  {
    sub_D188(v0 + 328, &qword_1E9490, &unk_172F48);
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
  }

  sub_9F2CC();
  sub_D188(v0 + 288, &qword_1E94A8, &qword_172F78);
  sub_16ACF4(27);
  *(v0 + 624) = 0;
  *(v0 + 632) = 0xE000000000000000;
  v43._countAndFlagsBits = sub_9F0EC();
  sub_16A744(v43);
  *(v0 + 840) = sub_9F22C();
  sub_16AD84();
  v17 = *(v0 + 624);
  v18 = *(v0 + 632);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v19 = sub_16A584();
  sub_9F450(v19, qword_1E65C0);
  sub_57C04();
  sub_386D8(v20, v21, v22, v23, v24, v25, 59, v17, v18);

  v26 = swift_task_alloc();
  *(v0 + 800) = v26;
  *v26 = v0;
  v26[1] = sub_9D18C;

  return sub_12FC08();
}

uint64_t sub_9C66C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 704) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9C764()
{
  if (*(v0 + 432))
  {
    v1 = *(v0 + 656);
    sub_D124((v0 + 408), v0 + 368);
    if (*(v1 + 112) == 1)
    {
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 712) = v2;
      *v2 = v3;
      v4 = sub_9F4D8(v2);

      return sub_9DDD0(v4, v5);
    }

    else
    {
      sub_9F22C();
      swift_task_alloc();
      sub_D3E0();
      *(v0 + 736) = v18;
      *v18 = v19;
      v20 = sub_9F19C(v18);

      return sub_9E37C(v20, v21, v22);
    }
  }

  else
  {
    sub_D188(v0 + 408, &qword_1E9490, &unk_172F48);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v7 = sub_16A584();
    sub_48154(v7, qword_1E65C0);
    sub_57C04();
    sub_386D8(v8, v9, v10, v11, v12, v13, 67, v14, 0x8000000000187960);
    sub_89054(&dword_179BF8);
    v15 = swift_task_alloc();
    *(v0 + 768) = v15;
    *v15 = v0;
    v16 = sub_9EFA4(v15);

    return v17(v16);
  }
}

uint64_t sub_9C994()
{
  sub_10BC0();
  sub_D3A4();
  v3 = v2;
  v5 = v4;
  sub_D358();
  v7 = v6;
  sub_10AA4();
  *v8 = v7;
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v7 + 720) = v0;

  if (!v0)
  {
    *(v7 + 841) = v3;
    *(v7 + 728) = v5;
  }

  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v11);
}

uint64_t sub_9CAA8(uint64_t a1)
{
  v2 = *(v1 + 841);
  v3 = *(v1 + 656);
  *(v3 + 104) = *(v1 + 728);
  *(v3 + 112) = v2 & 1;
  if (v2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v4 = sub_16A584();
    sub_48154(v4, qword_1E65C0);
    sub_9F3AC();
    sub_57C04();
    sub_386D8(v5, v6, v7, v8, v9, v10, 74, v11, v21);
    sub_89054(&dword_179BF8);
    v12 = swift_task_alloc();
    *(v1 + 752) = v12;
    *v12 = v1;
    v13 = sub_9EFA4(v12);

    return v14(v13);
  }

  else
  {
    sub_9F22C();
    swift_task_alloc();
    sub_D3E0();
    *(v1 + 736) = v16;
    *v16 = v17;
    v18 = sub_9F19C(v16);

    return sub_9E37C(v18, v19, v20);
  }
}

uint64_t sub_9CC38()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[56] = v1;
  v2[57] = v4;
  v2[58] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 744) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9CD34()
{
  sub_D2DC();
  sub_9F10C();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_9CD8C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[59] = v1;
  v2[60] = v4;
  v2[61] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 760) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9CE88()
{
  sub_D2DC();
  sub_9F10C();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_9CEE0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[62] = v1;
  v2[63] = v4;
  v2[64] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 776) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9CFDC()
{
  sub_D2DC();
  sub_9F200();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_9D034()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[65] = v1;
  v2[66] = v4;
  v2[67] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 792) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9D134()
{
  sub_D2DC();
  sub_9F200();
  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_9D18C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[68] = v1;
  v2[69] = v4;
  v2[70] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 808) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9D28C()
{
  sub_D2DC();
  sub_D13C((v0 + 208));
  v1 = sub_9F080();

  return v2(v1);
}

uint64_t sub_9D2E8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[71] = v1;
  v2[72] = v4;
  v2[73] = v0;
  sub_71940();
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 832) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_9D3E8()
{
  sub_D2DC();

  v0 = sub_9F080();

  return v1(v0);
}

uint64_t sub_9DD6C()
{
  sub_D2DC();

  sub_D13C((v0 + 88));
  sub_D37C();

  return v1();
}

uint64_t sub_9DDD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_D2B0();
}

uint64_t sub_9E0F0()
{
  sub_D2DC();
  v2 = v1;
  *(v0 + 112) = v3;
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_9E188;

  return sub_9E6CC(v0 + 56, v2);
}

uint64_t sub_9E188()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9E280()
{
  if (*(v0 + 80))
  {
    sub_D124((v0 + 56), v0 + 16);
    sub_D084((v0 + 16), *(v0 + 40));
    sub_93DF0();
    v2 = v1();
    sub_D13C((v0 + 16));
    sub_30AEC();

    return v3(v2 & 0x1FF);
  }

  else
  {
    result = sub_D188(v0 + 56, &qword_1E9490, &unk_172F48);
    __break(1u);
  }

  return result;
}

uint64_t sub_9E37C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 66) = a2;
  *(v4 + 32) = a1;
  return sub_D2B0();
}

uint64_t sub_9E398()
{
  sub_30984();
  v4 = *(v2 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 <= 0xFF)
  {
    v3 = 0xD000000000000013;
    v5 = *(v2 + 66);
    sub_16ACF4(33);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0xE000000000000000;
    v15._object = 0x8000000000187890;
    v15._countAndFlagsBits = 0xD000000000000013;
    sub_16A744(v15);
    *(v2 + 64) = v5;
    sub_16AD84();
    v16._countAndFlagsBits = 0x74206C6576656C20;
    v16._object = 0xEA0000000000206FLL;
    sub_16A744(v16);
    *(v2 + 65) = v4;
    v17._countAndFlagsBits = sub_16AE24();
    sub_16A744(v17);

    v0 = *(v2 + 16);
    v1 = *(v2 + 24);
    if (qword_1E58E8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  sub_9ED4(&qword_1E58E8);
LABEL_4:
  v6 = *(v2 + 32);
  v7 = *(v2 + 66);
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  sub_386D8(v9, 0x400uLL, v3 + 101, 0x8000000000187780, v3 + 29, 0x8000000000187850, 137, v0, v1);

  v10 = v6[3];
  v11 = v6[4];
  sub_D084(v6, v10);
  (*(v11 + 8))(v7, v4, v10, v11);
  v12 = swift_task_alloc();
  *(v2 + 56) = v12;
  *v12 = v2;
  v12[1] = sub_9E5E0;

  return sub_9EA44();
}

uint64_t sub_9E5E0()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_9E6CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_D2B0();
}

uint64_t sub_9E6E0()
{
  sub_D3A4();
  sub_D084(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_9F160();
  v5 = (v1 + *v1);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 72) = v2;
  *v2 = v3;
  v2[1] = sub_9E7EC;
  sub_93DF0();

  return v5();
}

uint64_t sub_9E7EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_9EA28(uint64_t result, char a2)
{
  v2 = result & ~(result >> 63);
  if (v2 >= 100)
  {
    v2 = 100;
  }

  if ((a2 & 1) == 0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_9EA44()
{
  sub_D2DC();
  v1 = sub_16A164();
  sub_D414(v1);
  *(v0 + 16) = sub_D3C8();
  v2 = sub_D388();

  return _swift_task_switch(v2);
}

uint64_t sub_9EAB8()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 24) = sub_16A0F4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_9EB70;

  return sub_E0A94();
}

uint64_t sub_9EB70()
{
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_9F020();

    return v9(v8);
  }
}

uint64_t sub_9ECA4()
{
  sub_D13C((v0 + 24));
  sub_D13C((v0 + 64));

  return _swift_deallocClassInstance(v0, 113, 7);
}

uint64_t sub_9ED14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_9EDAC;

  return sub_9A830(a1);
}

uint64_t sub_9EDAC()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D254();
  *v5 = v4;

  sub_30AEC();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_9EEA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88ED0;

  return sub_9BB84(a1);
}

void sub_9EF6C(os_log_type_t a1)
{

  sub_386D8(a1, 0x400uLL, v3 + 102, v5 | 0x8000000000000000, 0xD000000000000012, (v4 | 0x8000000000000000), 79, v2, v1);
}

uint64_t sub_9EFD8(uint64_t a1)
{
  sub_5370(v1, 1, 1, a1);

  return sub_5370(v2, 1, 1, a1);
}

uint64_t sub_9F048()
{
  sub_D084((v0 + 16), *(v0 + 40));

  return sub_D2B90(0, v1);
}

void sub_9F0A8()
{
  *(v1 + 816) = v0;

  sub_16ACF4(27);
}

uint64_t sub_9F10C()
{
  sub_D13C(v0 + 46);
  sub_D13C(v0 + 31);

  return sub_D13C(v0 + 26);
}

uint64_t sub_9F200()
{
  sub_D13C((v0 + 248));

  return sub_D13C((v0 + 208));
}

unint64_t sub_9F22C()
{
  v1 = sub_D084((v0 + 88), *(v0 + 112));

  return sub_8B260(v1);
}

uint64_t sub_9F25C()
{

  return sub_D188(v0, v1, v2);
}

uint64_t sub_9F278()
{

  return sub_D188(v0, v1, v2);
}

uint64_t sub_9F294()
{

  return sub_16A584();
}

uint64_t sub_9F2B0(uint64_t a1)
{
  *(v1 + 88) = a1;

  return sub_16A0C4();
}

uint64_t sub_9F300()
{
  sub_D13C((v0 + 16));

  return type metadata accessor for CarCommandsCATsSimple(0);
}

uint64_t sub_9F368(uint64_t result)
{
  *(v2 + 56) = v1;
  *(v2 + 112) = result;
  return result;
}

uint64_t sub_9F3C8()
{

  return sub_16A0F4();
}

uint64_t sub_9F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16AD84();
}

void sub_9F3F8()
{

  sub_16ACF4(52);
}

uint64_t sub_9F420(uint64_t a1)
{
  *(v1 + 72) = a1;

  return sub_16A164();
}

uint64_t sub_9F438(uint64_t a1)
{
  *(v1 + 64) = a1;

  return swift_task_alloc();
}

uint64_t sub_9F450(uint64_t a1, uint64_t a2)
{
  sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_9F478(uint64_t a1)
{

  return swift_dynamicCast();
}

double sub_9F4B0()
{
  result = 0.0;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  return result;
}

uint64_t sub_9F52C@<X0>(uint64_t a1@<X8>)
{
  sub_9F59C();
  if (v2)
  {
    sub_16A6E4();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_16A0C4();

  return sub_5370(a1, v3, 1, v4);
}

uint64_t sub_9F59C()
{
  v1 = [v0 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v3)
  {
    return 0x656C6269647561;
  }

  return 0x656C6269736976;
}

uint64_t SEDeactivateSignalIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_9F688()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  v2 = sub_37484();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_601B4;

  return v4(v1, 4);
}

uint64_t sub_9F764(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEDeactivateSignalIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_9F83C()
{
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  sub_386D8(v3, 0x60000uLL, 0xD0000000000000B9, 0x8000000000187B60, 0xD000000000000016, 0x8000000000183640, 24, 0xD000000000000015, 0x8000000000183660);
  v4 = [v1 carSignal];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  sub_16A364();
  v7 = [swift_getObjCClassFromMetadata() successWithResolvedValue:v6];
  sub_30AEC();

  return v8();
}

uint64_t sub_9F9C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.resolveCarSignal(for:)(v6);
}

uint64_t SEDeactivateSignalIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_9FA9C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_9FB5C;

  return v4(v1, 0, 0);
}

uint64_t sub_9FB5C()
{
  sub_D2DC();
  sub_D358();
  sub_A0408(v1, v2);
  v4 = *(v3 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_9FC64);
}

uint64_t sub_9FC64()
{
  sub_D2DC();
  sub_16A514();
  sub_16A504();
  sub_30AEC();

  return v0();
}

uint64_t sub_9FD08(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.confirm(intent:)(v6);
}

uint64_t SEDeactivateSignalIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_9FDE0()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_9FEA0;

  return v4(0, v1, 0);
}

uint64_t sub_9FEA0()
{
  sub_D2DC();
  sub_D358();
  sub_A0408(v1, v2);
  v4 = *(v3 + 56);
  v5 = *v0;
  sub_D254();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_9FFA8);
}

uint64_t sub_9FFA8()
{
  sub_D2DC();
  sub_16A514();
  sub_16A504();
  sub_30AEC();

  return v0();
}

uint64_t sub_A004C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEDeactivateSignalIntentHandler.handle(intent:)(v6);
}

id SEDeactivateSignalIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEDeactivateSignalIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A01BC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A024C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A02DC()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A036C()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v3 = sub_120FC(v1);

  return v4(v3);
}

uint64_t sub_A0408(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = result;
  *(v2 + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarDefrosterTypeNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xA04ECLL);
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

unint64_t sub_A0528()
{
  result = qword_1E94E0;
  if (!qword_1E94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94E0);
  }

  return result;
}

unint64_t sub_A057C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D2B58;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A05C8(char a1)
{
  if (!a1)
  {
    return 0x746E6F7266;
  }

  if (a1 == 1)
  {
    return 1918985586;
  }

  return 7105633;
}

unint64_t sub_A0630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A057C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_A0660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_A05C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_A069C(uint64_t a1, uint64_t a2)
{
  v4 = sub_A0828();
  v5 = sub_A087C();
  v6 = sub_A08D0();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_A0714()
{
  result = qword_1E94E8;
  if (!qword_1E94E8)
  {
    sub_37130(&qword_1E94F0, &qword_173170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94E8);
  }

  return result;
}

unint64_t sub_A077C()
{
  result = qword_1E94F8;
  if (!qword_1E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E94F8);
  }

  return result;
}

unint64_t sub_A07D4()
{
  result = qword_1E9500;
  if (!qword_1E9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9500);
  }

  return result;
}

unint64_t sub_A0828()
{
  result = qword_1E9508;
  if (!qword_1E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9508);
  }

  return result;
}

unint64_t sub_A087C()
{
  result = qword_1E9510;
  if (!qword_1E9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9510);
  }

  return result;
}

unint64_t sub_A08D0()
{
  result = qword_1E9518;
  if (!qword_1E9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E9518);
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetDefrosterCATsSimple(uint64_t a1)
{
  result = qword_1E9520;
  if (!qword_1E9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A09B0(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 64) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v3 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_A0A50);
}

uint64_t sub_A0A50()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_16D3A0;
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000000187E20;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  strcpy((v4 + 80), "defrosterType");
  *(v4 + 94) = -4864;
  sub_2F868(v2, v1, &qword_1E6300, &qword_16ECE0);
  v5 = sub_16A0C4();
  v6 = sub_9E2C(v1, 1, v5);
  v7 = *(v0 + 32);
  if (v6 == 1)
  {
    sub_D188(*(v0 + 32), &qword_1E6300, &qword_16ECE0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v5;
    v8 = sub_10888((v4 + 96));
    (*(*(v5 - 8) + 32))(v8, v7, v5);
  }

  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_31B04;

  return v11(0xD00000000000002DLL, 0x8000000000187E40, v4);
}

uint64_t sub_A0CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_2F868(a1, &v15 - v12, &qword_1E5B48, &unk_16DDB0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_D188(a1, &qword_1E5B48, &unk_16DDB0);
  return v13;
}

uint64_t sub_A0E24(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id sub_A0F2C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_11CC54(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_A0FC8()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = type metadata accessor for GetClimateStatusParameters(0);
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_A109C()
{
  v54 = v0;
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E97B8, &unk_173440);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD00000000000009CLL;
  v0[32] = 0x8000000000187EC0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  v5 = sub_15AE4(v4);
  v7 = v6;

  if (v7)
  {
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    sub_16A744(v55);
    v56._countAndFlagsBits = 0xD000000000000025;
    v56._object = 0x8000000000182560;
    sub_16A744(v56);
    v8 = v5;
    v1 = v7;
  }

  else
  {
    v8 = 0xD000000000000025;
  }

  v52 = v8;
  v53._countAndFlagsBits = 58;
  v53._object = 0xE100000000000000;
  v0[35] = 27;
  v57._countAndFlagsBits = sub_16AE24();
  sub_16A744(v57);

  sub_16A744(v53);

  v9._countAndFlagsBits = sub_378D0(0x2002uLL);
  if (v9._object)
  {
    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    sub_16A744(v9);

    v58._countAndFlagsBits = 32;
    v58._object = 0xE100000000000000;
    sub_16A744(v58);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v3))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v52, v1, &v53._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v3, "%s", v11, 0xCu);
    sub_D13C(v12);
  }

  else
  {
  }

  v14 = v0[38];
  swift_beginAccess();
  sub_D084((v14 + 136), *(v14 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v16 = v15;

    v0[43] = v16;
    if (v16)
    {
      v17 = sub_169084();
      v18 = [v17 enabled];

      if (v18)
      {
        [v18 BOOLValue];

        v19 = sub_1690A4();
        v0[44] = [v19 carName];

        v20 = sub_1690A4();
        v21 = [v20 isGetCarActivationStatusRequest];

        if (v21)
        {
          [v21 BOOLValue];
        }

        v49 = v0[38];
        type metadata accessor for ClimateStatusSnippetFactory();
        swift_beginAccess();
        sub_10824(v49 + 184, (v0 + 17));
        v50 = swift_task_alloc();
        v0[45] = v50;
        *v50 = v0;
        v50[1] = sub_584A8;
        sub_D2C0();

        return sub_112F7C();
      }
    }

    type metadata accessor for CarCommandsError(0);
    sub_A259C(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    *v46 = 0xD00000000000002DLL;
    v46[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v22 = sub_1690A4();
  v0[47] = v22;
  v23 = sub_169084();
  v0[48] = v23;
  v24 = [v22 carName];
  if (v24)
  {
    v25 = v24;
    sub_99C94();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v0[40];
  v28 = sub_16A0C4();
  sub_5370(v27, v26, 1, v28);
  v29 = [v23 enabled];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 BOOLValue];
  }

  else
  {
    v31 = 2;
  }

  sub_169094();
  sub_16A1B4();
  v33 = v32;

  if (v33)
  {
    sub_16A6E4();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  sub_5370(v0[39], v34, 1, v28);
  v35 = sub_1690A4();
  v36 = [v35 isGetCarActivationStatusRequest];

  if (v36)
  {
    v37 = [v36 BOOLValue];
  }

  else
  {
    v37 = 2;
  }

  v39 = v0[41];
  v38 = v0[42];
  v40 = v0[39];
  v41 = v0[38];
  sub_16304(v0[40], v38);
  *(v38 + v39[5]) = v31;
  sub_16304(v40, v38 + v39[6]);
  *(v38 + v39[7]) = v37;
  sub_D084((v41 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns), *(v41 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns + 24));
  v42 = swift_task_alloc();
  v0[49] = v42;
  *v42 = v0;
  v42[1] = sub_A1878;
  sub_D2C0();

  return sub_156AF0(v43);
}

uint64_t sub_A1878()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 400) = v1;
  *(v2 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_A1980()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_A1A3C;

  return sub_11A570();
}

uint64_t sub_A1A3C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_A1B44()
{
  sub_1696C();
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  sub_A2540(v2);

  sub_D37C();

  return v3();
}

uint64_t sub_A1BD4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_A2540(v3);
  sub_D250((v0 + 56), v4);

  sub_D37C();

  return v5();
}

uint64_t sub_A1C7C()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  sub_A2540(v3);

  sub_D37C();

  return v4();
}

void sub_A1D14()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

void *sub_A1D54()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40GetClimateStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_A1D9C()
{
  v0 = sub_A1D54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E95A0;
  if (!qword_1E95A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A1E90(uint64_t a1)
{
  result = sub_A259C(&qword_1E97B0, type metadata accessor for GetClimateStatusHandleIntentFlowStrategy, &unk_173360);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A2078()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_A2138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_A0FC8();
}

uint64_t sub_A21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A22AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  ClimateStatusHandleIntentFlowStrategy = type metadata accessor for GetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, ClimateStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_A243C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_44E0C();
}

uint64_t sub_A2540(uint64_t a1)
{
  ClimateStatusParameters = type metadata accessor for GetClimateStatusParameters(0);
  (*(*(ClimateStatusParameters - 8) + 8))(a1, ClimateStatusParameters);
  return a1;
}

uint64_t sub_A259C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_A25E4()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40SetClimateStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_119F28(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_A2680()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_16A164();
  v1[39] = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_A2780()
{
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62D8, &qword_16D898);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD000000000000096;
  v0[32] = 0x8000000000187FB0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v75._countAndFlagsBits = 0xD000000000000025;
    v75._object = 0x8000000000182560;
    sub_16A744(v75);
    v7 = v70;
    v1 = v73;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  v67 = v7;
  v0[35] = 18;
  v76._countAndFlagsBits = sub_16AE24();
  sub_16A744(v76);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v67, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v68, v69, v71, v74);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v72, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v72);
    sub_D494(v72);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[38];
  sub_3CF7C(v33 + 136, (v0 + 22));
  sub_D084((v33 + 136), *(v33 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v35 = v34;

    v0[44] = v35;
    if (v35)
    {
      v36 = sub_1690A4();
      v37 = [v36 enabled];

      if (v37)
      {
        v38 = v0[38];
        [v37 BOOLValue];

        type metadata accessor for ClimateStatusSnippetFactory();
        v39 = sub_1690A4();
        v0[45] = [v39 carName];

        sub_3CF7C(v38 + 184, (v0 + 28));
        sub_10824(v38 + 184, (v0 + 17));
        v40 = swift_task_alloc();
        v0[46] = v40;
        *v40 = v0;
        v40[1] = sub_A2E38;
        sub_D2C0();

        return sub_112F7C();
      }
    }

    type metadata accessor for CarCommandsError(0);
    sub_A4338();
    v63 = sub_A4294(v61, v62, &unk_17A85C);
    sub_5A144(v63);
    *v64 = 0xD00000000000002DLL;
    v64[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v43 = sub_1690A4();
  v44 = [v43 enabled];

  if (v44)
  {
    sub_16A834();
  }

  v45 = sub_1690A4();
  v46 = [v45 carName];
  v0[48] = v46;

  sub_169094();
  sub_16A1B4();
  v48 = v47;

  if (v46)
  {
    v49 = v46;
    sub_99C94();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v0[41];
  v52 = sub_16A0C4();
  v53 = 1;
  sub_5370(v51, v50, 1, v52);
  if (v48)
  {
    sub_16A6E4();

    v53 = 0;
  }

  v55 = v0[42];
  v54 = v0[43];
  v57 = v0[40];
  v56 = v0[41];
  sub_5370(v57, v53, 1, v52);
  *v54 = 2;
  sub_16304(v56, &v54[*(v55 + 20)]);
  sub_16304(v57, &v54[*(v55 + 24)]);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[49] = sub_16A094();
  v58 = swift_task_alloc();
  v0[50] = v58;
  *v58 = v0;
  v58[1] = sub_A2FE4;
  sub_D2C0();

  return sub_157580(v59);
}

uint64_t sub_A2E38()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 376) = v0;

  v6 = *(v2 + 360);
  sub_D13C((v3 + 136));

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_A2FE4()
{
  sub_1696C();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v7 + 408) = v6;
  *(v7 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_A3110()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  sub_3CF7C(v1 + 184, v0 + 200);
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_A31C4;

  return sub_11A570();
}

uint64_t sub_A31C4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_A32C8()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);

  sub_A42DC(v2);
  sub_D250((v0 + 56), v3);

  sub_D37C();

  return v4();
}

uint64_t sub_A3378()
{
  sub_1696C();
  sub_A4350();

  sub_D37C();

  return v0();
}

uint64_t sub_A33F0()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_A42DC(v1);
  sub_A4350();

  sub_D37C();

  return v2();
}

uint64_t sub_A347C()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);

  sub_A42DC(v2);
  sub_A4350();

  sub_D37C();

  return v3();
}

uint64_t sub_A3510(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4);
}

uint64_t sub_A3540()
{
  sub_10824(v0[25] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62D8, &qword_16D898);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[18] = 0xD000000000000096;
  v0[19] = 0x8000000000187FB0;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v56._countAndFlagsBits = 0xD00000000000002DLL;
    v56._object = 0x8000000000185C90;
    sub_16A744(v56);
    v7 = v51;
    v1 = v54;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  v48 = v7;
  v0[22] = 53;
  v57._countAndFlagsBits = sub_16AE24();
  sub_16A744(v57);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v48, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v49, v50, v52, v55);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v53, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v53);
    sub_D494(v53);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[25];
  if (*(v33[28] + 16) != 1 || (sub_3CF7C((v33 + 17), (v0 + 12)), sub_D084(v33 + 17, v33[20]), (sub_11B5C0() & 1) == 0))
  {
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_19;
  }

  sub_169094();
  sub_16A1B4();
  v35 = v34;

  if (!v35 || (, v36 = sub_1690A4(), v37 = [v36 enabled], v36, !v37))
  {
    type metadata accessor for CarCommandsError(0);
    sub_A4338();
    v46 = sub_A4294(v44, v45, &unk_17A85C);
    sub_5A144(v46);
    *v47 = 0xD00000000000002DLL;
    v47[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_19:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v38 = v0[25];
  [v37 BOOLValue];

  type metadata accessor for ClimateStatusSnippetFactory();
  sub_3CF7C(v38 + 184, (v0 + 15));
  sub_10824(v38 + 184, (v0 + 7));
  v39 = swift_task_alloc();
  v0[26] = v39;
  *v39 = v0;
  v39[1] = sub_A39C4;
  sub_D2C0();

  return sub_1139B0();
}

uint64_t sub_A39C4()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 216) = v0;

  sub_D13C((v3 + 56));
  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    sub_D37C();

    return v8();
  }
}

uint64_t sub_A3AF4()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1E97F0;
  if (!qword_1E97F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A3C00(uint64_t a1)
{
  result = sub_A4294(&qword_1E99E8, type metadata accessor for SetClimateStatusHandleIntentFlowStrategy, &unk_1734D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A3C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_A3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_A3DE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_A3EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_A2680();
}

uint64_t sub_A3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_A401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetClimateStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_A40E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_A3510(a1, a2);
}

uint64_t sub_A4190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_45004();
}

uint64_t sub_A4294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A42DC(uint64_t a1)
{
  v2 = type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A4350()
{
}

uint64_t sub_A4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
    v9 = a1 + *(a3 + 24);

    return sub_9E2C(v9, a2, v8);
  }
}

uint64_t sub_A441C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
    v8 = v5 + *(a4 + 24);

    return sub_5370(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GetCarRemainingRangeAction(uint64_t a1)
{
  result = qword_1E9A48;
  if (!qword_1E9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A44E8(uint64_t a1)
{
  result = sub_A457C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedMeasurementUnitProvider(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_A457C()
{
  result = qword_1E9A58;
  if (!qword_1E9A58)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1E9A58);
  }

  return result;
}

uint64_t sub_A45D8()
{
  *(v1 + 128) = v0;
  sub_10B4C();
  return _swift_task_switch(v2);
}

uint64_t sub_A4604()
{
  sub_D2DC();
  sub_D084((*(v0 + 128) + 8), *(*(v0 + 128) + 32));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_A46AC;

  return sub_13AB58(v0 + 16, 4);
}

uint64_t sub_A46AC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v3 + 152) = v8;
    *v8 = v5;
    v8[1] = sub_A4808;

    return sub_A4BDC();
  }
}

uint64_t sub_A4808()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v7 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_A490C()
{
  v1 = v0[18];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x80000000001880E0;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_A5B38(v11);

  sub_89054(&unk_172F88);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_89024(v12);

  return v14(v13);
}

uint64_t sub_A4A70()
{
  sub_D13C(v0 + 2);
  v1 = v0[20];
  sub_890A0();
  sub_890C4(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20);
  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x80000000001880E0;
  sub_16A744(v22);
  v0[15] = v1;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v10 = sub_16A584();
  sub_9DA0(v10, qword_1E65C0);
  v11 = sub_16A9A4();
  sub_A5B38(v11);

  sub_89054(&unk_172F88);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v13 = sub_89024(v12);

  return v14(v13);
}

uint64_t sub_A4BDC()
{
  sub_D2DC();
  v1[20] = v2;
  v1[21] = v0;
  sub_16A164();
  v1[22] = swift_task_alloc();
  v3 = sub_5758(&qword_1E7630, &qword_173610);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}