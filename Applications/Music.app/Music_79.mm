unint64_t sub_1008BCDE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8648, &qword_100EED900);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1008B636C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

uint64_t sub_1008BCEDC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A83D0, &unk_100EED478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1008BCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1008BCFB4()
{

  return Image.init(systemName:)();
}

uint64_t sub_1008BD018()
{
  result = (*(v0 + 16))();
  if (result)
  {
    return Image.init(uiImage:)();
  }

  return result;
}

unint64_t sub_1008BD04C()
{
  result = qword_1011A83E8;
  if (!qword_1011A83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A83E8);
  }

  return result;
}

unint64_t sub_1008BD0A4()
{
  result = qword_1011A83F0;
  if (!qword_1011A83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A83F0);
  }

  return result;
}

uint64_t sub_1008BD148(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008BD1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8610, &qword_100EED8D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1006BE7F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

void *sub_1008BD290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011A8560, &qword_100EED830);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1006BE7F4(v4);
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
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
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
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1006BE7F4(v4);
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

unint64_t sub_1008BD3A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8608, &qword_100EED8D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1008BD4BC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7720, &qword_100EEAA10);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A7728, &qword_100EEAA18);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A7720, &qword_100EEAA10);
      result = sub_1008B63F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t sub_1008BD6A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10010FC20(&qword_1011A8600, &qword_100EED8C8);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_10002BC44(v9, v10);
      result = sub_10001FD3C(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_1008BD7C4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A85D0, &qword_100EED8A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A85D8, &qword_100EED8A8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A85D0, &qword_100EED8A0);
      result = sub_1008B63F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
      result = sub_1008BDD2C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1008BD9CC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A8570, &qword_100EED840);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011A8530, &unk_100EED810);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011A8570, &qword_100EED840);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10001FD3C(*v5, v12, sub_10000F930);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for SocialProfile();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1008BDC14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10010FC20(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1006BE91C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100016270(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_1008BDD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008BDF0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t sub_1008BE048@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  v9 = sub_10001C8B8(a5);
  return sub_1008C9DF0(a1, v9, a4);
}

uint64_t sub_1008BE124(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE22C, 0, 0);
}

uint64_t sub_1008BE22C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A8670, &qword_100EF4CB0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A8670, &qword_100EF4CB0);
  sub_100A5932C(0, 0, v1, &unk_100EEDF10, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE388(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE490, 0, 0);
}

uint64_t sub_1008BE490()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A8678, &qword_100EEDBC0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A8678, &qword_100EEDBC0);
  sub_100A5932C(0, 0, v1, &unk_100EEDF20, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE5EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1008BE6F4, 0, 0);
}

uint64_t sub_1008BE6F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000089F8(v4, v2, &qword_1011A87F0, &unk_100EF4A50);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10003D17C(v2, v7 + v6, &qword_1011A87F0, &unk_100EF4A50);
  sub_100A5932C(0, 0, v1, &unk_100EEDE20, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008BE850(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1009B996C(a1, 1);
}

uint64_t sub_1008BE908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1009BAE8C(a1, 1);
}

uint64_t sub_1008BE9C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1009CFBB8(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v55 = a7;
  v56 = a6;
  v53 = a4;
  v54 = a5;
  v49 = a2;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin();
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v50 = v14;
  v52 = *(v14 - 8);
  v15 = v52;
  __chkstk_darwin();
  v48 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011A8650, &unk_100EEDB50);
  __chkstk_darwin();
  v51 = &v45 - v17;
  v18 = type metadata accessor for Actions.PlaybackContext(0);
  v19 = v18[5];
  (*(v15 + 56))(&a8[v19], 1, 1, v14);
  v20 = &a8[v18[6]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a8[v18[7]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a8 = a1;
  sub_1002190E0(a2, &a8[v19], &qword_1011A8650, &unk_100EEDB50);
  v23 = *v20;
  v22 = *(v20 + 1);
  v24 = *(v20 + 2);
  v25 = *(v20 + 3);
  v26 = a3;
  v27 = a3;
  v28 = v53;
  v29 = v54;
  v30 = v56;
  sub_100344C3C(v27, v53, v54, v56);
  v31 = v24;
  v32 = v49;
  sub_100344C88(v23, v22, v31, v25);
  v33 = v26;
  *v20 = v26;
  *(v20 + 1) = v28;
  *(v20 + 2) = v29;
  *(v20 + 3) = v30;
  v35 = v50;
  v34 = v51;
  sub_1002190E0(v55, v21, &qword_1011A8658, &unk_100EF92B0);
  sub_1000089F8(v32, v34, &qword_1011A8650, &unk_100EEDB50);
  if ((*(v52 + 48))(v34, 1, v35) == 1)
  {
    sub_100344C88(v33, v28, v54, v56);
    sub_1000095E8(v55, &qword_1011A8658, &unk_100EF92B0);
    sub_1000095E8(v32, &qword_1011A8650, &unk_100EEDB50);
    v32 = v34;
  }

  else
  {
    v36 = v28;
    v37 = v48;
    sub_1008C9DF0(v34, v48, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v45;
      v39 = v46;
      v40 = v47;
      (*(v46 + 32))(v45, v37, v47);
      v41 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v39 + 8))(v38, v40);
    }

    else
    {
      v41 = *v37;
    }

    sub_1008BEEDC(v34);
    v42 = v54;
    v43 = v56;
    sub_100A565C4(v33, v36, v54, v56);
    sub_100344C88(v33, v36, v42, v43);

    sub_1000095E8(v55, &qword_1011A8658, &unk_100EF92B0);
  }

  return sub_1000095E8(v32, &qword_1011A8650, &unk_100EEDB50);
}

uint64_t type metadata accessor for Actions.PlaybackContext(uint64_t a1)
{
  result = qword_1011A8790;
  if (!qword_1011A8790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008BEEDC(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext(0) + 24);
  v2 = *v1;
  sub_100344C3C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v27 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  v15 = type metadata accessor for Actions.PlaybackContext(0);
  v16 = v4 + *(v15 + 24);
  sub_100344C88(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
  v17 = v28;
  v18 = v29;
  *v16 = a1;
  *(v16 + 8) = v17;
  v19 = v30;
  *(v16 + 16) = v18;
  *(v16 + 24) = v19;
  v20 = *(v15 + 20);
  if (!(*(v10 + 48))(v4 + v20, 1, v9))
  {
    v21 = v27;
    sub_1008C9DF0(v4 + v20, v14, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_1008C9DF0(v14, v12, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v21 + 32))(v8, v12, v6);
      v22 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v21 + 8))(v8, v6);
      sub_1008BEEDC(v14);
    }

    else
    {
      sub_1008BEEDC(v14);
      v22 = *v12;
    }

    v23 = *v16;
    v24 = *(v16 + 8);
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    sub_100344C3C(*v16, v24, v25, v26);
    sub_100A565C4(v23, v24, v25, v26);
    sub_100344C88(v23, v24, v25, v26);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext(0);
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_1008BF4B8;
}

void sub_1008BF4B8(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_1008C9DF0(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_1008C9DF0(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v11 + 8))(v10, v12);
        sub_1008BEEDC(v9);
      }

      else
      {
        sub_1008BEEDC(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_100344C3C(*v14, v16, v17, v18);
      sub_100A565C4(v15, v16, v17, v18);
      sub_100344C88(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a2;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v9 = &v108 - v8;
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v11 = (&v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v13 = a1[4];
  sub_10000954C(a1, v12);
  v14 = __chkstk_darwin();
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v115 = type metadata accessor for Actions.PlaybackContext;
  sub_1008C9DF0(a2, v11, type metadata accessor for Actions.PlaybackContext);
  v18 = a3;
  v113 = a3;
  sub_10012B7A8(a3, &v153);
  v19 = a4;
  v112 = a4;
  v109 = v9;
  sub_1000089F8(a4, v9, &qword_1011A8660, &unk_100EEDB60);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v16, 0, v11, &v153, v9, v12, v13, &v118);
  sub_10091509C(&v118, &v120);
  v169[0] = v118;
  sub_1008C74A4(v169);
  v168 = v119;
  sub_1000095E8(&v168, &unk_1011ACB70, &qword_100EEEF60);

  v114 = sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v20 = swift_allocObject();
  v116 = xmmword_100EBC6B0;
  *(v20 + 16) = xmmword_100EBC6B0;
  LOBYTE(a4) = BYTE8(v124);
  v21 = swift_allocObject();
  v22 = v127;
  *(v21 + 112) = v126;
  *(v21 + 128) = v22;
  *(v21 + 144) = v128;
  v23 = v123;
  *(v21 + 48) = v122;
  *(v21 + 64) = v23;
  v24 = v125;
  *(v21 + 80) = v124;
  *(v21 + 96) = v24;
  v25 = v121;
  *(v21 + 16) = v120;
  *(v21 + 32) = v25;
  v26 = swift_allocObject();
  v27 = v127;
  *(v26 + 112) = v126;
  *(v26 + 128) = v27;
  *(v26 + 144) = v128;
  v28 = v123;
  *(v26 + 48) = v122;
  *(v26 + 64) = v28;
  v29 = v125;
  *(v26 + 80) = v124;
  *(v26 + 96) = v29;
  v30 = v121;
  *(v26 + 16) = v120;
  *(v26 + 32) = v30;
  v31 = swift_allocObject();
  v32 = v127;
  *(v31 + 112) = v126;
  *(v31 + 128) = v32;
  *(v31 + 144) = v128;
  v33 = v123;
  *(v31 + 48) = v122;
  *(v31 + 64) = v33;
  v34 = v125;
  *(v31 + 80) = v124;
  *(v31 + 96) = v34;
  v35 = v121;
  *(v31 + 16) = v120;
  *(v31 + 32) = v35;
  v110 = v20;
  *(v20 + 32) = a4;
  *(v20 + 40) = sub_1008C74F8;
  *(v20 + 48) = v21;
  *(v20 + 56) = sub_1008C7500;
  *(v20 + 64) = v26;
  *(v20 + 72) = &unk_100EEDB80;
  *(v20 + 80) = v31;
  v36 = a1[3];
  v37 = a1[4];
  sub_10000954C(a1, v36);
  v38 = __chkstk_darwin();
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v40, v38);
  v42 = v111;
  v43 = v11;
  sub_1008C9DF0(v111, v11, v115);
  sub_10012B7A8(v18, &v142);
  v44 = v109;
  sub_1000089F8(v19, v109, &qword_1011A8660, &unk_100EEDB60);
  sub_1000089F8(&v120, &v153, &qword_1011A8668, &qword_100EF4D00);
  sub_1000089F8(&v120, &v153, &qword_1011A8668, &qword_100EF4D00);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v40, 2, v43, &v142, v44, v36, v37, &v129);
  sub_10091509C(&v129, &v131);
  v167 = v129;
  sub_1008C74A4(&v167);
  v166 = v130;
  sub_1000095E8(&v166, &unk_1011ACB70, &qword_100EEEF60);

  v45 = swift_allocObject();
  *(v45 + 16) = v116;
  LOBYTE(v40) = BYTE8(v135);
  v46 = swift_allocObject();
  v47 = v138;
  *(v46 + 112) = v137;
  *(v46 + 128) = v47;
  *(v46 + 144) = v139;
  v48 = v134;
  *(v46 + 48) = v133;
  *(v46 + 64) = v48;
  v49 = v136;
  *(v46 + 80) = v135;
  *(v46 + 96) = v49;
  v50 = v132;
  *(v46 + 16) = v131;
  *(v46 + 32) = v50;
  v51 = swift_allocObject();
  v52 = v138;
  *(v51 + 112) = v137;
  *(v51 + 128) = v52;
  *(v51 + 144) = v139;
  v53 = v134;
  *(v51 + 48) = v133;
  *(v51 + 64) = v53;
  v54 = v136;
  *(v51 + 80) = v135;
  *(v51 + 96) = v54;
  v55 = v132;
  *(v51 + 16) = v131;
  *(v51 + 32) = v55;
  v56 = swift_allocObject();
  v57 = v138;
  *(v56 + 112) = v137;
  *(v56 + 128) = v57;
  *(v56 + 144) = v139;
  v58 = v134;
  *(v56 + 48) = v133;
  *(v56 + 64) = v58;
  v59 = v136;
  *(v56 + 80) = v135;
  *(v56 + 96) = v59;
  v60 = v132;
  *(v56 + 16) = v131;
  *(v56 + 32) = v60;
  *(v45 + 32) = v40;
  *(v45 + 40) = sub_1008C9F20;
  *(v45 + 48) = v46;
  *(v45 + 56) = sub_1008C9F28;
  *(v45 + 64) = v51;
  *(v45 + 72) = &unk_100EEDB90;
  *(v45 + 80) = v56;
  v61 = a1[3];
  v62 = a1[4];
  sub_10000954C(a1, v61);
  v63 = __chkstk_darwin();
  v65 = &v108 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v66 + 16))(v65, v63);
  sub_1008C9DF0(v42, v43, v115);
  sub_10012B7A8(v113, &v142);
  sub_1000089F8(v112, v44, &qword_1011A8660, &unk_100EEDB60);
  sub_1000089F8(&v131, &v153, &qword_1011A8668, &qword_100EF4D00);
  sub_1000089F8(&v131, &v153, &qword_1011A8668, &qword_100EF4D00);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v65, 1, v43, &v142, v44, v61, v62, &v140);
  sub_10091509C(&v140, &v142);
  v165 = v140;
  sub_1008C74A4(&v165);
  v164 = v141;
  sub_1000095E8(&v164, &unk_1011ACB70, &qword_100EEEF60);

  v67 = swift_allocObject();
  *(v67 + 16) = v116;
  LOBYTE(v19) = BYTE8(v146);
  v68 = swift_allocObject();
  v69 = v149;
  *(v68 + 112) = v148;
  *(v68 + 128) = v69;
  *(v68 + 144) = v150;
  v70 = v145;
  *(v68 + 48) = v144;
  *(v68 + 64) = v70;
  v71 = v147;
  *(v68 + 80) = v146;
  *(v68 + 96) = v71;
  v72 = v143;
  *(v68 + 16) = v142;
  *(v68 + 32) = v72;
  v73 = swift_allocObject();
  v74 = v149;
  *(v73 + 112) = v148;
  *(v73 + 128) = v74;
  *(v73 + 144) = v150;
  v75 = v145;
  *(v73 + 48) = v144;
  *(v73 + 64) = v75;
  v76 = v147;
  *(v73 + 80) = v146;
  *(v73 + 96) = v76;
  v77 = v143;
  *(v73 + 16) = v142;
  *(v73 + 32) = v77;
  v78 = swift_allocObject();
  v79 = v149;
  *(v78 + 112) = v148;
  *(v78 + 128) = v79;
  *(v78 + 144) = v150;
  v80 = v145;
  *(v78 + 48) = v144;
  *(v78 + 64) = v80;
  v81 = v147;
  *(v78 + 80) = v146;
  *(v78 + 96) = v81;
  v82 = v143;
  *(v78 + 16) = v142;
  *(v78 + 32) = v82;
  *(v67 + 32) = v19;
  *(v67 + 40) = sub_1008C9F20;
  *(v67 + 48) = v68;
  *(v67 + 56) = sub_1008C9F28;
  *(v67 + 64) = v73;
  *(v67 + 72) = &unk_100EEDB98;
  *(v67 + 80) = v78;
  v83 = a1[3];
  v84 = a1[4];
  sub_10000954C(a1, v83);
  v85 = __chkstk_darwin();
  v87 = &v108 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87, v85);
  sub_1008C9DF0(v111, v43, v115);
  sub_10012B7A8(v113, v117);
  sub_1000089F8(v112, v44, &qword_1011A8660, &unk_100EEDB60);
  sub_1000089F8(&v142, &v153, &qword_1011A8668, &qword_100EF4D00);
  sub_1000089F8(&v142, &v153, &qword_1011A8668, &qword_100EF4D00);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v87, 3, v43, v117, v44, v83, v84, &v151);
  sub_10091509C(&v151, &v153);
  v163 = v151;
  sub_1008C74A4(&v163);
  v162 = v152;
  sub_1000095E8(&v162, &unk_1011ACB70, &qword_100EEEF60);

  v89 = swift_allocObject();
  *(v89 + 16) = v116;
  LOBYTE(v19) = BYTE8(v157);
  v90 = swift_allocObject();
  v91 = v160;
  *(v90 + 112) = v159;
  *(v90 + 128) = v91;
  *(v90 + 144) = v161;
  v92 = v156;
  *(v90 + 48) = v155;
  *(v90 + 64) = v92;
  v93 = v158;
  *(v90 + 80) = v157;
  *(v90 + 96) = v93;
  v94 = v154;
  *(v90 + 16) = v153;
  *(v90 + 32) = v94;
  v95 = swift_allocObject();
  v96 = v160;
  *(v95 + 112) = v159;
  *(v95 + 128) = v96;
  *(v95 + 144) = v161;
  v97 = v156;
  *(v95 + 48) = v155;
  *(v95 + 64) = v97;
  v98 = v158;
  *(v95 + 80) = v157;
  *(v95 + 96) = v98;
  v99 = v154;
  *(v95 + 16) = v153;
  *(v95 + 32) = v99;
  v100 = swift_allocObject();
  v101 = v160;
  *(v100 + 112) = v159;
  *(v100 + 128) = v101;
  *(v100 + 144) = v161;
  v102 = v156;
  *(v100 + 48) = v155;
  *(v100 + 64) = v102;
  v103 = v158;
  *(v100 + 80) = v157;
  *(v100 + 96) = v103;
  v104 = v154;
  *(v100 + 16) = v153;
  *(v100 + 32) = v104;
  *(v89 + 32) = v19;
  *(v89 + 40) = sub_1008C9F20;
  *(v89 + 48) = v90;
  *(v89 + 56) = sub_1008C9F28;
  *(v89 + 64) = v95;
  *(v89 + 72) = &unk_100EEDBA0;
  *(v89 + 80) = v100;
  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100EBEF50;
  *(v105 + 32) = v110;
  *(v105 + 40) = v45;
  *(v105 + 48) = v67;
  *(v105 + 56) = v89;
  sub_1000089F8(&v153, v117, &qword_1011A8668, &qword_100EF4D00);
  sub_1000089F8(&v153, v117, &qword_1011A8668, &qword_100EF4D00);
  v106 = sub_1008A7E58();
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v106;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v77 = a3;
  v78 = a4;
  v86 = a2;
  v9 = sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0);
  v10 = *(v9 - 8);
  v79 = (v9 - 8);
  v83 = v10;
  v82 = *(v10 + 64);
  __chkstk_darwin();
  v85 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v68 - v12;
  __chkstk_darwin();
  v81 = &v68 - v13;
  __chkstk_darwin();
  v80 = &v68 - v14;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v16 = &v68 - v15;
  v17 = sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0) - 8;
  v70 = *v17;
  v18 = *(v70 + 64);
  __chkstk_darwin();
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v68 - v19;
  __chkstk_darwin();
  v69 = &v68 - v20;
  __chkstk_darwin();
  v22 = &v68 - v21;
  v76 = a1;
  v23 = a1[3];
  inited = a1[4];
  sub_10000954C(a1, v23);
  v24 = __chkstk_darwin();
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  sub_10012B7A8(a3, v90);
  v72 = v16;
  sub_1000089F8(a4, v16, &qword_1011A8660, &unk_100EEDB60);
  v28 = v86;

  v30 = v87;
  v29 = v88;
  sub_100030444(v87, v88);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v26, v28, v90, v16, v30, v29, v23, inited, v22);
  v22[*(v17 + 44)] = 7;
  *&v22[*(v17 + 52)] = 0x4014000000000000;
  v31 = &v22[*(v17 + 48)];
  *v31 = sub_100A278D0;
  v31[1] = 0;
  v32 = &v22[*(v17 + 56)];
  *v32 = &unk_100EF6790;
  *(v32 + 1) = 0;
  v33 = &v22[*(v17 + 60)];
  *v33 = &unk_100EF6798;
  *(v33 + 1) = 0;
  v75 = sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  inited = swift_initStackObject();
  v74 = xmmword_100EBC6B0;
  *(inited + 16) = xmmword_100EBC6B0;
  v34 = v69;
  sub_1000089F8(v22, v69, &qword_1011A8678, &qword_100EEDBC0);
  v35 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v36 = swift_allocObject();
  sub_10003D17C(v34, v36 + v35, &qword_1011A8678, &qword_100EEDBC0);
  v37 = v71;
  sub_1000089F8(v22, v71, &qword_1011A8678, &qword_100EEDBC0);
  v38 = swift_allocObject();
  sub_10003D17C(v37, v38 + v35, &qword_1011A8678, &qword_100EEDBC0);
  v39 = v73;
  sub_1000089F8(v22, v73, &qword_1011A8678, &qword_100EEDBC0);
  v40 = swift_allocObject();
  sub_10003D17C(v39, v40 + v35, &qword_1011A8678, &qword_100EEDBC0);
  v41 = inited;
  *(inited + 32) = 7;
  v41[5] = sub_1008C7680;
  v41[6] = v36;
  v41[7] = sub_1008C7720;
  v41[8] = v38;
  v41[9] = &unk_100EEDBD0;
  v41[10] = v40;
  sub_1000095E8(v22, &qword_1011A8678, &qword_100EEDBC0);
  v42 = v76[3];
  v43 = v76[4];
  sub_10000954C(v76, v42);
  v44 = __chkstk_darwin();
  (*(v46 + 16))(&v68 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  sub_10012B7A8(v77, v90);
  v47 = v72;
  sub_1000089F8(v78, v72, &qword_1011A8660, &unk_100EEDB60);
  v48 = v86;

  v50 = v87;
  v49 = v88;
  sub_100030444(v87, v88);
  v51 = v80;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v48, v90, v47, v50, v49, v42, v43, v80);
  v52 = v79;
  *(v51 + v79[11]) = 8;
  *(v51 + v52[13]) = 0x4014000000000000;
  v53 = (v51 + v52[12]);
  v54 = v51;
  *v53 = sub_100A27B20;
  v53[1] = 0;
  v55 = (v51 + v52[14]);
  *v55 = &unk_100EF67C0;
  v55[1] = 0;
  v56 = (v51 + v52[15]);
  *v56 = &unk_100EF67C8;
  v56[1] = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = v74;
  v58 = v81;
  sub_1000089F8(v51, v81, &qword_1011A8670, &qword_100EF4CB0);
  v59 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v88 = swift_allocObject();
  sub_10003D17C(v58, v88 + v59, &qword_1011A8670, &qword_100EF4CB0);
  v60 = v84;
  sub_1000089F8(v51, v84, &qword_1011A8670, &qword_100EF4CB0);
  v61 = swift_allocObject();
  sub_10003D17C(v60, v61 + v59, &qword_1011A8670, &qword_100EF4CB0);
  v62 = v85;
  sub_1000089F8(v51, v85, &qword_1011A8670, &qword_100EF4CB0);
  v63 = swift_allocObject();
  sub_10003D17C(v62, v63 + v59, &qword_1011A8670, &qword_100EF4CB0);
  *(v57 + 32) = 8;
  v64 = v88;
  *(v57 + 40) = sub_1008C780C;
  *(v57 + 48) = v64;
  *(v57 + 56) = sub_1008C78AC;
  *(v57 + 64) = v61;
  *(v57 + 72) = &unk_100EEDBE0;
  *(v57 + 80) = v63;
  sub_1000095E8(v54, &qword_1011A8670, &qword_100EF4CB0);
  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v65 = swift_initStackObject();
  *(v65 + 16) = xmmword_100EBDC20;
  *(v65 + 32) = inited;
  *(v65 + 40) = v57;
  v66 = sub_1008A7E58();
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  swift_arrayDestroy();
  return v66;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v196 = a7;
  *&v197 = a6;
  v194 = a3;
  v195 = a5;
  v185 = a4;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v181 = *(v9 - 8);
  v182 = v9;
  __chkstk_darwin();
  v183 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  __chkstk_darwin();
  v190 = (&v177 - v11);
  v12 = type metadata accessor for Playlist();
  v187 = *(v12 - 8);
  v188 = v12;
  __chkstk_darwin();
  v193 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v192 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v18 = &v177 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = a1[5];
  sub_10000954C(a1, v20);
  v22 = __chkstk_darwin();
  v24 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  sub_10012B7A8(v194, &v218);
  sub_1000089F8(v196, v18, &qword_1011A8660, &unk_100EEDB60);
  v189 = v18;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v24, a2, &v218, v195, v197, v18, v20, v19, &v225, v21);
  LOBYTE(v228) = 0;
  *(&v228 + 1) = sub_1000D9088;
  *&v229 = 0;
  *(&v229 + 1) = 0x4014000000000000;
  *&v230 = &unk_100EEDF78;
  *(&v230 + 1) = 0;
  *&v231 = &unk_100EEDF80;
  *(&v231 + 1) = 0;
  sub_1001DF424(a1, &v218);
  swift_unknownObjectRetain();
  v191 = a2;

  v195 = sub_10010FC20(&qword_1011A8680, &qword_100EEDBF0);
  if (swift_dynamicCast())
  {
    v26 = (*(v192 + 8))(v16, v14);
    v27 = (v225)(v26);
    if (v28 == 1)
    {
      v29 = 0;
      goto LABEL_6;
    }

    sub_10089840C(v27, v28);
  }

  v29 = 1;
