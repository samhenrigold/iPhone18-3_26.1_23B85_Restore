uint64_t sub_1002ED2C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002ED2E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002ED330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002ED434(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002ED504(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002ED5B4(uint64_t a1)
{
  sub_1002ED648();
  if (v1 <= 0x3F)
  {
    sub_1002ED698(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002ED648()
{
  if (!qword_1005D80B0)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D80B0);
    }
  }
}

void sub_1002ED698(uint64_t a1)
{
  if (!qword_1005D80B8)
  {
    type metadata accessor for MessageData.BodyData(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D80B8);
    }
  }
}

uint64_t sub_1002ED6F0(uint64_t a1)
{
  v2 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002ED74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED7B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002ED81C(uint64_t a1)
{
  v1 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v1 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1004A5384();
  sub_1001B60F8();
  sub_1004A5E64();
  v2 = sub_1004A5EA4();
  if (v5 == v4)
  {
    return 1;
  }

  __chkstk_darwin(v2);
  sub_1004A5314();
  return v5;
}

void ByteBuffer.init(_:)(uint64_t a1)
{
  v2 = sub_1004A5384();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v7)
    {
      if (v7)
      {
        v8 = (v7 - 1) | ((v7 - 1) >> 1) | (((v7 - 1) | ((v7 - 1) >> 1)) >> 2);
        v9 = v8 | (v8 >> 4) | ((v8 | (v8 >> 4)) >> 8);
        v10 = v9 | HIWORD(v9);
        v11 = __CFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          v13 = -1;
        }

        else
        {
          v13 = v12;
        }
      }

      else
      {
        v13 = 0;
      }

      v20 = malloc(v13);
      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = v20;
      type metadata accessor for ByteBuffer._Storage();
      v19 = swift_allocObject();
      v16 = 0;
      v15 = 0;
      v17 = 0;
      v18 = 0;
      *(v19 + 16) = v13;
      *(v19 + 24) = v21;
      *(v19 + 32) = j__malloc;
      *(v19 + 40) = j__realloc;
      *(v19 + 48) = sub_100127C74;
      *(v19 + 56) = sub_100127C84;
    }

    else
    {
      v14 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v13 = *(v14 + 4);
      v17 = *(v14 + 10);
      v18 = *(v14 + 22);
    }

    v23[1] = v19;
    v24 = v16;
    v25 = v15;
    v26 = v13;
    v27 = v17;
    v28 = v18;
    ByteBuffer.setDispatchData(_:at:)(v6, v15);
    if (!__CFADD__(v25, v22))
    {
      sub_1002ED6F0(a1);
      (*(v3 + 8))(v6, v2);
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t MessageData.BodyData.init(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  sub_1004A5324();
}

uint64_t type metadata accessor for MessageData.BodyData(uint64_t a1)
{
  result = qword_1005D8158;
  if (!qword_1005D8158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EDC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002EDD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5384();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t Namespace.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1004A6EC4(v7);
      --v5;
    }

    while (v5);
  }

  return sub_1004A55B4();
}

Swift::Int Namespace.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  v4 = *(a1 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EC4(v6);
      --v4;
    }

    while (v4);
  }

  sub_1004A55B4();
  return sub_1004A6F14();
}

uint64_t sub_1002EDEDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1004A55B4();
}

Swift::Int sub_1002EDF58(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  sub_1004A55B4();
  return sub_1004A6F14();
}

char *Namespace.init(_:)(uint64_t a1)
{
  v12 = *(a1 + 24);
  v1 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v2 = v12;
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 22);
    sub_1002EEDB8(&v12, &v11);

    v9 = MailboxName.init(_:)(v8, v3, v4 | (v5 << 32) | (v6 << 48));
    v1 = _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(v9, v2, v1);
    sub_1002EED64(a1);
  }

  else
  {
    sub_1002EED64(a1);
  }

  return v1;
}

Swift::Bool __swiftcall Namespace.contains(_:)(NIOIMAPCore2::MailboxName a1)
{
  value = a1._hashValue._value;
  rawValue = a1.bytes._rawValue;
  if (sub_1002EE154(v1, a1.bytes._rawValue))
  {
    return 1;
  }

  v5 = MailboxName.inbox.unsafeMutableAddressor();
  if ((value | (value << 32)) != (*(v5 + 2) | (*(v5 + 2) << 32)))
  {
    return 0;
  }

  v6 = *v5;

  return sub_1000FFC98(rawValue, v6);
}

