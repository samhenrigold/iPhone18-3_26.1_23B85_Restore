int main(int argc, const char **argv, const char **envp)
{
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  sub_100001748();

  dispatch_main();
}

uint64_t sub_100000EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000020F0(0);
  v6 = sub_1000035C8(v5);
  __chkstk_darwin(v6);
  sub_10000352C();
  sub_1000035BC();
  v7 = sub_1000036E4();
  sub_100003518();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000352C();
  v13 = (v12 - v11);
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v14 = *(qword_1000085E0 + 32);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = sub_1000036F4();
  result = (*(v9 + 8))(v13, v7);
  if (v14)
  {
    sub_10000196C(a1, v2);
    sub_100002124(0);
    v18 = v17;
    if (sub_1000021F0(v2, 1, v17) == 1)
    {
      result = sub_1000023A0(v2, sub_1000020F0);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
    }

    else
    {
      *(a2 + 24) = v18;
      *(a2 + 32) = sub_1000034B0(&qword_1000083D0, sub_100002124, &protocol conformance descriptor for IPCMessage<A>);
      v19 = sub_100002218(a2);
      return (*(*(v18 - 8) + 32))(v19, v2, v18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000010F0()
{
  v1 = sub_1000036E4();
  sub_100003518();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000352C();
  sub_1000035BC();
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v5 = *(qword_1000085E0 + 32);
  *v0 = v5;
  (*(v3 + 104))(v0, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = sub_1000036F4();
  result = (*(v3 + 8))(v0, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001214(uint64_t a1)
{
  sub_1000035F4();
  sub_10000353C();
  sub_1000034B0(v1, v2, &protocol conformance descriptor for UUID);
  return sub_100003704();
}

uint64_t sub_100001288()
{

  v1 = OBJC_IVAR____TtCC26MediaControlMessageService10MainServer9XPCClient_identifier;
  sub_1000035F4();
  sub_1000035AC();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

Swift::Int sub_100001324()
{
  sub_100003844();
  sub_1000035F4();
  sub_10000353C();
  sub_1000034B0(v0, v1, &protocol conformance descriptor for UUID);
  sub_100003704();
  return sub_100003854();
}

Swift::Int sub_100001434(uint64_t a1)
{
  sub_100003844();
  sub_100001214(v2);
  return sub_100003854();
}

void *sub_100001498()
{
  type metadata accessor for MainServer();
  v0 = swift_allocObject();
  result = sub_100001514();
  qword_1000085E0 = v0;
  return result;
}

void *sub_1000014D4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 16) = &_swiftEmptySetSingleton;
  }

  return v1;
}

void *sub_100001514()
{
  sub_100003724();
  sub_1000035AC();
  __chkstk_darwin(v1);
  sub_10000352C();
  v2 = sub_1000036D4();
  v3 = sub_1000035C8(v2);
  __chkstk_darwin(v3);
  sub_10000352C();
  v4 = sub_100003734();
  sub_100003518();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000352C();
  v10 = v9 - v8;
  sub_1000033D4();
  v0[2] = 0;
  v0[3] = 0;
  (*(v6 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  sub_1000036C4();
  sub_1000034B0(&qword_100008428, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003418(0);
  sub_1000034B0(&qword_100008438, sub_100003418, &protocol conformance descriptor for [A]);
  sub_100003754();
  v0[4] = sub_100003744();
  return v0;
}

uint64_t sub_100001748()
{
  v1 = sub_100003674();
  v2 = sub_1000035C8(v1);
  __chkstk_darwin(v2);
  sub_10000352C();
  sub_1000035BC();
  v3 = *(v0 + 32);

  sub_100003664();
  sub_1000036A4();
  swift_allocObject();
  *(v0 + 24) = sub_100003694();
}

uint64_t sub_1000018F4(uint64_t a1)
{
  v4 = sub_1000014D4();

  sub_1000023F8(&v5, a1);

  *(v1 + 16) = v4;
}

uint64_t sub_10000196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v51 = a2;
  sub_100003644();
  sub_100003518();
  v48 = v4;
  v49 = v3;
  __chkstk_darwin(v3);
  sub_10000352C();
  v7 = v6 - v5;
  sub_100003654();
  sub_100003518();
  v46 = v8;
  v47 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  sub_100002278(0);
  v16 = sub_1000035C8(v15);
  __chkstk_darwin(v16);
  sub_10000352C();
  v19 = v18 - v17;
  sub_1000022AC(0);
  v21 = v20;
  sub_100003518();
  v45 = v22;
  __chkstk_darwin(v23);
  sub_10000352C();
  v26 = v25 - v24;
  v27 = sub_1000036E4();
  sub_100003518();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_10000352C();
  sub_1000035BC();
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v31 = *(qword_1000085E0 + 32);
  *v2 = v31;
  (*(v29 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v27);
  v32 = v31;
  LOBYTE(v31) = sub_1000036F4();
  result = (*(v29 + 8))(v2, v27);
  if (v31)
  {
    sub_1000034B0(&qword_1000083F8, sub_1000022AC, &protocol conformance descriptor for IPCMessage<A>);
    sub_1000036B4();
    sub_100002378(v19, 0, 1, v21);
    v34 = v45;
    (*(v45 + 32))(v26, v19, v21);
    sub_100003614();
    v35 = v46;
    v36 = v47;
    (*(v47 + 16))(v12, v14, v46);
    v37 = (*(v36 + 88))(v12, v35);
    v40 = *(v36 + 8);
    v38 = v36 + 8;
    v39 = v40;
    v41 = v51;
    if (v37 == enum case for MessageService.IPCServerMessage.hello(_:))
    {
      v39(v12, v35);
      sub_100003634();
      (*(v48 + 104))(v7, enum case for MessageService.IPCClientMessage.reply(_:), v49);
      sub_10000356C();
      sub_1000034B0(v42, v35, &protocol conformance descriptor for MessageService.IPCClientMessage);
      v47 = v38;
      sub_100003584(&qword_1000083C8);
      sub_100003604();
      v39(v14, v46);
      (*(v34 + 8))(v26, v21);
      v43 = 0;
    }

    else
    {
      v39(v14, v35);
      (*(v34 + 8))(v26, v21);
      v39(v12, v35);
      v43 = 1;
    }

    sub_100002124(0);
    return sub_100002378(v41, v43, 1, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001F3C()
{

  return v0;
}

uint64_t sub_100001F6C()
{
  sub_100001F3C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t type metadata accessor for MainServer.XPCClient(uint64_t a1)
{
  result = qword_100008450;
  if (!qword_100008450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002018(uint64_t a1)
{
  result = sub_1000035F4();
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

void sub_100002124(uint64_t a1)
{
  if (!qword_1000083B8)
  {
    sub_100003644();
    sub_1000034B0(&qword_1000083C0, &type metadata accessor for MessageService.IPCClientMessage, &protocol conformance descriptor for MessageService.IPCClientMessage);
    sub_1000034B0(&qword_1000083C8, &type metadata accessor for MessageService.IPCClientMessage, &protocol conformance descriptor for MessageService.IPCClientMessage);
    v1 = sub_100003624();
    if (!v2)
    {
      atomic_store(v1, &qword_1000083B8);
    }
  }
}

uint64_t *sub_100002218(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1000022AC(uint64_t a1)
{
  if (!qword_1000083E0)
  {
    sub_100003654();
    sub_1000034B0(&qword_1000083E8, &type metadata accessor for MessageService.IPCServerMessage, &protocol conformance descriptor for MessageService.IPCServerMessage);
    sub_1000034B0(&qword_1000083F0, &type metadata accessor for MessageService.IPCServerMessage, &protocol conformance descriptor for MessageService.IPCServerMessage);
    v1 = sub_100003624();
    if (!v2)
    {
      atomic_store(v1, &qword_1000083E0);
    }
  }
}

uint64_t sub_1000023A0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000035AC();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000023F8(void *a1, uint64_t a2)
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

    v8 = sub_100003794();

    if (v8)
    {

      type metadata accessor for MainServer.XPCClient(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = sub_100003784();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v14 = sub_100002674(v7, result + 1);
        v15 = *(v14 + 16);
        if (*(v14 + 24) <= v15)
        {
          sub_100002898(v15 + 1);
        }

        sub_100002B2C(v16, v14);

        *v3 = v14;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_100003844();
    sub_1000035F4();
    sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100003704();
    v10 = sub_100003854();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;

        sub_100002C20(v18, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v21;
        *a1 = a2;
        return 1;
      }

      v13 = sub_1000035D4();

      if (v13)
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

Swift::Int sub_100002674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000031F8(0);
    v2 = sub_1000037D4();
    v15 = v2;
    sub_100003774();
    while (1)
    {
      if (!sub_1000037A4())
      {

        return v2;
      }

      type metadata accessor for MainServer.XPCClient(0);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100002898(v3 + 1);
      }

      v2 = v15;
      sub_100003844();
      sub_1000035F4();
      sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100003704();
      result = sub_100003854();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
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

uint64_t sub_100002898(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000031F8(0);
  result = sub_1000037C4();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100002DDC(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_100003844();
    sub_1000035F4();
    sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100003704();
    result = sub_100003854();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100002B2C(uint64_t a1, uint64_t a2)
{
  sub_100003844();
  sub_1000035F4();
  sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_100003704();
  sub_100003854();
  result = sub_100003764();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100002C20(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100002898(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100002F84(v6 + 1);
LABEL_8:
      v8 = *v3;
      sub_100003844();
      sub_1000035F4();
      sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      sub_100003704();
      result = sub_100003854();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for MainServer.XPCClient(0);

        v10 = sub_1000035D4();

        if (v10)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100002E40();
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_100003824();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }

  return result;
}

uint64_t sub_100002DDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100003A00;
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

void *sub_100002E40()
{
  v1 = v0;
  sub_1000031F8(0);
  v2 = *v0;
  v3 = sub_1000037B4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100002F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000031F8(0);
  result = sub_1000037C4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_100003844();
        sub_1000035F4();
        sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        sub_100003704();
        result = sub_100003854();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        if (!v10)
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
        v24 = *(v12 + 8 * v19);
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
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

void sub_1000031F8(uint64_t a1)
{
  if (!qword_100008400)
  {
    type metadata accessor for MainServer.XPCClient(255);
    sub_1000034B0(&qword_100008408, type metadata accessor for MainServer.XPCClient, &unk_100003A94);
    v1 = sub_1000037E4();
    if (!v2)
    {
      atomic_store(v1, &qword_100008400);
    }
  }
}

uint64_t sub_10000328C()
{
  type metadata accessor for MainServer.XPCClient(0);
  sub_100003554();
  sub_1000034B0(v0, v1, &unk_100003AD4);
  return sub_100003684();
}

void sub_100003314()
{
  if (!qword_100008410)
  {
    v0 = sub_100003804();
    if (!v1)
    {
      atomic_store(v0, &qword_100008410);
    }
  }
}

uint64_t sub_100003368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MainServer.XPCClient(0);
  v4 = swift_allocObject();
  sub_1000035E4();
  *(v4 + 16) = a1;

  result = sub_1000018F4(v4);
  *a2 = v4;
  return result;
}

unint64_t sub_1000033D4()
{
  result = qword_100008420;
  if (!qword_100008420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008420);
  }

  return result;
}

void sub_10000344C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000034B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000034F8(uint64_t a1)
{

  return _swift_once(a1, sub_100001498);
}

uint64_t sub_100003584(unint64_t *a1)
{

  return sub_1000034B0(a1, v1, &protocol conformance descriptor for MessageService.IPCClientMessage);
}