LABEL_6:
  v192 = sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v30 = swift_allocObject();
  v197 = xmmword_100EBC6B0;
  *(v30 + 16) = xmmword_100EBC6B0;
  v31 = v228;
  v32 = swift_allocObject();
  v33 = v230;
  v32[5] = v229;
  v32[6] = v33;
  v32[7] = v231;
  v34 = v226;
  v32[1] = v225;
  v32[2] = v34;
  v35 = v228;
  v32[3] = v227;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v230;
  v36[5] = v229;
  v36[6] = v37;
  v36[7] = v231;
  v38 = v226;
  v36[1] = v225;
  v36[2] = v38;
  v39 = v228;
  v36[3] = v227;
  v36[4] = v39;
  v40 = swift_allocObject();
  v41 = v230;
  v40[5] = v229;
  v40[6] = v41;
  v40[7] = v231;
  v42 = v226;
  v40[1] = v225;
  v40[2] = v42;
  v43 = v228;
  v40[3] = v227;
  v40[4] = v43;
  *(v30 + 32) = v31;
  *(v30 + 40) = sub_1008C7B9C;
  *(v30 + 48) = v32;
  *(v30 + 56) = sub_1008C9F2C;
  *(v30 + 64) = v36;
  *(v30 + 72) = &unk_100EEDC00;
  *(v30 + 80) = v40;
  v186 = v30;
  if (v29)
  {
    v44 = a1[3];
    v45 = a1[4];
    v46 = a1[5];
    sub_10000954C(a1, v44);
    v47 = __chkstk_darwin();
    v49 = &v177 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v49, v47);
    v51 = v194;
    sub_10012B7A8(v194, &v218);
    v52 = v196;
    v53 = v189;
    sub_1000089F8(v196, v189, &qword_1011A8660, &unk_100EEDB60);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v49, v191, &v218, v53, v44, v45, v46, &v211);
    v204 = v211;
    v205 = v212;
    v206 = v213;
    LOBYTE(v207) = 49;
    *(&v207 + 1) = sub_1000D9088;
    *&v208 = 0;
    *(&v208 + 1) = 0x4014000000000000;
    *&v209 = &unk_100EEE308;
    *(&v209 + 1) = 0;
    *&v210 = &unk_100EEE310;
    *(&v210 + 1) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v197;
    v55 = swift_allocObject();
    v56 = v209;
    v55[5] = v208;
    v55[6] = v56;
    v55[7] = v210;
    v57 = v205;
    v55[1] = v204;
    v55[2] = v57;
    v58 = v207;
    v55[3] = v206;
    v55[4] = v58;
    v59 = swift_allocObject();
    v60 = v209;
    v59[5] = v208;
    v59[6] = v60;
    v59[7] = v210;
    v61 = v205;
    v59[1] = v204;
    v59[2] = v61;
    v62 = v207;
    v59[3] = v206;
    v59[4] = v62;
    v63 = swift_allocObject();
    v64 = v209;
    v63[5] = v208;
    v63[6] = v64;
    v63[7] = v210;
    v65 = v205;
    v63[1] = v204;
    v63[2] = v65;
    v66 = v207;
    v63[3] = v206;
    v63[4] = v66;
    v184 = v54;
    *(v54 + 32) = 49;
    *(v54 + 40) = sub_1008C7E18;
    *(v54 + 48) = v55;
    *(v54 + 56) = sub_1008C9F2C;
    *(v54 + 64) = v59;
    *(v54 + 72) = &unk_100EEDC60;
    *(v54 + 80) = v63;
    v67 = a1[3];
    v68 = a1[4];
    v69 = a1[5];
    sub_10000954C(a1, v67);
    v70 = __chkstk_darwin();
    v72 = &v177 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v70);
    sub_10012B7A8(v51, &v218);
    v74 = v52;
    v75 = v53;
    sub_1000089F8(v74, v53, &qword_1011A8660, &unk_100EEDB60);
    v76 = v191;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v72, v191, 0, &v218, v75, v67, v68, v69, &v198);
    v211 = v198;
    v212 = v199;
    v213 = v200;
    LOBYTE(v214) = 48;
    *(&v214 + 1) = sub_1000D9088;
    *&v215 = 0;
    *(&v215 + 1) = 0x4014000000000000;
    *&v216 = &unk_100EEEA60;
    *(&v216 + 1) = 0;
    *&v217 = &unk_100EEEA68;
    *(&v217 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v197;
    v78 = swift_allocObject();
    v79 = v216;
    v78[5] = v215;
    v78[6] = v79;
    v78[7] = v217;
    v80 = v212;
    v78[1] = v211;
    v78[2] = v80;
    v81 = v214;
    v78[3] = v213;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v216;
    v82[5] = v215;
    v82[6] = v83;
    v82[7] = v217;
    v84 = v212;
    v82[1] = v211;
    v82[2] = v84;
    v85 = v214;
    v82[3] = v213;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v216;
    v86[5] = v215;
    v86[6] = v87;
    v86[7] = v217;
    v88 = v212;
    v86[1] = v211;
    v86[2] = v88;
    v89 = v214;
    v86[3] = v213;
    v86[4] = v89;
    *(v77 + 32) = 48;
    *(v77 + 40) = sub_1008C7EEC;
    *(v77 + 48) = v78;
    *(v77 + 56) = sub_1008C9F2C;
    *(v77 + 64) = v82;
    *(v77 + 72) = &unk_100EEDC70;
    *(v77 + 80) = v86;
    v90 = a1[3];
    v179 = a1[4];
    v180 = v77;
    v178 = a1[5];
    sub_10000954C(a1, v90);
    v177 = &v177;
    v91 = __chkstk_darwin();
    v93 = &v177 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v94 + 16))(v93, v91);
    sub_10012B7A8(v51, &v198);
    sub_1000089F8(v196, v75, &qword_1011A8660, &unk_100EEDB60);

    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);

    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);
    sub_1000089F8(&v204, &v218, &qword_1011A86B8, &qword_100EF4C10);
    sub_1000089F8(&v211, &v218, &qword_1011A86C0, &qword_100EEDC80);

    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);
    sub_1000089F8(&v204, &v218, &qword_1011A86B8, &qword_100EF4C10);
    sub_1000089F8(&v211, &v218, &qword_1011A86C0, &qword_100EEDC80);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v93, v76, &v198, v189, v90, v179, v178, &v201);
    v218 = v201;
    v219 = v202;
    v220 = v203;
    LOBYTE(v221) = 1;
    *(&v221 + 1) = sub_1000D9088;
    *&v222 = 0;
    *(&v222 + 1) = 0x4014000000000000;
    *&v223 = &unk_100EEE6F8;
    *(&v223 + 1) = 0;
    *&v224 = &unk_100EEE700;
    *(&v224 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v197;
    v96 = swift_allocObject();
    v97 = v223;
    v96[5] = v222;
    v96[6] = v97;
    v96[7] = v224;
    v98 = v219;
    v96[1] = v218;
    v96[2] = v98;
    v99 = v221;
    v96[3] = v220;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v223;
    v100[5] = v222;
    v100[6] = v101;
    v100[7] = v224;
    v102 = v219;
    v100[1] = v218;
    v100[2] = v102;
    v103 = v221;
    v100[3] = v220;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v223;
    v104[5] = v222;
    v104[6] = v105;
    v104[7] = v224;
    v106 = v219;
    v104[1] = v218;
    v104[2] = v106;
    v107 = v221;
    v104[3] = v220;
    v104[4] = v107;
    *(v95 + 32) = 1;
    *(v95 + 40) = sub_1008C7FC0;
    *(v95 + 48) = v96;
    *(v95 + 56) = sub_1008C9F2C;
    *(v95 + 64) = v100;
    *(v95 + 72) = &unk_100EEDC90;
    *(v95 + 80) = v104;
    sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_100EBE260;
    *(v108 + 32) = v184;
    *(v108 + 40) = v180;
    *(v108 + 48) = v95;
    sub_1000089F8(&v218, &v198, &qword_1011A86C8, &qword_100EF47D0);
    sub_1000089F8(&v218, &v198, &qword_1011A86C8, &qword_100EF47D0);
    v184 = sub_1008A7E58();
    swift_setDeallocating();
    sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);
    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);
    sub_1000089F8(&v225, &v218, &qword_1011A8688, &qword_100EEDC08);
    v184 = _swiftEmptyArrayStorage;
  }

  v109 = v187;
  v110 = v188;
  v111 = v193;
  sub_1001DF424(a1, &v218);
  sub_10010FC20(&qword_1011A8690, &qword_100EEDC10);
  v112 = swift_dynamicCast();
  v113 = v190;
  if (v112)
  {
    sub_1000D8F88(&v211, &v204);
    sub_1000089F8(v185, &v201, &qword_1011A86A0, &qword_100EEDC20);
    if (*(&v202 + 1))
    {
      sub_100059A8C(&v201, &v198);
      v114 = *(&v205 + 1);
      v187 = *(&v206 + 1);
      v188 = v206;
      v115 = sub_10000954C(&v204, *(&v205 + 1));
      v116 = v109;
      v117 = *(&v199 + 1);
      v118 = v200;
      v119 = a1;
      v120 = sub_10000954C(&v198, *(&v199 + 1));
      sub_10012B7A8(v194, &v211);
      v121 = v110;
      v122 = v189;
      sub_1000089F8(v196, v189, &qword_1011A8660, &unk_100EEDB60);
      v176 = v118;
      v109 = v116;
      v123 = v120;
      a1 = v119;
      v124 = v122;
      v110 = v121;
      v125 = v117;
      v111 = v193;
      sub_1008D95FC(v115, &v211, v123, v124, v114, v125, v188, v187, &v218, v176);
      LOBYTE(v221) = 11;
      *(&v221 + 1) = sub_1000D9088;
      *&v222 = 0;
      *(&v222 + 1) = 0x4014000000000000;
      *&v223 = &unk_100EEE0F8;
      *(&v223 + 1) = 0;
      *&v224 = &unk_100EEE100;
      *(&v224 + 1) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v197;
      v127 = swift_allocObject();
      v128 = v223;
      v127[5] = v222;
      v127[6] = v128;
      v127[7] = v224;
      v129 = v219;
      v127[1] = v218;
      v127[2] = v129;
      v130 = v221;
      v127[3] = v220;
      v127[4] = v130;
      v131 = swift_allocObject();
      v132 = v223;
      v131[5] = v222;
      v131[6] = v132;
      v131[7] = v224;
      v133 = v219;
      v131[1] = v218;
      v131[2] = v133;
      v134 = v221;
      v131[3] = v220;
      v131[4] = v134;
      v135 = swift_allocObject();
      v136 = v223;
      v135[5] = v222;
      v135[6] = v136;
      v135[7] = v224;
      v137 = v219;
      v135[1] = v218;
      v135[2] = v137;
      v138 = v221;
      v135[3] = v220;
      v135[4] = v138;
      *(v126 + 32) = 11;
      *(v126 + 40) = sub_1008C7D44;
      *(v126 + 48) = v127;
      *(v126 + 56) = sub_1008C9F2C;
      *(v126 + 64) = v131;
      *(v126 + 72) = &unk_100EEDC48;
      *(v126 + 80) = v135;
      sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
      v139 = swift_allocObject();
      *(v139 + 16) = v197;
      *(v139 + 32) = v126;
      v140 = v139 + 32;
      sub_1000089F8(&v218, &v211, &qword_1011A86B0, &qword_100EEDC50);
      sub_1000089F8(&v218, &v211, &qword_1011A86B0, &qword_100EEDC50);
      v141 = sub_1008A7E58();
      swift_setDeallocating();
      sub_1000095E8(v140, &qword_1011A7C78, &unk_100EEDBB0);
      v113 = v190;
      swift_deallocClassInstance();
      sub_10000959C(&v198);
      sub_10000959C(&v204);
      goto LABEL_15;
    }

    sub_1000095E8(&v201, &qword_1011A86A0, &qword_100EEDC20);
    sub_10000959C(&v204);
  }

  else
  {
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    sub_1000095E8(&v211, &qword_1011A8698, &qword_100EEDC18);
  }

  v141 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_1001DF424(a1, &v218);
  v142 = swift_dynamicCast();
  v143 = *(v109 + 56);
  if ((v142 & 1) == 0)
  {
    v143(v113, 1, 1, v110);
    v170 = &qword_1011AA6C0;
    v171 = &qword_100EEF960;
    v172 = v113;
LABEL_20:
    sub_1000095E8(v172, v170, v171);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v143(v113, 0, 1, v110);
  (*(v109 + 32))(v111, v113, v110);
  sub_1000089F8(v185, &v198, &qword_1011A86A0, &qword_100EEDC20);
  if (!*(&v199 + 1))
  {
    (*(v109 + 8))(v111, v110);
    v170 = &qword_1011A86A0;
    v171 = &qword_100EEDC20;
    v172 = &v198;
    goto LABEL_20;
  }

  sub_100059A8C(&v198, &v204);
  v144 = *(&v205 + 1);
  v145 = v206;
  v146 = sub_10000954C(&v204, *(&v205 + 1));
  v147 = *(v109 + 16);
  v148 = v109;
  v149 = v183;
  v147(v183, v111, v110);
  (*(v181 + 104))(v149, enum case for Playlist.Folder.Item.playlist(_:), v182);
  v150 = __chkstk_darwin();
  v152 = &v177 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v153 + 16))(v152, v146, v144, v150);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v149, v191, v152, v144, v145, &v211);
  v218 = v211;
  v219 = v212;
  v220 = v213;
  LOBYTE(v221) = 20;
  *(&v221 + 1) = sub_1008F1D6C;
  *&v222 = 0;
  *(&v222 + 1) = 0x4014000000000000;
  *&v223 = &unk_100EEE840;
  *(&v223 + 1) = 0;
  *&v224 = &unk_100EEE848;
  *(&v224 + 1) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = v197;
  v155 = swift_allocObject();
  v156 = v223;
  v155[5] = v222;
  v155[6] = v156;
  v155[7] = v224;
  v157 = v219;
  v155[1] = v218;
  v155[2] = v157;
  v158 = v221;
  v155[3] = v220;
  v155[4] = v158;
  v159 = swift_allocObject();
  v160 = v223;
  v159[5] = v222;
  v159[6] = v160;
  v159[7] = v224;
  v161 = v219;
  v159[1] = v218;
  v159[2] = v161;
  v162 = v221;
  v159[3] = v220;
  v159[4] = v162;
  v163 = swift_allocObject();
  v164 = v223;
  v163[5] = v222;
  v163[6] = v164;
  v163[7] = v224;
  v165 = v219;
  v163[1] = v218;
  v163[2] = v165;
  v166 = v221;
  v163[3] = v220;
  v163[4] = v166;
  *(v154 + 32) = 20;
  *(v154 + 40) = sub_1008C7C70;
  *(v154 + 48) = v155;
  *(v154 + 56) = sub_1008C9F2C;
  *(v154 + 64) = v159;
  *(v154 + 72) = &unk_100EEDC30;
  *(v154 + 80) = v163;
  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v167 = swift_allocObject();
  *(v167 + 16) = v197;
  *(v167 + 32) = v154;
  v168 = v167 + 32;
  sub_1000089F8(&v218, &v211, &qword_1011A86A8, &qword_100EF4C60);

  sub_1000089F8(&v218, &v211, &qword_1011A86A8, &qword_100EF4C60);
  v169 = sub_1008A7E58();
  swift_setDeallocating();
  sub_1000095E8(v168, &qword_1011A7C78, &unk_100EEDBB0);
  swift_deallocClassInstance();
  (*(v148 + 8))(v193, v110);
  sub_10000959C(&v204);