BOOL sub_1002EE154(_BOOL8 result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = *(a2 + 32 + v2);
    v9 = *(result + 32 + v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

NIOIMAPCore2::MailboxName __swiftcall Namespace.addPrefix(to:)(NIOIMAPCore2::MailboxName to)
{
  v5._rawValue = v1;

  sub_10015BDC0(v2);

  v4 = MailboxName.init(_:)(v5);
  value = v4._hashValue._value;
  result.bytes = v4.bytes;
  result._hashValue._value = value;
  return result;
}

NIOIMAPCore2::MailboxPath __swiftcall Namespace.addPrefix(to:)(NIOIMAPCore2::MailboxPath to)
{
  v3 = v2;
  v4 = v1;
  v5._rawValue = *&to._pathSeparator;
  value = to.name._hashValue._value;
  rawValue = to.name.bytes._rawValue;
  v9 = v8;
  v10 = sub_10014A364(v8);
  if (!v11)
  {
    goto LABEL_9;
  }

  if (v10 == v4 && v11 == v3)
  {

    goto LABEL_6;
  }

  v12 = sub_1004A6D34();

  if ((v12 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_6:

  sub_10015BDC0(v13);
  v14 = MailboxName.init(_:)(v5);
  rawValue = v14.bytes._rawValue;
  value = v14._hashValue._value;
  sub_10014A364(v9);
  if (v16)
  {
    if ((sub_1004A5584() & 0x100) != 0)
    {

      sub_1002EEE28();
      swift_allocError();
      *v18 = 0xD000000000000029;
      v18[1] = 0x80000001004AE390;
      swift_willThrow();
      result.name.bytes._rawValue = swift_unexpectedError();
      __break(1u);
      goto LABEL_12;
    }

    sub_1004A5584();
  }

LABEL_10:
  v17 = value;
  result.name.bytes._rawValue = rawValue;
LABEL_12:
  result.name._hashValue._value = v17;
  result._pathSeparator = v15;
  return result;
}

NIOIMAPCore2::MailboxName __swiftcall Namespace.removePrefix(_:)(NIOIMAPCore2::MailboxName a1)
{
  v2 = v1;
  value = a1._hashValue._value;
  rawValue = a1.bytes._rawValue;
  if (!sub_1002EE154(v1, a1.bytes._rawValue))
  {

    v12 = value;
    goto LABEL_16;
  }

  v5 = *(v2 + 16);
  v6 = rawValue[2];
  if (v6 >= v5)
  {
    v7 = *(v2 + 16);
  }

  else
  {
    v7 = rawValue[2];
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1004A6DA4();
  swift_unknownObjectRetain_n();

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];

  if (v10 != v6 - v8)
  {
    swift_unknownObjectRelease();
    sub_1001F4784(rawValue, (rawValue + 4), v8, (2 * v6) | 1);
    v11 = v14;
    goto LABEL_13;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_13:
    swift_unknownObjectRelease();
  }

  v13 = MailboxName.init(_:)(v11);
  v12 = v13._hashValue._value;
  rawValue = v13.bytes._rawValue;
LABEL_16:
  result.bytes._rawValue = rawValue;
  result._hashValue._value = v12;
  return result;
}

NIOIMAPCore2::MailboxPath __swiftcall Namespace.removePrefix(_:)(NIOIMAPCore2::MailboxPath a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *&a1._pathSeparator;
  value = a1.name._hashValue._value;
  rawValue = a1.name.bytes._rawValue;
  v9 = v8;
  v10 = sub_10014A364(v8);
  if (!v11)
  {
    goto LABEL_20;
  }

  if (v10 == v4 && v11 == v3)
  {

    goto LABEL_6;
  }

  v12 = sub_1004A6D34();

  if ((v12 & 1) == 0)
  {
LABEL_20:

    goto LABEL_25;
  }

LABEL_6:
  if (sub_1002EE154(v5, rawValue))
  {
    v13 = *(v5 + 16);
    v14 = rawValue[2];
    if (v14 >= v13)
    {
      v15 = *(v5 + 16);
    }

    else
    {
      v15 = rawValue[2];
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_1004A6DA4();
    swift_unknownObjectRetain_n();

    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];

    if (v18 == v14 - v16)
    {
      v19 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v19)
      {
LABEL_19:
        v20 = MailboxName.init(_:)(v19);
        rawValue = v20.bytes._rawValue;
        value = v20._hashValue._value;
        goto LABEL_22;
      }

      v19 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1001F4784(rawValue, (rawValue + 4), v16, (2 * v14) | 1);
      v19 = v24;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

LABEL_22:
  sub_10014A364(v9);
  if (v22)
  {
    if ((sub_1004A5584() & 0x100) != 0)
    {

      sub_1002EEE28();
      swift_allocError();
      *v25 = 0xD000000000000029;
      v25[1] = 0x80000001004AE390;
      swift_willThrow();
      result.name.bytes._rawValue = swift_unexpectedError();
      __break(1u);
      goto LABEL_28;
    }

    sub_1004A5584();
  }

LABEL_25:
  v23 = value;
  result.name.bytes._rawValue = rawValue;
LABEL_28:
  result.name._hashValue._value = v23;
  result._pathSeparator = v21;
  return result;
}

Swift::Bool __swiftcall Namespace.isNotes(_:)(NIOIMAPCore2::MailboxName a1)
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  rawValue = a1.bytes._rawValue;
  if (sub_1002EE154(v1, a1.bytes._rawValue))
  {
    v8 = *(v6 + 16);
    v9 = rawValue[2];
    if (v9 >= v8)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      v10 = rawValue[2];
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    sub_1004A6DA4();
    swift_unknownObjectRetain_n();

    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v12[2];

    if (v13 == v9 - v11)
    {
      v14 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v14)
      {
LABEL_14:
        rawValue = MailboxName.init(_:)(v14).bytes._rawValue;
        goto LABEL_16;
      }

      v14 = _swiftEmptyArrayStorage;
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1001F4784(rawValue, (rawValue + 4), v11, (2 * v9) | 1);
      v14 = v18;
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

LABEL_16:
  if (sub_1002EE92C(0x7365746F4EuLL, 0xE500000000000000, rawValue))
  {

    return 1;
  }

  else
  {
    v19._countAndFlagsBits = v5;
    v19._object = v4;
    sub_1004A5994(v19);
    v16 = rawValue[2];
    if (v16 >= 5)
    {
      v16 = 5;
    }

    v17 = sub_1002EEE7C(0x7365746F4EuLL, 0xE500000000000000, (rawValue + 4), 0, 2 * v16 + 1);

    swift_unknownObjectRelease();
    return v17 & 1;
  }
}

unint64_t sub_1002EE92C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = sub_10010C210(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = sub_1004A5A24();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1004A67E4();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = sub_10010C210(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = sub_1004A59F4();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t _s20IMAPSearchIndexerXPC7MailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a2 == a5 && a3 == a6)
    {
      return 1;
    }

    else
    {
      return sub_1004A6D34();
    }
  }

  else
  {
    v8 = (result + 32);
    v9 = (a4 + 32);
    while (v6)
    {
      if (*v8 != *v9)
      {
        return 0;
      }

      ++v8;
      ++v9;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *_s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  if (!*(a1 + 16))
  {
    return v5;
  }

  if (a2 == 2573 && a3 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
  {

    v6 = 10;
    goto LABEL_11;
  }

  if ((sub_1004A55A4() & 1) == 0)
  {
    goto LABEL_20;
  }

  result = sub_1001E11BC(a2, a3);
  if ((result & 0x100000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((result & 0xFFFFFF80) != 0)
  {
LABEL_20:

    return v5;
  }

  result = sub_1001E11BC(a2, a3);
  if ((result & 0x100000000) == 0)
  {
    v6 = result;
    if ((result & 0xFFFFFF00) == 0)
    {
LABEL_11:
      v8 = *(v5 + 2);
      if (v8)
      {
        v9 = v5[v8 + 31];

        if (v9 == v6)
        {
          return v5;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10015BF20(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_10015BF20((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v6;
      return v5;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1002EEDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D8190, &qword_1004F3C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002EEE28()
{
  result = qword_1005D8198;
  if (!qword_1005D8198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidPathSeparatorError, &type metadata for InvalidPathSeparatorError, v0, v1);
    atomic_store(result, &qword_1005D8198);
  }

  return result;
}

unint64_t sub_1002EEE7C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = a5 >> 1;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v9;
  v10 = 4 * v9;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v31 = 4 << v11;
  while (1)
  {
    if (v5 == v8)
    {
      v14 = 0;
      v15 = v8;
      goto LABEL_11;
    }

    if (v5 < a4 || v5 >= v8)
    {
      break;
    }

    v14 = *(a3 + v5);
    v15 = v5 + 1;
LABEL_11:
    v16 = result >> 14;
    v17 = result >> 14 == v10;
    if (result >> 14 == v10)
    {
      v18 = 0;
      if (v5 == v8)
      {
        return v17;
      }

      goto LABEL_30;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v12)
    {
      v24 = result;
      v25 = sub_10010C210(result, a1, a2);
      v12 = v31;
      v7 = a1;
      v20 = v25;
      result = v24;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v35)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v26 = sub_1004A5A24();
      v12 = v31;
      v7 = a1;
      v18 = v26;
      result = v28;
      if (v19 == v31)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v36[0] = v7;
        v36[1] = v30;
        v22 = v36;
      }

      else
      {
        v22 = v29;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v23 = sub_1004A67E4();
          v12 = v31;
          v7 = a1;
          v22 = v23;
          result = v27;
        }
      }

      v18 = *(v22 + v21);
      if (v19 == v12)
      {
LABEL_27:
        result = sub_10010C210(result, a1, a2);
        v12 = v31;
        v7 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v8)
          {
            return v17;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v35 <= result >> 16)
    {
      goto LABEL_35;
    }

    result = sub_1004A59F4();
    v12 = v31;
    v7 = a1;
    if (v5 == v8)
    {
      return v17;
    }

LABEL_30:
    v17 = 0;
    if (v16 != v10)
    {
      v5 = v15;
      if (v14 == v18)
      {
        continue;
      }
    }

    return v17;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1002EF0B8()
{
  result = qword_1005D81A0;
  if (!qword_1005D81A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Namespace, &type metadata for Namespace, v0, v1);
    atomic_store(result, &qword_1005D81A0);
  }

  return result;
}

void *sub_1002EF11C(uint64_t a1)
{
  v3 = type metadata accessor for SelectParameter(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v28 = v1;
  v36 = _swiftEmptyArrayStorage;
  v30 = v4;
  sub_1002E52B8(0, v7, 0);
  v8 = v36;
  v9 = v30 + 56;
  result = sub_1004A6554();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v35 = *(v12 + 36);
    v17 = v12;
    swift_storeEnumTagMultiPayload();
    v36 = v8;
    v18 = v6;
    v20 = v8[2];
    v19 = v8[3];
    if (v20 >= v19 >> 1)
    {
      sub_1002E52B8((v19 > 1), v20 + 1, 1);
      v8 = v36;
    }

    v8[2] = v20 + 1;
    result = sub_1002F2694(v18, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, type metadata accessor for SelectParameter);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_22;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_100020944(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_100020944(v11, v35, 0);
      v12 = v30;
    }

LABEL_4:
    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
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

uint64_t ClientCommandEncoder.encode(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(__int128 *)@<X8>)
{
  v5[16] = a1;
  v6 = HIDWORD(a1);
  v7 = a2;
  return sub_1002EFAE8(sub_1002E81C0, v5, a3 & 0x101FF, a4);
}

uint64_t ClientCommandEncoder.idle(tag:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v46 = a3;
  v47 = a1;
  v4 = a2 & 0x100;
  v5 = HIWORD(a2) & 1;
  v40 = type metadata accessor for CommandStreamPart(0);
  __chkstk_darwin(v40);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004A57F4();
  __chkstk_darwin(v7 - 8);
  v38 = type metadata accessor for TaggedCommand(0);
  __chkstk_darwin(v38);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1004A5384();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v37 - v13;
  v14 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v15 = v14[1];
  v16 = qword_1004F3DB0[v3];
  v17 = *(v14 + 4) | (*(v14 + 10) << 32) | (*(v14 + 22) << 48);
  v39 = v4 << 24;
  v18 = v39 | v16;

  v41 = v5;
  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v19, v15, v17, v18 | 1, 0, v5, v54);
  *&v52[0] = sub_100304E50(v47 & 0xFFFFFFFF000000FFLL);
  sub_1004A57D4();
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1002F1444();
  v20 = sub_1004A5794();
  v22 = v21;

  if (v22)
  {
    v24 = v3;
    type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    v9->_countAndFlagsBits = v20;
    v9->_object = v22;
    CommandEncodeBuffer.writeCommand(_:)(v9);
    sub_1002F2634(v9, type metadata accessor for TaggedCommand);
    EncodeBuffer.nextChunk()();
    swift_beginAccess();
    v25 = v43;
    sub_1004A5324();

    v52[0] = v54[0];
    v52[1] = v54[1];
    v53[0] = v55[0];
    *(v53 + 9) = *(v55 + 9);
    sub_1002F14A8(v52);
    v26 = v14[1];
    v27 = *(v14 + 4) | (*(v14 + 10) << 32) | (*(v14 + 22) << 48);
    v28 = v39 | qword_1004F3DB0[v24];

    CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v29, v26, v27, v28 | 1, 0, v41, v50);
    v30 = v42;
    swift_storeEnumTagMultiPayload();
    CommandEncodeBuffer.writeCommandStream(_:)(v30, v31);
    sub_1002F2634(v30, type metadata accessor for CommandStreamPart);
    EncodeBuffer.nextChunk()();
    swift_beginAccess();
    v32 = v44;
    sub_1004A5324();

    v48[0] = v50[0];
    v48[1] = v50[1];
    v49[0] = v51[0];
    *(v49 + 9) = *(v51 + 9);
    sub_1002F14A8(v48);
    v34 = v45;
    v33 = v46;
    (*(v10 + 16))(v46, v25, v45);
    sub_10000C9C0(&qword_1005D7D28, &qword_1004F2E88);
    v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004CEAA0;
    (*(v10 + 32))(v36 + v35, v32, v34);
    (*(v10 + 8))(v25, v34);
    result = type metadata accessor for ClientCommand.Encoded(0);
    *(v33 + *(result + 20)) = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EF988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CommandStreamPart(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002F1B84(a2 & 0xFFFFFFFF000000FFLL, a3);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1002F26FC(v11, v8, type metadata accessor for CommandStreamPart);
      CommandEncodeBuffer.writeCommandStream(_:)(v8, v13);
      sub_1002F2634(v8, type metadata accessor for CommandStreamPart);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1002EFAE8@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t (*a4)(__int128 *)@<X8>)
{
  v4 = a3;
  v32 = a2;
  v33 = a1;
  v6 = HIWORD(a3) & 1;
  v7 = sub_1004A5384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = qword_1004F3DE0[v4];
  v14 = qword_1004F3DF8[v4];
  v15 = *(v11 + 4) | (*(v11 + 10) << 32) | (*(v11 + 22) << 48);
  v16 = 0x100000001;
  if ((v4 & 0x100) == 0)
  {
    v16 = 1;
  }

  v17 = v16 | qword_1004F3DC8[v4];
  v18 = v13 | v14;

  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v19, v12, v15, v17 | v18, 0, v6, &v37);
  v33(&v37);
  v20 = EncodeBuffer.nextChunk()();
  v22 = v21;
  swift_beginAccess();
  sub_1004A5324();
  v23 = *(type metadata accessor for ClientCommand.Encoded(0) + 20);
  v33 = a4;
  *(a4 + v23) = _swiftEmptyArrayStorage;
  if ((v22 & 0x100000000000000) != 0)
  {
    v24 = v23;
    v32 = v20;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      EncodeBuffer.nextChunk()();
      v27 = v26;
      swift_beginAccess();
      sub_1004A5324();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1002FAB68(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1002FAB68((v28 > 1), v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      (*(v8 + 32))(v25 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v10, v7);
    }

    while ((v27 & 0x100000000000000) != 0);
    *(v33 + v24) = v25;
    v34 = v37;
    v35 = v38;
    v36[0] = v39[0];
    *(v36 + 9) = *(v39 + 9);
    sub_1002F14A8(&v34);
  }

  else
  {
    v34 = v37;
    v35 = v38;
    v36[0] = v39[0];
    *(v36 + 9) = *(v39 + 9);
    sub_1002F14A8(&v34);
  }
}

uint64_t sub_1002EFE34()
{
  result = Capability.init(_:)(0xD000000000000011, 0x80000001004AC290);
  static Capability.applePushService = result;
  *algn_1005DE198 = v1;
  qword_1005DE1A0 = v2;
  byte_1005DE1A8 = v3 & 1;
  return result;
}

uint64_t *Capability.applePushService.unsafeMutableAddressor()
{
  if (qword_1005D7D08 != -1)
  {
    swift_once();
  }

  return &static Capability.applePushService;
}

uint64_t static Capability.applePushService.getter()
{
  if (qword_1005D7D08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.applePushService;

  return v0;
}

void sub_1002EFF4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v81[-v8];
  v10 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v10);
  v12 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002F26FC(a1, v12, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = *(v12 + 2);
      v46 = *(v12 + 3);
      *a2 = *v12;
      *(a2 + 16) = v45;
      *(a2 + 24) = v46;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 2u:
      *a2 = *v12;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 3u:
      v35 = *v12;
      v36 = *(v12 + 2);
      v37 = sub_1002EF11C(*(v12 + 2));

      *a2 = v35;
      *(a2 + 8) = v36;
      *(a2 + 16) = v37;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 4u:
    case 5u:
      v25 = *(v12 + 2);
      *a2 = *v12;
      *(a2 + 8) = v25;
      *(a2 + 16) = _swiftEmptyArrayStorage;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 6u:
      v53 = *(v12 + 2);
      *a2 = *v12;
      *(a2 + 8) = v53;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 7u:
      v38 = *v12;
      v39 = *(v12 + 2);
      v40 = *(v12 + 2);
      v41 = *(v12 + 6);
      v42 = sub_1002FB418(_swiftEmptyArrayStorage);
      *a2 = v38;
      *(a2 + 8) = v39;
      *(a2 + 16) = v40;
      *(a2 + 24) = v41;
      *(a2 + 32) = v42;
      *(a2 + 40) = v43;
      *(a2 + 48) = v44;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 8u:
      v60 = *v12;
      v61 = *(v12 + 2);
      v62 = *(v12 + 4);
      if (*v12)
      {
        v63 = *(v12 + 2);
      }

      else
      {
        v71 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
        v60 = MailboxName.init(_:)(v71, v73, v72 & 0xFFFFFFFFFFFFFFLL);
        v63 = v74;
      }

      if (!v61)
      {
        v61 = _swiftEmptyArrayStorage;
      }

      sub_1002F1A1C(v61, v13);
      v76 = v75;
      v78 = v77;
      v80 = v79;

      LOBYTE(v82[0]) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0;
      *(a2 + 72) = v60;
      *(a2 + 80) = v63;
      *(a2 + 88) = v76;
      *(a2 + 96) = v78;
      *(a2 + 110) = BYTE6(v80);
      *(a2 + 108) = WORD2(v80);
      *(a2 + 104) = v80;
      *(a2 + 111) = 0;
      *(a2 + 112) = v62;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 9u:
      v28 = *(v12 + 2);
      v29 = *(v12 + 2);
      *a2 = *v12;
      *(a2 + 8) = v28;
      *(a2 + 16) = v29;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 0xAu:

      v57 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v58 = *(v57 + 64);
      sub_100014D40(*&v12[*(v57 + 80)], *&v12[*(v57 + 80) + 8]);
      v59 = type metadata accessor for Command(0);
      (*(*(v59 - 8) + 56))(a2, 1, 1, v59);
      sub_100025F40(&v12[v58], &qword_1005D0F20, &qword_1004E9390);
      return;
    case 0xBu:
      *a2 = *v12;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      goto LABEL_26;
    case 0xCu:
      v27 = *v12;
      v26 = *(v12 + 1);
      if (!*(v26 + 16))
      {

        sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
        type metadata accessor for SearchReturnOption(0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1004CEAA0;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v27;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = v26;
      goto LABEL_26;
    case 0xDu:
      *a2 = *v12;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      goto LABEL_26;
    case 0xEu:
      v24 = *v12;
      v23 = *(v12 + 1);
      if (!*(v23 + 16))
      {

        sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
        type metadata accessor for SearchReturnOption(0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1004CEAA0;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v24;
      *(a2 + 8) = xmmword_1004F3D20;
      *(a2 + 24) = v23;
      goto LABEL_26;
    case 0xFu:
      v30 = &v12[*(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48)];
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = v30[16];
      sub_100025FDC(v12, v9, &unk_1005D91B0, &unk_1004CF400);
      if (v33)
      {
        v34 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000C9C0(&qword_1005D81B8, &unk_1004F3D90);
        v69 = *(type metadata accessor for FetchModifier(0) - 8);
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v34 = swift_allocObject();
        *(v34 + 1) = xmmword_1004CEAA0;
        *(v34 + v70) = v32;
        swift_storeEnumTagMultiPayload();
      }

      static Command.uidFetch(messages:attributes:modifiers:)(v9, v31, v34, a2);

      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x10u:
      v18 = &v12[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v18 + 1);
      sub_100025FDC(v12, v6, &unk_1005D91B0, &unk_1004CF400);
      v22 = 256;
      if (!v20)
      {
        v22 = 0;
      }

      static Command.uidStore(messages:modifiers:data:)(v6, _swiftEmptyArrayStorage, v22 | v19, v21, a2);

      sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x11u:
      v47 = &v12[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v48 = *v47;
      v49 = *(v47 + 2);
      sub_100025FDC(v12, v6, &unk_1005D91B0, &unk_1004CF400);
      static Command.uidCopy(messages:mailbox:)(v6, v48, v49, a2);
      goto LABEL_29;
    case 0x12u:
      v54 = &v12[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v55 = *v54;
      v56 = *(v54 + 2);
      sub_100025FDC(v12, v6, &unk_1005D91B0, &unk_1004CF400);
      static Command.uidMove(messages:mailbox:)(v6, v55, v56, a2);
LABEL_29:

      sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x13u:
      v64 = *(v12 + 2);
      v65 = v12[24];
      *a2 = *v12;
      *(a2 + 16) = v64;
      *(a2 + 24) = v65;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 0x14u:
      *a2 = *v12;
      *(a2 + 8) = *(v12 + 8);
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 0x15u:
      v50 = *(v12 + 1);
      v82[0] = *v12;
      v82[1] = v50;
      v51 = *(v12 + 3);
      v82[2] = *(v12 + 2);
      v82[3] = v51;
      v52 = sub_1002F0B80();
      sub_10021D02C(v82);
      *a2 = 0xD000000000000011;
      *(a2 + 8) = 0x80000001004AC290;
      *(a2 + 16) = v52;
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
LABEL_26:
      v17 = type metadata accessor for Command(0);
      goto LABEL_41;
    case 0x1Du:
      v66 = Capability.CompressionKind.deflate.unsafeMutableAddressor();
      v67 = *(v66 + 1);
      *a2 = *v66;
      *(a2 + 8) = v67;
      v68 = type metadata accessor for Command(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v68 - 8) + 56))(a2, 0, 1, v68);

      return;
    default:
      v14 = *(v12 + 1);
      v15 = *(v12 + 8);
      v16 = *(v12 + 18);
      *a2 = *v12;
      *(a2 + 8) = v14;
      *(a2 + 16) = *(v12 + 1);
      *(a2 + 32) = v15;
      *(a2 + 36) = v16;
      *(a2 + 38) = v12[38];
      v17 = type metadata accessor for Command(0);
LABEL_41:
      swift_storeEnumTagMultiPayload();
      (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
      return;
  }
}

uint64_t *sub_1002F0B80()
{
  v1 = v0;
  sub_1004A6724(80);
  v74._countAndFlagsBits = 0x737265762D737061;
  v74._object = 0xEC000000206E6F69;
  sub_1004A5994(v74);
  LODWORD(v69) = *v0;
  v75._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v75);

  v76._object = 0x80000001004AE400;
  v76._countAndFlagsBits = 0xD000000000000010;
  sub_1004A5994(v76);
  v77._countAndFlagsBits = sub_1002F1250(v1[1], v1[2]);
  sub_1004A5994(v77);

  v78._countAndFlagsBits = 0xD000000000000012;
  v78._object = 0x80000001004AE420;
  sub_1004A5994(v78);
  v79._countAndFlagsBits = sub_1002F1250(v1[3], v1[4]);
  sub_1004A5994(v79);

  v80._countAndFlagsBits = 0x6275732D73706120;
  v80._object = 0xEE00206369706F74;
  sub_1004A5994(v80);
  v81._countAndFlagsBits = sub_1002F1250(v1[5], v1[6]);
  sub_1004A5994(v81);

  v82._countAndFlagsBits = 0x786F626C69616D20;
  v82._object = 0xEC00000028207365;
  sub_1004A5994(v82);
  v2 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v4 = v3;
  v6 = v5;

  v7 = sub_1002FABB8(0, 1, 1, _swiftEmptyArrayStorage);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
LABEL_44:
    v7 = sub_1002FABB8((v8 > 1), v10, 1, v7);
  }

  *(v7 + 2) = v10;
  v11 = &v7[24 * v9];
  *(v11 + 4) = v2 | 0x8000000000000000;
  *(v11 + 5) = v4;
  v11[54] = BYTE6(v6);
  *(v11 + 26) = WORD2(v6);
  *(v11 + 12) = v6;
  v12 = v1[7];
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_37:
    v53 = v7;
    v54 = ByteBufferAllocator.buffer(string:)(0x29uLL, 0xE100000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v57 = v53;
    v58 = *(v53 + 2);
    v59 = *(v57 + 3);
    if (v58 >= v59 >> 1)
    {
      v61 = v54;
      v62 = v55;
      v63 = v56;
      v64 = sub_1002FABB8((v59 > 1), v58 + 1, 1, v57);
      v55 = v62;
      v56 = v63;
      v57 = v64;
      v54 = v61;
    }

    *(v57 + 2) = v58 + 1;
    v60 = &v57[24 * v58];
    *(v60 + 4) = v54 | 0x8000000000000000;
    *(v60 + 5) = v55;
    *(v60 + 12) = v56;
    v60[54] = BYTE6(v56);
    *(v60 + 26) = WORD2(v56);
    return v57;
  }

  v14 = 0;
  v1 = 0;
  v65 = v12 + 32;
  while (1)
  {
    v67 = v13;
    v68 = v7;
    v4 = *(v65 + v14);
    if (!v14)
    {

      v32 = *(v4 + 16);
      if (!v32)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    result = malloc(1uLL);
    if (!result)
    {
      break;
    }

    v6 = result;
    type metadata accessor for ByteBuffer._Storage();
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    *(v16 + 24) = v6;
    *(v16 + 32) = j__malloc;
    *(v16 + 40) = j__realloc;
    *(v16 + 48) = sub_100127C74;
    *(v16 + 56) = sub_100127C84;
    v69 = v16;
    v70 = 0;
    v71 = 1;
    v72 = 0;
    v73 = 0;
    v17 = sub_1002F178C(0x20uLL, 0xE100000000000000, &v69, 0);
    if (v18)
    {
      v6 = &v69;
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, 0);
    }

    v20 = v68;
    v8 = HIDWORD(v70);
    v21 = (HIDWORD(v70) + v17);
    if (__CFADD__(HIDWORD(v70), v17))
    {
      goto LABEL_43;
    }

    v66 = v1;
    v22 = v14;
    v23 = v4;
    v24 = v69;
    v25 = v70;
    v26 = v71;
    v27 = v72;
    v28 = v73;
    v30 = *(v68 + 2);
    v29 = *(v68 + 3);
    v6 = (v30 + 1);
    if (v30 >= v29 >> 1)
    {
      v20 = sub_1002FABB8((v29 > 1), v30 + 1, 1, v68);
    }

    *(v20 + 2) = v6;
    v68 = v20;
    v31 = &v20[24 * v30];
    *(v31 + 4) = v24 | 0x8000000000000000;
    *(v31 + 5) = v25 | (v21 << 32);
    v31[54] = v28;
    *(v31 + 26) = v27;
    *(v31 + 12) = v26;
    v4 = v23;
    v14 = v22;
    v1 = v66;
    v32 = *(v4 + 16);
    if (!v32)
    {
LABEL_17:
      v39 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v40 = *(v39 + 2);
      v2 = *(v39 + 3);
      v38 = *(v39 + 4);
      v41 = *(v39 + 10);
      v42 = *(v39 + 22);

      goto LABEL_21;
    }

LABEL_12:
    if (v32)
    {
      v33 = (v32 - 1) | ((v32 - 1) >> 1) | (((v32 - 1) | ((v32 - 1) >> 1)) >> 2);
      v34 = v33 | (v33 >> 4) | ((v33 | (v33 >> 4)) >> 8);
      v35 = v34 | HIWORD(v34);
      v36 = __CFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        v38 = -1;
      }

      else
      {
        v38 = v37;
      }
    }

    else
    {
      v38 = 0;
    }

    result = malloc(v38);
    if (!result)
    {
      goto LABEL_46;
    }

    v6 = result;
    type metadata accessor for ByteBuffer._Storage();
    v43 = swift_allocObject();
    v40 = 0;
    v2 = 0;
    v41 = 0;
    v42 = 0;
    *(v43 + 16) = v38;
    *(v43 + 24) = v6;
    *(v43 + 32) = j__malloc;
    *(v43 + 40) = j__realloc;
    *(v43 + 48) = sub_100127C74;
    *(v43 + 56) = sub_100127C84;
LABEL_21:
    v69 = v43;
    v70 = __PAIR64__(v2, v40);
    v71 = v38;
    v72 = v41;
    v73 = v42;
    v10 = *(v4 + 16);
    v9 = (v2 + v10);
    if (__CFADD__(v2, v10))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v9 >= v38)
      {
        v44 = v9 - v38;
      }

      else
      {
        v44 = 0;
      }

      v45 = variable initialization expression of Engine.isProcessingUpdates();
      v6 = &v69;
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v44, v45 & 1);
    }

    v8 = HIDWORD(v10);
    if (HIDWORD(v10))
    {
      goto LABEL_41;
    }

    v6 = &v69;
    ByteBuffer._ensureAvailableCapacity(_:at:)(v10, v2);
    v9 = v69;
    v46 = v71;
    v47 = v72;
    v48 = v73;
    swift_beginAccess();
    v49 = v48 | (v47 << 8);
    LODWORD(v50) = v46 - v49;
    if (v46 - v49 >= v2)
    {
      LODWORD(v50) = v2;
    }

    if (v2)
    {
      v50 = v50;
    }

    else
    {
      v50 = 0;
    }

    memmove((*(v9 + 24) + v49 + v50), (v4 + 32), v10);

    v8 = HIDWORD(v70);
    v4 = (HIDWORD(v70) + v10);
    if (__CFADD__(HIDWORD(v70), v10))
    {
      goto LABEL_42;
    }

    v10 = v70;
    v7 = v68;
    v2 = *(v68 + 2);
    v51 = *(v68 + 3);
    v6 = (v2 + 1);
    if (v2 >= v51 >> 1)
    {
      v7 = sub_1002FABB8((v51 > 1), v2 + 1, 1, v68);
    }

    *(v7 + 2) = v6;
    v52 = &v7[24 * v2];
    *(v52 + 4) = v9;
    *(v52 + 5) = v10 | (v4 << 32);
    v52[54] = v48;
    *(v52 + 26) = v47;
    *(v52 + 12) = v46;
    v14 += 16;
    v13 = v67 - 1;
    if (v67 == 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_1002F1250(uint64_t a1, uint64_t a2)
{

  while (1)
  {
    v3 = sub_1004A59D4();
    if (!v4)
    {

      return a1;
    }

    v5 = v3;
    v6 = v4;
    if (v3 == 2573 && v4 == 0xE200000000000000)
    {
      goto LABEL_30;
    }

    result = sub_1004A6D34();
    if (result)
    {
      goto LABEL_30;
    }

    v8 = (v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
    if (!v8)
    {
      break;
    }

    if ((v6 & 0x1000000000000000) != 0)
    {
      v13 = sub_1004A5884();
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = v5;
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v9 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_1004A67E4();
        }

        v10 = *v9;
      }

      v11 = v10;
      v12 = (__clz(~v10) - 24) << 16;
      if (v11 < 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 65541;
      }
    }

    if (v13 >> 14 != 4 * v8)
    {
      goto LABEL_30;
    }

    result = sub_1001E11BC(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_35;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_30:

LABEL_31:

      return 120;
    }

    result = sub_1001E11BC(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

    v14 = result;

    if ((v14 & 0xFFFFFF00) != 0)
    {
      goto LABEL_34;
    }

    if (v14 - 47 <= 0xFFFFFFFD && v14 - 58 <= 0xFFFFFFF5 && (v14 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1002F1444()
{
  result = qword_1005D81A8;
  if (!qword_1005D81A8)
  {
    v3 = sub_10000DEFC(&unk_1005D8FF0, &unk_1004DC230);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D81A8);
  }

  return result;
}

void *sub_1002F14FC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D81C0, &unk_1004F3DA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

Swift::Int sub_1002F158C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002F1A08(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002F1694(v5);
  *a1 = v2;
  return result;
}

void sub_1002F15F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a2 + v3;
  if (__CFADD__(a2, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 16);
      v8 = v4 >= v7;
      v9 = v4 - v7;
      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v10, v11 & 1);
    }

    if (!HIDWORD(v3))
    {
      ByteBuffer._ensureAvailableCapacity(_:at:)(v3, v5);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, v5);
      return;
    }
  }

  __break(1u);
}

Swift::Int sub_1002F1694(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10020E050(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10020DF80(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1002F178C(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v7 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1004A67E4();
    }

    if (v8)
    {
      v10 = v8 + v9;
    }

    else
    {
      v10 = 0;
    }

    ByteBuffer._setBytes(_:at:)(v8, v10, a4);
    return v11;
  }

  v12 = HIBYTE(a2) & 0xF;
  v19[0] = result;
  v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v13 = a4 + v12;
  if (!__CFADD__(a4, v12))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(a3 + 16);
      v15 = v13 >= v14;
      v16 = v13 - v14;
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v19, v19 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

void *sub_1002F1890(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *(v18 + 16);
      v20 = *(v18 + 20);
      v21 = *(v18 + 22);
      v22 = *(v18 + 8);
      *v11 = *v18;
      *(v11 + 8) = v22;
      *(v11 + 16) = v19;
      *(v11 + 20) = v20;
      *(v11 + 22) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1002F1A1C(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3)
    {
      v4 = (v3 - 1) | ((v3 - 1) >> 1) | (((v3 - 1) | ((v3 - 1) >> 1)) >> 2);
      v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
      v6 = v5 | HIWORD(v5);
      v7 = __CFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        v9 = -1;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = malloc(v9);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    type metadata accessor for ByteBuffer._Storage();
    v13 = swift_allocObject();
    v10 = 0;
    *(v13 + 16) = v9;
    *(v13 + 24) = v12;
    *(v13 + 32) = j__malloc;
    *(v13 + 40) = j__realloc;
    *(v13 + 48) = sub_100127C74;
    *(v13 + 56) = sub_100127C84;
  }

  else
  {
    v10 = *(ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor() + 3);
  }

  sub_1002F15F8(a1, v10);
  if (__CFADD__(v10, v14))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1002F1B84(uint64_t a1, uint64_t a2)
{
  v87 = a1;
  v86 = type metadata accessor for CommandStreamPart(0);
  v3 = *(v86 - 8);
  __chkstk_darwin(v86);
  v5 = (v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1004A44E4();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v78 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = v74 - v9;
  v85 = type metadata accessor for ClientCommand(0);
  __chkstk_darwin(v85);
  v11 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v12 - 8);
  v82 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = v74 - v15;
  v16 = sub_1004A57F4();
  __chkstk_darwin(v16 - 8);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C9C0(&qword_1005D81B0, &unk_1004F3D70);
  __chkstk_darwin(v19 - 8);
  v21 = (v74 - v20);
  v22 = type metadata accessor for Command(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002EFF4C(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
LABEL_6:
    sub_1002F2694(v21, v25, type metadata accessor for Command);
    sub_10000C9C0(&qword_1005D7F30, &unk_1004F3D80);
    v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004CEAA0;
    *&v90 = sub_100304E50(v87 & 0xFFFFFFFF000000FFLL);
    sub_1004A57D4();
    sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
    sub_1002F1444();
    v37 = sub_1004A5794();
    v39 = v38;

    if (v39)
    {
      v40 = (v36 + v35);
      v41 = type metadata accessor for TaggedCommand(0);
      sub_1002F26FC(v25, v36 + v35 + *(v41 + 20), type metadata accessor for Command);
      *v40 = v37;
      v40[1] = v39;
      swift_storeEnumTagMultiPayload();
      sub_1002F2634(v25, type metadata accessor for Command);
      return v36;
    }

    goto LABEL_31;
  }

  v77 = v18;
  sub_100025F40(v21, &qword_1005D81B0, &unk_1004F3D70);
  sub_1002F26FC(a2, v11, type metadata accessor for ClientCommand);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v26 = *(v11 + 2);
    v75 = *v11;
    v76 = v26;
    v27 = *(v11 + 2);
    v28 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
    v29 = *(v28 + 64);
    v30 = &v11[*(v28 + 80)];
    v32 = *v30;
    v31 = v30[1];
    v85 = v32;
    v81 = v31;
    sub_100025FDC(&v11[v29], v88, &qword_1005D0F20, &qword_1004E9390);
    v33 = *(v27 + 16);
    if (v33)
    {
      v21 = sub_100135390(*(v27 + 16), 0);
      v25 = sub_100139548(&v90, v21 + 4, v33, v27);
      v34 = v90;
      v80 = *(&v91 + 1);
      v11 = v91;
      v74[1] = *&v92[0];

      sub_100020D08(v34);
      if (v25 != v33)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *&v90 = v21;
    sub_1002F158C(&v90);
    v42 = v82;

    v80 = v90;
    sub_100252E5C(v88, v42);
    v44 = v83;
    v43 = v84;
    v11 = (*(v83 + 48))(v42, 1, v84);
    v45 = v81;
    if (v11 == 1)
    {
      v46 = 0;
    }

    else
    {
      v47 = v79;
      (*(v44 + 32))(v79, v42, v43);
      v48 = v78;
      (*(v44 + 16))(v78, v47, v43);
      ServerMessageDate.init(_:)(v48);
      v46 = v49;
      (*(v44 + 8))(v47, v43);
    }

    v50 = sub_1002FB760(_swiftEmptyArrayStorage);
    v83 = v51;
    v84 = v50;
    v82 = v52;
    v53 = v45 >> 62;
    if ((v45 >> 62) > 1)
    {
      if (v53 != 2)
      {
        v54 = 0;
        goto LABEL_22;
      }

      v56 = *(v85 + 16);
      v55 = *(v85 + 24);
      v54 = v55 - v56;
      if (!__OFSUB__(v55, v56))
      {
LABEL_22:
        *&v90 = sub_100304E50(v87 & 0xFFFFFFFF000000FFLL);
        sub_1004A57D4();
        sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        sub_1002F1444();
        v57 = sub_1004A5794();
        v59 = v58;

        if (v59)
        {
          v95 = v57;
          v96[0] = v59;
          v96[1] = v75;
          v96[2] = v76;
          v97 = 0;
          v96[3] = 0;
          v96[4] = 0;
          LOBYTE(v90) = v11 == 1;
          v98 = v80;
          v99 = v46;
          v100 = v11 == 1;
          v101 = v84;
          v102 = v83 & 0xFFFFFFFFFFFFFF8;
          v103 = v82 & 0xFFFFFFFFFFFFFF8;
          v104 = v54;
          v60 = 4;
          v105 = 32;

          v61 = v85;
          v62 = v81;
          sub_100014CEC(v85, v81);
          v63 = sub_100190D98(v61, v62, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
          v65 = v64;
          v67 = v66;
          sub_100014D40(v61, v62);
          v106 = v63;
          v107 = v65;
          v109 = 0;
          v110 = 0;
          v108 = v67 & 0xFFFFFFFFFFFFFFLL;
          v111 = 64;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v115 = 0;
          v116 = -64;
          v117 = 2;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = -64;
          v93 = _swiftEmptyArrayStorage;
          sub_1002E52FC(0, 5, 0);
          v36 = v93;
          while (1)
          {
            v68 = *&v94[v60 * 8 + 16];
            v90 = *&v94[v60 * 8];
            v91 = v68;
            v92[0] = *&v94[v60 * 8 + 32];
            v69 = v92[0];
            *(v92 + 9) = *(&v96[v60] + 1);
            v70 = *(v92 + 9);
            *v5 = v90;
            v5[1] = v68;
            v5[2] = v69;
            *(v5 + 41) = v70;
            swift_storeEnumTagMultiPayload();
            sub_1002F25D8(&v90, &v89);
            v93 = v36;
            v72 = *(v36 + 16);
            v71 = *(v36 + 24);
            if (v72 >= v71 >> 1)
            {
              sub_1002E52FC((v71 > 1), v72 + 1, 1);
              v36 = v93;
            }

            *(v36 + 16) = v72 + 1;
            sub_1002F2694(v5, v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v72, type metadata accessor for CommandStreamPart);
            if (v60 == 36)
            {
              break;
            }

            v60 += 8;
          }

          sub_100025F40(v88, &qword_1005D0F20, &qword_1004E9390);
          swift_arrayDestroy();

          sub_100014D40(v85, v62);
          return v36;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v53)
    {
      v54 = BYTE6(v45);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v85), v85))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v54 = HIDWORD(v85) - v85;
    goto LABEL_22;
  }

LABEL_33:
  sub_1002F2634(v11, type metadata accessor for ClientCommand);
  sub_1004A69A4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1002F2634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F2694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F26FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F2764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  for (i = (v7 + 48); ; i += 3)
  {
    if (*i && *(i - 2) == a1)
    {
      v10 = *(i - 1) == a2 && *i == a3;
      if (v10 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }
    }

    if (!--v8)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sub_1002F284C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(*(v3 + 32) + 16);
  swift_beginAccess();
  if (v8)
  {
    v3 = sub_100039EE0(v8);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v4 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 32) = v8;
    if (result)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1002F2A18(v8);
  v8 = result;
  *(v4 + 32) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < v8[2])
  {
    v10 = &v8[3 * v3];
    v10[4] = a1;
    v10[5] = a2;
    v10[6] = a3;
    *(v4 + 32) = v8;

    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1002F2964()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002F29D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = a2 + 32 + 16 * v3;
    if ((v6[2] | (v6[2] << 32)) != (*(v7 + 8) | (*(v7 + 8) << 32)))
    {
      return 0;
    }

    v8 = *v6;
    v9 = *v7;
    v10 = *(*v6 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F2B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10 = *v3;
        v11[0] = v5;
        *(v11 + 13) = *(v3 + 29);
        v6 = v4[1];
        v12 = *v4;
        v13[0] = v6;
        *(v13 + 13) = *(v4 + 29);
        sub_1002E7F14(&v10, v9);
        sub_1002E7F14(&v12, v9);
        v7 = static FetchAttribute.__derived_enum_equals(_:_:)(&v10, &v12);
        sub_1002E7F70(&v12);
        sub_1002E7F70(&v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v4 = (v4 + 40);
        v3 = (v3 + 40);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1002F2BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v48 = sub_10000C9C0(&qword_1005D80F8, &qword_1004F3C28);
  __chkstk_darwin(v48);
  v11 = &v41 - v10;
  v47 = type metadata accessor for MessageData.BodySection(0);
  __chkstk_darwin(v47);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (v18 && a1 != a2)
  {
    v45 = v4;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = (v5 + 48);
    v23 = *(v15 + 72);
    v43 = 0;
    v44 = v23;
    v42 = (v5 + 48);
    while (1)
    {
      sub_1002F3D24(v20, v17, type metadata accessor for MessageData.BodySection);
      sub_1002F3D24(v21, v13, type metadata accessor for MessageData.BodySection);
      if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*v17, *(v17 + 1), v17[16], *v13, *(v13 + 1), v13[16]) & 1) == 0)
      {
LABEL_27:
        sub_1002F3D8C(v13, type metadata accessor for MessageData.BodySection);
        sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
        return 0;
      }

      v26 = v13[24];
      if (v17[24])
      {
        if (!v13[24])
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (*(v17 + 5) != *(v13 + 5))
        {
          v26 = 1;
        }

        if (v26)
        {
          goto LABEL_27;
        }
      }

      v49 = v20;
      v27 = *(v47 + 24);
      v28 = *(v48 + 48);
      sub_1002F3CB4(&v17[v27], v11);
      sub_1002F3CB4(&v13[v27], &v11[v28]);
      v29 = *v22;
      v30 = v11;
      v31 = v11;
      v32 = v45;
      if ((*v22)(v30, 1, v45) == 1)
      {
        break;
      }

      sub_1002F3CB4(v31, v9);
      if (v29((v31 + v28), 1, v32) == 1)
      {
        sub_1002F3D8C(v9, type metadata accessor for MessageData.BodyData);
        v11 = v31;
LABEL_24:
        v39 = &qword_1005D80F8;
        v40 = &qword_1004F3C28;
LABEL_26:
        sub_100025F40(v11, v39, v40);
        goto LABEL_27;
      }

      v33 = v9;
      sub_1002ED74C(v31 + v28, v46);
      v34 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v11 = v31;
      if (v34 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
      {
        sub_1002F3D8C(v46, type metadata accessor for MessageData.BodyData);
        sub_1002F3D8C(v9, type metadata accessor for MessageData.BodyData);
        v39 = &qword_1005CE218;
        v40 = &unk_1004F3FD0;
        goto LABEL_26;
      }

      sub_1004A5384();
      sub_1001B60F8();
      sub_1004A5E64();
      v35 = sub_1004A5EA4();
      if (v51 == v50)
      {
        sub_1002F3D8C(v46, type metadata accessor for MessageData.BodyData);
        sub_1002F3D8C(v9, type metadata accessor for MessageData.BodyData);
        v22 = v42;
        v25 = v49;
LABEL_6:
        sub_100025F40(v11, &qword_1005CE218, &unk_1004F3FD0);
        sub_1002F3D8C(v13, type metadata accessor for MessageData.BodySection);
        sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
        goto LABEL_7;
      }

      __chkstk_darwin(v35);
      v36 = v46;
      *(&v41 - 2) = v46;
      *(&v41 - 1) = v33;
      v37 = v43;
      sub_1004A5314();
      v43 = v37;
      LOBYTE(v37) = v51;
      sub_1002F3D8C(v36, type metadata accessor for MessageData.BodyData);
      sub_1002F3D8C(v33, type metadata accessor for MessageData.BodyData);
      sub_100025F40(v31, &qword_1005CE218, &unk_1004F3FD0);
      sub_1002F3D8C(v13, type metadata accessor for MessageData.BodySection);
      sub_1002F3D8C(v17, type metadata accessor for MessageData.BodySection);
      v25 = v49;
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v9 = v33;
      v22 = v42;
LABEL_7:
      v21 += v44;
      v20 = v25 + v44;
      if (!--v18)
      {
        return 1;
      }
    }

    v24 = v29((v31 + v28), 1, v32);
    v11 = v31;
    v25 = v49;
    if (v24 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1002F3208(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v9 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v12[0] = *v3;
        v12[1] = v5;
        v6 = v3[3];
        v12[2] = v3[2];
        v12[3] = v6;
        v7 = v4[1];
        v13[0] = *v4;
        v13[1] = v7;
        v8 = v4[3];
        v13[2] = v4[2];
        v13[3] = v8;
        sub_1002E802C(v12, v11);
        sub_1002E802C(v13, v11);
        v9 = static ReturnOption.__derived_enum_equals(_:_:)(v12, v13);
        sub_1002E8088(v13);
        sub_1002E8088(v12);
        if ((v9 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002F32E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      if (v6 <= 3)
      {
        if (*v3 > 1u)
        {
          if (v6 == 2)
          {
            v8 = 0xE700000000000000;
            v7 = 0x5458454E444955;
          }

          else
          {
            v7 = 0x44494C4156444955;
            v8 = 0xEB00000000595449;
          }
        }

        else
        {
          v7 = *v3 ? 0x544E45434552 : 0x534547415353454DLL;
          v8 = *v3 ? 0xE600000000000000 : 0xE800000000000000;
        }
      }

      else if (*v3 <= 5u)
      {
        v7 = v6 == 4 ? 0x4E4545534E55 : 1163544915;
        v8 = v6 == 4 ? 0xE600000000000000 : 0xE400000000000000;
      }

      else if (v6 == 6)
      {
        v7 = 0x4D54534548474948;
        v8 = 0xED0000514553444FLL;
      }

      else if (v6 == 7)
      {
        v7 = 0x494C444E45505041;
        v8 = 0xEB0000000054494DLL;
      }

      else
      {
        v7 = 0x49584F424C49414DLL;
        v8 = 0xE900000000000044;
      }

      v9 = *i;
      if (v9 <= 3)
      {
        break;
      }

      if (*i <= 5u)
      {
        if (v9 == 4)
        {
          v12 = 0xE600000000000000;
          if (v7 != 0x4E4545534E55)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          if (v7 != 1163544915)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_55;
      }

      if (v9 == 6)
      {
        v12 = 0xED0000514553444FLL;
        if (v7 != 0x4D54534548474948)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      if (v9 == 7)
      {
        v10 = 0x494C444E45505041;
        v11 = 5523789;
LABEL_50:
        v12 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v7 != v10)
        {
          goto LABEL_5;
        }

        goto LABEL_55;
      }

      v12 = 0xE900000000000044;
      if (v7 != 0x49584F424C49414DLL)
      {
        goto LABEL_5;
      }

LABEL_55:
      if (v8 != v12)
      {
LABEL_5:
        v5 = sub_1004A6D34();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i <= 1u)
    {
      if (*i)
      {
        v12 = 0xE600000000000000;
        if (v7 != 0x544E45434552)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v7 != 0x534547415353454DLL)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_55;
    }

    if (v9 == 2)
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x5458454E444955)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

    v10 = 0x44494C4156444955;
    v11 = 5854281;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_1002F361C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption(0) - 8;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1002F3D24(v13, v10, type metadata accessor for SearchReturnOption);
        sub_1002F3D24(v14, v6, type metadata accessor for SearchReturnOption);
        v16 = static SearchReturnOption.__derived_enum_equals(_:_:)(v10, v6);
        sub_1002F3D8C(v6, type metadata accessor for SearchReturnOption);
        sub_1002F3D8C(v10, type metadata accessor for SearchReturnOption);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void __swiftcall PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)(IMAP2Protocol::PushRegistrationInfo *__return_ptr retstr, Swift::Int32 apsVersion, Swift::String accountID, Swift::String deviceToken, Swift::String subtopic, Swift::OpaquePointer mailboxes)
{
  retstr->apsVersion = apsVersion;
  retstr->accountID = accountID;
  retstr->deviceToken = deviceToken;
  retstr->subtopic = subtopic;
  retstr->mailboxes = mailboxes;
}

uint64_t PushRegistrationInfo.deviceToken.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PushRegistrationInfo.deviceToken.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PushRegistrationInfo.mailboxes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void PushRegistrationInfo.hash(into:)(uint64_t a1)
{
  sub_1004A6EE4(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      v4 += 4;
      sub_1004A6EB4(v5 | (v5 << 32));
      --v3;
    }

    while (v3);
  }
}

Swift::Int PushRegistrationInfo.hashValue.getter()
{
  sub_1004A6E94();
  PushRegistrationInfo.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1002F3954(uint64_t a1)
{
  sub_1004A6E94();
  PushRegistrationInfo.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_1002F3990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t static PushRegistrationResponse.__derived_struct_equals(_:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 != a6 || a3 != a7)
  {
    v9 = a4;
    v10 = a8;
    v11 = sub_1004A6D34();
    a4 = v9;
    a8 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_1002F3A5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3);
}

uint64_t _s13IMAP2Protocol20PushRegistrationInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1004A6D34() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

unint64_t sub_1002F3BA8()
{
  result = qword_1005D8280;
  if (!qword_1005D8280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PushRegistrationInfo, &type metadata for PushRegistrationInfo, v0, v1);
    atomic_store(result, &qword_1005D8280);
  }

  return result;
}

uint64_t sub_1002F3BFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002F3C44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F3CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F3D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F3D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002F3DEC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1002F7B68(a1, a2);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v41 = _swiftEmptyArrayStorage;
  result = sub_1002E5278(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v5 = v41;
    v9 = (v3 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

    v35 = 4 << v9;
    v12 = 15;
    v36 = v6;
    v37 = v3;
    v38 = v11;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v12 & 0xC;
      v15 = (v12 & 1) == 0 || v14 == v10;
      v16 = v15;
      if (v15)
      {
        result = v12;
        if (v14 == v10)
        {
          v32 = v16;
          result = sub_10010C210(v12, v3, a2);
          v16 = v32;
          v11 = v38;
        }

        v17 = result >> 16;
        if (result >> 16 >= v11)
        {
          goto LABEL_64;
        }

        if ((result & 1) == 0)
        {
          v18 = v16;
          v19 = sub_1001E1418(result, v3, a2);
          v16 = v18;
          v11 = v38;
          v17 = v19 >> 16;
        }
      }

      else
      {
        v17 = v12 >> 16;
        result = v12;
        if (v12 >> 16 >= v11)
        {
          goto LABEL_65;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v22 = v16;
        result = sub_1004A6714();
        v16 = v22;
        v11 = v38;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v21 = &v39 + v17;
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            v33 = v16;
            v20 = sub_1004A67E4();
            v16 = v33;
            v11 = v38;
          }

          v21 = (v20 + v17);
        }

        result = *v21;
        if (*v21 < 0)
        {
          v31 = (__clz(result ^ 0xFF) - 24);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              result = ((result & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
            }

            else
            {
              result = ((result & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
            }
          }

          else if (v31 != 1)
          {
            result = v21[1] & 0x3F | ((result & 0x1F) << 6);
          }
        }
      }

      if (result >= 0x20)
      {
        v23 = result;
      }

      else
      {
        v23 = result | 0x2400;
      }

      v41 = v5;
      v25 = v5[2];
      v24 = v5[3];
      if (v25 >= v24 >> 1)
      {
        v34 = v16;
        result = sub_1002E5278((v24 > 1), v25 + 1, 1);
        v16 = v34;
        v11 = v38;
        v5 = v41;
      }

      v5[2] = v25 + 1;
      *(v5 + v25 + 8) = v23;
      if (v16)
      {
        v10 = v35;
        v26 = v36;
        v3 = v37;
        if (v14 == v35)
        {
          result = sub_10010C210(v12, v37, a2);
          v11 = v38;
          v12 = result;
          if (v38 <= result >> 16)
          {
            goto LABEL_66;
          }
        }

        else if (v11 <= v12 >> 16)
        {
          goto LABEL_66;
        }

        if ((v12 & 1) == 0)
        {
          result = sub_1001E1418(v12, v37, a2);
          v11 = v38;
          v12 = v12 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v26 = v36;
        v3 = v37;
        v10 = v35;
        if (v11 <= v12 >> 16)
        {
          goto LABEL_67;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5884();
        v11 = v38;
        v12 = result;
      }

      else
      {
        v27 = v12 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v39 = v3;
          v40 = a2 & 0xFFFFFFFFFFFFFFLL;
          v28 = *(&v39 + v27);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v3 & 0x1000000000000000) == 0)
          {
            result = sub_1004A67E4();
            v11 = v38;
          }

          v28 = *(result + v27);
        }

        v29 = v28;
        v30 = __clz(v28 ^ 0xFF) - 24;
        if (v29 >= 0)
        {
          LOBYTE(v30) = 1;
        }

        v12 = ((v27 + v30) << 16) | 5;
      }

      ++v8;
      if (v13 == v26)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall UntaggedResponse.makeDescriptionWithoutPII()()
{
  sub_1002F42D0(&v12);
  v0 = v14;
  v1 = v15;
  v2 = sub_10002587C(&v12, v14);
  v3 = static Response.descriptionWithoutPII<A>(_:)(v2, v0, v1);
  v5 = v4;
  sub_1000197E0(&v12);
  v6 = sub_1004A5924();
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1004A58A4(v6);
  v7 = v12;
  v8 = v13;
  sub_1002F3DEC(v3, v5);

  v12 = v7;
  v13 = v8;
  sub_10000C9C0(&qword_1005D8288, &qword_1004F3FE0);
  sub_10000DF44(&qword_1005D8290, &qword_1005D8288, &qword_1004F3FE0, &protocol conformance descriptor for [A]);
  sub_1004A58B4();

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1002F42D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = &v85.i8[-v5];
  v7 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v7);
  v9 = (v85.i64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002F99D4(v2, v9, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *v9;
      v38 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v19 = sub_1000B3774(a1);
      *v19 = v86;
      v19[2] = v38;
      v20 = 1;
      goto LABEL_14;
    case 2u:
      v86 = *v9;
      v31 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v19 = sub_1000B3774(a1);
      *v19 = v86;
      v19[2] = v31;
      v20 = 2;
      goto LABEL_14;
    case 3u:
      v86 = *v9;
      v33 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v19 = sub_1000B3774(a1);
      *v19 = v86;
      v19[2] = v33;
      v20 = 3;
      goto LABEL_14;
    case 4u:
      v86 = *v9;
      v18 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v19 = sub_1000B3774(a1);
      *v19 = v86;
      v19[2] = v18;
      v20 = 4;
LABEL_14:
      *(v19 + 24) = v20;
      goto LABEL_15;
    case 5u:
    case 6u:
      goto LABEL_24;
    case 7u:
      v34 = *(v9 + 4);
      v35 = *(v9 + 20);
      v36 = v9[3];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v37 = *(v9 + 2);
      v85 = *v9;
      v86 = v37;
      v9 = sub_1000B3774(a1);
      v99[0] = v85;
      v99[1].i32[0] = v34;
      v99[1].i8[4] = v35;
      v99[1].i64[1] = v36;
      v99[2] = v86;
      sub_1002F9E10(v99);
      goto LABEL_32;
    case 8u:
      v48 = *(v9 + 4);
      v49 = *(v9 + 20);
      v50 = v9[3];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v51 = *(v9 + 2);
      v85 = *v9;
      v86 = v51;
      v9 = sub_1000B3774(a1);
      v99[0] = v85;
      v99[1].i32[0] = v48;
      v99[1].i8[4] = v49;
      v99[1].i64[1] = v50;
      v99[2] = v86;
      sub_1002F9DC4(v99);
      goto LABEL_32;
    case 9u:
      v25 = *v9;
      v26 = *(v9 + 2);
      v27 = *(v9 + 6);
      v91 = *(v9 + 5);
      v92 = v27;
      v28 = *(v9 + 8);
      v93 = *(v9 + 7);
      v94 = v28;
      v29 = *(v9 + 2);
      v87 = *(v9 + 1);
      v88 = v29;
      v30 = *(v9 + 4);
      v89 = *(v9 + 3);
      v90 = v30;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v9 = sub_1000B3774(a1);
      *(&v95[7] + 4) = v94;
      *(&v95[6] + 4) = v93;
      *(&v95[5] + 4) = v92;
      *(&v95[4] + 4) = v91;
      *(v95 + 4) = v87;
      *(&v95[1] + 4) = v88;
      *(&v95[2] + 4) = v89;
      *(&v95[3] + 4) = v90;
      v99[0].i64[0] = v25;
      *(v99 + 12) = v95[0];
      *(&v99[4] + 12) = v95[4];
      *(&v99[3] + 12) = v95[3];
      *(&v99[2] + 12) = v95[2];
      *(&v99[1] + 12) = v95[1];
      v99[0].i32[2] = v26;
      v99[8].i32[3] = HIDWORD(v94);
      *(&v99[7] + 12) = v95[7];
      *(&v99[6] + 12) = v95[6];
      *(&v99[5] + 12) = v95[5];
      sub_1002F9D78(v99);
      goto LABEL_32;
    case 0xAu:
      v47 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v86 = *v9;
      v9 = sub_1000B3774(a1);
      v99[0] = v86;
      v99[1].i64[0] = v47;
      sub_1002F9D2C(v99);
      goto LABEL_32;
    case 0xBu:
      v17 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v9 = sub_1000B3774(a1);
      v99[0] = v17;
      v99[1].i8[0] = 1;
      sub_1002F9CE0(v99);
      goto LABEL_32;
    case 0xCu:
      v21 = *(v9 + 32);
      v22 = *(v9 + 33);
      v23 = v9[5];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v24 = *v9;
      v85 = *(v9 + 1);
      v86 = v24;
      v9 = sub_1000B3774(a1);
      v99[0] = v86;
      v99[1] = v85;
      v99[2].i8[0] = v21;
      v99[2].i8[1] = v22;
      v99[2].i64[1] = v23;
      sub_1002F9C94(v99);
      goto LABEL_32;
    case 0xDu:
      v43 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v9 = sub_1000B3774(a1);
      v44 = *(v43 + 16);
      if (v44)
      {
        a1 = sub_100135390(*(v43 + 16), 0);
        v45 = sub_100139548(v99, a1 + 4, v44, v43);
        sub_100020D08(v99[0].i64[0]);
        if (v45 != v44)
        {
          __break(1u);
LABEL_24:
          v46 = *v9;
          a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
          a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
          *sub_1000B3774(a1) = v46;
          type metadata accessor for ResponsePayload(0);
          goto LABEL_33;
        }
      }

      else
      {

        a1 = _swiftEmptyArrayStorage;
      }

      v99[0].i64[0] = a1;
      sub_1002F9C4C(v99);
LABEL_32:
      *v9 = v99[0];
      v67 = v99[1];
      v68 = v99[2];
      v69 = v99[4];
      *(v9 + 3) = v99[3];
      *(v9 + 4) = v69;
      *(v9 + 1) = v67;
      *(v9 + 2) = v68;
      v70 = v99[5];
      v71 = v99[6];
      v72 = v99[8];
      *(v9 + 7) = v99[7];
      *(v9 + 8) = v72;
      *(v9 + 5) = v70;
      *(v9 + 6) = v71;
      type metadata accessor for ResponsePayload(0);
LABEL_33:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v86 = *v9;
      v13 = v9[2];
      v14 = *(v9 + 32);
      v15 = v9[5];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v16 = v9[3];
      v9 = sub_1000B3774(a1);
      v99[0] = v86;
      v99[1].i64[0] = v13;
      v99[1].i64[1] = v16;
      v99[2].i8[0] = v14;
      v99[2].i64[1] = v15;
      sub_1002F9B44(v99);
      goto LABEL_32;
    case 0xFu:
      v32 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v9 = sub_1000B3774(a1);
      v99[0].i64[0] = v32;
      sub_1002F9C00(v99);
      goto LABEL_32;
    case 0x10u:
      v12 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v9 = sub_1000B3774(a1);
      v99[0].i64[0] = v12;
      sub_1002F9BB4(v99);
      goto LABEL_32;
    case 0x11u:
      v39 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      *sub_1000B3774(a1) = v39;
      type metadata accessor for MessageData(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    case 0x12u:
    case 0x13u:
      sub_100020950(v9, v6);
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v55 = sub_1000B3774(a1);
      sub_10000E268(v6, v55, &unk_1005D91B0, &unk_1004CF400);
      type metadata accessor for MessageData(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      return sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    case 0x14u:
      memcpy(v99, v9, 0x268uLL);
      if (v99[0].i8[4])
      {
        if (v99[0].i8[12])
        {
          a1[3] = sub_10000C9C0(&qword_1005D8438, &qword_1004F4718);
          a1[4] = sub_10000DF44(&qword_1005D8440, &qword_1005D8438, &qword_1004F4718, &protocol conformance descriptor for [A]);
          result = sub_100025D5C(v99);
          *a1 = _swiftEmptyArrayStorage;
          return result;
        }

        v73 = v99[0].i32[2];
        sub_10000C9C0(&qword_1005D8448, &unk_1004F4720);
        v74 = *(type metadata accessor for Response(0) - 8);
        v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1004CEAA0;
        v76 = v59 + v75;
        LODWORD(v95[0]) = v73;
        sub_1002F9B90(v95);
        v77 = v96;
        *(v76 + 128) = v95[8];
        *(v76 + 144) = v77;
        *(v76 + 160) = v97;
        *(v76 + 176) = v98;
        v78 = v95[5];
        *(v76 + 64) = v95[4];
        *(v76 + 80) = v78;
        v79 = v95[7];
        *(v76 + 96) = v95[6];
        *(v76 + 112) = v79;
        v80 = v95[1];
        *v76 = v95[0];
        *(v76 + 16) = v80;
        v81 = v95[3];
        *(v76 + 32) = v95[2];
        *(v76 + 48) = v81;
        swift_storeEnumTagMultiPayload();
        v66 = 0;
      }

      else
      {
        v56 = v99[0].i32[0];
        sub_10000C9C0(&qword_1005D8448, &unk_1004F4720);
        v57 = *(type metadata accessor for Response(0) - 8);
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1004CEAA0;
        v60 = v59 + v58;
        LODWORD(v95[0]) = v56;
        sub_1002F9BA4(v95);
        v61 = v96;
        *(v60 + 128) = v95[8];
        *(v60 + 144) = v61;
        *(v60 + 160) = v97;
        *(v60 + 176) = v98;
        v62 = v95[5];
        *(v60 + 64) = v95[4];
        *(v60 + 80) = v62;
        v63 = v95[7];
        *(v60 + 96) = v95[6];
        *(v60 + 112) = v63;
        v64 = v95[1];
        *v60 = v95[0];
        *(v60 + 16) = v64;
        v65 = v95[3];
        *(v60 + 32) = v95[2];
        *(v60 + 48) = v65;
        swift_storeEnumTagMultiPayload();
        v66 = 1;
      }

      v82 = sub_1002F5410(v66);
      *&v87 = v59;
      sub_1002E5108(v83, v82);
      v84 = v87;
      a1[3] = sub_10000C9C0(&qword_1005D8438, &qword_1004F4718);
      a1[4] = sub_10000DF44(&qword_1005D8440, &qword_1005D8438, &qword_1004F4718, &protocol conformance descriptor for [A]);
      result = sub_100025D5C(v99);
      *a1 = v84;
      return result;
    case 0x15u:
      v41 = *v9;
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v86 = *(v9 + 1);
      v42 = sub_1000B3774(a1);
      *v42 = v41;
      *(v42 + 1) = v86;
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    case 0x16u:
      v86 = *v9;
      v52 = v9[2];
      v53 = *(v9 + 24);
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v54 = sub_1000B3774(a1);
      *v54 = v86;
      v54[2] = v52;
      *(v54 + 24) = v53;
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    default:
      v86 = *v9;
      v10 = v9[2];
      a1[3] = sub_10000C9C0(&qword_1005D8428, &qword_1004F4710);
      a1[4] = sub_10000DF44(&qword_1005D8430, &qword_1005D8428, &qword_1004F4710, &protocol conformance descriptor for CollectionOfOne<A>);
      v11 = sub_1000B3774(a1);
      *v11 = v86;
      v11[2] = v10;
      *(v11 + 24) = 0;
LABEL_15:
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
  }
}

void *sub_1002F5410(int a1)
{
  LODWORD(v265) = a1;
  v276 = sub_1004A5384();
  v256 = *(v276 - 8);
  __chkstk_darwin(v276);
  v275 = v252 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v3 - 8);
  v5 = v252 - v4;
  v279 = type metadata accessor for MessageData.BodyData(0);
  v264 = *(v279 - 8);
  __chkstk_darwin(v279);
  v274 = v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v280 = v252 - v8;
  v278 = type metadata accessor for MessageData.BodySection(0);
  v257 = *(v278 - 8);
  __chkstk_darwin(v278);
  v267 = v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Response(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v261 = v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v260 = v252 - v14;
  __chkstk_darwin(v15);
  v259 = v252 - v16;
  __chkstk_darwin(v17);
  v258 = v252 - v18;
  __chkstk_darwin(v19);
  v277 = v252 - v20;
  __chkstk_darwin(v21);
  v273 = v252 - v22;
  __chkstk_darwin(v23);
  v272 = v252 - v24;
  __chkstk_darwin(v25);
  v266 = v252 - v26;
  __chkstk_darwin(v27);
  v282 = v252 - v28;
  __chkstk_darwin(v29);
  v271 = (v252 - v30);
  __chkstk_darwin(v31);
  v269 = v252 - v32;
  __chkstk_darwin(v33);
  v268 = v252 - v34;
  __chkstk_darwin(v35);
  v37 = v252 - v36;
  __chkstk_darwin(v38);
  v40 = v252 - v39;
  __chkstk_darwin(v41);
  v43 = v252 - v42;
  v44 = *(v1 + 472);
  v364 = *(v1 + 456);
  v365 = v44;
  v366 = *(v1 + 488);
  v367 = *(v1 + 504);
  v45 = *(v1 + 408);
  v360 = *(v1 + 392);
  v361 = v45;
  v46 = *(v1 + 440);
  v362 = *(v1 + 424);
  v363 = v46;
  v262 = v1;
  v281 = v47;
  if (*(&v362 + 1))
  {
    v48 = *(v1 + 408);
    v334 = *(v1 + 392);
    v335 = v48;
    *&v336 = *(v1 + 424);
    *(&v336 + 1) = *(&v362 + 1);
    v49 = *(v1 + 488);
    v339 = *(v1 + 472);
    v340 = v49;
    *&v341 = *(v1 + 504);
    v50 = *(v1 + 440);
    v338 = *(v1 + 456);
    v337 = v50;
    sub_1002FA01C(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v51 = v355;
    *(v43 + 8) = v354;
    *(v43 + 9) = v51;
    *(v43 + 10) = v356;
    *(v43 + 88) = v357;
    v52 = v351;
    *(v43 + 4) = v350;
    *(v43 + 5) = v52;
    v53 = v353;
    *(v43 + 6) = v352;
    *(v43 + 7) = v53;
    v54 = v347;
    *v43 = v346;
    *(v43 + 1) = v54;
    v55 = v349;
    *(v43 + 2) = v348;
    *(v43 + 3) = v55;
    swift_storeEnumTagMultiPayload();
    v287 = v364;
    v288 = v365;
    v289 = v366;
    *&v290 = v367;
    v283 = v360;
    v284 = v361;
    v285 = v362;
    v286 = v363;
    sub_10000E268(&v360, &v322, &qword_1005D8038, &unk_1004F4C00);
    sub_1002FA030(&v283, &v322);
    v56 = sub_1002FAB90(0, 1, 1, _swiftEmptyArrayStorage);
    v58 = v56[2];
    v57 = v56[3];
    v59 = v56;
    if (v58 >= v57 >> 1)
    {
      v59 = sub_1002FAB90((v57 > 1), v58 + 1, 1, v56);
    }

    sub_100025F40(&v360, &qword_1005D8038, &unk_1004F4C00);
    v59[2] = v58 + 1;
    v60 = v59;
    sub_1002F9E84(v43, v59 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v58, type metadata accessor for Response);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
  }

  v61 = v262;
  v62 = *(v262 + 512);
  v359 = v62;
  if (v62)
  {
    v63 = v60;
    v64 = *(v62 + 16);
    if (v64)
    {
      v65 = sub_100135390(*(v62 + 16), 0);
      v66 = sub_100139548(&v346, v65 + 4, v64, v62);
      v67 = v346;
      v254 = v347;
      v255 = *(&v346 + 1);
      v252[1] = v348;
      v253 = *(&v347 + 1);
      sub_10000E268(&v359, &v334, &qword_1005D8450, &qword_1004F4730);
      sub_100020D08(v67);
      if (v66 == v64)
      {
LABEL_11:
        *&v334 = v65;
        sub_1002FA00C(&v334);
        v354 = v342;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v350 = v338;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v346 = v334;
        v347 = v335;
        v348 = v336;
        v349 = v337;
        sub_1002F9E70(&v346);
        v68 = v355;
        *(v40 + 8) = v354;
        *(v40 + 9) = v68;
        *(v40 + 10) = v356;
        *(v40 + 88) = v357;
        v69 = v351;
        *(v40 + 4) = v350;
        *(v40 + 5) = v69;
        v70 = v353;
        *(v40 + 6) = v352;
        *(v40 + 7) = v70;
        v71 = v347;
        *v40 = v346;
        *(v40 + 1) = v71;
        v72 = v349;
        *(v40 + 2) = v348;
        *(v40 + 3) = v72;
        swift_storeEnumTagMultiPayload();
        v73 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v262;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = sub_1002FAB90(0, v73[2] + 1, 1, v73);
        }

        v76 = v73[2];
        v75 = v73[3];
        v77 = v73;
        if (v76 >= v75 >> 1)
        {
          v77 = sub_1002FAB90((v75 > 1), v76 + 1, 1, v73);
        }

        v77[2] = v76 + 1;
        v60 = v77;
        sub_1002F9E84(v40, v77 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v76, type metadata accessor for Response);
        goto LABEL_16;
      }

      __break(1u);
    }

    v65 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

LABEL_16:
  v78 = *(v61 + 520);
  v358 = v78;
  if (!v78)
  {
    goto LABEL_20;
  }

  v79 = v60;
  v60 = *(v78 + 16);
  if (v60)
  {
    v80 = sub_1002F14FC(*(v78 + 16), 0);
    v81 = sub_1002F1890(&v346, (v80 + 4), v60, v78);
    v82 = v346;
    v254 = *(&v347 + 1);
    v255 = v347;
    v253 = v348;
    sub_10000E268(&v358, &v334, qword_1005CF958, &qword_1004D3040);
    sub_100020D08(v82);
    if (v81 != v60)
    {
      __break(1u);
LABEL_20:
      v83 = v262;
      if (*(v262 + 536))
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  *&v334 = v80;
  sub_1002F9FF8(&v334);
  v354 = v342;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v350 = v338;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v346 = v334;
  v347 = v335;
  v348 = v336;
  v349 = v337;
  sub_1002F9E70(&v346);
  v84 = v355;
  *(v37 + 8) = v354;
  *(v37 + 9) = v84;
  *(v37 + 10) = v356;
  *(v37 + 88) = v357;
  v85 = v351;
  *(v37 + 4) = v350;
  *(v37 + 5) = v85;
  v86 = v353;
  *(v37 + 6) = v352;
  *(v37 + 7) = v86;
  v87 = v347;
  *v37 = v346;
  *(v37 + 1) = v87;
  v88 = v349;
  *(v37 + 2) = v348;
  *(v37 + 3) = v88;
  swift_storeEnumTagMultiPayload();
  v60 = v79;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v262;
  if ((v89 & 1) == 0)
  {
    v60 = sub_1002FAB90(0, v79[2] + 1, 1, v79);
  }

  v91 = v60[2];
  v90 = v60[3];
  if (v91 >= v90 >> 1)
  {
    v60 = sub_1002FAB90((v90 > 1), v91 + 1, 1, v60);
  }

  v60[2] = v91 + 1;
  sub_1002F9E84(v37, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v91, type metadata accessor for Response);
  if ((*(v83 + 536) & 1) == 0)
  {
LABEL_28:
    *&v334 = *(v83 + 528);
    sub_1002F9FE4(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v92 = v355;
    v93 = v268;
    *(v268 + 128) = v354;
    *(v93 + 144) = v92;
    *(v93 + 160) = v356;
    *(v93 + 176) = v357;
    v94 = v351;
    *(v93 + 64) = v350;
    *(v93 + 80) = v94;
    v95 = v353;
    *(v93 + 96) = v352;
    *(v93 + 112) = v95;
    v96 = v347;
    *v93 = v346;
    *(v93 + 16) = v96;
    v97 = v349;
    *(v93 + 32) = v348;
    *(v93 + 48) = v97;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_1002FAB90(0, v60[2] + 1, 1, v60);
    }

    v99 = v60[2];
    v98 = v60[3];
    if (v99 >= v98 >> 1)
    {
      v60 = sub_1002FAB90((v98 > 1), v99 + 1, 1, v60);
    }

    v60[2] = v99 + 1;
    sub_1002F9E84(v268, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v99, type metadata accessor for Response);
  }

LABEL_33:
  if (*(v83 + 544))
  {
    if (*(v83 + 12))
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  *&v334 = *(v83 + 540);
  sub_1002F9FD0(&v334);
  v354 = v342;
  v355 = v343;
  v356 = v344;
  v357 = v345;
  v350 = v338;
  v351 = v339;
  v352 = v340;
  v353 = v341;
  v346 = v334;
  v347 = v335;
  v348 = v336;
  v349 = v337;
  sub_1002F9E70(&v346);
  v100 = v355;
  v101 = v269;
  *(v269 + 128) = v354;
  *(v101 + 144) = v100;
  *(v101 + 160) = v356;
  *(v101 + 176) = v357;
  v102 = v351;
  *(v101 + 64) = v350;
  *(v101 + 80) = v102;
  v103 = v353;
  *(v101 + 96) = v352;
  *(v101 + 112) = v103;
  v104 = v347;
  *v101 = v346;
  *(v101 + 16) = v104;
  v105 = v349;
  *(v101 + 32) = v348;
  *(v101 + 48) = v105;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1002FAB90(0, v60[2] + 1, 1, v60);
  }

  v107 = v60[2];
  v106 = v60[3];
  if (v107 >= v106 >> 1)
  {
    v60 = sub_1002FAB90((v106 > 1), v107 + 1, 1, v60);
  }

  v60[2] = v107 + 1;
  sub_1002F9E84(v269, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v107, type metadata accessor for Response);
  if ((*(v83 + 12) & 1) == 0)
  {
LABEL_41:
    if (v265)
    {
      LODWORD(v334) = *(v83 + 8);
      sub_1002F9FBC(&v334);
      v354 = v342;
      v355 = v343;
      v356 = v344;
      v357 = v345;
      v350 = v338;
      v351 = v339;
      v352 = v340;
      v353 = v341;
      v346 = v334;
      v347 = v335;
      v348 = v336;
      v349 = v337;
      sub_1002F9E70(&v346);
      v108 = v355;
      v109 = v271;
      *(v271 + 8) = v354;
      *(v109 + 144) = v108;
      *(v109 + 160) = v356;
      *(v109 + 176) = v357;
      v110 = v351;
      *(v109 + 64) = v350;
      *(v109 + 80) = v110;
      v111 = v353;
      *(v109 + 96) = v352;
      *(v109 + 112) = v111;
      v112 = v347;
      *v109 = v346;
      *(v109 + 16) = v112;
      v113 = v349;
      *(v109 + 32) = v348;
      *(v109 + 48) = v113;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1002FAB90(0, v60[2] + 1, 1, v60);
      }

      v115 = v60[2];
      v114 = v60[3];
      if (v115 >= v114 >> 1)
      {
        v60 = sub_1002FAB90((v114 > 1), v115 + 1, 1, v60);
      }

      v60[2] = v115 + 1;
      sub_1002F9E84(v271, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v115, type metadata accessor for Response);
    }
  }

LABEL_47:
  if ((*(v83 + 560) & 1) == 0)
  {
    *&v334 = *(v83 + 552);
    sub_1002F9FA8(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v116 = v355;
    v117 = v282;
    *(v282 + 128) = v354;
    *(v117 + 144) = v116;
    *(v117 + 160) = v356;
    *(v117 + 176) = v357;
    v118 = v351;
    *(v117 + 64) = v350;
    *(v117 + 80) = v118;
    v119 = v353;
    *(v117 + 96) = v352;
    *(v117 + 112) = v119;
    v120 = v347;
    *v117 = v346;
    *(v117 + 16) = v120;
    v121 = v349;
    *(v117 + 32) = v348;
    *(v117 + 48) = v121;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_1002FAB90(0, v60[2] + 1, 1, v60);
    }

    v123 = v60[2];
    v122 = v60[3];
    if (v123 >= v122 >> 1)
    {
      v60 = sub_1002FAB90((v122 > 1), v123 + 1, 1, v60);
    }

    v60[2] = v123 + 1;
    sub_1002F9E84(v282, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v123, type metadata accessor for Response);
  }

  v124 = *(v83 + 200);
  v125 = *(v124 + 16);
  if (v125)
  {
    v126 = (v124 + ((*(v257 + 80) + 32) & ~*(v257 + 80)));
    v270 = v11;
    v271 = (v264 + 6);
    v264 = (v256 + 8);
    v265 = (v256 + 16);
    v269 = *(v257 + 72);
    v127 = v267;
    v263 = v5;
    do
    {
      v282 = v125;
      v128 = v60;
      sub_1002F99D4(v126, v127, type metadata accessor for MessageData.BodySection);
      sub_10000E268(v127 + *(v278 + 24), v5, &qword_1005CE218, &unk_1004F3FD0);
      if ((*v271)(v5, 1, v279) == 1)
      {
        sub_100025F40(v5, &qword_1005CE218, &unk_1004F3FD0);
        v129 = *(v127 + 8);
        v130 = *(v127 + 20);
        v131 = *(v127 + 24);
        if (v131)
        {
          v130 = 0;
        }

        v132 = *(v127 + 16);
        *&v334 = *v127;
        *(&v334 + 1) = v129;
        *&v335 = v132;
        *(&v335 + 1) = v130;
        LOBYTE(v336) = v131 | 0x40;
        sub_1002F9E5C(&v334);
        v354 = v342;
        v355 = v343;
        v356 = v344;
        v357 = v345;
        v350 = v338;
        v351 = v339;
        v352 = v340;
        v353 = v341;
        v346 = v334;
        v347 = v335;
        v348 = v336;
        v349 = v337;
        sub_1002F9E70(&v346);
        v133 = v355;
        v134 = v277;
        *(v277 + 128) = v354;
        *(v134 + 144) = v133;
        *(v134 + 160) = v356;
        *(v134 + 176) = v357;
        v135 = v351;
        *(v134 + 64) = v350;
        *(v134 + 80) = v135;
        v136 = v353;
        *(v134 + 96) = v352;
        *(v134 + 112) = v136;
        v137 = v347;
        *v134 = v346;
        *(v134 + 16) = v137;
        v138 = v349;
        *(v134 + 32) = v348;
        *(v134 + 48) = v138;
        swift_storeEnumTagMultiPayload();

        sub_100051190(v129, v132);
        v60 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1002FAB90(0, v128[2] + 1, 1, v128);
        }

        v140 = v60[2];
        v139 = v60[3];
        if (v140 >= v139 >> 1)
        {
          v60 = sub_1002FAB90((v139 > 1), v140 + 1, 1, v60);
        }

        sub_1002F9A3C(v127, type metadata accessor for MessageData.BodySection);
        v60[2] = v140 + 1;
        sub_1002F9E84(v277, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v140, type metadata accessor for Response);
      }

      else
      {
        sub_1002F9E84(v5, v280, type metadata accessor for MessageData.BodyData);
        v141 = *v127;
        v142 = *(v127 + 8);
        v143 = *(v127 + 24);
        if (v143)
        {
          v144 = 0;
        }

        else
        {
          v144 = *(v127 + 20);
        }

        v145 = *(v127 + 16);
        v146 = v143 | 0x40;

        sub_100051190(v142, v145);
        v147 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        *&v346 = v141;
        *(&v346 + 1) = v142;
        *&v347 = v145;
        *(&v347 + 1) = v144;
        LOBYTE(v348) = v146;
        *(&v348 + 1) = v147;
        sub_1002F9F58(&v346);
        v148 = v355;
        v11 = v266;
        *(v266 + 8) = v354;
        *(v11 + 144) = v148;
        *(v11 + 160) = v356;
        *(v11 + 176) = v357;
        v149 = v351;
        *(v11 + 64) = v350;
        *(v11 + 80) = v149;
        v150 = v353;
        *(v11 + 96) = v352;
        *(v11 + 112) = v150;
        v151 = v347;
        *v11 = v346;
        *(v11 + 16) = v151;
        v152 = v349;
        *(v11 + 32) = v348;
        *(v11 + 48) = v152;
        swift_storeEnumTagMultiPayload();
        v153 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_1002FAB90(0, v128[2] + 1, 1, v128);
        }

        v155 = v153[2];
        v154 = v153[3];
        v156 = v270;
        if (v155 >= v154 >> 1)
        {
          v153 = sub_1002FAB90((v154 > 1), v155 + 1, 1, v153);
        }

        v153[2] = v155 + 1;
        v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
        v158 = *(v156 + 72);
        sub_1002F9E84(v11, v153 + v157 + v158 * v155, type metadata accessor for Response);
        v159 = v274;
        sub_1002F99D4(v280, v274, type metadata accessor for MessageData.BodyData);
        (*v265)(v275, v159, v276);
        v160 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        if (v160 < 0)
        {
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        v268 = v157;
        if (v160)
        {
          if (v160)
          {
            v161 = (v160 - 1) | ((v160 - 1) >> 1) | (((v160 - 1) | ((v160 - 1) >> 1)) >> 2);
            v162 = v161 | (v161 >> 4) | ((v161 | (v161 >> 4)) >> 8);
            v163 = v162 | HIWORD(v162);
            v164 = __CFADD__(v163, 1);
            v165 = v163 + 1;
            if (v164)
            {
              v156 = 0xFFFFFFFFLL;
            }

            else
            {
              v156 = v165;
            }
          }

          else
          {
            v156 = 0;
          }

          result = malloc(v156);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v172 = result;
          type metadata accessor for ByteBuffer._Storage();
          v170 = swift_allocObject();
          v11 = 0;
          v167 = 0;
          v168 = 0;
          v169 = 0;
          *(v170 + 16) = v156;
          *(v170 + 24) = v172;
          *(v170 + 32) = j__malloc;
          *(v170 + 40) = j__realloc;
          *(v170 + 48) = sub_100127C74;
          *(v170 + 56) = sub_100127C84;
        }

        else
        {
          v166 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
          v11 = *(v166 + 2);
          v167 = *(v166 + 3);
          v156 = *(v166 + 4);
          v168 = *(v166 + 10);
          v169 = *(v166 + 22);
        }

        *&v322 = v170;
        *(&v322 + 1) = __PAIR64__(v167, v11);
        LODWORD(v323) = v156;
        WORD2(v323) = v168;
        BYTE6(v323) = v169;
        v173 = v275;
        ByteBuffer.setDispatchData(_:at:)(v275, v167);
        v175 = v174;
        (*v264)(v173, v276);
        sub_1002F9A3C(v274, type metadata accessor for MessageData.BodyData);
        if (__CFADD__(HIDWORD(v322), v175))
        {
          goto LABEL_111;
        }

        *&v334 = v322;
        DWORD2(v334) = DWORD2(v322);
        HIDWORD(v334) = HIDWORD(v322) + v175;
        LODWORD(v335) = v323;
        WORD2(v335) = WORD2(v323);
        BYTE6(v335) = BYTE6(v323);
        sub_1002F9F6C(&v334);
        v176 = v343;
        v177 = v272;
        *(v272 + 128) = v342;
        *(v177 + 144) = v176;
        *(v177 + 160) = v344;
        *(v177 + 176) = v345;
        v178 = v339;
        *(v177 + 64) = v338;
        *(v177 + 80) = v178;
        v179 = v341;
        *(v177 + 96) = v340;
        *(v177 + 112) = v179;
        v180 = v335;
        *v177 = v334;
        *(v177 + 16) = v180;
        v181 = v337;
        *(v177 + 32) = v336;
        *(v177 + 48) = v181;
        swift_storeEnumTagMultiPayload();
        v182 = v153;
        v184 = v153[2];
        v183 = v153[3];
        v185 = v184 + 1;
        if (v184 >= v183 >> 1)
        {
          v182 = sub_1002FAB90((v183 > 1), v184 + 1, 1, v153);
        }

        v11 = v270;
        v186 = v268;
        v182[2] = v185;
        sub_1002F9E84(v272, v182 + v186 + v184 * v158, type metadata accessor for Response);
        sub_1002F9F80(&v283);
        v187 = v292;
        v188 = v273;
        *(v273 + 128) = v291;
        *(v188 + 144) = v187;
        *(v188 + 160) = v293;
        *(v188 + 176) = v294;
        v189 = v288;
        *(v188 + 64) = v287;
        *(v188 + 80) = v189;
        v190 = v290;
        *(v188 + 96) = v289;
        *(v188 + 112) = v190;
        v191 = v284;
        *v188 = v283;
        *(v188 + 16) = v191;
        v192 = v286;
        *(v188 + 32) = v285;
        *(v188 + 48) = v192;
        swift_storeEnumTagMultiPayload();
        v193 = v182;
        v194 = v182[3];
        v195 = v184 + 2;
        if ((v184 + 2) > (v194 >> 1))
        {
          v193 = sub_1002FAB90((v194 > 1), v184 + 2, 1, v182);
        }

        v127 = v267;
        sub_1002F9A3C(v280, type metadata accessor for MessageData.BodyData);
        sub_1002F9A3C(v127, type metadata accessor for MessageData.BodySection);
        v193[2] = v195;
        v60 = v193;
        sub_1002F9E84(v273, v193 + v186 + v185 * v158, type metadata accessor for Response);
        v5 = v263;
      }

      v126 = (v126 + v269);
      v125 = v282 - 1;
    }

    while (v282 != 1);
  }

  v196 = v262;
  v197 = *(v262 + 160);
  v198 = *(v262 + 128);
  v330 = *(v262 + 144);
  v331 = v197;
  v199 = *(v262 + 160);
  v332 = *(v262 + 176);
  v200 = *(v262 + 96);
  v201 = *(v262 + 64);
  v326 = *(v262 + 80);
  v327 = v200;
  v202 = *(v262 + 96);
  v203 = *(v262 + 128);
  v328 = *(v262 + 112);
  v329 = v203;
  v204 = *(v262 + 32);
  v322 = *(v262 + 16);
  v323 = v204;
  v205 = *(v262 + 64);
  v207 = *(v262 + 16);
  v206 = *(v262 + 32);
  v324 = *(v262 + 48);
  v325 = v205;
  v291 = v330;
  v292 = v199;
  v293 = *(v262 + 176);
  v287 = v326;
  v288 = v202;
  v289 = v328;
  v290 = v198;
  v283 = v207;
  v284 = v206;
  v333 = *(v262 + 192);
  LOBYTE(v294) = *(v262 + 192);
  v285 = v324;
  v286 = v201;
  if (sub_10003EC1C(&v283) == 1)
  {
    v126 = v60;
    v208 = v260;
    v156 = v261;
  }

  else
  {
    v342 = v291;
    v343 = v292;
    v344 = v293;
    v345 = v294;
    v338 = v287;
    v339 = v288;
    v340 = v289;
    v341 = v290;
    v334 = v283;
    v335 = v284;
    v336 = v285;
    v337 = v286;
    sub_1002F9F44(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v209 = v355;
    v210 = v258;
    *(v258 + 128) = v354;
    *(v210 + 144) = v209;
    *(v210 + 160) = v356;
    *(v210 + 176) = v357;
    v211 = v351;
    *(v210 + 64) = v350;
    *(v210 + 80) = v211;
    v212 = v353;
    *(v210 + 96) = v352;
    *(v210 + 112) = v212;
    v213 = v347;
    *v210 = v346;
    *(v210 + 16) = v213;
    v214 = v349;
    *(v210 + 32) = v348;
    *(v210 + 48) = v214;
    swift_storeEnumTagMultiPayload();
    v318 = v330;
    v319 = v331;
    v320 = v332;
    v321 = v333;
    v314 = v326;
    v315 = v327;
    v316 = v328;
    v317 = v329;
    v310 = v322;
    v311 = v323;
    v312 = v324;
    v313 = v325;
    sub_10000E268(&v322, &v298, &qword_1005CDFD0, &qword_1004EE450);
    sub_10003E6D4(&v310, &v298);
    v126 = v60;
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v208 = v260;
    v156 = v261;
    if ((v215 & 1) == 0)
    {
      v126 = sub_1002FAB90(0, v126[2] + 1, 1, v126);
    }

    v217 = v126[2];
    v216 = v126[3];
    if (v217 >= v216 >> 1)
    {
      v126 = sub_1002FAB90((v216 > 1), v217 + 1, 1, v126);
    }

    sub_100025F40(&v322, &qword_1005CDFD0, &qword_1004EE450);
    v126[2] = v217 + 1;
    sub_1002F9E84(v258, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v217, type metadata accessor for Response);
  }

  v218 = *(v196 + 352);
  v219 = *(v196 + 320);
  v306 = *(v196 + 336);
  v307 = v218;
  v220 = *(v196 + 352);
  v308 = *(v196 + 368);
  v221 = *(v196 + 288);
  v222 = *(v196 + 256);
  v302 = *(v196 + 272);
  v303 = v221;
  v223 = *(v196 + 288);
  v224 = *(v196 + 320);
  v304 = *(v196 + 304);
  v305 = v224;
  v225 = *(v196 + 224);
  v298 = *(v196 + 208);
  v299 = v225;
  v226 = *(v196 + 256);
  v228 = *(v196 + 208);
  v227 = *(v196 + 224);
  v300 = *(v196 + 240);
  v301 = v226;
  v318 = v306;
  v319 = v220;
  v320 = *(v196 + 368);
  v314 = v302;
  v315 = v223;
  v316 = v304;
  v317 = v219;
  v310 = v228;
  v311 = v227;
  v309 = *(v196 + 384);
  v321 = *(v196 + 384);
  v312 = v300;
  v313 = v222;
  if (sub_10003EC1C(&v310) != 1)
  {
    v342 = v318;
    v343 = v319;
    v344 = v320;
    LOBYTE(v345) = v321;
    v338 = v314;
    v339 = v315;
    v340 = v316;
    v341 = v317;
    v334 = v310;
    v335 = v311;
    v336 = v312;
    v337 = v313;
    HIBYTE(v345) = 1;
    sub_1002F9F44(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v229 = v355;
    v230 = v259;
    *(v259 + 128) = v354;
    *(v230 + 144) = v229;
    *(v230 + 160) = v356;
    *(v230 + 176) = v357;
    v231 = v351;
    *(v230 + 64) = v350;
    *(v230 + 80) = v231;
    v232 = v353;
    *(v230 + 96) = v352;
    *(v230 + 112) = v232;
    v233 = v347;
    *v230 = v346;
    *(v230 + 16) = v233;
    v234 = v349;
    *(v230 + 32) = v348;
    *(v230 + 48) = v234;
    swift_storeEnumTagMultiPayload();
    v296[8] = v306;
    v296[9] = v307;
    v296[10] = v308;
    v297 = v309;
    v296[4] = v302;
    v296[5] = v303;
    v296[6] = v304;
    v296[7] = v305;
    v296[0] = v298;
    v296[1] = v299;
    v296[2] = v300;
    v296[3] = v301;
    sub_10000E268(&v298, v295, &qword_1005CDFD0, &qword_1004EE450);
    sub_10003E6D4(v296, v295);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_1002FAB90(0, v126[2] + 1, 1, v126);
    }

    v236 = v126[2];
    v235 = v126[3];
    if (v236 >= v235 >> 1)
    {
      v126 = sub_1002FAB90((v235 > 1), v236 + 1, 1, v126);
    }

    sub_100025F40(&v298, &qword_1005CDFD0, &qword_1004EE450);
    v126[2] = v236 + 1;
    sub_1002F9E84(v259, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v236, type metadata accessor for Response);
  }

  v237 = *(v196 + 576);
  if (v237)
  {
    *&v334 = *(v196 + 568);
    *(&v334 + 1) = v237;
    sub_1002F9F30(&v334);
    v354 = v342;
    v355 = v343;
    v356 = v344;
    v357 = v345;
    v350 = v338;
    v351 = v339;
    v352 = v340;
    v353 = v341;
    v346 = v334;
    v347 = v335;
    v348 = v336;
    v349 = v337;
    sub_1002F9E70(&v346);
    v238 = v355;
    *(v208 + 128) = v354;
    *(v208 + 144) = v238;
    *(v208 + 160) = v356;
    *(v208 + 176) = v357;
    v239 = v351;
    *(v208 + 64) = v350;
    *(v208 + 80) = v239;
    v240 = v353;
    *(v208 + 96) = v352;
    *(v208 + 112) = v240;
    v241 = v347;
    *v208 = v346;
    *(v208 + 16) = v241;
    v242 = v349;
    *(v208 + 32) = v348;
    *(v208 + 48) = v242;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_1002FAB90(0, v126[2] + 1, 1, v126);
    }

    v244 = v126[2];
    v243 = v126[3];
    if (v244 >= v243 >> 1)
    {
      v126 = sub_1002FAB90((v243 > 1), v244 + 1, 1, v126);
    }

    v126[2] = v244 + 1;
    sub_1002F9E84(v208, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v244, type metadata accessor for Response);
  }

  sub_1002F9EEC(&v346);
  v245 = v355;
  *(v156 + 128) = v354;
  *(v156 + 144) = v245;
  *(v156 + 160) = v356;
  *(v156 + 176) = v357;
  v246 = v351;
  *(v156 + 64) = v350;
  *(v156 + 80) = v246;
  v247 = v353;
  *(v156 + 96) = v352;
  *(v156 + 112) = v247;
  v248 = v347;
  *v156 = v346;
  *(v156 + 16) = v248;
  v249 = v349;
  *(v156 + 32) = v348;
  *(v156 + 48) = v249;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_112:
    v126 = sub_1002FAB90(0, v126[2] + 1, 1, v126);
  }

  v251 = v126[2];
  v250 = v126[3];
  if (v251 >= v250 >> 1)
  {
    v126 = sub_1002FAB90((v250 > 1), v251 + 1, 1, v126);
  }

  v126[2] = v251 + 1;
  sub_1002F9E84(v156, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v251, type metadata accessor for Response);
  return v126;
}

uint64_t UntaggedResponse.logIdentifier.getter()
{
  type metadata accessor for UntaggedResponse(0);
  sub_1004A6934();
  return 0;
}

unint64_t UntaggedResponse.name.getter()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F99D4(v0, v3, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x535453495845;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 20302;
      break;
    case 2:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 4473154;
      break;
    case 3:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x48545541455250;
      break;
    case 4:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 4544834;
      break;
    case 5:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x494C494241504143;
      break;
    case 6:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x44454C42414E45;
      break;
    case 7:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 1414744396;
      break;
    case 8:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 1112888140;
      break;
    case 9:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x535554415453;
      break;
    case 10:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x43415053454D414ELL;
      break;
    case 11:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x484352414553;
      break;
    case 12:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x48435241455345;
      break;
    case 13:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x5347414C46;
      break;
    case 14:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x4843544142444955;
      break;
    case 15:
      return result;
    case 16:
      result = 0x544E45434552;
      break;
    case 17:
      result = 0x45474E55505845;
      break;
    case 18:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x44454853494E4156;
      break;
    case 19:
    case 22:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0xD000000000000011;
      break;
    case 20:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 0x4843544546;
      break;
    case 21:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 17481;
      break;
    default:
      sub_1002F9A3C(v3, type metadata accessor for UntaggedResponse);
      result = 19279;
      break;
  }

  return result;
}

uint64_t static CommandCompletionResponse.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
      }
    }

    else if (a8 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
    }
  }

  else if (!a8)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(a1, a2);
  }

  return 0;
}

uint64_t sub_1002F7ACC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v7 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
      }
    }

    else if (v7 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
    }
  }

  else if (!v7)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v4, v5);
  }

  return 0;
}

uint64_t CommandCompletionResponse.responseText.getter(uint64_t a1)
{
  sub_1000110B0(a1);

  return a1;
}

unint64_t sub_1002F7B68(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1002F7DA4(0xFuLL, a1, a2);
  v8 = sub_1002F7DA4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5884();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_1004A67E4();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1004A5894();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1004A67E4();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_1002F7DA4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1002F7E3C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1001E1418(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1002F7E3C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10010C210(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(char *a1, uint64_t *a2)
{
  v176 = a1;
  v177 = a2;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v157 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v156 = &v156 - v5;
  v175 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v175);
  v172 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v156 - v8;
  __chkstk_darwin(v9);
  v170 = &v156 - v10;
  __chkstk_darwin(v11);
  v174 = &v156 - v12;
  __chkstk_darwin(v13);
  v173 = &v156 - v14;
  __chkstk_darwin(v15);
  v169 = (&v156 - v16);
  __chkstk_darwin(v17);
  v168 = (&v156 - v18);
  __chkstk_darwin(v19);
  v166 = (&v156 - v20);
  __chkstk_darwin(v21);
  v167 = (&v156 - v22);
  __chkstk_darwin(v23);
  v165 = (&v156 - v24);
  __chkstk_darwin(v25);
  v164 = (&v156 - v26);
  __chkstk_darwin(v27);
  v162 = (&v156 - v28);
  __chkstk_darwin(v29);
  v161 = (&v156 - v30);
  __chkstk_darwin(v31);
  v163 = &v156 - v32;
  __chkstk_darwin(v33);
  v160 = (&v156 - v34);
  __chkstk_darwin(v35);
  v159 = (&v156 - v36);
  __chkstk_darwin(v37);
  v158 = (&v156 - v38);
  __chkstk_darwin(v39);
  v41 = (&v156 - v40);
  __chkstk_darwin(v42);
  v44 = (&v156 - v43);
  __chkstk_darwin(v45);
  v47 = (&v156 - v46);
  __chkstk_darwin(v48);
  v50 = (&v156 - v49);
  __chkstk_darwin(v51);
  v53 = (&v156 - v52);
  __chkstk_darwin(v54);
  v56 = (&v156 - v55);
  v57 = sub_10000C9C0(&qword_1005D8418, &qword_1004F46F8);
  __chkstk_darwin(v57 - 8);
  v59 = &v156 - v58;
  v61 = (&v156 + *(v60 + 56) - v58);
  sub_1002F99D4(v176, &v156 - v58, type metadata accessor for UntaggedResponse);
  v62 = v177;
  v177 = v61;
  sub_1002F99D4(v62, v61, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1002F99D4(v59, v53, type metadata accessor for UntaggedResponse);
      v77 = *v53;
      v110 = v177;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v79 = v53[1];
      v63 = v59;
      v105 = *v110;
      goto LABEL_29;
    case 2u:
      sub_1002F99D4(v59, v50, type metadata accessor for UntaggedResponse);
      v63 = v59;
      v64 = *v50;
      v99 = v177;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_3;
      }

      v100 = v50[1];
      v101 = *v99;
      v72 = static ResponseText.__derived_struct_equals(_:_:)(v64, v100);
      sub_10001114C(v101);

      v102 = v64;
      goto LABEL_30;
    case 3u:
      sub_1002F99D4(v59, v47, type metadata accessor for UntaggedResponse);
      v77 = *v47;
      v78 = v177;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      v79 = v47[1];
      goto LABEL_24;
    case 4u:
      sub_1002F99D4(v59, v44, type metadata accessor for UntaggedResponse);
      v77 = *v44;
      v78 = v177;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v44[1];
LABEL_24:
        v63 = v59;
        v105 = *v78;
LABEL_29:
        v72 = static ResponseText.__derived_struct_equals(_:_:)(v77, v79);
        sub_10001114C(v105);

        v102 = v77;
LABEL_30:
        sub_10001114C(v102);
        goto LABEL_31;
      }

LABEL_33:
      sub_10001114C(v77);
LABEL_50:

      goto LABEL_73;
    case 5u:
      sub_1002F99D4(v59, v41, type metadata accessor for UntaggedResponse);
      v115 = *v41;
      v116 = v177;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    case 6u:
      v128 = v158;
      sub_1002F99D4(v59, v158, type metadata accessor for UntaggedResponse);
      v115 = *v128;
      v116 = v177;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_50;
      }

LABEL_48:
      v76 = sub_1001CE84C(v115, *v116);
      goto LABEL_49;
    case 7u:
      v106 = v159;
      sub_1002F99D4(v59, v159, type metadata accessor for UntaggedResponse);
      v107 = v106[1];
      v178[0] = *v106;
      v178[1] = v107;
      v178[2] = v106[2];
      v108 = v177;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    case 8u:
      v139 = v160;
      sub_1002F99D4(v59, v160, type metadata accessor for UntaggedResponse);
      v140 = v139[1];
      v178[0] = *v139;
      v178[1] = v140;
      v178[2] = v139[2];
      v108 = v177;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_26:
        v109 = *(v108 + 1);
        v179[0] = *v108;
        v179[1] = v109;
        v179[2] = *(v108 + 2);
        v72 = static MailboxInfo.__derived_struct_equals(_:_:)(v178, v179);
        sub_1002F9AF0(v179);
        sub_1002F9AF0(v178);
        goto LABEL_62;
      }

LABEL_56:
      sub_1002F9AF0(v178);
      goto LABEL_73;
    case 9u:
      v84 = v163;
      sub_1002F99D4(v59, v163, type metadata accessor for UntaggedResponse);
      v85 = *v84;
      v86 = *(v84 + 8);
      v87 = *(v84 + 96);
      v178[4] = *(v84 + 80);
      v178[5] = v87;
      v88 = *(v84 + 128);
      v178[6] = *(v84 + 112);
      v178[7] = v88;
      v89 = *(v84 + 32);
      v178[0] = *(v84 + 16);
      v178[1] = v89;
      v90 = *(v84 + 64);
      v178[2] = *(v84 + 48);
      v178[3] = v90;
      v91 = v177;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_10009A0FC(v178);

        goto LABEL_73;
      }

      v92 = *v91;
      v93 = *(v91 + 2);
      v94 = *(v91 + 6);
      v179[4] = *(v91 + 5);
      v179[5] = v94;
      v95 = *(v91 + 8);
      v179[6] = *(v91 + 7);
      v179[7] = v95;
      v96 = *(v91 + 2);
      v179[0] = *(v91 + 1);
      v179[1] = v96;
      v97 = *(v91 + 4);
      v179[2] = *(v91 + 3);
      v179[3] = v97;
      if ((v86 | (v86 << 32)) == (v93 | (v93 << 32)))
      {
        v98 = sub_1000FFC98(v85, v92);

        if (v98)
        {
          v72 = static MailboxStatus.__derived_struct_equals(_:_:)(v178, v179);
          sub_10009A0FC(v178);
          sub_10009A0FC(v179);
          goto LABEL_62;
        }

        sub_10009A0FC(v178);
        sub_10009A0FC(v179);
      }

      else
      {
        sub_10009A0FC(v178);
        sub_10009A0FC(v179);
      }

      sub_1002F9A3C(v59, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0xAu:
      v133 = v161;
      sub_1002F99D4(v59, v161, type metadata accessor for UntaggedResponse);
      v134 = *v133;
      v135 = v133[1];
      v136 = v59;
      v137 = v133[2];
      v138 = v177;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v72 = static NamespaceResponse.__derived_struct_equals(_:_:)(v134, v135, v137, *v138, v138[1], v138[2]);

        sub_1002F9A3C(v136, type metadata accessor for UntaggedResponse);
        return v72 & 1;
      }

      v59 = v136;
      goto LABEL_73;
    case 0xBu:
      v73 = v162;
      sub_1002F99D4(v59, v162, type metadata accessor for UntaggedResponse);
      v74 = *v73;
      v75 = v177;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_50;
      }

      v76 = sub_1001045E0(v74, *v75);
      goto LABEL_49;
    case 0xCu:
      v80 = v164;
      sub_1002F99D4(v59, v164, type metadata accessor for UntaggedResponse);
      v81 = v80[1];
      v178[0] = *v80;
      v178[1] = v81;
      v178[2] = v80[2];
      v82 = v177;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v83 = *(v82 + 1);
        v179[0] = *v82;
        v179[1] = v83;
        v179[2] = *(v82 + 2);
        v72 = static ExtendedSearchResponse.__derived_struct_equals(_:_:)(v178, v179);
        sub_100016C68(v178);
        sub_100016C68(v179);
        goto LABEL_62;
      }

      sub_100016C68(v178);
      goto LABEL_73;
    case 0xDu:
      v125 = v165;
      sub_1002F99D4(v59, v165, type metadata accessor for UntaggedResponse);
      v126 = *v125;
      v127 = v177;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_50;
      }

      v76 = sub_100083750(v126, *v127);
LABEL_49:
      v72 = v76;

      goto LABEL_62;
    case 0xEu:
      v68 = v167;
      sub_1002F99D4(v59, v167, type metadata accessor for UntaggedResponse);
      v69 = v68[1];
      v178[0] = *v68;
      v178[1] = v69;
      v178[2] = v68[2];
      v70 = v177;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v71 = *(v70 + 1);
        v179[0] = *v70;
        v179[1] = v71;
        v179[2] = *(v70 + 2);
        v72 = static UIDBatchesResponse.__derived_struct_equals(_:_:)(v178, v179);
        v187[0] = v178[0];
        sub_1002F9A9C(v187);
        v184 = *&v178[1];
        v185 = DWORD2(v178[1]);
        sub_100025F40(&v184, &qword_1005D7E08, &qword_1004F4700);
        v186 = *(&v178[2] + 1);
        v63 = v59;
        sub_100025F40(&v186, &qword_1005D8420, &qword_1004F4708);
        v182 = v179[0];
        sub_1002F9A9C(&v182);
        v180 = *&v179[1];
        v181 = DWORD2(v179[1]);
        sub_100025F40(&v180, &qword_1005D7E08, &qword_1004F4700);
        v183 = *(&v179[2] + 1);
        sub_100025F40(&v183, &qword_1005D8420, &qword_1004F4708);
        goto LABEL_32;
      }

      v152 = v68[1];
      v179[0] = *v68;
      v179[1] = v152;
      LOBYTE(v179[2]) = *(v68 + 32);
      v187[0] = v179[0];
      sub_1002F9A9C(v187);
      *&v182 = *&v179[1];
      DWORD2(v182) = DWORD2(v179[1]);
      sub_100025F40(&v182, &qword_1005D7E08, &qword_1004F4700);
      v184 = *(&v178[2] + 1);
      sub_100025F40(&v184, &qword_1005D8420, &qword_1004F4708);
      goto LABEL_73;
    case 0xFu:
      v66 = v166;
      sub_1002F99D4(v59, v166, type metadata accessor for UntaggedResponse);
      v67 = v177;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
    case 0x10u:
      v66 = v168;
      sub_1002F99D4(v59, v168, type metadata accessor for UntaggedResponse);
      v67 = v177;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_73;
      }

LABEL_21:
      v103 = *v66;
      v104 = *v67;
      goto LABEL_36;
    case 0x11u:
      v111 = v169;
      sub_1002F99D4(v59, v169, type metadata accessor for UntaggedResponse);
      v112 = v177;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_73;
      }

      v103 = *v112;
      v104 = *v111;
LABEL_36:
      v72 = v103 == v104;
      goto LABEL_62;
    case 0x12u:
      v129 = v173;
      sub_1002F99D4(v59, v173, type metadata accessor for UntaggedResponse);
      v130 = v177;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_63;
      }

      v131 = v130;
      v132 = v156;
      goto LABEL_61;
    case 0x13u:
      v129 = v174;
      sub_1002F99D4(v59, v174, type metadata accessor for UntaggedResponse);
      v151 = v177;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_63:
        sub_100025F40(v129, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_73;
      }

      v131 = v151;
      v132 = v157;
LABEL_61:
      sub_100020950(v131, v132);
      sub_100016D2C();
      v72 = sub_1004A7034();
      sub_100025F40(v132, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v129, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_62;
    case 0x14u:
      v113 = v170;
      sub_1002F99D4(v59, v170, type metadata accessor for UntaggedResponse);
      memcpy(v178, v113, 0x268uLL);
      v114 = v177;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        sub_100025D5C(v178);
        goto LABEL_73;
      }

      memcpy(v179, v114, 0x268uLL);
      v72 = _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v178);
      sub_100025D5C(v179);
      sub_100025D5C(v178);
LABEL_62:
      sub_1002F9A3C(v59, type metadata accessor for UntaggedResponse);
      return v72 & 1;
    case 0x15u:
      v117 = v171;
      sub_1002F99D4(v59, v171, type metadata accessor for UntaggedResponse);
      v118 = *(v117 + 8);
      v119 = *(v117 + 16);
      v120 = v177;
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_73;
      }

      v121 = v59;
      v122 = v120[1];
      v123 = v120[2];
      if (sub_10020FB40(v118, v122))
      {
        v124 = sub_10020FA9C(v119, v123);

        if (v124)
        {
          sub_1002F9A3C(v121, type metadata accessor for UntaggedResponse);
          v72 = 1;
          return v72 & 1;
        }
      }

      else
      {
      }

      sub_1002F9A3C(v121, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0x16u:
      v141 = v172;
      sub_1002F99D4(v59, v172, type metadata accessor for UntaggedResponse);
      v142 = *v141;
      v143 = *(v141 + 8);
      v63 = v59;
      v144 = *(v141 + 16);
      v145 = *(v141 + 24);
      v146 = v177;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v176 = v63;
        v147 = *v146;
        v148 = v146[1];
        v149 = v146[2];
        v150 = *(v146 + 24);
        v72 = static ApplePushService.__derived_enum_equals(_:_:)(v142, v143, v144, v145, *v146, v148, v149, v150);
        sub_100208C4C(v147, v148, v149, v150);
        sub_100208C4C(v142, v143, v144, v145);
        sub_1002F9A3C(v176, type metadata accessor for UntaggedResponse);
        return v72 & 1;
      }

      sub_100208C4C(v142, v143, v144, v145);
      goto LABEL_72;
    default:
      sub_1002F99D4(v59, v56, type metadata accessor for UntaggedResponse);
      v63 = v59;
      v64 = *v56;
      v65 = v177;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        sub_10001114C(v64);

LABEL_72:
        v59 = v63;
LABEL_73:
        sub_100025F40(v59, &qword_1005D8418, &qword_1004F46F8);
LABEL_74:
        v72 = 0;
      }

      else
      {
        v154 = v56[1];
        v155 = *v65;
        v72 = static ResponseText.__derived_struct_equals(_:_:)(v64, v154);
        sub_10001114C(v155);

        sub_10001114C(v64);
LABEL_31:

LABEL_32:
        sub_1002F9A3C(v63, type metadata accessor for UntaggedResponse);
      }

      return v72 & 1;
  }
}

uint64_t _s13IMAP2Protocol8ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Response(0);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_10000C9C0(&qword_1005D8410, &unk_1004F46E8);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v17 = &v41 + *(v16 + 56) - v14;
  sub_1002F99D4(a1, &v41 - v14, type metadata accessor for Response);
  sub_1002F99D4(a2, v17, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002F99D4(v15, v9, type metadata accessor for Response);
    v18 = *(v9 + 1);
    v20 = *(v9 + 1);
    v19 = *(v9 + 2);
    v21 = *(v9 + 3);
    v22 = v9[32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *(v17 + 3);
      v24 = v17[32];
      if (*v9 != *v17 || v18 != *(v17 + 1))
      {
        goto LABEL_20;
      }

      if (v22)
      {
        if (v22 == 1)
        {
          if (v24 == 1)
          {
            v25 = *(v17 + 1);
            v26 = *(v17 + 2);
            v27 = v23;
            v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19);
            sub_100173584(v25, v26, v27, 1u);
            v29 = v20;
            v30 = v19;
            v31 = v21;
            v32 = 1;
            goto LABEL_18;
          }

LABEL_20:
          sub_100173584(*(v17 + 1), *(v17 + 2), v23, v24);
          sub_100173584(v20, v19, v21, v22);
LABEL_21:
          sub_1002F9A3C(v15, type metadata accessor for Response);
          goto LABEL_22;
        }

        if (v24 != 2)
        {
          goto LABEL_20;
        }

        v37 = *(v17 + 1);
        v38 = *(v17 + 2);
        v39 = v23;
        v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19);
        sub_100173584(v37, v38, v39, 2u);
        v29 = v20;
        v30 = v19;
        v31 = v21;
        v32 = 2;
      }

      else
      {
        if (v17[32])
        {
          goto LABEL_20;
        }

        v34 = *(v17 + 1);
        v35 = *(v17 + 2);
        v36 = v23;
        v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19);
        sub_100173584(v34, v35, v36, 0);
        v29 = v20;
        v30 = v19;
        v31 = v21;
        v32 = 0;
      }

LABEL_18:
      sub_100173584(v29, v30, v31, v32);
      if (v28)
      {
        sub_1002F9A3C(v15, type metadata accessor for Response);
        v33 = 1;
        return v33 & 1;
      }

      goto LABEL_21;
    }

    sub_100173584(v20, v19, v21, v22);
LABEL_12:
    sub_100025F40(v15, &qword_1005D8410, &unk_1004F46E8);
LABEL_22:
    v33 = 0;
    return v33 & 1;
  }

  sub_1002F99D4(v15, v12, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002F9A3C(v12, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  sub_1002F9E84(v17, v6, type metadata accessor for UntaggedResponse);
  v33 = _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v6);
  sub_1002F9A3C(v6, type metadata accessor for UntaggedResponse);
  sub_1002F9A3C(v12, type metadata accessor for UntaggedResponse);
  sub_1002F9A3C(v15, type metadata accessor for Response);
  return v33 & 1;
}

void sub_1002F962C(uint64_t a1)
{
  sub_100050E14(319, &qword_1005D5250, &type metadata for Capability);
  if (v1 <= 0x3F)
  {
    sub_1002F997C(319, &qword_1005D8318, &type metadata for MailboxName);
    if (v2 <= 0x3F)
    {
      sub_100050E14(319, &qword_1005D8320, &type metadata for UnknownMessageIdentifier);
      if (v3 <= 0x3F)
      {
        sub_1002F9850(319, &qword_1005D8328, sub_1002F97FC, &type metadata for Flag, &type metadata accessor for Set);
        if (v4 <= 0x3F)
        {
          sub_1002F9850(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
          if (v5 <= 0x3F)
          {
            sub_1002E8F98(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1002F97FC()
{
  result = qword_1005D8330;
  if (!qword_1005D8330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Flag, &type metadata for Flag, v0, v1);
    atomic_store(result, &qword_1005D8330);
  }

  return result;
}

void sub_1002F9850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata accessor for Response(uint64_t a1)
{
  return sub_10002A984(a1, &unk_1005D83D0, &nominal type descriptor for Response);
}

{
  return sub_10002A984(a1, qword_1005DD4E8, &nominal type descriptor for Response);
}

void sub_1002F98F0(uint64_t a1)
{
  type metadata accessor for UntaggedResponse(319);
  if (v1 <= 0x3F)
  {
    sub_1002F997C(319, &unk_1005D83E0, &type metadata for Tag);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002F997C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1002F99D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F9A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int8x16_t sub_1002F9B44(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0xA000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9BB4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x7000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C00(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x6000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C4C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9C94(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x4000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9CE0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x3000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9D2C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x8000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9D78(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x5000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9DC4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x2000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1002F9E10(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x1000000000000000;
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1002F9E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1002F9EEC(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 2560;
  return result;
}

double sub_1002F9F80(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 2560;
  return result;
}

double sub_1002FA08C()
{
  sub_1002FBA8C(_swiftEmptyArrayStorage);
  sub_1002FBC6C(v0, v1, v2, v4);
  xmmword_1005DE230 = v10;
  unk_1005DE240 = v11;
  xmmword_1005DE250 = v12;
  xmmword_1005DE1F0 = v6;
  unk_1005DE200 = v7;
  xmmword_1005DE210 = v8;
  unk_1005DE220 = v9;
  static ServerID.empty = v4[0];
  unk_1005DE1C0 = v4[1];
  result = *&v5;
  xmmword_1005DE1D0 = v4[2];
  unk_1005DE1E0 = v5;
  return result;
}

__n128 ServerID.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1002FBC6C(a1, a3, a4, v10);
  v5 = v10[9];
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v5;
  *(a2 + 160) = v10[10];
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  v7 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v7;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  result = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = result;
  return result;
}

__int128 *ServerID.empty.unsafeMutableAddressor()
{
  if (qword_1005D7D10 != -1)
  {
    swift_once();
  }

  return &static ServerID.empty;
}

uint64_t static ServerID.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1005D7D10 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_10010E800(&static ServerID.empty, v2);
}

uint64_t ServerID.os.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ServerID.os.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerID.osVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ServerID.vendor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ServerID.address.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ServerID.address.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t ServerID.date.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ServerID.date.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ServerID.command.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ServerID.command.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t ServerID.arguments.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t ServerID.arguments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t ServerID.environment.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ServerID.environment.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1002FA558(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

uint64_t sub_1002FA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  if (!a3)
  {
    if (v9)
    {
      v11 = 0;
      for (i = (a4 + 40); ; i += 2)
      {
        result = *(i - 1);
        if (result == a1 && *i == a2)
        {
          break;
        }

        result = sub_1004A6D34();
        if (result)
        {
          break;
        }

        if (v9 == ++v11)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }

    return 0;
  }

  v11 = sub_1001E74AC(a1, a2, a4 + 32, v9, (a3 + 16), a3 + 32);
  v13 = v12;

  if (v13)
  {
    return 0;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_4:
  if (v11 < *(a5 + 16))
  {
    v15 = *(a5 + 16 * v11 + 32);

    return v15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t ServerID.logDescription.getter(__n128 a1)
{
  v2 = v1;
  v36 = 1701667182;
  v37 = 0xE400000000000000;
  v38[0] = swift_getKeyPath();
  v38[1] = 0x6E6F6973726576;
  v38[2] = 0xE700000000000000;
  v38[3] = swift_getKeyPath();
  v38[4] = 29551;
  v38[5] = 0xE200000000000000;
  v38[6] = swift_getKeyPath();
  v38[7] = 0x6F6973726556736FLL;
  v38[8] = 0xE90000000000006ELL;
  v38[9] = swift_getKeyPath();
  v38[10] = 0x726F646E6576;
  v38[11] = 0xE600000000000000;
  v38[12] = swift_getKeyPath();
  v38[13] = 0x5574726F70707573;
  v38[14] = 0xEA00000000004C52;
  v38[15] = swift_getKeyPath();
  v38[16] = 0x73736572646461;
  v38[17] = 0xE700000000000000;
  v38[18] = swift_getKeyPath();
  v38[19] = 1702125924;
  v38[20] = 0xE400000000000000;
  v38[21] = swift_getKeyPath();
  v38[22] = 0x646E616D6D6F63;
  v38[23] = 0xE700000000000000;
  v38[24] = swift_getKeyPath();
  v38[25] = 0x746E656D75677261;
  v38[26] = 0xE900000000000073;
  v38[27] = swift_getKeyPath();
  v38[28] = 0x6D6E6F7269766E65;
  v38[29] = 0xEB00000000746E65;
  result = swift_getKeyPath();
  v4 = 0;
  v38[30] = result;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = 11;
    if (v4 > 0xB)
    {
      v6 = v4;
    }

    v7 = -v6;
    v8 = &v38[3 * v4++];
    while (1)
    {
      if (v7 + v4 == 1)
      {
        __break(1u);
        return result;
      }

      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = v2[9];
      v32 = v2[8];
      v33 = v11;
      v34 = v2[10];
      v12 = v2[5];
      v28 = v2[4];
      v29 = v12;
      v13 = v2[7];
      v30 = v2[6];
      v31 = v13;
      v14 = v2[1];
      v24 = *v2;
      v25 = v14;
      v15 = v2[3];
      v26 = v2[2];
      v27 = v15;

      sub_10010E800(v2, v22);
      swift_getAtKeyPath();
      v35[8] = v32;
      v35[9] = v33;
      v35[10] = v34;
      v35[4] = v28;
      v35[5] = v29;
      v35[6] = v30;
      v35[7] = v31;
      v35[0] = v24;
      v35[1] = v25;
      v35[2] = v26;
      v35[3] = v27;
      sub_10010E990(v35);
      v16 = v23;
      if (v23)
      {
        break;
      }

      ++v4;
      v8 += 3;
      if (v4 == 12)
      {
        goto LABEL_14;
      }
    }

    v17 = v22[22];
    *&v24 = v10;
    *(&v24 + 1) = v9;

    v39._countAndFlagsBits = 8250;
    v39._object = 0xE200000000000000;
    sub_1004A5994(v39);
    v40._countAndFlagsBits = v17;
    v40._object = v16;
    sub_1004A5994(v40);

    v18 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085070(0, *(v5 + 2) + 1, 1, v5);
      v5 = result;
    }

    v20 = *(v5 + 2);
    v19 = *(v5 + 3);
    if (v20 >= v19 >> 1)
    {
      result = sub_100085070((v19 > 1), v20 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 2) = v20 + 1;
    *&v5[16 * v20 + 32] = v18;
  }

  while (v4 != 11);
LABEL_14:
  sub_10000C9C0(&qword_1005D8458, &qword_1004F4898);
  swift_arrayDestroy();
  if (*(v5 + 2))
  {
    *&v35[0] = v5;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v21 = sub_1004A5614();
  }

  else
  {

    return 0;
  }

  return v21;
}

char *sub_1002FABB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D8490, &qword_1004F4970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002FACD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D8468, &qword_1004F4958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D8470, &qword_1004F4BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002FAE6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s13IMAP2Protocol8ServerIDV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1004A6D34();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1004A6D34();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1004A6D34();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_1004A6D34();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_1004A6D34();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    if (a1[10] != a2[10] || v33 != v34)
    {
      v35 = a1;
      v36 = a2;
      v37 = sub_1004A6D34();
      a2 = v36;
      v38 = v37;
      a1 = v35;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v34)
  {
    return 0;
  }

  v39 = a1[13];
  v40 = a2[13];
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    if (a1[12] != a2[12] || v39 != v40)
    {
      v41 = a1;
      v42 = a2;
      v43 = sub_1004A6D34();
      a2 = v42;
      v44 = v43;
      a1 = v41;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  v45 = a1[15];
  v46 = a2[15];
  if (v45)
  {
    if (!v46)
    {
      return 0;
    }

    if (a1[14] != a2[14] || v45 != v46)
    {
      v47 = a1;
      v48 = a2;
      v49 = sub_1004A6D34();
      a2 = v48;
      v50 = v49;
      a1 = v47;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v46)
  {
    return 0;
  }

  v51 = a1[17];
  v52 = a2[17];
  if (v51)
  {
    if (!v52)
    {
      return 0;
    }

    if (a1[16] != a2[16] || v51 != v52)
    {
      v53 = a1;
      v54 = a2;
      v55 = sub_1004A6D34();
      a2 = v54;
      v56 = v55;
      a1 = v53;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v52)
  {
    return 0;
  }

  v57 = a1[19];
  v58 = a2[19];
  if (v57)
  {
    if (!v58)
    {
      return 0;
    }

    if (a1[18] != a2[18] || v57 != v58)
    {
      v59 = a1;
      v60 = a2;
      v61 = sub_1004A6D34();
      a2 = v60;
      v62 = v61;
      a1 = v59;
      if ((v62 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v63 = a1[21];
  v64 = a2[21];
  if (v63)
  {
    if (v64 && (a1[20] == a2[20] && v63 == v64 || (sub_1004A6D34() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v64)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1002FB418(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v32 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = (&v28 - v9);
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v11 = *(a1 + 16);
  sub_100264EAC(v11, 0);
  v33 = _swiftEmptyArrayStorage;
  sub_1002E5298(0, v11, 0);
  v12 = v33;
  v30 = v11;
  if (!v11)
  {
    return v34;
  }

  v13 = 0;
  v29 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v28 = *(v8 + 72);
  while (1)
  {
    sub_10000E268(v29 + v28 * v13, v10, &qword_1005D8488, &unk_100503000);
    v15 = *v10;
    v14 = v10[1];
    sub_1002FC238(v10 + *(v32 + 48), v7);
    v16 = v34;
    v17 = v35;
    v18 = v35[2];
    if (!v34)
    {
      break;
    }

    sub_1001E74AC(v15, v14, (v17 + 4), v18, (v16 + 16), v16 + 32);
    v20 = v19;
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1001E67B8(v15, v14, v22);
    sub_10000E268(v7, v4, &qword_1005D7F50, &unk_100502FF0);
    v33 = v12;
    v27 = v12[2];
    v26 = v12[3];
    if (v27 >= v26 >> 1)
    {
      sub_1002E5298((v26 > 1), v27 + 1, 1);

      v12 = v33;
    }

    else
    {
    }

    ++v13;
    sub_1002FC2A8(v7);
    v12[2] = v27 + 1;
    sub_1002FC238(v4, v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v13 == v30)
    {
      return v34;
    }
  }

  if (!v18)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v24 = v35 + 5;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v15 && *v24 == v14)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v24 += 2;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1002FB760(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v32 = sub_10000C9C0(&qword_1005D8480, &qword_1004F4968);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = (&v28 - v9);
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v11 = *(a1 + 16);
  sub_100264EAC(v11, 0);
  v33 = _swiftEmptyArrayStorage;
  sub_1002E5340(0, v11, 0);
  v12 = v33;
  v30 = v11;
  if (!v11)
  {
    return v34;
  }

  v13 = 0;
  v29 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v28 = *(v8 + 72);
  while (1)
  {
    sub_10000E268(v29 + v28 * v13, v10, &qword_1005D8480, &qword_1004F4968);
    v15 = *v10;
    v14 = v10[1];
    sub_1002FC114(v10 + *(v32 + 48), v7);
    v16 = v34;
    v17 = v35;
    v18 = v35[2];
    if (!v34)
    {
      break;
    }

    sub_1001E74AC(v15, v14, (v17 + 4), v18, (v16 + 16), v16 + 32);
    v20 = v19;
    v22 = v21;

    if ((v20 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1001E67B8(v15, v14, v22);
    sub_1002FC178(v7, v4);
    v33 = v12;
    v27 = v12[2];
    v26 = v12[3];
    if (v27 >= v26 >> 1)
    {
      sub_1002E5340((v26 > 1), v27 + 1, 1);

      v12 = v33;
    }

    else
    {
    }

    ++v13;
    sub_1002FC1DC(v7);
    v12[2] = v27 + 1;
    sub_1002FC114(v4, v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v13 == v30)
    {
      return v34;
    }
  }

  if (!v18)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v24 = v35 + 5;
  while (1)
  {
    result = *(v24 - 1);
    if (result == v15 && *v24 == v14)
    {
      break;
    }

    result = sub_1004A6D34();
    if (result)
    {
      break;
    }

    v24 += 2;
    if (!--v18)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1002FBA8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100264EAC(v2, 0);
  sub_1001D600C(0, v2, 0);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    while (1)
    {
      v5 = v4 + 32 * v3;
      v7 = *v5;
      v6 = *(v5 + 8);
      v8 = _swiftEmptyArrayStorage[2];
      v13 = *(v5 + 16);
      if (v8)
      {
        break;
      }

LABEL_11:

      sub_1001E67B8(v7, v6, 0);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001D600C((v11 > 1), v12 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      *&_swiftEmptyArrayStorage[2 * v12 + 4] = v13;
      if (v3 == v2)
      {
        return;
      }
    }

    v9 = &_swiftEmptyArrayStorage[5];
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v6;
      if (v10 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v9 += 2;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }
}

__n128 sub_1002FBC6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1002FA5EC(1701667182, 0xE400000000000000, a1, a2, a3);
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v72 = v11;
  v73 = v10;
  v12 = sub_1002FA5EC(0x6E6F6973726576, 0xE700000000000000, a1, a2, a3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (v13 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v70 = v15;
  v71 = v14;
  v16 = sub_1002FA5EC(29551, 0xE200000000000000, a1, a2, a3);
  if (v17 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v68 = v19;
  v69 = v18;
  v20 = sub_1002FA5EC(0x69737265762D736FLL, 0xEA00000000006E6FLL, a1, a2, a3);
  if (v21 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  v66 = v23;
  v67 = v22;
  v24 = sub_1002FA5EC(0x726F646E6576, 0xE600000000000000, a1, a2, a3);
  if (v25 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  if (v25 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v64 = v27;
  v65 = v26;
  v28 = sub_1002FA5EC(0x2D74726F70707573, 0xEB000000006C7275, a1, a2, a3);
  if (v29 == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  if (v29 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  v62 = v31;
  v63 = v30;
  v32 = sub_1002FA5EC(0x73736572646461, 0xE700000000000000, a1, a2, a3);
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  if (v33 == 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  v60 = v35;
  v61 = v34;
  v36 = sub_1002FA5EC(1702125924, 0xE400000000000000, a1, a2, a3);
  if (v37 == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  v58 = v39;
  v59 = v38;
  v40 = sub_1002FA5EC(0x646E616D6D6F63, 0xE700000000000000, a1, a2, a3);
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v44 = sub_1002FA5EC(0x746E656D75677261, 0xE900000000000073, a1, a2, a3);
  if (v45 == 1)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  if (v45 == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  v48 = sub_1002FA5EC(0x6D6E6F7269766E65, 0xEB00000000746E65, a1, a2, a3);
  v50 = v49;

  if (v50 == 1)
  {
    v51 = 0;
  }

  else
  {
    v51 = v48;
  }

  if (v50 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  *&v75 = v73;
  *(&v75 + 1) = v72;
  *&v76 = v71;
  *(&v76 + 1) = v70;
  *&v77 = v69;
  *(&v77 + 1) = v68;
  v78.n128_u64[0] = v67;
  v78.n128_u64[1] = v66;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  *&v81 = v61;
  *(&v81 + 1) = v60;
  *&v82 = v59;
  *(&v82 + 1) = v58;
  *&v83 = v42;
  *(&v83 + 1) = v43;
  *&v84 = v46;
  *(&v84 + 1) = v47;
  *&v85 = v51;
  *(&v85 + 1) = v52;
  v86[0] = v73;
  v86[1] = v72;
  v86[2] = v71;
  v86[3] = v70;
  v86[4] = v69;
  v86[5] = v68;
  v86[6] = v67;
  v86[7] = v66;
  v86[8] = v65;
  v86[9] = v64;
  v86[10] = v63;
  v86[11] = v62;
  v86[12] = v61;
  v86[13] = v60;
  v86[14] = v59;
  v86[15] = v58;
  v86[16] = v42;
  v86[17] = v43;
  v86[18] = v46;
  v86[19] = v47;
  v86[20] = v51;
  v86[21] = v52;
  sub_10010E800(&v75, &v74);
  sub_10010E990(v86);
  v53 = v84;
  *(a4 + 128) = v83;
  *(a4 + 144) = v53;
  *(a4 + 160) = v85;
  v54 = v80;
  *(a4 + 64) = v79;
  *(a4 + 80) = v54;
  v55 = v82;
  *(a4 + 96) = v81;
  *(a4 + 112) = v55;
  v56 = v76;
  *a4 = v75;
  *(a4 + 16) = v56;
  result = v78;
  *(a4 + 32) = v77;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_1002FC028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002FC084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1002FC114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC1DC(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002FC238(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC2A8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall ServerResponseTranscoder.makeParsingErrorDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for Response(0);
  v26 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[3];
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v23 = v1;
    v28 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v6 = v28;
      v8 = v23;
      v24 = v23 + ((*(v26 + 80) + 40) & ~*(v26 + 80));
      v25 = v4;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v7 >= v8[3])
        {
          goto LABEL_14;
        }

        v10 = v8[4];
        if (v7 + v10 >= v8[2])
        {
          v11 = v8[2];
        }

        else
        {
          v11 = 0;
        }

        sub_100304240(&v24[(v7 + v10 - v11) * *(v26 + 72)], v4, type metadata accessor for Response);
        sub_100301D68(v4, v27);
        sub_1003042A8(v4, type metadata accessor for Response);
        v12 = v27[0];
        v13 = v27[1];
        v28 = v6;
        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          sub_100091A08((v14 > 1), v15 + 1, 1);
          v8 = v23;
          v6 = v28;
        }

        v6[2] = v15 + 1;
        v16 = &v6[2 * v15];
        v16[4] = v12;
        v16[5] = v13;
        ++v7;
        v4 = v25;
        if (v9 == v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);
    sub_1003042A8(v4, type metadata accessor for Response);

    __break(1u);
  }

  else
  {
LABEL_12:
    v27[0] = v6;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v17 = sub_1004A5614();
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_1002FC588()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DE260);
  sub_1001C203C(v0, qword_1005DE260);
  return sub_1004A4A64();
}

void *ServerResponseTranscoder.append(_:)(uint64_t a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if (*(*v1 + 16) < v5 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003023B8(isUniquelyReferenced_nonNull_native, v5, 0);
      v7 = *v1;
    }

    v8 = *(type metadata accessor for Response(0) - 8);
    return sub_100302628((v7 + 16), v7 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), a1);
  }

  return result;
}

void ServerResponseTranscoder.parseNext()(void *a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  __chkstk_darwin(v3 - 8);
  v46 = &v42 - v4;
  v5 = type metadata accessor for Response(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Response(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v47 = v1;
  v20 = *v1;
  v21 = *(*v1 + 24);
  if (!v21)
  {
    (*(v6 + 56))(a1, 1, 1, v5, v17);
    return;
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v42 = v16;
  v43 = v6;
  v44 = v5;
  v45 = a1;
  v22 = v20[4];
  v23 = v20[2];
  if (v22 < v23)
  {
    v23 = 0;
  }

  v24 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v25 = *(v9 + 72);
  sub_100304240(v20 + v24 + (v22 - v23) * v25, v11, type metadata accessor for Response);
  sub_1003026F8(v11, v14, type metadata accessor for Response);
  sub_1003026F8(v14, v19, type metadata accessor for Response);
  v27 = v48;
  v26 = v49;
  sub_1002FCB7C(v48);
  if (!v26)
  {
    if (v20[3] < 1)
    {
      v39 = 1;
      v37 = v44;
      v36 = v45;
      v38 = v43;
      v31 = v46;
      goto LABEL_20;
    }

    v28 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100302B30();
    }

    v29 = *v28;
    v30 = *v28 + v24 + *(*v28 + 32) * v25;
    v31 = v46;
    sub_1003026F8(v30, v46, type metadata accessor for Response);
    v32 = v29[4];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (!v33)
    {
      v35 = v29[3];
      if (v34 >= v29[2])
      {
        v34 = 0;
      }

      v29[4] = v34;
      v37 = v44;
      v36 = v45;
      v38 = v43;
      if (!__OFSUB__(v35, 1))
      {
        v39 = 0;
        v29[3] = v35 - 1;
        v27 = v48;
LABEL_20:
        sub_1003042A8(v19, type metadata accessor for Response);
        (*(v9 + 56))(v31, v39, 1, v42);
        sub_100025F40(v31, &qword_1005D8498, &unk_1004F49B8);
        sub_1003026F8(v27, v36, type metadata accessor for Response);
        (*(v38 + 56))(v36, 0, 1, v37);
        return;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v53 = v26;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast() && (v52 & 1) == 0)
  {
    v40 = v50;
    v41 = v51;

    sub_1002FCF78(v40 | ((v41 & 1) << 32), v45);
    sub_1003042A8(v19, type metadata accessor for Response);
  }

  else
  {

    swift_willThrow();
    sub_1003042A8(v19, type metadata accessor for Response);
  }
}

uint64_t sub_1002FCB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for ResponsePayload(0);
  __chkstk_darwin(v5 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Response(0);
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100304240(v3, v10, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1003042A8(v10, type metadata accessor for Response);
        sub_100304398();
        swift_allocError();
        v26 = 9;
      }

      else
      {
        sub_100304398();
        swift_allocError();
        v26 = 10;
      }

      *v24 = v26;
      v25 = 256;
      goto LABEL_18;
    }

    v28 = *(v10 + 2);
    *a1 = *v10;
    *(a1 + 16) = v28;
    type metadata accessor for UntaggedResponse(0);
    swift_storeEnumTagMultiPayload();
LABEL_13:
    type metadata accessor for Response(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1003026F8(v10, v7, type metadata accessor for ResponsePayload);
    sub_100301600(a1);
    result = sub_1003042A8(v7, type metadata accessor for ResponsePayload);
    if (v2)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v10 + 9);
    v13 = *(v10 + 7);
    v41 = *(v10 + 8);
    v42 = v12;
    v14 = *(v10 + 9);
    v43 = *(v10 + 10);
    v15 = *(v10 + 5);
    v16 = *(v10 + 3);
    v37 = *(v10 + 4);
    v38 = v15;
    v17 = *(v10 + 5);
    v18 = *(v10 + 7);
    v39 = *(v10 + 6);
    v40 = v18;
    v19 = *(v10 + 1);
    v34[0] = *v10;
    v34[1] = v19;
    v20 = *(v10 + 3);
    v22 = *v10;
    v21 = *(v10 + 1);
    v35 = *(v10 + 2);
    v36 = v20;
    v45[8] = v41;
    v45[9] = v14;
    v45[10] = *(v10 + 10);
    v45[4] = v37;
    v45[5] = v17;
    v45[6] = v39;
    v45[7] = v13;
    v45[0] = v22;
    v45[1] = v21;
    v44 = *(v10 + 88);
    v46 = *(v10 + 88);
    v45[2] = v35;
    v45[3] = v16;
    v23 = sub_1003043EC(v45);
    if (v23 == 1)
    {
      v31 = *sub_1002F9BA4(v45);
      sub_100304398();
      swift_allocError();
      *v32 = v31;
      *(v32 + 4) = 0;
      return swift_willThrow();
    }

    if (!v23)
    {
      sub_1002F9BA4(v45);
      sub_100304398();
      swift_allocError();
      *v24 = 0;
      v25 = 1;
LABEL_18:
      *(v24 + 4) = v25;
      return swift_willThrow();
    }

    sub_100304398();
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 256;
    swift_willThrow();
    return sub_100304408(v34);
  }

  else
  {
    v29 = *(v10 + 1);
    v47 = *v10;
    v48[0] = v29;
    *(v48 + 9) = *(v10 + 25);
    sub_100301C28(a1);
    if (v2)
    {
      v51 = v47;
      sub_1002F9A9C(&v51);
      v52[0] = v48[0];
      *(v52 + 9) = *(v48 + 9);
      v30 = v52;
    }

    else
    {
      v49 = v47;
      sub_1002F9A9C(&v49);
      v50[0] = v48[0];
      *(v50 + 9) = *(v48 + 9);
      v30 = v50;
    }

    return sub_10030457C(v30);
  }
}

uint64_t sub_1002FCF78@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1002FD43C(a1 | ((HIDWORD(a1) & 1) << 32));
  if (v2)
  {
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast() && v9 == 1 && ((v7 | (v8 << 32)) & 0xFFFFFFFFFFLL) == 0)
    {

      swift_beginAccess();
      sub_100300500(_swiftEmptyArrayStorage);
      v4 = type metadata accessor for Response(0);
      (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
    }
  }

  else
  {
    v6 = type metadata accessor for Response(0);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }
}

uint64_t sub_1002FD108@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v26 - v12;
  if (*(*a1 + 24) < 1)
  {
    v25 = *(v7 + 56);
    v25(v13, 1, 1, v6, v11);
    sub_100025F40(v13, &qword_1005D8498, &unk_1004F49B8);
    return (v25)(a3, 1, 1, v6);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100302B30();
  }

  v14 = *a1;
  v15 = *(v7 + 80);
  v16 = *(v7 + 72);
  sub_1003026F8(v14 + ((v15 + 40) & ~v15) + v16 * v14[4], v13, type metadata accessor for Response);
  v17 = v14[4];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v14[3];
  if (v19 >= v14[2])
  {
    v19 = 0;
  }

  v14[4] = v19;
  if (__OFSUB__(v20, 1))
  {
    goto LABEL_14;
  }

  v14[3] = v20 - 1;
  v27 = *(v7 + 56);
  v27(v13, 0, 1, v6);
  sub_1003026F8(v13, a3, type metadata accessor for Response);
  sub_100304240(a3, v9, type metadata accessor for Response);
  swift_beginAccess();
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  v28 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v14 = sub_1002FAB90(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v23 = v14[2];
  v22 = v14[3];
  if (v23 >= v22 >> 1)
  {
    v14 = sub_1002FAB90((v22 > 1), v23 + 1, 1, v14);
  }

  v14[2] = v23 + 1;
  sub_1003026F8(v9, v14 + ((v15 + 32) & ~v15) + v23 * v16, type metadata accessor for Response);
  *a2 = v14;
  swift_endAccess();
  return (v27)(v28, 0, 1, v6);
}

uint64_t sub_1002FD43C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v303 = v1;
  v351 = v2;
  v586 = v3;
  v341 = v4;
  v302 = v5;
  v326 = sub_1004A5384();
  v307 = *(v326 - 8);
  __chkstk_darwin(v326);
  v312 = &v282 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D05E0, &qword_1004D65C0);
  __chkstk_darwin(v7 - 8);
  v316 = &v282 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v309 = &v282 - v10;
  __chkstk_darwin(v11);
  v306 = &v282 - v12;
  __chkstk_darwin(v13);
  v322 = &v282 - v14;
  v15 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  __chkstk_darwin(v15 - 8);
  v317 = &v282 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v311 = &v282 - v18;
  __chkstk_darwin(v19);
  v304 = &v282 - v20;
  v21 = type metadata accessor for MessageData.BodySection(0);
  v318 = *(v21 - 8);
  v319 = v21;
  __chkstk_darwin(v21);
  v321 = &v282 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v347 = &v282 - v24;
  __chkstk_darwin(v25);
  v305 = &v282 - v26;
  v328 = type metadata accessor for StreamedBodySection(0);
  v323 = *(v328 - 8);
  __chkstk_darwin(v328);
  v310 = &v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v320 = &v282 - v29;
  __chkstk_darwin(v30);
  v324 = &v282 - v31;
  v350 = type metadata accessor for Response(0);
  v348 = *(v350 - 8);
  __chkstk_darwin(v350);
  v327 = &v282 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v344 = &v282 - v34;
  __chkstk_darwin(v35);
  v343 = &v282 - v36;
  v37 = sub_10000C9C0(&qword_1005D8578, &unk_1004F4BF0);
  __chkstk_darwin(v37 - 8);
  v308 = &v282 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v314 = &v282 - v40;
  __chkstk_darwin(v41);
  v315 = &v282 - v42;
  __chkstk_darwin(v43);
  v313 = &v282 - v44;
  __chkstk_darwin(v45);
  v340 = &v282 - v46;
  v47 = sub_10000C9C0(&qword_1005D8498, &unk_1004F49B8);
  __chkstk_darwin(v47 - 8);
  v346 = &v282 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v345 = &v282 - v50;
  __chkstk_darwin(v51);
  v53 = &v282 - v52;
  __chkstk_darwin(v54);
  v349 = &v282 - v55;
  sub_1000519AC(&v477);
  v362 = v486;
  v363 = v487;
  v357 = v481;
  v358 = v482;
  v359 = v483;
  v360 = v484;
  v361 = v485;
  v353 = v477;
  v354 = v478;
  v355 = v479;
  v356 = v480;
  v489[8] = v485;
  v489[9] = v486;
  v489[10] = v487;
  v489[4] = v481;
  v489[5] = v482;
  v489[6] = v483;
  v489[7] = v484;
  v489[0] = v477;
  v489[1] = v478;
  v364 = v488;
  LOBYTE(v382[0]) = 1;
  LOBYTE(v380[0]) = 1;
  v490 = v488;
  v489[2] = v479;
  v489[3] = v480;
  sub_100025F40(v489, &qword_1005CDFD0, &qword_1004EE450);
  *(&v365[8] + 3) = v485;
  *(&v365[9] + 3) = v486;
  *(&v365[10] + 3) = v487;
  BYTE3(v365[11]) = v488;
  *(&v365[4] + 3) = v481;
  *(&v365[5] + 3) = v482;
  *(&v365[6] + 3) = v483;
  *(&v365[7] + 3) = v484;
  *(v365 + 3) = v477;
  *(&v365[1] + 3) = v478;
  *(&v365[2] + 3) = v479;
  *(&v365[3] + 3) = v480;
  v491[8] = v361;
  v491[9] = v362;
  v491[10] = v363;
  v492 = v364;
  v491[4] = v357;
  v491[5] = v358;
  v491[6] = v359;
  v491[7] = v360;
  v491[0] = v353;
  v491[1] = v354;
  v491[2] = v355;
  v491[3] = v356;
  sub_100025F40(v491, &qword_1005CDFD0, &qword_1004EE450);
  v362 = v486;
  v363 = v487;
  v357 = v481;
  v358 = v482;
  v359 = v483;
  v364 = v488;
  v360 = v484;
  v361 = v485;
  v353 = v477;
  v354 = v478;
  v355 = v479;
  v356 = v480;
  v494 = 0;
  memset(v493, 0, sizeof(v493));
  sub_100025F40(v493, &qword_1005D8038, &unk_1004F4C00);
  v509 = v365[8];
  v510 = v365[9];
  v511 = v365[10];
  v505 = v365[4];
  v506 = v365[5];
  v507 = v365[6];
  v508 = v365[7];
  v501 = v365[0];
  v502 = v365[1];
  v503 = v365[2];
  v504 = v365[3];
  v523 = v361;
  v524 = v362;
  v525 = v363;
  v519 = v357;
  v520 = v358;
  v521 = v359;
  v522 = v360;
  v515 = v353;
  v516 = v354;
  v517 = v355;
  v518 = v356;
  v552 = v365[8];
  v553 = v365[9];
  v554 = v365[10];
  v548 = v365[4];
  v549 = v365[5];
  v550 = v365[6];
  v551 = v365[7];
  v544 = v365[0];
  v545 = v365[1];
  v546 = v365[2];
  v547 = v365[3];
  v565 = v361;
  v566 = v362;
  v567 = v363;
  v561 = v357;
  v562 = v358;
  v563 = v359;
  v564 = v360;
  v557 = v353;
  v558 = v354;
  LOBYTE(v368) = 1;
  LOBYTE(v366[0]) = 1;
  v352[0] = 1;
  v496 = v382[0];
  v495 = 0;
  v499 = 0;
  v500 = v380[0];
  v512 = v365[11];
  v514 = _swiftEmptyArrayStorage;
  v526 = v364;
  memset(&v527[7], 0, 144);
  v528 = 1;
  v531 = 0;
  v532 = 1;
  v534 = 0;
  v535 = 1;
  v537 = 0u;
  v538 = 0u;
  v539 = 0u;
  v541 = v382[0];
  v540 = 0;
  v542 = 0;
  v543 = v380[0];
  v555 = v365[11];
  v556 = _swiftEmptyArrayStorage;
  v568 = v364;
  v559 = v355;
  v560 = v356;
  v576 = 0u;
  v577 = 0u;
  v574 = 0u;
  v575 = 0u;
  v572 = 0u;
  v573 = 0u;
  v570 = 0u;
  v571 = 0u;
  v569 = 0u;
  v578 = 1;
  v579 = 0;
  v580 = 1;
  v581 = 0;
  v582 = 1;
  v583 = 0u;
  v584 = 0u;
  v585 = 0u;
  sub_1002EBB50(&v495, v384);
  sub_100025D5C(&v540);
  v466 = v496;
  v464 = v497;
  v465 = v498;
  v339 = v495;
  v463 = v500;
  v453 = v503;
  v454 = v504;
  v451 = v501;
  v452 = v502;
  v457 = v507;
  v458 = v508;
  v455 = v505;
  v456 = v506;
  v462 = v512;
  v460 = v510;
  v461 = v511;
  v459 = v509;
  v450[0] = *v513;
  *(v450 + 3) = *&v513[3];
  v446 = v523;
  v447 = v524;
  v448 = v525;
  v449 = v526;
  v442 = v519;
  v443 = v520;
  v444 = v521;
  v445 = v522;
  v438 = v515;
  v439 = v516;
  v440 = v517;
  v441 = v518;
  v435 = *&v527[64];
  v436 = *&v527[80];
  v437[0] = *&v527[96];
  *(v437 + 15) = *&v527[111];
  v431 = *v527;
  v432 = *&v527[16];
  v433 = *&v527[32];
  v434 = *&v527[48];
  v342 = v514;
  v334 = *&v527[127];
  v335 = *&v527[143];
  v430 = v528;
  v428 = v529;
  v429 = v530;
  v333 = v531;
  v427 = v532;
  v426[0] = *v533;
  *(v426 + 3) = *&v533[3];
  v425 = v535;
  v56 = v424;
  v424[0] = *v536;
  *(v424 + 3) = *&v536[3];
  v330 = v537;
  v336 = v534;
  v337 = *(&v537 + 1);
  v331 = *(&v538 + 1);
  v332 = v538;
  v338 = *(&v539 + 1);
  v57 = v539;
  if ((v341 & 0x100000000) != 0)
  {
    LODWORD(v341) = v499;
  }

  else
  {
    v463 = 0;
  }

  v58 = v349;
  sub_1002FD108(v586, v351, v349);
  v59 = v348;
  v60 = v350;
  if ((*(v348 + 48))(v58, 1, v350) == 1)
  {
    goto LABEL_14;
  }

  sub_10000E268(v58, v53, &qword_1005D8498, &unk_1004F49B8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003042A8(v53, type metadata accessor for Response);
LABEL_14:
    sub_100304398();
    swift_allocError();
    *v74 = 1;
    *(v74 + 4) = 256;
    swift_willThrow();
    v75 = &qword_1005D8498;
    v76 = &unk_1004F49B8;
    v77 = v58;
LABEL_15:
    sub_100025F40(v77, v75, v76);
    goto LABEL_16;
  }

  v61 = *(v53 + 7);
  v380[8] = *(v53 + 8);
  v62 = *(v53 + 8);
  v380[9] = *(v53 + 9);
  v63 = *(v53 + 9);
  v380[10] = *(v53 + 10);
  v64 = *(v53 + 3);
  v380[4] = *(v53 + 4);
  v65 = *(v53 + 4);
  v380[5] = *(v53 + 5);
  v66 = *(v53 + 5);
  v380[6] = *(v53 + 6);
  v67 = *(v53 + 6);
  v380[7] = *(v53 + 7);
  v68 = *(v53 + 1);
  v380[0] = *v53;
  v380[1] = v68;
  v70 = *v53;
  v69 = *(v53 + 1);
  v380[2] = *(v53 + 2);
  v71 = *(v53 + 2);
  v380[3] = *(v53 + 3);
  v382[8] = v62;
  v382[9] = v63;
  v382[10] = *(v53 + 10);
  v382[4] = v65;
  v382[5] = v66;
  v382[6] = v67;
  v382[7] = v61;
  v382[0] = v70;
  v382[1] = v69;
  v382[2] = v71;
  v381 = *(v53 + 88);
  v383 = *(v53 + 88);
  v382[3] = v64;
  v72 = sub_1003043EC(v382);
  if (!v72)
  {
    v300 = v57;
    v339 = *sub_1002F9BA4(v382);
    v466 = 0;
    goto LABEL_11;
  }

  if (v72 != 1)
  {
    sub_100304408(v380);
    goto LABEL_14;
  }

  v300 = v57;
  LODWORD(v341) = *sub_1002F9BA4(v382);
  v463 = 0;
LABEL_11:
  v289 = *(&v538 + 1);
  v290 = *(&v539 + 1);
  v287 = *&v527[135];
  v288 = *(&v537 + 1);
  v301 = v514;
  v286 = *&v527[127];
  sub_100025F40(v58, &qword_1005D8498, &unk_1004F49B8);
  v73 = v323;
  v297 = *(v323 + 56);
  v298 = v323 + 56;
  v297(v340, 1, 1, v328);
  if (*(*v586 + 24) <= 0)
  {
    v83 = *(v59 + 56);
LABEL_119:
    v257 = v346;
    v83(v346, 1, 1, v60);
    sub_100025F40(v257, &qword_1005D8498, &unk_1004F49B8);
    v258 = v345;
    v83(v345, 1, 1, v60);
    sub_100025F40(v258, &qword_1005D8498, &unk_1004F49B8);
    sub_100304398();
    swift_allocError();
    *v259 = 0;
    *(v259 + 4) = 256;
    swift_willThrow();
    goto LABEL_124;
  }

  v329 = 0;
  v325 = (v59 + 56);
  v295 = 0;
  v296 = (v73 + 48);
  v299 = (v307 + 48);
  v293 = (v307 + 56);
  v294 = (v307 + 8);
  v283 = &v451 + 3;
  v284 = &v431 + 7;
  v285 = (v307 + 32);
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100302B30();
    }

    v92 = *v586;
    v93 = *(v59 + 80);
    v94 = *(v59 + 72);
    sub_1003026F8(*v586 + ((v93 + 40) & ~v93) + v94 * *(*v586 + 32), v346, type metadata accessor for Response);
    v95 = v92[4];
    v96 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (v96)
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      JUMPOUT(0x1003004C4);
    }

    v98 = v92[3];
    if (v97 >= v92[2])
    {
      v97 = 0;
    }

    v92[4] = v97;
    if (__OFSUB__(v98, 1))
    {
      goto LABEL_140;
    }

    v92[3] = v98 - 1;
    v99 = v346;
    v323 = *v325;
    (v323)(v346, 0, 1, v60);
    v100 = v99;
    v101 = v345;
    sub_1003026F8(v100, v345, type metadata accessor for Response);
    sub_100304240(v101, v344, type metadata accessor for Response);
    v102 = v351;
    swift_beginAccess();
    v103 = *v102;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v102 = v103;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = sub_1002FAB90(0, v103[2] + 1, 1, v103);
      *v351 = v103;
    }

    v106 = v103[2];
    v105 = v103[3];
    if (v106 >= v105 >> 1)
    {
      v103 = sub_1002FAB90((v105 > 1), v106 + 1, 1, v103);
    }

    v103[2] = v106 + 1;
    sub_1003026F8(v344, v103 + ((v93 + 32) & ~v93) + v106 * v94, type metadata accessor for Response);
    *v351 = v103;
    swift_endAccess();
    v107 = v345;
    v60 = v350;
    (v323)(v345, 0, 1, v350);
    v108 = v107;
    v109 = v343;
    sub_1003026F8(v108, v343, type metadata accessor for Response);
    v110 = v327;
    sub_100304240(v109, v327, type metadata accessor for Response);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1003042A8(v110, type metadata accessor for Response);
      sub_100304398();
      swift_allocError();
      *v253 = 1;
      *(v253 + 4) = 256;
      swift_willThrow();
      v254 = v343;
      goto LABEL_123;
    }

    v111 = *(v110 + 144);
    v376 = *(v110 + 128);
    v377 = v111;
    v378 = *(v110 + 160);
    v379 = *(v110 + 176);
    v112 = *(v110 + 80);
    v372 = *(v110 + 64);
    v373 = v112;
    v113 = *(v110 + 112);
    v374 = *(v110 + 96);
    v375 = v113;
    v114 = *(v110 + 16);
    v368 = *v110;
    v369 = v114;
    v115 = *(v110 + 48);
    v370 = *(v110 + 32);
    v371 = v115;
    if (v329 == 99999)
    {
      sub_100304398();
      swift_allocError();
      v256 = 2;
LABEL_121:
      *v255 = v256;
      *(v255 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v368);
      goto LABEL_122;
    }

    v116 = *(v110 + 144);
    v366[8] = *(v110 + 128);
    v366[9] = v116;
    v366[10] = *(v110 + 160);
    v367 = *(v110 + 176);
    v117 = *(v110 + 80);
    v366[4] = *(v110 + 64);
    v366[5] = v117;
    v118 = *(v110 + 112);
    v366[6] = *(v110 + 96);
    v366[7] = v118;
    v119 = *(v110 + 16);
    v366[0] = *v110;
    v366[1] = v119;
    v120 = *(v110 + 48);
    v366[2] = *(v110 + 32);
    v366[3] = v120;
    v121 = sub_1003043EC(v366);
    if (v121 > 3)
    {
      break;
    }

    if (v121 == 2)
    {
      v165 = sub_1002F9BA4(v366);
      if (__OFADD__(v295, 1))
      {
        goto LABEL_141;
      }

      v57 = v300;
      v59 = v348;
      if (v295 + 1 >= 50)
      {
        sub_100304398();
        swift_allocError();
        *v269 = 3;
        *(v269 + 4) = 256;
        swift_willThrow();
        sub_100304408(&v368);
LABEL_133:
        sub_1003042A8(v343, type metadata accessor for Response);
        v75 = &qword_1005D8578;
        v76 = &unk_1004F4BF0;
        v77 = v340;
        goto LABEL_15;
      }

      ++v295;
      v166 = *v165;
      v167 = *(v165 + 16);
      v168 = *(v165 + 48);
      *&v384[32] = *(v165 + 32);
      *&v384[48] = v168;
      *v384 = v166;
      *&v384[16] = v167;
      v169 = *(v165 + 64);
      v170 = *(v165 + 80);
      v171 = *(v165 + 112);
      *&v384[96] = *(v165 + 96);
      *&v384[112] = v171;
      *&v384[64] = v169;
      *&v384[80] = v170;
      v172 = *(v165 + 128);
      v173 = *(v165 + 144);
      v174 = *(v165 + 160);
      *&v384[176] = *(v165 + 176);
      *&v384[144] = v173;
      *&v384[160] = v174;
      *&v384[128] = v172;
      switch(sub_10030445C(v384))
      {
        case 1u:
          v212 = sub_100304468(v384);
          sub_1003042A8(v343, type metadata accessor for Response);
          v357 = *(v212 + 64);
          v358 = *(v212 + 80);
          v359 = *(v212 + 96);
          *&v360 = *(v212 + 112);
          v353 = *v212;
          v354 = *(v212 + 16);
          v355 = *(v212 + 32);
          v356 = *(v212 + 48);
          v213 = v284;
          v214 = *(v284 + 5);
          v365[4] = *(v284 + 4);
          v365[5] = v214;
          v365[6] = *(v284 + 6);
          *&v365[7] = *(v284 + 14);
          v215 = *(v284 + 1);
          v365[0] = *v284;
          v365[1] = v215;
          v216 = *(v284 + 3);
          v365[2] = *(v284 + 2);
          v365[3] = v216;
          sub_100025F40(v365, &qword_1005D8038, &unk_1004F4C00);
          v217 = v358;
          v213[4] = v357;
          v213[5] = v217;
          v213[6] = v359;
          *(v213 + 14) = v360;
          goto LABEL_109;
        case 2u:
          v335 = *sub_100304468(v384);
          sub_1003042A8(v343, type metadata accessor for Response);
          v430 = 0;
          goto LABEL_22;
        case 3u:
          LODWORD(v341) = *sub_100304468(v384);
          sub_1003042A8(v343, type metadata accessor for Response);
          v463 = 0;
          goto LABEL_22;
        case 4u:
          v186 = *sub_100304468(v384);
          if (HIDWORD(v186))
          {
            goto LABEL_138;
          }

          sub_1003042A8(v343, type metadata accessor for Response);
          v427 = 0;
          v333 = v186;
          goto LABEL_22;
        case 5u:
          v218 = sub_100304468(v384);
          sub_1003042A8(v343, type metadata accessor for Response);
          v219 = *v218;
          v220 = *(v218 + 16);
          v221 = *(v218 + 48);
          if (*(v218 + 177))
          {
            v355 = *(v218 + 32);
            v356 = v221;
            v353 = v219;
            v354 = v220;
            v222 = *(v218 + 64);
            v223 = *(v218 + 80);
            v224 = *(v218 + 96);
            v360 = *(v218 + 112);
            v358 = v223;
            v359 = v224;
            v357 = v222;
            v225 = *(v218 + 128);
            v226 = *(v218 + 144);
            v227 = *(v218 + 160);
            v364 = *(v218 + 176);
            v362 = v226;
            v363 = v227;
            v361 = v225;
            UInt32.init(_:)(&v353);
            v213 = &v438;
            v365[8] = v446;
            v365[9] = v447;
            v365[10] = v448;
            LOBYTE(v365[11]) = v449;
            v365[4] = v442;
            v365[5] = v443;
            v365[6] = v444;
            v365[7] = v445;
            v365[0] = v438;
            v365[1] = v439;
            v365[2] = v440;
            v365[3] = v441;
            sub_100025F40(v365, &qword_1005CDFD0, &qword_1004EE450);
            v228 = v360;
            v446 = v361;
            v447 = v362;
            v448 = v363;
            v449 = v364;
          }

          else
          {
            v355 = *(v218 + 32);
            v356 = v221;
            v353 = v219;
            v354 = v220;
            v229 = *(v218 + 64);
            v230 = *(v218 + 80);
            v231 = *(v218 + 96);
            v360 = *(v218 + 112);
            v358 = v230;
            v359 = v231;
            v357 = v229;
            v232 = *(v218 + 128);
            v233 = *(v218 + 144);
            v234 = *(v218 + 160);
            v364 = *(v218 + 176);
            v362 = v233;
            v363 = v234;
            v361 = v232;
            UInt32.init(_:)(&v353);
            v213 = v283;
            v235 = *(v283 + 9);
            v365[8] = *(v283 + 8);
            v365[9] = v235;
            v365[10] = *(v283 + 10);
            LOBYTE(v365[11]) = v283[176];
            v236 = *(v283 + 5);
            v365[4] = *(v283 + 4);
            v365[5] = v236;
            v237 = *(v283 + 7);
            v365[6] = *(v283 + 6);
            v365[7] = v237;
            v238 = *(v283 + 1);
            v365[0] = *v283;
            v365[1] = v238;
            v239 = *(v283 + 3);
            v365[2] = *(v283 + 2);
            v365[3] = v239;
            sub_100025F40(v365, &qword_1005CDFD0, &qword_1004EE450);
            v240 = v362;
            v241 = v363;
            v228 = v360;
            v213[8] = v361;
            v213[9] = v240;
            v213[10] = v241;
            *(v213 + 176) = v364;
          }

          v242 = v358;
          v213[4] = v357;
          v213[5] = v242;
          v213[6] = v359;
          v213[7] = v228;
LABEL_109:
          v243 = v354;
          *v213 = v353;
          v213[1] = v243;
          v244 = v356;
          v213[2] = v355;
          v213[3] = v244;
          goto LABEL_22;
        case 6u:
        case 9u:
        case 0xAu:
          sub_100304468(v384);
          v365[8] = v376;
          v365[9] = v377;
          v365[10] = v378;
          LOWORD(v365[11]) = v379;
          v365[4] = v372;
          v365[5] = v373;
          v365[6] = v374;
          v365[7] = v375;
          v365[0] = v368;
          v365[1] = v369;
          v365[2] = v370;
          v365[3] = v371;
          sub_1003044D4();
          swift_allocError();
          v271 = v365[3];
          v273 = v365[0];
          v272 = v365[1];
          *(v274 + 32) = v365[2];
          *(v274 + 48) = v271;
          *v274 = v273;
          *(v274 + 16) = v272;
          v275 = v365[7];
          v277 = v365[4];
          v276 = v365[5];
          *(v274 + 96) = v365[6];
          *(v274 + 112) = v275;
          *(v274 + 64) = v277;
          *(v274 + 80) = v276;
          v279 = v365[9];
          v278 = v365[10];
          v280 = v365[8];
          *(v274 + 176) = v365[11];
          *(v274 + 144) = v279;
          *(v274 + 160) = v278;
          *(v274 + 128) = v280;
          swift_willThrow();
          goto LABEL_133;
        case 7u:
          v200 = sub_100304468(v384);
          v201 = *(v200 + 8);
          v202 = *(v200 + 16);
          v203 = *(v200 + 24);
          v204 = *(v200 + 32);
          v467 = *v200;
          v468 = v201;
          v469 = v202;
          v470 = v203;
          v471 = v204;
          v365[8] = v376;
          v365[9] = v377;
          v365[10] = v378;
          LOWORD(v365[11]) = v379;
          v365[4] = v372;
          v365[5] = v373;
          v365[6] = v374;
          v365[7] = v375;
          v365[2] = v370;
          v365[3] = v371;
          v365[0] = v368;
          v365[1] = v369;
          v205 = sub_1002F9BA4(v365);
          sub_100304478(v205, &v353);
          v349 = StreamingKind.sectionSpecifier.getter();
          v342 = v206;
          LODWORD(v307) = v207;
          if (!(v204 >> 6))
          {
            goto LABEL_95;
          }

          if (v204 >> 6 == 1)
          {
            v201 = v203;
            LOBYTE(v202) = v204;
LABEL_95:
            v208 = v202 | (HIDWORD(v201) != 0);
            if (v208)
            {
              v209 = 0;
            }

            else
            {
              v209 = v201;
            }
          }

          else
          {
            v209 = 0;
            v208 = 1;
          }

          v245 = type metadata accessor for MessageData.BodyData(0);
          v246 = *(*(v245 - 8) + 56);
          v247 = v304;
          v246(v304, 1, 1, v245);
          v248 = *(v319 + 24);
          v249 = v305;
          v246(&v305[v248], 1, 1, v245);
          v250 = v342;
          *v249 = v349;
          *(v249 + 1) = v250;
          v249[16] = v307;
          *(v249 + 5) = v209;
          v249[24] = v208 & 1;
          sub_10027F8A8(v247, &v249[v248], &qword_1005CE218, &unk_1004F3FD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v301 = sub_1002FAE1C(0, v301[2] + 1, 1, v301);
          }

          v56 = v424;
          v60 = v350;
          v59 = v348;
          v252 = v301[2];
          v251 = v301[3];
          if (v252 >= v251 >> 1)
          {
            v301 = sub_1002FAE1C((v251 > 1), v252 + 1, 1, v301);
          }

          sub_100304408(&v368);
          sub_100304408(&v368);
          sub_1003042A8(v343, type metadata accessor for Response);
          v152 = v301;
          v301[2] = v252 + 1;
          v153 = v152 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v252;
          v154 = v305;
          break;
        case 8u:
          v336 = *sub_100304468(v384);
          sub_1003042A8(v343, type metadata accessor for Response);
          v425 = 0;
          goto LABEL_22;
        case 0xBu:
          v194 = sub_100304468(v384);
          v195 = sub_100303C18(*v194);
          sub_100304408(&v368);
          sub_1003042A8(v343, type metadata accessor for Response);

          *(&v334 + 1) = v195;
          v287 = v195;
          goto LABEL_22;
        case 0xCu:
          v198 = sub_100304468(v384);
          v199 = v198[1];
          v330 = *v198;
          sub_1003042A8(v343, type metadata accessor for Response);

          v337 = v199;
          v288 = v199;
          goto LABEL_22;
        case 0xDu:
          v196 = sub_100304468(v384);
          v197 = v196[1];
          v332 = *v196;
          sub_1003042A8(v343, type metadata accessor for Response);

          v331 = v197;
          v289 = v197;
          goto LABEL_22;
        case 0xEu:
          v210 = sub_100304468(v384);
          v211 = v210[1];
          v300 = *v210;
          sub_1003042A8(v343, type metadata accessor for Response);

          v338 = v211;
          v290 = v211;
          goto LABEL_22;
        default:
          v175 = sub_100304468(v384);
          v176 = sub_100303B80(*v175);
          sub_100304408(&v368);
          sub_1003042A8(v343, type metadata accessor for Response);

          *&v334 = v176;
          v286 = v176;
          goto LABEL_22;
      }

      goto LABEL_56;
    }

    if (v121 != 3)
    {
      sub_1002F9BA4(v366);
      sub_100304398();
      swift_allocError();
      v256 = 1;
      goto LABEL_121;
    }

    v122 = sub_1002F9BA4(v366);
    v123 = *(v122 + 8);
    v125 = *(v122 + 16);
    v124 = *(v122 + 24);
    v126 = *(v122 + 32);
    v472 = *v122;
    v473 = v123;
    v474 = v125;
    v475 = v124;
    v476 = v126;
    v127 = v313;
    sub_10000E268(v340, v313, &qword_1005D8578, &unk_1004F4BF0);
    v128 = (*v296)(v127, 1, v328);
    sub_100025F40(v127, &qword_1005D8578, &unk_1004F4BF0);
    if (v128 != 1)
    {
      sub_100304398();
      swift_allocError();
      *v268 = 5;
      *(v268 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v368);
      sub_1003042A8(v343, type metadata accessor for Response);
      v266 = v340;
      goto LABEL_131;
    }

    if (v126 >> 6)
    {
      if (v126 >> 6 != 1)
      {
        LODWORD(v307) = 0;
        LODWORD(v349) = 1;
        goto LABEL_21;
      }

      v129 = HIDWORD(v124) != 0;
      if (v126 & 1 | (HIDWORD(v124) != 0))
      {
        v130 = 0;
      }

      else
      {
        v130 = v124;
      }

      if ((v126 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v129 = HIDWORD(v123) != 0;
      if (v125 & 1 | (HIDWORD(v123) != 0))
      {
        v130 = 0;
      }

      else
      {
        v130 = v123;
      }

      if ((v125 & 1) == 0)
      {
        v124 = v123;
LABEL_83:
        v56 = v424;
        v193 = v130;
        if (v129)
        {
          v193 = 0;
        }

        if (v129 || v124 != v193)
        {
          sub_100304398();
          swift_allocError();
          v256 = 8;
          goto LABEL_121;
        }

        LODWORD(v349) = 0;
        goto LABEL_20;
      }
    }

    LODWORD(v349) = 1;
LABEL_20:
    LODWORD(v307) = v130;
LABEL_21:
    v84 = StreamingKind.sectionSpecifier.getter();
    v86 = v85;
    v88 = v87;
    sub_100304408(&v368);
    sub_1003042A8(v343, type metadata accessor for Response);
    v89 = v340;
    sub_100025F40(v340, &qword_1005D8578, &unk_1004F4BF0);
    v90 = v328;
    v91 = v308;
    (*v293)(&v308[*(v328 + 24)], 1, 1, v326);
    *v91 = v84;
    *(v91 + 8) = v86;
    *(v91 + 16) = v88;
    *(v91 + 20) = v307;
    *(v91 + 24) = v349;
    v297(v91, 0, 1, v90);
    sub_100025FDC(v91, v89, &qword_1005D8578, &unk_1004F4BF0);
    v60 = v350;
    v59 = v348;
    v56 = v424;
LABEL_22:
    ++v329;
    if (*(*v586 + 24) <= 0)
    {
      v83 = v323;
      goto LABEL_119;
    }
  }

  v131 = v300;
  v132 = v322;
  if (v121 != 4)
  {
    if (v121 != 5)
    {
      sub_1003042A8(v343, type metadata accessor for Response);
      sub_100025F40(v340, &qword_1005D8578, &unk_1004F4BF0);
      LODWORD(v365[0]) = v339;
      BYTE4(v365[0]) = v466;
      *(v365 + 5) = v464;
      BYTE7(v365[0]) = v465;
      v261 = v341;
      DWORD2(v365[0]) = v341;
      BYTE12(v365[0]) = v463;
      *(&v365[8] + 13) = v459;
      *(&v365[9] + 13) = v460;
      *(&v365[10] + 13) = v461;
      *(&v365[11] + 13) = v462;
      *(&v365[4] + 13) = v455;
      *(&v365[5] + 13) = v456;
      *(&v365[6] + 13) = v457;
      *(&v365[7] + 13) = v458;
      *(v365 + 13) = v451;
      *(&v365[1] + 13) = v452;
      *(&v365[2] + 13) = v453;
      *(&v365[3] + 13) = v454;
      *(&v365[12] + 1) = v450[0];
      DWORD1(v365[12]) = *(v450 + 3);
      *(&v365[12] + 1) = v342;
      v365[21] = v446;
      v365[22] = v447;
      v365[23] = v448;
      LOBYTE(v365[24]) = v449;
      v365[17] = v442;
      v365[18] = v443;
      v365[19] = v444;
      v365[20] = v445;
      v365[13] = v438;
      v365[14] = v439;
      v365[15] = v440;
      v365[16] = v441;
      *(&v365[28] + 1) = v435;
      *(&v365[29] + 1) = v436;
      *(&v365[30] + 1) = v437[0];
      *(&v365[24] + 1) = v431;
      *(&v365[25] + 1) = v432;
      *(&v365[26] + 1) = v433;
      *(&v365[27] + 1) = v434;
      v365[31] = *(v437 + 15);
      v365[32] = v334;
      *&v365[33] = v335;
      BYTE8(v365[33]) = v430;
      *(&v365[33] + 9) = v428;
      BYTE11(v365[33]) = v429;
      HIDWORD(v365[33]) = v333;
      LOBYTE(v365[34]) = v427;
      *(&v365[34] + 1) = v426[0];
      DWORD1(v365[34]) = *(v426 + 3);
      *(&v365[34] + 1) = v336;
      LOBYTE(v365[35]) = v425;
      *(&v365[35] + 1) = v424[0];
      DWORD1(v365[35]) = *(v424 + 3);
      v263 = v330;
      v262 = v331;
      *(&v365[35] + 1) = v330;
      *&v365[36] = v337;
      v264 = v332;
      *(&v365[36] + 1) = v332;
      *&v365[37] = v331;
      *(&v365[37] + 1) = v131;
      *&v365[38] = v338;
      memcpy(v302, v365, 0x268uLL);
      type metadata accessor for UntaggedResponse(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      *v384 = v339;
      v384[4] = v466;
      *&v384[5] = v464;
      v384[7] = v465;
      *&v384[8] = v261;
      v384[12] = v463;
      *&v384[141] = v459;
      *&v384[157] = v460;
      *&v384[173] = v461;
      v385 = v462;
      *&v384[77] = v455;
      *&v384[93] = v456;
      *&v384[109] = v457;
      *&v384[125] = v458;
      *&v384[13] = v451;
      *&v384[29] = v452;
      *&v384[45] = v453;
      *&v384[61] = v454;
      *v386 = v450[0];
      *&v386[3] = *(v450 + 3);
      v387 = v342;
      v396 = v446;
      v397 = v447;
      v398 = v448;
      v399 = v449;
      v392 = v442;
      v393 = v443;
      v394 = v444;
      v395 = v445;
      v388 = v438;
      v389 = v439;
      v390 = v440;
      v391 = v441;
      v404 = v435;
      v405 = v436;
      *v406 = v437[0];
      v400 = v431;
      v401 = v432;
      v402 = v433;
      v403 = v434;
      *&v406[15] = *(v437 + 15);
      v407 = v334;
      v408 = v335;
      v409 = v430;
      v410 = v428;
      v411 = v429;
      v412 = v333;
      v413 = v427;
      *v414 = v426[0];
      *&v414[3] = *(v426 + 3);
      v415 = v336;
      v416 = v425;
      *v417 = v424[0];
      *&v417[3] = *(v424 + 3);
      v418 = v263;
      v419 = v337;
      v420 = v264;
      v421 = v262;
      v422 = v131;
      v423 = v338;
      sub_1002EBB50(v365, &v353);
      return sub_100025D5C(v384);
    }

    v133 = v340;
    v134 = v314;
    sub_10000E268(v340, v314, &qword_1005D8578, &unk_1004F4BF0);
    v135 = v328;
    if ((*v296)(v134, 1, v328) == 1)
    {
      sub_100025F40(v134, &qword_1005D8578, &unk_1004F4BF0);
      sub_100304398();
      swift_allocError();
      *v267 = 7;
      *(v267 + 4) = 256;
      swift_willThrow();
      sub_1003042A8(v343, type metadata accessor for Response);
      v260 = v133;
      goto LABEL_125;
    }

    sub_100025F40(v133, &qword_1005D8578, &unk_1004F4BF0);
    v136 = v320;
    sub_1003026F8(v134, v320, type metadata accessor for StreamedBodySection);
    v137 = 1;
    v297(v133, 1, 1, v135);
    v138 = v310;
    sub_100304240(v136, v310, type metadata accessor for StreamedBodySection);
    v139 = *v138;
    v140 = *(v138 + 8);
    v141 = *(v138 + 16);
    LODWORD(v307) = *(v138 + 20);
    LODWORD(v292) = *(v138 + 24);
    v142 = v316;
    sub_10000E268(v138 + *(v135 + 24), v316, &qword_1005D05E0, &qword_1004D65C0);
    v349 = v139;

    v342 = v140;
    sub_100051190(v140, v141);
    sub_1003042A8(v138, type metadata accessor for StreamedBodySection);
    if ((*v299)(v142, 1, v326) != 1)
    {
      (*v285)(v317, v316, v326);
      v137 = 0;
    }

    v143 = type metadata accessor for MessageData.BodyData(0);
    v144 = *(*(v143 - 8) + 56);
    v145 = v317;
    v144(v317, v137, 1, v143);
    v146 = *(v319 + 24);
    v147 = v321;
    v144(&v321[v146], 1, 1, v143);
    v148 = v342;
    *v147 = v349;
    *(v147 + 1) = v148;
    v147[16] = v141;
    *(v147 + 5) = v307;
    v147[24] = v292;
    sub_10027F8A8(v145, &v147[v146], &qword_1005CE218, &unk_1004F3FD0);
    v149 = v301;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v301 = sub_1002FAE1C(0, v149[2] + 1, 1, v149);
    }

    v56 = v424;
    v60 = v350;
    v59 = v348;
    v151 = v301[2];
    v150 = v301[3];
    if (v151 >= v150 >> 1)
    {
      v301 = sub_1002FAE1C((v150 > 1), v151 + 1, 1, v301);
    }

    sub_1003042A8(v320, type metadata accessor for StreamedBodySection);
    sub_1003042A8(v343, type metadata accessor for Response);
    v152 = v301;
    v301[2] = v151 + 1;
    v153 = v152 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v151;
    v154 = v321;
LABEL_56:
    sub_1003026F8(v154, v153, type metadata accessor for MessageData.BodySection);
    v342 = v152;
    goto LABEL_22;
  }

  v155 = sub_1002F9BA4(v366);
  v156 = *(v155 + 8);
  v157 = *(v155 + 12);
  v158 = v315;
  sub_10000E268(v340, v315, &qword_1005D8578, &unk_1004F4BF0);
  v159 = v328;
  if ((*v296)(v158, 1, v328) == 1)
  {
    *&v384[128] = v376;
    *&v384[144] = v377;
    *&v384[160] = v378;
    *&v384[176] = v379;
    *&v384[64] = v372;
    *&v384[80] = v373;
    *&v384[96] = v374;
    *&v384[112] = v375;
    *v384 = v368;
    *&v384[16] = v369;
    *&v384[32] = v370;
    *&v384[48] = v371;
    sub_1002F9BA4(v384);

    sub_100025F40(v158, &qword_1005D8578, &unk_1004F4BF0);
    sub_100304398();
    swift_allocError();
    *v265 = 6;
    *(v265 + 4) = 256;
    swift_willThrow();
    sub_100304408(&v368);
    sub_100304408(&v368);
    sub_1003042A8(v343, type metadata accessor for Response);
    v266 = v340;
LABEL_131:
    sub_100025F40(v266, &qword_1005D8578, &unk_1004F4BF0);
    v56 = v424;
    goto LABEL_126;
  }

  v292 = v157;
  v349 = v156;
  v160 = v158;
  v161 = v324;
  sub_1003026F8(v160, v324, type metadata accessor for StreamedBodySection);
  v162 = *(v159 + 24);
  sub_10000E268(v161 + v162, v132, &qword_1005D05E0, &qword_1004D65C0);
  v163 = v326;
  v307 = *v299;
  if (v307(v132, 1, v326) == 1)
  {
    *&v384[128] = v376;
    *&v384[144] = v377;
    *&v384[160] = v378;
    *&v384[176] = v379;
    *&v384[64] = v372;
    *&v384[80] = v373;
    *&v384[96] = v374;
    *&v384[112] = v375;
    *v384 = v368;
    *&v384[16] = v369;
    *&v384[32] = v370;
    *&v384[48] = v371;
    sub_1002F9BA4(v384);

    sub_100025F40(v132, &qword_1005D05E0, &qword_1004D65C0);
    v164 = v306;
    sub_1004A5344();
    (*v293)(v164, 0, 1, v163);
    sub_10027F8A8(v164, v161 + v162, &qword_1005D05E0, &qword_1004D65C0);
  }

  else
  {
    *&v384[128] = v376;
    *&v384[144] = v377;
    *&v384[160] = v378;
    *&v384[176] = v379;
    *&v384[64] = v372;
    *&v384[80] = v373;
    *&v384[96] = v374;
    *&v384[112] = v375;
    *v384 = v368;
    *&v384[16] = v369;
    *&v384[32] = v370;
    *&v384[48] = v371;
    sub_1002F9BA4(v384);

    sub_100025F40(v132, &qword_1005D05E0, &qword_1004D65C0);
  }

  swift_beginAccess();
  v177 = v312;
  sub_1004A5324();
  v178 = v307(v161 + v162, 1, v163);
  v179 = v311;
  if (v178 == 1)
  {
    goto LABEL_143;
  }

  v292 = v162;
  sub_1004A5354();
  v291 = *v294;
  v291(v177, v163);
  v180 = v301[2];
  if (!v180)
  {
    v181 = 0;
LABEL_74:
    v187 = v309;
    sub_10000E268(v324 + v292, v309, &qword_1005D05E0, &qword_1004D65C0);
    v188 = v326;
    if (v307(v187, 1, v326) == 1)
    {
      goto LABEL_144;
    }

    v189 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    v291(v187, v188);
    v190 = v181 + v189;
    v56 = v424;
    v59 = v348;
    if (__OFADD__(v181, v189))
    {
      goto LABEL_142;
    }

    v60 = v350;
    if (v190 > 999999)
    {
      sub_100304398();
      swift_allocError();
      *v270 = 4;
      *(v270 + 4) = 256;
      swift_willThrow();
      sub_100304408(&v368);
      sub_100304408(&v368);
      sub_1003042A8(v343, type metadata accessor for Response);
      sub_100025F40(v340, &qword_1005D8578, &unk_1004F4BF0);
      sub_1003042A8(v324, type metadata accessor for StreamedBodySection);
      goto LABEL_126;
    }

    sub_100304408(&v368);
    sub_100304408(&v368);
    sub_1003042A8(v343, type metadata accessor for Response);
    v191 = v340;
    sub_100025F40(v340, &qword_1005D8578, &unk_1004F4BF0);
    v192 = v324;
    sub_100304240(v324, v191, type metadata accessor for StreamedBodySection);
    v297(v191, 0, 1, v328);
    sub_1003042A8(v192, type metadata accessor for StreamedBodySection);
    goto LABEL_22;
  }

  v181 = 0;
  v349 = *(v319 + 24);
  v56 = v301 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
  v182 = *(v318 + 72);
  v183 = v347;
  while (2)
  {
    sub_100304240(v56, v183, type metadata accessor for MessageData.BodySection);
    sub_10000E268(v183 + v349, v179, &qword_1005CE218, &unk_1004F3FD0);
    v184 = type metadata accessor for MessageData.BodyData(0);
    if ((*(*(v184 - 8) + 48))(v179, 1, v184) == 1)
    {
      sub_1003042A8(v183, type metadata accessor for MessageData.BodySection);
      sub_100025F40(v179, &qword_1005CE218, &unk_1004F3FD0);
      goto LABEL_69;
    }

    v185 = v183;
    v186 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1003042A8(v185, type metadata accessor for MessageData.BodySection);
    sub_1003042A8(v179, type metadata accessor for MessageData.BodyData);
    v96 = __OFADD__(v181, v186);
    v181 += v186;
    if (!v96)
    {
      v183 = v347;
LABEL_69:
      v56 += v182;
      if (!--v180)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_138:
  sub_1003041D8();
  swift_allocError();
  *v281 = v186;
  *(v281 + 8) = 0;
  *(v281 + 16) = 2;
  swift_willThrow();
LABEL_122:
  v254 = v343;
LABEL_123:
  sub_1003042A8(v254, type metadata accessor for Response);
LABEL_124:
  v260 = v340;
LABEL_125:
  sub_100025F40(v260, &qword_1005D8578, &unk_1004F4BF0);
LABEL_126:
  v57 = v300;
LABEL_16:
  *v384 = v339;
  v384[4] = v466;
  *&v384[5] = v464;
  v384[7] = v465;
  *&v384[8] = v341;
  v384[12] = v463;
  *&v384[141] = v459;
  *&v384[157] = v460;
  *&v384[173] = v461;
  v385 = v462;
  *&v384[77] = v455;
  *&v384[93] = v456;
  *&v384[109] = v457;
  *&v384[125] = v458;
  *&v384[13] = v451;
  *&v384[29] = v452;
  *&v384[45] = v453;
  *&v384[61] = v454;
  *v386 = v450[0];
  *&v386[3] = *(v450 + 3);
  v387 = v342;
  v396 = v446;
  v397 = v447;
  v398 = v448;
  v399 = v449;
  v392 = v442;
  v393 = v443;
  v394 = v444;
  v395 = v445;
  v388 = v438;
  v389 = v439;
  v390 = v440;
  v391 = v441;
  v78 = *(v56 + 120);
  v404 = *(v56 + 104);
  v405 = v78;
  *v406 = *(v56 + 136);
  v79 = *(v56 + 56);
  v400 = *(v56 + 40);
  v401 = v79;
  v80 = *(v56 + 88);
  v402 = *(v56 + 72);
  v403 = v80;
  *&v406[15] = *(v56 + 151);
  v407 = v334;
  v408 = v335;
  v409 = v430;
  v410 = v428;
  v411 = v429;
  v412 = v333;
  v413 = v427;
  *v414 = v426[0];
  *&v414[3] = *(v56 + 19);
  v415 = v336;
  v416 = v425;
  v81 = *(v56 + 3);
  *v417 = v424[0];
  *&v417[3] = v81;
  v418 = v330;
  v419 = v337;
  v420 = v332;
  v421 = v331;
  v422 = v57;
  v423 = v338;
  return sub_100025D5C(v384);
}