LABEL_21:
  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_100EBEF50;
  *(v173 + 32) = v186;
  *(v173 + 40) = v184;
  *(v173 + 48) = v141;
  *(v173 + 56) = v169;
  v174 = sub_1008A7E58();
  sub_1000095E8(&v225, &qword_1011A8688, &qword_100EEDC08);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v174;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v130 = a6;
  v115 = a4;
  v128 = a2;
  v120 = a1;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin();
  v118 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Playlist.Folder();
  v126 = *(v11 - 8);
  v127 = v11;
  __chkstk_darwin();
  v122 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v12;
  __chkstk_darwin();
  v129 = &v109 - v13;
  v14 = *(sub_10010FC20(&qword_1011A86D0, &qword_100EEDCA0) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v119 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v109 - v16;
  sub_1000089F8(a1, &v109 - v16, &qword_1011A86D0, &qword_100EEDCA0);
  v123 = a3;
  sub_10012B7A8(a3, &v153);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_10003D17C(v17, v21 + v18, &qword_1011A86D0, &qword_100EEDCA0);
  *(v21 + v19) = 0;
  v22 = (v21 + v20);
  v124 = a5;
  v23 = v130;
  *v22 = a5;
  v22[1] = v23;
  sub_10012B828(&v153, v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v153 = sub_1008C8094;
  *(&v153 + 1) = v128;
  *&v154 = &unk_100EEDCA8;
  *(&v154 + 1) = v21;
  *&v155 = &unk_100EEE858;
  *(&v155 + 1) = 0;
  LOBYTE(v156) = 10;
  *(&v156 + 1) = sub_1008F1D6C;
  *&v157 = 0;
  *(&v157 + 1) = 0x4014000000000000;
  *&v158 = &unk_100EEE860;
  *(&v158 + 1) = 0;
  *&v159 = &unk_100EEE868;
  *(&v159 + 1) = 0;
  v24 = sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v25 = swift_allocObject();
  v125 = xmmword_100EBC6B0;
  *(v25 + 16) = xmmword_100EBC6B0;
  v26 = swift_allocObject();
  v27 = v158;
  v26[5] = v157;
  v26[6] = v27;
  v26[7] = v159;
  v28 = v154;
  v26[1] = v153;
  v26[2] = v28;
  v29 = v156;
  v26[3] = v155;
  v26[4] = v29;
  v30 = swift_allocObject();
  v31 = v158;
  v30[5] = v157;
  v30[6] = v31;
  v30[7] = v159;
  v32 = v154;
  v30[1] = v153;
  v30[2] = v32;
  v33 = v156;
  v30[3] = v155;
  v30[4] = v33;
  v34 = swift_allocObject();
  v35 = v158;
  v34[5] = v157;
  v34[6] = v35;
  v34[7] = v159;
  v36 = v154;
  v34[1] = v153;
  v34[2] = v36;
  v37 = v156;
  v34[3] = v155;
  v34[4] = v37;
  *(v25 + 32) = 10;
  *(v25 + 40) = sub_1008C81D8;
  *(v25 + 48) = v26;
  *(v25 + 56) = sub_1008C9F2C;
  *(v25 + 64) = v30;
  *(v25 + 72) = &unk_100EEDCB8;
  *(v25 + 80) = v34;
  v38 = v119;
  sub_1000089F8(v120, v119, &qword_1011A86D0, &qword_100EEDCA0);
  v39 = v126;
  v40 = v127;
  if ((*(v126 + 48))(v38, 1) == 1)
  {
    sub_1000089F8(&v153, &v146, &qword_1011A86D8, &qword_100EEDCC0);

    sub_1000089F8(&v153, &v146, &qword_1011A86D8, &qword_100EEDCC0);
    sub_100030444(v124, v130);
    sub_1000095E8(v38, &qword_1011A86D0, &qword_100EEDCA0);
    v41 = _swiftEmptyArrayStorage;
  }

  else
  {
    v42 = *(v39 + 32);
    v43 = v129;
    v121 = v24;
    v42(v129, v38, v40);
    v112 = v42;
    v113 = v39 + 32;
    v44 = *(v39 + 16);
    v119 = v25;
    v120 = v39 + 16;
    v45 = v122;
    v46 = v40;
    v44(v122, v43, v40);
    v110 = v44;
    sub_10012B7A8(v123, &v146);
    v47 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v111 = *(v39 + 80);
    v114 += 7;
    v48 = (v114 + v47) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v46;
    v51 = v46;
    v25 = v119;
    v42((v49 + v47), v45, v50);
    sub_10012B828(&v146, v49 + v48);
    v52 = v128;
    *&v132 = sub_1008C8094;
    *(&v132 + 1) = v128;
    *&v133 = &unk_100EEDCC8;
    *(&v133 + 1) = v49;
    *&v134 = &unk_100EEE878;
    *(&v134 + 1) = 0;
    LOBYTE(v135) = 19;
    *(&v135 + 1) = sub_1008F1D6C;
    *&v136 = 0;
    *(&v136 + 1) = 0x4014000000000000;
    *&v137 = &unk_100EEE880;
    *(&v137 + 1) = 0;
    *&v138 = &unk_100EEE888;
    *(&v138 + 1) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = v125;
    v54 = swift_allocObject();
    v55 = v137;
    v54[5] = v136;
    v54[6] = v55;
    v54[7] = v138;
    v56 = v133;
    v54[1] = v132;
    v54[2] = v56;
    v57 = v135;
    v54[3] = v134;
    v54[4] = v57;
    v58 = swift_allocObject();
    v59 = v137;
    v58[5] = v136;
    v58[6] = v59;
    v58[7] = v138;
    v60 = v133;
    v58[1] = v132;
    v58[2] = v60;
    v61 = v135;
    v58[3] = v134;
    v58[4] = v61;
    v62 = swift_allocObject();
    v63 = v137;
    v62[5] = v136;
    v62[6] = v63;
    v62[7] = v138;
    v64 = v133;
    v62[1] = v132;
    v62[2] = v64;
    v65 = v135;
    v62[3] = v134;
    v62[4] = v65;
    *(v53 + 32) = 19;
    *(v53 + 40) = sub_1008C83AC;
    *(v53 + 48) = v54;
    *(v53 + 56) = sub_1008C9F2C;
    *(v53 + 64) = v58;
    *(v53 + 72) = &unk_100EEDCD8;
    *(v53 + 80) = v62;
    v66 = v115[3];
    v67 = v115[4];
    v68 = sub_10000954C(v115, v66);
    v69 = v118;
    v44(v118, v129, v51);
    (*(v116 + 104))(v69, enum case for Playlist.Folder.Item.folder(_:), v117);
    v70 = __chkstk_darwin();
    v72 = &v109 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v73 + 16))(v72, v68, v66, v70);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v69, v52, v72, v66, v67, &v146);
    v139 = v146;
    v140 = v147;
    v141 = v148;
    LOBYTE(v142) = 20;
    *(&v142 + 1) = sub_1008F1D6C;
    *&v143 = 0;
    *(&v143 + 1) = 0x4014000000000000;
    *&v144 = &unk_100EEE840;
    *(&v144 + 1) = 0;
    *&v145 = &unk_100EEE848;
    *(&v145 + 1) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v125;
    v75 = swift_allocObject();
    v76 = v144;
    v75[5] = v143;
    v75[6] = v76;
    v75[7] = v145;
    v77 = v140;
    v75[1] = v139;
    v75[2] = v77;
    v78 = v142;
    v75[3] = v141;
    v75[4] = v78;
    v79 = swift_allocObject();
    v80 = v144;
    v79[5] = v143;
    v79[6] = v80;
    v79[7] = v145;
    v81 = v140;
    v79[1] = v139;
    v79[2] = v81;
    v82 = v142;
    v79[3] = v141;
    v79[4] = v82;
    v83 = swift_allocObject();
    v84 = v144;
    v83[5] = v143;
    v83[6] = v84;
    v83[7] = v145;
    v85 = v140;
    v83[1] = v139;
    v83[2] = v85;
    v86 = v142;
    v83[3] = v141;
    v83[4] = v86;
    *(v74 + 32) = 20;
    *(v74 + 40) = sub_1008C9F24;
    *(v74 + 48) = v75;
    *(v74 + 56) = sub_1008C9F2C;
    *(v74 + 64) = v79;
    *(v74 + 72) = &unk_100EEDCE0;
    *(v74 + 80) = v83;
    v87 = v122;
    v88 = v127;
    v110(v122, v129, v127);
    sub_10012B7A8(v123, &v146);
    v89 = (v111 + 24) & ~v111;
    v90 = (v114 + v89) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    *(v91 + 16) = v52;

    v112(v91 + v89, v87, v88);
    sub_10012B828(&v146, v91 + v90);
    *&v146 = sub_1008C8480;
    *(&v146 + 1) = v52;
    *&v147 = &unk_100EEDCE8;
    *(&v147 + 1) = v91;
    *&v148 = &unk_100EEE898;
    *(&v148 + 1) = 0;
    LOBYTE(v149) = 50;
    *(&v149 + 1) = sub_1008F1D6C;
    *&v150 = 0;
    *(&v150 + 1) = 0x4014000000000000;
    *&v151 = &unk_100EEE8A0;
    *(&v151 + 1) = 0;
    *&v152 = &unk_100EEE8A8;
    *(&v152 + 1) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v125;
    v93 = swift_allocObject();
    v94 = v151;
    v93[5] = v150;
    v93[6] = v94;
    v93[7] = v152;
    v95 = v147;
    v93[1] = v146;
    v93[2] = v95;
    v96 = v149;
    v93[3] = v148;
    v93[4] = v96;
    v97 = swift_allocObject();
    v98 = v151;
    v97[5] = v150;
    v97[6] = v98;
    v97[7] = v152;
    v99 = v147;
    v97[1] = v146;
    v97[2] = v99;
    v100 = v149;
    v97[3] = v148;
    v97[4] = v100;
    v101 = swift_allocObject();
    v102 = v151;
    v101[5] = v150;
    v101[6] = v102;
    v101[7] = v152;
    v103 = v147;
    v101[1] = v146;
    v101[2] = v103;
    v104 = v149;
    v101[3] = v148;
    v101[4] = v104;
    *(v92 + 32) = 50;
    *(v92 + 40) = sub_1008C858C;
    *(v92 + 48) = v93;
    *(v92 + 56) = sub_1008C9F2C;
    *(v92 + 64) = v97;
    *(v92 + 72) = &unk_100EEDCF8;
    *(v92 + 80) = v101;
    sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_100EBE260;
    *(v105 + 32) = v53;
    *(v105 + 40) = v74;
    *(v105 + 48) = v92;
    swift_retain_n();
    sub_1000089F8(&v153, v131, &qword_1011A86D8, &qword_100EEDCC0);
    sub_1000089F8(&v132, v131, &qword_1011A86E0, &qword_100EEDD00);
    sub_1000089F8(&v139, v131, &qword_1011A86A8, &qword_100EF4C60);
    sub_1000089F8(&v146, v131, &qword_1011A86E8, &qword_100EEDD08);

    sub_1000089F8(&v153, v131, &qword_1011A86D8, &qword_100EEDCC0);
    sub_1000089F8(&v132, v131, &qword_1011A86E0, &qword_100EEDD00);
    sub_1000089F8(&v139, v131, &qword_1011A86A8, &qword_100EF4C60);
    sub_1000089F8(&v146, v131, &qword_1011A86E8, &qword_100EEDD08);
    sub_100030444(v124, v130);
    v41 = sub_1008A7E58();
    swift_setDeallocating();
    sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v126 + 8))(v129, v127);
  }

  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_100EBDC20;
  *(v106 + 32) = v25;
  *(v106 + 40) = v41;
  v107 = sub_1008A7E58();
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v107;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v149 = a7;
  v139 = a5;
  v140 = a6;
  v143 = a4;
  v144 = a2;
  v146 = a3;
  v151 = a9;
  v152 = a10;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v153 = &v138 - v16;
  v17 = a1;
  v150 = a1;
  v18 = a1[3];
  *&v154 = v17[4];
  sub_10000954C(v17, v18);
  v19 = __chkstk_darwin();
  v21 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  sub_100008FE4(a3, &v182);
  sub_1000089F8(a4, &v175, &qword_1011A86F0, &qword_100EEDD10);
  sub_10012B7A8(a7, &v189);
  v23 = a8;
  v24 = v153;
  sub_1000089F8(a8, v153, &qword_1011A8660, &unk_100EEDB60);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v21, a2, &v182, &v175, &v189, v24, a9, a10, &v168, v18, v154);
  LOBYTE(v171) = 2;
  *(&v171 + 1) = sub_1008F1D6C;
  *&v172 = 0;
  *(&v172 + 1) = 0x4014000000000000;
  *&v173 = &unk_100EF0210;
  *(&v173 + 1) = 0;
  *&v174 = &unk_100EF0218;
  *(&v174 + 1) = 0;
  v25 = sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v26 = swift_allocObject();
  v154 = xmmword_100EBC6B0;
  *(v26 + 16) = xmmword_100EBC6B0;
  v27 = swift_allocObject();
  v28 = v173;
  v27[5] = v172;
  v27[6] = v28;
  v27[7] = v174;
  v29 = v169;
  v27[1] = v168;
  v27[2] = v29;
  v30 = v171;
  v27[3] = v170;
  v27[4] = v30;
  v31 = swift_allocObject();
  v32 = v173;
  v31[5] = v172;
  v31[6] = v32;
  v31[7] = v174;
  v33 = v169;
  v31[1] = v168;
  v31[2] = v33;
  v34 = v171;
  v31[3] = v170;
  v31[4] = v34;
  v35 = swift_allocObject();
  v36 = v173;
  v35[5] = v172;
  v35[6] = v36;
  v35[7] = v174;
  v37 = v169;
  v35[1] = v168;
  v35[2] = v37;
  v38 = v171;
  v35[3] = v170;
  v35[4] = v38;
  *(v26 + 32) = 2;
  *(v26 + 40) = sub_1008C8660;
  *(v26 + 48) = v27;
  *(v26 + 56) = sub_1008C9F2C;
  *(v26 + 64) = v31;
  *(v26 + 72) = &unk_100EEDD20;
  *(v26 + 80) = v35;
  v147 = v26;
  v39 = v150[3];
  v40 = v150[4];
  v41 = v150;
  sub_10000954C(v150, v39);
  v42 = __chkstk_darwin();
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v42);
  sub_100008FE4(v146, &v182);
  v46 = v143;
  sub_1000089F8(v143, &v156, &qword_1011A86F0, &qword_100EEDD10);
  sub_10012B7A8(v149, &v189);
  v142 = v23;
  v47 = v153;
  sub_1000089F8(v23, v153, &qword_1011A8660, &unk_100EEDB60);
  v48 = v144;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v44, v144, &v182, &v156, &v189, v47, v151, v152, &v175, v39, v40);
  LOBYTE(v178) = 3;
  *(&v178 + 1) = sub_1008F1D6C;
  *&v179 = 0;
  *(&v179 + 1) = 0x4014000000000000;
  *&v180 = &unk_100EF0240;
  *(&v180 + 1) = 0;
  *&v181 = &unk_100EF0248;
  *(&v181 + 1) = 0;
  v148 = v25;
  v49 = swift_allocObject();
  *(v49 + 16) = v154;
  v50 = swift_allocObject();
  v51 = v180;
  v50[5] = v179;
  v50[6] = v51;
  v50[7] = v181;
  v52 = v176;
  v50[1] = v175;
  v50[2] = v52;
  v53 = v178;
  v50[3] = v177;
  v50[4] = v53;
  v54 = swift_allocObject();
  v55 = v180;
  v54[5] = v179;
  v54[6] = v55;
  v54[7] = v181;
  v56 = v176;
  v54[1] = v175;
  v54[2] = v56;
  v57 = v178;
  v54[3] = v177;
  v54[4] = v57;
  v58 = swift_allocObject();
  v59 = v180;
  v58[5] = v179;
  v58[6] = v59;
  v58[7] = v181;
  v60 = v176;
  v58[1] = v175;
  v58[2] = v60;
  v61 = v178;
  v58[3] = v177;
  v58[4] = v61;
  *(v49 + 32) = 3;
  *(v49 + 40) = sub_1008C8734;
  *(v49 + 48) = v50;
  *(v49 + 56) = sub_1008C9F2C;
  *(v49 + 64) = v54;
  *(v49 + 72) = &unk_100EEDD30;
  *(v49 + 80) = v58;
  v146 = v49;
  v62 = v41[3];
  v63 = v41[4];
  sub_10000954C(v41, v62);
  v64 = __chkstk_darwin();
  v66 = &v138 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v67 + 16))(v66, v64);
  sub_1000089F8(v46, &v189, &qword_1011A86F0, &qword_100EEDD10);
  v68 = v23;
  v69 = v153;
  sub_1000089F8(v68, v153, &qword_1011A8660, &unk_100EEDB60);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v66, v48, &v189, v69, v62, v63, &v182);
  LOBYTE(v185) = 36;
  *(&v185 + 1) = sub_1008F1D6C;
  *&v186 = 0;
  *(&v186 + 1) = 0x4014000000000000;
  *&v187 = &unk_100EF0270;
  *(&v187 + 1) = 0;
  *&v188 = &unk_100EF0278;
  *(&v188 + 1) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v154;
  v71 = swift_allocObject();
  v72 = v187;
  v71[5] = v186;
  v71[6] = v72;
  v71[7] = v188;
  v73 = v183;
  v71[1] = v182;
  v71[2] = v73;
  v74 = v185;
  v71[3] = v184;
  v71[4] = v74;
  v75 = swift_allocObject();
  v76 = v187;
  v75[5] = v186;
  v75[6] = v76;
  v75[7] = v188;
  v77 = v183;
  v75[1] = v182;
  v75[2] = v77;
  v78 = v185;
  v75[3] = v184;
  v75[4] = v78;
  v79 = swift_allocObject();
  v80 = v187;
  v79[5] = v186;
  v79[6] = v80;
  v79[7] = v188;
  v81 = v183;
  v79[1] = v182;
  v79[2] = v81;
  v82 = v185;
  v79[3] = v184;
  v79[4] = v82;
  *(v70 + 32) = 36;
  *(v70 + 40) = sub_1008C8808;
  *(v70 + 48) = v71;
  *(v70 + 56) = sub_1008C883C;
  *(v70 + 64) = v75;
  *(v70 + 72) = &unk_100EEDD40;
  *(v70 + 80) = v79;
  v145 = v70;
  v83 = v41[3];
  v141 = v41[4];
  sub_10000954C(v41, v83);
  v84 = __chkstk_darwin();
  v86 = &v138 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 16))(v86, v84);
  sub_1000089F8(v46, &v156, &qword_1011A86F0, &qword_100EEDD10);
  sub_1000089F8(v142, v69, &qword_1011A8660, &unk_100EEDB60);
  v88 = v48;
  swift_retain_n();
  v90 = v151;
  v89 = v152;
  sub_100030444(v151, v152);
  sub_1000089F8(&v168, &v189, &qword_1011A86F8, &qword_100EF4B70);
  sub_1000089F8(&v175, &v189, &qword_1011A8700, &unk_100EEDD50);
  sub_1000089F8(&v182, &v189, &qword_1011A8708, &qword_100EF4B20);

  sub_1000089F8(&v168, &v189, &qword_1011A86F8, &qword_100EF4B70);
  sub_100030444(v90, v89);
  sub_1000089F8(&v175, &v189, &qword_1011A8700, &unk_100EEDD50);
  sub_1000089F8(&v182, &v189, &qword_1011A8708, &qword_100EF4B20);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v86, v48, v153, v83, v141, &v189);
  LOBYTE(v192) = 37;
  *(&v192 + 1) = sub_1008F1D6C;
  *&v193 = 0;
  *(&v193 + 1) = 0x4014000000000000;
  *&v194 = &unk_100EF02A0;
  *(&v194 + 1) = 0;
  *&v195 = &unk_100EF02A8;
  *(&v195 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v154;
  v92 = swift_allocObject();
  v93 = v194;
  v92[5] = v193;
  v92[6] = v93;
  v92[7] = v195;
  v94 = v190;
  v92[1] = v189;
  v92[2] = v94;
  v95 = v192;
  v92[3] = v191;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v194;
  v96[5] = v193;
  v96[6] = v97;
  v96[7] = v195;
  v98 = v190;
  v96[1] = v189;
  v96[2] = v98;
  v99 = v192;
  v96[3] = v191;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v194;
  v100[5] = v193;
  v100[6] = v101;
  v100[7] = v195;
  v102 = v190;
  v100[1] = v189;
  v100[2] = v102;
  v103 = v192;
  v100[3] = v191;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = sub_1008C88E0;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_1008C9F2C;
  *(v91 + 64) = v96;
  *(v91 + 72) = &unk_100EEDD68;
  *(v91 + 80) = v100;
  sub_100008FE4(v150, &v163);
  sub_1000089F8(&v189, &v156, &qword_1011A8710, &qword_100EEDD70);
  sub_1000089F8(&v189, &v156, &qword_1011A8710, &qword_100EEDD70);
  sub_10010FC20(&qword_1011A8718, &qword_100EEDD78);
  sub_10010FC20(&qword_1011A8720, &qword_100EEDD80);
  if (swift_dynamicCast())
  {
    sub_1000D8F88(v162, &v164);
    v104 = v165;
    v105 = v166;
    v106 = v167;
    sub_10000954C(&v164, v165);
    v107 = __chkstk_darwin();
    v109 = &v138 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109, v107);
    sub_10012B7A8(v149, &v156);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v139;
    v113 = v140;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v156 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v88, sub_1008C8A7C, v111, &v156, v104, v105, v106);
    *(&v156 + 1) = v114;
    *&v157 = v115;
    *(&v157 + 1) = v116;
    LOBYTE(v158) = 38;
    *(&v158 + 1) = sub_1000D9088;
    *&v159 = 0;
    *(&v159 + 1) = 0x4014000000000000;
    *&v160 = &unk_100EF0420;
    *(&v160 + 1) = 0;
    *&v161 = &unk_100EF0428;
    *(&v161 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v154;
    v118 = swift_allocObject();
    v119 = v159;
    v118[3] = v158;
    v118[4] = v119;
    v120 = v161;
    v118[5] = v160;
    v118[6] = v120;
    v121 = v157;
    v118[1] = v156;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v159;
    v122[3] = v158;
    v122[4] = v123;
    v124 = v161;
    v122[5] = v160;
    v122[6] = v124;
    v125 = v157;
    v122[1] = v156;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v159;
    v126[3] = v158;
    v126[4] = v127;
    v128 = v161;
    v126[5] = v160;
    v126[6] = v128;
    v129 = v157;
    v126[1] = v156;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = sub_1008C8A8C;
    *(v117 + 48) = v118;
    *(v117 + 56) = sub_1008C8A94;
    *(v117 + 64) = v122;
    *(v117 + 72) = &unk_100EEDD98;
    *(v117 + 80) = v126;
    sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
    v130 = swift_allocObject();
    *(v130 + 16) = v154;
    *(v130 + 32) = v117;
    v131 = v130 + 32;
    sub_1000089F8(&v156, v155, &qword_1011A8730, &qword_100EEDDA0);

    sub_1000089F8(&v156, v155, &qword_1011A8730, &qword_100EEDDA0);

    v132 = sub_1008A7E58();
    swift_setDeallocating();
    sub_1000095E8(v131, &qword_1011A7C78, &unk_100EEDBB0);
    swift_deallocClassInstance();
    sub_10000959C(&v164);
  }

  else
  {
    memset(v162, 0, sizeof(v162));
    sub_1000095E8(v162, &qword_1011A8728, &qword_100EEDD88);
    v132 = _swiftEmptyArrayStorage;
  }

  sub_10010FC20(&qword_1011A7C70, &unk_100EEC3C0);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_100EC6C60;
  v134 = v146;
  *(v133 + 32) = v147;
  v135 = v145;
  *(v133 + 40) = v134;
  *(v133 + 48) = v135;
  *(v133 + 56) = v91;
  *(v133 + 64) = v132;
  v136 = sub_1008A7E58();
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v136;
}

uint64_t sub_1008C45F8(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  v9 = sub_10001C8B8(v12);
  (*(*(a4 - 8) + 16))(v9, a1, a4);
  v10 = a2(v12);
  sub_10000959C(v12);
  return v10;
}

double sub_1008C4694@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 64);
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  sub_1001DFD48(v4);

  return result;
}

uint64_t sub_1008C4764(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_1008C4828, 0, 0);
}

uint64_t sub_1008C4828()
{
  v1 = *(v0 + 288);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  sub_1000089F8(v0 + 16, v0 + 152, &qword_1011A8668, &qword_100EF4D00);
  sub_100A5932C(0, 0, v1, &unk_100EEDF30, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1008C495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_1008C4A3C;

  return sub_1009B8414(a1, 1);
}

uint64_t sub_1008C4A3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008C4B30(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C4BEC, 0, 0);
}

uint64_t sub_1008C4BEC()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86A8, &qword_100EF4C60);
  sub_100A5932C(0, 0, v1, &unk_100EEDEF0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C4D18(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009BC3AC(a1, 1);
}

uint64_t sub_1008C4DF0(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C4EAC, 0, 0);
}

uint64_t sub_1008C4EAC()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86B0, &qword_100EEDC50);
  sub_100A5932C(0, 0, v1, &unk_100EEDEE0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C4FD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009BD88C(a1, 1);
}

uint64_t sub_1008C50B0(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C516C, 0, 0);
}

uint64_t sub_1008C516C()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86C8, &qword_100EF47D0);
  sub_100A5932C(0, 0, v1, &unk_100EEDEB0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C5298(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009BED6C(a1, 1);
}

uint64_t sub_1008C5370(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C542C, 0, 0);
}

uint64_t sub_1008C542C()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86C0, &qword_100EEDC80);
  sub_100A5932C(0, 0, v1, &unk_100EEDEC0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C5558(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C024C(a1, 1);
}

uint64_t sub_1008C5630(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C56EC, 0, 0);
}

uint64_t sub_1008C56EC()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86B8, &qword_100EF4C10);
  sub_100A5932C(0, 0, v1, &unk_100EEDED0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C5818(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C172C(a1, 1);
}

uint64_t sub_1008C58F0(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C59AC, 0, 0);
}

uint64_t sub_1008C59AC()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A8688, &qword_100EEDC08);
  sub_100A5932C(0, 0, v1, &unk_100EEDF00, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C5AD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C2C0C(a1, 1);
}

uint64_t sub_1008C5BB0(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C5C6C, 0, 0);
}

uint64_t sub_1008C5C6C()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86E8, &qword_100EEDD08);
  sub_100A5932C(0, 0, v1, &unk_100EEDE80, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C5D98(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C40EC(a1, 1);
}

uint64_t sub_1008C5E70(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C5F2C, 0, 0);
}

uint64_t sub_1008C5F2C()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86E0, &qword_100EEDD00);
  sub_100A5932C(0, 0, v1, &unk_100EEDE90, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C6058(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C55CC(a1, 1);
}

uint64_t sub_1008C6130(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C61EC, 0, 0);
}

uint64_t sub_1008C61EC()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86D8, &qword_100EEDCC0);
  sub_100A5932C(0, 0, v1, &unk_100EEDEA0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C6318(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C6AAC(a1, 1);
}

double sub_1008C63F0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;

  return result;
}

uint64_t sub_1008C647C(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_1008C6530, 0, 0);
}

uint64_t sub_1008C6530()
{
  v1 = *(v0 + 208);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  sub_1000089F8(v0 + 16, v0 + 112, &qword_1011A8730, &qword_100EEDDA0);
  sub_100A5932C(0, 0, v1, &unk_100EEDE30, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C6654(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = sub_1008C6724;

  return sub_1009C7F8C(a1, 1);
}

uint64_t sub_1008C6724()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008C6818(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C68D4, 0, 0);
}

uint64_t sub_1008C68D4()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A8710, &qword_100EEDD70);
  sub_100A5932C(0, 0, v1, &unk_100EEDE40, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C6A00(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009C9408(a1, 1);
}

uint64_t sub_1008C6AD8(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C6B94, 0, 0);
}

uint64_t sub_1008C6B94()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A8708, &qword_100EF4B20);
  sub_100A5932C(0, 0, v1, &unk_100EEDE50, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C6CC0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C6D98;

  return sub_1009CA8E8(a1, 1);
}

uint64_t sub_1008C6D98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008C6E8C(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C6F48, 0, 0);
}

uint64_t sub_1008C6F48()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A8700, &unk_100EEDD50);
  sub_100A5932C(0, 0, v1, &unk_100EEDE60, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C7074(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009CBDC8(a1, 1);
}

double sub_1008C714C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[5];
  a5[3] = a2;
  a5[4] = a3;
  v9 = swift_allocObject();
  *a5 = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = *(a1 + 1);
  *(v9 + 40) = *(a1 + 3);
  *(v9 + 56) = v8;

  return result;
}

uint64_t sub_1008C71E4(_OWORD *a1)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_1008C72A0, 0, 0);
}

uint64_t sub_1008C72A0()
{
  v1 = *(v0 + 240);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_1000089F8(v0 + 16, v0 + 128, &qword_1011A86F8, &qword_100EF4B70);
  sub_100A5932C(0, 0, v1, &unk_100EEDE70, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008C73CC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_1008C9F1C;

  return sub_1009CD2A8(a1, 1);
}

uint64_t sub_1008C7504()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C4764(v0 + 16);
}

uint64_t sub_1008C75A4()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

uint64_t sub_1008C7608()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008C7734()
{
  v2 = *(sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008F30;

  return sub_1008BE388(v0 + v3);
}

uint64_t sub_1008C78C0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10010FC20(a1, a2);
  v4 = *(v3 - 8);
  return (*(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + *(v3 + 40)))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
}

uint64_t sub_1008C792C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_10010FC20(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1008C7AC4()
{
  v2 = *(sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008F30;

  return sub_1008BE124(v0 + v3);
}

uint64_t sub_1008C7BD0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C58F0((v0 + 16));
}

uint64_t sub_1008C7CA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C4B30((v0 + 16));
}

uint64_t sub_1008C7D78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C4DF0((v0 + 16));
}

uint64_t sub_1008C7E4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C5630((v0 + 16));
}

uint64_t sub_1008C7F20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C5370((v0 + 16));
}

uint64_t sub_1008C7FF4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C50B0((v0 + 16));
}

uint64_t sub_1008C809C()
{
  v2 = *(sub_10010FC20(&qword_1011A86D0, &qword_100EEDCA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100008F30;

  return sub_1008EB718(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_1008C820C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C6130((v0 + 16));
}

uint64_t sub_1008C82AC()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1008ED18C(v0 + v3, v0 + v4);
}

uint64_t sub_1008C83E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C5E70((v0 + 16));
}

uint64_t sub_1008C8488()
{
  v2 = *(type metadata accessor for Playlist.Folder() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_1008EF21C(v5, v0 + v3, v0 + v4);
}

uint64_t sub_1008C85C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C5BB0((v0 + 16));
}

uint64_t sub_1008C8694()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C71E4((v0 + 16));
}

uint64_t sub_1008C8768()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C6E8C((v0 + 16));
}

uint64_t sub_1008C8840()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002F3F4;

  return sub_1008C6AD8((v0 + 16));
}

uint64_t sub_1008C8914()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_1008C897C()
{

  return swift_deallocObject();
}

uint64_t sub_1008C89DC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C6818((v0 + 16));
}

uint64_t sub_1008C8A94()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t sub_1008C8AF4()
{

  return swift_deallocObject();
}

uint64_t sub_1008C8B4C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1008C647C((v0 + 16));
}

void sub_1008C8C24(uint64_t a1)
{
  type metadata accessor for PlaybackController();
  if (v1 <= 0x3F)
  {
    sub_1008C8CD8(319);
    if (v2 <= 0x3F)
    {
      sub_1008C8D30();
      if (v3 <= 0x3F)
      {
        sub_1008C8D80(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008C8CD8(uint64_t a1)
{
  if (!qword_1011A87A0)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A87A0);
    }
  }
}

void sub_1008C8D30()
{
  if (!qword_1011A87A8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A87A8);
    }
  }
}

void sub_1008C8D80(uint64_t a1)
{
  if (!qword_1011A87B0)
  {
    sub_1001109D0(&unk_1011A87B8, &qword_100EF7620);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A87B0);
    }
  }
}

uint64_t sub_1008C8DF4(uint64_t a1)
{
  sub_10010FC20(&qword_1011A87F0, &unk_100EF4A50);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1008BE9C0(a1);
}

uint64_t sub_1008C8EF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C6654(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C8FB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C6A00(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C6CC0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C913C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C7074(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9200(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C73CC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C92C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C5D98(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9388(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C6058(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C944C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C6318(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9510(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C5298(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C95D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C5558(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C5818(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C975C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C4FD8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9820(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C4D18(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C98E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1008C994C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C5AD8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_1008C9A10()
{

  return swift_deallocObject();
}

uint64_t sub_1008C9A58(uint64_t a1)
{
  sub_10010FC20(&qword_1011A8670, &qword_100EF4CB0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1008BE850(a1);
}

uint64_t sub_1008C9B54(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_10010FC20(a1, a2) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_1008C9CF4(uint64_t a1)
{
  sub_10010FC20(&qword_1011A8678, &qword_100EEDBC0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1008BE908(a1);
}

uint64_t sub_1008C9DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008C9E58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1008C495C(a1, v4, v5, v1 + 32);
}

void Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t (**a9)(__n128 a1)@<X8>, uint64_t a10)
{
  v36 = a8;
  v37 = a4;
  v39 = a3;
  v40 = a6;
  v38 = a5;
  v43 = a2;
  v35[0] = a1;
  v41 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v42 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v35 - v15;
  (*(v12 + 16))(v35 - v15, v14);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v35[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v42;
  *(v21 + v20) = v43;
  v22(v23, v35[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v35[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  v30 = v37;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v38;
  *(v28 + 6) = v38;
  v22(v28 + v24, v42, a7);
  *(v28 + v25) = v43;
  sub_10012B828(v39, v28 + v35[0]);
  sub_10003D17C(v40, v28 + v27, &qword_1011A8660, &unk_100EEDB60);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_100EEDF60;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v34 = v41;
  *v41 = sub_1008CA960;
  v34[1] = v21;
  v34[2] = &unk_100EEDF50;
  v34[3] = v28;
  v34[4] = &unk_100EEDF70;
  v34[5] = v33;
}

double static Actions.AddToLibrary.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEDF78;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEDF80;
  *(a2 + 104) = 0;

  return result;
}

uint64_t sub_1008CA2F4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10002F3F4;

  return v5();
}

uint64_t sub_1008CA3DC(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

double sub_1008CA4C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEDF78;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEDF80;
  *(a2 + 104) = 0;

  return result;
}

unint64_t sub_1008CA57C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a2;
  v34 = type metadata accessor for MusicLibrary.AddAction();
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin();
  v12 = &v31 - v11;
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  __chkstk_darwin();
  v14 = &v31 - v13;
  v15 = *(a3 - 8);
  __chkstk_darwin();
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v15 + 16);
  v35 = a1;
  v23(v17, a1, a3, v20);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v14, 1, 1, v18);
    sub_1000095E8(v14, &qword_1011A8858, &qword_100EEE0A0);
    goto LABEL_5;
  }

  v25(v14, 0, 1, v18);
  v26.n128_f64[0] = (*(v19 + 32))(v22, v14, v18);
  v27 = Album.childrenAddStatus(_:)(v38, v26);
  (*(v19 + 8))(v22, v18);
  if (v27 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.add.getter();
    v29 = v34;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v36 + 8))(v9, v29);
    v28 = sub_1008CAFC0();
    (*(v32 + 8))(v12, v33);
    return v28;
  }

  return 0;
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1, __n128 a2)
{
  v40 = a1;
  v39 = type metadata accessor for MusicLibrary.AddAction();
  v2 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v4 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v28 - v5;
  v35 = type metadata accessor for Track();
  v6 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011A8800, &qword_100EEDF90);
  __chkstk_darwin();
  v10 = &v28 - v9;
  sub_10010FC20(&qword_1011A8808, &qword_100EEDF98);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v28 - v15;
  Album.tracks.getter();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_1011A8808, &qword_100EEDF98);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_1008D09F0(&qword_1011A8818, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v41[0] == v41[4])
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v29 = v14;
  (*(v14 + 16))(v10, v16, v13);
  v18 = *(v8 + 36);
  v28 = v16;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v10[v18] == v41[0])
  {
LABEL_11:
    sub_1000095E8(v10, &qword_1011A8800, &qword_100EEDF90);
    (*(v29 + 8))(v28, v13);
    return 2;
  }

  else
  {
    v32 = (v6 + 8);
    v33 = (v6 + 16);
    v30 = (v4 + 8);
    v31 = (v2 + 8);
    v19 = v34;
    while (1)
    {
      v20 = dispatch thunk of Collection.subscript.read();
      v21 = v35;
      (*v33)(v19);
      v20(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = v38;
      static MusicLibraryAction<>.add.getter();
      v23 = v36;
      v24 = v39;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      (*v32)(v19, v21);
      (*v31)(v22, v24);
      v25 = sub_1008CAFC0();
      v27 = v26;
      (*v30)(v23, v37);
      if (v27 == 1)
      {
        break;
      }

      sub_10089840C(v25, v27);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v10[v18] == v41[0])
      {
        goto LABEL_11;
      }
    }

    sub_1000095E8(v10, &qword_1011A8800, &qword_100EEDF90);
    (*(v29 + 8))(v28, v13);
    return 1;
  }
}

unint64_t sub_1008CAFC0()
{
  v1 = v0;
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v28 = *(v2 - 8);
  __chkstk_darwin();
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin();
  v16 = &v27 - v15;
  (*(v13 + 16))(&v27 - v15, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v7 + 32))(v11, v16, v6);
    (*(v7 + 16))(v9, v11, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v7 + 96))(v9, v6);
      v19 = v28;
      (*(v28 + 32))(v5, v9, v2);
      v20 = v27;
      (*(v19 + 16))(v27, v5, v2);
      v21 = (*(v19 + 88))(v20, v2);
      if (v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v21 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v29 = 0xD000000000000016;
        v30 = 0x8000000100E5AB50;
        sub_1008D09A0(&qword_1011A8848, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23 = v29;
        v24 = *(v19 + 8);
        v24(v5, v2);
        (*(v7 + 8))(v11, v6);
        v24(v20, v2);
        return v23;
      }

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v11, v6);
      return 0;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v7 + 8))(v11, v6);
      return 0xD000000000000012;
    }

    else
    {
      if (v18 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v7 + 8))(v11, v6);
        return 0xD000000000000010;
      }

      v26 = *(v7 + 8);
      v26(v11, v6);
      v26(v9, v6);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1008CB5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = sub_10010FC20(&qword_1011A8850, &qword_100EEE098);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.AddAction();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8808, &qword_100EEDF98);
  v8[119] = swift_task_alloc();
  v14 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = type metadata accessor for Album();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8860, &qword_100EEE0A8);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(sub_1008CBBB8, 0, 0);
}

uint64_t sub_1008CBBB8()
{
  v103 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    type metadata accessor for MainActor();
    *(v0 + 1112) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1008CC990;
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 144));

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  sub_100014984(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v101 = *(*(v0 + 864) + 56);
    v101(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      v27.n128_f64[0] = (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26, v27) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v28 = *(v0 + 968);
      v29 = *(v0 + 960);
      v30 = *(v0 + 952);
      Album.tracks.getter();
      if ((*(v28 + 48))(v30, 1, v29) != 1)
      {
        v80 = *(v0 + 976);
        v81 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v80, *(v0 + 952), *(v0 + 960));
        v102[0] = _swiftEmptyArrayStorage;

        LOBYTE(v80) = sub_1008D0574(v80, v81, v102);

        if (v80)
        {
          v82 = *(v0 + 1024);
          v83 = *(v0 + 1016);
          v84 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v83 + 8))(v82, v84);
        }

        else
        {
          if (*(v102[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v102[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v85 = 0;
          }

          else
          {
            v85 = 1;
          }

          v86 = *(v0 + 1080);
          v87 = *(v0 + 1072);
          v88 = *(v0 + 1024);
          v89 = *(v0 + 1016);
          v90 = *(v0 + 1008);
          v91 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v89 + 8))(v88, v90);
          sub_1000095E8(v86, &qword_1011A8860, &qword_100EEE0A8);
          v101(v87, v85, 1, v91);
          sub_10003D17C(v87, v86, &qword_1011A8860, &qword_100EEE0A8);
        }

LABEL_21:
        v39 = *(v0 + 1080);
        v40 = *(v0 + 1056);
        v41 = *(v0 + 896);
        v42 = *(v0 + 880);
        v43 = *(v0 + 864);
        v44 = *(v0 + 856);
        v98 = *(v43 + 104);
        v98(v40, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v44);
        v101(v40, 0, 1, v44);
        v100 = v42;
        v45 = *(v42 + 48);
        sub_1000089F8(v39, v41, &qword_1011A8860, &qword_100EEE0A8);
        sub_1000089F8(v40, v41 + v45, &qword_1011A8860, &qword_100EEE0A8);
        v46 = *(v43 + 48);
        if (v46(v41, 1, v44) == 1)
        {
          v47 = *(v0 + 856);
          sub_1000095E8(*(v0 + 1056), &qword_1011A8860, &qword_100EEE0A8);
          if (v46(v41 + v45, 1, v47) == 1)
          {
            sub_1000095E8(*(v0 + 896), &qword_1011A8860, &qword_100EEE0A8);
LABEL_35:
            *(v0 + 1136) = type metadata accessor for MainActor();
            *(v0 + 1144) = static MainActor.shared.getter();
            v71 = dispatch thunk of Actor.unownedExecutor.getter();
            v8 = v72;
            *(v0 + 1152) = v71;
            *(v0 + 1160) = v72;
            v6 = sub_1008CD79C;
            v7 = v71;
            goto LABEL_4;
          }
        }

        else
        {
          v48 = *(v0 + 856);
          sub_1000089F8(*(v0 + 896), *(v0 + 1048), &qword_1011A8860, &qword_100EEE0A8);
          v49 = v46(v41 + v45, 1, v48);
          v50 = *(v0 + 1056);
          v51 = *(v0 + 1048);
          if (v49 != 1)
          {
            v96 = v46;
            v94 = *(v0 + 896);
            v67 = *(v0 + 872);
            v68 = *(v0 + 864);
            v69 = *(v0 + 856);
            (*(v68 + 32))(v67, v41 + v45, v69);
            sub_1008D09A0(&qword_1011A8870, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v93 = dispatch thunk of static Equatable.== infix(_:_:)();
            v70 = *(v68 + 8);
            v70(v67, v69);
            sub_1000095E8(v50, &qword_1011A8860, &qword_100EEE0A8);
            v70(v51, v69);
            sub_1000095E8(v94, &qword_1011A8860, &qword_100EEE0A8);
            if (v93)
            {
              goto LABEL_35;
            }

LABEL_27:
            v54 = *(v0 + 1080);
            v55 = *(v0 + 1040);
            v56 = *(v0 + 888);
            v57 = *(v0 + 856);
            v98(v55, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v57);
            v101(v55, 0, 1, v57);
            v58 = *(v100 + 48);
            sub_1000089F8(v54, v56, &qword_1011A8860, &qword_100EEE0A8);
            sub_1000089F8(v55, v56 + v58, &qword_1011A8860, &qword_100EEE0A8);
            if (v96(v56, 1, v57) == 1)
            {
              v59 = *(v0 + 856);
              sub_1000095E8(*(v0 + 1040), &qword_1011A8860, &qword_100EEE0A8);
              if (v96(v56 + v58, 1, v59) == 1)
              {
                sub_1000095E8(*(v0 + 888), &qword_1011A8860, &qword_100EEE0A8);
LABEL_37:
                *(v0 + 1192) = type metadata accessor for MainActor();
                *(v0 + 1200) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v79;
                v5 = sub_1008CDA74;
                goto LABEL_3;
              }
            }

            else
            {
              v60 = *(v0 + 856);
              sub_1000089F8(*(v0 + 888), *(v0 + 1032), &qword_1011A8860, &qword_100EEE0A8);
              v61 = v96(v56 + v58, 1, v60);
              v62 = *(v0 + 1040);
              v63 = *(v0 + 1032);
              if (v61 != 1)
              {
                v73 = *(v0 + 888);
                v74 = *(v0 + 872);
                v75 = *(v0 + 864);
                v76 = *(v0 + 856);
                (*(v75 + 32))(v74, v56 + v58, v76);
                sub_1008D09A0(&qword_1011A8870, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
                v77 = dispatch thunk of static Equatable.== infix(_:_:)();
                v78 = *(v75 + 8);
                v78(v74, v76);
                sub_1000095E8(v62, &qword_1011A8860, &qword_100EEE0A8);
                v78(v63, v76);
                sub_1000095E8(v73, &qword_1011A8860, &qword_100EEE0A8);
                if (v77)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = type metadata accessor for MainActor();
                *(v0 + 1224) = static MainActor.shared.getter();
                v2 = dispatch thunk of Actor.unownedExecutor.getter();
                v4 = v66;
                v5 = sub_1008CE0B0;
                goto LABEL_3;
              }

              v64 = *(v0 + 864);
              v65 = *(v0 + 856);
              sub_1000095E8(*(v0 + 1040), &qword_1011A8860, &qword_100EEE0A8);
              (*(v64 + 8))(v63, v65);
            }

            sub_1000095E8(*(v0 + 888), &qword_1011A8850, &qword_100EEE098);
            goto LABEL_33;
          }

          v52 = *(v0 + 864);
          v53 = *(v0 + 856);
          sub_1000095E8(*(v0 + 1056), &qword_1011A8860, &qword_100EEE0A8);
          (*(v52 + 8))(v51, v53);
        }

        v96 = v46;
        sub_1000095E8(*(v0 + 896), &qword_1011A8850, &qword_100EEE098);
        goto LABEL_27;
      }

      v31 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v32 = &qword_1011A8808;
      v33 = &qword_100EEDF98;
    }

    else
    {
      v31 = *(v0 + 984);
      v21(v31, 1, 1, *(v0 + 1008));
      v32 = &qword_1011A8858;
      v33 = &qword_100EEE0A0;
    }

    sub_1000095E8(v31, v32, v33);
LABEL_20:
    v95 = *(v0 + 1064);
    v34 = *(v0 + 944);
    v35 = *(v0 + 936);
    v97 = *(v0 + 928);
    v99 = *(v0 + 1080);
    v36 = *(v0 + 920);
    v37 = *(v0 + 912);
    v38 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v37 + 8))(v36, v38);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v95);
    (*(v35 + 8))(v34, v97);
    sub_1000095E8(v99, &qword_1011A8860, &qword_100EEE0A8);
    sub_10003D17C(v95, v99, &qword_1011A8860, &qword_100EEE0A8);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
  sub_100309980(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1008CC990()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(sub_1008CCA2C, 0, 0);
}

uint64_t sub_1008CCA2C()
{
  v101 = v0;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 144));

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100014984(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
    sub_100309980(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v99 = *(*(v0 + 864) + 56);
  v99(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v24 = *(v0 + 984);
    v14(v24, 1, 1, *(v0 + 1008));
    v25 = &qword_1011A8858;
    v26 = &qword_100EEE0A0;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  v20.n128_f64[0] = (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19, v20) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v21 = *(v0 + 968);
  v22 = *(v0 + 960);
  v23 = *(v0 + 952);
  Album.tracks.getter();
  if ((*(v21 + 48))(v23, 1, v22) == 1)
  {
    v24 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v25 = &qword_1011A8808;
    v26 = &qword_100EEDF98;
LABEL_12:
    sub_1000095E8(v24, v25, v26);
LABEL_14:
    v93 = *(v0 + 1064);
    v27 = *(v0 + 944);
    v28 = *(v0 + 936);
    v95 = *(v0 + 928);
    v97 = *(v0 + 1080);
    v29 = *(v0 + 920);
    v30 = *(v0 + 912);
    v31 = *(v0 + 904);
    static MusicLibraryAction<>.add.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v30 + 8))(v29, v31);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v93);
    (*(v28 + 8))(v27, v95);
    sub_1000095E8(v97, &qword_1011A8860, &qword_100EEE0A8);
    sub_10003D17C(v93, v97, &qword_1011A8860, &qword_100EEE0A8);
    goto LABEL_15;
  }

  v79 = *(v0 + 976);
  v80 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v79, *(v0 + 952), *(v0 + 960));
  v100[0] = _swiftEmptyArrayStorage;

  LOBYTE(v79) = sub_1008D0574(v79, v80, v100);

  if (v79)
  {
    v81 = *(v0 + 1024);
    v82 = *(v0 + 1016);
    v83 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v82 + 8))(v81, v83);
  }

  else
  {
    if (*(v100[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v100[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = *(v0 + 1080);
    v86 = *(v0 + 1072);
    v87 = *(v0 + 1024);
    v88 = *(v0 + 1016);
    v89 = *(v0 + 1008);
    v90 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v88 + 8))(v87, v89);
    sub_1000095E8(v85, &qword_1011A8860, &qword_100EEE0A8);
    v99(v86, v84, 1, v90);
    sub_10003D17C(v86, v85, &qword_1011A8860, &qword_100EEE0A8);
  }

LABEL_15:
  v32 = *(v0 + 1080);
  v33 = *(v0 + 1056);
  v34 = *(v0 + 896);
  v35 = *(v0 + 880);
  v36 = *(v0 + 864);
  v37 = *(v0 + 856);
  v96 = *(v36 + 104);
  v96(v33, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v37);
  v99(v33, 0, 1, v37);
  v98 = v35;
  v38 = *(v35 + 48);
  sub_1000089F8(v32, v34, &qword_1011A8860, &qword_100EEE0A8);
  sub_1000089F8(v33, v34 + v38, &qword_1011A8860, &qword_100EEE0A8);
  v39 = *(v36 + 48);
  if (v39(v34, 1, v37) != 1)
  {
    v41 = *(v0 + 856);
    sub_1000089F8(*(v0 + 896), *(v0 + 1048), &qword_1011A8860, &qword_100EEE0A8);
    v42 = v39(v34 + v38, 1, v41);
    v43 = *(v0 + 1056);
    v44 = *(v0 + 1048);
    if (v42 != 1)
    {
      v94 = v39;
      v92 = *(v0 + 896);
      v63 = *(v0 + 872);
      v64 = *(v0 + 864);
      v65 = *(v0 + 856);
      (*(v64 + 32))(v63, v34 + v38, v65);
      sub_1008D09A0(&qword_1011A8870, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v91 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v64 + 8);
      v66(v63, v65);
      sub_1000095E8(v43, &qword_1011A8860, &qword_100EEE0A8);
      v66(v44, v65);
      sub_1000095E8(v92, &qword_1011A8860, &qword_100EEE0A8);
      if (v91)
      {
        goto LABEL_29;
      }

LABEL_21:
      v47 = *(v0 + 1080);
      v48 = *(v0 + 1040);
      v49 = *(v0 + 888);
      v50 = *(v0 + 856);
      v96(v48, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v50);
      v99(v48, 0, 1, v50);
      v51 = *(v98 + 48);
      sub_1000089F8(v47, v49, &qword_1011A8860, &qword_100EEE0A8);
      sub_1000089F8(v48, v49 + v51, &qword_1011A8860, &qword_100EEE0A8);
      if (v94(v49, 1, v50) == 1)
      {
        v52 = *(v0 + 856);
        sub_1000095E8(*(v0 + 1040), &qword_1011A8860, &qword_100EEE0A8);
        if (v94(v49 + v51, 1, v52) == 1)
        {
          sub_1000095E8(*(v0 + 888), &qword_1011A8860, &qword_100EEE0A8);
LABEL_31:
          *(v0 + 1192) = type metadata accessor for MainActor();
          *(v0 + 1200) = static MainActor.shared.getter();
          v59 = dispatch thunk of Actor.unownedExecutor.getter();
          v61 = v78;
          v62 = sub_1008CDA74;
          goto LABEL_32;
        }
      }

      else
      {
        v53 = *(v0 + 856);
        sub_1000089F8(*(v0 + 888), *(v0 + 1032), &qword_1011A8860, &qword_100EEE0A8);
        v54 = v94(v49 + v51, 1, v53);
        v55 = *(v0 + 1040);
        v56 = *(v0 + 1032);
        if (v54 != 1)
        {
          v72 = *(v0 + 888);
          v73 = *(v0 + 872);
          v74 = *(v0 + 864);
          v75 = *(v0 + 856);
          (*(v74 + 32))(v73, v49 + v51, v75);
          sub_1008D09A0(&qword_1011A8870, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          v77 = *(v74 + 8);
          v77(v73, v75);
          sub_1000095E8(v55, &qword_1011A8860, &qword_100EEE0A8);
          v77(v56, v75);
          sub_1000095E8(v72, &qword_1011A8860, &qword_100EEE0A8);
          if (v76)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = type metadata accessor for MainActor();
          *(v0 + 1224) = static MainActor.shared.getter();
          v59 = dispatch thunk of Actor.unownedExecutor.getter();
          v61 = v60;
          v62 = sub_1008CE0B0;
LABEL_32:
          v70 = v62;
          v71 = v59;
          v69 = v61;
          goto LABEL_33;
        }

        v57 = *(v0 + 864);
        v58 = *(v0 + 856);
        sub_1000095E8(*(v0 + 1040), &qword_1011A8860, &qword_100EEE0A8);
        (*(v57 + 8))(v56, v58);
      }

      sub_1000095E8(*(v0 + 888), &qword_1011A8850, &qword_100EEE098);
      goto LABEL_27;
    }

    v45 = *(v0 + 864);
    v46 = *(v0 + 856);
    sub_1000095E8(*(v0 + 1056), &qword_1011A8860, &qword_100EEE0A8);
    (*(v45 + 8))(v44, v46);
LABEL_20:
    v94 = v39;
    sub_1000095E8(*(v0 + 896), &qword_1011A8850, &qword_100EEE098);
    goto LABEL_21;
  }

  v40 = *(v0 + 856);
  sub_1000095E8(*(v0 + 1056), &qword_1011A8860, &qword_100EEE0A8);
  if (v39(v34 + v38, 1, v40) != 1)
  {
    goto LABEL_20;
  }

  sub_1000095E8(*(v0 + 896), &qword_1011A8860, &qword_100EEE0A8);
LABEL_29:
  *(v0 + 1136) = type metadata accessor for MainActor();
  *(v0 + 1144) = static MainActor.shared.getter();
  v67 = dispatch thunk of Actor.unownedExecutor.getter();
  v69 = v68;
  *(v0 + 1152) = v67;
  *(v0 + 1160) = v68;
  v70 = sub_1008CD79C;
  v71 = v67;
LABEL_33:

  return _swift_task_switch(v70, v71, v69);
}

uint64_t sub_1008CD79C(uint64_t a1)
{
  v2 = v1[82];
  v3 = static MainActor.shared.getter();
  v1[146] = v3;
  v4 = swift_task_alloc();
  v1[147] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[148] = v5;
  *v5 = v1;
  v5[1] = sub_1008CD8AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 609, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v4, &type metadata for Bool);
}

uint64_t sub_1008CD8AC()
{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(sub_1008CDA0C, v3, v2);
}

uint64_t sub_1008CDA0C()
{

  return _swift_task_switch(sub_1008D0A48, 0, 0);
}

uint64_t sub_1008CDA74()
{

  sub_10097F360(0, v0 + 448);

  return _swift_task_switch(sub_1008CDAE8, 0, 0);
}

uint64_t sub_1008CDAE8(uint64_t a1)
{
  *(v1 + 1208) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008CDB74, v3, v2);
}

uint64_t sub_1008CDB74()
{
  v1 = *(v0 + 656);

  v2 = sub_10093F41C((v0 + 448), 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1011A6AC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011AE4E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 656);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = sub_100A8F4C0;
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = sub_100A90460;
    *(v0 + 544) = &unk_1010CC050;
    v14 = _Block_copy((v0 + 520));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v12, v0 + 272);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(v0 + 272, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_1008D0984, v16);
    sub_100020438(v5, v6);

    sub_100344A84(v0 + 448);
    v19 = sub_1008CDE64;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 480), 1, 0, 0);

    sub_100344A84(v0 + 448);
    v19 = sub_1008D0A48;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_1008CDE64()
{
  sub_1000095E8(*(v0 + 1080), &qword_1011A8860, &qword_100EEE0A8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CE0B0()
{
  v1 = *(v0 + 848);

  sub_1009E0F34(v1, 0);
  sub_1008D0924(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_1008CE148, 0, 0);
}

uint64_t sub_1008CE148()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_1000089F8(*(v0 + 664), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 808), &qword_1011A8660, &unk_100EEDB60);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    sub_1009F00CC(v5, v5);
    swift_allocObject();
    v7 = static Array._adoptStorage(_:count:)();
    v4(v8, v6, v5);
    v9 = sub_1009B83E8(v7);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_1008CEE04;
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 672);
    sub_1008D08BC(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v16);
    *(v0 + 1240) = v17;
    v18 = type metadata accessor for URL();
    *(v0 + 1248) = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    *(v0 + 1256) = v20;
    *(v0 + 1264) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v15, 1, 1, v18);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v16);
    *(inited + 40) = v22;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = sub_1008AC260(inited);
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v24;
    *(v0 + 610) = v25;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = static MainActor.shared.getter();
    v27 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008CE498, v27, v26);
  }
}

uint64_t sub_1008CE498()
{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  sub_10003D17C(v4, v5 + v6[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v18, v17, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v18, v17, v16, SBYTE1(v16));

    sub_1008D0924(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 736), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D0924(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    sub_1000095E8(*(v0 + 728), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    sub_1000089F8(v36 + v14[6], *(v0 + 784), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D0924(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  sub_10003D17C(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 720), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D0924(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D0924(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 704), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D0924(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D0924(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  sub_1008D08BC(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D0924(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008CEC8C, 0, 0);
}

uint64_t sub_1008CEC8C()
{
  sub_1008D0924(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  sub_1009F00CC(v2, v2);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  v1(v5, v3, v2);
  v6 = sub_1009B83E8(v4);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1008CEE04;
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

uint64_t sub_1008CEE04(uint64_t a1)
{
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v3 = sub_1008CEF40;
  }

  else
  {

    v3 = sub_1008D0A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1008CEF40()
{
  sub_1000095E8(*(v0 + 1080), &qword_1011A8860, &qword_100EEE0A8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008CF194()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_1008CB5E0(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t sub_1008CF324(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v33 = a3;
  v34 = a2;
  sub_10010FC20(&qword_1011A8860, &qword_100EEE0A8);
  __chkstk_darwin();
  v4 = &v33 - v3;
  v38 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v5 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v33 - v7;
  v8 = type metadata accessor for MusicLibrary.AddAction();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Track();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v4);
  v17 = v38;
  if ((*(v5 + 48))(v4, 1, v38) == 1)
  {
    sub_1000095E8(v4, &qword_1011A8860, &qword_100EEE0A8);
  }

  else
  {
    v18 = v35;
    v34 = *(v5 + 32);
    v34(v35, v4, v17);
    (*(v5 + 16))(v37, v18, v17);
    v19 = v33;
    v20 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v19;
    }

    else
    {
      v20 = sub_10089C980(0, v20[2] + 1, 1, v20);
      v22 = v19;
      *v19 = v20;
    }

    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      *v22 = sub_10089C980((v23 > 1), v24 + 1, 1, v20);
    }

    v25 = v38;
    (*(v5 + 8))(v35, v38);
    v26 = *v22;
    *(v26 + 16) = v24 + 1;
    v34((v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24), v37, v25);
  }

  v27 = v36;
  (*(v13 + 16))(v36, v16, v12);
  v28 = (*(v13 + 88))(v27, v12);
  v29 = v28;
  v30 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v28 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v31 = *(v13 + 8);
    v31(v16, v12);
    v31(v27, v12);
    return v29 != v30;
  }

  if (v28 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    return v29 != v30;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4, v12);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v11, v14, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v11, v8);
      v16 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v11, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_1008CFB3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008CFBD4, v4, v3);
}

uint64_t sub_1008CFBD4()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008CFC68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F3F4;

  return sub_1008CFB3C(v2, v3);
}

uint64_t sub_1008CFD00(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000651A8;

  return v4();
}

uint64_t sub_1008CFDE8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1008CFD00(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D04DC;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000100E5AAE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x8000000100E5AAE0;
  return sub_1008D0A40;
}

uint64_t (*sub_1008D01C4())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D0A40;
}

uint64_t (*sub_1008D0268())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000100E5AAE0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x8000000100E5AAE0;
  return sub_1008D0A40;
}

uint64_t _s9MusicCore7ActionsO12AddToLibraryO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

unint64_t sub_1008D04F0()
{
  result = qword_1011A8840;
  if (!qword_1011A8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8840);
  }

  return result;
}

BOOL sub_1008D0574(uint64_t a1, void (*a2)(char *, char *, uint64_t), uint64_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = type metadata accessor for Track();
  v4 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = sub_10010FC20(&qword_1011A8800, &qword_100EEDF90) - 8;
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6, v11);
  sub_1008D09F0(&qword_1011A8878, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v14 = *(v10 + 44);
  sub_1008D09F0(&qword_1011A8818, &protocol conformance descriptor for MusicItemCollection<A>);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    dispatch thunk of Collection.endIndex.getter();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = dispatch thunk of Collection.subscript.read();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v20 = v33;
    v21 = sub_1008CF324(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  sub_1000095E8(v13, &qword_1011A8800, &qword_100EEDF90);
  return v31 != v15;
}

uint64_t sub_1008D08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008D0924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008D09A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008D09F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011A8810, &qword_100EEDFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = sub_1008D95FC(a1, a3, a4, a5, a6, a7, a8, a10, v19, a11);
  (*(*(a7 - 8) + 8))(a4, a7, v16);

  (*(*(a6 - 8) + 8))(a1, a6);
  v17 = v19[1];
  *a9 = v19[0];
  a9[1] = v17;
  result = *&v20;
  a9[2] = v20;
  return result;
}

double static Actions.AddToPlaylist.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEE0F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEE100;
  *(a2 + 104) = 0;

  return result;
}

double sub_1008D0BE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEE0F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEE100;
  *(a2 + 104) = 0;

  return result;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_1008D04DC;
}

uint64_t (*sub_1008D0D4C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_1008D0A40;
}

void Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t (**a8)()@<X8>)
{
  v76 = a7;
  v79 = a6;
  v80 = a5;
  v78 = a4;
  v77 = a3;
  v81 = a8;
  v96 = type metadata accessor for MusicLibrary.AddAction();
  v10 = *(v96 - 8);
  __chkstk_darwin();
  v95 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v72 - v15;
  __chkstk_darwin();
  v73 = &v72 - v16;
  __chkstk_darwin();
  v18 = &v72 - v17;
  v75 = v19;
  __chkstk_darwin();
  v100 = &v72 - v20;
  sub_10010FC20(&qword_1011A8880, &qword_100EEE108);
  __chkstk_darwin();
  v72 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v72 - v22;
  __chkstk_darwin();
  v25 = &v72 - v24;
  v26 = __chkstk_darwin();
  v28 = &v72 - v27;
  v82 = v13;
  v92 = *(v13 + 56);
  v93 = v13 + 56;
  v92(&v72 - v27, 1, 1, v12, v26);
  v97 = a1;
  v91 = *(a1 + 16);
  if (v91)
  {
    v29 = 0;
    v30 = v97 + 32;
    v89 = (v10 + 8);
    v87 = (v82 + 88);
    v88 = (v82 + 16);
    v94 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v31 = (v82 + 8);
    v85 = (v82 + 48);
    v84 = (v82 + 32);
    v86 = v25;
    v90 = v28;
    while (v29 < *(v97 + 16))
    {
      v98 = v30;
      v99 = v29;
      sub_1001DF424(v30, v101);
      sub_10000954C(v101, v101[3]);
      v34 = v95;
      static MusicLibraryAction<>.add.getter();
      v35 = v31;
      v36 = v12;
      v37 = v100;
      v38 = v96;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      sub_10000959C(v101);
      (*v89)(v34, v38);
      v39 = v37;
      v12 = v36;
      v31 = v35;
      (*v88)(v18, v39, v12);
      v40 = (*v87)(v18, v12);
      v41 = *v35;
      if (v40 == v94)
      {
        v41(v100, v12);

        v41(v18, v12);
        sub_1000095E8(v90, &qword_1011A8880, &qword_100EEE108);
        v45 = v82;
        v47 = v12;
        v50 = v73;
        (*(v82 + 104))(v73, v94, v12);
        goto LABEL_15;
      }

      v41(v18, v12);
      v28 = v90;
      sub_10003D17C(v90, v23, &qword_1011A8880, &qword_100EEE108);
      v42 = *v85;
      if ((*v85)(v23, 1, v12) == 1)
      {
        v32 = v86;
        (*v84)(v86, v100, v12);
        v43 = v42(v23, 1, v12);
        v33 = v99;
        if (v43 != 1)
        {
          sub_1000095E8(v23, &qword_1011A8880, &qword_100EEE108);
        }
      }

      else
      {
        v41(v100, v12);
        v32 = v86;
        (*v84)(v86, v23, v12);
        v33 = v99;
      }

      v29 = v33 + 1;
      (v92)(v32, 0, 1, v12);
      sub_10003D17C(v32, v28, &qword_1011A8880, &qword_100EEE108);
      v30 = v98 + 48;
      if (v91 == v29)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v44 = v72;
    sub_10003D17C(v28, v72, &qword_1011A8880, &qword_100EEE108);
    v45 = v82;
    v46 = *(v82 + 48);
    v47 = v12;
    if (v46(v44, 1, v12) == 1)
    {
      v48 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v49 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
      v50 = v73;
      (*(*(v49 - 8) + 104))(v73, v48, v49);
      (*(v45 + 104))(v50, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v12);
      v51 = v46(v44, 1, v12) == 1;
      v52 = v44;
      v53 = v75;
      if (!v51)
      {
        sub_1000095E8(v52, &qword_1011A8880, &qword_100EEE108);
      }
    }

    else
    {
      v50 = v73;
      (*(v45 + 32))(v73, v44, v12);
LABEL_15:
      v53 = v75;
    }

    v54 = v74;
    (*(v45 + 16))(v74, v50, v47);
    v55 = *(v45 + 80);
    v100 = swift_allocObject();
    v56 = *(v45 + 32);
    v56(&v100[(v55 + 16) & ~v55], v54, v47);
    v56(v83, v50, v47);
    v57 = (v55 + 32) & ~v55;
    v58 = (v53 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 103) & 0xFFFFFFFFFFFFFFF8;
    v60 = v79;
    v61 = *(v79 - 8);
    v62 = (v59 + *(v61 + 80) + 8) & ~*(v61 + 80);
    v63 = swift_allocObject();
    v64 = v76;
    *(v63 + 16) = v60;
    *(v63 + 24) = v64;
    v56((v63 + v57), v83, v47);
    sub_10012B828(v77, v63 + v58);
    v65 = v97;
    *(v63 + v59) = v97;
    (*(v61 + 32))(v63 + v62, v78, v60);
    v66 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
    v67 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v68 = (*(v66 + 64) + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    sub_10003D17C(v80, v69 + v67, &qword_1011A8660, &unk_100EEDB60);
    *(v69 + v68) = v65;

    v70 = v81;
    v71 = v100;
    *v81 = sub_1008D984C;
    v70[1] = v71;
    v70[2] = &unk_100EEE118;
    v70[3] = v63;
    v70[4] = &unk_100EEE128;
    v70[5] = v69;
  }
}

unint64_t sub_1008D17FC(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin();
  v53 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v50 = &v47 - v5;
  v6 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v47 - v15;
  v16 = __chkstk_darwin();
  v18 = &v47 - v17;
  v19 = *(v13 + 16);
  v49 = a1;
  v19(&v47 - v17, a1, v12, v16);
  v20 = (*(v13 + 88))(v18, v12);
  if (v20 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v20 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (qword_1011A6748 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000060E4(v29, static Logger.actions);
      v30 = v48;
      (v19)(v48, v49, v12);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v33 = 136315138;
        LODWORD(v52) = v32;
        (v19)(v47, v30, v12);
        v34 = String.init<A>(describing:)();
        v36 = v35;
        v37 = *(v13 + 8);
        v37(v30, v12);
        v38 = sub_100010678(v34, v36, &v54);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v52, "Unknown status=%s", v33, 0xCu);
        sub_10000959C(v53);
      }

      else
      {

        v37 = *(v13 + 8);
        v37(v30, v12);
      }

      v28 = 0x206E776F6E6B6E55;
      v37(v18, v12);
      return v28;
    }

    return 0;
  }

  (*(v13 + 96))(v18, v12);
  (*(v7 + 32))(v11, v18, v6);
  (*(v7 + 16))(v9, v11, v6);
  v21 = (*(v7 + 88))(v9, v6);
  if (v21 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v28 = 0xD000000000000010;
      (*(v7 + 8))(v11, v6);
      return v28;
    }

    if (v21 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v39 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v40 = *(v7 + 8);
    v41 = v21;
    v40(v11, v6);
    if (v41 != v39)
    {
      v28 = 0x206E776F6E6B6E55;
      v40(v9, v6);
      return v28;
    }

    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v22 = v52;
  v23 = v50;
  v24 = v9;
  v25 = v51;
  (*(v52 + 32))(v50, v24, v51);
  v26 = v53;
  (*(v22 + 16))(v53, v23, v25);
  v27 = (*(v22 + 88))(v26, v25);
  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001CLL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD00000000000001ELL;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000014;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000025;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v22 + 8))(v23, v25);
LABEL_27:
    (*(v7 + 8))(v11, v6);
    return 0;
  }

  if (v27 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v22 + 8))(v23, v25);
    (*(v7 + 8))(v11, v6);
    return 0xD000000000000016;
  }

  else
  {
    v28 = 0x206E776F6E6B6E55;
    v43 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v44 = v23;
    v45 = *(v22 + 8);
    v46 = v27;
    v45(v44, v25);
    (*(v7 + 8))(v11, v6);
    if (v46 != v43)
    {
      v45(v53, v25);
    }
  }

  return v28;
}

uint64_t sub_1008D2168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = type metadata accessor for ContentRating();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = sub_10010FC20(&qword_1011A88F8, &qword_100EEE1C8);
  v6[77] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8900, &qword_100EEE1D0);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = type metadata accessor for Track();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = sub_10010FC20(&qword_1011A8800, &qword_100EEDF90);
  v6[85] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8808, &qword_100EEDF98);
  v6[86] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8860, &qword_100EEE0A8);
  v6[92] = swift_task_alloc();
  v10 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_1008D24C4, 0, 0);
}

uint64_t sub_1008D24C4()
{
  v105 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v12 = *(v0 + 776);
    v13 = *(v0 + 768);
    v14 = *(v0 + 752);
    v15 = *(v0 + 744);
    (*(v14 + 32))(v12, *(v0 + 736), v15);
    v16 = *(v14 + 16);
    v16(v13, v12, v15);
    v17 = (*(v14 + 88))(v13, v15);
    if (v17 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v17 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v17 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v36 = *(v0 + 776);
          v37 = *(v0 + 752);
          v38 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 448);
          sub_100309980(v0 + 448);
          (*(v37 + 8))(v36, v38);
        }

        else
        {
          if (qword_1011A6748 != -1)
          {
            swift_once();
          }

          v43 = *(v0 + 776);
          v44 = *(v0 + 760);
          v45 = *(v0 + 744);
          v46 = type metadata accessor for Logger();
          sub_1000060E4(v46, static Logger.actions);
          v16(v44, v43, v45);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.fault.getter();
          v49 = os_log_type_enabled(v47, v48);
          v50 = *(v0 + 776);
          v51 = *(v0 + 760);
          v52 = *(v0 + 752);
          v53 = *(v0 + 744);
          if (v49)
          {
            v103 = *(v0 + 776);
            v54 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v104 = v98;
            *v54 = 136315138;
            sub_1008D9BBC(&qword_1011A8848, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
            v55 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v56;
            v58 = *(v52 + 8);
            v58(v51, v53);
            v59 = sub_100010678(v55, v57, &v104);

            *(v54 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v47, v48, "Unhandled unaddableReason=%s", v54, 0xCu);
            sub_10000959C(v98);

            v60 = v103;
          }

          else
          {

            v58 = *(v52 + 8);
            v58(v51, v53);
            v60 = v50;
          }

          v58(v60, v53);
          v58(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v84 = *(v0 + 8);

        return v84();
      }

      *(v0 + 816) = type metadata accessor for MainActor();
      *(v0 + 824) = static MainActor.shared.getter();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      *(v0 + 832) = v22;
      *(v0 + 840) = v23;
      v25 = sub_1008D3748;
      v26 = v22;
LABEL_22:

      return _swift_task_switch(v25, v26, v24);
    }

    *(v0 + 792) = type metadata accessor for MainActor();
    *(v0 + 800) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    v21 = sub_1008D320C;
LABEL_21:
    v25 = v21;
    v26 = v18;
    v24 = v20;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  sub_1000095E8(*(v0 + 736), &qword_1011A8860, &qword_100EEE0A8);
  MusicItemCollection.init(arrayLiteral:)();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    sub_10000954C((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = sub_1008D3A24;
    v10 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v10, v7, v9);
  }

  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v39 = *(v0 + 680);
  v40 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  sub_1008D09F0(&qword_1011A8878, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v41 = *(v40 + 36);
  sub_1008D09F0(&qword_1011A8818, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v102 = v41;
  if (*(v39 + v41) == *(v0 + 528))
  {
LABEL_20:
    sub_1000095E8(*(v0 + 680), &qword_1011A8800, &qword_100EEDF90);
    *(v0 + 888) = type metadata accessor for MainActor();
    *(v0 + 896) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v42;
    v21 = sub_1008D4558;
    goto LABEL_21;
  }

  v61 = *(v0 + 656);
  v95 = *(v0 + 608);
  v94 = (v61 + 16);
  v62 = *(v0 + 592);
  v92 = (v62 + 56);
  v93 = (v62 + 104);
  v85 = (v62 + 32);
  v87 = (v62 + 8);
  v88 = v39;
  v90 = (v61 + 8);
  v91 = (v62 + 48);
  v89 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v67 = *(v0 + 664);
    v99 = *(v0 + 640);
    v68 = *(v0 + 632);
    v96 = *(v0 + 616);
    v69 = *(v0 + 584);
    v70 = dispatch thunk of Collection.subscript.read();
    (*v94)(v67);
    v70(v0 + 496, 0);
    dispatch thunk of Collection.formIndex(after:)();
    Track.contentRating.getter();
    (*v93)(v68, v89, v69);
    (*v92)(v68, 0, 1, v69);
    v71 = *(v95 + 48);
    sub_1000089F8(v99, v96, &qword_1011A8900, &qword_100EEE1D0);
    sub_1000089F8(v68, v96 + v71, &qword_1011A8900, &qword_100EEE1D0);
    v72 = *v91;
    if ((*v91)(v96, 1, v69) == 1)
    {
      break;
    }

    v73 = *(v0 + 584);
    sub_1000089F8(*(v0 + 616), *(v0 + 624), &qword_1011A8900, &qword_100EEE1D0);
    v74 = v72(v96 + v71, 1, v73);
    v75 = *(v0 + 664);
    v76 = *(v0 + 648);
    v77 = *(v0 + 640);
    v78 = *(v0 + 632);
    v79 = *(v0 + 624);
    if (v74 == 1)
    {
      v80 = *(v0 + 584);
      sub_1000095E8(*(v0 + 632), &qword_1011A8900, &qword_100EEE1D0);
      sub_1000095E8(v77, &qword_1011A8900, &qword_100EEE1D0);
      (*v90)(v75, v76);
      (*v87)(v79, v80);
      goto LABEL_31;
    }

    v100 = *(v0 + 616);
    v81 = *(v0 + 600);
    v82 = *(v0 + 584);
    (*v85)(v81, v96 + v71, v82);
    sub_1008D9BBC(&qword_1011A8908, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
    v86 = dispatch thunk of static Equatable.== infix(_:_:)();
    v83 = *v87;
    (*v87)(v81, v82);
    sub_1000095E8(v78, &qword_1011A8900, &qword_100EEE1D0);
    sub_1000095E8(v77, &qword_1011A8900, &qword_100EEE1D0);
    (*v90)(v75, v76);
    v83(v79, v82);
    sub_1000095E8(v100, &qword_1011A8900, &qword_100EEE1D0);
    if (v86)
    {
      goto LABEL_41;
    }

LABEL_32:
    dispatch thunk of Collection.endIndex.getter();
    if (*(v88 + v102) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v63 = *(v0 + 664);
  v64 = *(v0 + 648);
  v65 = *(v0 + 640);
  v66 = *(v0 + 584);
  sub_1000095E8(*(v0 + 632), &qword_1011A8900, &qword_100EEE1D0);
  sub_1000095E8(v65, &qword_1011A8900, &qword_100EEE1D0);
  (*v90)(v63, v64);
  if (v72(v96 + v71, 1, v66) != 1)
  {
LABEL_31:
    sub_1000095E8(*(v0 + 616), &qword_1011A88F8, &qword_100EEE1C8);
    goto LABEL_32;
  }

  sub_1000095E8(*(v0 + 616), &qword_1011A8900, &qword_100EEE1D0);
LABEL_41:
  sub_1000095E8(*(v0 + 680), &qword_1011A8800, &qword_100EEDF90);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v101 = *(v0 + 576);
  v27 = *(v0 + 552);
  v29 = v27[7];
  v28 = v27[8];
  v30 = v27[9];
  v31 = sub_10000954C(v27 + 4, v29);
  v97 = (*(v101 + 8) + **(v101 + 8));
  v32 = swift_task_alloc();
  *(v0 + 912) = v32;
  *v32 = v0;
  v32[1] = sub_1008D4A94;
  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 728);

  return v97(v35, v31, v29, v28, v30, v34, v33);
}

uint64_t sub_1008D320C()
{

  sub_10097F360(0, v0 + 280);

  return _swift_task_switch(sub_1008D3280, 0, 0);
}

uint64_t sub_1008D3280(uint64_t a1)
{
  *(v1 + 808) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008D330C, v3, v2);
}

uint64_t sub_1008D330C()
{
  v1 = *(v0 + 544);

  v2 = sub_10093F41C((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1011A6AC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011AE4E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_100A8F4C0;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100A90460;
    *(v0 + 424) = &unk_1010CC2F0;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_1008D9CA4, v16);
    sub_100020438(v5, v6);

    sub_100344A84(v0 + 280);
    v19 = sub_1008D35F4;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 312), 1, 0, 0);

    sub_100344A84(v0 + 280);
    v19 = sub_1008D9CA0;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_1008D35F4()
{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008D3748(uint64_t a1)
{
  v2 = v1[68];
  v3 = static MainActor.shared.getter();
  v1[106] = v3;
  v4 = swift_task_alloc();
  v1[107] = v4;
  *(v4 + 16) = 2;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[108] = v5;
  *v5 = v1;
  v5[1] = sub_1008D385C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 489, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v4, &type metadata for Bool);
}

uint64_t sub_1008D385C()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(sub_1008D39BC, v3, v2);
}

uint64_t sub_1008D39BC()
{

  return _swift_task_switch(sub_1008D9CA0, 0, 0);
}

uint64_t sub_1008D3A24()
{

  return _swift_task_switch(sub_1008D3B20, 0, 0);
}

uint64_t sub_1008D3B20()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    MusicItemCollection.init(arrayLiteral:)();
    if (v4(v3, 1, v2) != 1)
    {
      sub_1000095E8(v0[86], &qword_1011A8808, &qword_100EEDF98);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  static MusicItemCollection.+= infix(_:_:)();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (qword_1011A7128 != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v26 = v0[85];
    v27 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    sub_1008D09F0(&qword_1011A8878, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Sequence.makeIterator()();
    v28 = *(v27 + 36);
    sub_1008D09F0(&qword_1011A8818, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.endIndex.getter();
    v71 = v28;
    if (*(v26 + v28) == v0[66])
    {
LABEL_17:
      sub_1000095E8(v0[85], &qword_1011A8800, &qword_100EEDF90);
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_1008D4558, v30, v29);
    }

    v31 = v0[82];
    v65 = v0[76];
    v64 = (v31 + 16);
    v32 = v0[74];
    v62 = (v32 + 56);
    v63 = (v32 + 104);
    v55 = (v32 + 32);
    v57 = (v32 + 8);
    v58 = v26;
    v60 = (v31 + 8);
    v61 = (v32 + 48);
    v59 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v37 = v0[83];
      v38 = v0[79];
      v66 = v0[77];
      v68 = v0[80];
      v39 = v0[73];
      v40 = dispatch thunk of Collection.subscript.read();
      (*v64)(v37);
      v40(v0 + 62, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Track.contentRating.getter();
      (*v63)(v38, v59, v39);
      (*v62)(v38, 0, 1, v39);
      v41 = *(v65 + 48);
      sub_1000089F8(v68, v66, &qword_1011A8900, &qword_100EEE1D0);
      sub_1000089F8(v38, v66 + v41, &qword_1011A8900, &qword_100EEE1D0);
      v42 = *v61;
      if ((*v61)(v66, 1, v39) == 1)
      {
        break;
      }

      v43 = v0[73];
      sub_1000089F8(v0[77], v0[78], &qword_1011A8900, &qword_100EEE1D0);
      v44 = v42(v66 + v41, 1, v43);
      v45 = v0[83];
      v46 = v0[81];
      v47 = v0[80];
      v48 = v0[79];
      v49 = v0[78];
      if (v44 == 1)
      {
        v50 = v0[73];
        sub_1000095E8(v0[79], &qword_1011A8900, &qword_100EEE1D0);
        sub_1000095E8(v47, &qword_1011A8900, &qword_100EEE1D0);
        (*v60)(v45, v46);
        (*v57)(v49, v50);
LABEL_22:
        sub_1000095E8(v0[77], &qword_1011A88F8, &qword_100EEE1C8);
        goto LABEL_23;
      }

      v69 = v0[77];
      v51 = v0[75];
      v52 = v0[73];
      (*v55)(v51, v66 + v41, v52);
      sub_1008D9BBC(&qword_1011A8908, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *v57;
      (*v57)(v51, v52);
      sub_1000095E8(v48, &qword_1011A8900, &qword_100EEE1D0);
      sub_1000095E8(v47, &qword_1011A8900, &qword_100EEE1D0);
      (*v60)(v45, v46);
      v53(v49, v52);
      sub_1000095E8(v69, &qword_1011A8900, &qword_100EEE1D0);
      if (v56)
      {
        goto LABEL_30;
      }

LABEL_23:
      dispatch thunk of Collection.endIndex.getter();
      if (*(v58 + v71) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v33 = v0[83];
    v34 = v0[81];
    v35 = v0[80];
    v36 = v0[73];
    sub_1000095E8(v0[79], &qword_1011A8900, &qword_100EEE1D0);
    sub_1000095E8(v35, &qword_1011A8900, &qword_100EEE1D0);
    (*v60)(v33, v34);
    if (v42(v66 + v41, 1, v36) == 1)
    {
      sub_1000095E8(v0[77], &qword_1011A8900, &qword_100EEE1D0);
LABEL_30:
      sub_1000095E8(v0[85], &qword_1011A8800, &qword_100EEDF90);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v54 = v0[1];

        return v54();
      }

LABEL_10:
      v70 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = sub_10000954C(v10 + 4, v12);
      v67 = (*(v70 + 8) + **(v70 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = sub_1008D4A94;
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v67(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  sub_10000954C((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = sub_1008D3A24;
  v25 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v25, v22, v24);
}

uint64_t sub_1008D4558()
{

  sub_10097F360(0, v0 + 208);

  return _swift_task_switch(sub_1008D45CC, 0, 0);
}

uint64_t sub_1008D45CC(uint64_t a1)
{
  *(v1 + 904) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008D4658, v3, v2);
}

uint64_t sub_1008D4658()
{
  v1 = *(v0 + 544);

  v2 = sub_10093F41C((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = qword_1011A6AC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011AE4E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 544);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_100A8F4C0;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_100A90460;
    *(v0 + 376) = &unk_1010CC2A0;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    sub_10012B7A8(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_10012B828(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, sub_1008D9BB8, v16);
    sub_100020438(v5, v6);

    sub_100344A84(v0 + 208);
    v19 = sub_1008D4940;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 240), 1, 0, 0);

    sub_100344A84(v0 + 208);
    v19 = sub_1008D9C9C;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_1008D4940()
{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1008D4A94()
{

  return _swift_task_switch(sub_1008D9C9C, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v6 = type metadata accessor for Playlist.Entry.InternalItem();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8888, &unk_100EF2590);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Entry();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8890, &qword_100EEE138);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for Track();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8898, &qword_100EEF910);
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for MusicVideo();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0, &qword_100EEF9E0);
  v4[24] = swift_task_alloc();
  v10 = type metadata accessor for Song();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011A8810, &qword_100EEDFA0);
  v4[29] = v11;
  v4[30] = *(v11 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8808, &qword_100EEDF98);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  v4[36] = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  v4[42] = swift_task_alloc();
  v4[43] = *(a2 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v13 = type metadata accessor for Album();
  v4[52] = v13;
  v4[53] = *(v13 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return _swift_task_switch(sub_1008D518C, 0, 0);
}

uint64_t sub_1008D518C()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_1011A88C8, &qword_100EEE150);
    *(v13 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = sub_1008D9BBC(&qword_1011A88D0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    *v14 = v0;
    v14[1] = sub_1008D619C;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  sub_1000095E8(v19, &qword_1011A8858, &qword_100EEE0A0);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_100EBC6C0;
    v0[63] = sub_10010FC20(&qword_1011A88B8, &qword_100EEE148);
    *(v29 + 32) = static PartialMusicProperty<A>.tracks.getter();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_1008D64FC;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  sub_1000095E8(v34, &qword_1011AA6C0, &qword_100EEF960);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    sub_10010FC20(&qword_1011A88B0, &qword_100EEE140);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100EBC6B0;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  sub_1000095E8(v51, &qword_1011A88A0, &qword_100EEF9E0);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    sub_10010FC20(&qword_1011A88B0, &qword_100EEE140);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100EBC6B0;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  sub_1000095E8(v67, &qword_1011A8898, &qword_100EEF910);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    sub_10010FC20(&qword_1011A88B0, &qword_100EEE140);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100EBC6B0;
    (*(v76 + 16))(v81 + v80, v75, v77);
    MusicItemCollection.init(arrayLiteral:)();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    sub_1000095E8(v83, &qword_1011A8890, &qword_100EEE138);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      Playlist.Entry.internalItem.getter();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        sub_10010FC20(&qword_1011A88B0, &qword_100EEE140);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_100EBC6B0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (qword_1011A6748 != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = type metadata accessor for Logger();
          sub_1000060E4(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.fault.getter();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            Playlist.Entry.internalItem.getter();
            sub_1008D9BBC(&qword_1011A88A8, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = sub_100010678(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&_mh_execute_header, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            sub_10000959C(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        sub_10010FC20(&qword_1011A88B0, &qword_100EEE140);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_100EBC6B0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      MusicItemCollection.init(arrayLiteral:)();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      sub_1000095E8(v110, &qword_1011A8888, &unk_100EF2590);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

uint64_t sub_1008D619C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1008D7CD8;
  }

  else
  {
    v2 = sub_1008D62CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008D62CC(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v4 = v1[52];
  v5 = v1[53];
  Album.tracks.getter();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1008D64FC()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_1008D69DC;
  }

  else
  {
    v2 = sub_1008D662C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008D662C(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[29];
  v4 = v1[30];
  Playlist.tracks.getter();
  v5 = *(v4 + 48);
  v1[66] = v5;
  v1[67] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v2, 1, v3);
  v7 = v1[35];
  if (v6 == 1)
  {
    sub_1000095E8(v1[35], &qword_1011A8808, &qword_100EEDF98);
LABEL_7:
    v18 = v1[40];
    v17 = v1[41];
    v19 = v1[37];
    v20 = v1[38];
    Playlist.tracks.getter();
    v21 = *(v20 + 8);
    v21(v18, v19);
    v21(v17, v19);

    v22 = v1[1];

    return v22();
  }

  v8 = v1[29];
  v9 = v1[30];
  v10 = MusicItemCollection.hasNextBatch.getter();
  v11 = *(v9 + 8);
  v1[68] = v11;
  v1[69] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = swift_allocObject();
  v1[70] = v12;
  *(v12 + 16) = xmmword_100EBC6C0;
  static PartialMusicProperty<A>.tracks.getter();
  v13 = MusicRelationshipProperty.limit(_:)();

  *(v12 + 32) = v13;
  v14 = swift_task_alloc();
  v1[71] = v14;
  *v14 = v1;
  v14[1] = sub_1008D6E38;
  v15 = v1[39];
  v16 = v1[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v15, v12, v16, &protocol witness table for Playlist);
}

uint64_t sub_1008D69DC()
{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100010678(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v19 = String.init<A>(describing:)();
    v21 = sub_100010678(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1008D6E38()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1008D7380;
  }

  else
  {
    v2 = sub_1008D6F68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008D6F68(uint64_t a1)
{
  v2 = v1[66];
  v4 = v1[38];
  v3 = v1[39];
  v5 = v1[37];
  v6 = v1[34];
  v7 = v1[29];
  Playlist.tracks.getter();
  v8 = *(v4 + 8);
  v1[73] = v8;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = v2(v6, 1, v7);
  v10 = v1[29];
  if (v9 == 1)
  {
    v11 = v1[66];
    v12 = v1[34];
    MusicItemCollection.init(arrayLiteral:)();
    if (v11(v12, 1, v10) != 1)
    {
      sub_1000095E8(v1[34], &qword_1011A8808, &qword_100EEDF98);
    }
  }

  else
  {
    (*(v1[30] + 32))(v1[32], v1[34], v1[29]);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v13 = swift_task_alloc();
    v1[75] = v13;
    v14 = sub_1008D9BBC(&qword_1011A88C0, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v13 = v1;
    v13[1] = sub_1008D77F4;
    v15 = v1[33];
    v16 = v1[29];

    return MusicItemCollection.nextBatch<>(limit:)(v15, 10000, 0, v16, v14);
  }

  else
  {
    v17 = v1[73];
    v18 = v1[41];
    v19 = v1[37];
    v20 = v1[32];
    v21 = v1[29];
    v22 = v1[30];
    v23 = v1[3];
    v17(v1[40], v19);
    v17(v18, v19);
    (*(v22 + 32))(v23, v20, v21);
    (*(v22 + 56))(v23, 0, 1, v21);

    v24 = v1[1];

    return v24();
  }
}

uint64_t sub_1008D7380()
{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_100010678(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v22 = String.init<A>(describing:)();
    v24 = sub_100010678(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1008D77F4()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_1008D8134;
  }

  else
  {
    v2 = sub_1008D7908;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008D7908()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_1011A8808, &qword_100EEDF98);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    static MusicItemCollection.+= infix(_:_:)();
    v3(v4, v2);
  }

  if (MusicItemCollection.hasNextBatch.getter())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = sub_1008D9BBC(&qword_1011A88C0, &type metadata accessor for Track, &protocol conformance descriptor for Track);
    *v5 = v0;
    v5[1] = sub_1008D77F4;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1008D7CD8()
{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_100010678(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v19 = String.init<A>(describing:)();
    v21 = sub_100010678(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1008D8134()
{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_100010678(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v23 = String.init<A>(describing:)();
    v25 = sub_100010678(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1008D85B4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1008D87C4, 0, 0);
}

uint64_t sub_1008D87C4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660, &unk_100EEDB60);
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 104);
  sub_1008D08BC(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    sub_1008D9B58(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = *(v6 + 56);
  sub_10000954C((v6 + 32), v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
  *(v0 + 264) = v8;
  v9 = type metadata accessor for URL();
  *(v0 + 272) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v13 = *(v6 + 56);
  sub_10000954C((v6 + 32), v13);
  *(inited + 32) = MusicItem.metricsContentType.getter(v13);
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_100EC78D0;
  *(inited + 72) = 1;
  *(v0 + 296) = sub_1008AC260(inited);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  *(v0 + 328) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008D8B2C, v19, v18);
}

uint64_t sub_1008D8B2C()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000089F8(v36 + v14[6], *(v0 + 200), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008D92E4, 0, 0);
}

uint64_t sub_1008D92E4()
{
  sub_1008D9B58(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13AddToPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

double sub_1008D95FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a10;
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  __chkstk_darwin();
  v17 = &v27 - v16;
  v18 = *(a6 - 8);
  __chkstk_darwin();
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8910, &qword_100EEE1D8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  *(v21 + 56) = a5;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  v22 = sub_10001C8B8((v21 + 32));
  (*(*(a5 - 8) + 16))(v22, a1, a5);
  v23 = v28;
  sub_10012B7A8(v28, v32);
  (*(v18 + 16))(v20, v29, a6);
  v24 = v30;
  sub_1000089F8(v30, v17, &qword_1011A8660, &unk_100EEDB60);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v21, v32, v20, v17, a6, v31, v33);
  sub_1000095E8(v24, &qword_1011A8660, &unk_100EEDB60);
  sub_10012BA6C(v23);
  v25 = v33[1];
  *a9 = v33[0];
  a9[1] = v25;
  result = v34[0];
  a9[2] = *v34;
  return result;
}

unint64_t sub_1008D984C()
{
  v1 = *(sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1008D17FC(v2);
}

uint64_t sub_1008D98B8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A87F8, &qword_100EEDF88) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10002F3F4;

  return sub_1008D2168(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_1008D9A28()
{
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1008D85B4(v0 + v3, v4);
}

uint64_t sub_1008D9B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008D9BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1008D9C04()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10012B804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin();
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12, v15);
  v17 = type metadata accessor for Actions.Collaborate.Context(0);
  v18 = (a7 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  v21 = (a7 + v17[6]);
  *v21 = &unk_100EEE1E8;
  v21[1] = v19;
  v22 = *(v13 + 32);
  v22(v16, a1, v12);
  v23 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v25 = (v24 + *(v23 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v26 = swift_allocObject();
  sub_10003D17C(v30, v26 + v24, &qword_1011A8660, &unk_100EEDB60);
  result = (v22)(v26 + v25, v16, v12);
  v28 = (a7 + v17[7]);
  *v28 = &unk_100EEE1F8;
  v28[1] = v26;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context(uint64_t a1)
{
  result = qword_1011A8998;
  if (!qword_1011A8998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008D9F34(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1008D9F9C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1008D9F34(v2);
}

uint64_t sub_1008DA048(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1008DA258, 0, 0);
}

uint64_t sub_1008DA258()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 112), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_1008D08BC(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = Playlist.catalogID.getter();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(v0 + 104) = type metadata accessor for Playlist();
    sub_10010FC20(&qword_1011A8028, &qword_100EED130);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_1005442F0(1, v13, v14);
    v16 = Substring.lowercased()();

    v17 = sub_1008AC654(1uLL, v13, v15);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 72) = v17;
    *(v0 + 80) = v19;
    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v16;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v24;
    *(v0 + 328) = v25;
    *(v0 + 344) = v26;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008DA5F0, v28, v27);
  }
}

uint64_t sub_1008DA5F0()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_1000089F8(v6, v5, &qword_1011A77F0, &unk_100EEAA20);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_1000089F8(v3 + v4[5], v9, &qword_1011A7F08, &unk_100EECDE0);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 2565;
  sub_10003D17C(v79, v8 + v7[7], &qword_1011A77F0, &unk_100EEAA20);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_1000089F8(v9, v77, &qword_1011A7F08, &unk_100EECDE0);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_100633490(v13, v81);
    v24 = v82;

    sub_1005EA59C(v22, v20, v21, v19, SBYTE1(v19));
    sub_1000095E8(v23, &qword_1011A7F08, &unk_100EECDE0);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_100633490(v13, v81);
    v24 = v82;

    sub_1005EA59C(v22, v20, v21, v19, SBYTE1(v19));

    sub_1008D9B58(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_1000089F8(v27, v28, &qword_1011A7F08, &unk_100EECDE0);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_1008D9B58(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_1000089F8(v34, v35, &qword_1011A7F08, &unk_100EECDE0);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_1000089F8(v41 + v17[6], *(v0 + 216), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_1000095E8(v50, &qword_1011A7F08, &unk_100EECDE0);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_1000089F8(v52, v53, &qword_1011A7F08, &unk_100EECDE0);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_1008D9B58(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_10003D17C(v59, v60, &qword_1011A7F08, &unk_100EECDE0);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_1000095E8(v63, &qword_1011A7F08, &unk_100EECDE0);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_1008D9B58(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_1008D08BC(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_100344B1C(v70, v69, v68, v75, SBYTE1(v75));
  sub_1008D9B58(v74, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v73, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008DADE0, 0, 0);
}

uint64_t sub_1008DADE0()
{
  sub_1008D9B58(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008DAF18()
{
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F3F4;

  return sub_1008DA048(v0 + v3, v0 + v6);
}

int *static Actions.Collaborate.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008DB464(a1, a2);
  result = sub_10010FC20(&qword_1011A8918, &qword_100EEE210);
  *(a2 + result[9]) = 13;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_1008DB0FC;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EEE200;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EEE208;
  v6[1] = 0;
  return result;
}

uint64_t sub_1008DB158()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB254;

  return v5();
}

uint64_t sub_1008DB254()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1008DB368()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Collaborate.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_1008DB464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.Collaborate.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.Collaborate.Context.menuItemTitle.getter(uint64_t a1)
{
  v1 = Playlist.hasActiveCollaboration.getter() & 1;

  return _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(v1);
}

uint64_t (*Actions.Collaborate.Context.menuItemImage.getter())()
{
  sub_10010FC20(&qword_1011AA600, &qword_100EF24A0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  active = Playlist.hasActiveCollaboration.getter();
  Playlist.collaboration.getter();
  v3 = type metadata accessor for Playlist.Collaboration();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_1000095E8(v1, &qword_1011AA600, &qword_100EF24A0);
    if ((active & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v5 = Playlist.Collaboration.hasPendingCollaborators.getter();
  (*(v4 + 8))(v1, v3);
  if (active)
  {
    if (v5)
    {
      v6 = 0xEE0065676461622ELL;
LABEL_9:
      v7 = 0x322E6E6F73726570;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 0xE800000000000000;
    goto LABEL_9;
  }

LABEL_7:
  v6 = 0x8000000100E5ACB0;
  v7 = 0xD000000000000011;
LABEL_10:
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;

  return sub_1008DB71C;
}

unint64_t sub_1008DB764(uint64_t a1)
{
  result = type metadata accessor for Playlist();
  if (v2 <= 0x3F)
  {
    result = sub_10001F838();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void NSUserDefaults.ValueTransformer.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void Actions.CreatePlaylist.Context.presentCreatePlaylistView.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return a1;
}

uint64_t sub_1008DB924(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008DB9BC, v4, v3);
}

uint64_t sub_1008DB9BC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1008DBA28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002F3F4;

  return sub_1008DB924(v2, v3);
}

double static Actions.CreatePlaylist.action(context:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 9;
  *(a5 + 40) = sub_1000D9088;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0x4014000000000000;
  *(a5 + 64) = &unk_100EEE260;
  *(a5 + 72) = 0;
  *(a5 + 80) = &unk_100EEE268;
  *(a5 + 88) = 0;

  return result;
}

uint64_t sub_1008DBB64(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000651A8;

  return v5();
}

double sub_1008DBC4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
  *(a2 + 32) = 9;
  *(a2 + 40) = sub_1000D9088;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x4014000000000000;
  *(a2 + 64) = &unk_100EEE260;
  *(a2 + 72) = 0;
  *(a2 + 80) = &unk_100EEE268;
  *(a2 + 88) = 0;

  return result;
}

uint64_t (*Actions.CreatePlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_1008D04DC;
}

uint64_t (*sub_1008DBD80())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1937075312;
  *(v0 + 24) = 0xE400000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 1937075312;
  *(v1 + 24) = 0xE400000000000000;
  return sub_1008D0A40;
}

uint64_t _s9MusicCore7ActionsO14CreatePlaylistO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}